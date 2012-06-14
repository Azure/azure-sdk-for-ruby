require "digest/md5"
require "base64"
require "net/http"
require "time"
require "azure/response"

module Azure
  class Request
    # Public: The URI we're requesting.
    attr :uri

    # Public: A Hash of request headers.
    attr :headers

    # Public: The HTTP method of the request.
    attr :method

    # Public: The request body (in Atom) or nil.
    attr :body

    # Public: Build the HTTP Request.
    #
    # method - The HTTP request method.
    # uri    - The URI we'll hit.
    # body   - The request body, or nil.
    # clock  - An object that responds to .now and returns a Time.
    def initialize(method, uri, body=nil, clock=Clock.new)
      @method  = method
      @uri     = uri
      @body    = body
      @headers = {}
      @clock   = clock

      calculate_headers
    end

    # Public: Make the request.
    #
    # ssl - Use SSL (default: false)
    #
    # Returns an Azure::Response.
    def request!(ssl=false)
      req = http_requester.new(uri.request_uri, headers)
      req.body = body if body

      http = Net::HTTP.new(uri.host, uri.port)
      if uri.scheme == 'https' || ssl
        # require 'net/https'
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE
      end

      Response.new(http.request(req))
    end

    # Build the headers Hash.
    #
    # Returns nothing.
    def calculate_headers
      headers["x-ms-date"] = @clock.now
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

    # Obtain the Net::HTTP class that will handle this request.
    #
    # Returns a subclass of Net::HTTPRequest
    def http_requester
      Net::HTTP.const_get(method.to_s.capitalize)
    rescue NameError => e
      e.message = "#{method} is an invalid HTTP method"
      raise
    end

    # Utility class to generate timestamps in a format the Azure platform likes.
    class Clock
      # Initialize the clock.
      #
      # source - Injectable dependency on the Time class.
      def initialize(source=Time)
        @source = source
      end

      # Calculate the time of "now", converted into something the Azure backend
      # likes.
      #
      # Returns a String with the time formatted in accordance to RFC 2616.
      def now
        @source.now.httpdate
      end
    end
  end
end
