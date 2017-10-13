# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_storage'

module Azure::Storage::Profiles::V2017_03_09::Mgmt
    StorageAccounts = Azure::Storage::Mgmt::V2015_06_15::StorageAccounts
    UsageOperations = Azure::Storage::Mgmt::V2015_06_15::UsageOperations

    module Models
      StorageAccountListResult = Azure::Storage::Mgmt::V2015_06_15::Models::StorageAccountListResult
      StorageAccountCheckNameAvailabilityParameters = Azure::Storage::Mgmt::V2015_06_15::Models::StorageAccountCheckNameAvailabilityParameters
      StorageAccountUpdateParameters = Azure::Storage::Mgmt::V2015_06_15::Models::StorageAccountUpdateParameters
      StorageAccountCreateParameters = Azure::Storage::Mgmt::V2015_06_15::Models::StorageAccountCreateParameters
      StorageAccountRegenerateKeyParameters = Azure::Storage::Mgmt::V2015_06_15::Models::StorageAccountRegenerateKeyParameters
      CustomDomain = Azure::Storage::Mgmt::V2015_06_15::Models::CustomDomain
      UsageName = Azure::Storage::Mgmt::V2015_06_15::Models::UsageName
      StorageAccountKeys = Azure::Storage::Mgmt::V2015_06_15::Models::StorageAccountKeys
      Usage = Azure::Storage::Mgmt::V2015_06_15::Models::Usage
      Endpoints = Azure::Storage::Mgmt::V2015_06_15::Models::Endpoints
      UsageListResult = Azure::Storage::Mgmt::V2015_06_15::Models::UsageListResult
      CheckNameAvailabilityResult = Azure::Storage::Mgmt::V2015_06_15::Models::CheckNameAvailabilityResult
      Resource = Azure::Storage::Mgmt::V2015_06_15::Models::Resource
      StorageAccount = Azure::Storage::Mgmt::V2015_06_15::Models::StorageAccount
      Reason = Azure::Storage::Mgmt::V2015_06_15::Models::Reason
      AccountType = Azure::Storage::Mgmt::V2015_06_15::Models::AccountType
      ProvisioningState = Azure::Storage::Mgmt::V2015_06_15::Models::ProvisioningState
      AccountStatus = Azure::Storage::Mgmt::V2015_06_15::Models::AccountStatus
      UsageUnit = Azure::Storage::Mgmt::V2015_06_15::Models::UsageUnit
    end

    #
    # Storage
    #
    class StorageClass
      attr_reader :storage_accounts, :usage_operations, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        if options.is_a?(Hash) && options.length == 0
          @options = setup_options
        else
          @options = options
        end

        reset!(options)

        @configurable, @base_url, @options = self, nil, nil

        client_0 = Azure::Storage::Mgmt::V2015_06_15::StorageManagementClient.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        @storage_accounts = client_0.storage_accounts
        @usage_operations = client_0.usage_operations

        @model_classes = ModelClasses.new
      end

      class ModelClasses
        def storage_account_list_result
          Azure::Storage::Mgmt::V2015_06_15::Models::StorageAccountListResult
        end
        def storage_account_check_name_availability_parameters
          Azure::Storage::Mgmt::V2015_06_15::Models::StorageAccountCheckNameAvailabilityParameters
        end
        def storage_account_update_parameters
          Azure::Storage::Mgmt::V2015_06_15::Models::StorageAccountUpdateParameters
        end
        def storage_account_create_parameters
          Azure::Storage::Mgmt::V2015_06_15::Models::StorageAccountCreateParameters
        end
        def storage_account_regenerate_key_parameters
          Azure::Storage::Mgmt::V2015_06_15::Models::StorageAccountRegenerateKeyParameters
        end
        def custom_domain
          Azure::Storage::Mgmt::V2015_06_15::Models::CustomDomain
        end
        def usage_name
          Azure::Storage::Mgmt::V2015_06_15::Models::UsageName
        end
        def storage_account_keys
          Azure::Storage::Mgmt::V2015_06_15::Models::StorageAccountKeys
        end
        def usage
          Azure::Storage::Mgmt::V2015_06_15::Models::Usage
        end
        def endpoints
          Azure::Storage::Mgmt::V2015_06_15::Models::Endpoints
        end
        def usage_list_result
          Azure::Storage::Mgmt::V2015_06_15::Models::UsageListResult
        end
        def check_name_availability_result
          Azure::Storage::Mgmt::V2015_06_15::Models::CheckNameAvailabilityResult
        end
        def resource
          Azure::Storage::Mgmt::V2015_06_15::Models::Resource
        end
        def storage_account
          Azure::Storage::Mgmt::V2015_06_15::Models::StorageAccount
        end
        def reason
          Azure::Storage::Mgmt::V2015_06_15::Models::Reason
        end
        def account_type
          Azure::Storage::Mgmt::V2015_06_15::Models::AccountType
        end
        def provisioning_state
          Azure::Storage::Mgmt::V2015_06_15::Models::ProvisioningState
        end
        def account_status
          Azure::Storage::Mgmt::V2015_06_15::Models::AccountStatus
        end
        def usage_unit
          Azure::Storage::Mgmt::V2015_06_15::Models::UsageUnit
        end
      end
    end
end
