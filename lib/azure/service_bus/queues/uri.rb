require "azure/configuration"
require "uri"

module Azure
  module ServiceBus
    module Queues
      module URI
        # Public: Generate the URI for a given queue.
        #
        # queue_name - The name of the queue.
        # host       - The host of the API.
        #
        # Returns a URI.
        def self.queue(name, host=Azure.config.service_bus_host)
          generate(host, name)
        end

        # Public: generate the URI for the queues collection.
        #
        # options - Options for this query (default: {}):
        #           :skip - Integer: number of entries to skip
        #           :top  - Integer: number of entries to retrieve
        # host    - The host of the API.
        #
        # Returns a URI.
        def self.collection(options={}, host=Azure.config.service_bus_host)
          generate(host, "$Resources/Queues", options)
        end

        # Public: generate the URI for the given queues's messages
        #
        # queue_name  - The queue name
        # host        - The host of the API.
        #
        # Returns a URI.
        def self.messages(queue_name, host=Azure.config.service_bus_host)
          generate(host, "#{queue_name}/messages")
        end

        # Public: generate the URI for the given queues's head
        #
        # queue_name  - The queue name
        # options     - Options for this query (optional, default: {})
        # host        - The host of the API.
        #
        # Returns a URI.
        def self.messages_head(queue_name, options={}, host=Azure.config.service_bus_host)
          generate(host, "#{queue_name}/messages/head", options)
        end

        # Public: generate the URI to operate on the given message in the given queue
        #
        # queue_name  - The queue name
        # seq_number  - The message's sequence_number
        # lock_token  - The message's lock_token
        # host        - The host of the API (optional).
        #
        # Returns a URI.
        def self.message(queue_name, seq_number, lock_token, host=Azure.config.service_bus_host)
          generate(host, "#{queue_name}/messages/#{seq_number}/#{lock_token}")
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
