require "nokogiri"
require "azure/service_bus/topics/service"
require "azure/service_bus/topics/topic"
require "azure/service_bus/topics/topic_serializer"
require "azure/service_bus/brokered_message"
require "azure/service_bus/brokered_message_serializer"

module Azure
  module ServiceBus
    module Topics
      # Public: Try to create a new topic. If the operation is unsuccessful,
      # the resulting Topic object will have the error accessible through the
      # #error method.
      #
      # name        - The name of the topic.
      # properties  - Properties hash describing this topic (optional, default: {}).
      # service     - The backend service to implement this (optional).
      #
      # Returns a Topic.
      def self.create(name, props={}, service=Services::Create.new)
        serializer = TopicSerializer.new(props)
        xml = serializer.to_xml
        response = service.call(name, xml)

        if response.success?
          node = Nokogiri::XML(response.body)
          Topic.from_node(node)
        else
          Topic.from_error(response.error)
        end
      end

      # Public: Delete a Topic from the server. If the delete operation fails,
      # the topic is invalidated. Otherwise it's frozen.
      #
      # topic   - An Azure::ServiceBus::Topics::Topic.
      # service - The backend service to implement this (optional).
      #
      # Returns true|false to indicate success.
      def self.delete(topic, service=Services::Delete.new)
        response = service.call(topic.name)

        if response.success?
          topic.freeze
        else
          topic.error = response.error
        end

        response.success?
      end

      # Public: Get a topic by name. If the operation fails,
      # the resulting Topic object will have the error accessible through the
      # #error method.
      #
      # service - The backend service to implement this (optional).
      #
      # Returns a Topic
      def self.get(topic_name, service=Services::Get.new)
        response = service.call(topic_name)

        if response.success?
          node = Nokogiri::XML(response.body).remove_namespaces!
          if (node % 'entry')
            Topic.from_node(node)
          else
            #FIXME: If the topic is not found, Azure returns an atom feed containing links to immediate child nodes
            # What to do with this?
          end
        else
          Topic.from_error(response.error)
        end
      end

      # Public: This operation enumerates the topics in the service namespace.
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
          (result / 'entry').map {|node| Topic.from_node(node) }
        else
          []
        end
      end

      # Public: This operation sends a message into the specified topic.
      # If the operation is unsuccessful the resulting BrokeredMessage object will be invalidated
      # and the error will be accessible through the #error method.
      #
      # queue   - The Topic
      # message - The Message
      # service - The backend service to implement this (optional).
      #
      # Returns true|false to indicate success.
      def self.send_message_to_topic(topic, message, service=Services::SendMessageToTopic.new)
        serializer = BrokeredMessageSerializer.new(message)
        broker_properties = serializer.to_json
        message_properties = serializer.get_property_headers

        content_type = message.content_type || 'text/plain'
        response = service.call(topic.name, message.body, content_type, broker_properties, message_properties)

        if !response.success?
          message.error = response.error
        end

        response.success?
      end

    end
  end
end
