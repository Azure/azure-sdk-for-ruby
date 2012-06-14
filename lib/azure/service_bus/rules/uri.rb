require "azure/configuration"
require "uri"

module Azure
  module ServiceBus
    module Rules
      module URI
        # Public: Generate the URI for a given rule.
        #
        # topic_name        - String representing the name of the Topic.
        # subscription_name - String representing the name of the Subscription.
        # rule_name         - String representing the name of the new Rule.
        #
        # Returns a URI.
        def self.rule(topic_name, subscription_name, rule_name, host=Azure.config.service_bus_host)
          path = "#{topic_name}/subscriptions/#{subscription_name}/rules/#{rule_name}"
          generate(host, path)
        end

        # Public: Generate the URI for a collection of rules.
        #
        # topic_name        - String representing the name of the Topic.
        # subscription_name - String representing the name of the Subscription.
        #
        # Returns a URI.
        def self.collection(topic_name, subscription_name, host=Azure.config.service_bus_host)
          path = "#{topic_name}/subscriptions/#{subscription_name}/rules"
          generate(host, path)
        end

        def self.generate(host, path, query={})
          uri = ::URI.parse(File.join(host, path))
          uri.query = ::URI.encode_www_form(query) unless query.empty?
          uri
        end
      end
    end
  end
end
