require "delegate"

module Azure
  module Core
    # A collection serves two functions: it is an array of models, and at the
    # same time serves as a proxy to certain services for the models in the
    # array.
    #
    # A Collection belongs to a "parent" object; for example, a collection
    # of mesages belongs to a queue.
    #
    # Examples
    #
    #   # Get the collection
    #   queue.messages
    #
    #   # Create a new message
    #   queue.messages.create("message text")
    #
    #   # Fetch a single message
    #   message = queue.messages["some-message-id"]
    #
    #   # Work with the messages
    #   queue.messages.each { |msg| ... }
    class Collection < DelegateClass(Array)
      include Azure::ErrorHandler

      # Public: Initialize the collection.
      #
      # parent      - The object that owns this collection.
      # as          - The name of the relationship between the collection's
      #               items and the parent.
      # model_class - The class of the model this collection represents.
      # service     - The service that implements remote calls.
      def initialize(parent, as, model_class, service)
        @parent = parent
        @as = as
        @model_class = model_class
        @service = service
      end

      # Public: Load the underlying collection from the server.
      #
      # Returns self.
      def load!
        collection = @service.all(@parent)
        collection.each { |el| set_parent(el) }
        __setobj__(collection)
        self
      end

      # Public: Create a new model in this collection.
      #
      # *args - Any arguments that the model's constructor takes.
      #
      # Yields the model before being created for modification.
      #
      # Returns an instance of the model.
      def create(*args, &block)
        model = @model_class.new(*args, &block)
        set_parent(model)
        @service.create(model)
      end

      # Public: Fetch a model by its identifier(s).
      #
      # *ids - The identifier(s) of the model.
      #
      # Returns an instance of the model when it's a valid identifier.
      # Returns nil when no model matches the identifier.
      def [](*ids)
        fetch(*ids) { nil }
      end

      # Public: Find a model by its identifier(s). If no model matches the
      # provided identifier(s), execute the given block, or raise ArgumentError.
      #
      # *ids - The identifier(s) of the model.
      #
      # Yields the error returned by the server in case the model wasn't found.
      #
      # Returns an instance of the model.
      # Raises ArgumentError if the model isn't found and no block is given.
      def fetch(*ids, &block)
        block ||= -> { raise ArgumentError, "can't find #{@model_class} identified by #{id.inspect}" }
        model = @service.fetch(@parent, *ids)
        model.valid? ? model : block.call(model.error)
      end

      # Internal: Get the underlying collection to which we delegate. If the
      # collection wasn't already loaded, it loads it from the server.
      #
      # Returns an Array.
      def __getobj__
        load! unless defined?(@__delegated_list)
        @__delegated_list
      end

      # Internal: Change the underlying collection to which we delegate.
      #
      # collection - An Array.
      #
      # Returns the collection.
      def __setobj__(collection)
        @__delegated_list = collection
      end

      # Internal: Change the parent object of the given model.
      #
      # object - A model in this collection.
      #
      # Returns the parent.
      def set_parent(object)
        object.send("#{@as}=", @parent)
      end
    end
  end
end
