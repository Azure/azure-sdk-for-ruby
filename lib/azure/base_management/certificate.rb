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
require 'uri'

module Azure
  module BaseManagement
    class Certificate
      attr_accessor :key, :cert, :api_url, :subscription_id

      def initialize(options={})
        publish_settings_file = options[:publish_settings_file] || Azure.config.publish_settings_file
        begin
          doc = Nokogiri::XML(File.open(locate_file(publish_settings_file)))
          @subscription_id = Azure.config.subscription_id || doc.at_css("Subscription").attribute("Id").value
          profile = doc.css("PublishProfile Subscription")
          subscription_ids = profile.collect {|pf| pf.attribute("Id").value}
          if doc.at_css("PublishProfile").attribute("SchemaVersion").nil?
            if subscription_ids.include?(@subscription_id)
              cert_content = OpenSSL::PKCS12.new(Base64.decode64(doc.at_css("PublishProfile").attribute("ManagementCertificate").value))
            end
            @api_url = URI(doc.at_css("PublishProfile").attribute("Url").value).host
          elsif doc.at_css("PublishProfile").attribute("SchemaVersion").value == "2.0"
            profile.each do |pf|
              if pf.attribute("Id").value == @subscription_id
                cert_content = OpenSSL::PKCS12.new(Base64.decode64(pf.attribute("ManagementCertificate").value))
                @api_url = URI(pf.attribute("ServiceManagementUrl").value).host
              end
            end
          else
            Loggerx.error_with_exit "Publish Settings file schema not supported - #{publish_settings_file}"
          end
          if cert_content && @subscription_id
            @cert = OpenSSL::X509::Certificate.new(cert_content.certificate.to_pem)
            @key = OpenSSL::PKey::RSA.new(cert_content.key.to_pem)
          else
            raise RuntimeError, "Subscription ID not valid."
          end
        end
      end

    end
  end
end