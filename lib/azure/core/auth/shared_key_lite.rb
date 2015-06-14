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
require "azure/core/auth/shared_key"

module Azure
  module Core
    module Auth
      class SharedKeyLite < SharedKey
        # The name of the strategy.
        #
        # @return [String]
        def name
          'SharedKeyLite'
        end

        # Generate the string to sign.
        #
        # @param method     [Symbol] The HTTP request method.
        # @param uri        [URI] The URI of the request we're signing.
        # @param headers    [Hash] A Hash of HTTP request headers.
        #
        # Returns a plain text string.
        def signable_string(method, uri, headers)
          [
            method.to_s.upcase,
            headers.fetch('Content-MD5', ''),
            headers.fetch('Content-Type', ''),
            headers.fetch('Date') { raise IndexError, 'Headers must include Date' },
            canonicalized_headers(headers),
            canonicalized_resource(uri)
          ].join("\n")
        end
      end
    end
  end
end
