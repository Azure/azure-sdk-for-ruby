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
require 'azure/storage_management/storage_account'

module Azure
  module StorageManagement
    module Serialization
      def self.storage_services_to_xml(name, options={})
        builder = Nokogiri::XML::Builder.new do |xml|
          xml.CreateStorageServiceInput('xmlns'=>'http://schemas.microsoft.com/windowsazure') {
            xml.ServiceName name
            xml.Label Base64.encode64(name)
            xml.Description options[:description] || 'Explicitly created storage service'
            xml.Location options[:location]
          }
        end
        builder.doc.to_xml
      end
      
      def self.storage_services_from_xml(storageXML)
        storage_accounts = []
        storage_servicesXML = storageXML.css('StorageServices StorageService')
        storage_servicesXML.each do |storage_service_xml|
          storage_account = StorageAccount.new
          storage_account.name = xml_content(storage_service_xml, 'ServiceName')
          storage_accounts << storage_account
        end
        storage_accounts.compact
      end

    end
  end
end