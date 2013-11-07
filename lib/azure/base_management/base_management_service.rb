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
require 'rubygems'
require 'nokogiri'
require 'base64'
require 'openssl'
require "uri"
require "rexml/document"

include Azure::BaseManagement
include Azure::Core::Utility
Loggerx = Azure::Core::Logger

module Azure
  module BaseManagement
    class BaseManagementService

      def initialize
        validate_configuration
        cert_file = File.read (Azure.config.management_certificate)
        begin
          if Azure.config.management_certificate =~ /(pem)$/
            certificate_key = OpenSSL::X509::Certificate.new(cert_file)
            private_key = OpenSSL::PKey::RSA.new(cert_file)
          else
            #Parse pfx content
            cert_content = OpenSSL::PKCS12.new(Base64.decode64(cert_file))
            certificate_key = OpenSSL::X509::Certificate.new(cert_content.certificate.to_pem)
            private_key = OpenSSL::PKey::RSA.new(cert_content.key.to_pem)
          end
        rescue Exception => e
          raise RuntimeError, "Management certificate not valid. Error: #{e.message}"
        end

        Azure.configure do |config|
          config.http_certificate_key = certificate_key
          config.http_private_key = private_key
        end
      end

      def validate_configuration
        raise RuntimeError, "Subscription ID not valid." if Azure.config.subscription_id.nil? or Azure.config.subscription_id.empty?
        raise RuntimeError, "Management endpoint not valid." if Azure.config.management_endpoint.nil? or Azure.config.management_endpoint.empty?
        raise RuntimeError, "Could not read from file '#{Azure.config.management_certificate}'." unless (test 'r', Azure.config.management_certificate)
        raise RuntimeError, "Management certificate expects a .pem or .pfx file." unless(Azure.config.management_certificate =~ /(pem|pfx)$/)
      end

      # Public: Gets a list of regional data center locations from the server
      #
      # Returns an array of Azure::ServiceManagement::Location objects
      def list_locations
        require "azure/base_management/serialization"
        request = ManagementHttpRequest.new(:get, "/locations")
        response = request.call
        Serialization.locations_from_xml(response)
      end

      [:get, :post, :put, :delete].each do |method_name|
        define_method method_name do |request_path, body = nil|
          ManagementHttpRequest.new(method_name, request_path, body).call
        end
      end

    end
  end
end
