# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_storage'

module Azure::Storage::Profiles::Latest
  module Mgmt
    Operations = Azure::Storage::Mgmt::V2018_03_01_preview::Operations
    Skus = Azure::Storage::Mgmt::V2018_03_01_preview::Skus
    StorageAccounts = Azure::Storage::Mgmt::V2018_03_01_preview::StorageAccounts
    Usages = Azure::Storage::Mgmt::V2018_03_01_preview::Usages
    BlobContainers = Azure::Storage::Mgmt::V2018_03_01_preview::BlobContainers

    module Models
      SignedResourceTypes = Azure::Storage::Mgmt::V2018_03_01_preview::Models::SignedResourceTypes
      AccessTier = Azure::Storage::Mgmt::V2018_03_01_preview::Models::AccessTier
      Kind = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Kind
      ProvisioningState = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ProvisioningState
      AccountStatus = Azure::Storage::Mgmt::V2018_03_01_preview::Models::AccountStatus
      DefaultAction = Azure::Storage::Mgmt::V2018_03_01_preview::Models::DefaultAction
      UsageUnit = Azure::Storage::Mgmt::V2018_03_01_preview::Models::UsageUnit
      LeaseDuration = Azure::Storage::Mgmt::V2018_03_01_preview::Models::LeaseDuration
      Permissions = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Permissions
      HttpProtocol = Azure::Storage::Mgmt::V2018_03_01_preview::Models::HttpProtocol
      SignedResource = Azure::Storage::Mgmt::V2018_03_01_preview::Models::SignedResource
      PublicAccess = Azure::Storage::Mgmt::V2018_03_01_preview::Models::PublicAccess
      LeaseStatus = Azure::Storage::Mgmt::V2018_03_01_preview::Models::LeaseStatus
      LeaseState = Azure::Storage::Mgmt::V2018_03_01_preview::Models::LeaseState
      KeyPermission = Azure::Storage::Mgmt::V2018_03_01_preview::Models::KeyPermission
      ImmutabilityPolicyState = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ImmutabilityPolicyState
      ImmutabilityPolicyUpdateType = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ImmutabilityPolicyUpdateType
      State = Azure::Storage::Mgmt::V2018_03_01_preview::Models::State
      Reason = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Reason
      Dimension = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Dimension
      ServiceSpecification = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ServiceSpecification
      OperationListResult = Azure::Storage::Mgmt::V2018_03_01_preview::Models::OperationListResult
      SKUCapability = Azure::Storage::Mgmt::V2018_03_01_preview::Models::SKUCapability
      Sku = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Sku
      StorageAccountListResult = Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountListResult
      EncryptionService = Azure::Storage::Mgmt::V2018_03_01_preview::Models::EncryptionService
      StorageAccountListKeysResult = Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountListKeysResult
      ListAccountSasResponse = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ListAccountSasResponse
      StorageAccountRegenerateKeyParameters = Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountRegenerateKeyParameters
      AccountSasParameters = Azure::Storage::Mgmt::V2018_03_01_preview::Models::AccountSasParameters
      StorageAccountUpdateParameters = Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountUpdateParameters
      KeyVaultProperties = Azure::Storage::Mgmt::V2018_03_01_preview::Models::KeyVaultProperties
      UsageName = Azure::Storage::Mgmt::V2018_03_01_preview::Models::UsageName
      VirtualNetworkRule = Azure::Storage::Mgmt::V2018_03_01_preview::Models::VirtualNetworkRule
      Usage = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Usage
      EncryptionServices = Azure::Storage::Mgmt::V2018_03_01_preview::Models::EncryptionServices
      UsageListResult = Azure::Storage::Mgmt::V2018_03_01_preview::Models::UsageListResult
      CheckNameAvailabilityResult = Azure::Storage::Mgmt::V2018_03_01_preview::Models::CheckNameAvailabilityResult
      ListServiceSasResponse = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ListServiceSasResponse
      NetworkRuleSet = Azure::Storage::Mgmt::V2018_03_01_preview::Models::NetworkRuleSet
      IPRule = Azure::Storage::Mgmt::V2018_03_01_preview::Models::IPRule
      ServiceSasParameters = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ServiceSasParameters
      Encryption = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Encryption
      StorageAccountKey = Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountKey
      Endpoints = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Endpoints
      ListContainerItems = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ListContainerItems
      Identity = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Identity
      MetricSpecification = Azure::Storage::Mgmt::V2018_03_01_preview::Models::MetricSpecification
      ManagementPoliciesRulesSetParameter = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ManagementPoliciesRulesSetParameter
      StorageAccountCheckNameAvailabilityParameters = Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountCheckNameAvailabilityParameters
      TagProperty = Azure::Storage::Mgmt::V2018_03_01_preview::Models::TagProperty
      LegalHold = Azure::Storage::Mgmt::V2018_03_01_preview::Models::LegalHold
      OperationDisplay = Azure::Storage::Mgmt::V2018_03_01_preview::Models::OperationDisplay
      LegalHoldProperties = Azure::Storage::Mgmt::V2018_03_01_preview::Models::LegalHoldProperties
      StorageAccountCreateParameters = Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountCreateParameters
      StorageSkuListResult = Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageSkuListResult
      Operation = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Operation
      UpdateHistoryProperty = Azure::Storage::Mgmt::V2018_03_01_preview::Models::UpdateHistoryProperty
      ImmutabilityPolicyProperties = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ImmutabilityPolicyProperties
      Resource = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Resource
      Restriction = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Restriction
      TrackedResource = Azure::Storage::Mgmt::V2018_03_01_preview::Models::TrackedResource
      AzureEntityResource = Azure::Storage::Mgmt::V2018_03_01_preview::Models::AzureEntityResource
      BlobContainer = Azure::Storage::Mgmt::V2018_03_01_preview::Models::BlobContainer
      ImmutabilityPolicy = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ImmutabilityPolicy
      StorageAccountManagementPolicies = Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountManagementPolicies
      ProxyResource = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ProxyResource
      CustomDomain = Azure::Storage::Mgmt::V2018_03_01_preview::Models::CustomDomain
      SkuName = Azure::Storage::Mgmt::V2018_03_01_preview::Models::SkuName
      SkuTier = Azure::Storage::Mgmt::V2018_03_01_preview::Models::SkuTier
      Action = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Action
      ListContainerItem = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ListContainerItem
      ReasonCode = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ReasonCode
      KeySource = Azure::Storage::Mgmt::V2018_03_01_preview::Models::KeySource
      Bypass = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Bypass
      StorageAccount = Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccount
      Services = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Services
    end

    #
    # StorageManagementClass
    #
    class StorageManagementClass
      attr_reader :operations, :skus, :storage_accounts, :usages, :blob_containers, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        if options.is_a?(Hash) && options.length == 0
          @options = setup_default_options
        else
          @options = options
        end

        reset!(options)

        @configurable = self
        @base_url = options[:base_url].nil? ? nil:options[:base_url]
        @options = options[:options].nil? ? nil:options[:options]

        @client_0 = Azure::Storage::Mgmt::V2018_03_01_preview::StorageManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @operations = @client_0.operations
        @skus = @client_0.skus
        @storage_accounts = @client_0.storage_accounts
        @usages = @client_0.usages
        @blob_containers = @client_0.blob_containers

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/Storage/Mgmt'
        client.add_user_agent_information(profile_information)
      end

      def method_missing(method, *args)
        if @client_0.respond_to?method
          @client_0.send(method, *args)
        else
          super
        end
      end

    end

    class ModelClasses
      def signed_resource_types
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::SignedResourceTypes
      end
      def access_tier
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::AccessTier
      end
      def kind
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::Kind
      end
      def provisioning_state
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::ProvisioningState
      end
      def account_status
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::AccountStatus
      end
      def default_action
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::DefaultAction
      end
      def usage_unit
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::UsageUnit
      end
      def lease_duration
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::LeaseDuration
      end
      def permissions
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::Permissions
      end
      def http_protocol
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::HttpProtocol
      end
      def signed_resource
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::SignedResource
      end
      def public_access
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::PublicAccess
      end
      def lease_status
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::LeaseStatus
      end
      def lease_state
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::LeaseState
      end
      def key_permission
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::KeyPermission
      end
      def immutability_policy_state
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::ImmutabilityPolicyState
      end
      def immutability_policy_update_type
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::ImmutabilityPolicyUpdateType
      end
      def state
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::State
      end
      def reason
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::Reason
      end
      def dimension
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::Dimension
      end
      def service_specification
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::ServiceSpecification
      end
      def operation_list_result
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::OperationListResult
      end
      def skucapability
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::SKUCapability
      end
      def sku
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::Sku
      end
      def storage_account_list_result
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountListResult
      end
      def encryption_service
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::EncryptionService
      end
      def storage_account_list_keys_result
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountListKeysResult
      end
      def list_account_sas_response
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::ListAccountSasResponse
      end
      def storage_account_regenerate_key_parameters
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountRegenerateKeyParameters
      end
      def account_sas_parameters
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::AccountSasParameters
      end
      def storage_account_update_parameters
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountUpdateParameters
      end
      def key_vault_properties
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::KeyVaultProperties
      end
      def usage_name
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::UsageName
      end
      def virtual_network_rule
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::VirtualNetworkRule
      end
      def usage
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::Usage
      end
      def encryption_services
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::EncryptionServices
      end
      def usage_list_result
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::UsageListResult
      end
      def check_name_availability_result
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::CheckNameAvailabilityResult
      end
      def list_service_sas_response
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::ListServiceSasResponse
      end
      def network_rule_set
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::NetworkRuleSet
      end
      def iprule
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::IPRule
      end
      def service_sas_parameters
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::ServiceSasParameters
      end
      def encryption
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::Encryption
      end
      def storage_account_key
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountKey
      end
      def endpoints
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::Endpoints
      end
      def list_container_items
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::ListContainerItems
      end
      def identity
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::Identity
      end
      def metric_specification
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::MetricSpecification
      end
      def management_policies_rules_set_parameter
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::ManagementPoliciesRulesSetParameter
      end
      def storage_account_check_name_availability_parameters
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountCheckNameAvailabilityParameters
      end
      def tag_property
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::TagProperty
      end
      def legal_hold
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::LegalHold
      end
      def operation_display
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::OperationDisplay
      end
      def legal_hold_properties
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::LegalHoldProperties
      end
      def storage_account_create_parameters
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountCreateParameters
      end
      def storage_sku_list_result
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageSkuListResult
      end
      def operation
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::Operation
      end
      def update_history_property
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::UpdateHistoryProperty
      end
      def immutability_policy_properties
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::ImmutabilityPolicyProperties
      end
      def resource
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::Resource
      end
      def restriction
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::Restriction
      end
      def tracked_resource
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::TrackedResource
      end
      def azure_entity_resource
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::AzureEntityResource
      end
      def blob_container
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::BlobContainer
      end
      def immutability_policy
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::ImmutabilityPolicy
      end
      def storage_account_management_policies
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountManagementPolicies
      end
      def proxy_resource
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::ProxyResource
      end
      def custom_domain
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::CustomDomain
      end
      def sku_name
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::SkuName
      end
      def sku_tier
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::SkuTier
      end
      def action
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::Action
      end
      def list_container_item
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::ListContainerItem
      end
      def reason_code
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::ReasonCode
      end
      def key_source
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::KeySource
      end
      def bypass
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::Bypass
      end
      def storage_account
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccount
      end
      def services
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::Services
      end
    end
  end
end
