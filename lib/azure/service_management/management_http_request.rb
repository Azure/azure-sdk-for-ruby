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
require "azure/core/http/http_response"
require "azure/core/http/http_request"
require "azure/service_management/certificate"
include Azure::Core::Http

# Represents a HTTP request can perform synchronous queries to a
# HTTP server, returning a HttpResponse
module Azure
  module ServiceManagement
    class ManagementHttpRequest < HttpRequest

      attr_accessor :uri,:warn,:key,:cert

      # Public: Creates the ManagementHttpRequest
      #
      # method  - Symbol. The HTTP method to use (:get, :post, :put, :del, etc...)
      # path    - URI. The URI of the HTTP endpoint to query
      # body    - IO or String. The request body (optional)
      # key     - String. The request key
      # cert    - String. The request certificate
      def initialize(method, path, body=nil)
        super
        @warn = false
        @headers = {"x-ms-version" => "2012-03-01","Content-Type"=> 'application/xml' }
        @uri = URI.parse(Azure.config.api_url + Azure.config.subscription_id + path)
        @key =  Azure.config.http_private_key
        @cert = Azure.config.http_certificate_key
      end

      # Public: Sends request to HTTP server and returns a HttpResponse
      #
      # Returns a Nokogiri::XML instance of HttpResponse body
      def call
        request = http_request_class.new(uri.request_uri, headers)
        request.body = body if body

        http = nil
        if ENV['HTTP_PROXY'] || ENV['HTTPS_PROXY']
          if ENV['HTTP_PROXY']
            proxy_uri = URI::parse(ENV['HTTP_PROXY'])
          else
            proxy_uri = URI::parse(ENV['HTTPS_PROXY'])
          end

          http = Net::HTTP::Proxy(proxy_uri.host, proxy_uri.port).new(uri.host, uri.port)
        else
          http = Net::HTTP.new(uri.host, uri.port)
        end

        if uri.scheme.downcase == 'https'
          http.use_ssl = true
          http.verify_mode = OpenSSL::SSL::VERIFY_NONE
          http.cert = cert
          http.key = key
        end
        #http.set_debug_output($stdout)
        response = HttpResponse.new(http.request(request))
        response.uri = uri

        wait_for_completion(response)
        Nokogiri::XML  response.body
      end

      # Public: Wait for HTTP request completion.
      #
      # ==== Attributes
      #
      # * +response+       - Azure::Core::Http::HttpResponse. HttpResponse Response
      #
      # Print Error or Success of HttpRequest
      def wait_for_completion(response)
        ret_val = Nokogiri::XML response.body

        if ret_val.at_css('Error Code') && ret_val.at_css('Error Code').content == 'AuthenticationFailed'
          Loggerx.error_with_exit ret_val.at_css('Error Code').content + ' : ' + ret_val.at_css('Error Message').content
        end
        if response.status_code.to_i == 200
          ret_val
        elsif response.status_code.to_i >= 201 && response.status_code.to_i <= 299
          ret_val = check_completion(response.headers['x-ms-request-id'])
        else
          if response.body
            if warn
              Loggerx.warn ret_val.at_css('Error Code').content + ' : ' + ret_val.at_css('Error Message').content
            else
              Loggerx.error_with_exit ret_val.at_css('Error Code').content + ' : ' + ret_val.at_css('Error Message').content
            end
          else
            Loggerx.error_with_exit 'http error: ' + response.code
          end
        end
      end

      # Public: The check_completion get status of the specified operation and determine whether
      # the operation has succeeded, failed, or is still in progress.
      #
      # ==== Attributes
      #
      # * +request_id+       - String.  x-ms-request-id response header of request
      #
      # See: http://msdn.microsoft.com/en-us/library/windowsazure/ee460783.aspx
      #
      # Print Error or Success of Operation.
      def check_completion(request_id)
        request_path= "/operations/#{request_id}"
        done = false
        while not done
          print '# '
          request= ManagementHttpRequest.new(:get, request_path)
          response = request.call
          status =   xml_content(response, 'Operation Status')
          status_code = xml_content(response, 'Operation HttpStatusCode')
          done = status != 'InProgress'
          if done
            Loggerx.success " #{status.downcase} (#{status_code})"
            puts ''
            if status != "Succeeded"
              error_code = xml_content(response, 'Operation Error Code')
              error_msg = xml_content(response, 'Operation Error Message')
              Loggerx.error "#{error_code}: #{error_msg}"
            end
          else
            sleep(1)
          end
        end
      end
    end
  end
end