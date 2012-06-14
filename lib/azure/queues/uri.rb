require "azure/configuration"
require "uri"

module Azure
  module Queues
    module URI
      # Public: generate the URI for the service properties
      #
      # query - see Azure::Services::GetServiceProperties#call documentation.
      # host  - The host of the API.
      #
      # Returns a URI.
      def self.service_properties(query={}, host=Azure.config.queue_host)
        query.update(restype: 'service', comp: 'properties')
        generate(host, "", query)
      end

      # Public: generate the URI for the collection of queues.
      #
      # query - see Azure::Services::ListQueues#call documentation.
      # host  - The host of the API.
      #
      # Returns a URI.
      def self.collection(query={}, host=Azure.config.queue_host)
        query.update(comp: 'list', include: 'metadata')
        generate(host, "", query)
      end

      # Public: Generate the URI for a given queue.
      #
      # queue_name - The name of the queue.
      # query      - A Hash of query parameters (default: {}).
      # host       - The host of the API.
      #
      # Returns a URI.
      def self.queue(queue_name, query={}, host=Azure.config.queue_host)
        return queue_name if name.kind_of? ::URI
        generate(host, queue_name, query)
      end

      # Public: Generate the messages URI for the given queue.
      #
      # queue_name - The name of the queue.
      # query      - A Hash of query parameters (default: {}).
      # host       - The host of the API.
      #
      # Returns a URI.
      def self.messages(queue_name, query={}, host=Azure.config.queue_host)
        generate(host, "#{queue_name}/messages", query)
      end

      # Public: generate the URI for a given message
      #
      # queue_name - The name of the queue.
      # message_id - The id of the message.
      # query      - A Hash of query parameters (default: {}).
      # host       - The host of the API.
      #
      # Returns a URI.
      def self.message(queue_name, message_id, query={}, host=Azure.config.queue_host)
        generate(host, "#{queue_name}/messages/#{message_id}", query)
      end

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
