#-------------------------------------------------------------------------
# Copyright 2012 Microsoft Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#--------------------------------------------------------------------------
require "azure/core/http_request"
require "azure/core/auth/authorizer"

module Azure
  module Core
    class Service
      # Initialize the service.
      #
      # signer - The strategy to use to sign requests.
      # auth   - Authorizer object. Defaults to Azure::Core::Auth::Authorizer.new
      def initialize(signer, auth=Azure::Core::Auth::Authorizer.new)
        @signer = signer
        @auth = auth
      end

      # Sign a request to include the necessary authorization header.
      #
      # request - An Azure::HttpRequest.
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
      # Returns the Azure::Core::HttpResponse object.
      def call(method, uri, body=nil, request_factory=HttpRequest)
        request = request_factory.new(method, uri, body)
        yield request if block_given?
        sign_request(request)
        request.call
      end
    end
  end
end
