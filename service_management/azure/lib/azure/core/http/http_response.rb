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
require 'azure/core/http/http_error'

module Azure
  module Core
    module Http
      # A small proxy to clean up the API of Net::HTTPResponse.
      class HttpResponse

        # Public: Initialize a new response.
        #
        # http_response - A Net::HTTPResponse.
        def initialize(http_response, uri='')
          @http_response = http_response
          @uri = uri
        end

        attr_accessor :uri

        # Public: Get the response body.
        #
        # Returns a String.
        def body
          @http_response.body
        end

        # Public: Get the response status code.
        #
        # Returns a Fixnum.
        def status_code
          @http_response.status
        end

        # Public: Check if this response was successful. A request is considered
        # successful if the response is in the 200 - 399 range.
        #
        # Returns nil|false.
        def success?
          @http_response.success?
        end

        # Public: Get all the response headers as a Hash.
        #
        # Returns a Hash.
        def headers
          @http_response.headers
        end

        # Public: Get an error that wraps this HTTP response, as long as this
        # response was unsuccessful. This method will return nil if the
        # response was successful.
        #
        # Returns an Azure::Core::Http::HTTPError.
        def exception
          HTTPError.new(self) unless success?
        end

        alias_method :error, :exception

        # TODO: This needs to be deleted and HttpError needs to be refactored to not rely on HttpResponse.
        # The dependency on knowing the internal structure of HttpResponse breaks good design principles.
        # The only reason this class exists is because the HttpError parses the HttpResponse to produce an error msg.
        class MockResponse
          def initialize(code, body, headers)
            @status = code
            @body = body
            @headers = headers
            @headers.each { |k,v|
              @headers[k] = [v] unless v.respond_to? first
            }
          end
          attr_accessor :status
          attr_accessor :body
          attr_accessor :headers

          def to_hash
            @headers
          end
        end
      end
    end
  end
end
