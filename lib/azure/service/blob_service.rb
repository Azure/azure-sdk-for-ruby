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

      # Public: Get a list of Blobs from the server
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

      # Public: Creates a new page blob. Note that calling create_page_blob to create a page
      # blob only initializes the blob. To add content to a page blob, call create_blob_pages method.
      # 
      # container - String. The container name.
      # blob - String. The blob name.
      # length - Integer. Specifies the maximum size for the page blob, up to 1 TB. The page blob size must be aligned to a 512-byte boundary.
      # options - Hash. The optional parameters. Understood hash values listed below:
      #   :content_type          - String. Content type for the request. Will be saved with blob unless alternate value is provided in blob_content_type.
      #   :content_encoding      - String. Content encoding for the request. Will be saved with blob unless alternate value is provided in blob_content_encoding.
      #   :content_language      - String. Content langauge for the request. Will be saved with blob unless alternate value is provided in blob_content_language.
      #   :content_md5           - String. Content MD5 for the request. Will be saved with blob unless alternate value is provided in blob_content_md5.
      #   :cache_control         - String. Cache control for the request. Will be saved with blob unless alternate value is provided in blob_cache_control.
      #   :blob_content_type     - String. Content type for the blob. Will be saved with blob.
      #   :blob_content_encoding - String. Content encoding for the blob. Will be saved with blob.
      #   :blob_content_language - String. Content langauge for the blob. Will be saved with blob.
      #   :blob_content_md5      - String. Content MD5 for the blob. Will be saved with blob.
      #   :blob_cache_control    - String. Cache control for the blob. Will be saved with blob.
      #   :metadata              - Hash. Custom metadata values to store with the blob.
      #   :sequence_number       - Integer. The sequence number is a user-controlled value that you can use to track requests. The value of the sequence number must be between 0 and 2^63 - 1.The default value is 0.
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/dd179451.aspx
      #
      # Returns a Blob
      def create_page_blob(container, blob, length, options={})
        uri = blob_uri(container, blob)
        
        headers = {}

        # set x-ms-blob-type to PageBlob
        headers["x-ms-blob-type"] = "PageBlob"

        # ensure content-length is 0 and x-ms-blob-content-length is the blob length
        headers["Content-Length"] = 0
        headers["x-ms-blob-content-length"] = length
        
        # set x-ms-sequence-number from options (or default to 0)
        headers["x-ms-sequence-number"] = options[:sequence_number] || 0

        # set the rest of the optional headers
        headers["Content-Type"] = options[:content_type] if options[:content_type]
        headers["Content-Encoding"] = options[:content_encoding] if options[:content_encoding]
        headers["Content-Language"] = options[:content_language] if options[:content_language]
        headers["Content-MD5"] = options[:content_md5] if options[:content_md5]
        headers["Cache-Control"] = options[:cache_control] if options[:cache_control]

        headers["x-ms-blob-content-type"] = options[:blob_content_type] if options[:blob_content_type]
        headers["x-ms-blob-content-encoding"] = options[:blob_content_encoding] if options[:blob_content_encoding]
        headers["x-ms-blob-content-language"] = options[:blob_content_language] if options[:blob_content_language]
        headers["x-ms-blob-content-md5"] = options[:blob_content_md5] if options[:blob_content_md5]
        headers["x-ms-blob-cache-control"] = options[:blob_cache_control] if options[:blob_cache_control]

        add_metadata_to_headers(options[:metadata], headers) if options[:metadata]

        # call PutBlob with empty body
        response = call(:put, uri, nil, headers)

        blob = Azure::Entity::Blob::Serialization.blob_from_headers(response.headers)
        blob.name = blob
        blob.url = uri

        blob
      end

      # Public: Creates a range of pages in a page blob.
      #
      # container    - String. Name of container
      # blob         - String. Name of blob
      # start_range  - Integer. Position of first byte of first page
      # end_range    - Integer. Position of last byte of of last page
      # content      - IO or String. Content to write. Length in bytes should equal end_range - start_range
      # options      - Hash. A collection of options. Possible keys/values are:
      #   :if_sequence_number_lte - If the blob’s sequence number is less than or equal to the specified value, the request proceeds; otherwise it fails with the SequenceNumberConditionNotMet error (HTTP status code 412 – Precondition Failed).
      #   :if_sequence_number_lt  - If the blob’s sequence number is less than the specified value, the request proceeds; otherwise it fails with SequenceNumberConditionNotMet error (HTTP status code 412 – Precondition Failed).
      #   :if_sequence_number_eq  - If the blob’s sequence number is equal to the specified value, the request proceeds; otherwise it fails with SequenceNumberConditionNotMet error (HTTP status code 412 – Precondition Failed).
      #   :if_modified_since      - A DateTime value. Specify this conditional header to write the page only if the blob has been modified since the specified date/time. If the blob has not been modified, the Blob service returns status code 412 (Precondition Failed).
      #   :if_unmodified_since    - A DateTime value. Specify this conditional header to write the page only if the blob has not been modified since the specified date/time. If the blob has been modified, the Blob service returns status code 412 (Precondition Failed).
      #   :if_match               - An ETag value. Specify an ETag value for this conditional header to write the page only if the blob's ETag value matches the value specified. If the values do not match, the Blob service returns status code 412 (Precondition Failed).
      #   :if_none_match          - An ETag value. Specify an ETag value for this conditional header to write the page only if the blob's ETag value does not match the value specified. If the values are identical, the Blob service returns status code 412 (Precondition Failed).
      # 
      # See http://msdn.microsoft.com/en-us/library/windowsazure/ee691975.aspx
      #
      # Returns Blob
      def create_blob_pages(container, blob, start_range, end_range, content, options={})
        uri = blob_uri(container, blob, {"comp"=> "page"})
        headers = {}
        headers["x-ms-range"] = "#{start_range}-#{end_range}"
        headers["x-ms-page-write"] = "update"

        # clear default content type
        headers["Content-Type"] = ""

        # set optional headers
        headers["x-ms-if-sequence-number-lte"] = options[:if_sequence_number_lte] if options[:if_sequence_number_lte]
        headers["x-ms-if-sequence-number-lt"] = options[:if_sequence_number_lt] if options[:if_sequence_number_lt]
        headers["x-ms-if-sequence-number-eq"] = options[:if_sequence_number_eq] if options[:if_sequence_number_eq]
        headers["If-Modified-Since"] = options[:if_modified_since] if options[:if_modified_since]
        headers["If-Unmodified-Since"] = options[:if_unmodified_since] if options[:if_unmodified_since]
        headers["If-Match"] = options[:if_match] if options[:if_match]
        headers["If-None-Match"] = options[:if_none_match] if options[:if_none_match]

        response = call(:put, uri, content, headers)

        blob = Azure::Entity::Blob::Serialization.blob_from_headers(response.headers)
        blob.name = blob
        blob.url = uri

        blob
      end

      # Public: Clears a range of pages from the blob.
      #
      # container    - String. Name of container
      # blob         - String. Name of blob
      # start_range  - Integer. Position of first byte of first page
      # end_range    - Integer. Position of last byte of of last page
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/ee691975.aspx
      #
      # Returns Blob
      def clear_blob_pages(container, blob, start_range, end_range)
        uri = blob_uri(container, blob, {"comp"=> "page"})
        headers = {}
        headers["x-ms-range"] = "#{start_range}-#{end_range}"
        headers["x-ms-page-write"] = "clear"

        # clear default content type
        headers["Content-Type"] = ""

        response = call(:put, uri, nil, headers)

        blob = Azure::Entity::Blob::Serialization.blob_from_headers(response.headers)
        blob.name = blob
        blob.url = uri

        blob
      end

      # Public: Creates a new block blob or updates the content of an existing block blob.
      # 
      # Updating an existing block blob overwrites any existing metadata on the blob
      # Partial updates are not supported with create_block_blob the content of the
      # existing blob is overwritten with the content of the new blob. To perform a
      # partial update of the content of a block blob, use the create_block_list
      # method.
      #
      # Note that the default content type is application/octet-stream.
      #
      # container   - String. The container name.
      # blob        - String. The blob name.
      # content     - IO or String. The content of the blob.
      # options     - Hash. The optional parameters. Understood hash values listed below:
      #   :content_type          - String. Content type for the request. Will be saved with blob unless alternate value is provided in blob_content_type.
      #   :content_encoding      - String. Content encoding for the request. Will be saved with blob unless alternate value is provided in blob_content_encoding.
      #   :content_language      - String. Content langauge for the request. Will be saved with blob unless alternate value is provided in blob_content_language.
      #   :content_md5           - String. Content MD5 for the request. Will be saved with blob unless alternate value is provided in blob_content_md5.
      #   :cache_control         - String. Cache control for the request. Will be saved with blob unless alternate value is provided in blob_cache_control.
      #   :blob_content_type     - String. Content type for the blob. Will be saved with blob.
      #   :blob_content_encoding - String. Content encoding for the blob. Will be saved with blob.
      #   :blob_content_language - String. Content langauge for the blob. Will be saved with blob.
      #   :blob_content_md5      - String. Content MD5 for the blob. Will be saved with blob.
      #   :blob_cache_control    - String. Cache control for the blob. Will be saved with blob.
      #   :metadata              - Hash. Custom metadata values to store with the blob.
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/dd179451.aspx
      #
      # Returns a Blob
      def create_block_blob(container, blob, content, options={})
        uri = blob_uri(container, blob)
        
        headers = {}

        # set x-ms-blob-type to BlockBlob
        headers["x-ms-blob-type"] = "BlockBlob"

        # set the rest of the optional headers
        headers["Content-Type"] = options[:content_type] || "application/octet-stream"
        headers["Content-Encoding"] = options[:content_encoding] if options[:content_encoding]
        headers["Content-Language"] = options[:content_language] if options[:content_language]
        headers["Content-MD5"] = options[:content_md5] if options[:content_md5]
        headers["Cache-Control"] = options[:cache_control] if options[:cache_control]

        headers["x-ms-blob-content-type"] = options[:blob_content_type] if options[:blob_content_type]
        headers["x-ms-blob-content-encoding"] = options[:blob_content_encoding] if options[:blob_content_encoding]
        headers["x-ms-blob-content-language"] = options[:blob_content_language] if options[:blob_content_language]
        headers["x-ms-blob-content-md5"] = options[:blob_content_md5] if options[:blob_content_md5]
        headers["x-ms-blob-cache-control"] = options[:blob_cache_control] if options[:blob_cache_control]

        add_metadata_to_headers(options[:metadata], headers) if options[:metadata]

        # call PutBlob with empty body
        response = call(:put, uri, content, headers)

        blob = Azure::Entity::Blob::Serialization.blob_from_headers(response.headers)
        blob.name = blob
        blob.url = uri

        blob
      end

      # Public: Creates a new block to be committed as part of a block blob.
      #
      # container   - String. The container name.
      # blob        - String. The blob name.
      # block_id    - String. The block id.
      # content     - IO or String. The content of the blob.
      # options     - Hash. The optional parameters. Understood hash values listed below:
      #   :content_md5           - String. Content MD5 for the request contents.
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/dd135726.aspx
      #
      # Returns the MD5 of the uploaded block (as calculated by the server)
      def create_blob_block(container, blob, block_id, content, options={})
        uri = blob_uri(container, blob, {"comp"=> "block", "blockid" => block_id })

        headers = {}
        headers["Content-MD5"] = options[:content_md5] if options[:content_md5]

        response = call(:put, uri, content, headers)

        response.headers["Content-MD5"]
      end

      # Public: Commits existing blob blocks to a blob.
      #  
      # This method writes a blob by specifying the list of block IDs that make up the
      # blob. In order to be written as part of a blob, a block must have been 
      # successfully written to the server in a prior create_blob_block method.
      # 
      # You can call Put Block List to update a blob by uploading only those blocks 
      # that have changed, then committing the new and existing blocks together. 
      # You can do this by specifying whether to commit a block from the committed 
      # block list or from the uncommitted block list, or to commit the most recently
      # uploaded version of the block, whichever list it may belong to.
      # 
      # container   - String. The container name.
      # blob        - String. The blob name.
      # block_list  - Array. A ordered list of Hashs in the following format: 
      #               [ ["block_id1", :committed], ["block_id2", :uncommitted], ["block_id3"], ["block_id4", :committed]... ]
      #               The first element of the inner list is the block_id, the second is optional 
      #               and can be either :committed or :uncommitted to indicate in which group of blocks 
      #               the id should be looked for. If it is omitted, the latest of either group will be used.
      #                
      # options     - Hash. The optional parameters.
      #   :content_md5           - String. Content MD5 for the request contents (not the blob contents!)
      #   :blob_content_type     - String. Content type for the blob. Will be saved with blob.
      #   :blob_content_encoding - String. Content encoding for the blob. Will be saved with blob.
      #   :blob_content_language - String. Content langauge for the blob. Will be saved with blob.
      #   :blob_content_md5      - String. Content MD5 for the blob. Will be saved with blob.
      #   :blob_cache_control    - String. Cache control for the blob. Will be saved with blob.
      #   :metadata              - Hash. Custom metadata values to store with the blob.
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/dd179467.aspx 
      # 
      # Returns true on success
      def commit_blob_blocks(container, blob, block_list, options={})
        uri = blob_uri(container, blob, {"comp"=> "blocklist" })

        headers = {}
        headers["Content-MD5"] = options[:content_md5] if options[:content_md5]
        headers["x-ms-blob-content-type"] = options[:blob_content_type] if options[:blob_content_type]
        headers["x-ms-blob-content-encoding"] = options[:blob_content_encoding] if options[:blob_content_encoding]
        headers["x-ms-blob-content-language"] = options[:blob_content_language] if options[:blob_content_language]
        headers["x-ms-blob-content-md5"] = options[:blob_content_md5] if options[:blob_content_md5]
        headers["x-ms-blob-cache-control"] = options[:blob_cache_control] if options[:blob_cache_control]

        add_metadata_to_headers(options[:metadata], headers) if options[:metadata]

        body = Azure::Entity::Blob::Serialization.block_list_to_xml(block_list)
        response = call(:put, uri, body, headers)

        response.success?
      end

      # Public: Retrieves the list of blocks that have been uploaded as part of a block blob.
      # 
      # There are two block lists maintained for a blob:
      # 1) Committed Block List: The list of blocks that have been successfully 
      #    committed to a given blob with commitBlobBlocks.
      # 2) Uncommitted Block List: The list of blocks that have been uploaded for a 
      #    blob using Put Block (REST API), but that have not yet been committed. 
      #    These blocks are stored in Windows Azure in association with a blob, but do
      #    not yet form part of the blob.
      #
      # container      - String. The container name.
      # blob           - String. The blob name.
      # blocklist_type - Symbol. One of :all, :committed, :uncommitted. Defaults to :all (optional)
      # snapshot       - String. An opaque DateTime value that specifies the blob snapshot to 
      #                  retrieve information from. (optional)
      #
      # Returns a list of Azure::Entity::Blob::Block instances
      def list_blob_blocks(container, blob, blocklist_type=:all, snapshot=nil)
        query = {"comp"=>"blocklist"}
        query.merge "snapshot" => snapshot if snapshot
        query.merge({ "blocklisttype" => blocklist_type.to_s }) if blocklist_type != :committed
        
        uri = blob_uri(container, blob, query)

        response = call(:get, uri)

        blocklist = Azure::Entity::Blob::Serialization.block_list_from_xml(response.body)
        blocklist

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