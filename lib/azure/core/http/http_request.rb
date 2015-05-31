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
require 'digest/md5'
require 'base64'
require 'net/http'
require 'time'

require 'azure/version'
require 'azure/core/http/http_response'

module Azure
  module Core
    module Http
      # Represents a HTTP request can perform synchronous queries to a 
      # HTTP server, returning a HttpResponse 
      class HttpRequest

        alias_method :_method, :method

        # The HTTP method to use (:get, :post, :put, :delete, etc...)
        attr_accessor :method

        # The URI of the HTTP endpoint to query
        attr_accessor :uri

        # The header values as a Hash
        attr_accessor :headers

        # The body of the request (IO or String)
        attr_accessor :body

        attr_accessor :client

        # Optional authentication options for Service Management
        attr_accessor :key, :cert

        # Public: Create the HttpRequest
        #
        # @param method   [Symbol] The HTTP method to use (:get, :post, :put, :del, etc...)
        # @param uri      [URI] The URI of the HTTP endpoint to query
        # @param options  [String|Hash] body or {:body, :client, :current_time}
        def initialize(method, uri, options = {})
          options ||= {}
          if options.is_a?(Hash)
            @body = options[:body]
          else
            @body = options
          end

          @method = method
          @uri = uri
          @client = options[:client] || Azure.client

          @headers = default_headers(options[:current_time] || Time.now.httpdate).merge(options[:headers] || {})
          apply_body_headers
        end

        # Public: Applies a HttpFilter to the HTTP Pipeline
        #
        # filter - Any object that responds to .call(req, _next) and 
        #          returns a HttpResponse eg. HttpFilter, Proc, 
        #          lambda, etc. (optional)
        #
        # &block - An inline block may be used instead of a filter
        #
        #          example:
        #
        #             request.with_filter do |req, _next| 
        #               _next.call
        #             end
        #
        # NOTE:
        #
        # The code block provided must call _next or the filter pipeline
        # will not complete and the HTTP request will never execute
        # 
        def with_filter(filter=nil, &block)
          filter = filter || block
          if filter
            old_impl = self._method(:call)

            # support 1.8.7 (define_singleton_method doesn't exist until 1.9.1)
            new_impl = Proc.new do
              filter.call(self, old_impl)
            end
            k = class << self;
              self;
            end
            if k.method_defined? :define_singleton_method
              self.define_singleton_method(:call, new_impl)
            else
              k.send(:define_method, :call, new_impl)
            end
          end
        end

        # Build a default headers Hash
        def default_headers(current_time)
          {}.tap do |def_headers|
            def_headers['User-Agent'] = Azure::Default::USER_AGENT
            def_headers['x-ms-date'] = current_time
            def_headers['x-ms-version'] = '2012-02-12'
            def_headers['DataServiceVersion'] = '1.0;NetFx'
            def_headers['MaxDataServiceVersion'] = '2.0;NetFx'
          end
        end

        # Obtain the Net::HTTP class that will handle this request
        #
        # Returns a subclass of Net::HTTPRequest
        def http_request_class
          Net::HTTP.const_get(method.to_s.capitalize)
        rescue NameError => e
          e.message = "#{method} is an invalid HTTP method"
          raise
        end

        def http_setup(uri = nil)
          uri = URI.parse(uri) if uri.is_a?(String)
          http = @client.agents(uri)

          if uri.scheme.downcase == 'https'
            # require 'net/https'
            http.ca_file = Azure.config.ca_file if Azure.config.ca_file
            http.use_ssl = true
            http.verify_mode = OpenSSL::SSL::VERIFY_PEER
            http.cert = cert if cert
            http.key = key if key
          end

          unless headers.nil?
            keep_alive = headers['Keep-Alive'] || headers['keep-alive']
            http.read_timeout = keep_alive.split('=').last.to_i unless keep_alive == nil
          end

          http
        end


        # Public: Sends request to HTTP server and returns a HttpResponse
        #
        # Returns a HttpResponse
        def call
          request = http_request_class.new(uri, headers)
          apply_body_headers
          set_request_body(request) if body
          http = http_setup(uri)
          response = HttpResponse.new(http.request(request))
          response.uri = uri
          raise Azure::Core::Error.new(response.error) unless response.success?
          response
        end

        private

        def apply_body_headers
          if body
            headers['Content-Type'] = 'application/atom+xml; charset=utf-8'
            if IO === body
              headers['Content-Length'] = body.size.to_s
              headers['Content-MD5'] = Digest::MD5.file(body.path).base64digest
            else
              headers['Content-Length'] = body.bytesize.to_s
              headers['Content-MD5'] = Base64.strict_encode64(Digest::MD5.digest(body))
            end
          else
            headers['Content-Type'] = ''
            headers['Content-Length'] = '0'
          end
        end

        def set_request_body(request)
          if IO === body
            request.body_stream = body
          else
            request.body = body
          end
        end
      end
    end
  end
end
