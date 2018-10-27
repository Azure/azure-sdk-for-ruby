# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_datalake_store'

module Azure::DataLakeStore::Profiles::Latest
  module Mgmt
    Accounts = Azure::DataLakeStore::Mgmt::V2016_11_01::Accounts
    FirewallRules = Azure::DataLakeStore::Mgmt::V2016_11_01::FirewallRules
    VirtualNetworkRules = Azure::DataLakeStore::Mgmt::V2016_11_01::VirtualNetworkRules
    TrustedIdProviders = Azure::DataLakeStore::Mgmt::V2016_11_01::TrustedIdProviders
    Operations = Azure::DataLakeStore::Mgmt::V2016_11_01::Operations
    Locations = Azure::DataLakeStore::Mgmt::V2016_11_01::Locations

    module Models
      NameAvailabilityInformation = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::NameAvailabilityInformation
      Resource = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::Resource
      CreateFirewallRuleWithAccountParameters = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::CreateFirewallRuleWithAccountParameters
      EncryptionIdentity = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::EncryptionIdentity
      CreateVirtualNetworkRuleWithAccountParameters = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::CreateVirtualNetworkRuleWithAccountParameters
      EncryptionConfig = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::EncryptionConfig
      CreateTrustedIdProviderWithAccountParameters = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::CreateTrustedIdProviderWithAccountParameters
      KeyVaultMetaInfo = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::KeyVaultMetaInfo
      UpdateVirtualNetworkRuleParameters = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::UpdateVirtualNetworkRuleParameters
      UpdateTrustedIdProviderParameters = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::UpdateTrustedIdProviderParameters
      CreateOrUpdateTrustedIdProviderParameters = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::CreateOrUpdateTrustedIdProviderParameters
      FirewallRuleListResult = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::FirewallRuleListResult
      CreateDataLakeStoreAccountParameters = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::CreateDataLakeStoreAccountParameters
      TrustedIdProviderListResult = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::TrustedIdProviderListResult
      UpdateKeyVaultMetaInfo = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::UpdateKeyVaultMetaInfo
      Operation = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::Operation
      UpdateEncryptionConfig = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::UpdateEncryptionConfig
      CapabilityInformation = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::CapabilityInformation
      UpdateFirewallRuleWithAccountParameters = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::UpdateFirewallRuleWithAccountParameters
      CheckNameAvailabilityParameters = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::CheckNameAvailabilityParameters
      UpdateVirtualNetworkRuleWithAccountParameters = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::UpdateVirtualNetworkRuleWithAccountParameters
      VirtualNetworkRuleListResult = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::VirtualNetworkRuleListResult
      UpdateTrustedIdProviderWithAccountParameters = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::UpdateTrustedIdProviderWithAccountParameters
      OperationListResult = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::OperationListResult
      UpdateDataLakeStoreAccountParameters = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::UpdateDataLakeStoreAccountParameters
      DataLakeStoreAccountListResult = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::DataLakeStoreAccountListResult
      CreateOrUpdateFirewallRuleParameters = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::CreateOrUpdateFirewallRuleParameters
      SubResource = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::SubResource
      UpdateFirewallRuleParameters = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::UpdateFirewallRuleParameters
      OperationDisplay = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::OperationDisplay
      CreateOrUpdateVirtualNetworkRuleParameters = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::CreateOrUpdateVirtualNetworkRuleParameters
      FirewallRule = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::FirewallRule
      VirtualNetworkRule = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::VirtualNetworkRule
      TrustedIdProvider = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::TrustedIdProvider
      DataLakeStoreAccount = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::DataLakeStoreAccount
      DataLakeStoreAccountBasic = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::DataLakeStoreAccountBasic
      EncryptionConfigType = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::EncryptionConfigType
      EncryptionState = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::EncryptionState
      EncryptionProvisioningState = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::EncryptionProvisioningState
      FirewallState = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::FirewallState
      FirewallAllowAzureIpsState = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::FirewallAllowAzureIpsState
      TrustedIdProviderState = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::TrustedIdProviderState
      TierType = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::TierType
      DataLakeStoreAccountStatus = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::DataLakeStoreAccountStatus
      DataLakeStoreAccountState = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::DataLakeStoreAccountState
      OperationOrigin = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::OperationOrigin
      SubscriptionState = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::SubscriptionState
    end

    #
    # DataLakeStoreManagementClass
    #
    class DataLakeStoreManagementClass
      attr_reader :accounts, :firewall_rules, :virtual_network_rules, :trusted_id_providers, :operations, :locations, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        @options = if options.is_a?(Hash) && options.empty?
                     setup_default_options
                   else
                     options
                   end

        reset!(options)

        @configurable = self
        @base_url = options[:base_url].nil? ? nil : options[:base_url]
        @options = options[:options].nil? ? nil : options[:options]

        @client_0 = Azure::DataLakeStore::Mgmt::V2016_11_01::DataLakeStoreAccountManagementClient.new(configurable.credentials, base_url, options)
        if @client_0.respond_to?(:subscription_id)
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @accounts = @client_0.accounts
        @firewall_rules = @client_0.firewall_rules
        @virtual_network_rules = @client_0.virtual_network_rules
        @trusted_id_providers = @client_0.trusted_id_providers
        @operations = @client_0.operations
        @locations = @client_0.locations

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/DataLakeStore/Mgmt'
        client.add_user_agent_information(profile_information)
      end

      def method_missing(method, *args)
        if @client_0.respond_to? method
          @client_0.send(method, *args)
        else
          super
        end
      end
    end

    class ModelClasses
      def name_availability_information
        Azure::DataLakeStore::Mgmt::V2016_11_01::Models::NameAvailabilityInformation
      end

      def resource
        Azure::DataLakeStore::Mgmt::V2016_11_01::Models::Resource
      end

      def create_firewall_rule_with_account_parameters
        Azure::DataLakeStore::Mgmt::V2016_11_01::Models::CreateFirewallRuleWithAccountParameters
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

      def firewall_rule_list_result
        Azure::DataLakeStore::Mgmt::V2016_11_01::Models::FirewallRuleListResult
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

      def operation
        Azure::DataLakeStore::Mgmt::V2016_11_01::Models::Operation
      end

      def update_encryption_config
        Azure::DataLakeStore::Mgmt::V2016_11_01::Models::UpdateEncryptionConfig
      end

      def capability_information
        Azure::DataLakeStore::Mgmt::V2016_11_01::Models::CapabilityInformation
      end

      def update_firewall_rule_with_account_parameters
        Azure::DataLakeStore::Mgmt::V2016_11_01::Models::UpdateFirewallRuleWithAccountParameters
      end

      def check_name_availability_parameters
        Azure::DataLakeStore::Mgmt::V2016_11_01::Models::CheckNameAvailabilityParameters
      end

      def update_virtual_network_rule_with_account_parameters
        Azure::DataLakeStore::Mgmt::V2016_11_01::Models::UpdateVirtualNetworkRuleWithAccountParameters
      end

      def virtual_network_rule_list_result
        Azure::DataLakeStore::Mgmt::V2016_11_01::Models::VirtualNetworkRuleListResult
      end

      def update_trusted_id_provider_with_account_parameters
        Azure::DataLakeStore::Mgmt::V2016_11_01::Models::UpdateTrustedIdProviderWithAccountParameters
      end

      def operation_list_result
        Azure::DataLakeStore::Mgmt::V2016_11_01::Models::OperationListResult
      end

      def update_data_lake_store_account_parameters
        Azure::DataLakeStore::Mgmt::V2016_11_01::Models::UpdateDataLakeStoreAccountParameters
      end

      def data_lake_store_account_list_result
        Azure::DataLakeStore::Mgmt::V2016_11_01::Models::DataLakeStoreAccountListResult
      end

      def create_or_update_firewall_rule_parameters
        Azure::DataLakeStore::Mgmt::V2016_11_01::Models::CreateOrUpdateFirewallRuleParameters
      end

      def sub_resource
        Azure::DataLakeStore::Mgmt::V2016_11_01::Models::SubResource
      end

      def update_firewall_rule_parameters
        Azure::DataLakeStore::Mgmt::V2016_11_01::Models::UpdateFirewallRuleParameters
      end

      def operation_display
        Azure::DataLakeStore::Mgmt::V2016_11_01::Models::OperationDisplay
      end

      def create_or_update_virtual_network_rule_parameters
        Azure::DataLakeStore::Mgmt::V2016_11_01::Models::CreateOrUpdateVirtualNetworkRuleParameters
      end

      def firewall_rule
        Azure::DataLakeStore::Mgmt::V2016_11_01::Models::FirewallRule
      end

      def virtual_network_rule
        Azure::DataLakeStore::Mgmt::V2016_11_01::Models::VirtualNetworkRule
      end

      def trusted_id_provider
        Azure::DataLakeStore::Mgmt::V2016_11_01::Models::TrustedIdProvider
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

      def firewall_state
        Azure::DataLakeStore::Mgmt::V2016_11_01::Models::FirewallState
      end

      def firewall_allow_azure_ips_state
        Azure::DataLakeStore::Mgmt::V2016_11_01::Models::FirewallAllowAzureIpsState
      end

      def trusted_id_provider_state
        Azure::DataLakeStore::Mgmt::V2016_11_01::Models::TrustedIdProviderState
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

      def operation_origin
        Azure::DataLakeStore::Mgmt::V2016_11_01::Models::OperationOrigin
      end

      def subscription_state
        Azure::DataLakeStore::Mgmt::V2016_11_01::Models::SubscriptionState
      end
    end
  end
end
