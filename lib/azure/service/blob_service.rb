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
require 'azure/entity/service/storage_service_properties'
require 'azure/entity/blob/serialization'

module Azure
  module Service
    class BlobService < StorageService

      def initialize
        super()
        @default_timeout = 90
      end

      attr_accessor :default_timeout

      # Public: Get Blob Service properties
      #
      # http://msdn.microsoft.com/en-us/library/windowsazure/hh452239
      #
      # Returns a Hash with the service properties or nil if the operation failed
      def get_service_properties
        uri = blob_uri("", "", {"restype" => "service", "comp" => "properties"})
        response = call(:get, uri)
        properties = Azure::Entity::Service::StorageServiceProperties.parse(response.body)
        properties
      end

      # Public: Set Blob Service properties
      #
      # service_properties - An instance of Azure::Entity::Service::StorageServiceProperties
      #
      # http://msdn.microsoft.com/en-us/library/windowsazure/hh452235
      #
      # Returns boolean indicating success.
      def set_service_properties(service_properties)
        body = Azure::Entity::Service::StorageServiceProperties.to_xml

        uri = blob_uri("", "", {"restype" => "service", "comp" => "properties"})
        response = call(:put, uri, body)
        response.success?
      end

      # Public: Get a list of Containers from the server
      # options           - Hash. Optional parameters. 
      #
      # Accepted key/value pairs in options parameter are:
      # :prefix           - String. Filters the results to return only containers 
      #                     whose name begins with the specified prefix. (optional)
      #
      # :marker           - String. An identifier the specifies the portion of the 
      #                     list to be returned. This value comes from the property
      #                     Azure::Entity::Blob::EnumerationResults.marker when there 
      #                     are more containers available than were returned. The 
      #                     marker value may then be used here to request the next set
      #                     of list items. (optional)
      #
      # :max_results      - Integer. Specifies the maximum number of containers to return. 
      #                     If max_results is not specified, or is a value greater than 
      #                     5,000, the server will return up to 5,000 items. If it is set 
      #                     to a value less than or equal to zero, the server will return 
      #                     status code 400 (Bad Request). (optional)
      #
      # :timeout          - Integer. A timeout in seconds. (optional)
      #
      # :metadata         - Boolean. Specifies wether or not to return the container metadata.
      #                     (optional, Default=false)
      #
      # NOTE: Metadata requested with the :metadata parameter must have been stored in
      # accordance with the naming restrictions imposed by the 2009-09-19 version of the Blob 
      # service. Beginning with that version, all metadata names must adhere to the naming 
      # conventions for C# identifiers.
      #
      # See: http://msdn.microsoft.com/en-us/library/aa664670(VS.71).aspx 
      #
      # Any metadata with invalid names which were previously stored, will be returned with the 
      # key "x-ms-invalid-name" in the metadata hash. This may contain multiple values and be an
      # Array (vs a String if it only contains a single value).
      # 
      # Returns an Azure::Entity::Blob::ContainerEnumerationResults
      def list_containers(options={})
        query = {}
        query["prefix"] = options[:prefix] if options[:prefix]
        query["marker"] = options[:marker] if options[:marker]
        query["maxresults"] = options[:max_results].to_s if options[:max_results]
        query["include"] = "metadata" if options[:metadata] == true
        query["timeout"] = options[:timeout].to_s if options[:timeout]

        uri = containers_uri(query)
        response = call(:get, uri)

        Azure::Entity::Blob::Serialization.container_enumeration_results_from_xml(response.body)
      end

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