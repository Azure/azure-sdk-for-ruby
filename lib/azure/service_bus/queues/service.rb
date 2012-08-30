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
require "azure/core/service"
require "azure/core/utils/queryable"
require "azure/service_bus/service_bus_service"
require "azure/service_bus/auth/wrap"
require "azure/service_bus/auth/authorizer"
require "azure/service_bus/queues/uri"

module Azure
  module ServiceBus
    module Queues
      class Service < Core::Service
        def initialize(signer=Azure::ServiceBus::Auth::Wrap.new)
          super(signer, Azure::ServiceBus::Auth::Authorizer.new)
        end
      end

      module Services
        # Public: Create a queue.
        class Create < Service
          # Public: Invoke the service.
          #
          # name  - A String with the queue name.
          # xml   - An xml string 
          #
          # Returns a Response.
          def call(name, xml)
            super(:put, URI.queue(name), xml)
          end
        end

        # Public: Delete a queue.
        class Delete < Service
          # Public: Invoke the service.
          #
          # name - A String with the queue name.
          #
          # Returns a Response.
          def call(name)
            super(:delete, URI.queue(name))
          end
        end

        # Public: Get a queue.
        class Get < Service
          # Public: Invoke the service.
          #
          # name - A String with the queue name.
          #
          # Returns a Response.
          def call(name)
            super(:get, URI.queue(name))
          end
        end

        # Public: List queues
        class List < Service
          include Core::Utils::Queryable

          # Public: Invoke the service.
          #
          # options - Options for this query (default: {}):
          #           :skip - Integer: number of entries to skip
          #           :top  - Integer: number of entries to retrieve
          #
          # Returns a Response.
          def call(options={})
            options = translate_options_hash(options)
            super(:get, URI.collection(options))
          end
        end

        ## Messages

        # Public: Sends a message to a queue
        class SendMessageToQueue < ServiceBusService
          # Public: Invoke the service.
          #
          # queue_name              - A String with the queue name
          # body                    - A String with the message's body
          # broker_properties_json  - A JSON encoded String with the message's properties.
          # content_type            - A String with the desired Content-Type for the message body
          # message_properties      - A Hash with the user-defined message's properties.
          #
          # Returns a Response.
          def call(queue_name, body, content_type, broker_properties_json, message_properties)
            super(:post, URI.messages(queue_name), body) do |request|
              request.headers['BrokerProperties'] = broker_properties_json
              message_properties.each do |k,v|
                request.headers[k.to_s] = v
              end
              request.headers["Content-Type"] = content_type
            end
          end
        end

        # Public: Peek-lock message from a Queue
        class PeekLockMessageFromQueue < ServiceBusService
          # Public: Invoke the service.
          #
          # queue_name  - A String with the queue name
          # options     - Options for this query (default: {}):
          #               :timeout - Integer: request's timeout in seconds
          #
          # Returns a Response.
          def call(queue_name, options={})
            super(:post, URI.messages_head(queue_name, options))
          end
        end

        # Public: Unlocks a message from a Queue
        class UnlockMessageFromQueue < ServiceBusService
          # Public: Invoke the service.
          #
          # queue_name  - A String with the queue name
          # seq_number  - A String with the message's sequence_number
          # lock_token  - A String with the message's lock_token
          #
          # Returns a Response.
          def call(queue_name, seq_number, lock_token)
            super(:put, URI.message(queue_name, seq_number, lock_token))
          end
        end

        # Public: Reads and Deletes a message from a Queue
        class ReadDeleteMessageFromQueue < ServiceBusService
          # Public: Invoke the service.
          #
          # queue_name  - A String with the queue name
          # options     - Options for this query (default: {}):
          #               :timeout - Integer: request's timeout in seconds
          #
          # Returns a Response.
          def call(queue_name, options={})
            super(:delete, URI.messages_head(queue_name, options))
          end
        end

        # Public: Deletes a message from a Queue
        class DeleteMessageFromQueue < ServiceBusService
          # Public: Invoke the service.
          #
          # queue_name  - A String with the queue name
          # seq_number  - A String with the message's sequence_number
          # lock_token  - A String with the message's lock_token
          #
          # Returns a Response.
          def call(queue_name, seq_number, lock_token)
            super(:delete, URI.message(queue_name, seq_number, lock_token))
          end
        end
      end
    end
  end
end
