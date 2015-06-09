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
  module Core
    module Auth
      class SharedKey < Signer
        # The Azure account's name.
        attr :account_name

        # Initialize the Signer.
        #
        # @param account_name [String] The account name. Defaults to the one in the
        #                global configuration.
        # @param access_key   [String] The access_key encoded in Base64. Defaults to the
        #                one in the global configuration.
        def initialize(account_name=Azure.storage_account_name, access_key=Azure.storage_access_key)
          @account_name = account_name
          super(access_key)
        end

        # The name of the strategy.
        #
        # @return [String]
        def name
          'SharedKey'
        end

        # Create the signature for the request parameters
        #
        # @param method     [Symbol] HTTP request method.
        # @param uri        [URI] URI of the request we're signing.
        # @param headers    [Hash] HTTP request headers.
        #
        # @return           [String] base64 encoded signature
        def sign(method, uri, headers)
          "#{account_name}:#{super(signable_string(method, uri, headers))}"
        end

        # Sign the request
        #
        # @param req    [Azure::Core::Http::HttpRequest] HTTP request to sign
        #
        # @return       [Azure::Core::Http::HttpRequest]
        def sign_request(req)
          req.headers['Authorization'] = "#{name} #{sign(req.method, req.uri, req.headers)}"
          req
        end

        # Generate the string to sign.
        #
        # @param method     [Symbol] HTTP request method.
        # @param uri        [URI] URI of the request we're signing.
        # @param headers    [Hash] HTTP request headers.
        #
        # @return [String]
        def signable_string(method, uri, headers)
          [
            method.to_s.upcase,
            headers.fetch('Content-Encoding', ''),
            headers.fetch('Content-Language', ''),
            headers.fetch('Content-Length', ''),
            headers.fetch('Content-MD5', ''),
            headers.fetch('Content-Type', ''),
            headers.fetch('Date', ''),
            headers.fetch('If-Modified-Since', ''),
            headers.fetch('If-Match', ''),
            headers.fetch('If-None-Match', ''),
            headers.fetch('If-Unmodified-Since', ''),
            headers.fetch('Range', ''),
            canonicalized_headers(headers),
            canonicalized_resource(uri)
          ].join("\n")
        end

        # Calculate the Canonicalized Headers string for a request.
        #
        # @param headers    [Hash] HTTP request headers.
        #
        # @return [String] a string with the canonicalized headers.
        def canonicalized_headers(headers)
          headers = headers.map { |k,v| [k.to_s.downcase, v] }
          headers.select! { |k,v| k =~ /^x-ms-/ }
          headers.sort_by! { |(k,v)| k }
          headers.map! { |k,v| '%s:%s' % [k, v] }
          headers.map! { |h| h.gsub(/\s+/, ' ') }.join("\n")
        end

        # Calculate the Canonicalized Resource string for a request.
        #
        # @param uri        [URI] URI of the request we're signing.
        #
        # @return           [String] a string with the canonicalized resource.
        def canonicalized_resource(uri)
          resource = '/' + account_name + (uri.path.empty? ? '/' : uri.path)
          params = CGI.parse(uri.query.to_s).map { |k,v| [k.downcase, v] }
          params.sort_by! { |k,v| k }
          params.map! { |k,v| '%s:%s' % [k, v.map(&:strip).sort.join(',')] }
          [resource, *params].join("\n")
        end
      end
    end
  end
end
