require "azure/configuration"
require "uri"

module Azure
  module ServiceBus
    module Topics
      module URI
        # Public: Generate the URI for a given topic.
        #
        # topic_name - The name of the topic.
        # host       - The host of the API.
        #
        # Returns a URI.
        def self.topic(name, host=Azure.config.service_bus_host)
          generate(host, name)
        end

        # Public: generate the URI for the topics collection.
        #
        # options - Options for this query (default: {}):
        #           :skip - Integer: number of entries to skip
        #           :top  - Integer: number of entries to retrieve
        # host    - The host of the API.
        #
        # Returns a URI.
        def self.collection(options={}, host=Azure.config.service_bus_host)
          generate(host, "$Resources/Topics", options)
        end

        # Public: generate the URI for the given topic's messages
        #
        # topic_name  - The topic name
        # host        - The host of the API.
        #
        # Returns a URI.
        def self.messages(topic_name, host=Azure.config.service_bus_host)
          generate(host, "#{topic_name}/messages")
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
      end
    end
  end
end
