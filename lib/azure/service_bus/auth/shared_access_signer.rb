require 'cgi'

module Azure
  module ServiceBus
    module Auth
      class SharedAccessSigner

        # The number of seconds from the time of signature that the SAS token will expire
        attr_accessor :expiry_offset, :key_name, :access_key

        # Public: Initialize the Signer.
        #
        # @param key_name [String] The service bus SAS key name. Defaults to the one in the global configuration.
        # @param key      [String] The service bus SAS key encoded in Base64. Defaults to the one in the global configuration.
        # @param expiry_offset [Integer] The number of seconds from the time of signature that the SAS token will expire. Defaults to 30 minutes.
        def initialize(key_name=Azure.sb_sas_key_name, key=Azure.sb_sas_key, expiry_offset = 60*5)
          @access_key = key
          @key_name, @expiry_offset = key_name, expiry_offset
        end

        def name
          'SharedAccessSignature'
        end

        def token(uri)
          url_encoded_resource = CGI.escape(uri.to_s.downcase).gsub('+', '%20').downcase
          expiry = Time.now.to_i + expiry_offset
          sig = CGI.escape(signature(url_encoded_resource, expiry)).gsub('+', '%20')
          "#{name} sig=#{sig}&se=#{expiry}&skn=#{key_name}&sr=#{url_encoded_resource}"
        end

        def sign_request(req)
          req.headers['Authorization'] = token(req.uri)
        end

        private

        def signature(url_encoded_resource, expiry)
          sign([url_encoded_resource, expiry].join("\n"))
        end

        # Generate an HMAC signature.
        #
        # @param body [String] The string to sign.
        #
        # @return [String] a Base64 String signed with HMAC.
        def sign(body)
          signed = OpenSSL::HMAC.digest(OpenSSL::Digest.new('sha256'), access_key, body)
          Base64.strict_encode64(signed)
        end
      end
    end
  end
end
