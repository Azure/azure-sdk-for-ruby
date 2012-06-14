require 'uri'

module Azure
  module ServiceBus
    module Auth
      class WrapToken
        attr_accessor :access_token
        attr_accessor :expire_time

        def initialize(token, expire_time)
          @access_token = token
          @expire_time  = expire_time
        end

        # Public: Instantiate a WrapToken from the HTTP response body.
        #
        # boddy - a String as returned by the ACS in the response body.
        #
        # Returns a WrapToken.
        def self.parse(body)
          begin
            decoded = ::URI.decode_www_form(body.strip)
            token = decoded.assoc("wrap_access_token").last
            expiration = decoded.assoc("wrap_access_token_expires_in").last
            new(token, expiration)
          rescue => e
            # TODO: hanlde errors
            raise "Cannot get the access token from returned string: %s" % body
          end
        end

        # Public: Instantiate a queue from an error object.
        #
        # error - An Azure::Error.
        #
        # Returns a Queue.
        def self.from_error(error)
          queue = new(nil)
          queue.error = error
          queue
        end
      end
    end
  end
end
