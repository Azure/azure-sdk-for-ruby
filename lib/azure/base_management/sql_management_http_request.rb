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
      attr_accessor :uri
      # Public: Creates the ManagementHttpRequest
      #
      # method  - Symbol. The HTTP method to use (:get, :post, :put, :del, etc...)
      # path    - URI. The URI of the HTTP endpoint to query
      # body    - IO or String. The request body (optional)
      def initialize(method, path, body = nil)
        if sql_endpoint?
          super(method, path, body)
          @headers['x-ms-version'] = '1.0'
          @uri = URI.parse(Azure.config.sql_database_management_endpoint + Azure.config.subscription_id + path)
        else
          path = "/services/sqlservers#{path}"
          super(method, path, body)
        end
      end

      private

      def sql_endpoint?
        Azure.config.sql_database_authentication_mode == :sql_server
      end
    end
  end
end
