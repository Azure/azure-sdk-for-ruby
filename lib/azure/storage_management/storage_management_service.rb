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
    class StorageManagementService < BaseManagementService
      def initialize
        super()
      end
      # Public: Gets a list of storage accounts available under the
      # current subscription.
      #
      # Returns an array of Azure::StorageManagement::StorageAccount objects
      def list_storage_accounts
        request_path = '/services/storageservices'
        request = ManagementHttpRequest.new(:get, request_path, nil)
        response = request.call
        Serialization.storage_services_from_xml(response)
      end

      # Public: Checks to see if the specified storage account is available
      #
      # ==== Attributes
      #
      # * +name+       - String. Storage account name.
      #
      # Returns: A boolean value indicating whether the storage account exists.
      # If true, the storage account exists. If false, the storage account
      # does not exist.
      def get_storage_account(name)
        return false if name.nil?
        flag = false
        storage_accounts = list_storage_accounts
        storage_accounts.each do |storage|
          if storage.name == name
            flag = true
            break
          end
        end
        flag
      end

      # Public: Gets the properties of the storage account specified.
      #
      # ==== Attributes
      #
      # * +name+  - String. The name of the storage account. Required.
      #
      # See http://msdn.microsoft.com/en-us/library/windowsazure/ee460802.aspx
      #
      # Returns the storage account
      def get_storage_account_properties(name)
        request_path = "/services/storageservices/#{name}"
        request = ManagementHttpRequest.new(:get, request_path, nil)
        response = request.call
        Serialization.storage_services_from_xml(response).first
      end

      # Public: Create a new storage account in Windows Azure.
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
      #
      # Returns None
      def create_storage_account(name, options = {})
        raise 'Name not specified' if !name || name.class != String || name.empty?
        if get_storage_account(name)
          Loggerx.warn "Storage Account #{name} already exists. Skipped..."
        else
          Loggerx.info "Creating Storage Account #{name}."
          body = Serialization.storage_services_to_xml(name, options)
          request_path = '/services/storageservices'
          request = ManagementHttpRequest.new(:post, request_path, body)
          request.call
        end
      end

      # Public: Updates an existing storage account in Windows Azure
      #
      # ==== Attributes
      #
      # * +name+          - String. The name of the storage service.
      # * +options+       - Hash. Optional parameters.
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
      # flag indicating wheter to turn Geo replication on or off. (optional)
      # * +:extended_properties+      - Hash. Key/Value pairs of extended
      # properties to add to the storage account. The key is used as the
      # property name and the value as its value. (optional)
      #
      # Returns None
      # Fails with RuntimeError if invalid options specified
      def update_storage_account(name, options = {})
        if get_storage_account name
          Loggerx.info "Account '#{name}' exists, updating..."
          body = Serialization.storage_update_to_xml options
          request_path = "/services/storageservices/#{name}"
          request = ManagementHttpRequest.new(:put, request_path, body)
          request.call
        else
          Loggerx.warn "Storage Account '#{name}' does not exist. Skipped..."
        end
      end

      # Public: Deletes the specified storage account of given subscription id
      # from Windows Azure.
      #
      # ==== Attributes
      #
      # * +name+       - String. Storage account name.
      #
      # Returns:  None
      def delete_storage_account(name)
        Loggerx.info "Deleting Storage Account #{name}."
        request_path = "/services/storageservices/#{name}"
        request = ManagementHttpRequest.new(:delete, request_path)
        request.call
      rescue Exception => e
        e.message
      end
    end
  end
end
