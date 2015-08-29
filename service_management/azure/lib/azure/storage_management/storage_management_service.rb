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
require 'azure/storage_management/serialization'

module Azure
  module StorageManagement
    # Provides Storage Management API
    class StorageManagementService < BaseManagement::BaseManagementService
      # Public: Gets a list of storage accounts available under the
      # current subscription.
      #
      # Returns an array of Azure::StorageManagement::StorageAccount objects
      def list_storage_accounts
        request_path = '/services/storageservices'
        request = client.management_request(:get, request_path)
        response = request.call
        Serialization.storage_services_from_xml(response)
      end

      # Public: Checks to see if the specified storage account is available
      #
      # ==== Attributes
      #
      # * +name+       - String. Storage account name.
      #
      # Returns an Azure::StorageManagement::StorageAccount instance
      def get_storage_account(name)
        list_storage_accounts.select { |x| x.name.casecmp(name.to_s) == 0 }.first
      end

      # Public: Gets the properties of the storage account specified.
      #
      # ==== Attributes
      #
      # * +name+  - String. The name of the storage account. Required.
      #
      # See http://msdn.microsoft.com/en-us/library/azure/ee460802.aspx
      #
      # Returns the storage account
      def get_storage_account_properties(name)
        request_path = "/services/storageservices/#{name}"
        request = client.management_request(:get, request_path)
        response = request.call
        Serialization.storage_services_from_xml(response).first
      end

      # Public: Create a new storage account in Microsoft Azure.
      #
      # ==== Attributes
      #
      # * +name+          - String. The name of the storage service.
      # * +options+       - Hash. Optional parameters.
      #
      # ==== Options
      #
      # Accepted key/value pairs in options parameter are:
      # * +:label+  - String. The label for this storage account. The name will
      # be used as label if none specified. (optional)
      # * +:location+  - String. The location where the storage
      # service will be created. Reqruied if no affinity_group_name specified.
      # * +:description+         - String. A description for the storage
      # service. (optional)
      # * +:affinity_group_name+  - String. The name of an existing affinity group
      # in the specified subscription. Required if no location specified.
      # * +:geo_replication_enabled+ - String. A flag indicating wheter to
      # turn Geo replication on or off. Values other than 'true'/'false'
      # will result in an error from the REST API. (optional)
      # * +:extended_properties+      - Hash. Key/Value pairs of extended
      # properties to add to the storage account. The key is used as the
      # property name and the value as its value. (optional)
      # * +:account_type+  - String.  Specifies the type of storage account
      #
      # See http://msdn.microsoft.com/en-us/library/azure/hh264518.aspx
      # 
      # Returns None
      def create_storage_account(name, options = {})
        raise 'Name not specified' if !name || name.class != String || name.empty?
        options[:account_type] ||= 'Standard_GRS'
        if get_storage_account(name)
          Azure::Loggerx.warn "Storage Account #{name} already exists. Skipped..."
        else
          Azure::Loggerx.info "Creating Storage Account #{name}."
          body = Serialization.storage_services_to_xml(name, options)
          request_path = '/services/storageservices'
          request = client.management_request(:post, request_path, body: body)
          request.call
        end
      end

      # Public: Updates an existing storage account in Microsoft Azure
      #
      # ==== Attributes
      #
      # * +name+          - String. The name of the storage service.
      # * +options+       - Hash. parameters.
      #
      # ==== Options
      #
      # Accepted key/value pairs in options parameter are:
      # * +:label+ - String. A label for the storage service. Required if no
      # description is provided. If both label and description are
      # provided, only the label will get updated.
      # * +:description+ - String. A description for the storage service.
      # Required if no label is provided. If both label and description are
      # provided, only the label will get updated.
      # * +:geo_replication_enabled+ - Boolean (TrueClass/FalseClass). Boolean
      # flag indicating whether to turn Geo replication on or off. (optional)
      # * +:extended_properties+      - Hash. Key/Value pairs of extended
      # properties to add to the storage account. The key is used as the
      # property name and the value as its value. (optional)
      # * +:account_type+  - String.  Specifies the type of storage account
      #
      # See http://msdn.microsoft.com/en-us/library/azure/hh264516.aspx
      #
      # Returns None
      # Fails with RuntimeError if invalid options specified
      def update_storage_account(name, options)
        if get_storage_account name
          Azure::Loggerx.info "Account '#{name}' exists, updating..."
          body = Serialization.storage_update_to_xml options
          request_path = "/services/storageservices/#{name}"
          request = client.management_request(:put, request_path, body)
          request.call
        else
          Azure::Loggerx.warn "Storage Account '#{name}' does not exist. Skipped..."
        end
      end

      # Public: Deletes the specified storage account of given subscription id
      # from Microsoft Azure.
      #
      # ==== Attributes
      #
      # * +name+       - String. Storage account name.
      #
      # See http://msdn.microsoft.com/en-us/library/azure/hh264517.aspx
      # 
      # Returns:  None
      def delete_storage_account(name)
        Azure::Loggerx.info "Deleting Storage Account #{name}."
        request_path = "/services/storageservices/#{name}"
        request = client.management_request(:delete, request_path)
        request.call
      rescue => e
        e.message
      end

      # Public: Regenerates the primary or secondary access key for the specified storage account
      #
      # ==== Attributes
      #
      # * +name+       - String. Storage account name.
      # * +key_type+   - String. Specifies which key(primary or secondary) to regenerate
      #
      # Returns an  Azure::StorageManagement::StorageAccountKeys instance.
      #
      # See:
      # http://msdn.microsoft.com/en-us/library/azure/ee460795.aspx
      def regenerate_storage_account_keys(name, key_type = 'primary')
        if get_storage_account name
          path = "/services/storageservices/#{name}/keys?action=regenerate"
          body = Serialization.regenerate_storage_account_keys_to_xml key_type
          request = client.management_request(:post, path, body)
          response = request.call
          Serialization.storage_account_keys_from_xml(response)
        else
          Azure::Loggerx.warn "Storage Account '#{name}' does not exist."
        end
      end

      # Public: Gets the primary and secondary access keys for the specified storage account.
      #
      # ==== Attributes
      #
      # * +name+       - String. Storage account name.
      #
      # Returns an  Azure::StorageManagement::StorageAccountKeys instance.
      #
      # See:
      # http://msdn.microsoft.com/en-us/library/azure/ee460785.aspx
      def get_storage_account_keys(name)
        if get_storage_account name
          path = "/services/storageservices/#{name}/keys"
          request = client.management_request(:get, path)
          response = request.call
          Serialization.storage_account_keys_from_xml(response)
        else
          Azure::Loggerx.warn "Storage Account '#{name}' does not exist."
        end
      end
    end
  end
end

Azure::StorageManagementService = Azure::StorageManagement::StorageManagementService
