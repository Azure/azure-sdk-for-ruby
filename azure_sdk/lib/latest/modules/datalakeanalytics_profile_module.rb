# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_datalake_analytics'

module Azure::Profiles::Latest
  module DataLakeAnalytics
    module Mgmt
      ComputePolicies = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::ComputePolicies
      FirewallRules = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::FirewallRules
      StorageAccounts = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::StorageAccounts
      DataLakeStoreAccounts = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::DataLakeStoreAccounts
      Account = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Account
      Locations = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Locations
      Operations = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Operations

      module Models
        DataLakeAnalyticsAccountUpdateParameters = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::DataLakeAnalyticsAccountUpdateParameters
        ComputePolicyCreateOrUpdateParameters = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::ComputePolicyCreateOrUpdateParameters
        StorageContainer = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::StorageContainer
        ComputePolicyListResult = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::ComputePolicyListResult
        SasTokenInfo = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::SasTokenInfo
        OptionalSubResource = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::OptionalSubResource
        DataLakeAnalyticsAccountPropertiesBasic = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::DataLakeAnalyticsAccountPropertiesBasic
        DataLakeAnalyticsAccountListDataLakeStoreResult = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::DataLakeAnalyticsAccountListDataLakeStoreResult
        Resource = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::Resource
        ComputePolicyAccountCreateParameters = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::ComputePolicyAccountCreateParameters
        OperationListResult = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::OperationListResult
        AddDataLakeStoreParameters = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::AddDataLakeStoreParameters
        DataLakeAnalyticsAccountListResult = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::DataLakeAnalyticsAccountListResult
        UpdateStorageAccountParameters = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::UpdateStorageAccountParameters
        DataLakeAnalyticsFirewallRuleListResult = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::DataLakeAnalyticsFirewallRuleListResult
        ListSasTokensResult = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::ListSasTokensResult
        UpdateFirewallRuleParameters = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::UpdateFirewallRuleParameters
        SubResource = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::SubResource
        NameAvailabilityInformation = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::NameAvailabilityInformation
        AddStorageAccountParameters = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::AddStorageAccountParameters
        CheckNameAvailabilityParameters = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::CheckNameAvailabilityParameters
        DataLakeAnalyticsAccountListStorageAccountsResult = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::DataLakeAnalyticsAccountListStorageAccountsResult
        CapabilityInformation = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::CapabilityInformation
        ListStorageContainersResult = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::ListStorageContainersResult
        OperationDisplay = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::OperationDisplay
        ComputePolicy = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::ComputePolicy
        Operation = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::Operation
        StorageAccountInfo = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::StorageAccountInfo
        DataLakeStoreAccountInfo = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::DataLakeStoreAccountInfo
        FirewallRule = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::FirewallRule
        DataLakeAnalyticsAccountBasic = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::DataLakeAnalyticsAccountBasic
        DataLakeAnalyticsAccount = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::DataLakeAnalyticsAccount
        TierType = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::TierType
        FirewallState = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::FirewallState
        FirewallAllowAzureIpsState = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::FirewallAllowAzureIpsState
        AADObjectType = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::AADObjectType
        DataLakeAnalyticsAccountStatus = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::DataLakeAnalyticsAccountStatus
        DataLakeAnalyticsAccountState = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::DataLakeAnalyticsAccountState
        SubscriptionState = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::SubscriptionState
        OperationOrigin = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::OperationOrigin
      end

      class DataLakeAnalyticsManagementClass
        attr_reader :compute_policies, :firewall_rules, :storage_accounts, :data_lake_store_accounts, :account, :locations, :operations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          client_0 = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::DataLakeAnalyticsAccountManagementClient.new(configurable.credentials, base_url, options)
          if(client_0.respond_to?(:subscription_id))
            client_0.subscription_id = configurable.subscription_id
          end

          @compute_policies = client_0.compute_policies
          @firewall_rules = client_0.firewall_rules
          @storage_accounts = client_0.storage_accounts
          @data_lake_store_accounts = client_0.data_lake_store_accounts
          @account = client_0.account
          @locations = client_0.locations
          @operations = client_0.operations

          @model_classes = ModelClasses.new
        end

        class ModelClasses
          def data_lake_analytics_account_update_parameters
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::DataLakeAnalyticsAccountUpdateParameters
          end
          def compute_policy_create_or_update_parameters
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::ComputePolicyCreateOrUpdateParameters
          end
          def storage_container
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::StorageContainer
          end
          def compute_policy_list_result
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::ComputePolicyListResult
          end
          def sas_token_info
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::SasTokenInfo
          end
          def optional_sub_resource
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::OptionalSubResource
          end
          def data_lake_analytics_account_properties_basic
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::DataLakeAnalyticsAccountPropertiesBasic
          end
          def data_lake_analytics_account_list_data_lake_store_result
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::DataLakeAnalyticsAccountListDataLakeStoreResult
          end
          def resource
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::Resource
          end
          def compute_policy_account_create_parameters
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::ComputePolicyAccountCreateParameters
          end
          def operation_list_result
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::OperationListResult
          end
          def add_data_lake_store_parameters
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::AddDataLakeStoreParameters
          end
          def data_lake_analytics_account_list_result
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::DataLakeAnalyticsAccountListResult
          end
          def update_storage_account_parameters
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::UpdateStorageAccountParameters
          end
          def data_lake_analytics_firewall_rule_list_result
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::DataLakeAnalyticsFirewallRuleListResult
          end
          def list_sas_tokens_result
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::ListSasTokensResult
          end
          def update_firewall_rule_parameters
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::UpdateFirewallRuleParameters
          end
          def sub_resource
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::SubResource
          end
          def name_availability_information
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::NameAvailabilityInformation
          end
          def add_storage_account_parameters
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::AddStorageAccountParameters
          end
          def check_name_availability_parameters
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::CheckNameAvailabilityParameters
          end
          def data_lake_analytics_account_list_storage_accounts_result
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::DataLakeAnalyticsAccountListStorageAccountsResult
          end
          def capability_information
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::CapabilityInformation
          end
          def list_storage_containers_result
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::ListStorageContainersResult
          end
          def operation_display
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::OperationDisplay
          end
          def compute_policy
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::ComputePolicy
          end
          def operation
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::Operation
          end
          def storage_account_info
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::StorageAccountInfo
          end
          def data_lake_store_account_info
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::DataLakeStoreAccountInfo
          end
          def firewall_rule
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::FirewallRule
          end
          def data_lake_analytics_account_basic
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::DataLakeAnalyticsAccountBasic
          end
          def data_lake_analytics_account
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::DataLakeAnalyticsAccount
          end
          def tier_type
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::TierType
          end
          def firewall_state
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::FirewallState
          end
          def firewall_allow_azure_ips_state
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::FirewallAllowAzureIpsState
          end
          def aadobject_type
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::AADObjectType
          end
          def data_lake_analytics_account_status
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::DataLakeAnalyticsAccountStatus
          end
          def data_lake_analytics_account_state
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::DataLakeAnalyticsAccountState
          end
          def subscription_state
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::SubscriptionState
          end
          def operation_origin
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::OperationOrigin
          end
        end
      end
    end
  end
end
