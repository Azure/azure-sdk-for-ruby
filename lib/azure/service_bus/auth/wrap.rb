require "azure/configuration"
require "azure/service_bus/auth/wrap_token_manager"

module Azure
  module ServiceBus
    module Auth
      # Signing strategy for WRAP
      #
      class Wrap
        # Public: Initialize the Signer.
        #
        # issuer      -
        # access_key  - The Azure ServiceBus access_key encoded in Base64.
        def initialize(issuer=Azure.config.sb_issuer, access_key=Azure.config.sb_access_key, token_manager=nil)
          @wrap_token_manager = token_manager || WrapTokenManager.new(issuer, access_key)
        end

        # Public: The name of the strategy.
        #
        # Returns a String.
        def name
          "Wrap"
        end

        # Public: Generate a request signature.
        #
        # request - The HTTP request
        #
        # Returns a String
        def sign(request)
          access_token = @wrap_token_manager.get_access_token(request.uri)
          'WRAP access_token="%s"' % access_token
        end
      end
    end
  end
end
