# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_datalake_store'

module Azure::Profiles::Latest
  module DataLakeStore
    module Mgmt
      FirewallRules = Azure::DataLakeStore::Mgmt::V2016_11_01::FirewallRules
      Locations = Azure::DataLakeStore::Mgmt::V2016_11_01::Locations
      TrustedIdProviders = Azure::DataLakeStore::Mgmt::V2016_11_01::TrustedIdProviders
      Operations = Azure::DataLakeStore::Mgmt::V2016_11_01::Operations
      Accounts = Azure::DataLakeStore::Mgmt::V2016_11_01::Accounts

      module Models
        CheckNameAvailabilityParameters = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::CheckNameAvailabilityParameters
        CapabilityInformation = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::CapabilityInformation
        NameAvailabilityInformation = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::NameAvailabilityInformation
        UpdateFirewallRuleParameters = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::UpdateFirewallRuleParameters
        CreateFirewallRuleWithAccountParameters = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::CreateFirewallRuleWithAccountParameters
        CreateOrUpdateFirewallRuleParameters = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::CreateOrUpdateFirewallRuleParameters
        SubResource = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::SubResource
        EncryptionIdentity = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::EncryptionIdentity
        UpdateFirewallRuleWithAccountParameters = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::UpdateFirewallRuleWithAccountParameters
        EncryptionConfig = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::EncryptionConfig
        CreateTrustedIdProviderWithAccountParameters = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::CreateTrustedIdProviderWithAccountParameters
        Resource = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::Resource
        CreateOrUpdateTrustedIdProviderParameters = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::CreateOrUpdateTrustedIdProviderParameters
        KeyVaultMetaInfo = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::KeyVaultMetaInfo
        FirewallRuleListResult = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::FirewallRuleListResult
        UpdateEncryptionConfig = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::UpdateEncryptionConfig
        TrustedIdProviderListResult = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::TrustedIdProviderListResult
        UpdateTrustedIdProviderWithAccountParameters = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::UpdateTrustedIdProviderWithAccountParameters
        UpdateDataLakeStoreAccountParameters = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::UpdateDataLakeStoreAccountParameters
        CreateDataLakeStoreAccountParameters = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::CreateDataLakeStoreAccountParameters
        UpdateKeyVaultMetaInfo = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::UpdateKeyVaultMetaInfo
        FirewallRule = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::FirewallRule
        UpdateTrustedIdProviderParameters = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::UpdateTrustedIdProviderParameters
        TrustedIdProvider = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::TrustedIdProvider
        OperationDisplay = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::OperationDisplay
        DataLakeStoreAccountListResult = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::DataLakeStoreAccountListResult
        OperationListResult = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::OperationListResult
        DataLakeStoreAccount = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::DataLakeStoreAccount
        DataLakeStoreAccountBasic = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::DataLakeStoreAccountBasic
        EncryptionConfigType = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::EncryptionConfigType
        EncryptionState = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::EncryptionState
        EncryptionProvisioningState = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::EncryptionProvisioningState
        TrustedIdProviderState = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::TrustedIdProviderState
        FirewallState = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::FirewallState
        FirewallAllowAzureIpsState = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::FirewallAllowAzureIpsState
        TierType = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::TierType
        DataLakeStoreAccountStatus = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::DataLakeStoreAccountStatus
        DataLakeStoreAccountState = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::DataLakeStoreAccountState
        Operation = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::Operation
        OperationOrigin = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::OperationOrigin
        SubscriptionState = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::SubscriptionState
      end

      class DataLakeStoreManagementClass
        attr_reader :firewall_rules, :locations, :trusted_id_providers, :operations, :accounts, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::DataLakeStore::Mgmt::V2016_11_01::DataLakeStoreAccountManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @firewall_rules = @client_0.firewall_rules
          @locations = @client_0.locations
          @trusted_id_providers = @client_0.trusted_id_providers
          @operations = @client_0.operations
          @accounts = @client_0.accounts

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/DataLakeStore/Mgmt"
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
          def check_name_availability_parameters
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::CheckNameAvailabilityParameters
          end
          def capability_information
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::CapabilityInformation
          end
          def name_availability_information
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::NameAvailabilityInformation
          end
          def update_firewall_rule_parameters
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::UpdateFirewallRuleParameters
          end
          def create_firewall_rule_with_account_parameters
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::CreateFirewallRuleWithAccountParameters
          end
          def create_or_update_firewall_rule_parameters
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::CreateOrUpdateFirewallRuleParameters
          end
          def sub_resource
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::SubResource
          end
          def encryption_identity
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::EncryptionIdentity
          end
          def update_firewall_rule_with_account_parameters
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::UpdateFirewallRuleWithAccountParameters
          end
          def encryption_config
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::EncryptionConfig
          end
          def create_trusted_id_provider_with_account_parameters
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::CreateTrustedIdProviderWithAccountParameters
          end
          def resource
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::Resource
          end
          def create_or_update_trusted_id_provider_parameters
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::CreateOrUpdateTrustedIdProviderParameters
          end
          def key_vault_meta_info
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::KeyVaultMetaInfo
          end
          def firewall_rule_list_result
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::FirewallRuleListResult
          end
          def update_encryption_config
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::UpdateEncryptionConfig
          end
          def trusted_id_provider_list_result
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::TrustedIdProviderListResult
          end
          def update_trusted_id_provider_with_account_parameters
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::UpdateTrustedIdProviderWithAccountParameters
          end
          def update_data_lake_store_account_parameters
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::UpdateDataLakeStoreAccountParameters
          end
          def create_data_lake_store_account_parameters
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::CreateDataLakeStoreAccountParameters
          end
          def update_key_vault_meta_info
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::UpdateKeyVaultMetaInfo
          end
          def firewall_rule
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::FirewallRule
          end
          def update_trusted_id_provider_parameters
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::UpdateTrustedIdProviderParameters
          end
          def trusted_id_provider
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::TrustedIdProvider
          end
          def operation_display
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::OperationDisplay
          end
          def data_lake_store_account_list_result
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::DataLakeStoreAccountListResult
          end
          def operation_list_result
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::OperationListResult
          end
          def data_lake_store_account
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::DataLakeStoreAccount
          end
          def data_lake_store_account_basic
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::DataLakeStoreAccountBasic
          end
          def encryption_config_type
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::EncryptionConfigType
          end
          def encryption_state
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::EncryptionState
          end
          def encryption_provisioning_state
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::EncryptionProvisioningState
          end
          def trusted_id_provider_state
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::TrustedIdProviderState
          end
          def firewall_state
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::FirewallState
          end
          def firewall_allow_azure_ips_state
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::FirewallAllowAzureIpsState
          end
          def tier_type
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::TierType
          end
          def data_lake_store_account_status
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::DataLakeStoreAccountStatus
          end
          def data_lake_store_account_state
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::DataLakeStoreAccountState
          end
          def operation
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::Operation
          end
          def operation_origin
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::OperationOrigin
          end
          def subscription_state
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::SubscriptionState
          end
        end
      end
    end
  end
end
