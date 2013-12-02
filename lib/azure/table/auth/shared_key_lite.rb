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
require "azure/table/auth/shared_key"

module Azure
  module Table
    module Auth
      class SharedKeyLite < SharedKey
        # Public: The name of the strategy.
        #
        # Returns a String.
        def name
          "SharedKeyLite"
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
            headers.fetch("Date") { headers.fetch("x-ms-date") },
            canonicalized_resource(uri)
          ].join("\n")
        end
      end
    end
  end
end
