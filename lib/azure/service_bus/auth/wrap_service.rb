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
require "azure/service_bus/auth/wrap_token"
require "azure/service_bus/auth/uri"
require 'net/https'
require 'uri'

module Azure
  module ServiceBus
    module Auth
      class WrapService
        attr :issuer
        attr :access_key

        # Constructor
        #
        # issuer        -
        # access_key    -
        def initialize(issuer, access_key)
          @issuer         = issuer
          @access_key     = access_key
        end

        # Public: Get a valid access token for a given uri
        #
        # resource_uri - URI for the resource target
        #
        # Returns a valid Azure::ServiceBus::Auth:WrapToken
        def get_access_token(resource_uri)
          uri = URI.wrap
          body = get_body(resource_uri)
          response = do_request(:post, uri, body)

          if response.status_code == "200"
            WrapToken.parse(response.body)
          else
            #FIXME: handle errors
            raise "Couldn't get an access_token from ACS, response was: %s" % response.body
          end
        end

        private

        def do_request(method, uri, body)
          headers = {
            "Content-Type" => "application/x-www-form-urlencoded",
            "Content-Length" => "0"
          }
          request = Net::HTTP::Post.new(uri.request_uri, headers)
          request.body = body

          http = Net::HTTP.new(uri.host, uri.port)
          http.use_ssl = true
          http.verify_mode = OpenSSL::SSL::VERIFY_NONE

          response = http.request(request)
          response
        end

        # Private: Generate the wrap ACS body for the given uri as a String
        #
        # resource_uri - The resource URI
        #
        # Returns a url-encoded String
        def get_body(resource_uri)
          non_ssl_uri = resource_uri.dup
          non_ssl_uri.scheme = 'http'
          params = {
            :wrap_scope => non_ssl_uri.to_s,
            :wrap_name => @issuer,
            :wrap_password => @access_key
          }
          ::URI.encode_www_form(params)
        end
      end
    end
  end
end
