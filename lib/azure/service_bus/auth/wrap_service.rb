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
require 'azure/core/filtered_service'
require 'uri'

module Azure
  module ServiceBus
    module Auth
      class WrapService < Azure::Core::FilteredService

        def initialize(host=Azure.config.acs_host, issuer=Azure.config.sb_issuer, access_key=Azure.config.sb_access_key)
          super(host)
          @issuer = issuer
          @access_key = access_key
        end

        # Gets a WRAP access token with specified parameters.
        # 
        # Returns access token (String)
        def get_access_token(resource_uri)
            uri = wrap_uri

            body = get_wrap_acs_body(resource_uri)

            headers = {
              "Content-Type" => "application/x-www-form-urlencoded",
              "Content-Length" => "0"
            }

            response = call(:post, uri, body, headers)
            parse_token(response.body)
        end

        # Generate the wrap ACS body for the given uri as a String
        #
        # resource_uri - The resource URI
        #
        # Returns a url-encoded String
        def get_wrap_acs_body(resource_uri)
          non_ssl_uri = resource_uri.dup
          non_ssl_uri.scheme = 'http'
          params = {
            :wrap_scope => non_ssl_uri.to_s,
            :wrap_name => @issuer,
            :wrap_password => @access_key
          }
          ::URI.encode_www_form(params)
        end

        # Generate the URI for the ACS Wrap service
        #
        # path  - String. Path for the uri (optional, Default="WRAPv0.9")
        # query - Hash. Query parameters for the uri (optional) 
        #
        # Returns a URI.
        def wrap_uri(path="WRAPv0.9", query={})
          query = query || {}
          uri = URI.parse(File.join(host, path))
          uri.query = URI.encode_www_form(query) unless query.empty?
          uri
        end

        def parse_token(body)
          begin
            decoded = URI.decode_www_form(body.strip)
            token = decoded.assoc("wrap_access_token").last

            expires_in = decoded.assoc("wrap_access_token_expires_in").last.to_i
            return { :token => token, :expiration => Time.now.to_i + expires_in / 2 }
          rescue => e
            raise "Cannot get the access token from returned string: %s" % body
          end
        end
      end
    end
  end
end