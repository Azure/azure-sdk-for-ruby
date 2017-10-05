# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_datalake_store'


module Azure::Profiles::DataLakeStoreModule::Management::Profile_2016_11_01
  module DataLakeStore
    FirewallRules = Azure::ARM::DataLakeStore::Api_2016_11_01::FirewallRules
    TrustedIdProviders = Azure::ARM::DataLakeStore::Api_2016_11_01::TrustedIdProviders
    Account = Azure::ARM::DataLakeStore::Api_2016_11_01::Account

    module Models
      UpdateKeyVaultMetaInfo = Azure::ARM::DataLakeStore::Api_2016_11_01::Models::UpdateKeyVaultMetaInfo
      UpdateFirewallRuleParameters = Azure::ARM::DataLakeStore::Api_2016_11_01::Models::UpdateFirewallRuleParameters
      UpdateEncryptionConfig = Azure::ARM::DataLakeStore::Api_2016_11_01::Models::UpdateEncryptionConfig
      UpdateTrustedIdProviderParameters = Azure::ARM::DataLakeStore::Api_2016_11_01::Models::UpdateTrustedIdProviderParameters
      DataLakeStoreAccountUpdateParameters = Azure::ARM::DataLakeStore::Api_2016_11_01::Models::DataLakeStoreAccountUpdateParameters
      DataLakeStoreTrustedIdProviderListResult = Azure::ARM::DataLakeStore::Api_2016_11_01::Models::DataLakeStoreTrustedIdProviderListResult
      DataLakeStoreFirewallRuleListResult = Azure::ARM::DataLakeStore::Api_2016_11_01::Models::DataLakeStoreFirewallRuleListResult
      EncryptionIdentity = Azure::ARM::DataLakeStore::Api_2016_11_01::Models::EncryptionIdentity
      EncryptionConfig = Azure::ARM::DataLakeStore::Api_2016_11_01::Models::EncryptionConfig
      SubResource = Azure::ARM::DataLakeStore::Api_2016_11_01::Models::SubResource
      KeyVaultMetaInfo = Azure::ARM::DataLakeStore::Api_2016_11_01::Models::KeyVaultMetaInfo
      DataLakeStoreAccountListResult = Azure::ARM::DataLakeStore::Api_2016_11_01::Models::DataLakeStoreAccountListResult
      ErrorDetails = Azure::ARM::DataLakeStore::Api_2016_11_01::Models::ErrorDetails
      FirewallRule = Azure::ARM::DataLakeStore::Api_2016_11_01::Models::FirewallRule
      TrustedIdProvider = Azure::ARM::DataLakeStore::Api_2016_11_01::Models::TrustedIdProvider
      DataLakeStoreAccount = Azure::ARM::DataLakeStore::Api_2016_11_01::Models::DataLakeStoreAccount
      DataLakeStoreAccountBasic = Azure::ARM::DataLakeStore::Api_2016_11_01::Models::DataLakeStoreAccountBasic
      EncryptionConfigType = Azure::ARM::DataLakeStore::Api_2016_11_01::Models::EncryptionConfigType
      EncryptionState = Azure::ARM::DataLakeStore::Api_2016_11_01::Models::EncryptionState
      EncryptionProvisioningState = Azure::ARM::DataLakeStore::Api_2016_11_01::Models::EncryptionProvisioningState
      FirewallState = Azure::ARM::DataLakeStore::Api_2016_11_01::Models::FirewallState
      TrustedIdProviderState = Azure::ARM::DataLakeStore::Api_2016_11_01::Models::TrustedIdProviderState
      TierType = Azure::ARM::DataLakeStore::Api_2016_11_01::Models::TierType
      FirewallAllowAzureIpsState = Azure::ARM::DataLakeStore::Api_2016_11_01::Models::FirewallAllowAzureIpsState
      DataLakeStoreAccountStatus = Azure::ARM::DataLakeStore::Api_2016_11_01::Models::DataLakeStoreAccountStatus
      DataLakeStoreAccountState = Azure::ARM::DataLakeStore::Api_2016_11_01::Models::DataLakeStoreAccountState
    end

    #
    # DataLakeStore
    #
    class DataLakeStoreClass
      attr_accessor :firewall_rules, :trusted_id_providers, :account, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::DataLakeStore::Api_2016_11_01::DataLakeStoreAccountManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.firewall_rules = Azure::ARM::DataLakeStore::Api_2016_11_01::FirewallRules.new(client)
        self.trusted_id_providers = Azure::ARM::DataLakeStore::Api_2016_11_01::TrustedIdProviders.new(client)
        self.account = Azure::ARM::DataLakeStore::Api_2016_11_01::Account.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2016-11-01'
            client = Azure::ARM::DataLakeStore::Api_2016_11_01::DataLakeStoreAccountManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def update_key_vault_meta_info
          Azure::ARM::DataLakeStore::Api_2016_11_01::Models::UpdateKeyVaultMetaInfo
        end
        def update_firewall_rule_parameters
          Azure::ARM::DataLakeStore::Api_2016_11_01::Models::UpdateFirewallRuleParameters
        end
        def update_encryption_config
          Azure::ARM::DataLakeStore::Api_2016_11_01::Models::UpdateEncryptionConfig
        end
        def update_trusted_id_provider_parameters
          Azure::ARM::DataLakeStore::Api_2016_11_01::Models::UpdateTrustedIdProviderParameters
        end
        def data_lake_store_account_update_parameters
          Azure::ARM::DataLakeStore::Api_2016_11_01::Models::DataLakeStoreAccountUpdateParameters
        end
        def data_lake_store_trusted_id_provider_list_result
          Azure::ARM::DataLakeStore::Api_2016_11_01::Models::DataLakeStoreTrustedIdProviderListResult
        end
        def data_lake_store_firewall_rule_list_result
          Azure::ARM::DataLakeStore::Api_2016_11_01::Models::DataLakeStoreFirewallRuleListResult
        end
        def encryption_identity
          Azure::ARM::DataLakeStore::Api_2016_11_01::Models::EncryptionIdentity
        end
        def encryption_config
          Azure::ARM::DataLakeStore::Api_2016_11_01::Models::EncryptionConfig
        end
        def sub_resource
          Azure::ARM::DataLakeStore::Api_2016_11_01::Models::SubResource
        end
        def key_vault_meta_info
          Azure::ARM::DataLakeStore::Api_2016_11_01::Models::KeyVaultMetaInfo
        end
        def data_lake_store_account_list_result
          Azure::ARM::DataLakeStore::Api_2016_11_01::Models::DataLakeStoreAccountListResult
        end
        def error_details
          Azure::ARM::DataLakeStore::Api_2016_11_01::Models::ErrorDetails
        end
        def firewall_rule
          Azure::ARM::DataLakeStore::Api_2016_11_01::Models::FirewallRule
        end
        def trusted_id_provider
          Azure::ARM::DataLakeStore::Api_2016_11_01::Models::TrustedIdProvider
        end
        def data_lake_store_account
          Azure::ARM::DataLakeStore::Api_2016_11_01::Models::DataLakeStoreAccount
        end
        def data_lake_store_account_basic
          Azure::ARM::DataLakeStore::Api_2016_11_01::Models::DataLakeStoreAccountBasic
        end
        def encryption_config_type
          Azure::ARM::DataLakeStore::Api_2016_11_01::Models::EncryptionConfigType
        end
        def encryption_state
          Azure::ARM::DataLakeStore::Api_2016_11_01::Models::EncryptionState
        end
        def encryption_provisioning_state
          Azure::ARM::DataLakeStore::Api_2016_11_01::Models::EncryptionProvisioningState
        end
        def firewall_state
          Azure::ARM::DataLakeStore::Api_2016_11_01::Models::FirewallState
        end
        def trusted_id_provider_state
          Azure::ARM::DataLakeStore::Api_2016_11_01::Models::TrustedIdProviderState
        end
        def tier_type
          Azure::ARM::DataLakeStore::Api_2016_11_01::Models::TierType
        end
        def firewall_allow_azure_ips_state
          Azure::ARM::DataLakeStore::Api_2016_11_01::Models::FirewallAllowAzureIpsState
        end
        def data_lake_store_account_status
          Azure::ARM::DataLakeStore::Api_2016_11_01::Models::DataLakeStoreAccountStatus
        end
        def data_lake_store_account_state
          Azure::ARM::DataLakeStore::Api_2016_11_01::Models::DataLakeStoreAccountState
        end
      end
    end
  end
end
