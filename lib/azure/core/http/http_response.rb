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
require "azure/core/http/http_error"

module Azure
  module Core
    module Http
      # A small proxy to clean up the API of Net::HTTPResponse.
      class HttpResponse

        # Public: Initialize a new response.
        #
        # http_response - A Net::HTTPResponse.
        def initialize(http_response, uri="")
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

        # Public: Get the response status message.
        #
        # Returns a String.
        def message
          @http_response.message
        end

        # Public: Get the response status code.
        #
        # Returns a Fixnum.
        def status_code
          @http_response.code.to_i
        end

        # Public: Check if this response was successful. A request is considered
        # successful if the response is in the 200 - 399 range.
        #
        # Returns nil|false.
        def success?
          (200..399).include? status_code
        end

        # Public: Get all the response headers as a Hash.
        #
        # Returns a Hash.
        def headers
          @headers ||= HeaderHash.new(@http_response.to_hash)
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

        # Since HTTP Headers are case insensitive, this class will 
        # normalize them to lowercase. This also wraps Net::HTTPResponse 
        # headers by returning their values as strings, not arrays, by selecting
        # the first value from the array.
        class HeaderHash < Hash
          # Public: Initialize the header hash.
          #
          # headers - A Hash of headers as returned from Net::HTTPResponse#to_hash.
          def initialize(headers)
            super
            headers = Hash[headers.map { |k,v| [k.downcase.freeze, v.first.freeze] }]
            replace(headers)
          end

          # Public: Get a header's value or nil if it's not present.
          #
          # header - A string with the header's name.
          #
          # Returns a String or nil.
          def [](header)
            super(header.downcase)
          end

          # Public: Get a header's value or a specified default.
          #
          # header  - A string with the header's name.
          # default - A default value.
          #
          # Yields a block where you can specify the default value.
          #
          # Returns a String, or the specified default.
          def fetch(header, *default, &block)
            if (args = default.size) > 1
              raise ArgumentError, "wrong number of arguments(#{args + 1} for 2)"
            end

            super(header.downcase, *default, &block)
          end
        end
        
        class MockResponse
          def initialize(code, body, headers)
            @code = code.to_s 
            @body = body
            @headers = headers
            @headers.each { |k,v|
              @headers[k] = [v] unless v.respond_to? first 
            } 
          end
          attr_accessor :code
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
