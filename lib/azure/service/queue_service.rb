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
require 'azure/entity/serialization'

module Azure
  module Service
    class QueueService < StorageService
      def initialize
        super()
        @host = Azure.config.queue_host
        @default_timeout = 30
      end

      # Public: Get a list of Queues from the server
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
      # See http://msdn.microsoft.com/en-us/library/windowsazure/dd179466 
      #
      # Any metadata with invalid names which were previously stored, will be returned with the 
      # key "x-ms-invalid-name" in the metadata hash. This may contain multiple values and be an
      # Array (vs a String if it only contains a single value).
      # 
      # Returns an Azure::Entity::Blob::QueueEnumerationResults
      def list_queues(options={})
        query = {}
        query["prefix"] = options[:prefix] if options[:prefix]
        query["marker"] = options[:marker] if options[:marker]
        query["maxresults"] = options[:max_results].to_s if options[:max_results]
        query["include"] = "metadata" if options[:metadata] == true
        query["timeout"] = options[:timeout].to_s if options[:timeout]

        uri = collection_uri(query)
        response = call(:get, uri)

        Azure::Entity::Serialization.queue_enumeration_results_from_xml(response.body)
      end

      # Public: Clears all messages from the queue.
      # 
      # If a queue contains a large number of messages, Clear Messages may time out 
      # before all messages have been deleted. In this case the Queue service will 
      # return status code 500 (Internal Server Error), with the additional error 
      # code OperationTimedOut. If the operation times out, the client should 
      # continue to retry Clear Messages until it succeeds, to ensure that all 
      # messages have been deleted.
      # 
      # queue_name   - String. The name of the queue.
      # 
      # See http://msdn.microsoft.com/en-us/library/windowsazure/dd179454
      # 
      # Returns true on success
      def clear_messages(queue_name)
        uri = messages_uri(queue_name)
        response = call(:delete, uri)
        response.success?
      end
    
      # Public: Creates a new queue under the storage account.
      # 
      # queue_name    - String. The queue name.
      # metadata      - Hash. A hash of user defined metadata (optional)
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/dd179342
      #
      # Returns true on success
      def create_queue(queue_name, metadata=nil)
        uri = queue_uri(queue_name)
        headers = {}
        add_metadata_to_headers(metadata || {}, headers)
        response = call(:put, uri, nil, headers)
        response.success?
      end

      # Public: Deletes a queue.
      # 
      # queue_name    - String. The queue name.
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/dd179436
      #
      # Returns true on success
      def delete_queue(queue_name)
        uri = queue_uri(queue_name)
        response = call(:delete, uri)
        response.success?
      end

      # Public: Returns queue properties, including user-defined metadata.
      # 
      # queue_name    - String. The queue name.
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/dd179384
      #
      # Returns a tuple of (approximate_message_count, metadata)
      #   approximate_messages_count  - Integer. The approximate number of messages in the queue. This number is not
      #                                 lower than the actual number of messages in the queue, but could be higher.
      #   metadata                    - Hash. The queue metadata (Default: {})
      #
      def get_queue_metadata(queue_name)
        uri = queue_uri(queue_name, { "comp" => "metadata" })
        response = call(:get, uri)

        approximate_messages_count = response.headers["x-ms-approximate-messages-count"]
        metadata = Azure::Entity::Serialization.metadata_from_headers(response.headers)

        return approximate_messages_count, metadata
      end

      # Public: Sets user-defined metadata on the queue. To delete queue metadata, call 
      # this API with an empty hash in the metadata parameter.
      # 
      # queue_name    - String. The queue name.
      # metadata      - Hash. A hash of user defined metadata
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/dd179348
      #
      # Returns true on success
      def set_queue_metadata(queue_name, metadata)
        uri = queue_uri(queue_name, { "comp" => "metadata" })
        headers ={}
        add_metadata_to_headers(metadata || {}, headers)

        response = call(:put, uri, nil, headers)
        response.success?
      end

      # Public: Gets the access control list (ACL) for the queue.
      #
      # queue_name    - String. The queue name.
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/jj159101
      #
      # Returns a list of Azure::Entity::SignedIdentifier instances
      def get_queue_acl(queue_name)
        response = call(:get, queue_uri(queue_name, {"comp"=>"acl"}))

        signed_identifiers = []
        signed_identifiers = Azure::Entity::Serialization.signed_identifiers_from_xml(response.body) unless response.body == nil or response.body.length < 1
        signed_identifiers
      end

      # Public: Sets the access control list (ACL) for the queue.
      #
      # queue_name          - String. The queue name.
      # signed_identifiers  - Array. A list of Azure::Entity::SignedIdentifier instances 
      # 
      # See http://msdn.microsoft.com/en-us/library/windowsazure/jj159099
      #
      # Returns true on success
      def set_queue_acl(queue_name, signed_identifiers=[])
        uri =queue_uri(queue_name, {"comp"=>"acl"})
        body = nil
        body = Azure::Entity::Serialization.signed_identifiers_to_xml(signed_identifiers) if signed_identifiers && signed_identifiers.length > 0

        response = call(:put, uri, body, {})
        response.success?
      end

      # Public: Adds a message to the queue and optionally sets a visibility timeout for the message.
      # 
      # queue_name    - String. The queue name.
      # message_text  - String. The message contents. Note that the message content must be in a format that may be encoded with UTF-8.
      # options       - Hash. Optional parameters:
      #   :visibility_timeout   - Integer. Specifies the new visibility timeout value, in seconds, relative to server 
      #                           time. The new value must be larger than or equal to 0, and cannot be larger than 7 
      #                           days. The visibility timeout of a message cannot be set to a value later than the 
      #                           expiry time. :visibility_timeout should be set to a value smaller than the 
      #                           time-to-live value. If not specified, the default value is 0.
      # 
      #   :message_ttl          - Integer. Specifies the time-to-live interval for the message, in seconds. The maximum 
      #                           time-to-live allowed is 7 days. If not specified, the default time-to-live is 7 days.
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/dd179346
      #
      # Returns true on success
      def create_message(queue_name, message_text, options=nil)
        query = {}

        if options
          query["visibilitytimeout"] = options[:visibility_timeout] if options[:visibility_timeout]
          query["messagettl"] = options[:message_ttl] if options[:message_ttl]
        end

        uri = messages_uri(queue_name, query)
        body = Azure::Entity::Serialization.message_to_xml(message_text)
        
        response = call(:post, uri, body, {})
        response.success?
      end

      # Public: Generate the URI for the collection of queues.
      #
      # query      - A Hash of query parameters (default: {}).
      #
      # Returns a URI.
      def collection_uri(query={})
        query.update(comp: 'list', include: 'metadata')
        generate_uri(host, "", query)
      end

      # Public: Generate the URI for a given queue.
      #
      # queue_name - The name of the queue.
      # query      - A Hash of query parameters (default: {}).
      #
      # Returns a URI.
      def queue_uri(queue_name, query={})
        return queue_name if name.kind_of? ::URI
        generate_uri(host, queue_name, query)
      end

      # Public: Generate the messages URI for the given queue.
      #
      # queue_name - The name of the queue.
      # query      - A Hash of query parameters (default: {}).
      #
      # Returns a URI.
      def messages_uri(queue_name, query={})
        generate_uri(host, "#{queue_name}/messages", query)
      end

      # Public: Generate the URI for a given message
      #
      # queue_name - The name of the queue.
      # message_id - The id of the message.
      # query      - A Hash of query parameters (default: {}).
      #
      # Returns a URI.
      def message_uri(queue_name, message_id, query={})
        generate_uri("#{queue_name}/messages/#{message_id}", query)
      end
    end
  end
end