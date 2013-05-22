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
require 'base64'
require 'azure/cloud_service_management/cloud_service'

module Azure
  module CloudServiceManagement
    module Serialization
      
      def self.cloud_services_from_xml(cloudXML)
        clouds = []
        cloud_services_xml = cloudXML.css('HostedServices HostedService')
        cloud_services_xml.each do |cloud_service_xml|
          cloud = CloudService.new
          cloud.name = xml_content(cloud_service_xml, 'ServiceName')
          clouds << cloud
        end
        clouds.compact
      end

    end
  end
end