require "azure/error"

module Azure
  module ServiceBus
    class BrokeredMessage
      include Azure::ErrorHandler

      # Please read http://msdn.microsoft.com/en-us/library/windowsazure/hh780742
      # for more information on brokered message properties

      # Public: Get/Set the message's ContentType
      #
      # Returns a String
      attr_accessor :content_type

      # Public: Get/Set the message's CorrelationID
      #
      # Returns a String
      attr_accessor :correlation_id

      # Public: Get/Set the message's SessionID
      #
      # Returns a String
      attr_accessor :session_id

      # Public: Get/Set the message's DeliveryCount
      #
      # Returns an Integer
      attr_accessor :delivery_count

      # Public: Get/Set the message's LockedUntilUtc
      #
      # Returns a DateTime
      attr_accessor :locked_until_utc

      # Public: Get/Set the message's LockToken
      #
      # Returns a String (GUID)
      attr_accessor :lock_token

      # Public: Get/Set the message's MessageID
      #
      # Returns a String
      attr_accessor :message_id
      alias_method :id, :message_id

      # Public: Get/Set the message's Label
      #
      # Returns a String
      attr_accessor :label

      # Public: Get/Set the message's ReplyTo
      #
      # Returns a String
      attr_accessor :reply_to

      # Public: Get/Set the message's EnqueuedTimeUtc
      #
      # Returns a DateTime
      attr_accessor :enqueued_time_utc

      # Public: Get/Set the message's SequenceNumber
      #
      # Returns an Integer
      attr_accessor :sequence_number

      # Public: Get/Set the message's TimeToLive
      #
      # Returns an Integer
      attr_accessor :time_to_live

      # Public: Get/Set the message's To
      #
      # Returns a String
      attr_accessor :to

      # Public: Get/Set the message's ScheduledEnqueueTimeUtc
      #
      # Returns a DateTime
      attr_accessor :scheduled_enqueue_time_utc

      # Public: Get/Set the message's ReplyToSessionId
      #
      # Returns a String
      attr_accessor :reply_to_session_id

      # Public: Get/Set custom key-value properties for the message
      #
      # Returns a Hash
      attr_accessor :properties

      # Public: Get/Set the message's Body
      #
      # Returns a String
      attr_accessor :body

      # Public: Get/Set the URI of the locked message. This URI is needed to unlock or delete the message.
      #
      # Returns an URI
      attr_accessor :location

      # Public: Instantiate a message from an error object.
      #
      # error - An Azure::Error.
      #
      # Returns a BrokeredMessage.
      def self.from_error(error)
        queue = new(nil)
        queue.error = error
        queue
      end

      # Public: Constructor.
      #
      # name        - A String with the name of the queue.
      # description - The queue description Hash
      # service     - The Queue service to perform external calls.
      def initialize(body, properties={}, service=Azure::ServiceBus::Queues)
        @body = body
        @properties = properties
        @service = service
        yield self if block_given?
      end

      def delete
        @service.delete(self)
      end

      # Public: Compare two messages to see if they are the same.
      #
      # other - A BrokeredMessage.
      #
      # Returns true|false.
      def ==(other)
        id == other.id
      end
    end
  end
end
