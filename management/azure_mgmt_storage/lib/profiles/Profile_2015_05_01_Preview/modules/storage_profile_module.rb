# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_storage'


module Azure::Profiles::StorageModule::Management::Profile_2015_05_01_Preview
  module Storage
    StorageAccounts = Azure::ARM::Storage::Api_2015_05_01_preview::StorageAccounts
    UsageOperations = Azure::ARM::Storage::Api_2015_05_01_preview::UsageOperations

    module Models
      StorageAccountListResult = Azure::ARM::Storage::Api_2015_05_01_preview::Models::StorageAccountListResult
      StorageAccountCheckNameAvailabilityParameters = Azure::ARM::Storage::Api_2015_05_01_preview::Models::StorageAccountCheckNameAvailabilityParameters
      CheckNameAvailabilityResult = Azure::ARM::Storage::Api_2015_05_01_preview::Models::CheckNameAvailabilityResult
      CustomDomain = Azure::ARM::Storage::Api_2015_05_01_preview::Models::CustomDomain
      StorageAccountRegenerateKeyParameters = Azure::ARM::Storage::Api_2015_05_01_preview::Models::StorageAccountRegenerateKeyParameters
      StorageAccountKeys = Azure::ARM::Storage::Api_2015_05_01_preview::Models::StorageAccountKeys
      UsageName = Azure::ARM::Storage::Api_2015_05_01_preview::Models::UsageName
      Usage = Azure::ARM::Storage::Api_2015_05_01_preview::Models::Usage
      Endpoints = Azure::ARM::Storage::Api_2015_05_01_preview::Models::Endpoints
      UsageListResult = Azure::ARM::Storage::Api_2015_05_01_preview::Models::UsageListResult
      StorageAccountCreateParameters = Azure::ARM::Storage::Api_2015_05_01_preview::Models::StorageAccountCreateParameters
      StorageAccount = Azure::ARM::Storage::Api_2015_05_01_preview::Models::StorageAccount
      StorageAccountUpdateParameters = Azure::ARM::Storage::Api_2015_05_01_preview::Models::StorageAccountUpdateParameters
      Reason = Azure::ARM::Storage::Api_2015_05_01_preview::Models::Reason
      AccountType = Azure::ARM::Storage::Api_2015_05_01_preview::Models::AccountType
      ProvisioningState = Azure::ARM::Storage::Api_2015_05_01_preview::Models::ProvisioningState
      AccountStatus = Azure::ARM::Storage::Api_2015_05_01_preview::Models::AccountStatus
      KeyName = Azure::ARM::Storage::Api_2015_05_01_preview::Models::KeyName
      UsageUnit = Azure::ARM::Storage::Api_2015_05_01_preview::Models::UsageUnit
    end

    #
    # Storage
    #
    class StorageClass
      attr_accessor :storage_accounts, :usage_operations, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::Storage::Api_2015_05_01_preview::StorageManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.storage_accounts = Azure::ARM::Storage::Api_2015_05_01_preview::StorageAccounts.new(client)
        self.usage_operations = Azure::ARM::Storage::Api_2015_05_01_preview::UsageOperations.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2015-05-01-preview'
            client = Azure::ARM::Storage::Api_2015_05_01_preview::StorageManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def storage_account_list_result
          Azure::ARM::Storage::Api_2015_05_01_preview::Models::StorageAccountListResult
        end
        def storage_account_check_name_availability_parameters
          Azure::ARM::Storage::Api_2015_05_01_preview::Models::StorageAccountCheckNameAvailabilityParameters
        end
        def check_name_availability_result
          Azure::ARM::Storage::Api_2015_05_01_preview::Models::CheckNameAvailabilityResult
        end
        def custom_domain
          Azure::ARM::Storage::Api_2015_05_01_preview::Models::CustomDomain
        end
        def storage_account_regenerate_key_parameters
          Azure::ARM::Storage::Api_2015_05_01_preview::Models::StorageAccountRegenerateKeyParameters
        end
        def storage_account_keys
          Azure::ARM::Storage::Api_2015_05_01_preview::Models::StorageAccountKeys
        end
        def usage_name
          Azure::ARM::Storage::Api_2015_05_01_preview::Models::UsageName
        end
        def usage
          Azure::ARM::Storage::Api_2015_05_01_preview::Models::Usage
        end
        def endpoints
          Azure::ARM::Storage::Api_2015_05_01_preview::Models::Endpoints
        end
        def usage_list_result
          Azure::ARM::Storage::Api_2015_05_01_preview::Models::UsageListResult
        end
        def storage_account_create_parameters
          Azure::ARM::Storage::Api_2015_05_01_preview::Models::StorageAccountCreateParameters
        end
        def storage_account
          Azure::ARM::Storage::Api_2015_05_01_preview::Models::StorageAccount
        end
        def storage_account_update_parameters
          Azure::ARM::Storage::Api_2015_05_01_preview::Models::StorageAccountUpdateParameters
        end
        def reason
          Azure::ARM::Storage::Api_2015_05_01_preview::Models::Reason
        end
        def account_type
          Azure::ARM::Storage::Api_2015_05_01_preview::Models::AccountType
        end
        def provisioning_state
          Azure::ARM::Storage::Api_2015_05_01_preview::Models::ProvisioningState
        end
        def account_status
          Azure::ARM::Storage::Api_2015_05_01_preview::Models::AccountStatus
        end
        def key_name
          Azure::ARM::Storage::Api_2015_05_01_preview::Models::KeyName
        end
        def usage_unit
          Azure::ARM::Storage::Api_2015_05_01_preview::Models::UsageUnit
        end
      end
    end
  end
end
