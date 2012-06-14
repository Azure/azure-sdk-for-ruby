require "cgi"
require "azure/configuration"
require "azure/core/signer"

module Azure
  module Tables
    module Auth
      class SharedKey < Core::Signer
        # The Azure account's name.
        attr :account_name

        # Public: Initialize the Signer.
        #
        # account_name - The Azure account name. Defaults to the one in the
        #                global configuration.
        # access_key   - The Azure access_key encoded in Base64. Defaults to the
        #                one in the global configuration.
        def initialize(account_name=Azure.config.account_name, access_key=Azure.config.access_key)
          @account_name = account_name
          super(access_key)
        end

        # Public: The name of the strategy.
        #
        # Returns a String.
        def name
          "SharedKey"
        end

        # Public: Generate a request signature.
        #
        # verb       - The HTTP request method.
        # uri        - The URI of the request we're signing.
        # headers    - A Hash of HTTP request headers.
        #
        # Returns a Base64 String signed with HMAC.
        def sign(method, uri, headers)
          super(signable_string(method, uri, headers))
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
            headers.fetch("Date") { headers.fetch("x-ms-date") },
            canonicalized_resource(uri)
          ].join("\n")
        end

        # Calculate the Canonicalized Resource string for a request.
        #
        # uri - The request's URI.
        #
        # Returns a String with the canonicalized resource.
        def canonicalized_resource(uri)
          path = "/%s%s" % [account_name, uri.path]
          query = CGI.parse(uri.query.to_s).fetch("comp", nil)
          [path, query].compact.join("?")
        end
      end
    end
  end
end
