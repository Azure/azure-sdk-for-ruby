# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_datalake_analytics'


module Azure::Profiles::DataLakeAnalyticsModule::Management::Profile_2016_11_01
  module DataLakeAnalytics
    ComputePolicies = Azure::ARM::DataLakeAnalytics::Api_2016_11_01::ComputePolicies
    FirewallRules = Azure::ARM::DataLakeAnalytics::Api_2016_11_01::FirewallRules
    StorageAccounts = Azure::ARM::DataLakeAnalytics::Api_2016_11_01::StorageAccounts
    DataLakeStoreAccounts = Azure::ARM::DataLakeAnalytics::Api_2016_11_01::DataLakeStoreAccounts
    Account = Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Account

    module Models
      UpdateStorageAccountParameters = Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::UpdateStorageAccountParameters
      AddDataLakeStoreParameters = Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::AddDataLakeStoreParameters
      StorageContainer = Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::StorageContainer
      AddStorageAccountParameters = Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::AddStorageAccountParameters
      SasTokenInfo = Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::SasTokenInfo
      OptionalSubResource = Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::OptionalSubResource
      ComputePolicyCreateOrUpdateParameters = Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::ComputePolicyCreateOrUpdateParameters
      DataLakeAnalyticsAccountListDataLakeStoreResult = Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::DataLakeAnalyticsAccountListDataLakeStoreResult
      ComputePolicyListResult = Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::ComputePolicyListResult
      ComputePolicyAccountCreateParameters = Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::ComputePolicyAccountCreateParameters
      DataLakeAnalyticsAccountUpdateParameters = Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::DataLakeAnalyticsAccountUpdateParameters
      ListStorageContainersResult = Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::ListStorageContainersResult
      DataLakeAnalyticsAccountPropertiesBasic = Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::DataLakeAnalyticsAccountPropertiesBasic
      DataLakeAnalyticsAccountListStorageAccountsResult = Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::DataLakeAnalyticsAccountListStorageAccountsResult
      ComputePolicy = Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::ComputePolicy
      UpdateFirewallRuleParameters = Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::UpdateFirewallRuleParameters
      SubResource = Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::SubResource
      DataLakeAnalyticsAccountListResult = Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::DataLakeAnalyticsAccountListResult
      ListSasTokensResult = Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::ListSasTokensResult
      DataLakeAnalyticsFirewallRuleListResult = Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::DataLakeAnalyticsFirewallRuleListResult
      StorageAccountInfo = Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::StorageAccountInfo
      DataLakeStoreAccountInfo = Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::DataLakeStoreAccountInfo
      FirewallRule = Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::FirewallRule
      DataLakeAnalyticsAccountBasic = Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::DataLakeAnalyticsAccountBasic
      DataLakeAnalyticsAccount = Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::DataLakeAnalyticsAccount
      TierType = Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::TierType
      FirewallState = Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::FirewallState
      FirewallAllowAzureIpsState = Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::FirewallAllowAzureIpsState
      AADObjectType = Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::AADObjectType
      DataLakeAnalyticsAccountStatus = Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::DataLakeAnalyticsAccountStatus
      DataLakeAnalyticsAccountState = Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::DataLakeAnalyticsAccountState
    end

    #
    # DataLakeAnalytics
    #
    class DataLakeAnalyticsClass
      attr_accessor :compute_policies, :firewall_rules, :storage_accounts, :data_lake_store_accounts, :account, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::DataLakeAnalytics::Api_2016_11_01::DataLakeAnalyticsAccountManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.compute_policies = Azure::ARM::DataLakeAnalytics::Api_2016_11_01::ComputePolicies.new(client)
        self.firewall_rules = Azure::ARM::DataLakeAnalytics::Api_2016_11_01::FirewallRules.new(client)
        self.storage_accounts = Azure::ARM::DataLakeAnalytics::Api_2016_11_01::StorageAccounts.new(client)
        self.data_lake_store_accounts = Azure::ARM::DataLakeAnalytics::Api_2016_11_01::DataLakeStoreAccounts.new(client)
        self.account = Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Account.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2016-11-01'
            client = Azure::ARM::DataLakeAnalytics::Api_2016_11_01::DataLakeAnalyticsAccountManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def update_storage_account_parameters
          Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::UpdateStorageAccountParameters
        end
        def add_data_lake_store_parameters
          Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::AddDataLakeStoreParameters
        end
        def storage_container
          Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::StorageContainer
        end
        def add_storage_account_parameters
          Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::AddStorageAccountParameters
        end
        def sas_token_info
          Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::SasTokenInfo
        end
        def optional_sub_resource
          Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::OptionalSubResource
        end
        def compute_policy_create_or_update_parameters
          Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::ComputePolicyCreateOrUpdateParameters
        end
        def data_lake_analytics_account_list_data_lake_store_result
          Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::DataLakeAnalyticsAccountListDataLakeStoreResult
        end
        def compute_policy_list_result
          Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::ComputePolicyListResult
        end
        def compute_policy_account_create_parameters
          Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::ComputePolicyAccountCreateParameters
        end
        def data_lake_analytics_account_update_parameters
          Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::DataLakeAnalyticsAccountUpdateParameters
        end
        def list_storage_containers_result
          Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::ListStorageContainersResult
        end
        def data_lake_analytics_account_properties_basic
          Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::DataLakeAnalyticsAccountPropertiesBasic
        end
        def data_lake_analytics_account_list_storage_accounts_result
          Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::DataLakeAnalyticsAccountListStorageAccountsResult
        end
        def compute_policy
          Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::ComputePolicy
        end
        def update_firewall_rule_parameters
          Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::UpdateFirewallRuleParameters
        end
        def sub_resource
          Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::SubResource
        end
        def data_lake_analytics_account_list_result
          Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::DataLakeAnalyticsAccountListResult
        end
        def list_sas_tokens_result
          Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::ListSasTokensResult
        end
        def data_lake_analytics_firewall_rule_list_result
          Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::DataLakeAnalyticsFirewallRuleListResult
        end
        def storage_account_info
          Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::StorageAccountInfo
        end
        def data_lake_store_account_info
          Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::DataLakeStoreAccountInfo
        end
        def firewall_rule
          Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::FirewallRule
        end
        def data_lake_analytics_account_basic
          Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::DataLakeAnalyticsAccountBasic
        end
        def data_lake_analytics_account
          Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::DataLakeAnalyticsAccount
        end
        def tier_type
          Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::TierType
        end
        def firewall_state
          Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::FirewallState
        end
        def firewall_allow_azure_ips_state
          Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::FirewallAllowAzureIpsState
        end
        def aadobject_type
          Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::AADObjectType
        end
        def data_lake_analytics_account_status
          Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::DataLakeAnalyticsAccountStatus
        end
        def data_lake_analytics_account_state
          Azure::ARM::DataLakeAnalytics::Api_2016_11_01::Models::DataLakeAnalyticsAccountState
        end
      end
    end
  end
end
