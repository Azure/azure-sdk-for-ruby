require "azure/error"

module Azure
  module ServiceBus
    module Queues
      class Queue
        include Azure::ErrorHandler
        # Get the Queue's ID.
        #
        # Returns a URI.
        attr_accessor :id
        alias_method :url, :id

        # Get the Queue's name.
        #
        # Returns a String.
        attr_accessor :name
        alias_method :title, :name

        # Public: Get the published time
        #
        # Returns a Time
        attr_accessor :published

        # Public: Get the updated time
        #
        # Returns a Time
        attr_accessor :updated

        # Public: Get the author name
        #
        # Returns a String
        attr_accessor :author_name

        # Public: Queue description
        #
        # Returns a Hash
        attr_accessor :description

        # Public: Instantiate a queue from an XML entry.
        #
        # entry - An XML::Node element.
        #
        # Returns a Queue.
        def self.from_node(node)
          name = (node % "title").text

          new(name) do |q|
            q.id          = URI((node % "id").text)
            # q.title       = (node % "title").text
            q.published   = Time.parse((node % "published").text)
            q.updated     = Time.parse((node % "updated").text)
            q.author_name = (node % "author/name").text
            # q.description = Description.from_node(node % 'content/QueueDescription')

            q.description = (node / "content/QueueDescription *").each_with_object({}) do |el, desc|
              desc[el.name] = el.text
            end
          end
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
        # name        - A String with the name of the queue.
        # description - The queue description Hash
        # service     - The Queue service to perform external calls.
        def initialize(name, description = {}, service=Azure::ServiceBus::Queues)
          @name = name
          @description = description
          @service = service
          yield self if block_given?
        end

        def delete
          @service.delete(self)
        end

        # Public: Compare two queues to see if they are the same.
        #
        # other - A queue.
        #
        # Returns true|false.
        def ==(other)
          id == other.id
        end
      end
    end
  end
end
