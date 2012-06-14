require "nokogiri"
require "uri"
require "azure/blobs/service"
require "azure/blobs/container"
require "azure/blobs/blob"
require "azure/blobs/uri"

module Azure
  module Blobs
    # Public: Get a list of Containers from the server.
    #
    # service - The backend service to implement this (optional).
    #
    # Returns an Array of Container elements.
    def self.containers(service=Azure::Blobs::Services::ListContainers.new)
      response = service.call
      document = Nokogiri::XML(response.body)
      (document / "//Containers/Container").map do |node|
        Container.from_node(node)
      end
    end

    # Public: Try to create a new container. If the operation is unsuccessful,
    # the resulting Container object will have the error accessible through the
    # #error method.
    #
    # name       - The name of the container.
    # metadata   - User defined metadata for this container (optional).
    # visibility - One of Container::PRIVATE, Container::CONTAINER, or
    #              Container::BLOB, specifying the level of visibility for
    #              anonymouse requests to this container. (optional, defaults to
    #              Container::PRIVATE).
    # service    - The backend service to implement this (optional).
    #
    # Returns a Container.
    def self.create_container(name, metadata={}, visibility=Container::PRIVATE, service=Azure::Blobs::Services::CreateContainer.new)
      response = service.call(name, metadata, visibility)

      if response.success?
        Container.new(name) do |container|
          container.visibility = visibility
        end
      else
        Container.from_error(response.error)
      end
    end

    # Public: Obtain the metadata of a container. This updates the container and
    # changes the metadata internally if successful. If the operation fails, the
    # container's metadata does not change, and the container is invalidated.
    #
    # container - An Azure::Blobs::Container.
    # service   - The backend service to implement this (optional).
    #
    # Returns a Hash.
    def self.load_container_metadata(container, service=Azure::Blobs::Services::GetContainerMetadata.new)
      response = service.call(container.name)

      if response.success?
        container.extract_metadata(response.headers)
      else
        container.error = response.error

        {}
      end
    end

    # Public: Save the current metadata of a container in the storage service.
    # If the operation fails, the container is invalidated.
    #
    # container - An Azure::Blobs::Container.
    # metadata  - User defined metadata for this container (optional).
    # service   - The backend service to implement this (optional).
    #
    # Returns true|false to indicate success.
    def self.save_container_metadata(container, service=Azure::Blobs::Services::SetContainerMetadata.new)
      response = service.call(container.name, container.metadata)
      container.error = response.error unless response.success?
      response.success?
    end

    # Public: Delete a Container from the server. If the delete operation fails,
    # the container is invalidated. Otherwise it's frozen.
    #
    # container - An Azure::Blobs::Container.
    # service   - The backend service to implement this (optional).
    #
    # Returns true|false to indicate success.
    def self.delete_container(container, service=Azure::Blobs::Services::DeleteContainer.new)
      response = service.call(container.name)

      if response.success?
        container.freeze
      else
        container.error = response.error
      end

      response.success?
    end

    # Public: Creates a new Block Blob, or updates an existent one. If the
    # request is unsuccessful, the resulting blob is invalidated.
    #
    # container - An Azure::Blobs::Container instance.
    # blob_name - A String representing the Blob name.
    # filename  - String representing a file in the file system. 64mb limit.
    # metadata  - A Hash representing blob metadata as :name => value.
    # service   - The backend service to implement this (optional).
    #
    # Returns an instance of Azure::Blobs::BlockBlob.
    def self.create_block_blob(container, blob_name, filename, metadata={}, service=Azure::Blobs::Services::CreateBlockBlob.new)

      response = service.call(container.name, blob_name, filename, metadata)

      if response.success?
        Azure::Blobs::BlockBlob.new(blob_name, container) do |blob|
          blob.metadata.replace(metadata)
          blob.extract_properties(response.headers)
        end
      else
        Azure::Blobs::BlockBlob.from_error(response.error)
      end
    end

    # Public: Creates a new Page Blob, or updates an existent one. If the
    # request is unsuccessful, the resulting blob is invalidated.
    #
    # container - An Azure::Blobs::Container instance.
    # blob_name - A String representing the Blob name.
    # size      - Size must be aligned to a 512-byte boundary. 1 TB max.
    # metadata  - A Hash representing blob metadata as :name => value.
    # headers   - A Hash to be passed as headers.
    # service   - The backend service to implement this (optional).
    #
    # Returns an instance of Azure::Blobs::PageBlob.
    def self.create_page_blob(container, blob_name, size=nil, metadata={}, headers={}, service=Azure::Blobs::Services::CreatePageBlob.new)

      response = service.call(container.name, blob_name, size, metadata, headers)

      if response.success?
        uri = Blobs::URI.blob(container.name, blob_name)
        Azure::Blobs::PageBlob.new(blob_name) do |blob|
          blob.container = container
          blob.extract_properties(response.headers)
        end
      else
        Azure::Blobs::PageBlob.from_error(response.error)
      end
    end

    # Public: List blobs in the given container.
    #
    # container - An Azure::Blobs::Container instance.
    # service   - The backend service to implement this (optional).
    #
    # Returns Array.
    def self.blobs(container, service=Azure::Blobs::Services::ListBlobs.new)
      response = service.call(container.name)

      document = Nokogiri.parse(response.body)
      (document / "//Blobs/Blob").map do |node|
        Blob.from_node(node) { |b| b.container = container }
      end
    end

    # Public: Delete a blob or snapshot blob in the given container. If the operation is
    # unsuccessful, the blob is invalidated. If not, it will be frozen.
    #
    # blob      - An Azure::Blobs::Blob instance.
    # service   - The backend service to implement this (optional).
    # snapshots - Boolean indicating if the snapshots will be deleted. False by default, which means
    #             you will get an error if the blob has snapshots.
    # headers   - A Hash representing user defined headers (optional).
    #
    # Returns true|false indicating success.
    def self.delete_blob(blob, snapshots=false, headers={}, service=Azure::Blobs::Services::DeleteBlob.new)
      headers["x-ms-delete-snapshots"] = "include"
      headers["x-ms-lease-id"] = blob.lease_id if blob.lease_id

      response = service.call(blob.container.name, blob.name, nil, headers)

      if response.success?
        blob.freeze
      else
        blob.error = response.error
      end

      response.success?
    end

    # Public: Get a blob from the given container. If the operation is
    # unsuccessful, invalidates the blob.
    #
    # container - An Azure::Blobs::Container instance.
    # blob_name - String representing the name of the blob to be deleted.
    # service   - The backend service to implement this (optional).
    #
    # Returns an instance of Azure::Blobs::Blob.
    def self.get_blob(container, blob_name, service=Azure::Blobs::Services::GetBlob.new)
      response = service.call(container.name, blob_name)

      if response.success?
        Azure::Blobs::Blob.new(blob_name, container, response.body) do |blob|
          blob.extract_metadata(response.headers)
          blob.extract_properties(response.headers)
        end
      else
        Azure::Blobs::Blob.from_error(response.error)
      end
    end

    # Get Properties of a Blob.
    #
    # blob      - An Azure::Blobs::Blob instance.
    # headers   - A Hash representing user defined headers (optional).
    # service   - The backend service to implement this (optional).
    #
    # Returns a Hash.
    def self.load_blob_properties(blob, headers={}, service=Azure::Blobs::Services::GetBlobProperties.new)
      headers["x-ms-lease-id"] = blob.lease_id if blob.lease_id
      response = service.call(blob.container.name, blob.name, headers)

      if response.success?
        blob.extract_properties(response.headers)
        blob.properties
      else
        blob.error = response.error
        {}
      end
    end

    # Set Properties of a Block or Page Blob.
    #
    # blob     - An Azure::Blobs::Blob instance.
    # headers  - A Hash representing user defined headers (optional).
    # service  - The backend service to implement this (optional).
    #
    # Returns boolean indicating success. Invalidate blob if operation fails.
    def self.save_blob_properties(blob, headers={}, service=Azure::Blobs::Services::SetBlobProperties.new)
      headers.merge(blob.properties.select {|prop, value| prop.match(/x-ms-/)})
      headers["x-ms-lease-id"] = blob.lease_id if blob.lease_id
      response = service.call(blob.container.name, blob.name, headers)
      blob.error = response.error unless response.success?
      response.success?
    end

    # Public: Replaces the blob's metadata with the metadata on the server. If
    # the operation is unsuccessful, invalidates the blob.
    #
    # See http://msdn.microsoft.com/en-us/library/windowsazure/dd179350
    #
    # blob    - An Azure::Blobs::Blob instance.
    # service - The backend service to implement this (optional).
    #
    # Returns a Hash.
    def self.load_blob_metadata(blob, service=Azure::Blobs::Services::GetBlobMetadata.new)
      response = service.call(blob.container.name, blob.name, blob.lease_id)

      if response.success?
        blob.extract_metadata(response.headers)
      else
        blob.error = response.error
        {}
      end
    end

    # Public: Saves the current blob's metadata to the server, replacing any
    # existing metadata there. If the operation is unsuccessful, invalidates the
    # blob.
    #
    # See http://msdn.microsoft.com/en-us/library/windowsazure/dd179414
    #
    # blob    - An Azure::Blobs::Blob instance.
    # headers - A Hash representing user defined headers (optional).
    # service - The backend service to implement this (optional).
    #
    # Returns true|false to indicate success.
    def self.save_blob_metadata(blob, service=Azure::Blobs::Services::SetBlobMetadata.new)
      headers["x-ms-lease-id"] = blob.lease_id if blob.lease_id
      response = service.call(blob.container.name, blob.name, blob.metadata, headers={})
      blob.error = response.error unless response.success?
      response.success?
    end

    # Public: Put a Block in a given Blob.
    #
    # http://msdn.microsoft.com/en-us/library/windowsazure/dd135726
    def self.put_block(blob, block_string, blockid, headers={}, service=Azure::Blobs::Services::PutBlock.new)
      headers["x-ms-lease-id"] = blob.lease_id if blob.lease_id
      response = service.call(blob.container.name, blob.name, ::URI.encode(blockid), block_string)
      blob.error = response.error if !response.success?
      response.success?
    end

    # Public: Put Block List. Invalidates the blob if the operation fails.
    #
    # blob      - An instance of Azure::Blobs::Blob.
    # block_ids - An Array with block ids to be commited.
    # headers   - A Hash representing user defined headers (optional).
    #
    # http://msdn.microsoft.com/en-us/library/windowsazure/dd179467
    #
    # Returns the blob.
    def self.put_block_list(blob, block_ids, headers={}, service=Azure::Blobs::Services::PutBlockList.new)

      headers["x-ms-blob-content-type"] = blob.content_type
      headers["x-ms-lease-id"] = blob.lease_id if blob.lease_id

      blob.metadata.each do |name, value|
        headers["x-ms-meta-#{name}"] = value
      end

      blob.properties.each do |name, value|
        headers[name] = value unless ["etag", "last-modified", "content-md5"].include?(name)
      end

      response = service.call(blob.container.name, blob.name, block_ids, headers)

      if response.success?
        blob.properties["etag"] = response.headers["etag"]
        blob.properties["last-modified"] = response.headers["last-modified"]
      else
        blob.error = response.error
      end

      response.success?
    end

    # Public: Update a set of bytes for the given page blob.
    #
    # blob       - An instance of Azure::Blobs::PageBlob.
    # start_byte - Integer byte where start operation.
    # end_byte   - Integer byte where end operation.
    # stream     - String or IO.
    # headers    - A Hash representing request headers.
    #
    # http://msdn.microsoft.com/en-us/library/windowsazure/ee691975
    #
    # Returns boolean indicating success.
    def self.update_page_range(blob, start_byte, end_byte, stream, headers={}, service=Azure::Blobs::Services::PutPage.new)

      headers["x-ms-page-write"] = "update"
      headers["x-ms-lease-id"] = blob.lease_id if blob.lease_id

      response = service.call(blob.container.name, blob.name, start_byte, end_byte, stream, headers)
      if response.success?
        blob.extract_properties(response.headers)
        true
      else
        blob.error = response.error
        false
      end
    end

    # Public: Clear Page range.
    #
    # blob       - An instance of Azure::Blobs::PageBlob.
    # start_byte - Integer byte where start operation.
    # end_byte   - Integer byte where end operation.
    # headers    - A Hash representing request headers.
    #
    # http://msdn.microsoft.com/en-us/library/windowsazure/ee691975
    #
    # Returns boolean indicating success.
    def self.clear_page_range(blob, start_byte, end_byte, headers={}, service=Azure::Blobs::Services::PutPage.new)

      headers["x-ms-page-write"] = "clear"
      headers["x-ms-lease-id"] = blob.lease_id if blob.lease_id

      response = service.call(blob.container.name, blob.name, start_byte, end_byte, nil, headers)
      if response.success?
        blob.extract_properties(response.headers)
        true
      else
        blob.error = response.error
        false
      end
    end

    # Public: Get Page Range. Returns an Array with Range instances.
    #
    # blob       - An instance of Azure::Blobs::PageBlob.
    # start_byte - Integer byte where start operation. (optional)
    # end_byte   - Integer byte where end operation. (optional)
    # headers    - A Hash representing request headers. (optional)
    #
    # http://msdn.microsoft.com/en-us/library/windowsazure/ee691973
    #
    # Returns Array of Range instances.
    def self.get_page_range(blob, start_byte=nil, end_byte=nil, headers={}, service=Azure::Blobs::Services::GetPage.new)
      response = service.call(blob.container.name, blob.name, start_byte, end_byte, headers)

      if response.success?
        document = Nokogiri::XML(response.body)
        (document / "//PageList/PageRange").map do |node|
          Range.new((node / "Start").text.to_i, (node / "End").text.to_i)
        end
      else
        blob.error = response.error
        false
      end
    end

    # Public: Creates a snapshot from a given blob.
    #
    # blob      - An instance of Azure::Blobs::Blob.
    # metadata  - User defined metadata for this container (optional).
    # headers   - A Hash representing request headers. (optional)
    #
    # Returns an Azure::Blobs::Snapshot instance.
    def self.create_snapshot(blob, metadata={}, headers={}, service=Azure::Blobs::Services::CreateSnapshot.new)

      headers["x-ms-lease-id"] = blob.lease_id if blob.lease_id

      response = service.call(blob.container.name, blob.name, metadata, headers)

      if response.success?
        Azure::Blobs::Snapshot.new(blob.name, blob.container) do |blob|
          blob.metadata.replace(metadata)
          blob.extract_properties(response.headers)
        end
      else
        nil
      end
    end

    # Public: Get a blob Snapshot from the given container. If the operation is
    # unsuccessful, invalidates the blob.
    #
    # container   - An Azure::Blobs::Container instance.
    # blob_name   - String representing the name of the blob to be deleted.
    # snapshot_id - String representing the datetime uniq id of the snapshot.
    # service     - The backend service to implement this (optional).
    #
    # Returns an instance of Azure::Blobs::Snapshot.
    def self.get_snapshot(container, blob_name, snapshot_id, service=Azure::Blobs::Services::GetBlob.new)
      response = service.call(container.name, blob_name)

      if response.success?
        Azure::Blobs::Snapshot.new(blob_name, container, response.body) do |blob|
          blob.extract_metadata(response.headers)
          blob.extract_properties(response.headers)
        end
      else
        Azure::Blobs::Snapshot.from_error(response.error)
      end
    end

    # Public: Delete a blob snapshot in the given container. If the operation is
    # unsuccessful, the blob is invalidated. If not, it will be frozen.
    #
    # snapshot - An Azure::Blobs::Snapshot instance. Representing a Blob Snapshot.
    # headers  - User defined headers for this operation. (optional).
    # service  - The backend service to implement this (optional).
    #
    # Returns true|false indicating success.
    def self.delete_snapshot(snapshot, headers={}, service=Azure::Blobs::Services::DeleteBlob.new)
      headers["x-ms-lease-id"] = snapshot.lease_id if snapshot.lease_id

      response = service.call(snapshot.container.name, snapshot.name, snapshot.id, headers)

      if response.success?
        snapshot.freeze
      else
        snapshot.error = response.error
      end

      response.success?
    end

    # Public: Delete a snapshots of a blob in the given container.
    #
    # blob    - An Azure::Blobs::Blob instance.
    # service - The backend service to implement this (optional).
    # headers - User defined headers for this operation. (optional).
    #
    # Returns true|false indicating success.
    def self.delete_blob_snapshots(blob, headers={}, service=Azure::Blobs::Services::DeleteBlob.new)
      headers["x-ms-delete-snapshots"] = "only"
      headers["x-ms-lease-id"] = blob.lease_id if blob.lease_id

      response = service.call(blob.container.name, blob.name, nil, headers)
      response.success?
    end

    # Public: Copy a Blob or Snapshot.
    #
    # source      - An instance of Azure::Blobs::Blob or Azure::Blobs::Snapshot
    # destination - An instance of Azure::Blobs::Container representing destination.
    # name        - A string of the blob where source will be copied.
    # metadata    - User defined metadata for the copied blob (optional).
    # headers     - User defined headers for this operation. (optional).
    #
    # Returns an instance of Azure::Blobs::BlockBlob or PageBlob depending on the source.
    def self.copy(source, destination, name, metadata={}, headers={}, service=Azure::Blobs::Services::CopyBlob.new)

      headers["x-ms-lease-id"] = source.lease_id if source.lease_id

      snapshot_id = source.is_a?(Azure::Blobs::Snapshot) ? source.id : nil

      response = service.call(source.container.name,
                              source.name,
                              destination.name,
                              name,
                              snapshot_id,
                              metadata,
                              headers)

      blob_class = Azure::Blobs::Blob

      if source.is_a?(Azure::Blobs::PageBlob) || source.properties["x-ms-blob-type"] == "PageBlob"
        blob_class = Azure::Blobs::PageBlob
      elsif source.is_a?(Azure::Blobs::BlockBlob) || source.properties["x-ms-blob-type"] == "BlockBlob"
        blob_class = Azure::Blobs::BlockBlob
      end

      if response.success?
        blob_class.new(name, destination) do |blob|
          blob.metadata.replace(metadata)
          blob.extract_properties(response.headers)
        end
      else
        blob_class.from_error(response.error)
      end
    end

    # Public: Updates the content of a given Block Blob.
    #
    # blob           - An Azure::Blobs::Blob instance.
    # io             - IO. String representing the resource on the filesystem.
    # byte_partition - Optional. Integer representing the size of the chunks to be uploaded.
    #
    # Returns an array with the ids of the uploaded blocks.
    def self.update_block_blob_content(blob, io, byte_partition=nil)
      byte_partition ||= 4194304
      block_ids = []

      while chunk = io.read(byte_partition)
        block_ids << Base64.strict_encode64(Digest::MD5.digest(chunk))
        break if !self.put_block(blob, chunk, block_ids.last)
      end

      block_ids
    end

    # Public: Set Blob Service properties.
    #
    # properties - A hash representing the desired properties configuration for blob storage service.
    #  {
    #    "Logging" => {
    #      "Version" => "1.0",
    #      "Delete" => "true",
    #      "Read" => "true",
    #      "Write" => "true",
    #      "RetentionPolicy" => {
    #        "Enabled" => true,
    #        "Days" => 7
    #      }
    #    },
    #    "Metrics"=> {
    #      "Version" => "1.0",
    #      "Enabled" => "true",
    #      "IncludeAPIs" => "false",
    #      "RetentionPolicy" => {
    #        "Enabled" => true,
    #        "Days" => 7
    #      }
    #    }
    #  }
    #
    # http://msdn.microsoft.com/en-us/library/windowsazure/hh452235
    #
    # Returns boolean indicating success.
    def self.set_service_properties(properties, service=Azure::Blobs::Services::SetBlobServiceProperties.new)
      xml_body = Azure::Core::Utils::StorageServiceProperties.hash_to_xml_string(properties)
      response = service.call(xml_body)
      response.success?
    end

    # Public: Get Blob Service properties.
    #
    # http://msdn.microsoft.com/en-us/library/windowsazure/hh452239
    #
    # Returns a hash with Service properties or nil if the operation fail.
    def self.get_service_properties(service=Azure::Blobs::Services::GetBlobServiceProperties.new)
      response = service.call

      if response.success?
        Azure::Core::Utils::StorageServiceProperties.xml_string_to_hash(response.body)
      else
        nil
      end
    end

    # Public: Lease a Blob.
    #
    # blob      - An instance of Azure::Blobs::Blob.
    # action    - symbol included in [:acquire, :renew, :release, :break]
    #
    # http://msdn.microsoft.com/en-us/library/windowsazure/ee691972
    #
    # Returns blob if success and blob invalidated if the operation fails.
    def self.lease(blob, action, service=Azure::Blobs::Services::Lease.new)

      lease_actions = [:acquire, :renew, :release, :break]

      if !lease_actions.include?(action)
        raise ArgumentError, "action not in the list [:acquire, :renew, :release, :break]"
      end

      response = service.call(blob.container.name, blob.name, action, blob.lease_id)

      if response.success?
        blob.extract_properties(response.headers)
      else
        blob.error = response.error
      end
    end
  end
end
