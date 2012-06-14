require "azure/request"
require "azure/auth"

module Azure
  module Core
    class Service
      # Initialize the service.
      #
      # signer - The strategy to use to sign requests.
      # auth   - Authorizer object. Defaults to Azure::Auth.new
      def initialize(signer, auth=Azure::Auth.new)
        @signer = signer
        @auth = auth
      end

      # Sign a request to include the necessary authorization header.
      #
      # request - An Azure::Request.
      # signer  - A signer strategy (defaults to Azure::Tables::Auth::SharedKey)
      #
      # Returns the signed request.
      def sign_request(request)
        @auth.sign(request, @signer)
      end

      # Invoke the service.
      #
      # method - The HTTP method.
      # uri    - The URI path for this service call.
      # body   - The request body, if any (defaults to nil).
      #
      # Yields the request before signing it.
      #
      # Returns the Response object.
      def call(method, uri, body=nil, request_factory=Request)
        request = request_factory.new(method, uri, body)
        yield request if block_given?
        sign_request(request)
        request.request!
      end
    end
  end
end
