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
      # @param host     [String] The hostname. (optional, Default empty)
      # @param options  [Hash] options including {:client} (optional, Default {})
      def initialize(host='', options = {})
        @host = host
        @client = options[:client] || Azure
      end

      attr_accessor :host, :client

      def call(method, uri, body=nil, headers={})
        request = Core::Http::HttpRequest.new(method, uri, body: body, headers: headers, client: @client)
        yield request if block_given?
        request.call
      end

      def generate_uri(path='', query={})
        uri = URI.parse(File.join(host, path))
        uri.query = URI.encode_www_form(query) unless query == nil or query.empty?
        uri
      end
    end
  end
end