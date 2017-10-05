# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_storage'


module Azure::Profiles::StorageModule::Management::Profile_2015_06_15
  module Storage
    StorageAccounts = Azure::ARM::Storage::Api_2015_06_15::StorageAccounts
    UsageOperations = Azure::ARM::Storage::Api_2015_06_15::UsageOperations

    module Models
      StorageAccountListResult = Azure::ARM::Storage::Api_2015_06_15::Models::StorageAccountListResult
      StorageAccountCheckNameAvailabilityParameters = Azure::ARM::Storage::Api_2015_06_15::Models::StorageAccountCheckNameAvailabilityParameters
      StorageAccountUpdateParameters = Azure::ARM::Storage::Api_2015_06_15::Models::StorageAccountUpdateParameters
      StorageAccountCreateParameters = Azure::ARM::Storage::Api_2015_06_15::Models::StorageAccountCreateParameters
      StorageAccountRegenerateKeyParameters = Azure::ARM::Storage::Api_2015_06_15::Models::StorageAccountRegenerateKeyParameters
      CustomDomain = Azure::ARM::Storage::Api_2015_06_15::Models::CustomDomain
      UsageName = Azure::ARM::Storage::Api_2015_06_15::Models::UsageName
      StorageAccountKeys = Azure::ARM::Storage::Api_2015_06_15::Models::StorageAccountKeys
      Usage = Azure::ARM::Storage::Api_2015_06_15::Models::Usage
      Endpoints = Azure::ARM::Storage::Api_2015_06_15::Models::Endpoints
      UsageListResult = Azure::ARM::Storage::Api_2015_06_15::Models::UsageListResult
      CheckNameAvailabilityResult = Azure::ARM::Storage::Api_2015_06_15::Models::CheckNameAvailabilityResult
      StorageAccount = Azure::ARM::Storage::Api_2015_06_15::Models::StorageAccount
      Reason = Azure::ARM::Storage::Api_2015_06_15::Models::Reason
      AccountType = Azure::ARM::Storage::Api_2015_06_15::Models::AccountType
      ProvisioningState = Azure::ARM::Storage::Api_2015_06_15::Models::ProvisioningState
      AccountStatus = Azure::ARM::Storage::Api_2015_06_15::Models::AccountStatus
      UsageUnit = Azure::ARM::Storage::Api_2015_06_15::Models::UsageUnit
    end

    #
    # Storage
    #
    class StorageClass
      attr_accessor :storage_accounts, :usage_operations, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::Storage::Api_2015_06_15::StorageManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.storage_accounts = Azure::ARM::Storage::Api_2015_06_15::StorageAccounts.new(client)
        self.usage_operations = Azure::ARM::Storage::Api_2015_06_15::UsageOperations.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2015-06-15'
            client = Azure::ARM::Storage::Api_2015_06_15::StorageManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def storage_account_list_result
          Azure::ARM::Storage::Api_2015_06_15::Models::StorageAccountListResult
        end
        def storage_account_check_name_availability_parameters
          Azure::ARM::Storage::Api_2015_06_15::Models::StorageAccountCheckNameAvailabilityParameters
        end
        def storage_account_update_parameters
          Azure::ARM::Storage::Api_2015_06_15::Models::StorageAccountUpdateParameters
        end
        def storage_account_create_parameters
          Azure::ARM::Storage::Api_2015_06_15::Models::StorageAccountCreateParameters
        end
        def storage_account_regenerate_key_parameters
          Azure::ARM::Storage::Api_2015_06_15::Models::StorageAccountRegenerateKeyParameters
        end
        def custom_domain
          Azure::ARM::Storage::Api_2015_06_15::Models::CustomDomain
        end
        def usage_name
          Azure::ARM::Storage::Api_2015_06_15::Models::UsageName
        end
        def storage_account_keys
          Azure::ARM::Storage::Api_2015_06_15::Models::StorageAccountKeys
        end
        def usage
          Azure::ARM::Storage::Api_2015_06_15::Models::Usage
        end
        def endpoints
          Azure::ARM::Storage::Api_2015_06_15::Models::Endpoints
        end
        def usage_list_result
          Azure::ARM::Storage::Api_2015_06_15::Models::UsageListResult
        end
        def check_name_availability_result
          Azure::ARM::Storage::Api_2015_06_15::Models::CheckNameAvailabilityResult
        end
        def storage_account
          Azure::ARM::Storage::Api_2015_06_15::Models::StorageAccount
        end
        def reason
          Azure::ARM::Storage::Api_2015_06_15::Models::Reason
        end
        def account_type
          Azure::ARM::Storage::Api_2015_06_15::Models::AccountType
        end
        def provisioning_state
          Azure::ARM::Storage::Api_2015_06_15::Models::ProvisioningState
        end
        def account_status
          Azure::ARM::Storage::Api_2015_06_15::Models::AccountStatus
        end
        def usage_unit
          Azure::ARM::Storage::Api_2015_06_15::Models::UsageUnit
        end
      end
    end
  end
end
