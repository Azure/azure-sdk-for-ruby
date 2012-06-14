require "azure/configuration"
require "uri"

module Azure
  module Blobs
    module URI
      # Public: Generate the URI for the collection of containers.
      #
      # query - A Hash of key => value query parameters.
      # host  - The host of the API.
      #
      # Returns a URI.
      def self.containers(query={}, host=Azure.config.blob_host)
        query = { "comp" => "list" }.merge(query)
        uri = join(host, "/")
        uri.query = ::URI.encode_www_form(query)
        uri
      end

      # Public: Generate the URI for a specific container.
      #
      # name  - The container name. If this is a URI, we just return this.
      # query - A Hash of key => value query parameters.
      # host  - The host of the API.
      #
      # Returns a URI.
      def self.container(name, query={}, host=Azure.config.blob_host)
        return name if name.kind_of? ::URI
        query = { "restype" => "container" }.merge(query)
        uri = join(host, name)
        uri.query = ::URI.encode_www_form(query)
        uri
      end

      # Public: Generate the URI for a specific Blob.
      #
      # container_name - String representing the name of the container.
      # blob_name      - String representing the name of the blob.
      # query          - A Hash of key => value query parameters.
      # host           - The host of the API.
      #
      # Returns a URI.
      def self.blob(container_name, blob_name, query={}, host=Azure.config.blob_host)
        uri = join(host, File.join(container_name, blob_name))
        uri.query = ::URI.encode_www_form(query)
        uri
      end

      # Utility method to generate the URI.
      #
      # host - A String with the URI's host.
      # path - A String with the URI's path.
      #
      # Returns a URI.
      def self.join(host, path)
        ::URI.parse(File.join(host, path))
      end
    end
  end
end
