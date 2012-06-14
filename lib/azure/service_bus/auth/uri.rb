require "azure/configuration"
require "uri"

module Azure
  module ServiceBus
    module Auth
      module URI
        # Public: generate the URI for the ACS Wrap service
        #
        # options - see Azure::ServiceBus::Auth::WrapService.get_access_token documentation.
        # host    - The host of the API.
        #
        # Returns a URI.
        def self.wrap(options={}, host=Azure.config.acs_host)
          generate(host, "WRAPv0.9", options)
        end

        # Utility method to generate the URI.
        #
        # host    - A String with the URI's host.
        # path    - A String with the URI's path.
        # params  - A simple Hash with query parameters (default: {}).
        #
        # Returns a URI.
        def self.generate(host, path, params = {})
          uri = join(host, path)
          uri.query = to_query(params) unless params.empty?
          uri
        end

        # Utility method to URL encode form data from a given hash
        #
        # hash - A Hash with params
        #
        # Returns a String (application/x-www-form-urlencoded data)
        def self.to_query(hash)
          ::URI.encode_www_form(hash)
        end

        # Utility method to generate the URI.
        #
        # host - A String with the URI's host.
        # path - A String with the URI's path.
        #
        # Returns a URI.
        def self.join(host, path)
          ::URI.parse(File.join(host, path))
        end
      end
    end
  end
end
