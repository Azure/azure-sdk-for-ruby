# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_storage'


module Azure::Profiles::StorageModule::Management::Profile_2016_01_01
  module Storage
    StorageAccounts = Azure::ARM::Storage::Api_2016_01_01::StorageAccounts
    UsageOperations = Azure::ARM::Storage::Api_2016_01_01::UsageOperations

    module Models
      StorageAccountCheckNameAvailabilityParameters = Azure::ARM::Storage::Api_2016_01_01::Models::StorageAccountCheckNameAvailabilityParameters
      StorageAccountKey = Azure::ARM::Storage::Api_2016_01_01::Models::StorageAccountKey
      Sku = Azure::ARM::Storage::Api_2016_01_01::Models::Sku
      StorageAccountListResult = Azure::ARM::Storage::Api_2016_01_01::Models::StorageAccountListResult
      EncryptionService = Azure::ARM::Storage::Api_2016_01_01::Models::EncryptionService
      StorageAccountListKeysResult = Azure::ARM::Storage::Api_2016_01_01::Models::StorageAccountListKeysResult
      Encryption = Azure::ARM::Storage::Api_2016_01_01::Models::Encryption
      StorageAccountRegenerateKeyParameters = Azure::ARM::Storage::Api_2016_01_01::Models::StorageAccountRegenerateKeyParameters
      Endpoints = Azure::ARM::Storage::Api_2016_01_01::Models::Endpoints
      StorageAccountUpdateParameters = Azure::ARM::Storage::Api_2016_01_01::Models::StorageAccountUpdateParameters
      CustomDomain = Azure::ARM::Storage::Api_2016_01_01::Models::CustomDomain
      UsageName = Azure::ARM::Storage::Api_2016_01_01::Models::UsageName
      StorageAccountCreateParameters = Azure::ARM::Storage::Api_2016_01_01::Models::StorageAccountCreateParameters
      Usage = Azure::ARM::Storage::Api_2016_01_01::Models::Usage
      EncryptionServices = Azure::ARM::Storage::Api_2016_01_01::Models::EncryptionServices
      UsageListResult = Azure::ARM::Storage::Api_2016_01_01::Models::UsageListResult
      CheckNameAvailabilityResult = Azure::ARM::Storage::Api_2016_01_01::Models::CheckNameAvailabilityResult
      StorageAccount = Azure::ARM::Storage::Api_2016_01_01::Models::StorageAccount
      Reason = Azure::ARM::Storage::Api_2016_01_01::Models::Reason
      SkuName = Azure::ARM::Storage::Api_2016_01_01::Models::SkuName
      SkuTier = Azure::ARM::Storage::Api_2016_01_01::Models::SkuTier
      AccessTier = Azure::ARM::Storage::Api_2016_01_01::Models::AccessTier
      Kind = Azure::ARM::Storage::Api_2016_01_01::Models::Kind
      ProvisioningState = Azure::ARM::Storage::Api_2016_01_01::Models::ProvisioningState
      AccountStatus = Azure::ARM::Storage::Api_2016_01_01::Models::AccountStatus
      KeyPermission = Azure::ARM::Storage::Api_2016_01_01::Models::KeyPermission
      UsageUnit = Azure::ARM::Storage::Api_2016_01_01::Models::UsageUnit
    end

    #
    # Storage
    #
    class StorageClass
      attr_accessor :storage_accounts, :usage_operations, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::Storage::Api_2016_01_01::StorageManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.storage_accounts = Azure::ARM::Storage::Api_2016_01_01::StorageAccounts.new(client)
        self.usage_operations = Azure::ARM::Storage::Api_2016_01_01::UsageOperations.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2016-01-01'
            client = Azure::ARM::Storage::Api_2016_01_01::StorageManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def storage_account_check_name_availability_parameters
          Azure::ARM::Storage::Api_2016_01_01::Models::StorageAccountCheckNameAvailabilityParameters
        end
        def storage_account_key
          Azure::ARM::Storage::Api_2016_01_01::Models::StorageAccountKey
        end
        def sku
          Azure::ARM::Storage::Api_2016_01_01::Models::Sku
        end
        def storage_account_list_result
          Azure::ARM::Storage::Api_2016_01_01::Models::StorageAccountListResult
        end
        def encryption_service
          Azure::ARM::Storage::Api_2016_01_01::Models::EncryptionService
        end
        def storage_account_list_keys_result
          Azure::ARM::Storage::Api_2016_01_01::Models::StorageAccountListKeysResult
        end
        def encryption
          Azure::ARM::Storage::Api_2016_01_01::Models::Encryption
        end
        def storage_account_regenerate_key_parameters
          Azure::ARM::Storage::Api_2016_01_01::Models::StorageAccountRegenerateKeyParameters
        end
        def endpoints
          Azure::ARM::Storage::Api_2016_01_01::Models::Endpoints
        end
        def storage_account_update_parameters
          Azure::ARM::Storage::Api_2016_01_01::Models::StorageAccountUpdateParameters
        end
        def custom_domain
          Azure::ARM::Storage::Api_2016_01_01::Models::CustomDomain
        end
        def usage_name
          Azure::ARM::Storage::Api_2016_01_01::Models::UsageName
        end
        def storage_account_create_parameters
          Azure::ARM::Storage::Api_2016_01_01::Models::StorageAccountCreateParameters
        end
        def usage
          Azure::ARM::Storage::Api_2016_01_01::Models::Usage
        end
        def encryption_services
          Azure::ARM::Storage::Api_2016_01_01::Models::EncryptionServices
        end
        def usage_list_result
          Azure::ARM::Storage::Api_2016_01_01::Models::UsageListResult
        end
        def check_name_availability_result
          Azure::ARM::Storage::Api_2016_01_01::Models::CheckNameAvailabilityResult
        end
        def storage_account
          Azure::ARM::Storage::Api_2016_01_01::Models::StorageAccount
        end
        def reason
          Azure::ARM::Storage::Api_2016_01_01::Models::Reason
        end
        def sku_name
          Azure::ARM::Storage::Api_2016_01_01::Models::SkuName
        end
        def sku_tier
          Azure::ARM::Storage::Api_2016_01_01::Models::SkuTier
        end
        def access_tier
          Azure::ARM::Storage::Api_2016_01_01::Models::AccessTier
        end
        def kind
          Azure::ARM::Storage::Api_2016_01_01::Models::Kind
        end
        def provisioning_state
          Azure::ARM::Storage::Api_2016_01_01::Models::ProvisioningState
        end
        def account_status
          Azure::ARM::Storage::Api_2016_01_01::Models::AccountStatus
        end
        def key_permission
          Azure::ARM::Storage::Api_2016_01_01::Models::KeyPermission
        end
        def usage_unit
          Azure::ARM::Storage::Api_2016_01_01::Models::UsageUnit
        end
      end
    end
  end
end
