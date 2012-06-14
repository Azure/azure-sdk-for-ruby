require "azure/error"
require "azure/service_bus/topics"
require "azure/service_bus/subscriptions"
require "azure/service_bus/subscriptions/subscription"
require "azure/core/collection"

module Azure
  module ServiceBus
    module Topics
      class Topic
        include Azure::ErrorHandler
        # Get the Topic's ID.
        #
        # Returns a URI.
        attr_accessor :id
        alias_method :url, :id

        # Get the Topic's name.
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

        # Public: Topic description
        #
        # Returns a Hash
        attr_accessor :description

        # Public: Instantiate a topic from an XML entry.
        #
        # entry - An XML::Node element.
        #
        # Returns a Topic.
        def self.from_node(node)
          name = (node % "title").text

          new(name) do |q|
            q.id          = URI((node % "id").text)
            # q.title       = (node % "title").text
            q.published   = Time.parse((node % "published").text)
            q.updated     = Time.parse((node % "updated").text)
            q.author_name = (node % "author/name").text
            # q.description = Description.from_node(node % 'content/TopicDescription')

            q.description = (node / "content/TopicDescription *").each_with_object({}) do |el, desc|
              desc[el.name] = el.text
            end
          end
        end

        # Public: Instantiate a topic from an error object.
        #
        # error - An Azure::Error.
        #
        # Returns a Topic.
        def self.from_error(error)
          topic = new(nil)
          topic.error = error
          topic
        end

        # Public: Initialize the topic.
        #
        # name                 - A String with the name of the topic.
        # description          - The topic description Hash
        # topic_service        - The Topic service to perform external calls
        #                        (optional).
        # subscription_service - The Subscription service to perform external
        #                        calls (optional).
        def initialize(name, description = {}, topic_service=Azure::ServiceBus::Topics,
                                               subscription_service=Azure::ServiceBus::Subscriptions)
          @name = name
          @description = description
          @topic_service = topic_service
          @subscription_service = subscription_service

          yield self if block_given?
        end

        # Public: List subscriptions in this topic.
        #
        # Returns Azure::Core::Collection.
        def subscriptions
          @subscriptions ||= Core::Collection.new(
            self,
            :topic,
            Subscriptions::Subscription,
            @subscription_service
          )
        end

        def delete
          @topic_service.delete(self)
        end

        # Public: Compare two topics to see if they are the same.
        #
        # other - A topic.
        #
        # Returns true|false.
        def ==(other)
          id == other.id
        end
      end
    end
  end
end
