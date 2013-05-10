#-------------------------------------------------------------------------
# Copyright 2013 Microsoft Open Technologies, Inc.
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
require 'openssl'
require 'fileutils'

module Azure
  module ServiceManagement
    class Certificate
      attr_accessor :key, :cert

      def initialize(options={})
        publish_settings_file = options[:publish_setting_file] || Azure.config.publish_settings_file
        if publish_settings_file
          publishxml = open(locate_file(publish_settings_file)).read
          cert_base64 = /ManagementCertificate="(.*)">/.match(publishxml)[1]
          cert_content = OpenSSL::PKCS12.new(Base64.decode64(cert_base64))
          @cert = OpenSSL::X509::Certificate.new(cert_content.certificate.to_pem)
          @key = OpenSSL::PKey::RSA.new(cert_content.key.to_pem)
          Azure.configure do |config|
            config.subscription_id ||= /Id="(.*)"/.match(publishxml)[1]
            config.api_url ||= /Url="(.*)"/.match(publishxml)[1]
          end
        else
          Loggerx.error_with_exit "At least a publish settings file or a certificate file is required."
        end
      end

    end
  end
end