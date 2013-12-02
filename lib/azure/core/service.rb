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
require 'azure/core/http/http_request'

module Azure
  module Core
    # A base class for Service implementations
    class Service

      # Create a new instance of the Service
      # 
      # host            - String. The hostname. (optional, Default empty)
      def initialize(host='')
        @host = host
      end

      attr_accessor :host

      def call(method, uri, body=nil, headers=nil)
        if headers && !body.nil?
          if headers['Content-Encoding'].nil?
            headers['Content-Encoding'] = body.encoding.to_s
          else 
            body.force_encoding(headers['Content-Encoding']) 
          end
        end

        request = Core::Http::HttpRequest.new(method, uri, body)
        request.headers.merge!(headers) if headers

        request.headers['connection'] = 'keep-alive' if request.respond_to? :headers

        yield request if block_given?

        response = request.call

        if !response.nil? && !response.body.nil? && response.headers['content-encoding']
          response.body.force_encoding(response.headers['content-encoding']) 
        end

        response
      end

      def generate_uri(path='', query={})
        uri = URI.parse(File.join(host, path))
        uri.query = URI.encode_www_form(query) unless query == nil or query.empty?
        uri
      end
    end
  end
end