require "nokogiri"
require "azure/service_bus/queues/queue"
require "azure/service_bus/queues/queue_serializer"
require "azure/service_bus/brokered_message"
require "azure/service_bus/brokered_message_serializer"
require "azure/service_bus/queues/service"

module Azure
  module ServiceBus
    module Queues
      # Public: Try to create a new queue. If the operation is unsuccessful,
      # the resulting Queue object will have the error accessible through the
      # #error method.
      #
      # name        - The name of the queue.
      # properties  - Properties hash describing this queue (optional, default: {}).
      # service     - The backend service to implement this (optional).
      #
      # Returns a Queue.
      def self.create(name, props={}, service=Services::Create.new)
        serializer = QueueSerializer.new(props)
        xml = serializer.to_xml
        response = service.call(name, xml)

        if response.success?
          node = Nokogiri::XML(response.body)
          Queue.from_node(node)
        else
          Queue.from_error(response.error)
        end
      end

      # Public: Delete a Queue from the server. If the delete operation fails,
      # the queue is invalidated. Otherwise it's frozen.
      #
      # queue   - An Azure::ServiceBus::Queue.
      # service - The backend service to implement this (optional).
      #
      # Returns true|false to indicate success.
      def self.delete(queue, service=Services::Delete.new)
        response = service.call(queue.name)

        if response.success?
          queue.freeze
        else
          queue.error = response.error
        end

        response.success?
      end

      # Public: Get a queue by name. If the operation fails,
      # the resulting Queue object will have the error accessible through the
      # #error method.
      #
      # service - The backend service to implement this (optional).
      #
      # Returns a Queue
      def self.get(queue_name, service=Services::Get.new)
        response = service.call(queue_name)

        if response.success?
          node = Nokogiri::XML(response.body).remove_namespaces!
          if (node % 'entry')
            Queue.from_node(node)
          else
            #FIXME: If the queue is not found, Azure returns an atom feed containing links to immediate child nodes
            # What to do with this?
          end
        else
          Queue.from_error(response.error)
        end
      end

      # Public: This operation enumerates the queues in the service namespace.
      #
      # options - Options for this query (default: {}):
      #           :skip - Integer: number of entries to skip
      #           :top  - Integer: number of entries to retrieve
      # service - The backend service to implement this (optional).
      #
      # Returns an Array of Query elements.
      def self.list(options={}, service=Services::List.new)
        response = service.call(options)

        if response.success?
          result = Nokogiri::XML(response.body).remove_namespaces!
          (result / 'entry').map {|node| Queue.from_node(node) }
        else
          []
        end
      end

      # Public: This operation sends a message into the specified queue.
      #
      # queue   - The Queue
      # message - The Message
      # service - The backend service to implement this (optional).
      #
      # Returns true|false to indicate success.
      def self.send_message_to_queue(queue, message, service=Services::SendMessageToQueue.new)
        serializer = BrokeredMessageSerializer.new(message)
        broker_properties = serializer.to_json
        message_properties = serializer.get_property_headers

        content_type = message.content_type || 'text/plain'
        response = service.call(queue.name, message.body, content_type, broker_properties, message_properties)

        response.success?
      end

      # Public: Atomically retrieves and locks a message from a queue for processing.
      # The message is guaranteed not to be delivered to other receivers during the lock duration 
      # period specified in the queue description.
      #
      # See: http://msdn.microsoft.com/en-us/library/windowsazure/hh780735
      #
      # queue   - The message queue
      # options - A Hash of options for this operation (optional):
      #           :timeout - An integer representing the request's timeout in seconds
      # service - The backend service to implement this (optional).
      #
      # Returns a BrokeredMeassege.
      def self.peek_lock_message_from_queue(queue, options={}, service=Azure::ServiceBus::Queues::Services::PeekLockMessageFromQueue.new)
        response = service.call(queue.name, options)

        if response.code == 201
          BrokeredMessageSerializer.get_from_http_response(response)
        elsif response.code == 204
          msg = "No messages available within the specified timeout period."
          BrokeredMessage.from_error(Azure::Error.new(msg))
        else
          BrokeredMessage.from_error(response.error)
        end
      end

      # Public: Unlocks a message for processing by other receivers on a given subscription. 
      # This operation deletes the lock object, causing the message to be unlocked. 
      # A message must have first been locked by a receiver before this operation is called.
      #
      # See: http://msdn.microsoft.com/en-us/library/windowsazure/hh780723
      #
      # queue   - The message queue
      # message - The message to be unlocked
      # service - The backend service to implement this (optional).
      #
      # Returns true|false to indicate success.
      def self.unlock_message_from_queue(queue, message, service=Azure::ServiceBus::Queues::Services::UnlockMessageFromQueue.new)
        response = service.call(queue.name, message.sequence_number, message.lock_token)

        response.success?
      end

      # Public: Reads and deletes a message from a queue as an atomic operation.
      #
      # See: http://msdn.microsoft.com/en-us/library/windowsazure/hh780756
      #
      # queue   - The message queue
      # options - A Hash of options for this operation (optional):
      #           :timeout - An integer representing the request's timeout in seconds
      # service - The backend service to implement this (optional).
      #
      # Returns a BrokeredMeassege.
      def self.read_delete_message_from_queue(queue, options={}, service=Azure::ServiceBus::Queues::Services::ReadDeleteMessageFromQueue.new)
        response = service.call(queue.name, options)

        # Azure documentation says this should be 201
        if response.code == 200
          BrokeredMessageSerializer.get_from_http_response(response)
        elsif response.code == 204
          msg = "No messages available within the specified timeout period."
          BrokeredMessage.from_error(Azure::Error.new(msg))
        else
          BrokeredMessage.from_error(response.error)
        end
      end

      # Public: Deletes a message from a queue.
      #
      # See: http://msdn.microsoft.com/en-us/library/windowsazure/hh780767
      #
      # queue   - The message queue
      # message - The message to be deleted
      # service - The backend service to implement this (optional).
      #
      # Returns true|false to indicate success.
      def self.delete_message_from_queue(queue, message, service=Azure::ServiceBus::Queues::Services::DeleteMessageFromQueue.new)
        response = service.call(queue.name, message.sequence_number, message.lock_token)

        response.success?
      end
    end
  end
end
