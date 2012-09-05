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
require "azure/service_bus/topics/uri"

module Azure
  module ServiceBus
    module Topics
      class Service < Core::Service
        def initialize(signer=Azure::ServiceBus::Auth::Wrap.new)
          super(signer, Azure::ServiceBus::Auth::Authorizer.new)
        end
      end

      module Services
        # Public: Create a topic.
        class Create < Service
          # Public: Invoke the service.
          #
          # name  - A String with the topic name.
          # xml   - An xml string 
          #
          # Returns a Azure::Core::HttpResponse.
          def call(name, xml)
            super(:put, URI.topic(name), xml)
          end
        end

        # Public: Delete a topic.
        class Delete < Service
          # Public: Invoke the service.
          #
          # name - A String with the topic name.
          #
          # Returns a Azure::Core::HttpResponse.
          def call(name)
            super(:delete, URI.topic(name))
          end
        end

        # Public: Get a topic.
        class Get < Service
          # Public: Invoke the service.
          #
          # name - A String with the topic name.
          #
          # Returns a Azure::Core::HttpResponse.
          def call(name)
            super(:get, URI.topic(name))
          end
        end

        # Public: List topics
        class List < Service
          include Core::Utils::Queryable

          # Public: Invoke the service.
          #
          # options - Options for this query (default: {}):
          #           :skip - Integer: number of entries to skip
          #           :top  - Integer: number of entries to retrieve
          #
          # Returns a Azure::Core::HttpResponse.
          def call(options={})
            options = translate_options_hash(options)
            super(:get, URI.collection(options))
          end
        end

        ## Messages

        # Public: Sends a message to a topic
        class SendMessageToTopic < ServiceBusService
          # Public: Invoke the service.
          #
          # topic_name              - A String with the topic name
          # body                    - A String with the message's body
          # broker_properties_json  - A JSON encoded String with the message's properties.
          # content_type            - A String with the desired Content-Type for the message body
          # message_properties      - A Hash with the user-defined message's properties.
          #
          # Returns a Azure::Core::HttpResponse.
          def call(topic_name, body, content_type, broker_properties_json, message_properties)
            super(:post, URI.messages(topic_name), body) do |request|
              request.headers['BrokerProperties'] = broker_properties_json
              message_properties.each do |k,v|
                request.headers[k.to_s] = v
              end
              request.headers["Content-Type"] = content_type
            end
          end
        end
      end
    end
  end
end
