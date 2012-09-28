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