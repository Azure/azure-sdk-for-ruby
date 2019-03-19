# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_storage'

module Azure::Profiles::V2017_03_09
  module Storage
    module Mgmt
      UsageOperations = Azure::Storage::Mgmt::V2016_01_01::UsageOperations
      StorageAccounts = Azure::Storage::Mgmt::V2016_01_01::StorageAccounts

      module Models
        UsageUnit = Azure::Storage::Mgmt::V2016_01_01::Models::UsageUnit
        Sku = Azure::Storage::Mgmt::V2016_01_01::Models::Sku
        UsageName = Azure::Storage::Mgmt::V2016_01_01::Models::UsageName
        KeyPermission = Azure::Storage::Mgmt::V2016_01_01::Models::KeyPermission
        StorageAccountCreateParameters = Azure::Storage::Mgmt::V2016_01_01::Models::StorageAccountCreateParameters
        StorageAccountUpdateParameters = Azure::Storage::Mgmt::V2016_01_01::Models::StorageAccountUpdateParameters
        Resource = Azure::Storage::Mgmt::V2016_01_01::Models::Resource
        ProvisioningState = Azure::Storage::Mgmt::V2016_01_01::Models::ProvisioningState
        StorageAccountCheckNameAvailabilityParameters = Azure::Storage::Mgmt::V2016_01_01::Models::StorageAccountCheckNameAvailabilityParameters
        StorageAccountKey = Azure::Storage::Mgmt::V2016_01_01::Models::StorageAccountKey
        Reason = Azure::Storage::Mgmt::V2016_01_01::Models::Reason
        StorageAccountListResult = Azure::Storage::Mgmt::V2016_01_01::Models::StorageAccountListResult
        EncryptionService = Azure::Storage::Mgmt::V2016_01_01::Models::EncryptionService
        StorageAccountListKeysResult = Azure::Storage::Mgmt::V2016_01_01::Models::StorageAccountListKeysResult
        Encryption = Azure::Storage::Mgmt::V2016_01_01::Models::Encryption
        StorageAccountRegenerateKeyParameters = Azure::Storage::Mgmt::V2016_01_01::Models::StorageAccountRegenerateKeyParameters
        Endpoints = Azure::Storage::Mgmt::V2016_01_01::Models::Endpoints
        CustomDomain = Azure::Storage::Mgmt::V2016_01_01::Models::CustomDomain
        EncryptionServices = Azure::Storage::Mgmt::V2016_01_01::Models::EncryptionServices
        UsageListResult = Azure::Storage::Mgmt::V2016_01_01::Models::UsageListResult
        Usage = Azure::Storage::Mgmt::V2016_01_01::Models::Usage
        SkuTier = Azure::Storage::Mgmt::V2016_01_01::Models::SkuTier
        StorageAccount = Azure::Storage::Mgmt::V2016_01_01::Models::StorageAccount
        SkuName = Azure::Storage::Mgmt::V2016_01_01::Models::SkuName
        CheckNameAvailabilityResult = Azure::Storage::Mgmt::V2016_01_01::Models::CheckNameAvailabilityResult
        Kind = Azure::Storage::Mgmt::V2016_01_01::Models::Kind
        AccountStatus = Azure::Storage::Mgmt::V2016_01_01::Models::AccountStatus
        AccessTier = Azure::Storage::Mgmt::V2016_01_01::Models::AccessTier
      end

      class StorageManagementClass
        attr_reader :usage_operations, :storage_accounts, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Storage::Mgmt::V2016_01_01::StorageManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @usage_operations = @client_0.usage_operations
          @storage_accounts = @client_0.storage_accounts

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/V2017_03_09/Storage/Mgmt"
          client.add_user_agent_information(profile_information)
        end

        def method_missing(method, *args)
          if @client_0.respond_to?method
            @client_0.send(method, *args)
          else
            super
          end
        end

        class ModelClasses
          def usage_unit
            Azure::Storage::Mgmt::V2016_01_01::Models::UsageUnit
          end
          def sku
            Azure::Storage::Mgmt::V2016_01_01::Models::Sku
          end
          def usage_name
            Azure::Storage::Mgmt::V2016_01_01::Models::UsageName
          end
          def key_permission
            Azure::Storage::Mgmt::V2016_01_01::Models::KeyPermission
          end
          def storage_account_create_parameters
            Azure::Storage::Mgmt::V2016_01_01::Models::StorageAccountCreateParameters
          end
          def storage_account_update_parameters
            Azure::Storage::Mgmt::V2016_01_01::Models::StorageAccountUpdateParameters
          end
          def resource
            Azure::Storage::Mgmt::V2016_01_01::Models::Resource
          end
          def provisioning_state
            Azure::Storage::Mgmt::V2016_01_01::Models::ProvisioningState
          end
          def storage_account_check_name_availability_parameters
            Azure::Storage::Mgmt::V2016_01_01::Models::StorageAccountCheckNameAvailabilityParameters
          end
          def storage_account_key
            Azure::Storage::Mgmt::V2016_01_01::Models::StorageAccountKey
          end
          def reason
            Azure::Storage::Mgmt::V2016_01_01::Models::Reason
          end
          def storage_account_list_result
            Azure::Storage::Mgmt::V2016_01_01::Models::StorageAccountListResult
          end
          def encryption_service
            Azure::Storage::Mgmt::V2016_01_01::Models::EncryptionService
          end
          def storage_account_list_keys_result
            Azure::Storage::Mgmt::V2016_01_01::Models::StorageAccountListKeysResult
          end
          def encryption
            Azure::Storage::Mgmt::V2016_01_01::Models::Encryption
          end
          def storage_account_regenerate_key_parameters
            Azure::Storage::Mgmt::V2016_01_01::Models::StorageAccountRegenerateKeyParameters
          end
          def endpoints
            Azure::Storage::Mgmt::V2016_01_01::Models::Endpoints
          end
          def custom_domain
            Azure::Storage::Mgmt::V2016_01_01::Models::CustomDomain
          end
          def encryption_services
            Azure::Storage::Mgmt::V2016_01_01::Models::EncryptionServices
          end
          def usage_list_result
            Azure::Storage::Mgmt::V2016_01_01::Models::UsageListResult
          end
          def usage
            Azure::Storage::Mgmt::V2016_01_01::Models::Usage
          end
          def sku_tier
            Azure::Storage::Mgmt::V2016_01_01::Models::SkuTier
          end
          def storage_account
            Azure::Storage::Mgmt::V2016_01_01::Models::StorageAccount
          end
          def sku_name
            Azure::Storage::Mgmt::V2016_01_01::Models::SkuName
          end
          def check_name_availability_result
            Azure::Storage::Mgmt::V2016_01_01::Models::CheckNameAvailabilityResult
          end
          def kind
            Azure::Storage::Mgmt::V2016_01_01::Models::Kind
          end
          def account_status
            Azure::Storage::Mgmt::V2016_01_01::Models::AccountStatus
          end
          def access_tier
            Azure::Storage::Mgmt::V2016_01_01::Models::AccessTier
          end
        end
      end
    end
  end
end
