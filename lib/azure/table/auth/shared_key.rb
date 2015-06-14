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
require 'cgi'
require 'azure/core/auth/signer'

module Azure
  module Table
    module Auth
      class SharedKey < Azure::Core::Auth::SharedKey
        # The account name
        attr :account_name

        # Generate the string to sign.
        #
        # @param method   [Symbol]  The HTTP request method.
        # @param uri      [URI]     The URI of the request we're signing.
        # @param headers  [Hash]    The HTTP request headers.
        #
        # Returns a plain text string.
        def signable_string(method, uri, headers)
          [
              method.to_s.upcase,
              headers.fetch('Content-MD5', ''),
              headers.fetch('Content-Type', ''),
              headers.fetch('Date') { headers.fetch('x-ms-date') },
              canonicalized_resource(uri)
          ].join("\n")
        end

        # Calculate the Canonicalized Resource string for a request.
        #
        # @param uri [URI] The request's URI.
        #
        # @return  [String] with the canonicalized resource.
        def canonicalized_resource(uri)
          resource = "/#{account_name}#{uri.path}"

          comp = CGI.parse(uri.query.to_s).fetch('comp', nil)
          resource = [resource, 'comp=' + comp[0]].join('?') if comp

          resource
        end

      end
    end
  end
end
