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
require "azure/core/http_request"
require "azure/core/auth/shared_key"

module Azure
  module Service
    # A base class for StorageService implementations
    class StorageService

      # Create a new instance of the StorageService
      #
      # auth_filter - HttpFilter. An implementation of HttpFilter used for 
      # signing requests.  
      def initialize(signer=Azure::Core::Auth::Strategies::SharedKey.new, account_name=Azure.config.account_name)
        @account_name = account_name
        @signer = signer
        @filters = []
      end

      attr_accessor :account_name
      attr_accessor :signer
      attr_accessor :filters

      def call(method, uri, body=nil, headers=nil)
        request = Azure::Core::HttpRequest.new(method, uri, body)
        request.headers.merge!(headers) if headers
        
        if signer
          request.with_filter do |req, _next|
            signature = signer.sign(req.method, req.uri, req.headers)
            req.headers["Authorization"] = "#{signer.name} #{account_name}:#{signature}"
            _next.call
          end
        end

        filters.each { |filter| request.with_filter filter } if filters

        request.call
      end

      def with_filter(filter=nil, &block)
        filter = filter || block
        filters.push filter if filter
      end
    end
  end
end