require "nokogiri"
require "azure/service_bus/subscriptions/service"
require "azure/service_bus/subscriptions/subscription"
require "azure/service_bus/subscriptions/subscription_serializer"

module Azure
  module ServiceBus
    module Subscriptions
      # Public: Try to create a new subscription. If the operation is
      # unsuccessful the resulting Subscription object will be invalidated and
      # the error will be accessible through the #error method.
      #
      # subscription - A Subscription.
      # service      - The backend service to implement this (optional).
      #
      # Returns a Subscription.
      def self.create(subscription, service=Services::Create.new)
        response = service.call(
          subscription.topic.name,
          subscription.name,
          SubscriptionSerializer.new(subscription).to_xml
        )

        if response.success?
          SubscriptionSerializer.parse(response.body) do |sub|
            sub.topic = subscription.topic
          end
        else
          subscription.error = response.error
        end
      end

      # Public: Get a list of subscriptions from the server.
      #
      # topic   - A Topic.
      # service - The backend service to implement this (optional).
      #
      # Returns an Array of Subscriptions.
      def self.all(topic, service=Services::List.new)
        response = service.call(topic.name)

        # FIXME: handle errors!
        feed = Nokogiri::XML(response.body)
        (feed / "entry").map do |entry|
          SubscriptionSerializer.parse(entry.to_xml)
        end
      end

      # Public: Find a new subscription by name. The resulting subscription will
      # be invalid if no subscription could be found.
      #
      # topic   - A Topic.
      # name    - The name of the subscription.
      # service - The backend service to implement this (optional).
      #
      # Returns a Subscription.
      def self.fetch(topic, name, service=Services::Fetch.new)
        response = service.call(topic.name, name)

        if response.success?
          SubscriptionSerializer.parse(response.body)
        else
          Subscription.from_error(response.error)
        end
      end

      # Public: Delete the subscription from the remote service. If the
      # operation is successful, this subscription is frozen. If not, it's
      # invalidated.
      #
      # subscription - A Subscription.
      # service      - The backend service to implement this (optional).
      #
      # Returns true|false to indicate success.
      def self.delete(subscription, service=Services::Delete.new)
        response = service.call(subscription.topic.name, subscription.name)

        if response.success?
          subscription.freeze
        else
          subscription.error = response.error
        end

        response.success?
      end

      ## Messages

      # Public: Atomically retrieves and locks a message from a subscription for processing.
      #
      # See: http://msdn.microsoft.com/en-us/library/windowsazure/hh780722
      #
      # subscription  - The subscription
      # options       - A Hash of options for this operation (optional):
      #                 :timeout - An integer representing the request's timeout in seconds
      # service - The backend service to implement this (optional).
      #
      # Returns a BrokeredMeassege.
      def self.peek_lock_message_from_subscription(subscription,
                                                   options={},
                                                   service=Azure::ServiceBus::Subscriptions::Services::PeekLockMessageFromSubscription.new)
        response = service.call(subscription.topic.name, subscription.name, options)

        if response.code == 201
          BrokeredMessageSerializer.get_from_http_response(response)
        elsif response.code == 204
          msg = "No messages available within the specified timeout period."
          BrokeredMessage.from_error(Azure::Error.new(msg))
        else
          BrokeredMessage.from_error(response.error)
        end
      end

      # Public: This operation is used to unlock a message for processing by other receivers on a given subscription.
      # This operation deletes the lock object, causing the message to be unlocked.
      # A message must have first been locked by a receiver before this operation is called.
      #
      # See: http://msdn.microsoft.com/en-us/library/windowsazure/hh780737
      #
      # subscription  - The subscription
      # message       - The message to be unlocked
      # service       - The backend service to implement this (optional).
      #
      # Returns true|false to indicate success.
      def self.unlock_message_from_subscription(subscription, message, service=Azure::ServiceBus::Subscriptions::Services::UnlockMessageFromSubscription.new)
        response = service.call(subscription.topic.name, subscription.name, message.sequence_number, message.lock_token)

        response.success?
      end

      # Public: Reads and deletes a message from a subscription as an atomic operation.
      #
      # See: http://msdn.microsoft.com/en-us/library/windowsazure/hh780770
      #
      # subscription  - The subscription
      # options       - A Hash of options for this operation (optional):
      #                 :timeout - An integer representing the request's timeout in seconds
      # service       - The backend service to implement this (optional).
      #
      # Returns a BrokeredMeassege.
      def self.read_delete_message_from_subscription(subscription, options={}, service=Azure::ServiceBus::Subscriptions::Services::ReadDeleteMessageFromSubscription.new)
        response = service.call(subscription.topic.name, subscription.name, options)

        if response.code == 200
          BrokeredMessageSerializer.get_from_http_response(response)
        elsif response.code == 204
          msg = "No messages available within the specified timeout period."
          BrokeredMessage.from_error(Azure::Error.new(msg))
        else
          BrokeredMessage.from_error(response.error)
        end
      end

      # Public: Deletes a message from a subscription.
      #
      # See: http://msdn.microsoft.com/en-us/library/windowsazure/hh780768
      #
      # subscription  - The message subscription
      # message       - The message to be deleted
      # service       - The backend service to implement this (optional).
      #
      # Returns true|false to indicate success.
      def self.delete_message_from_subscription(subscription, message, service=Azure::ServiceBus::Subscriptions::Services::DeleteMessageFromSubscription.new)
        response = service.call(subscription.topic.name, subscription.name, message.sequence_number, message.lock_token)

        response.success?
      end
    end
  end
end
