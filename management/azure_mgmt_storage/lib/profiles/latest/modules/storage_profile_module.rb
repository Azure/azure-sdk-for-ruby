# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_storage'

module Azure::Storage::Profiles::Latest
  module Mgmt
    Operations = Azure::Storage::Mgmt::V2018_07_01::Operations
    Skus = Azure::Storage::Mgmt::V2018_07_01::Skus
    Usages = Azure::Storage::Mgmt::V2018_07_01::Usages
    BlobContainers = Azure::Storage::Mgmt::V2018_07_01::BlobContainers
    BlobServices = Azure::Storage::Mgmt::V2018_07_01::BlobServices
    StorageAccounts = Azure::Storage::Mgmt::V2018_07_01::StorageAccounts

    module Models
      ManagementPoliciesRulesSetParameter = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ManagementPoliciesRulesSetParameter
      StorageAccountManagementPolicies = Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountManagementPolicies
      ImmutabilityPolicyUpdateType = Azure::Storage::Mgmt::V2018_07_01::Models::ImmutabilityPolicyUpdateType
      SignedResource = Azure::Storage::Mgmt::V2018_07_01::Models::SignedResource
      State = Azure::Storage::Mgmt::V2018_07_01::Models::State
      GeoReplicationStats = Azure::Storage::Mgmt::V2018_07_01::Models::GeoReplicationStats
      DeleteRetentionPolicy = Azure::Storage::Mgmt::V2018_07_01::Models::DeleteRetentionPolicy
      CorsRules = Azure::Storage::Mgmt::V2018_07_01::Models::CorsRules
      CorsRule = Azure::Storage::Mgmt::V2018_07_01::Models::CorsRule
      BlobServiceProperties = Azure::Storage::Mgmt::V2018_07_01::Models::BlobServiceProperties
      GeoReplicationStatus = Azure::Storage::Mgmt::V2018_07_01::Models::GeoReplicationStatus
      StorageAccountExpand = Azure::Storage::Mgmt::V2018_07_01::Models::StorageAccountExpand
      Reason = Azure::Storage::Mgmt::V2018_07_01::Models::Reason
      Dimension = Azure::Storage::Mgmt::V2018_07_01::Models::Dimension
      ServiceSpecification = Azure::Storage::Mgmt::V2018_07_01::Models::ServiceSpecification
      OperationListResult = Azure::Storage::Mgmt::V2018_07_01::Models::OperationListResult
      SKUCapability = Azure::Storage::Mgmt::V2018_07_01::Models::SKUCapability
      AccountSasParameters = Azure::Storage::Mgmt::V2018_07_01::Models::AccountSasParameters
      ListAccountSasResponse = Azure::Storage::Mgmt::V2018_07_01::Models::ListAccountSasResponse
      KeyVaultProperties = Azure::Storage::Mgmt::V2018_07_01::Models::KeyVaultProperties
      ServiceSasParameters = Azure::Storage::Mgmt::V2018_07_01::Models::ServiceSasParameters
      VirtualNetworkRule = Azure::Storage::Mgmt::V2018_07_01::Models::VirtualNetworkRule
      ListServiceSasResponse = Azure::Storage::Mgmt::V2018_07_01::Models::ListServiceSasResponse
      NetworkRuleSet = Azure::Storage::Mgmt::V2018_07_01::Models::NetworkRuleSet
      IPRule = Azure::Storage::Mgmt::V2018_07_01::Models::IPRule
      Identity = Azure::Storage::Mgmt::V2018_07_01::Models::Identity
      MetricSpecification = Azure::Storage::Mgmt::V2018_07_01::Models::MetricSpecification
      StorageSkuListResult = Azure::Storage::Mgmt::V2018_07_01::Models::StorageSkuListResult
      ListContainerItems = Azure::Storage::Mgmt::V2018_07_01::Models::ListContainerItems
      LegalHold = Azure::Storage::Mgmt::V2018_07_01::Models::LegalHold
      OperationDisplay = Azure::Storage::Mgmt::V2018_07_01::Models::OperationDisplay
      LegalHoldProperties = Azure::Storage::Mgmt::V2018_07_01::Models::LegalHoldProperties
      Restriction = Azure::Storage::Mgmt::V2018_07_01::Models::Restriction
      TagProperty = Azure::Storage::Mgmt::V2018_07_01::Models::TagProperty
      Operation = Azure::Storage::Mgmt::V2018_07_01::Models::Operation
      UpdateHistoryProperty = Azure::Storage::Mgmt::V2018_07_01::Models::UpdateHistoryProperty
      ImmutabilityPolicyProperties = Azure::Storage::Mgmt::V2018_07_01::Models::ImmutabilityPolicyProperties
      ProxyResource = Azure::Storage::Mgmt::V2018_07_01::Models::ProxyResource
      TrackedResource = Azure::Storage::Mgmt::V2018_07_01::Models::TrackedResource
      StorageAccountCheckNameAvailabilityParameters = Azure::Storage::Mgmt::V2018_07_01::Models::StorageAccountCheckNameAvailabilityParameters
      StorageAccountKey = Azure::Storage::Mgmt::V2018_07_01::Models::StorageAccountKey
      Sku = Azure::Storage::Mgmt::V2018_07_01::Models::Sku
      StorageAccountListResult = Azure::Storage::Mgmt::V2018_07_01::Models::StorageAccountListResult
      EncryptionService = Azure::Storage::Mgmt::V2018_07_01::Models::EncryptionService
      StorageAccountListKeysResult = Azure::Storage::Mgmt::V2018_07_01::Models::StorageAccountListKeysResult
      Encryption = Azure::Storage::Mgmt::V2018_07_01::Models::Encryption
      StorageAccountRegenerateKeyParameters = Azure::Storage::Mgmt::V2018_07_01::Models::StorageAccountRegenerateKeyParameters
      Endpoints = Azure::Storage::Mgmt::V2018_07_01::Models::Endpoints
      StorageAccountUpdateParameters = Azure::Storage::Mgmt::V2018_07_01::Models::StorageAccountUpdateParameters
      CustomDomain = Azure::Storage::Mgmt::V2018_07_01::Models::CustomDomain
      UsageName = Azure::Storage::Mgmt::V2018_07_01::Models::UsageName
      StorageAccountCreateParameters = Azure::Storage::Mgmt::V2018_07_01::Models::StorageAccountCreateParameters
      Usage = Azure::Storage::Mgmt::V2018_07_01::Models::Usage
      EncryptionServices = Azure::Storage::Mgmt::V2018_07_01::Models::EncryptionServices
      UsageListResult = Azure::Storage::Mgmt::V2018_07_01::Models::UsageListResult
      CheckNameAvailabilityResult = Azure::Storage::Mgmt::V2018_07_01::Models::CheckNameAvailabilityResult
      Resource = Azure::Storage::Mgmt::V2018_07_01::Models::Resource
      StorageAccount = Azure::Storage::Mgmt::V2018_07_01::Models::StorageAccount
      ReasonCode = Azure::Storage::Mgmt::V2018_07_01::Models::ReasonCode
      SkuName = Azure::Storage::Mgmt::V2018_07_01::Models::SkuName
      AzureEntityResource = Azure::Storage::Mgmt::V2018_07_01::Models::AzureEntityResource
      BlobContainer = Azure::Storage::Mgmt::V2018_07_01::Models::BlobContainer
      ImmutabilityPolicy = Azure::Storage::Mgmt::V2018_07_01::Models::ImmutabilityPolicy
      ListContainerItem = Azure::Storage::Mgmt::V2018_07_01::Models::ListContainerItem
      Kind = Azure::Storage::Mgmt::V2018_07_01::Models::Kind
      SkuTier = Azure::Storage::Mgmt::V2018_07_01::Models::SkuTier
      Bypass = Azure::Storage::Mgmt::V2018_07_01::Models::Bypass
      Action = Azure::Storage::Mgmt::V2018_07_01::Models::Action
      ProvisioningState = Azure::Storage::Mgmt::V2018_07_01::Models::ProvisioningState
      AccountStatus = Azure::Storage::Mgmt::V2018_07_01::Models::AccountStatus
      AccessTier = Azure::Storage::Mgmt::V2018_07_01::Models::AccessTier
      UsageUnit = Azure::Storage::Mgmt::V2018_07_01::Models::UsageUnit
      KeySource = Azure::Storage::Mgmt::V2018_07_01::Models::KeySource
      PublicAccess = Azure::Storage::Mgmt::V2018_07_01::Models::PublicAccess
      DefaultAction = Azure::Storage::Mgmt::V2018_07_01::Models::DefaultAction
      Services = Azure::Storage::Mgmt::V2018_07_01::Models::Services
      SignedResourceTypes = Azure::Storage::Mgmt::V2018_07_01::Models::SignedResourceTypes
      Permissions = Azure::Storage::Mgmt::V2018_07_01::Models::Permissions
      HttpProtocol = Azure::Storage::Mgmt::V2018_07_01::Models::HttpProtocol
      KeyPermission = Azure::Storage::Mgmt::V2018_07_01::Models::KeyPermission
      LeaseStatus = Azure::Storage::Mgmt::V2018_07_01::Models::LeaseStatus
      LeaseState = Azure::Storage::Mgmt::V2018_07_01::Models::LeaseState
      LeaseDuration = Azure::Storage::Mgmt::V2018_07_01::Models::LeaseDuration
      ImmutabilityPolicyState = Azure::Storage::Mgmt::V2018_07_01::Models::ImmutabilityPolicyState
    end

    #
    # StorageManagementClass
    #
    class StorageManagementClass
      attr_reader :operations, :skus, :usages, :blob_containers, :blob_services, :storage_accounts, :configurable, :base_url, :options, :model_classes

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

        @client_1 = Azure::Storage::Mgmt::V2018_07_01::StorageManagementClient.new(configurable.credentials, base_url, options)
        if(@client_1.respond_to?(:subscription_id))
          @client_1.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_1)
        @operations = @client_1.operations
        @skus = @client_1.skus
        @usages = @client_1.usages
        @blob_containers = @client_1.blob_containers
        @blob_services = @client_1.blob_services
        @storage_accounts = @client_1.storage_accounts

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/Storage/Mgmt'
        client.add_user_agent_information(profile_information)
      end

      def method_missing(method, *args)
        if @client_1.respond_to?method
          @client_1.send(method, *args)
        elsif @client_0.respond_to?method
          @client_0.send(method, *args)
        else
          super
        end
      end

    end

    class ModelClasses
      def management_policies_rules_set_parameter
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::ManagementPoliciesRulesSetParameter
      end
      def storage_account_management_policies
        Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountManagementPolicies
      end
      def immutability_policy_update_type
        Azure::Storage::Mgmt::V2018_07_01::Models::ImmutabilityPolicyUpdateType
      end
      def signed_resource
        Azure::Storage::Mgmt::V2018_07_01::Models::SignedResource
      end
      def state
        Azure::Storage::Mgmt::V2018_07_01::Models::State
      end
      def geo_replication_stats
        Azure::Storage::Mgmt::V2018_07_01::Models::GeoReplicationStats
      end
      def delete_retention_policy
        Azure::Storage::Mgmt::V2018_07_01::Models::DeleteRetentionPolicy
      end
      def cors_rules
        Azure::Storage::Mgmt::V2018_07_01::Models::CorsRules
      end
      def cors_rule
        Azure::Storage::Mgmt::V2018_07_01::Models::CorsRule
      end
      def blob_service_properties
        Azure::Storage::Mgmt::V2018_07_01::Models::BlobServiceProperties
      end
      def geo_replication_status
        Azure::Storage::Mgmt::V2018_07_01::Models::GeoReplicationStatus
      end
      def storage_account_expand
        Azure::Storage::Mgmt::V2018_07_01::Models::StorageAccountExpand
      end
      def reason
        Azure::Storage::Mgmt::V2018_07_01::Models::Reason
      end
      def dimension
        Azure::Storage::Mgmt::V2018_07_01::Models::Dimension
      end
      def service_specification
        Azure::Storage::Mgmt::V2018_07_01::Models::ServiceSpecification
      end
      def operation_list_result
        Azure::Storage::Mgmt::V2018_07_01::Models::OperationListResult
      end
      def skucapability
        Azure::Storage::Mgmt::V2018_07_01::Models::SKUCapability
      end
      def account_sas_parameters
        Azure::Storage::Mgmt::V2018_07_01::Models::AccountSasParameters
      end
      def list_account_sas_response
        Azure::Storage::Mgmt::V2018_07_01::Models::ListAccountSasResponse
      end
      def key_vault_properties
        Azure::Storage::Mgmt::V2018_07_01::Models::KeyVaultProperties
      end
      def service_sas_parameters
        Azure::Storage::Mgmt::V2018_07_01::Models::ServiceSasParameters
      end
      def virtual_network_rule
        Azure::Storage::Mgmt::V2018_07_01::Models::VirtualNetworkRule
      end
      def list_service_sas_response
        Azure::Storage::Mgmt::V2018_07_01::Models::ListServiceSasResponse
      end
      def network_rule_set
        Azure::Storage::Mgmt::V2018_07_01::Models::NetworkRuleSet
      end
      def iprule
        Azure::Storage::Mgmt::V2018_07_01::Models::IPRule
      end
      def identity
        Azure::Storage::Mgmt::V2018_07_01::Models::Identity
      end
      def metric_specification
        Azure::Storage::Mgmt::V2018_07_01::Models::MetricSpecification
      end
      def storage_sku_list_result
        Azure::Storage::Mgmt::V2018_07_01::Models::StorageSkuListResult
      end
      def list_container_items
        Azure::Storage::Mgmt::V2018_07_01::Models::ListContainerItems
      end
      def legal_hold
        Azure::Storage::Mgmt::V2018_07_01::Models::LegalHold
      end
      def operation_display
        Azure::Storage::Mgmt::V2018_07_01::Models::OperationDisplay
      end
      def legal_hold_properties
        Azure::Storage::Mgmt::V2018_07_01::Models::LegalHoldProperties
      end
      def restriction
        Azure::Storage::Mgmt::V2018_07_01::Models::Restriction
      end
      def tag_property
        Azure::Storage::Mgmt::V2018_07_01::Models::TagProperty
      end
      def operation
        Azure::Storage::Mgmt::V2018_07_01::Models::Operation
      end
      def update_history_property
        Azure::Storage::Mgmt::V2018_07_01::Models::UpdateHistoryProperty
      end
      def immutability_policy_properties
        Azure::Storage::Mgmt::V2018_07_01::Models::ImmutabilityPolicyProperties
      end
      def proxy_resource
        Azure::Storage::Mgmt::V2018_07_01::Models::ProxyResource
      end
      def tracked_resource
        Azure::Storage::Mgmt::V2018_07_01::Models::TrackedResource
      end
      def storage_account_check_name_availability_parameters
        Azure::Storage::Mgmt::V2018_07_01::Models::StorageAccountCheckNameAvailabilityParameters
      end
      def storage_account_key
        Azure::Storage::Mgmt::V2018_07_01::Models::StorageAccountKey
      end
      def sku
        Azure::Storage::Mgmt::V2018_07_01::Models::Sku
      end
      def storage_account_list_result
        Azure::Storage::Mgmt::V2018_07_01::Models::StorageAccountListResult
      end
      def encryption_service
        Azure::Storage::Mgmt::V2018_07_01::Models::EncryptionService
      end
      def storage_account_list_keys_result
        Azure::Storage::Mgmt::V2018_07_01::Models::StorageAccountListKeysResult
      end
      def encryption
        Azure::Storage::Mgmt::V2018_07_01::Models::Encryption
      end
      def storage_account_regenerate_key_parameters
        Azure::Storage::Mgmt::V2018_07_01::Models::StorageAccountRegenerateKeyParameters
      end
      def endpoints
        Azure::Storage::Mgmt::V2018_07_01::Models::Endpoints
      end
      def storage_account_update_parameters
        Azure::Storage::Mgmt::V2018_07_01::Models::StorageAccountUpdateParameters
      end
      def custom_domain
        Azure::Storage::Mgmt::V2018_07_01::Models::CustomDomain
      end
      def usage_name
        Azure::Storage::Mgmt::V2018_07_01::Models::UsageName
      end
      def storage_account_create_parameters
        Azure::Storage::Mgmt::V2018_07_01::Models::StorageAccountCreateParameters
      end
      def usage
        Azure::Storage::Mgmt::V2018_07_01::Models::Usage
      end
      def encryption_services
        Azure::Storage::Mgmt::V2018_07_01::Models::EncryptionServices
      end
      def usage_list_result
        Azure::Storage::Mgmt::V2018_07_01::Models::UsageListResult
      end
      def check_name_availability_result
        Azure::Storage::Mgmt::V2018_07_01::Models::CheckNameAvailabilityResult
      end
      def resource
        Azure::Storage::Mgmt::V2018_07_01::Models::Resource
      end
      def storage_account
        Azure::Storage::Mgmt::V2018_07_01::Models::StorageAccount
      end
      def reason_code
        Azure::Storage::Mgmt::V2018_07_01::Models::ReasonCode
      end
      def sku_name
        Azure::Storage::Mgmt::V2018_07_01::Models::SkuName
      end
      def azure_entity_resource
        Azure::Storage::Mgmt::V2018_07_01::Models::AzureEntityResource
      end
      def blob_container
        Azure::Storage::Mgmt::V2018_07_01::Models::BlobContainer
      end
      def immutability_policy
        Azure::Storage::Mgmt::V2018_07_01::Models::ImmutabilityPolicy
      end
      def list_container_item
        Azure::Storage::Mgmt::V2018_07_01::Models::ListContainerItem
      end
      def kind
        Azure::Storage::Mgmt::V2018_07_01::Models::Kind
      end
      def sku_tier
        Azure::Storage::Mgmt::V2018_07_01::Models::SkuTier
      end
      def bypass
        Azure::Storage::Mgmt::V2018_07_01::Models::Bypass
      end
      def action
        Azure::Storage::Mgmt::V2018_07_01::Models::Action
      end
      def provisioning_state
        Azure::Storage::Mgmt::V2018_07_01::Models::ProvisioningState
      end
      def account_status
        Azure::Storage::Mgmt::V2018_07_01::Models::AccountStatus
      end
      def access_tier
        Azure::Storage::Mgmt::V2018_07_01::Models::AccessTier
      end
      def usage_unit
        Azure::Storage::Mgmt::V2018_07_01::Models::UsageUnit
      end
      def key_source
        Azure::Storage::Mgmt::V2018_07_01::Models::KeySource
      end
      def public_access
        Azure::Storage::Mgmt::V2018_07_01::Models::PublicAccess
      end
      def default_action
        Azure::Storage::Mgmt::V2018_07_01::Models::DefaultAction
      end
      def services
        Azure::Storage::Mgmt::V2018_07_01::Models::Services
      end
      def signed_resource_types
        Azure::Storage::Mgmt::V2018_07_01::Models::SignedResourceTypes
      end
      def permissions
        Azure::Storage::Mgmt::V2018_07_01::Models::Permissions
      end
      def http_protocol
        Azure::Storage::Mgmt::V2018_07_01::Models::HttpProtocol
      end
      def key_permission
        Azure::Storage::Mgmt::V2018_07_01::Models::KeyPermission
      end
      def lease_status
        Azure::Storage::Mgmt::V2018_07_01::Models::LeaseStatus
      end
      def lease_state
        Azure::Storage::Mgmt::V2018_07_01::Models::LeaseState
      end
      def lease_duration
        Azure::Storage::Mgmt::V2018_07_01::Models::LeaseDuration
      end
      def immutability_policy_state
        Azure::Storage::Mgmt::V2018_07_01::Models::ImmutabilityPolicyState
      end
    end
  end
end
