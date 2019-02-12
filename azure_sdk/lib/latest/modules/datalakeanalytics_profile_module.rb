# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_datalake_analytics'

module Azure::Profiles::Latest
  module DataLakeAnalytics
    module Mgmt
      DataLakeStoreAccounts = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::DataLakeStoreAccounts
      ComputePolicies = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::ComputePolicies
      StorageAccounts = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::StorageAccounts
      FirewallRules = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::FirewallRules
      Locations = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Locations
      Operations = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Operations
      Accounts = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Accounts

      module Models
        CheckNameAvailabilityParameters = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::CheckNameAvailabilityParameters
        SubscriptionState = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::SubscriptionState
        CapabilityInformation = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::CapabilityInformation
        NameAvailabilityInformation = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::NameAvailabilityInformation
        UpdateFirewallRuleParameters = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::UpdateFirewallRuleParameters
        UpdateComputePolicyParameters = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::UpdateComputePolicyParameters
        UpdateStorageAccountParameters = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::UpdateStorageAccountParameters
        DataLakeStoreAccountInformationListResult = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::DataLakeStoreAccountInformationListResult
        AddDataLakeStoreWithAccountParameters = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::AddDataLakeStoreWithAccountParameters
        CreateOrUpdateComputePolicyParameters = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::CreateOrUpdateComputePolicyParameters
        AddStorageAccountWithAccountParameters = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::AddStorageAccountWithAccountParameters
        SasTokenInformation = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::SasTokenInformation
        CreateComputePolicyWithAccountParameters = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::CreateComputePolicyWithAccountParameters
        ComputePolicyListResult = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::ComputePolicyListResult
        CreateFirewallRuleWithAccountParameters = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::CreateFirewallRuleWithAccountParameters
        CreateDataLakeAnalyticsAccountParameters = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::CreateDataLakeAnalyticsAccountParameters
        CreateOrUpdateFirewallRuleParameters = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::CreateOrUpdateFirewallRuleParameters
        UpdateDataLakeStoreWithAccountParameters = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::UpdateDataLakeStoreWithAccountParameters
        StorageAccountInformationListResult = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::StorageAccountInformationListResult
        UpdateStorageAccountWithAccountParameters = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::UpdateStorageAccountWithAccountParameters
        SasTokenInformationListResult = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::SasTokenInformationListResult
        UpdateComputePolicyWithAccountParameters = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::UpdateComputePolicyWithAccountParameters
        UpdateFirewallRuleWithAccountParameters = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::UpdateFirewallRuleWithAccountParameters
        StorageContainerListResult = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::StorageContainerListResult
        UpdateDataLakeAnalyticsAccountParameters = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::UpdateDataLakeAnalyticsAccountParameters
        DataLakeAnalyticsAccountListResult = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::DataLakeAnalyticsAccountListResult
        AddDataLakeStoreParameters = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::AddDataLakeStoreParameters
        FirewallRuleListResult = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::FirewallRuleListResult
        AddStorageAccountParameters = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::AddStorageAccountParameters
        DataLakeStoreAccountInformation = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::DataLakeStoreAccountInformation
        StorageAccountInformation = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::StorageAccountInformation
        Resource = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::Resource
        ComputePolicy = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::ComputePolicy
        FirewallRule = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::FirewallRule
        DataLakeAnalyticsAccountBasic = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::DataLakeAnalyticsAccountBasic
        StorageContainer = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::StorageContainer
        DataLakeAnalyticsAccount = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::DataLakeAnalyticsAccount
        AADObjectType = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::AADObjectType
        FirewallState = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::FirewallState
        OperationDisplay = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::OperationDisplay
        TierType = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::TierType
        Operation = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::Operation
        DataLakeAnalyticsAccountState = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::DataLakeAnalyticsAccountState
        OperationListResult = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::OperationListResult
        SubResource = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::SubResource
        OperationOrigin = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::OperationOrigin
        DataLakeAnalyticsAccountStatus = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::DataLakeAnalyticsAccountStatus
        FirewallAllowAzureIpsState = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::FirewallAllowAzureIpsState
      end

      class DataLakeAnalyticsManagementClass
        attr_reader :data_lake_store_accounts, :compute_policies, :storage_accounts, :firewall_rules, :locations, :operations, :accounts, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::DataLakeAnalyticsAccountManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @data_lake_store_accounts = @client_0.data_lake_store_accounts
          @compute_policies = @client_0.compute_policies
          @storage_accounts = @client_0.storage_accounts
          @firewall_rules = @client_0.firewall_rules
          @locations = @client_0.locations
          @operations = @client_0.operations
          @accounts = @client_0.accounts

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/DataLakeAnalytics/Mgmt"
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
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::CheckNameAvailabilityParameters
          end
          def subscription_state
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::SubscriptionState
          end
          def capability_information
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::CapabilityInformation
          end
          def name_availability_information
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::NameAvailabilityInformation
          end
          def update_firewall_rule_parameters
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::UpdateFirewallRuleParameters
          end
          def update_compute_policy_parameters
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::UpdateComputePolicyParameters
          end
          def update_storage_account_parameters
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::UpdateStorageAccountParameters
          end
          def data_lake_store_account_information_list_result
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::DataLakeStoreAccountInformationListResult
          end
          def add_data_lake_store_with_account_parameters
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::AddDataLakeStoreWithAccountParameters
          end
          def create_or_update_compute_policy_parameters
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::CreateOrUpdateComputePolicyParameters
          end
          def add_storage_account_with_account_parameters
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::AddStorageAccountWithAccountParameters
          end
          def sas_token_information
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::SasTokenInformation
          end
          def create_compute_policy_with_account_parameters
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::CreateComputePolicyWithAccountParameters
          end
          def compute_policy_list_result
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::ComputePolicyListResult
          end
          def create_firewall_rule_with_account_parameters
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::CreateFirewallRuleWithAccountParameters
          end
          def create_data_lake_analytics_account_parameters
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::CreateDataLakeAnalyticsAccountParameters
          end
          def create_or_update_firewall_rule_parameters
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::CreateOrUpdateFirewallRuleParameters
          end
          def update_data_lake_store_with_account_parameters
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::UpdateDataLakeStoreWithAccountParameters
          end
          def storage_account_information_list_result
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::StorageAccountInformationListResult
          end
          def update_storage_account_with_account_parameters
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::UpdateStorageAccountWithAccountParameters
          end
          def sas_token_information_list_result
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::SasTokenInformationListResult
          end
          def update_compute_policy_with_account_parameters
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::UpdateComputePolicyWithAccountParameters
          end
          def update_firewall_rule_with_account_parameters
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::UpdateFirewallRuleWithAccountParameters
          end
          def storage_container_list_result
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::StorageContainerListResult
          end
          def update_data_lake_analytics_account_parameters
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::UpdateDataLakeAnalyticsAccountParameters
          end
          def data_lake_analytics_account_list_result
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::DataLakeAnalyticsAccountListResult
          end
          def add_data_lake_store_parameters
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::AddDataLakeStoreParameters
          end
          def firewall_rule_list_result
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::FirewallRuleListResult
          end
          def add_storage_account_parameters
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::AddStorageAccountParameters
          end
          def data_lake_store_account_information
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::DataLakeStoreAccountInformation
          end
          def storage_account_information
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::StorageAccountInformation
          end
          def resource
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::Resource
          end
          def compute_policy
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::ComputePolicy
          end
          def firewall_rule
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::FirewallRule
          end
          def data_lake_analytics_account_basic
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::DataLakeAnalyticsAccountBasic
          end
          def storage_container
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::StorageContainer
          end
          def data_lake_analytics_account
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::DataLakeAnalyticsAccount
          end
          def aadobject_type
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::AADObjectType
          end
          def firewall_state
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::FirewallState
          end
          def operation_display
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::OperationDisplay
          end
          def tier_type
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::TierType
          end
          def operation
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::Operation
          end
          def data_lake_analytics_account_state
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::DataLakeAnalyticsAccountState
          end
          def operation_list_result
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::OperationListResult
          end
          def sub_resource
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::SubResource
          end
          def operation_origin
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::OperationOrigin
          end
          def data_lake_analytics_account_status
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::DataLakeAnalyticsAccountStatus
          end
          def firewall_allow_azure_ips_state
            Azure::DataLakeAnalytics::Mgmt::V2016_11_01::Models::FirewallAllowAzureIpsState
          end
        end
      end
    end
  end
end
