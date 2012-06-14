require "azure/queues"
require "azure/queues/uri"
require "azure/error"
require "uri"
require "time"

module Azure
  module Queues
    # Public: Representation of a Message in a message queue.
    class Message
      include Azure::ErrorHandler

      # The message queue for this message
      #
      # Returns a Azure::Queues::Queue object
      attr_accessor :queue

      # MessageId
      # GUID value that identifies the message in the queue
      #
      # returns a String
      attr_accessor :id

      # InsertionTime
      # UTC value formatted as described in RFC 1123
      #
      # Returns a String
      attr_accessor :insertion_time

      # ExpirationTime
      # UTC value formatted as described in RFC 1123
      #
      # Returns a String
      attr_accessor :expiration_time

      # TimeNextVisible
      # UTC value formatted as described in RFC 1123
      #
      # Returns a String
      attr_accessor :time_next_visible

      # PopReceipt
      #
      # Returns a String
      attr_accessor :pop_receipt

      # DequeueCount
      # Has a value of 1 the first time the message is dequeued. This value is incremented each time the message is subsequently dequeued.
      #
      # Returns an Integer
      attr_accessor :dequeue_count

      # MessageText
      #
      # Returns a String
      attr_accessor :text

      # Amount of time in seconds the message remains invisible for GET
      # operations.
      #
      # Returns an Integer.
      attr_accessor :visibility_timeout

      # Amount of seconds until this message expires.
      #
      # Returns an Integer.
      attr_accessor :ttl

      # Public: Instantiate a message from an XML entry.
      #
      # entry - An XML::Node element.
      #
      # Returns a Message.
      def self.from_node(node)
        pop_receipt       = (node % "PopReceipt")
        time_next_visible = (node % "TimeNextVisible")
        text              = (node % "MessageText").text

        new(text) do |m|
          m.id                = (node % "MessageId").text
          m.insertion_time    = Time.parse((node % "InsertionTime").text)
          m.expiration_time   = Time.parse((node % "ExpirationTime").text)
          m.dequeue_count     = (node % "DequeueCount").text.to_i
          m.pop_receipt       = pop_receipt && pop_receipt.text
          m.time_next_visible = time_next_visible && Time.parse(time_next_visible.text)
          yield m if block_given?
        end
      end

      # Public: Instantiate a message from an error object.
      #
      # error - An Azure::Error.
      #
      # Returns a Message.
      def self.from_error(error)
        message = new(nil)
        message.error = error
        message
      end

      # Public: Attempt to convert an object into a Message. If the object can't
      # be converted, we return nil.
      #
      # object - An object that might be converted into a Message.
      #
      # Returns a Message or nil.
      def self.try_convert(object)
        if object.respond_to?(:to_message)
          object.to_message
        elsif object.respond_to?(:to_str)
          new(object.to_str)
        end
      end

      # Public: Initialize the message.
      #
      # text    - The message text
      # service - The Queue service to perform external calls.
      def initialize(text, service=Azure::Queues)
        @text = text
        @visibility_timeout = 0
        @ttl = 7 * 24 * 3600 # one week
        @service = service
        yield self if block_given?
      end

      # Public: Compare two messages to see if they are the same.
      #
      # other - A Message.
      #
      # Returns true|false.
      def ==(other)
        id == other.id
      end

      # Public: Deletes this message from the message queue.
      #
      # Returns true|false to indicate success.
      def delete
        @service.delete_message(self)
      end

      # Public: Updates this message with a new visibility timeout and new text
      # if modified.
      #
      # Returns true|false to indicate success.
      def update!
        @service.update_message(self)
      end

      # Public: Turn this object into an Azure::Queues::Message. This is here
      # just so we can use Message.try_convert and Message().
      #
      # Returns self.
      def to_message
        self
      end
    end

    module ::Kernel
      # Attempt to convert an object into a Message, or fail if the conversion
      # can't be done.
      #
      # object - An object that might be converted into a message.
      #
      # Returns a Message.
      # Raises ArgumentError if the object can't be converted into a Message.
      def Message(object)
        Message.try_convert(object) ||
          raise(ArgumentError, "invalid value for Message(): #{object.inspect}")
      end
    end
  end
end
