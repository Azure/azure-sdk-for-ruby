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

      # Public: Create a new container 
      #
      # name       - String. The name of the container
      # metadata   - Hash. User defined metadata for the container (optional)
      # visibility - String. One of "container" or "blob" (optional)
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/dd179468.aspx
      #
      # Returns a Container
      def create_container(name, metadata={}, visibility=nil)
        uri = container_uri(name)

        headers = {}
        
        add_metadata_to_headers(metadata, headers) if metadata
        
        headers["x-ms-blob-public-access"] = visibility.to_s if visibility

        response = call(:put, uri, nil, headers)

        container = Azure::Entity::Blob::Serialization.container_from_headers(response.headers)
        container.name = name
        container.metadata = metadata
        container
      end

      # Public: Deletes a container
      #
      # name       - String. The name of the container
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/dd179408.aspx
      #
      # Returns true on success
      def delete_container(name)
        response = call(:delete, container_uri(name))
        response.success?
      end

      # Public: Returns all properties and metadata on the container.
      #
      # name       - String. The name of the container
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/dd179370.aspx
      #
      # Returns a Container
      def get_container_properties(name)
        response = call(:get, container_uri(name))

        container = Azure::Entity::Blob::Serialization.container_from_headers(response.headers)
        container.name = name
        container
      end

      # Public: Returns only user-defined metadata for the specified container.
      #
      # name       - String. The name of the container
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/ee691976.aspx
      #
      # Returns a Container
      def get_container_metadata(name)
        response = call(:get, container_uri(name, {"comp"=>"metadata"}))

        container = Azure::Entity::Blob::Serialization.container_from_headers(response.headers)
        container.name = name
        container
      end

      # Public: Gets the access control list (ACL) and any container-level access policies 
      # for the container.
      #
      # name       - String. The name of the container
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/dd179469.aspx
      #
      # Returns a tuple of (container, signed_identifiers)
      #   container           - A Azure::Entity::Blob::Container instance
      #   signed_identifiers  - A list of Azure::Entity::Blob::SignedIdentifier instances
      #
      def get_container_acl(name)
        response = call(:get, container_uri(name, {"comp"=>"acl"}))

        container = Azure::Entity::Blob::Serialization.container_from_headers(response.headers)

        signed_identifiers = nil
        signed_identifiers = Azure::Entity::Blob::Serialization.signed_identifiers_from_xml(response.body) if response.body != nil && response.body.length > 0

        return container, signed_identifiers
      end

      # Public: Sets the ACL and any container-level access policies for the container.
      #
      # name                - String. The name of the container
      # visibility          - String. The container visibility
      # signed_identifiers  - Array. A list of Azure::Entity::Blob::SignedIdentifier instances 
      # 
      # See http://msdn.microsoft.com/en-us/library/windowsazure/dd179391.aspx
      #
      # Returns a tuple of (container, signed_identifiers)
      #   container           - A Azure::Entity::Blob::Container instance
      #   signed_identifiers  - A list of Azure::Entity::Blob::SignedIdentifier instances
      #
      def set_container_acl(name, visibility, signed_identifiers=[])
        uri =container_uri(name, {"comp"=>"acl"})

        headers = nil
        headers = {"x-ms-blob-public-access" => visibility} if visibility != nil && visibility.length > 0

        body = nil
        body = Azure::Entity::Blob::Serialization.signed_identifiers_to_xml(signed_identifiers) if signed_identifiers && headers && signed_identifiers.length > 0  && headers["x-ms-blob-public-access"] == "container"

        response = call(:put, uri, body, headers)

        container = Azure::Entity::Blob::Serialization.container_from_headers(response.headers)
        container.name = name
        container.visibility = visibility

        return container, signed_identifiers

      end

      # Public: Sets custom metadata for the container.
      #
      # name      - String. The name of the container
      # metadata  - Hash. A Hash of the metadata values
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/dd179362.aspx
      #
      # Returns true on success
      def set_container_metadata(name, metadata)
        headers = {}
        
        add_metadata_to_headers(metadata, headers) if metadata

        response = call(:put, container_uri(name, {"comp"=>"metadata"}), nil, headers)
        response.success?
      end

      # Public: Get a list of Containers from the server
      #
      # name              - String. The name of the container to list blobs for. 
      # options           - Hash. Optional parameters. 
      #
      # Accepted key/value pairs in options parameter are:
      # :prefix           - String. Filters the results to return only blobs 
      #                     whose name begins with the specified prefix. (optional)
      #
      # :delimiter        - String. When the request includes this parameter, the operation 
      #                     returns a BlobPrefix element in the response body that acts as a 
      #                     placeholder for all blobs whose names begin with the same substring 
      #                     up to the appearance of the delimiter character. The delimiter may 
      #                     be a single character or a string.
      #
      # :marker           - String. An identifier that specifies the portion of the 
      #                     list to be returned. This value comes from the property
      #                     Azure::Entity::Blob::BlobEnumerationResults.marker when 
      #                     there are more blobs available than were returned. The 
      #                     marker value may then be used here to request the next set
      #                     of list items. (optional)
      #
      # :max_results      - Integer. Specifies the maximum number of blobs to return. 
      #                     If max_results is not specified, or is a value greater than 
      #                     5,000, the server will return up to 5,000 items. If it is set 
      #                     to a value less than or equal to zero, the server will return 
      #                     status code 400 (Bad Request). (optional)
      #
      # :timeout          - Integer. A timeout in seconds. (optional)
      #
      # :metadata         - Boolean. Specifies wether or not to return the blob metadata.
      #                     (optional, Default=false)
      # :snapshots        - Boolean. Specifies that snapshots should be included in the 
      #                     enumeration. Snapshots are listed from oldest to newest in the 
      #                     response. (optional, Default=false)
      # :uncomittedblobs  - Boolean. Specifies that blobs for which blocks have been uploaded, 
      #                     but which have not been committed using put_block_list, be included
      #                     in the response. (optional, Default=false)
      # :copy             - Boolean. Specifies that metadata related to any current or previous 
      #                     copy_blob operation should be included in the response. 
      #                     (optional, Default=false)
      #
      # NOTE: Metadata requested with the :metadata parameter must have been stored in
      # accordance with the naming restrictions imposed by the 2009-09-19 version of the Blob 
      # service. Beginning with that version, all metadata names must adhere to the naming 
      # conventions for C# identifiers.
      #
      # See: http://msdn.microsoft.com/en-us/library/windowsazure/dd135734.aspx
      #
      # Any metadata with invalid names which were previously stored, will be returned with the 
      # key "x-ms-invalid-name" in the metadata hash. This may contain multiple values and be an
      # Array (vs a String if it only contains a single value).
      # 
      # Returns an Azure::Entity::Blob::BlobEnumerationResults
      def list_blobs(name, options={})
        query = {}

        query["comp"] = "list"
        query["prefix"] = options[:prefix] if options[:prefix]
        query["delimiter"] = options[:delimiter] if options[:delimiter]
        query["marker"] = options[:marker] if options[:marker]
        query["maxresults"] = options[:max_results].to_s if options[:max_results]
        query["timeout"] = options[:timeout].to_s if options[:timeout]

        included_datasets = []
        included_datasets.push("metadata") if options[:metadata] == true
        included_datasets.push("snapshots") if options[:snapshots] == true
        included_datasets.push("uncommittedblobs") if options[:uncommittedblobs] == true
        included_datasets.push("copy") if options[:copy] == true

        query["include"] = included_datasets.join ',' if included_datasets.length > 0

        uri = container_uri(name, query)
        response = call(:get, uri)

        Azure::Entity::Blob::Serialization.blob_enumeration_results_from_xml(response.body)
      end

      # Adds metadata properties to header hash with required prefix
      # 
      # metadata  - A Hash of metadata name/value pairs
      # headers   - A Hash of HTTP headers 
      def add_metadata_to_headers(metadata, headers)
        metadata.each do |key, value|
          headers["x-ms-meta-#{key}"] = value
        end
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