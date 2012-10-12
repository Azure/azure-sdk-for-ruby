#-------------------------------------------------------------------------
# Copyright (c) Microsoft. All rights reserved.
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
require "azure/core/auth/signer"
require "azure/service_bus/auth/wrap_service"

module Azure
  module ServiceBus
    module Auth
      class WrapSigner < Azure::Core::Auth::Signer

      	def initialize
      		@tokens = {}
      		@wrap_service = Azure::Servicebus::Auth::WrapService.new
      	end

      	attr_accessor :tokens

        def name
          "WRAP"
        end

        def sign(method, uri, headers)
          access_token = get_access_token(request.uri.to_s)
          'WRAP access_token="%s"' % access_token
        end

        def get_access_token(uri)
        	token = tokens[uri]
      		token = tokens[uri] = @wrap_service.get_access_token(uri) unless valid_token?(token)
        	token[:token]
        end

        def valid_token?(token)
        	token and token[:expiration] > Time.now.utc
        end
    	end
    end
  end
end