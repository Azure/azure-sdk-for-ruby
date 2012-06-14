require "openssl"
require "base64"
require "azure/configuration"

module Azure
  module Core
    # Public: Utility class to sign strings with HMAC-256 and then encode the
    # signed string using Base64.
    class Signer
      # The Azure account's access key.
      attr :access_key

      # Public: Initialize the Signer.
      #
      # access_key - The Azure access_key encoded in Base64. Defaults to the one
      #              in the global configuration.
      def initialize(access_key=Azure.config.access_key)
        @access_key = Base64.strict_decode64(access_key)
      end

      # Public: Generate an HMAC signature.
      #
      # body - The string to sign.
      #
      # Returns a Base64 String signed with HMAC.
      def sign(body)
        signed = OpenSSL::HMAC.digest("sha256", access_key, body)
        Base64.strict_encode64(signed)
      end
    end
  end
end
