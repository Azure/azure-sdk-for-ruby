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
    class QueueService < StorageService
      def initialize
        super()
        @host = Azure.config.queue_host
        @default_timeout = 30
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