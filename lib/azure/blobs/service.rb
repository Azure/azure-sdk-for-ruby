require "azure/core/service"
require "azure/configuration"
require "azure/core/auth/shared_key"
require "azure/blobs/uri"
require "mime/types"
require "uri"
require "nokogiri"

module Azure
  module Blobs
    class Service < Core::Service
      def initialize(signer=Azure::Core::Auth::SharedKey.new)
        super(signer)
      end
    end

    module Services
      # Get a list of all containers.
      class ListContainers < Service
        # Public: Invoke the service. For now, we force-include the metadata,
        # since it doesn't seem to affect blobs.
        #
        # Returns a Response
        def call
          uri = Blobs::URI.containers("include" => "metadata")
          super(:get, uri)
        end
      end

      # Create a new container.
      class CreateContainer < Service
        # Public: Invoke the service.
        #
        # name       - The name of the new container.
        # metadata   - User defined metadata for this container.
        # visibility - Set the container visibility.
        #
        # Returns a Response
        def call(name, metadata, visibility)
          uri = Blobs::URI.container(name)

          super(:put, uri) do |request|
            metadata.each do |name, value|
              request.headers["x-ms-meta-#{name}"] = value
            end

            if [Container::CONTAINER, Container::BLOB].include?(visibility)
              request.headers["x-ms-blob-public-access"] = visibility.to_s
            end
          end
        end
      end

      # Delete a new container.
      class DeleteContainer < Service
        # Public: Invoke the service.
        #
        # name - The name of the container we're deleting.
        #
        # Returns a Response.
        def call(name)
          uri = Blobs::URI.container(name)
          super(:delete, uri)
        end
      end

      # Get the metadata of a container.
      class GetContainerMetadata < Service
        # Public: Invoke the service.
        #
        # name - The name of the container.
        #
        # Returns a Response.
        def call(name)
          uri = Blobs::URI.container(name, "comp" => "metadata")
          super(:head, uri)
        end
      end

      # Set the metadata of a container.
      class SetContainerMetadata < Service
        # Public: Invoke the service.
        #
        # name     - The name of the container.
        # metadata - User defined metadata for this container.
        #
        # Returns a Response.
        def call(name, metadata)
          uri = Blobs::URI.container(name, "comp" => "metadata")

          super(:put, uri) do |request|
            metadata.each do |name, value|
              request.headers["x-ms-meta-#{name}"] = value
            end
          end
        end
      end

      # Creates a new Block Blob, or updates an existent one.
      #
      # container_name - String representing the container name.
      # blob_name      - String representing the blob name.
      # filename       - String representing a file in the file system.
      # metadata       - A Hash representing blob metadata as :name => value.
      #
      # http://msdn.microsoft.com/en-us/library/windowsazure/dd179451
      #
      # Returns a Response instance.
      class CreateBlockBlob < Service
        def call(container_name, blob_name, filename, metadata={}, file_class=File)

          if filename
            raise ArgumentError, "File exceeded 64Mb limit." if file_class.size(filename) > 65536
            file_read = file_class.open(filename) {|f| f.read}
            types = MIME::Types.type_for(filename)
          else
            file_read = nil
          end

          uri = Blobs::URI.blob(container_name, blob_name)

          super(:put, uri, file_read) do |request|
            request.headers["Content-Type"] = types.first.to_s if types
            request.headers["x-ms-blob-type"] = "BlockBlob"
            metadata.each do |name, value|
              request.headers["x-ms-meta-#{name}"] = value
            end
          end
        end
      end

      # Public: Update a Block Blob.
      class UpdateBlockBlob < CreateBlockBlob; end

      class PutBlock < Service
        def call(container_name, blob_name, blockid, block_string, headers={})

          if block_string.bytesize > 4 * 1024
            raise ArgumentError, "block_string is bigger than 4 Mb"
          end

          uri = Blobs::URI.blob(container_name, blob_name, :comp => "block", :blockid => blockid)

          super(:put, uri, block_string) do |request|
            request.headers.merge! headers
            request.headers["Content-Type"] = "application/octet-stream"
          end
        end
      end

      # Creates a new Page Blob, or updates an existent one.
      #
      # container_name - String representing the container name.
      # blob_name      - String representing the blob name.
      # size           - Size must be aligned to a 512-byte boundary. 1 TB max. (optional)
      # metadata       - A Hash representing blob metadata as :name => value. (optional)
      # headers        - A Hash to be passed as headers. (optional)
      class CreatePageBlob < Service
        def call(container_name, blob_name, size=1024, metadata={}, headers={})

          size = 1024 if size.nil?

          uri = Blobs::URI.blob(container_name, blob_name)

          super(:put, uri, "") do |request|
            request.headers.merge! headers
            request.headers["x-ms-blob-content-length"] = size.to_s
            request.headers["x-ms-blob-type"] = "PageBlob"
            metadata.each do |name, value|
              request.headers["x-ms-meta-#{name}"] = value
            end
          end
        end
      end

      # Get Blob Properties
      class GetBlobProperties < Service
        def call(container_name, blob_name, headers)

          uri = Blobs::URI.blob(container_name, blob_name)

          super(:head, uri) do |request|
            request.headers.merge! headers
          end
        end
      end

      # List Blobs.
      #
      # container_name - String representing conainer name.
      class ListBlobs < Service
        def call(container_name)
          uri = Blobs::URI.container(container_name, comp: "list", include: "metadata")
          super(:get, uri)
        end
      end

      # Delete a Blob.
      #
      # container_name    - String representing container name.
      # blob_name         - String representing blob name.
      # snapshot_datetime - String datetime representing a snapshot.
      # headers           - Custom headers to be used with the request. (optional)
      #
      # http://msdn.microsoft.com/en-us/library/windowsazure/dd179413
      class DeleteBlob < Service
        def call(container_name, blob_name, snapshot_datetime, headers={})

          uri = Blobs::URI.blob(container_name, blob_name)
          uri.query = "snapshot=#{::URI.encode(snapshot_datetime)}" if snapshot_datetime

          super(:delete, uri) do |request|
            request.headers.merge! headers
          end
        end
      end

      # Get a Blob.
      #
      # container_name - String representing container name.
      # blob_name      - String representing blob name.
      class GetBlob < Service
        def call(container_name, blob_name, snapshot=nil)
          uri = Blobs::URI.blob(container_name, blob_name)
          uri.query = URI.encode("snapshot=#{snapshot}") if snapshot
          super(:get, uri)
        end
      end

      # Set Blob properties.
      #
      # container_name - String representing name of the blob container.
      # blob_name      - String representing name of teh blob.
      # headers        - A Hash with the following Optional values
      #
      # http://msdn.microsoft.com/en-us/library/windowsazure/ee691966
      class SetBlobProperties < Service
        def call(container_name, blob_name, headers)
          uri = Blobs::URI.blob(container_name, blob_name, "comp" => "properties")
          super(:put, uri) do |request|
            request.headers.merge! headers
          end
        end
      end

      # Set Blob Service Properties
      class SetBlobServiceProperties < Service
        def call(body)
          uri = Blobs::URI.blob("", "", "restype" => "service", "comp" => "properties")
          super(:put, uri, body)
        end
      end

      # Get Blob Service Properties
      class GetBlobServiceProperties < Service
        def call
          uri = Blobs::URI.blob("", "", "restype" => "service", "comp" => "properties")
          super(:get, uri)
        end
      end

      # Get Blob Metadata
      #
      # http://msdn.microsoft.com/en-us/library/windowsazure/dd179350
      class GetBlobMetadata < Service
        def call(container_name, blob_name, lease_id=nil)
          uri = Blobs::URI.blob(container_name, blob_name, "comp" => "metadata")
          super(:head, uri) do |request|
            request.headers["x-ms-lease-id"] = lease_id if lease_id
          end
        end
      end

      # Set Blob Metadata
      #
      # http://msdn.microsoft.com/en-us/library/windowsazure/dd179414
      class SetBlobMetadata < Service
        def call(container_name, blob_name, metadata, headers={})
          uri = Blobs::URI.blob(container_name, blob_name, "comp" => "metadata")

          super(:put, uri) do |request|
            request.headers.merge! headers

            metadata.each do |name, value|
              request.headers["x-ms-meta-#{name}"] = value
            end
          end
        end
      end

      # Put Block List.
      #
      # http://msdn.microsoft.com/en-us/library/windowsazure/dd179467
      class PutBlockList < Service
        def call(container_name, blob_name, block_ids, headers={})
          uri = Blobs::URI.blob(container_name, blob_name, "comp" => "blocklist")

          builder = Nokogiri::XML::Builder.new(:encoding => "utf-8") do |xml|
            xml.BlockList {
              block_ids.each do |id|
                xml.Latest id
              end
            }
          end

          super(:put, uri, builder.to_xml.to_s) do |request|
            request.headers.merge!(headers)
          end
        end
      end

      # Put Page.
      #
      # http://msdn.microsoft.com/en-us/library/windowsazure/ee691975
      class PutPage < Service
        def call(container_name, blob_name, start_byte, end_byte, stream=nil, headers={})
          uri = Blobs::URI.blob(container_name, blob_name, "comp" => "page")

          body = stream.respond_to?(:read) ? stream.read : stream

          super(:put, uri, body) do |request|
            request.headers.merge!(headers)
            request.headers["x-ms-range"] = "bytes=#{start_byte}-#{end_byte}"
            request.headers["Content-Type"] = "application/octet-stream"
          end
        end
      end

      # Get Page.
      #
      # http://msdn.microsoft.com/en-us/library/windowsazure/ee691973
      class GetPage < Service
        def call(container_name, blob_name, start_byte=nil, end_byte=nil, headers={})
          uri = Blobs::URI.blob(container_name, blob_name, "comp" => "pagelist")

          super(:get, uri) do |request|
            request.headers.merge!(headers)

            if !start_byte.nil? && !end_byte.nil?
              request.headers["x-ms-range"] = "bytes=#{start_byte}-#{end_byte}"
            end
          end
        end
      end

      # Create Snapshot.
      #
      # http://msdn.microsoft.com/en-us/library/windowsazure/ee691971
      class CreateSnapshot < Service
        def call(container_name, blob_name, metadata={}, headers={})
          uri = Blobs::URI.blob(container_name, blob_name, "comp" => "snapshot")

          super(:put, uri) do |request|
            request.headers.merge!(headers)

            metadata.each do |name, value|
              request.headers["x-ms-meta-#{name}"] = value
            end
          end
        end
      end

      # Copy a Blob.
      #
      # http://msdn.microsoft.com/en-us/library/windowsazure/dd894037
      class CopyBlob < Service
        def call(source_container_name, source_name, dest_container_name, dest_name, snapshot_id=nil, metadata={}, headers={})
          destination_uri = Blobs::URI.blob(dest_container_name, dest_name)
          source_uri      = Blobs::URI.blob(source_container_name, source_name)

          source_uri.query = ::URI.encode("snapshot=#{snapshot_id}") if snapshot_id

          super(:put, destination_uri) do |request|
            request.headers.merge!(headers)

            metadata.each do |name, value|
              request.headers["x-ms-meta-#{name}"] = value
            end

            request.headers["x-ms-copy-source"] = "/#{Azure.config.account_name}#{source_uri.path}"
          end
        end
      end

      class Lease < Service
        def call(container_name, blob_name, action, lease_id)
          uri = Blobs::URI.blob(container_name, blob_name, :comp => "lease")
          super(:put, uri) do |request|
            request.headers["x-ms-lease-id"] = lease_id if lease_id
            request.headers["x-ms-lease-action"] = action.to_s
          end
        end
      end
    end
  end
end
