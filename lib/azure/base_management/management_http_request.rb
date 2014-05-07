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
require 'azure/core/http/http_response'
require 'azure/core/http/http_request'
include Azure::Core::Http

# Represents an HTTP request that can perform synchronous queries to
# an HTTP server, returning a HttpResponse
module Azure
  module BaseManagement
    class ManagementHttpRequest < HttpRequest
      attr_accessor :uri, :warn, :key, :cert

      # Public: Creates the ManagementHttpRequest
      #
      # method  - Symbol. The HTTP method to use (:get, :post, :put, :del, etc...)
      # path    - URI. The URI of the HTTP endpoint to query
      # body    - IO or String. The request body (optional)
      # key     - String. The request key
      # cert    - String. The request certificate
      def initialize(method, path, body = nil)
        super
        @warn = false
        content_length = body ? body.bytesize.to_s : '0'
        @headers = {
          'x-ms-version' => '2014-04-01',
          'Content-Type' => 'application/xml',
          'Content-Length' => content_length
        }
        @uri = URI.parse(Azure.config.management_endpoint + Azure.config.subscription_id + path)
        @key = Azure.config.http_private_key
        @cert = Azure.config.http_certificate_key
      end

      # Public: Sends a request to HTTP server and returns a HttpResponse
      #
      # Returns a Nokogiri::XML instance of HttpResponse body
      def call
        request = http_request_class.new(uri.request_uri, headers)
        request.body = body if body
        http = http_setup
        # http.set_debug_output($stdout)
        response = wait_for_completion(HttpResponse.new(http.request(request)))
        Nokogiri::XML response.body unless response.nil?
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
        if response.status_code.to_i == 200 || response.status_code.to_i == 201
          return response
        elsif redirected? response
          rebuild_request response
        elsif response.status_code.to_i > 201 && response.status_code.to_i <= 299
          check_completion(response.headers['x-ms-request-id'])
        elsif warn && !response.success?
          # Loggerx.warn ret_val.at_css('Error Code').content + ' : ' + ret_val.at_css('Error Message').content
        elsif response.body
          if ret_val.at_css('Error Code') && ret_val.at_css('Error Message')
            Loggerx.error_with_exit ret_val.at_css('Error Code').content + ' : ' + ret_val.at_css('Error Message').content
          else
            Loggerx.exception_message "http error: #{response.status_code}"
          end
        else
          Loggerx.exception_message "http error: #{response.status_code}"
        end
      end

      # Public: Gets the status of the specified operation and determines whether
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
        request_path = "/#{Azure.config.subscription_id}/operations/#{request_id}"
        http = http_setup
        headers['Content-Length'] = '0'
        @method = :get
        done = false
        while not done
          print '# '
          request = http_request_class.new(request_path, headers)
          response = HttpResponse.new(http.request(request))
          ret_val = Nokogiri::XML response.body
          status = xml_content(ret_val, 'Operation Status')
          status_code = response.status_code.to_i
          if status != 'InProgress'
            done = true
          end
          if redirected? response
            host_uri = URI.parse(response.headers['location'])
            http = http_setup(host_uri)
            done = false
          end
          if done
            if status.downcase != 'succeeded'
              error_code = xml_content(ret_val, 'Operation Error Code')
              error_msg = xml_content(ret_val, 'Operation Error Message')
              Loggerx.exception_message "#{error_code}: #{error_msg}"
            else
              Loggerx.success "#{status.downcase} (#{status_code})"
            end
            return
          else
            sleep(5)
          end
        end
      end

      def rebuild_request(response)
        host_uri = URI.parse(response.headers['location'])
        request = http_request_class.new(host_uri.request_uri, headers)
        request.body = body if body
        http = http_setup(host_uri)
        wait_for_completion(HttpResponse.new(http.request(request)))
      end

      def redirected?(response)
        (response.status_code.to_i == 307)
      end

      def http_setup(host_uri = nil)
        @uri = host_uri if host_uri
        http = nil
        if ENV['HTTP_PROXY'] || ENV['HTTPS_PROXY']
          if ENV['HTTP_PROXY']
            proxy_uri = URI.parse(ENV['HTTP_PROXY'])
          else
            proxy_uri = URI.parse(ENV['HTTPS_PROXY'])
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
        http
      end
    end
  end
end