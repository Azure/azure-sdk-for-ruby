require "azure/core/auth/shared_key"

module Azure
  module Core
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
            method.to_s.upcase,
            headers.fetch("Content-MD5", ""),
            headers.fetch("Content-Type", ""),
            headers.fetch("Date") { raise KeyError, "Headers must include Date" },
            canonicalized_headers(uri).join("\n"),
            canonicalized_resource(uri).join("\n")
          ].join("\n")
        end
      end
    end
  end
end
