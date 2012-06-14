require "xml"

module Azure
  # Public: Superclass for errors generated from this library, so people can
  # just rescue this for generic error handling.
  class Error < StandardError; end

  # Public: FileUploadError
  class FileUploadError < ::Azure::Error; end

  # Public: Class for handling all HTTP response errors.
  class HTTPError < ::Azure::Error
    # Public: The HTTP status code of this error.
    #
    # Returns a Fixnum.
    attr :code

    # Public: The type of error, as described by the Azure documentation.
    #
    # Returns a String.
    attr :type

    # Public: The English description of this error.
    #
    # Returns a String.
    attr :description

    # Public: Initialize an error.
    #
    # http_response - An Azure::Response.
    def initialize(http_response)
      @http_response = http_response
      @code = http_response.code
      parse_response
      super("#{type} (#{code}): #{description}")
    end

    # Extract the relevant information from the response's body. If the response
    # body is not an XML, we return an 'Unknown' error with the entire body as
    # the description.
    #
    # Returns nothing.
    def parse_response
      if @http_response.body.include?("<")
        document = XML::Parser.string(@http_response.body).parse

        # FIXME: For some reason document.find_first("code") (or "//code", etc.)
        # and document.find_first("message") return nil, while this works. It
        # makes no sense that this works and that doesn't. Oh well.
        document.root.children.each do |child|
          @type = child.content if child.name == "code"
          @description = child.content if child.name == "message"
        end
      else
        @type = "Unknown"
        @description = @http_response.body.strip
      end
    end
  end

  # Public: Mixin that gives a few convenience methods for handling errors in
  # domain objects.
  module ErrorHandler
    # Public: Get/Set the current error in this object.
    attr_accessor :error

    # Public: Check if this object doesn't have any errors.
    def valid?
      error.nil?
    end
  end
end
