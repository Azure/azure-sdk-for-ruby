#-------------------------------------------------------------------------
# Copyright 2012 Microsoft Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#--------------------------------------------------------------------------
require 'azure/service/storage_service'

module Azure
  module Service
    class BlobService < StorageService

      def initialize
        super()
        @default_timeout = 90
      end

      attr_accessor :default_timeout

      # Public: Generate the URI for the collection of containers.
      #
      # query - A Hash of key => value query parameters.
      # host  - The host of the API.
      #
      # Returns a URI.
      def containers_uri(query={}, host=Azure.config.blob_host)
        query = { "comp" => "list" }.merge(query)
        uri = join(host, "/")
        add_query(uri, query)
      end

      # Public: Generate the URI for a specific container.
      #
      # name  - The container name. If this is a URI, we just return this.
      # query - A Hash of key => value query parameters.
      # host  - The host of the API.
      #
      # Returns a URI.
      def container_uri(name, query={}, host=Azure.config.blob_host)
        return name if name.kind_of? ::URI
        query = { "restype" => "container" }.merge(query)
        uri = join(host, name)
        add_query(uri, query)
      end

      # Public: Generate the URI for a specific Blob.
      #
      # container_name - String representing the name of the container.
      # blob_name      - String representing the name of the blob.
      # query          - A Hash of key => value query parameters.
      # host           - The host of the API.
      #
      # Returns a URI.
      def blob_uri(container_name, blob_name, query={}, host=Azure.config.blob_host)
        uri = join(host, File.join(container_name, blob_name))
        add_query(uri, query)
      end

      # Public: Adds query to URI, setting default timeout unless it's already in query
      #
      # uri   - The URI.
      # query - A Hash of key => value query paramters
      #
      # Returns as URI.
      def add_query(uri, query={})
        query["timeout"] = default_timeout.to_s unless query.has_key? "timeout"

        uri.query = ::URI.encode_www_form(query)
        uri
      end

      # Utility method to generate the URI.
      #
      # host - A String with the URI's host.
      # path - A String with the URI's path.
      #
      # Returns a URI.
      def join(host, path)
        ::URI.parse(File.join(host, path))
      end
    end
  end
end