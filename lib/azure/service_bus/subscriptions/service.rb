require "azure/core/service"
require "azure/service_bus/auth/wrap"
require "azure/service_bus/auth/authorizer"
require "azure/service_bus/subscriptions/uri"
require "azure/service_bus/service_bus_service"

module Azure
  module ServiceBus
    module Subscriptions
      class Service < Core::Service
        def initialize(signer=Azure::ServiceBus::Auth::Wrap.new)
          super(signer, Azure::ServiceBus::Auth::Authorizer.new)
        end
      end

      module Services
        class Create < Service
          # Public: Invoke the service.
          #
          # topic_name - The name of the subscription's topic.
          # name       - The name of the subscription name.
          # body       - The SubscriptionDescription XML serialization.
          #
          # Returns a Response.
          def call(topic_name, name, body)
            uri = Subscriptions::URI.subscription(topic_name, name)
            super(:put, uri, body)
          end
        end

        class List < Service
          # Public: Invoke the service.
          #
          # topic_name - The name of the subscriptions' topic.
          #
          # Returns a Response.
          def call(topic_name)
            uri = Subscriptions::URI.collection(topic_name)
            super(:get, uri)
          end
        end

        class Fetch < Service
          # Public: Invoke the service.
          #
          # topic_name - The name of the subscription's topic.
          # name       - The name of the subscription name.
          #
          # Returns a Response.
          def call(topic_name, name)
            uri = Subscriptions::URI.subscription(topic_name, name)
            super(:get, uri)
          end
        end

        class Delete < Service
          # Public: Invoke the service.
          #
          # topic_name - The name of the subscription's topic.
          # name       - The name of the subscription name.
          #
          # Returns a Response.
          def call(topic_name, name)
            uri = Subscriptions::URI.subscription(topic_name, name)
            super(:delete, uri)
          end
        end

        ## Messages

        # Public: Peek-lock message from a Subscription
        class PeekLockMessageFromSubscription < ServiceBusService
          # Public: Invoke the service.
          #
          # topic_name        - A String with the topic name
          # subscription_name - A String with the subscription name
          # options           - Options for this query (default: {}):
          #                     :timeout - Integer: request's timeout in seconds
          #
          # Returns a Response.
          def call(topic_name, subscription_name, options={})
            super(:post, URI.messages_head(topic_name, subscription_name, options))
          end
        end

        # Public: Unlocks a message from a Subscription
        class UnlockMessageFromSubscription < Service
          # Public: Invoke the service.
          #
          # topic_name        - A String with the topic name
          # subscription_name - A String with the subscription name
          # seq_number        - A String with the message's sequence_number
          # lock_token        - A String with the message's lock_token
          #
          # Returns a Response.
          def call(topic_name, subscription_name, seq_number, lock_token)
            super(:put, URI.message(topic_name, subscription_name, seq_number, lock_token))
          end
        end

        # Public: Reads and Deletes a message from a Subscription
        class ReadDeleteMessageFromSubscription < Service
          # Public: Invoke the service.
          #
          # topic_name        - A String with the topic name
          # subscription_name - A String with the subscription name
          # options           - Options for this query (default: {}):
          #                     :timeout - Integer: request's timeout in seconds
          #
          # Returns a Response.
          def call(topic_name, subscription_name, options={})
            super(:delete, URI.messages_head(topic_name, subscription_name, options))
          end
        end

        # Public: Deletes a message from a Subscription
        class DeleteMessageFromSubscription < Service
          # Public: Invoke the service.
          #
          # topic_name        - A String with the topic name
          # subscription_name - A String with the subscription name
          # seq_number        - A String with the message's sequence_number
          # lock_token        - A String with the message's lock_token
          #
          # Returns a Response.
          def call(topic_name, subscription_name, seq_number, lock_token)
            super(:delete, URI.message(topic_name, subscription_name, seq_number, lock_token))
          end
        end
      end
    end
  end
end
