require "azure/configuration"

module Azure
  module ServiceBus
    module Auth
      class Authorizer
        # Public: Signs an HTTP request before it's made, by adding the
        # Authorization header.
        #
        # request - An Azure::Request that hasn't been signed.
        # signer  - A signing strategy, such as Azure::ServiceBus::Auth::Wrap.
        #
        # Returns the modified request.
        def sign(request, signer)
          signature = signer.sign(request)
          request.headers["Authorization"] = "#{signature}"
          request
        end
      end
    end
  end
end
