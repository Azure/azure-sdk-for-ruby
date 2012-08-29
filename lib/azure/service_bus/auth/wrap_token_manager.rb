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
require "azure/service_bus/auth/wrap_service"
require "azure/service_bus/auth/wrap_token"

module Azure
  module ServiceBus
    module Auth
      class WrapTokenManager

        # The service used to get new tokens from the ACS
        #
        # Returns an Azure::ServiceBus::Auth::WrapService
        attr :wrap_service

        # A list of active WrapTokens
        #
        # Returns an Array of Azure::ServiceBus::Auth::WrapToken
        attr :active_tokens

        # Constructor
        #
        # issuer        -
        # access_key    -
        # host          -
        def initialize(issuer, access_key)
          @active_tokens = {}
          @wrap_service = WrapService.new(issuer, access_key)
        end

        # Gets a valid (not expired) access token for the given uri
        #
        # uri - URI for the resource target
        #
        # Returns a String
        def get_access_token(uri)
          token = @active_tokens[uri.path]
          now = Time.now.utc
          unless token && token.expire_time > now
            @active_tokens[uri.path] = @wrap_service.get_access_token(uri)
            token = @active_tokens[uri.path]
          end
          token.access_token
        end
      end
    end
  end
end
