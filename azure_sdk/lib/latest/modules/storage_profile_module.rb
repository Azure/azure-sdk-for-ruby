# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_storage'

module Azure::Profiles::Latest
  module Storage
    module Mgmt
      StorageAccounts = Azure::Storage::Mgmt::V2018_07_01::StorageAccounts
      Skus = Azure::Storage::Mgmt::V2018_07_01::Skus
      Usages = Azure::Storage::Mgmt::V2018_07_01::Usages
      BlobContainers = Azure::Storage::Mgmt::V2018_07_01::BlobContainers
      Operations = Azure::Storage::Mgmt::V2018_07_01::Operations

      module Models
        ManagementPoliciesRulesSetParameter = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ManagementPoliciesRulesSetParameter
        StorageAccountManagementPolicies = Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountManagementPolicies
        ProvisioningState = Azure::Storage::Mgmt::V2018_07_01::Models::ProvisioningState
        StorageAccountCheckNameAvailabilityParameters = Azure::Storage::Mgmt::V2018_07_01::Models::StorageAccountCheckNameAvailabilityParameters
        StorageAccountKey = Azure::Storage::Mgmt::V2018_07_01::Models::StorageAccountKey
        StorageAccountListResult = Azure::Storage::Mgmt::V2018_07_01::Models::StorageAccountListResult
        EncryptionService = Azure::Storage::Mgmt::V2018_07_01::Models::EncryptionService
        StorageAccountListKeysResult = Azure::Storage::Mgmt::V2018_07_01::Models::StorageAccountListKeysResult
        Encryption = Azure::Storage::Mgmt::V2018_07_01::Models::Encryption
        StorageAccountRegenerateKeyParameters = Azure::Storage::Mgmt::V2018_07_01::Models::StorageAccountRegenerateKeyParameters
        Endpoints = Azure::Storage::Mgmt::V2018_07_01::Models::Endpoints
        CustomDomain = Azure::Storage::Mgmt::V2018_07_01::Models::CustomDomain
        Identity = Azure::Storage::Mgmt::V2018_07_01::Models::Identity
        UsageListResult = Azure::Storage::Mgmt::V2018_07_01::Models::UsageListResult
        StorageAccount = Azure::Storage::Mgmt::V2018_07_01::Models::StorageAccount
        EncryptionServices = Azure::Storage::Mgmt::V2018_07_01::Models::EncryptionServices
        SkuTier = Azure::Storage::Mgmt::V2018_07_01::Models::SkuTier
        Kind = Azure::Storage::Mgmt::V2018_07_01::Models::Kind
        VirtualNetworkRule = Azure::Storage::Mgmt::V2018_07_01::Models::VirtualNetworkRule
        AccessTier = Azure::Storage::Mgmt::V2018_07_01::Models::AccessTier
        Reason = Azure::Storage::Mgmt::V2018_07_01::Models::Reason
        AccountStatus = Azure::Storage::Mgmt::V2018_07_01::Models::AccountStatus
        KeyPermission = Azure::Storage::Mgmt::V2018_07_01::Models::KeyPermission
        UsageUnit = Azure::Storage::Mgmt::V2018_07_01::Models::UsageUnit
        UsageName = Azure::Storage::Mgmt::V2018_07_01::Models::UsageName
        State = Azure::Storage::Mgmt::V2018_07_01::Models::State
        StorageAccountCreateParameters = Azure::Storage::Mgmt::V2018_07_01::Models::StorageAccountCreateParameters
        StorageAccountUpdateParameters = Azure::Storage::Mgmt::V2018_07_01::Models::StorageAccountUpdateParameters
        Resource = Azure::Storage::Mgmt::V2018_07_01::Models::Resource
        Permissions = Azure::Storage::Mgmt::V2018_07_01::Models::Permissions
        SKUCapability = Azure::Storage::Mgmt::V2018_07_01::Models::SKUCapability
        AccountSasParameters = Azure::Storage::Mgmt::V2018_07_01::Models::AccountSasParameters
        ListAccountSasResponse = Azure::Storage::Mgmt::V2018_07_01::Models::ListAccountSasResponse
        KeyVaultProperties = Azure::Storage::Mgmt::V2018_07_01::Models::KeyVaultProperties
        ServiceSasParameters = Azure::Storage::Mgmt::V2018_07_01::Models::ServiceSasParameters
        OperationListResult = Azure::Storage::Mgmt::V2018_07_01::Models::OperationListResult
        ListServiceSasResponse = Azure::Storage::Mgmt::V2018_07_01::Models::ListServiceSasResponse
        OperationDisplay = Azure::Storage::Mgmt::V2018_07_01::Models::OperationDisplay
        ListContainerItems = Azure::Storage::Mgmt::V2018_07_01::Models::ListContainerItems
        Operation = Azure::Storage::Mgmt::V2018_07_01::Models::Operation
        LegalHoldProperties = Azure::Storage::Mgmt::V2018_07_01::Models::LegalHoldProperties
        Restriction = Azure::Storage::Mgmt::V2018_07_01::Models::Restriction
        CheckNameAvailabilityResult = Azure::Storage::Mgmt::V2018_07_01::Models::CheckNameAvailabilityResult
        TagProperty = Azure::Storage::Mgmt::V2018_07_01::Models::TagProperty
        UpdateHistoryProperty = Azure::Storage::Mgmt::V2018_07_01::Models::UpdateHistoryProperty
        ImmutabilityPolicyProperties = Azure::Storage::Mgmt::V2018_07_01::Models::ImmutabilityPolicyProperties
        ServiceSpecification = Azure::Storage::Mgmt::V2018_07_01::Models::ServiceSpecification
        StorageSkuListResult = Azure::Storage::Mgmt::V2018_07_01::Models::StorageSkuListResult
        Dimension = Azure::Storage::Mgmt::V2018_07_01::Models::Dimension
        LegalHold = Azure::Storage::Mgmt::V2018_07_01::Models::LegalHold
        MetricSpecification = Azure::Storage::Mgmt::V2018_07_01::Models::MetricSpecification
        ListContainerItem = Azure::Storage::Mgmt::V2018_07_01::Models::ListContainerItem
        BlobContainer = Azure::Storage::Mgmt::V2018_07_01::Models::BlobContainer
        Usage = Azure::Storage::Mgmt::V2018_07_01::Models::Usage
        Bypass = Azure::Storage::Mgmt::V2018_07_01::Models::Bypass
        ReasonCode = Azure::Storage::Mgmt::V2018_07_01::Models::ReasonCode
        SkuName = Azure::Storage::Mgmt::V2018_07_01::Models::SkuName
        ImmutabilityPolicy = Azure::Storage::Mgmt::V2018_07_01::Models::ImmutabilityPolicy
        Action = Azure::Storage::Mgmt::V2018_07_01::Models::Action
        SignedResourceTypes = Azure::Storage::Mgmt::V2018_07_01::Models::SignedResourceTypes
        KeySource = Azure::Storage::Mgmt::V2018_07_01::Models::KeySource
        SignedResource = Azure::Storage::Mgmt::V2018_07_01::Models::SignedResource
        Sku = Azure::Storage::Mgmt::V2018_07_01::Models::Sku
        Services = Azure::Storage::Mgmt::V2018_07_01::Models::Services
        HttpProtocol = Azure::Storage::Mgmt::V2018_07_01::Models::HttpProtocol
        LeaseDuration = Azure::Storage::Mgmt::V2018_07_01::Models::LeaseDuration
        PublicAccess = Azure::Storage::Mgmt::V2018_07_01::Models::PublicAccess
        DefaultAction = Azure::Storage::Mgmt::V2018_07_01::Models::DefaultAction
        LeaseState = Azure::Storage::Mgmt::V2018_07_01::Models::LeaseState
        TrackedResource = Azure::Storage::Mgmt::V2018_07_01::Models::TrackedResource
        ImmutabilityPolicyState = Azure::Storage::Mgmt::V2018_07_01::Models::ImmutabilityPolicyState
        IPRule = Azure::Storage::Mgmt::V2018_07_01::Models::IPRule
        NetworkRuleSet = Azure::Storage::Mgmt::V2018_07_01::Models::NetworkRuleSet
        AzureEntityResource = Azure::Storage::Mgmt::V2018_07_01::Models::AzureEntityResource
        ProxyResource = Azure::Storage::Mgmt::V2018_07_01::Models::ProxyResource
        ImmutabilityPolicyUpdateType = Azure::Storage::Mgmt::V2018_07_01::Models::ImmutabilityPolicyUpdateType
        LeaseStatus = Azure::Storage::Mgmt::V2018_07_01::Models::LeaseStatus
      end

      class StorageManagementClass
        attr_reader :storage_accounts, :skus, :usages, :blob_containers, :operations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

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
          @storage_accounts = @client_1.storage_accounts
          @skus = @client_1.skus
          @usages = @client_1.usages
          @blob_containers = @client_1.blob_containers
          @operations = @client_1.operations

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Storage/Mgmt"
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

        class ModelClasses
          def management_policies_rules_set_parameter
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::ManagementPoliciesRulesSetParameter
          end
          def storage_account_management_policies
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountManagementPolicies
          end
          def provisioning_state
            Azure::Storage::Mgmt::V2018_07_01::Models::ProvisioningState
          end
          def storage_account_check_name_availability_parameters
            Azure::Storage::Mgmt::V2018_07_01::Models::StorageAccountCheckNameAvailabilityParameters
          end
          def storage_account_key
            Azure::Storage::Mgmt::V2018_07_01::Models::StorageAccountKey
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
          def custom_domain
            Azure::Storage::Mgmt::V2018_07_01::Models::CustomDomain
          end
          def identity
            Azure::Storage::Mgmt::V2018_07_01::Models::Identity
          end
          def usage_list_result
            Azure::Storage::Mgmt::V2018_07_01::Models::UsageListResult
          end
          def storage_account
            Azure::Storage::Mgmt::V2018_07_01::Models::StorageAccount
          end
          def encryption_services
            Azure::Storage::Mgmt::V2018_07_01::Models::EncryptionServices
          end
          def sku_tier
            Azure::Storage::Mgmt::V2018_07_01::Models::SkuTier
          end
          def kind
            Azure::Storage::Mgmt::V2018_07_01::Models::Kind
          end
          def virtual_network_rule
            Azure::Storage::Mgmt::V2018_07_01::Models::VirtualNetworkRule
          end
          def access_tier
            Azure::Storage::Mgmt::V2018_07_01::Models::AccessTier
          end
          def reason
            Azure::Storage::Mgmt::V2018_07_01::Models::Reason
          end
          def account_status
            Azure::Storage::Mgmt::V2018_07_01::Models::AccountStatus
          end
          def key_permission
            Azure::Storage::Mgmt::V2018_07_01::Models::KeyPermission
          end
          def usage_unit
            Azure::Storage::Mgmt::V2018_07_01::Models::UsageUnit
          end
          def usage_name
            Azure::Storage::Mgmt::V2018_07_01::Models::UsageName
          end
          def state
            Azure::Storage::Mgmt::V2018_07_01::Models::State
          end
          def storage_account_create_parameters
            Azure::Storage::Mgmt::V2018_07_01::Models::StorageAccountCreateParameters
          end
          def storage_account_update_parameters
            Azure::Storage::Mgmt::V2018_07_01::Models::StorageAccountUpdateParameters
          end
          def resource
            Azure::Storage::Mgmt::V2018_07_01::Models::Resource
          end
          def permissions
            Azure::Storage::Mgmt::V2018_07_01::Models::Permissions
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
          def operation_list_result
            Azure::Storage::Mgmt::V2018_07_01::Models::OperationListResult
          end
          def list_service_sas_response
            Azure::Storage::Mgmt::V2018_07_01::Models::ListServiceSasResponse
          end
          def operation_display
            Azure::Storage::Mgmt::V2018_07_01::Models::OperationDisplay
          end
          def list_container_items
            Azure::Storage::Mgmt::V2018_07_01::Models::ListContainerItems
          end
          def operation
            Azure::Storage::Mgmt::V2018_07_01::Models::Operation
          end
          def legal_hold_properties
            Azure::Storage::Mgmt::V2018_07_01::Models::LegalHoldProperties
          end
          def restriction
            Azure::Storage::Mgmt::V2018_07_01::Models::Restriction
          end
          def check_name_availability_result
            Azure::Storage::Mgmt::V2018_07_01::Models::CheckNameAvailabilityResult
          end
          def tag_property
            Azure::Storage::Mgmt::V2018_07_01::Models::TagProperty
          end
          def update_history_property
            Azure::Storage::Mgmt::V2018_07_01::Models::UpdateHistoryProperty
          end
          def immutability_policy_properties
            Azure::Storage::Mgmt::V2018_07_01::Models::ImmutabilityPolicyProperties
          end
          def service_specification
            Azure::Storage::Mgmt::V2018_07_01::Models::ServiceSpecification
          end
          def storage_sku_list_result
            Azure::Storage::Mgmt::V2018_07_01::Models::StorageSkuListResult
          end
          def dimension
            Azure::Storage::Mgmt::V2018_07_01::Models::Dimension
          end
          def legal_hold
            Azure::Storage::Mgmt::V2018_07_01::Models::LegalHold
          end
          def metric_specification
            Azure::Storage::Mgmt::V2018_07_01::Models::MetricSpecification
          end
          def list_container_item
            Azure::Storage::Mgmt::V2018_07_01::Models::ListContainerItem
          end
          def blob_container
            Azure::Storage::Mgmt::V2018_07_01::Models::BlobContainer
          end
          def usage
            Azure::Storage::Mgmt::V2018_07_01::Models::Usage
          end
          def bypass
            Azure::Storage::Mgmt::V2018_07_01::Models::Bypass
          end
          def reason_code
            Azure::Storage::Mgmt::V2018_07_01::Models::ReasonCode
          end
          def sku_name
            Azure::Storage::Mgmt::V2018_07_01::Models::SkuName
          end
          def immutability_policy
            Azure::Storage::Mgmt::V2018_07_01::Models::ImmutabilityPolicy
          end
          def action
            Azure::Storage::Mgmt::V2018_07_01::Models::Action
          end
          def signed_resource_types
            Azure::Storage::Mgmt::V2018_07_01::Models::SignedResourceTypes
          end
          def key_source
            Azure::Storage::Mgmt::V2018_07_01::Models::KeySource
          end
          def signed_resource
            Azure::Storage::Mgmt::V2018_07_01::Models::SignedResource
          end
          def sku
            Azure::Storage::Mgmt::V2018_07_01::Models::Sku
          end
          def services
            Azure::Storage::Mgmt::V2018_07_01::Models::Services
          end
          def http_protocol
            Azure::Storage::Mgmt::V2018_07_01::Models::HttpProtocol
          end
          def lease_duration
            Azure::Storage::Mgmt::V2018_07_01::Models::LeaseDuration
          end
          def public_access
            Azure::Storage::Mgmt::V2018_07_01::Models::PublicAccess
          end
          def default_action
            Azure::Storage::Mgmt::V2018_07_01::Models::DefaultAction
          end
          def lease_state
            Azure::Storage::Mgmt::V2018_07_01::Models::LeaseState
          end
          def tracked_resource
            Azure::Storage::Mgmt::V2018_07_01::Models::TrackedResource
          end
          def immutability_policy_state
            Azure::Storage::Mgmt::V2018_07_01::Models::ImmutabilityPolicyState
          end
          def iprule
            Azure::Storage::Mgmt::V2018_07_01::Models::IPRule
          end
          def network_rule_set
            Azure::Storage::Mgmt::V2018_07_01::Models::NetworkRuleSet
          end
          def azure_entity_resource
            Azure::Storage::Mgmt::V2018_07_01::Models::AzureEntityResource
          end
          def proxy_resource
            Azure::Storage::Mgmt::V2018_07_01::Models::ProxyResource
          end
          def immutability_policy_update_type
            Azure::Storage::Mgmt::V2018_07_01::Models::ImmutabilityPolicyUpdateType
          end
          def lease_status
            Azure::Storage::Mgmt::V2018_07_01::Models::LeaseStatus
          end
        end
      end
    end
  end
end
