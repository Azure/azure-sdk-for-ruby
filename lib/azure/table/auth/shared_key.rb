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
require "cgi"

require "azure/core/configuration"
require "azure/core/auth/signer"

module Azure
  module Table
    module Auth
      class SharedKey < Azure::Core::Auth::Signer
        # The account name
        attr :account_name

        # Public: Initialize the Signer.
        #
        # account_name - The account name. Defaults to the one in the
        #                global configuration.
        # access_key   - The access_key encoded in Base64. Defaults to the
        #                one in the global configuration.
        def initialize(account_name=Azure.config.storage_account_name, access_key=Azure.config.storage_access_key)
          @account_name = account_name
          super(access_key)
        end

        # Public: The name of the strategy.
        #
        # Returns a String.
        def name
          "SharedKey"
        end

        # Public: Generate a request signature.
        #
        # verb       - The HTTP request method.
        # uri        - The URI of the request we're signing.
        # headers    - A Hash of HTTP request headers.
        #
        # Returns a Base64 String signed with HMAC.
        def sign(method, uri, headers)
          signature = super(signable_string(method, uri, headers))
          return "#{account_name}:#{signature}"
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
            method.to_s.upcase,
            headers.fetch("Content-MD5", ""),
            headers.fetch("Content-Type", ""),
            headers.fetch("Date") { headers.fetch("x-ms-date") },
            canonicalized_resource(uri)
          ].join("\n")
        end

        # Calculate the Canonicalized Resource string for a request.
        #
        # uri - The request's URI.
        #
        # Returns a String with the canonicalized resource.
        def canonicalized_resource(uri)
          resource = "/%s%s" % [account_name, uri.path]

          comp = CGI.parse(uri.query.to_s).fetch("comp", nil)
          if (comp)
            resource = [resource, "comp=" + comp[0]].join("?")
          end

          resource
        end
      end
    end
  end
end
