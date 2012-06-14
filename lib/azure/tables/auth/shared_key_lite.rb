require "azure/tables/auth/shared_key"

module Azure
  module Tables
    module Auth
      class SharedKeyLite < SharedKey
        # Public: The name of the strategy.
        #
        # Returns a String.
        def name
          "SharedKeyLite"
        end

        # Generate the string to sign.
        #
        # verb       - The HTTP request method.
        # uri        - The URI of the request we're signing.
        # headers    - A Hash of HTTP request headers.
        #
        # Returns a plain text string.
        def signable_string(method, uri, headers)
          [
            headers.fetch("Date") { headers.fetch("x-ms-date") },
            canonicalized_resource(uri)
          ].join("\n")
        end
      end
    end
  end
end
