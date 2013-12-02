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
  module Core
    module Auth
      class SharedKey < Signer
        # The Azure account's name.
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
            headers.fetch("Content-Encoding", ""),
            headers.fetch("Content-Language", ""),
            headers.fetch("Content-Length", ""),
            headers.fetch("Content-MD5", ""),
            headers.fetch("Content-Type", ""),
            headers.fetch("Date", ""),
            headers.fetch("If-Modified-Since", ""),
            headers.fetch("If-Match", ""),
            headers.fetch("If-None-Match", ""),
            headers.fetch("If-Unmodified-Since", ""),
            headers.fetch("Range", ""),
            canonicalized_headers(headers),
            canonicalized_resource(uri)
          ].join("\n")
        end

        # Calculate the Canonicalized Headers string for a request.
        #
        # headers - A Hash of HTTP request headers.
        #
        # Returns a string with the canonicalized headers.
        def canonicalized_headers(headers)
          headers = headers.map { |k,v| [k.to_s.downcase, v] }
          headers.select! { |k,v| k =~ /^x-ms-/ }
          headers.sort_by! { |(k,v)| k }
          headers.map! { |k,v| "%s:%s" % [k, v] }
          headers.map! { |h| h.gsub(/\s+/, " ") }.join("\n")
        end

        # Calculate the Canonicalized Resource string for a request.
        #
        # uri - The request's URI.
        #
        # Returns a string with the canonicalized resource.
        def canonicalized_resource(uri)
          resource = "/" + account_name + (uri.path.empty? ? "/" : uri.path)
          params = CGI.parse(uri.query.to_s).map { |k,v| [k.downcase, v] }
          params.sort_by! { |k,v| k }
          params.map! { |k,v| "%s:%s" % [k, v.map(&:strip).sort.join(",")] }
          [resource, *params].join("\n")
        end
      end
    end
  end
end
