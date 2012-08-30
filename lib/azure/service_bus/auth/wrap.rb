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
require "azure/core/configuration"
require "azure/service_bus/auth/wrap_token_manager"

module Azure
  module ServiceBus
    module Auth
      # Signing strategy for WRAP
      #
      class Wrap
        # Public: Initialize the Signer.
        #
        # issuer        - The issuer (optional)
        # access_key    - The ServiceBus access_key encoded in Base64. (optional)
        # token_manager - A token manager (optional)
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
