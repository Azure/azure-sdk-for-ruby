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

module Azure
  module HttpResponseHelper

      # Sends request to HTTP server and returns a Faraday::Response
      # @param method   [Symbol] The HTTP method to use (:get, :post, :put, :del, etc...)
      # @param url      [URI] The URI of the HTTP endpoint to query
      # @param conn     [Net::HTTP] http agent for a given uri
      # @param headers  [String] The request headers
      # @param body     [String] The request body
      #returns Faraday::Response
      def set_up_response(method, url, conn, headers ,body)
        conn.run_request(method, url, nil, nil) do |req|
          req.body = body if body
          req.headers = headers if headers
          unless headers.nil?
            keep_alive = headers['Keep-Alive'] || headers['keep-alive']
            req.options[:timeout] = keep_alive.split('=').last.to_i unless keep_alive.nil?
          end
          req.options[:open_timeout] ||= 60
        end
      end
  end
end