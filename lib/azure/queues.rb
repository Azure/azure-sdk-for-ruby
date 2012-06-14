require "nokogiri"
require "azure/queues/service"
require "azure/queues/queue"
require "azure/queues/message"
require "azure/queues/service_properties"
require "azure/queues/uri"

module Azure
  module Queues
    # Public: This operation gets the properties of a storage account’s Queue Service.
    # If the operation is unsuccessful the resulting object will have the error
    # accessible through the #error method.
    #
    # options - Options for this query (default: {}):
    #           :timeout  - (optional) timeout for the request in seconds
    # service - The backend service to implement this (optional).
    #
    # Returns an Azure::Queues::ServiceProperties object
    def self.get_service_properties(options = {}, service=Azure::Queues::Services::GetServiceProperties.new)
      response = service.call(options)

      if response.success?
        result = Nokogiri::XML(response.body)
        node = result.xpath('//StorageServiceProperties').first
        ServiceProperties.from_node(node)
      else
        ServiceProperties.from_error(response.error)
      end
    end

    # Public: This operation sets the properties of a storage account’s Queue Service.
    # If the operation is unsuccessful the resulting object will have the error
    # accessible through the #error method.
    #
    # properties  - an Azure::Queues::ServiceProperties object
    # options     - Options for this query (default: {}):
    #               :timeout  - (optional) timeout for the request in seconds
    # service     - The backend service to implement this (optional).
    #
    # Returns an Azure::Queues::ServiceProperties object
    def self.set_service_properties(properties, options = {}, service=Azure::Queues::Services::SetServiceProperties.new)
      response = service.call(properties, options)
      properties.error = response.error unless response.success?
      response.success?
    end

    # Public: This operation lists all of the queues in a given storage account.
    # GET http://myaccount.queue.core.windows.net?comp=list
    #
    # options - Options for this query (default: {}):
    #           :prefix           - Filters the results to return only queues with names that begin with the specified prefix.
    #           :marker           - A string value that identifies the portion of the list to be returned with the next list operation.
    #           :maxresults       - Specifies the maximum number of queues to return
    #           :include_metadata - Include this parameter to specify that the container's metadata be returned as part of the response body.
    # service - The backend service to implement this (optional).
    #
    # Returns an Array of Query elements.
    def self.all(options = {}, service=Azure::Queues::Services::ListQueues.new)
      response = service.call(options)

      if response.success?
        result = Nokogiri::XML(response.body)
        result.xpath('//Queues/Queue').map {|node| Queue.from_node(node) }
      else
        []
      end
    end

    # Public: Try to create a new queue. If the operation is unsuccessful,
    # the resulting Queue object will have the error accessible through the
    # #error method.
    #
    # name     - The name of the container.
    # metadata - User defined metadata for this container (optional).
    # service  - The backend service to implement this (optional).
    #
    # Returns a Queue.
    def self.create(name, metadata={}, service=Azure::Queues::Services::CreateQueue.new)
      response = service.call(name, metadata)

      if response.success?
        Queue.new(name)
      else
        Queue.from_error(response.error)
      end
    end

    # Public: Delete a Queue from the server. If the delete operation fails,
    # the queue is invalidated. Otherwise it's frozen.
    #
    # queue   - An Azure::Queues::Queue.
    # service - The backend service to implement this (optional).
    #
    # Returns true|false to indicate success.
    def self.delete(queue, service=Azure::Queues::Services::DeleteQueue.new)
      response = service.call(queue.name)

      if response.success?
        queue.freeze
      else
        queue.error = response.error
      end

      response.success?
    end

    # Public: Obtain the queue metadata. This updates the queue and
    # changes the metadata internally if successful. If the operation fails, the
    # queue's metadata does not change, and the queue is invalidated.
    #
    # queue   - An Azure::Queues::Queue.
    # service - The backend service to implement this (optional).
    #
    # Returns a Hash.
    def self.load_metadata(queue, service=Azure::Queues::Services::GetMetadata.new)
      response = service.call(queue.name)

      if response.success?
        queue.extract_metadata(response.headers)
      else
        queue.error = response.error
        {}
      end
    end

    # Public: Save the current metadata of a queue in the storage service.
    # If the operation fails, the queue is invalidated.
    #
    # queue   - An Azure::Queues::Queue.
    # service - The backend service to implement this (optional).
    #
    # Returns true|false to indicate success.
    def self.save_metadata(queue, service=Azure::Queues::Services::SetMetadata.new)
      response = service.call(queue.name, queue.metadata)
      queue.error = response.error unless response.success?
      response.success?
    end

    ## MESSAGES

    # Public: Try to add a new message to the back of the message queue. If the
    # operation is unsuccessful, the message is invalidated.
    #
    # queue   - An Azure::Queues::Queue.
    # message - An Azure::Queues::Message.
    # options - A Hash of options for this operation.
    #           :visibilitytimeout - Time in seconds until the message becomes
    #                                visible in the queue (default: 0).
    #           :messagettl        - Time-to-live interval for the message in
    #                                seconds. Can go up to 7 days (the
    #                                default).
    # service - The backend service to implement this (optional).
    #
    # Returns the message.
    def self.put_message(queue, message, options = {}, service=Azure::Queues::Services::PutMessage.new)
      response = service.call(queue.name, message.text, options)

      if response.success?
        message.queue = queue
      else
        message.error = response.error
      end

      message
    end

    # Public: Get one or more messages from the front of the queue.
    #
    # FIXME: Handle errors.
    #
    # queue   - An Azure::Queues::Queue.
    # options - A Hash of options for this operation (optional):
    #           :visibilitytimeout - Update the returned messages'
    #                                visibilitytimeout to this number (at least
    #                                1, the default).
    #           :numofmessages     - A number between 1 and 32 of messages to
    #                                return (default: 1).
    # service - The backend service to implement this (optional).
    #
    # Returns an Array of Messages.
    def self.get_messages(queue, options = {}, service = Azure::Queues::Services::GetMessages.new)
      response = service.call(queue.name, options)

      # FIXME: need error handling
      document = Nokogiri::XML(response.body)
      (document / "//QueueMessagesList/QueueMessage").map do |node|
        Message.from_node(node) { |m| m.queue = queue }
      end
    end

    # Public: Peek at one or more messages from the front of the queue.
    #
    # queue   - The message queue
    # options - A Hash of options for this operation (optional):
    #           :numofmessages - A number between 1 and 32 of messages to return
    #                            (default: 1).
    # service - The backend service to implement this (optional).
    #
    # Returns an Array of Messages.
    def self.peek_messages(queue, options = {}, service = Azure::Queues::Services::PeekMessages.new)
      response = service.call(queue.name, options)

      # FIXME: need error handling
      document = Nokogiri::XML(response.body)
      (document / "//QueueMessagesList/QueueMessage").map do |node|
        Message.from_node(node) { |m| m.queue = queue }
      end
    end

    # Public: Delete the specified message from the queue. If the operation
    # fails, the message is invalidated.
    #
    # message - An Azure::Queues::Message.
    # service - The backend service to implement this (optional).
    #
    # Returns true|false to indicate success.
    def self.delete_message(message, service = Azure::Queues::Services::DeleteMessage.new)
      response = service.call(
        message.queue.name,
        message.id,
        message.pop_receipt
      )

      if response.success?
        message.freeze
      else
        message.error = response.error
      end

      response.success?
    end

    # Public: Delete all messages from the queue. If the operation fails, the
    # queue is invalidated.
    #
    # queue   - The message queue.
    # service - The backend service to implement this (optional).
    #
    # Returns true|false to indicate success.
    def self.clear_messages(queue, service = Azure::Queues::Services::ClearMessages.new)
      response = service.call(queue.name)
      queue.error = response.error unless response.success?
      response.success?
    end

    # Public: Update the specified message. If the operation fails, the message
    # is invalidated.
    #
    # message - An Azure::Queues::Message.
    # service - The backend service to implement this (optional).
    #
    # Returns true|false to indicate success.
    def self.update_message(message, service=Azure::Queues::Services::UpdateMessage.new)
      response = service.call(
        message.queue.name,
        message.id,
        message.text,
        message.visibility_timeout,
        message.pop_receipt
      )

      if response.success?
        message.time_next_visible = response.headers['x-ms-time-next-visible']
        message.pop_receipt       = response.headers['x-ms-popreceipt']
      else
        message.error = response.error
      end

      response.success?
    end
  end
end
