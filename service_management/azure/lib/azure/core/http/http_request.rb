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

        # Azure client which contains configuration context and http agents
        # @return [Azure::Client]
        attr_accessor :client

        # Public: Create the HttpRequest
        #
        # @param method   [Symbol] The HTTP method to use (:get, :post, :put, :del, etc...)
        # @param uri      [URI] The URI of the HTTP endpoint to query
        # @param options_or_body  [Hash|IO|String] The request options including {:client, :body} or raw body only
        def initialize(method, uri, options_or_body = {})
          options ||= unless options_or_body.is_a?(Hash)
                        {body: options_or_body}
                      end || options_or_body || {}

          @method = method
          @uri = if uri.is_a?(String)
                   URI.parse(uri)
                 else
                   uri
                 end

          @client = options[:client] || Azure

          self.headers = default_headers(options[:current_time] || Time.now.httpdate).merge(options[:headers] || {})
          self.body = options[:body]
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
            def_headers['x-ms-version'] = '2014-02-14'
            def_headers['DataServiceVersion'] = '1.0;NetFx'
            def_headers['MaxDataServiceVersion'] = '2.0;NetFx'
            def_headers['Content-Type'] = 'application/atom+xml; charset=utf-8'
          end
        end

        def http_setup
          http = @client.agents(uri)

          unless headers.nil?
            keep_alive = headers['Keep-Alive'] || headers['keep-alive']
            http.read_timeout = keep_alive.split('=').last.to_i unless keep_alive.nil?
          end

          http
        end

        def body=(body)
          @body = body
          apply_body_headers
        end

        # Sends request to HTTP server and returns a HttpResponse
        #
        # @return [HttpResponse]
        def call
          conn = http_setup
          res = conn.run_request(method.to_sym, uri, nil, nil) do |req|
            req.body = body if body
            req.headers = headers if headers
          end

          response = HttpResponse.new(res)
          response.uri = uri
          raise response.error unless response.success?
          response
        end

        private

        def apply_body_headers
          if body
            if IO === body
              headers['Content-Length'] = body.size.to_s
              headers['Content-MD5'] = Digest::MD5.file(body.path).base64digest
            else
              headers['Content-Length'] = body.bytesize.to_s
              headers['Content-MD5'] = Base64.strict_encode64(Digest::MD5.digest(body))
            end
          else
            headers['Content-Length'] = '0'
          end
        end

      end
    end
  end
end
