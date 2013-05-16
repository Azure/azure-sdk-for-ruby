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
require 'tilt'
require "rexml/document"

require 'azure/core/utility'
require 'azure/service_management/management_http_request'
require 'azure/virtual_machine_image_management/virtual_machine_image_management_service'

include Azure::Core::Utility
include Azure::ServiceManagement
Loggerx = Azure::Core::Logger

module Azure
  module ServiceManagement
    class ServiceManagementService

      def initialize(options={})
        publish_settings_file = options[:publish_settings_file] || Azure.config.publish_settings_file
        certificate = Certificate.new(:publish_settings_file=> publish_settings_file)
        Azure.configure do |config|
          config.http_certificate_key = certificate.cert
          config.http_private_key = certificate.key
        end
      end

      def views(name)
        File.join(File.dirname(__FILE__), 'views', name)
      end

      # Public: Get a list of virtual machine images available in the subscription
      def virtual_machine_images
        images = VirtualMachineImageService.list_virtual_machine_images
        puts Tilt.new(self.views('images.erb'), 1, :trim => '%').render(nil, :images => images)
        images
      end

    end
  end
end