#-------------------------------------------------------------------------
# Copyright 2012 Microsoft Corporation
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
require "azure/core/http_response"

module Azure
  module Core

    # Represents a HTTP request can perform synchronous queries to a 
    # HTTP server, returning a HttpResponse 
    class HttpRequest

      # The HTTP method to use (:get, :post, :put, :del, etc...)
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
      def initialize(method, uri, body=nil)
        @method  = method
        @uri     = uri
        @body    = body
        @headers = {}

        default_headers
      end

      # Build a default headers Hash
      def default_headers
        headers["x-ms-date"] = Azure::Core::HttpTime.now
        headers["x-ms-version"] = "2011-08-18"
        headers["DataServiceVersion"] = "1.0;NetFx"
        headers["MaxDataServiceVersion"] = "2.0;NetFx"

        if body
          headers["Content-Type"]   = "application/atom+xml; charset=utf-8"
          headers["Content-Length"] = body.bytesize.to_s
          headers["Content-MD5"]    = Base64.strict_encode64(Digest::MD5.digest(body))
        else
          headers["Content-Length"] = "0"
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

        http = Net::HTTP.new(uri.host, uri.port)
        if uri.scheme.downcase == 'https'
          # require 'net/https'
          http.use_ssl = true
          http.verify_mode = OpenSSL::SSL::VERIFY_NONE
        end
        HttpResponse.new(http.request(request))
      end
    end

    # Utility module to generate RFC 2616 compatible timestamps
    module HttpTime

      # Calculate the time of "now" in a RFC 2616 compatible format
      # 
      # source - Injectable dependency on the Time class (optional)
      #
      # Returns a String with the RFC 2616 formatted time
      def self.now(source=Time)
        source.now.httpdate
      end
    end
  end
end