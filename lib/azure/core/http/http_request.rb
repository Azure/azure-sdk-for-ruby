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
require "digest/md5"
require "base64"
require "net/http"
require "time"

require "azure/version"
require "azure/core/http/http_response"

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

        # Public: Create the HttpRequest
        #
        # method - Symbol. The HTTP method to use (:get, :post, :put, :del, etc...)
        # uri    - URI. The URI of the HTTP endpoint to query
        # body   - IO or String. The request body (optional)
        # current_time - String. The current time as a HTTP date string
        def initialize(method, uri, body=nil, current_time=Time.now.httpdate)
          @method  = method
          @uri     = uri
          @body    = body
          @headers = {}

          default_headers current_time
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
            new_impl = Proc.new do filter.call(self, old_impl) end
            k = class << self; self; end
            if k.method_defined? :define_singleton_method
                self.define_singleton_method(:call, new_impl) 
            else
                k.send(:define_method, :call, new_impl)
            end
          end
        end

        # Build a default headers Hash
        def default_headers(current_time)
          headers["User-Agent"] = "Azure-SDK-For-Ruby/" + Azure::Version.to_s
          headers["x-ms-date"] = current_time
          headers["x-ms-version"] = "2012-02-12"
          headers["DataServiceVersion"] = "1.0;NetFx"
          headers["MaxDataServiceVersion"] = "2.0;NetFx"

          if body
            headers["Content-Type"]   = "application/atom+xml; charset=utf-8"
            headers["Content-Length"] = body.bytesize.to_s
            headers["Content-MD5"]    = Base64.strict_encode64(Digest::MD5.digest(body))
          else
            headers["Content-Length"] = "0"
            headers["Content-Type"] = ""
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


        # Public: Sends request to HTTP server and returns a HttpResponse
        #
        # Returns a HttpResponse
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
            # require 'net/https'
            http.use_ssl = true
            http.verify_mode = OpenSSL::SSL::VERIFY_NONE
          end

          response = HttpResponse.new(http.request(request))
          response.uri = uri
          raise response.error unless response.success?
          response
        end
      end
    end
  end
end
