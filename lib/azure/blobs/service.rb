require "uri"
require "nokogiri"
require "mime/types"
require "azure/core/service"
require "azure/core/auth/shared_key"
require "azure/core/configuration"
require "azure/blobs/uri"

module Azure
  module Blobs
    class Service < Core::Service
      def initialize(signer=Azure::Core::Auth::Strategies::SharedKey.new)
        super(signer)
      end
    end

    module Services
      # Get a list of all containers
      class ListContainers < Service
        # Public: Invoke the service. For now, we force-include the metadata,
        # since it doesn't seem to affect Blobs.
        #
        # Returns a Azure::Core::Response
        def call
          uri = Blobs::URI.containers("include" => "metadata")
          super(:get, uri)
        end
      end

      # Create a new container
      class CreateContainer < Service
        # Public: Invoke the service
        #
        # name       - The name of the new Container
        # metadata   - User defined metadata for the Container
        # visibility - Set the visibility for the Container. One of 
        #              Azure::Blobs::Container::CONTAINER, 
        #              Azure::Blobs::Container::BLOB or 
        #              Azure::Blobs::Container::PRIVATE
        #
        # Returns a Azure::Core::Response
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

      # Delete a Container
      class DeleteContainer < Service
        # Public: Invoke the service
        #
        # name - The name of the Container to delete
        #
        # Returns a Azure::Core::Response
        def call(name)
          uri = Blobs::URI.container(name)
          super(:delete, uri)
        end
      end

      # Get the metadata for a Container
      class GetContainerMetadata < Service
        # Public: Invoke the service
        #
        # name - The name of the Container
        #
        # Returns a Azure::Core::Response
        def call(name)
          uri = Blobs::URI.container(name, "comp" => "metadata")
          super(:head, uri)
        end
      end

      # Set the metadata for a Container
      class SetContainerMetadata < Service
        # Public: Invoke the service
        #
        # name     - The name of the Container
        # metadata - User defined metadata for the Container
        #
        # Returns a Azure::Core::Response
        def call(name, metadata)
          uri = Blobs::URI.container(name, "comp" => "metadata")

          super(:put, uri) do |request|
            metadata.each do |name, value|
              request.headers["x-ms-meta-#{name}"] = value
            end
          end
        end
      end

      # Create a new Block Blob, or update an existing one
      class CreateBlockBlob < Service
        # Public: Invoke the service 
        #
        # container_name - String. The Container name
        # blob_name      - String. The Blob name
        # filename       - String. A file in the file system
        # metadata       - Hash. The Blob metadata as :name => value (optional)
        # file_class     - A Class that implements .size and .open. 
        #                  Defaults to File but may be injected (optional)
        #
        # http://msdn.microsoft.com/en-us/library/windowsazure/dd179451
        #
        # Returns a Azure::Core::Response
        def call(container_name, blob_name, filename, metadata={}, file_class=File)

          if filename
            raise ArgumentError, "File exceeded 64Mb limit." if file_class.size(filename) > (64 * 1024 * 1024)
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

      # Update a Block Blob
      class UpdateBlockBlob < CreateBlockBlob; end

      # Create or update a Block
      class PutBlock < Service
        # Public: Invoke the service 
        #
        # container_name - String. The Container name
        # blob_name      - String. The Blob name
        # blockid        - String. The id of the Block
        # block_string   - String. The content of the Block. 4 MB max
        # headers        - Hash. Custom headers (optional)
        #
        # Returns a Azure::Core::Response
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
      
      # Create a new Page Blob, or update an existing one
      class CreatePageBlob < Service
        # Public: Invoke the service 
        #
        # container_name - String. The Container name
        # blob_name      - String. The Blob name
        # size           - Integer. Size must be aligned to a 512-byte boundary. 1 TB max (optional)
        # metadata       - Hash. The Blob metadata as :name => value (optional)
        # headers        - Hash. Custom headers (optional)
        #
        # Returns a Azure::Core::Response
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
        # Public: Invoke the service 
        #
        # container_name    - String. The Container name
        # blob_name         - String. The Blob name
        # headers           - Hash. Custom headers
        #
        # Returns a Azure::Core::Response
        def call(container_name, blob_name, headers)

          uri = Blobs::URI.blob(container_name, blob_name)

          super(:head, uri) do |request|
            request.headers.merge! headers
          end
        end
      end

      # List Blobs
      class ListBlobs < Service
        # Public: Invoke the service 
        #
        # container_name - String. The Container name
        #
        # Returns a Azure::Core::Response
        def call(container_name)
          uri = Blobs::URI.container(container_name, comp: "list", include: "metadata")
          super(:get, uri)
        end
      end

      # Delete a Blob.
      class DeleteBlob < Service
        # Public: Invoke the service 
        #
        # container_name    - String. The Container name
        # blob_name         - String. The Blob name
        # snapshot_datetime - String. Datetime representing a Snapshot
        # headers           - Hash. Custom headers (optional)
        #
        # http://msdn.microsoft.com/en-us/library/windowsazure/dd179413
        #
        # Returns a Azure::Core::Response
        def call(container_name, blob_name, snapshot_datetime, headers={})

          uri = Blobs::URI.blob(container_name, blob_name)
          uri.query = "snapshot=#{::URI.encode(snapshot_datetime)}" if snapshot_datetime

          super(:delete, uri) do |request|
            request.headers.merge! headers
          end
        end
      end

      # Get a Blob
      class GetBlob < Service
        # Public: Invoke the service 
        #
        # container_name - String. The Container name
        # blob_name      - String. The Blob name
        #
        # Returns a Azure::Core::Response
        def call(container_name, blob_name, snapshot=nil)
          uri = Blobs::URI.blob(container_name, blob_name)
          uri.query = URI.encode("snapshot=#{snapshot}") if snapshot
          super(:get, uri)
        end
      end

      # Set Blob properties
      class SetBlobProperties < Service
        # Public: Invoke the service 
        #
        # container_name - String. The Container name
        # blob_name      - String. The Blob name
        # headers        - Hash. The properties for the Blob.
        #
        # http://msdn.microsoft.com/en-us/library/windowsazure/ee691966
        #
        # Returns a Azure::Core::Response
        def call(container_name, blob_name, headers)
          uri = Blobs::URI.blob(container_name, blob_name, "comp" => "properties")
          super(:put, uri) do |request|
            request.headers.merge! headers
          end
        end
      end

      # Set Blob Service Properties
      class SetBlobServiceProperties < Service
        # Public: Invoke the service 
        #
        # body - The body
        #
        # Returns a Azure::Core::Response
        def call(body)
          uri = Blobs::URI.blob("", "", "restype" => "service", "comp" => "properties")
          super(:put, uri, body)
        end
      end

      # Get Blob Service Properties
      class GetBlobServiceProperties < Service
        # Public: Invoke the service 
        #
        # Returns a Azure::Core::Response
        def call
          uri = Blobs::URI.blob("", "", "restype" => "service", "comp" => "properties")
          super(:get, uri)
        end
      end

      # Get Blob Metadata
      class GetBlobMetadata < Service
        # Public: Invoke the service 
        #
        # container_name - String. The Container name
        # blob_name      - String. The Blob name
        # lease_id       - String. The Lease ID value (optional)
        #
        # http://msdn.microsoft.com/en-us/library/windowsazure/dd179350
        #
        # Returns a Azure::Core::Response
        def call(container_name, blob_name, lease_id=nil)
          uri = Blobs::URI.blob(container_name, blob_name, "comp" => "metadata")
          super(:head, uri) do |request|
            request.headers["x-ms-lease-id"] = lease_id if lease_id
          end
        end
      end

      # Set Blob Metadata
      class SetBlobMetadata < Service
        # Public: Invoke the service 
        #
        # container_name - String. The Container name
        # blob_name      - String. The Blob name
        # metadata       - Hash. The metadata for the Blob
        # headers        - Hash. Custom headers (optional)
        #
        # http://msdn.microsoft.com/en-us/library/windowsazure/dd179414
        #
        # Returns a Azure::Core::Response
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

      # Put Block List
      class PutBlockList < Service
        # Public: Invoke the service 
        #
        # container_name - String. The Container name
        # blob_name      - String. The Blob name
        # block_ids      - The Block ids
        # headers        - Hash. Custom headers (optional)
        #
        # http://msdn.microsoft.com/en-us/library/windowsazure/dd179467
        #
        # Returns a Azure::Core::Response
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

      # Put Page
      class PutPage < Service
        # Public: Invoke the service 
        #
        # container_name - String. The Container name
        # blob_name      - String. The Blob name
        # start_byte     - Integer. The starting position
        # end_byte       - Integer. The ending position
        # stream         - IO or String. The page content (optional)
        # headers        - Hash. Custom headers (optional)
        #
        # http://msdn.microsoft.com/en-us/library/windowsazure/ee691975
        #
        # Returns a Azure::Core::Response
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

      # Get Page
      class GetPage < Service
        # Public: Invoke the service 
        #
        # container_name - String. The Container name
        # blob_name      - String. The Blob name
        # start_byte     - Integer. The starting position (optional)
        # end_byte       - Integer. The ending position (optional)
        # headers        - Hash. Custom headers (optional)
        #
        # http://msdn.microsoft.com/en-us/library/windowsazure/ee691973
        #
        # Returns a Azure::Core::Response
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

      # Create Snapshot
      class CreateSnapshot < Service
        # Public: Invoke the service 
        #
        # container_name - String. The Container name
        # blob_name      - String. The Blob name
        # metadata       - Hash. The metadata for the Snapshot (optional)
        # headers        - Hash. Custom headers (optional)
        #
        # http://msdn.microsoft.com/en-us/library/windowsazure/ee691971
        #
        # Returns a Azure::Core::Response
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

      # Copy a Blob
      class CopyBlob < Service
        # Public: Invoke the service 
        #
        # source_container_name   - String. The source Container name
        # source_name             - String. The source Blob name
        # dest_container_name     - String. The destination Container name
        # dest_name               - String. The destination Blob name
        # snapshot_id             - A Snapshot id (optional)
        # metadata                - Hash. The metadata for the Blob (optional)
        # headers                 - Hash. Custom headers (optional)
        #
        # http://msdn.microsoft.com/en-us/library/windowsazure/dd894037
        #
        # Returns a Azure::Core::Response
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

      # Perform an action on a Lease
      class Lease < Service
        # Public: Invoke the service 
        #
        # container_name  - String. The source Container name
        # blob_name       - String. The source Blob name
        # action          - The lease action
        # lease_id        - String. The Lease ID
        #
        # http://msdn.microsoft.com/en-us/library/windowsazure/dd894037
        #
        # Returns a Azure::Core::Response
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
