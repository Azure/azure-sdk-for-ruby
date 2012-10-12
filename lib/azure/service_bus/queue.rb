module Azure
  module ServiceBus
      class Queue
        # Public: Initialize the queue.
        #
        # name        - A String with the name of the queue.
        # description - The queue description Hash
        # service     - The Queue service to perform external calls.
        def initialize(name, description = {})
          @name = name
          @description = description
          yield self if block_given?
        end

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
    end
  end
end