# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_datalake_store'


module Azure::Profiles::DataLakeStoreModule::Management::Profile_2015_10_01_Preview
  module DataLakeStore
    Account = Azure::ARM::DataLakeStore::Api_2015_10_01_preview::Account

    module Models
      DataLakeStoreAccountProperties = Azure::ARM::DataLakeStore::Api_2015_10_01_preview::Models::DataLakeStoreAccountProperties
      DataLakeStoreAccount = Azure::ARM::DataLakeStore::Api_2015_10_01_preview::Models::DataLakeStoreAccount
      FirewallRule = Azure::ARM::DataLakeStore::Api_2015_10_01_preview::Models::FirewallRule
      DataLakeStoreAccountListResult = Azure::ARM::DataLakeStore::Api_2015_10_01_preview::Models::DataLakeStoreAccountListResult
      EncryptionIdentity = Azure::ARM::DataLakeStore::Api_2015_10_01_preview::Models::EncryptionIdentity
      ErrorDetails = Azure::ARM::DataLakeStore::Api_2015_10_01_preview::Models::ErrorDetails
      EncryptionConfig = Azure::ARM::DataLakeStore::Api_2015_10_01_preview::Models::EncryptionConfig
      InnerError = Azure::ARM::DataLakeStore::Api_2015_10_01_preview::Models::InnerError
      DataLakeStoreFirewallRuleListResult = Azure::ARM::DataLakeStore::Api_2015_10_01_preview::Models::DataLakeStoreFirewallRuleListResult
      Error = Azure::ARM::DataLakeStore::Api_2015_10_01_preview::Models::Error
      FirewallRuleProperties = Azure::ARM::DataLakeStore::Api_2015_10_01_preview::Models::FirewallRuleProperties
      AzureAsyncOperationResult = Azure::ARM::DataLakeStore::Api_2015_10_01_preview::Models::AzureAsyncOperationResult
      KeyVaultMetaInfo = Azure::ARM::DataLakeStore::Api_2015_10_01_preview::Models::KeyVaultMetaInfo
      EncryptionIdentityType = Azure::ARM::DataLakeStore::Api_2015_10_01_preview::Models::EncryptionIdentityType
      EncryptionConfigType = Azure::ARM::DataLakeStore::Api_2015_10_01_preview::Models::EncryptionConfigType
      DataLakeStoreAccountStatus = Azure::ARM::DataLakeStore::Api_2015_10_01_preview::Models::DataLakeStoreAccountStatus
      DataLakeStoreAccountState = Azure::ARM::DataLakeStore::Api_2015_10_01_preview::Models::DataLakeStoreAccountState
      EncryptionState = Azure::ARM::DataLakeStore::Api_2015_10_01_preview::Models::EncryptionState
      EncryptionProvisioningState = Azure::ARM::DataLakeStore::Api_2015_10_01_preview::Models::EncryptionProvisioningState
      OperationStatus = Azure::ARM::DataLakeStore::Api_2015_10_01_preview::Models::OperationStatus
    end

    #
    # DataLakeStore
    #
    class DataLakeStoreClass
      attr_accessor :account, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::DataLakeStore::Api_2015_10_01_preview::DataLakeStoreAccountManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.account = Azure::ARM::DataLakeStore::Api_2015_10_01_preview::Account.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2015-10-01-preview'
            client = Azure::ARM::DataLakeStore::Api_2015_10_01_preview::DataLakeStoreAccountManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def data_lake_store_account_properties
          Azure::ARM::DataLakeStore::Api_2015_10_01_preview::Models::DataLakeStoreAccountProperties
        end
        def data_lake_store_account
          Azure::ARM::DataLakeStore::Api_2015_10_01_preview::Models::DataLakeStoreAccount
        end
        def firewall_rule
          Azure::ARM::DataLakeStore::Api_2015_10_01_preview::Models::FirewallRule
        end
        def data_lake_store_account_list_result
          Azure::ARM::DataLakeStore::Api_2015_10_01_preview::Models::DataLakeStoreAccountListResult
        end
        def encryption_identity
          Azure::ARM::DataLakeStore::Api_2015_10_01_preview::Models::EncryptionIdentity
        end
        def error_details
          Azure::ARM::DataLakeStore::Api_2015_10_01_preview::Models::ErrorDetails
        end
        def encryption_config
          Azure::ARM::DataLakeStore::Api_2015_10_01_preview::Models::EncryptionConfig
        end
        def inner_error
          Azure::ARM::DataLakeStore::Api_2015_10_01_preview::Models::InnerError
        end
        def data_lake_store_firewall_rule_list_result
          Azure::ARM::DataLakeStore::Api_2015_10_01_preview::Models::DataLakeStoreFirewallRuleListResult
        end
        def error
          Azure::ARM::DataLakeStore::Api_2015_10_01_preview::Models::Error
        end
        def firewall_rule_properties
          Azure::ARM::DataLakeStore::Api_2015_10_01_preview::Models::FirewallRuleProperties
        end
        def azure_async_operation_result
          Azure::ARM::DataLakeStore::Api_2015_10_01_preview::Models::AzureAsyncOperationResult
        end
        def key_vault_meta_info
          Azure::ARM::DataLakeStore::Api_2015_10_01_preview::Models::KeyVaultMetaInfo
        end
        def encryption_identity_type
          Azure::ARM::DataLakeStore::Api_2015_10_01_preview::Models::EncryptionIdentityType
        end
        def encryption_config_type
          Azure::ARM::DataLakeStore::Api_2015_10_01_preview::Models::EncryptionConfigType
        end
        def data_lake_store_account_status
          Azure::ARM::DataLakeStore::Api_2015_10_01_preview::Models::DataLakeStoreAccountStatus
        end
        def data_lake_store_account_state
          Azure::ARM::DataLakeStore::Api_2015_10_01_preview::Models::DataLakeStoreAccountState
        end
        def encryption_state
          Azure::ARM::DataLakeStore::Api_2015_10_01_preview::Models::EncryptionState
        end
        def encryption_provisioning_state
          Azure::ARM::DataLakeStore::Api_2015_10_01_preview::Models::EncryptionProvisioningState
        end
        def operation_status
          Azure::ARM::DataLakeStore::Api_2015_10_01_preview::Models::OperationStatus
        end
      end
    end
  end
end
