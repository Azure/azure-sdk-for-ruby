#-------------------------------------------------------------------------
# Copyright 2013 Microsoft Open Technologies, Inc.
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
# Represents an HTTP request that can perform synchronous queries to
# an HTTP server, returning a HttpResponse
module Azure
  module BaseManagement
    # This class is used for communicating with the Management certificate authentication API endpoint
    class SqlManagementHttpRequest < ManagementHttpRequest

      # Creates the SqlManagementHttpRequest
      #
      # @param method           [Symbol] The HTTP method to use (:get, :post, :put, :del, etc...)
      # @param path             [URI] The URI of the HTTP endpoint to query
      # @param options_or_body  [Hash|IO|String] The request options including {:client, :body} or raw body only
      def initialize(method, path, options_or_body = {})
        path = '/services/sqlservers' + (path.start_with?('/') ? path : '/' + path)
        super(method, path, options_or_body)
        headers['x-ms-version'] = '2012-03-01'
        self.uri = URI.parse(Azure.config.sql_database_management_endpoint + Azure.config.subscription_id + path)
      end
    end
  end
end
