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

      def initialize(options={})
        publish_settings_file = options[:publish_settings_file] || Azure.config.publish_settings_file
        certificate = Certificate.new(:publish_settings_file=> publish_settings_file)
        Azure.configure do |config|
          config.http_certificate_key = certificate.cert
          config.http_private_key = certificate.key
          config.api_url ||= certificate.api_url
          config.subscription_id = certificate.subscription_id
        end
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

    end
  end
end