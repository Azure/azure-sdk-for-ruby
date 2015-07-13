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

# Represents an HTTP request that can perform synchronous queries to
# an HTTP server, returning a HttpResponse
module Azure
  module BaseManagement
    class ManagementHttpRequest < Azure::Core::Http::HttpRequest
      include Azure::Core::Utility
      attr_accessor :warn

      # Creates the ManagementHttpRequest
      #
      # @param method           [Symbol] The HTTP method to use (:get, :post, :put, :del, etc...)
      # @param path             [URI] The URI of the HTTP endpoint to query
      # @param options_or_body  [Hash|IO|String] The request options including {:client, :body} or raw body only
      def initialize(method, path, options_or_body = {})
        options ||= unless options_or_body.is_a?(Hash)
                    {body: options_or_body}
                  end || options_or_body || {}
        options[:client] ||= Azure
        super(method, self.class.request_uri(path, options[:client]), options)
        @warn = options.fetch(:warn, false)
        content_length = body ? body.bytesize.to_s : '0'
        headers.update({
                            'x-ms-version' => '2015-04-01',
                            'Content-Type' => 'application/xml',
                            'Content-Length' => content_length
                        })
      end

      # Public: Sends a request to HTTP server and returns a HttpResponse
      #
      # Returns a Nokogiri::XML instance of HttpResponse body
      def call
        conn = http_setup
        res = conn.run_request(method.to_sym, uri, nil, nil) do  |req|
          req.body = body if body
          req.headers = headers if headers
        end
        response = wait_for_completion(Azure::Core::Http::HttpResponse.new(res))
        Nokogiri::XML response.body unless response.nil?
      end

      def apply_body_headers
        super
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
          Azure::Loggerx.error_with_exit ret_val.at_css('Error Code').content + ' : ' + ret_val.at_css('Error Message').content
        end
        if response.status_code.to_i == 200 || response.status_code.to_i == 201
          response
        elsif redirected? response
          rebuild_request response
        elsif response.status_code.to_i > 201 && response.status_code.to_i <= 299
          check_completion(response.headers['x-ms-request-id'])
        elsif warn && !response.success?
          response
        elsif response.body
          if ret_val.at_css('Error Code') && ret_val.at_css('Error Message')
            Azure::Loggerx.error_with_exit ret_val.at_css('Error Code').content + ' : ' + ret_val.at_css('Error Message').content
          else
            Azure::Loggerx.exception_message "http error: #{response.status_code}"
          end
        else
          Azure::Loggerx.exception_message "http error: #{response.status_code}"
        end
      end

      def http_setup
        http = super
        http.ssl[:client_cert] = @client.http_certificate_key if @client.http_certificate_key
        http.ssl[:client_key] = @client.http_private_key if @client.http_private_key
        http
      end

      # Public: Gets the status of the specified operation and determines whether
      # the operation has succeeded, failed, or is still in progress.
      #
      # ==== Attributes
      #
      # * +request_id+       - String.  x-ms-request-id response header of request
      #
      # See: http://msdn.microsoft.com/en-us/library/azure/ee460783.aspx
      #
      # Print Error or Success of Operation.
      def check_completion(request_id)
        request_path = "/#{client.subscription_id}/operations/#{request_id}"
        conn = http_setup
        headers['Content-Length'] = '0'
        @method = :get
        done = false
        until done
          Azure::Loggerx.info('# ')
          res = conn.run_request(method.to_sym, URI(request_path), nil, nil) do  |req|
            req.body = body if body
            req.headers = headers if headers
          end
          response = Azure::Core::Http::HttpResponse.new(res)
          ret_val = Nokogiri::XML response.body
          status = xml_content(ret_val, 'Operation Status')
          status_code = response.status_code.to_i
          if status != 'InProgress'
            done = true
          end
          if redirected? response
            @uri = self.class.request_uri(response.headers['location'], client)
            conn = http_setup
            done = false
          end
          if done
            if status.downcase != 'succeeded'
              error_code = xml_content(ret_val, 'Operation Error Code')
              error_msg = xml_content(ret_val, 'Operation Error Message')
              Azure::Loggerx.exception_message "#{error_code}: #{error_msg}"
            else
              Azure::Loggerx.success "#{status.downcase} (#{status_code})"
            end
            return
          else
            sleep(5)
          end
        end
      end

      def rebuild_request(response)
        host_uri = URI.parse(response.headers['location'])
        conn = http_setup
        res = conn.run_request(method.to_sym, host_uri, nil, nil) do  |req|
          req.body = body if body
          req.headers = headers if headers
        end
        wait_for_completion(HttpResponse.new(res))
      end

      def redirected?(response)
        (response.status_code.to_i == 307)
      end

      private

      def self.request_uri(path, client)
        relative_path = path =~ /^\// ? path[1..-1] : path # remove the starting slash in the relative path if exists
        URI.join(client.management_endpoint, '/' + client.subscription_id + '/', relative_path)
      end
    end
  end
end
