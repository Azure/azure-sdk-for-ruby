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
