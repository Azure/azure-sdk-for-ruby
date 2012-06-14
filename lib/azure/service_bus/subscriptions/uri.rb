require "azure/configuration"
require "uri"

module Azure
  module ServiceBus
    module Subscriptions
      module URI
        # Public: Generate the URI for a given subscription.
        #
        # topic_name - The name of the topic.
        # name       - The name of the subscription.
        # host       - The host of the API.
        #
        # Returns a URI.
        def self.subscription(topic_name, name, host=Azure.config.service_bus_host)
          generate(host, File.join(topic_name, "Subscriptions", name))
        end

        # Public: Generate the URI for the list of subscriptions.
        #
        # topic_name - The name of the topic.
        # host       - The host of the API.
        #
        # Returns a URI.
        def self.collection(topic_name, host=Azure.config.service_bus_host)
          generate(host, File.join(topic_name, "Subscriptions"))
        end

        #TODO: we need to move this method to other module to be mixedin here
        #
        # Utility method to generate the URI.
        #
        # host  - A String with the URI's host.
        # path  - A String with the URI's path.
        # query - A simple Hash with query parameters (default: {}).
        #
        # Returns a URI.
        def self.generate(host, path, query={})
          uri = ::URI.parse(File.join(host, path))
          uri.query = ::URI.encode_www_form(query) unless query.empty?
          uri
        end

        # Public: generate the URI for the given subscription's head
        #
        # topic_name        - The topic's name
        # subscription_name - The subscription's name
        # options           - Options for this query (optional, default: {})
        # host              - The host of the API.
        #
        # Returns a URI.
        def self.messages_head(topic_name, subscription_name, options={}, host=Azure.config.service_bus_host)
          generate(host, "#{topic_name}/Subscriptions/#{subscription_name}/messages/head", options)
        end

        # Public: generate the URI to operate on the given message in the given subscription
        #
        # topic_name        - The topic's name
        # subscription_name - The subscription's name
        # seq_number        - The message's sequence_number
        # lock_token        - The message's lock_token
        # host              - The host of the API (optional).
        #
        # Returns a URI.
        def self.message(topic_name, subscription_name, seq_number, lock_token, host=Azure.config.service_bus_host)
          generate(host, "#{topic_name}/Subscriptions/#{subscription_name}/messages/#{seq_number}/#{lock_token}")
        end
      end
    end
  end
end
