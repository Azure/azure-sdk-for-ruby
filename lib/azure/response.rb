require "azure/error"

module Azure
  # A small proxy to clean up the API of Net::HTTPResponse.
  class Response

    # Public: Initialize a new response.
    #
    # http_response - A Net::HTTPResponse.
    def initialize(http_response)
      @http_response = http_response
    end

    # Public: Get the response body.
    #
    # Returns a String.
    def body
      @http_response.body
    end

    # Public: Get the response status code.
    #
    # Returns a Fixnum.
    def code
      @http_response.code.to_i
    end

    # Public: Check if this response was successful. A request is considered
    # successful if the response is in the 200 - 399 range.
    #
    # Returns true|false.
    def success?
      (200..399).include? code
    end

    # Public: Get all the response headers as a Hash.
    #
    # Returns a Hash.
    def headers
      @headers ||= HeaderHash.new(@http_response.to_hash)
    end

    # Public: Get an error that wraps this HTTP response, as long as this
    # response was unsuccessful. This method _should not_ be called if the
    # response was successful.
    #
    # Returns an Azure::HTTPError.
    def exception
      Azure::HTTPError.new(self)
    end
    alias_method :error, :exception

    # HTTP Headers are case insensitive, and the Azure APIs seem to like this a
    # lot (documenting headers in one case and sending them in another). Also
    # this wraps Net::HTTPResponse headers by returning their values as strings,
    # not arrays.
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
  end
end
