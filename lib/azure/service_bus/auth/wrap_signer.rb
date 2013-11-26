#-------------------------------------------------------------------------
# # Copyright (c) Microsoft and contributors. All rights reserved.
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
require "uri"

require "azure/core/auth/signer"
require "azure/service_bus/auth/wrap_service"

module Azure
  module ServiceBus
    module Auth
      class WrapSigner < Azure::Core::Auth::Signer

        def initialize
          @tokens = {}
          @wrap_service = Azure::ServiceBus::Auth::WrapService.new
        end

        attr_accessor :tokens

        def name
          "WRAP"
        end

        public
        def sign(method, uri, headers)
          access_token = get_access_token(create_scope_uri(uri))
          'access_token="%s"' % access_token
        end

        private
        def get_access_token(uri)
          token = tokens[uri.to_s]
          token = tokens[uri.to_s] = @wrap_service.get_access_token(uri) unless valid_token?(token)
          token[:token]
        end

        private
        def create_scope_uri(target_uri)
          targetUriComponents = URI.parse(target_uri.to_s)

          # ACS body and caching should be HTTP
          targetUriComponents.scheme = 'http'

          # ACS body and caching should not include query
          targetUriComponents.query = nil

          targetUriComponents
        end

        private
        def valid_token?(token)
          token and token[:expiration] > Time.now.to_i
        end
      end
    end
  end
end