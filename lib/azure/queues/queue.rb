require "azure/queues"
require "azure/queues/uri"
require "azure/error"
require "uri"

module Azure
  module Queues
    # Public: Representation of a Queue in the storage system.
    class Queue
      include Azure::ErrorHandler

      # Get the Queue's URI.
      #
      # Returns a URI.
      attr :url

      # Get the Queue's name.
      #
      # Returns a String.
      attr :name

      # Get the Queue's metadata.
      #
      # Returns a Hash.
      attr_accessor :metadata

      # Public: Instantiate a queue from an XML entry.
      #
      # entry - An XML::Node element.
      #
      # Returns a Queue.
      def self.from_node(node)
        name = (node % "Name").text
        url  = URI((node % "Url").text)

        metadata = (node / "Metadata *").each_with_object({}) do |n, metadata|
          metadata[n.name] = n.text
        end

        new(name, url, metadata)
      end

      # Public: Instantiate a queue from an error object.
      #
      # error - An Azure::Error.
      #
      # Returns a Queue.
      def self.from_error(error)
        queue = new(nil)
        queue.error = error
        queue
      end

      # Public: Initialize the queue.
      #
      # name      - A String with the name of the queue.
      # url       - The URI of the queue in the service.
      # metadata  - A Hash with metadata key-value pairs.
      # service   - The Queue service to perform external calls.
      def initialize(name, url=Azure::Queues::URI.queue(name), metadata = {}, service=Azure::Queues)
        @name = name
        @url = url
        @metadata = metadata
        @service = service
      end

      # Public: Add a message into the queue.
      #
      # message - An Azure::Queues::Message.
      #
      # Returns self.
      def push(message)
        message = Message(message)

        @service.put_message(self, message, {
          visibilitytimeout: message.visibility_timeout,
          messagettl:        message.ttl
        })

        self
      end
      alias_method :<<,  :push
      alias_method :enq, :push

      # Public: Get the latest message from the queue.
      #
      # options - A Hash of options (optional):
      #           :visibilitytimeout - Update the message returned to be
      #                                invisible for this many seconds
      #                                (default: 0).
      #
      # Returns the message, or nil if the queue is empty.
      def pop(options={})
        get(1, options).first
      end
      alias_method :deq, :pop
      alias_method :shift, :pop

      # Public: Get a list of messages from the queue.
      #
      # num     - The amount of messages to peek (must be 1 <= num <= 32).
      # options - A Hash of options (optional):
      #           :visibilitytimeout - Update the messages returned to be
      #                                invisible for this many seconds (must be
      #                                1 second <= timeout <= 7 days).
      #                                (default: 1 second).
      #
      # Returns an Array of Messages.
      def get(num, options={})
        options[:numofmessages] = num
        @service.get_messages(self, options)
      end

      # Public: Peek the latest message from the queue (without changing its
      # visibility).
      #
      # Returns the message, or nil if the queue is empty.
      def peek
        look_at(1).first
      end

      # Public: Peek a list of messages from the queue (without changing their
      # visibility).
      #
      # num - The amount of messages to peek (must be 1 <= num <= 32).
      #
      # Returns an Array of Messages.
      def look_at(num)
        @service.peek_messages(self, numofmessages: num)
      end

      # Public: Remove all messages from the queue.
      #
      # Returns true|false to indicate success.
      def clear
        @service.clear_messages(self)
      end

      # Public: Compare two queues to see if they are the same.
      #
      # other - A queue.
      #
      # Returns true|false.
      def ==(other)
        name == other.name
      end

      # Public: Force a reload of this queue metadata from the server.
      #
      # Returns the Hash of metadata.
      def load_metadata!
        @service.load_metadata(self)
      end

      # Public: Put the current queue's metadata into the storage service.
      #
      # Returns true|false to indicate success.
      def save_metadata!
        @service.save_metadata(self)
      end

      # Public: Extracts metadata from a hash containing HTTP headers (so
      # "x-ms-meta-Name" => "Foo" is extracted as "Name" => "Foo"). This
      # replaces the metadata of this container.
      #
      # hash - A hash of String => String with HTTP header values.
      #
      # Returns a Hash with the extracted metadata.
      def extract_metadata(hash)
        new_metadata = hash.each_with_object({}) do |(k,v), hash|
          if key = k[/^x-ms-meta-(?<key>.*)?/, :key]
            hash[key] = v
          end
        end

        metadata.replace(new_metadata)
      end

      # Public: Deletes this queue from the storage service.
      #
      # Returns true|false to indicate whether the delete was successful or not.
      def delete
        @service.delete(self)
      end
    end
  end
end
