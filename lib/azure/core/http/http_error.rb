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
require "azure/core/error"

module Azure
  module Core
    module Http
      # Public: Class for handling all HTTP response errors
      class HTTPError < Azure::Core::Error
        
        attr :uri

        # Public: The HTTP status code of this error
        #
        # Returns a Fixnum
        attr :status_code

        # Public: The type of error
        #
        # http://msdn.microsoft.com/en-us/library/windowsazure/dd179357
        #
        # Returns a String
        attr :type

        # Public: Description of the error
        #
        # Returns a String
        attr :description

        # Public: Detail of the error
        #
        # Returns a String
        attr :detail

        # Public: Initialize an error
        #
        # http_response - An Azure::Core::HttpResponse
        def initialize(http_response)
          @http_response = http_response
          @uri = http_response.uri
          @status_code = http_response.status_code
          parse_response
          super("#{type} (#{status_code}): #{description}")
        end

        # Extract the relevant information from the response's body. If the response
        # body is not an XML, we return an 'Unknown' error with the entire body as
        # the description
        #
        # Returns nothing
        def parse_response
          if @http_response.body && @http_response.body.include?("<")

            document = Nokogiri.Slop(@http_response.body)

            @type = document.css("code").first.text if document.css("code").any?
            @type = document.css("Code").first.text if document.css("Code").any?
            @description = document.css("message").first.text if document.css("message").any?
            @description = document.css("Message").first.text if document.css("Message").any?

            # service bus uses detail instead of message
            @detail = document.css("detail").first.text if document.css("detail").any?
            @detail = document.css("Detail").first.text if document.css("Detail").any?
          else
            @type = "Unknown"
            if @http_response.body
              @description = @http_response.body.strip
            else
              @description = @http_response.message.strip
            end
          end
        end
      end
    end
  end
end
