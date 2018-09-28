# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_datalake_store'

module Azure::Profiles::Latest
  module DataLakeStore
    module Mgmt
      Operations = Azure::DataLakeStore::Mgmt::V2016_11_01::Operations
      FirewallRules = Azure::DataLakeStore::Mgmt::V2016_11_01::FirewallRules
      Locations = Azure::DataLakeStore::Mgmt::V2016_11_01::Locations
      VirtualNetworkRules = Azure::DataLakeStore::Mgmt::V2016_11_01::VirtualNetworkRules
      Accounts = Azure::DataLakeStore::Mgmt::V2016_11_01::Accounts
      TrustedIdProviders = Azure::DataLakeStore::Mgmt::V2016_11_01::TrustedIdProviders

      module Models
        CreateFirewallRuleWithAccountParameters = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::CreateFirewallRuleWithAccountParameters
        CreateOrUpdateFirewallRuleParameters = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::CreateOrUpdateFirewallRuleParameters
        UpdateFirewallRuleWithAccountParameters = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::UpdateFirewallRuleWithAccountParameters
        FirewallRuleListResult = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::FirewallRuleListResult
        FirewallRule = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::FirewallRule
        CheckNameAvailabilityParameters = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::CheckNameAvailabilityParameters
        FirewallState = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::FirewallState
        FirewallAllowAzureIpsState = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::FirewallAllowAzureIpsState
        TierType = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::TierType
        OperationOrigin = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::OperationOrigin
        SubscriptionState = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::SubscriptionState
        OperationDisplay = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::OperationDisplay
        OperationListResult = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::OperationListResult
        Operation = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::Operation
        EncryptionIdentity = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::EncryptionIdentity
        CreateVirtualNetworkRuleWithAccountParameters = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::CreateVirtualNetworkRuleWithAccountParameters
        EncryptionConfig = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::EncryptionConfig
        CreateTrustedIdProviderWithAccountParameters = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::CreateTrustedIdProviderWithAccountParameters
        KeyVaultMetaInfo = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::KeyVaultMetaInfo
        UpdateVirtualNetworkRuleParameters = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::UpdateVirtualNetworkRuleParameters
        UpdateTrustedIdProviderParameters = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::UpdateTrustedIdProviderParameters
        CreateOrUpdateTrustedIdProviderParameters = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::CreateOrUpdateTrustedIdProviderParameters
        CreateDataLakeStoreAccountParameters = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::CreateDataLakeStoreAccountParameters
        TrustedIdProviderListResult = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::TrustedIdProviderListResult
        UpdateKeyVaultMetaInfo = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::UpdateKeyVaultMetaInfo
        Resource = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::Resource
        UpdateVirtualNetworkRuleWithAccountParameters = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::UpdateVirtualNetworkRuleWithAccountParameters
        VirtualNetworkRuleListResult = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::VirtualNetworkRuleListResult
        UpdateEncryptionConfig = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::UpdateEncryptionConfig
        UpdateDataLakeStoreAccountParameters = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::UpdateDataLakeStoreAccountParameters
        DataLakeStoreAccountListResult = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::DataLakeStoreAccountListResult
        UpdateTrustedIdProviderWithAccountParameters = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::UpdateTrustedIdProviderWithAccountParameters
        CreateOrUpdateVirtualNetworkRuleParameters = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::CreateOrUpdateVirtualNetworkRuleParameters
        TrustedIdProvider = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::TrustedIdProvider
        DataLakeStoreAccount = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::DataLakeStoreAccount
        SubResource = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::SubResource
        DataLakeStoreAccountBasic = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::DataLakeStoreAccountBasic
        EncryptionConfigType = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::EncryptionConfigType
        VirtualNetworkRule = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::VirtualNetworkRule
        EncryptionProvisioningState = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::EncryptionProvisioningState
        EncryptionState = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::EncryptionState
        DataLakeStoreAccountStatus = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::DataLakeStoreAccountStatus
        TrustedIdProviderState = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::TrustedIdProviderState
        DataLakeStoreAccountState = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::DataLakeStoreAccountState
        CapabilityInformation = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::CapabilityInformation
        NameAvailabilityInformation = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::NameAvailabilityInformation
        UpdateFirewallRuleParameters = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::UpdateFirewallRuleParameters
      end

      class DataLakeStoreManagementClass
        attr_reader :operations, :firewall_rules, :locations, :virtual_network_rules, :accounts, :trusted_id_providers, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::DataLakeStore::Mgmt::V2016_11_01::DataLakeStoreAccountManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @operations = @client_0.operations
          @firewall_rules = @client_0.firewall_rules
          @locations = @client_0.locations
          @virtual_network_rules = @client_0.virtual_network_rules
          @accounts = @client_0.accounts
          @trusted_id_providers = @client_0.trusted_id_providers

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
          def create_firewall_rule_with_account_parameters
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::CreateFirewallRuleWithAccountParameters
          end
          def create_or_update_firewall_rule_parameters
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::CreateOrUpdateFirewallRuleParameters
          end
          def update_firewall_rule_with_account_parameters
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::UpdateFirewallRuleWithAccountParameters
          end
          def firewall_rule_list_result
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::FirewallRuleListResult
          end
          def firewall_rule
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::FirewallRule
          end
          def check_name_availability_parameters
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::CheckNameAvailabilityParameters
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
          def operation_origin
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::OperationOrigin
          end
          def subscription_state
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::SubscriptionState
          end
          def operation_display
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::OperationDisplay
          end
          def operation_list_result
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::OperationListResult
          end
          def operation
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::Operation
          end
          def encryption_identity
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::EncryptionIdentity
          end
          def create_virtual_network_rule_with_account_parameters
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::CreateVirtualNetworkRuleWithAccountParameters
          end
          def encryption_config
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::EncryptionConfig
          end
          def create_trusted_id_provider_with_account_parameters
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::CreateTrustedIdProviderWithAccountParameters
          end
          def key_vault_meta_info
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::KeyVaultMetaInfo
          end
          def update_virtual_network_rule_parameters
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::UpdateVirtualNetworkRuleParameters
          end
          def update_trusted_id_provider_parameters
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::UpdateTrustedIdProviderParameters
          end
          def create_or_update_trusted_id_provider_parameters
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::CreateOrUpdateTrustedIdProviderParameters
          end
          def create_data_lake_store_account_parameters
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::CreateDataLakeStoreAccountParameters
          end
          def trusted_id_provider_list_result
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::TrustedIdProviderListResult
          end
          def update_key_vault_meta_info
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::UpdateKeyVaultMetaInfo
          end
          def resource
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::Resource
          end
          def update_virtual_network_rule_with_account_parameters
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::UpdateVirtualNetworkRuleWithAccountParameters
          end
          def virtual_network_rule_list_result
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::VirtualNetworkRuleListResult
          end
          def update_encryption_config
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::UpdateEncryptionConfig
          end
          def update_data_lake_store_account_parameters
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::UpdateDataLakeStoreAccountParameters
          end
          def data_lake_store_account_list_result
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::DataLakeStoreAccountListResult
          end
          def update_trusted_id_provider_with_account_parameters
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::UpdateTrustedIdProviderWithAccountParameters
          end
          def create_or_update_virtual_network_rule_parameters
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::CreateOrUpdateVirtualNetworkRuleParameters
          end
          def trusted_id_provider
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::TrustedIdProvider
          end
          def data_lake_store_account
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::DataLakeStoreAccount
          end
          def sub_resource
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::SubResource
          end
          def data_lake_store_account_basic
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::DataLakeStoreAccountBasic
          end
          def encryption_config_type
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::EncryptionConfigType
          end
          def virtual_network_rule
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::VirtualNetworkRule
          end
          def encryption_provisioning_state
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::EncryptionProvisioningState
          end
          def encryption_state
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::EncryptionState
          end
          def data_lake_store_account_status
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::DataLakeStoreAccountStatus
          end
          def trusted_id_provider_state
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::TrustedIdProviderState
          end
          def data_lake_store_account_state
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::DataLakeStoreAccountState
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
        end
      end
    end
  end
end
