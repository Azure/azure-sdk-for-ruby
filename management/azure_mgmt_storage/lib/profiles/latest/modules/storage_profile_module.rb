# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_storage'

module Azure::Storage::Profiles::Latest
  module Mgmt
    Operations = Azure::Storage::Mgmt::V2019_04_01::Operations
    Skus = Azure::Storage::Mgmt::V2019_04_01::Skus
    StorageAccounts = Azure::Storage::Mgmt::V2019_04_01::StorageAccounts
    Usages = Azure::Storage::Mgmt::V2019_04_01::Usages
    ManagementPolicies = Azure::Storage::Mgmt::V2019_04_01::ManagementPolicies
    BlobServices = Azure::Storage::Mgmt::V2019_04_01::BlobServices
    BlobContainers = Azure::Storage::Mgmt::V2019_04_01::BlobContainers
    FileServices = Azure::Storage::Mgmt::V2019_04_01::FileServices
    FileShares = Azure::Storage::Mgmt::V2019_04_01::FileShares

    module Models
      ListServiceSasResponse = Azure::Storage::Mgmt::V2019_04_01::Models::ListServiceSasResponse
      DateAfterModification = Azure::Storage::Mgmt::V2019_04_01::Models::DateAfterModification
      Dimension = Azure::Storage::Mgmt::V2019_04_01::Models::Dimension
      ManagementPolicyBaseBlob = Azure::Storage::Mgmt::V2019_04_01::Models::ManagementPolicyBaseBlob
      ServiceSpecification = Azure::Storage::Mgmt::V2019_04_01::Models::ServiceSpecification
      DateAfterCreation = Azure::Storage::Mgmt::V2019_04_01::Models::DateAfterCreation
      OperationListResult = Azure::Storage::Mgmt::V2019_04_01::Models::OperationListResult
      ManagementPolicySnapShot = Azure::Storage::Mgmt::V2019_04_01::Models::ManagementPolicySnapShot
      SKUCapability = Azure::Storage::Mgmt::V2019_04_01::Models::SKUCapability
      ManagementPolicyAction = Azure::Storage::Mgmt::V2019_04_01::Models::ManagementPolicyAction
      Sku = Azure::Storage::Mgmt::V2019_04_01::Models::Sku
      ManagementPolicyFilter = Azure::Storage::Mgmt::V2019_04_01::Models::ManagementPolicyFilter
      CheckNameAvailabilityResult = Azure::Storage::Mgmt::V2019_04_01::Models::CheckNameAvailabilityResult
      ManagementPolicyDefinition = Azure::Storage::Mgmt::V2019_04_01::Models::ManagementPolicyDefinition
      EncryptionService = Azure::Storage::Mgmt::V2019_04_01::Models::EncryptionService
      ManagementPolicyRule = Azure::Storage::Mgmt::V2019_04_01::Models::ManagementPolicyRule
      KeyVaultProperties = Azure::Storage::Mgmt::V2019_04_01::Models::KeyVaultProperties
      ManagementPolicySchema = Azure::Storage::Mgmt::V2019_04_01::Models::ManagementPolicySchema
      VirtualNetworkRule = Azure::Storage::Mgmt::V2019_04_01::Models::VirtualNetworkRule
      Restriction = Azure::Storage::Mgmt::V2019_04_01::Models::Restriction
      StorageSkuListResult = Azure::Storage::Mgmt::V2019_04_01::Models::StorageSkuListResult
      AzureFilesIdentityBasedAuthentication = Azure::Storage::Mgmt::V2019_04_01::Models::AzureFilesIdentityBasedAuthentication
      CustomDomain = Azure::Storage::Mgmt::V2019_04_01::Models::CustomDomain
      StorageAccountCreateParameters = Azure::Storage::Mgmt::V2019_04_01::Models::StorageAccountCreateParameters
      EncryptionServices = Azure::Storage::Mgmt::V2019_04_01::Models::EncryptionServices
      GeoReplicationStats = Azure::Storage::Mgmt::V2019_04_01::Models::GeoReplicationStats
      Encryption = Azure::Storage::Mgmt::V2019_04_01::Models::Encryption
      StorageAccountKey = Azure::Storage::Mgmt::V2019_04_01::Models::StorageAccountKey
      IPRule = Azure::Storage::Mgmt::V2019_04_01::Models::IPRule
      StorageAccountListKeysResult = Azure::Storage::Mgmt::V2019_04_01::Models::StorageAccountListKeysResult
      StorageAccountUpdateParameters = Azure::Storage::Mgmt::V2019_04_01::Models::StorageAccountUpdateParameters
      Usage = Azure::Storage::Mgmt::V2019_04_01::Models::Usage
      FileShareItems = Azure::Storage::Mgmt::V2019_04_01::Models::FileShareItems
      AccountSasParameters = Azure::Storage::Mgmt::V2019_04_01::Models::AccountSasParameters
      FileServiceItems = Azure::Storage::Mgmt::V2019_04_01::Models::FileServiceItems
      ServiceSasParameters = Azure::Storage::Mgmt::V2019_04_01::Models::ServiceSasParameters
      Resource = Azure::Storage::Mgmt::V2019_04_01::Models::Resource
      MetricSpecification = Azure::Storage::Mgmt::V2019_04_01::Models::MetricSpecification
      UpdateHistoryProperty = Azure::Storage::Mgmt::V2019_04_01::Models::UpdateHistoryProperty
      StorageAccountCheckNameAvailabilityParameters = Azure::Storage::Mgmt::V2019_04_01::Models::StorageAccountCheckNameAvailabilityParameters
      ImmutabilityPolicyProperties = Azure::Storage::Mgmt::V2019_04_01::Models::ImmutabilityPolicyProperties
      Identity = Azure::Storage::Mgmt::V2019_04_01::Models::Identity
      TagProperty = Azure::Storage::Mgmt::V2019_04_01::Models::TagProperty
      ChangeFeed = Azure::Storage::Mgmt::V2019_04_01::Models::ChangeFeed
      StorageAccountListResult = Azure::Storage::Mgmt::V2019_04_01::Models::StorageAccountListResult
      LegalHoldProperties = Azure::Storage::Mgmt::V2019_04_01::Models::LegalHoldProperties
      UsageName = Azure::Storage::Mgmt::V2019_04_01::Models::UsageName
      LeaseContainerResponse = Azure::Storage::Mgmt::V2019_04_01::Models::LeaseContainerResponse
      ListAccountSasResponse = Azure::Storage::Mgmt::V2019_04_01::Models::ListAccountSasResponse
      LeaseContainerRequest = Azure::Storage::Mgmt::V2019_04_01::Models::LeaseContainerRequest
      Operation = Azure::Storage::Mgmt::V2019_04_01::Models::Operation
      LegalHold = Azure::Storage::Mgmt::V2019_04_01::Models::LegalHold
      Endpoints = Azure::Storage::Mgmt::V2019_04_01::Models::Endpoints
      BlobServiceItems = Azure::Storage::Mgmt::V2019_04_01::Models::BlobServiceItems
      UsageListResult = Azure::Storage::Mgmt::V2019_04_01::Models::UsageListResult
      ListContainerItems = Azure::Storage::Mgmt::V2019_04_01::Models::ListContainerItems
      NetworkRuleSet = Azure::Storage::Mgmt::V2019_04_01::Models::NetworkRuleSet
      CorsRule = Azure::Storage::Mgmt::V2019_04_01::Models::CorsRule
      OperationDisplay = Azure::Storage::Mgmt::V2019_04_01::Models::OperationDisplay
      CorsRules = Azure::Storage::Mgmt::V2019_04_01::Models::CorsRules
      StorageAccountRegenerateKeyParameters = Azure::Storage::Mgmt::V2019_04_01::Models::StorageAccountRegenerateKeyParameters
      DeleteRetentionPolicy = Azure::Storage::Mgmt::V2019_04_01::Models::DeleteRetentionPolicy
      StorageAccount = Azure::Storage::Mgmt::V2019_04_01::Models::StorageAccount
      ManagementPolicy = Azure::Storage::Mgmt::V2019_04_01::Models::ManagementPolicy
      ProxyResource = Azure::Storage::Mgmt::V2019_04_01::Models::ProxyResource
      TrackedResource = Azure::Storage::Mgmt::V2019_04_01::Models::TrackedResource
      AzureEntityResource = Azure::Storage::Mgmt::V2019_04_01::Models::AzureEntityResource
      BlobContainer = Azure::Storage::Mgmt::V2019_04_01::Models::BlobContainer
      ImmutabilityPolicy = Azure::Storage::Mgmt::V2019_04_01::Models::ImmutabilityPolicy
      ListContainerItem = Azure::Storage::Mgmt::V2019_04_01::Models::ListContainerItem
      BlobServiceProperties = Azure::Storage::Mgmt::V2019_04_01::Models::BlobServiceProperties
      FileServiceProperties = Azure::Storage::Mgmt::V2019_04_01::Models::FileServiceProperties
      FileShare = Azure::Storage::Mgmt::V2019_04_01::Models::FileShare
      FileShareItem = Azure::Storage::Mgmt::V2019_04_01::Models::FileShareItem
      ReasonCode = Azure::Storage::Mgmt::V2019_04_01::Models::ReasonCode
      SkuName = Azure::Storage::Mgmt::V2019_04_01::Models::SkuName
      SkuTier = Azure::Storage::Mgmt::V2019_04_01::Models::SkuTier
      Kind = Azure::Storage::Mgmt::V2019_04_01::Models::Kind
      Reason = Azure::Storage::Mgmt::V2019_04_01::Models::Reason
      KeySource = Azure::Storage::Mgmt::V2019_04_01::Models::KeySource
      Action = Azure::Storage::Mgmt::V2019_04_01::Models::Action
      State = Azure::Storage::Mgmt::V2019_04_01::Models::State
      Bypass = Azure::Storage::Mgmt::V2019_04_01::Models::Bypass
      DefaultAction = Azure::Storage::Mgmt::V2019_04_01::Models::DefaultAction
      DirectoryServiceOptions = Azure::Storage::Mgmt::V2019_04_01::Models::DirectoryServiceOptions
      AccessTier = Azure::Storage::Mgmt::V2019_04_01::Models::AccessTier
      LargeFileSharesState = Azure::Storage::Mgmt::V2019_04_01::Models::LargeFileSharesState
      GeoReplicationStatus = Azure::Storage::Mgmt::V2019_04_01::Models::GeoReplicationStatus
      ProvisioningState = Azure::Storage::Mgmt::V2019_04_01::Models::ProvisioningState
      AccountStatus = Azure::Storage::Mgmt::V2019_04_01::Models::AccountStatus
      KeyPermission = Azure::Storage::Mgmt::V2019_04_01::Models::KeyPermission
      UsageUnit = Azure::Storage::Mgmt::V2019_04_01::Models::UsageUnit
      Services = Azure::Storage::Mgmt::V2019_04_01::Models::Services
      SignedResourceTypes = Azure::Storage::Mgmt::V2019_04_01::Models::SignedResourceTypes
      Permissions = Azure::Storage::Mgmt::V2019_04_01::Models::Permissions
      HttpProtocol = Azure::Storage::Mgmt::V2019_04_01::Models::HttpProtocol
      SignedResource = Azure::Storage::Mgmt::V2019_04_01::Models::SignedResource
      PublicAccess = Azure::Storage::Mgmt::V2019_04_01::Models::PublicAccess
      LeaseStatus = Azure::Storage::Mgmt::V2019_04_01::Models::LeaseStatus
      LeaseState = Azure::Storage::Mgmt::V2019_04_01::Models::LeaseState
      LeaseDuration = Azure::Storage::Mgmt::V2019_04_01::Models::LeaseDuration
      ImmutabilityPolicyState = Azure::Storage::Mgmt::V2019_04_01::Models::ImmutabilityPolicyState
      ImmutabilityPolicyUpdateType = Azure::Storage::Mgmt::V2019_04_01::Models::ImmutabilityPolicyUpdateType
      StorageAccountExpand = Azure::Storage::Mgmt::V2019_04_01::Models::StorageAccountExpand
    end

    #
    # StorageManagementClass
    #
    class StorageManagementClass
      attr_reader :operations, :skus, :storage_accounts, :usages, :management_policies, :blob_services, :blob_containers, :file_services, :file_shares, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::Storage::Mgmt::V2019_04_01::StorageManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @operations = @client_0.operations
        @skus = @client_0.skus
        @storage_accounts = @client_0.storage_accounts
        @usages = @client_0.usages
        @management_policies = @client_0.management_policies
        @blob_services = @client_0.blob_services
        @blob_containers = @client_0.blob_containers
        @file_services = @client_0.file_services
        @file_shares = @client_0.file_shares

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
      def list_service_sas_response
        Azure::Storage::Mgmt::V2019_04_01::Models::ListServiceSasResponse
      end
      def date_after_modification
        Azure::Storage::Mgmt::V2019_04_01::Models::DateAfterModification
      end
      def dimension
        Azure::Storage::Mgmt::V2019_04_01::Models::Dimension
      end
      def management_policy_base_blob
        Azure::Storage::Mgmt::V2019_04_01::Models::ManagementPolicyBaseBlob
      end
      def service_specification
        Azure::Storage::Mgmt::V2019_04_01::Models::ServiceSpecification
      end
      def date_after_creation
        Azure::Storage::Mgmt::V2019_04_01::Models::DateAfterCreation
      end
      def operation_list_result
        Azure::Storage::Mgmt::V2019_04_01::Models::OperationListResult
      end
      def management_policy_snap_shot
        Azure::Storage::Mgmt::V2019_04_01::Models::ManagementPolicySnapShot
      end
      def skucapability
        Azure::Storage::Mgmt::V2019_04_01::Models::SKUCapability
      end
      def management_policy_action
        Azure::Storage::Mgmt::V2019_04_01::Models::ManagementPolicyAction
      end
      def sku
        Azure::Storage::Mgmt::V2019_04_01::Models::Sku
      end
      def management_policy_filter
        Azure::Storage::Mgmt::V2019_04_01::Models::ManagementPolicyFilter
      end
      def check_name_availability_result
        Azure::Storage::Mgmt::V2019_04_01::Models::CheckNameAvailabilityResult
      end
      def management_policy_definition
        Azure::Storage::Mgmt::V2019_04_01::Models::ManagementPolicyDefinition
      end
      def encryption_service
        Azure::Storage::Mgmt::V2019_04_01::Models::EncryptionService
      end
      def management_policy_rule
        Azure::Storage::Mgmt::V2019_04_01::Models::ManagementPolicyRule
      end
      def key_vault_properties
        Azure::Storage::Mgmt::V2019_04_01::Models::KeyVaultProperties
      end
      def management_policy_schema
        Azure::Storage::Mgmt::V2019_04_01::Models::ManagementPolicySchema
      end
      def virtual_network_rule
        Azure::Storage::Mgmt::V2019_04_01::Models::VirtualNetworkRule
      end
      def restriction
        Azure::Storage::Mgmt::V2019_04_01::Models::Restriction
      end
      def storage_sku_list_result
        Azure::Storage::Mgmt::V2019_04_01::Models::StorageSkuListResult
      end
      def azure_files_identity_based_authentication
        Azure::Storage::Mgmt::V2019_04_01::Models::AzureFilesIdentityBasedAuthentication
      end
      def custom_domain
        Azure::Storage::Mgmt::V2019_04_01::Models::CustomDomain
      end
      def storage_account_create_parameters
        Azure::Storage::Mgmt::V2019_04_01::Models::StorageAccountCreateParameters
      end
      def encryption_services
        Azure::Storage::Mgmt::V2019_04_01::Models::EncryptionServices
      end
      def geo_replication_stats
        Azure::Storage::Mgmt::V2019_04_01::Models::GeoReplicationStats
      end
      def encryption
        Azure::Storage::Mgmt::V2019_04_01::Models::Encryption
      end
      def storage_account_key
        Azure::Storage::Mgmt::V2019_04_01::Models::StorageAccountKey
      end
      def iprule
        Azure::Storage::Mgmt::V2019_04_01::Models::IPRule
      end
      def storage_account_list_keys_result
        Azure::Storage::Mgmt::V2019_04_01::Models::StorageAccountListKeysResult
      end
      def storage_account_update_parameters
        Azure::Storage::Mgmt::V2019_04_01::Models::StorageAccountUpdateParameters
      end
      def usage
        Azure::Storage::Mgmt::V2019_04_01::Models::Usage
      end
      def file_share_items
        Azure::Storage::Mgmt::V2019_04_01::Models::FileShareItems
      end
      def account_sas_parameters
        Azure::Storage::Mgmt::V2019_04_01::Models::AccountSasParameters
      end
      def file_service_items
        Azure::Storage::Mgmt::V2019_04_01::Models::FileServiceItems
      end
      def service_sas_parameters
        Azure::Storage::Mgmt::V2019_04_01::Models::ServiceSasParameters
      end
      def resource
        Azure::Storage::Mgmt::V2019_04_01::Models::Resource
      end
      def metric_specification
        Azure::Storage::Mgmt::V2019_04_01::Models::MetricSpecification
      end
      def update_history_property
        Azure::Storage::Mgmt::V2019_04_01::Models::UpdateHistoryProperty
      end
      def storage_account_check_name_availability_parameters
        Azure::Storage::Mgmt::V2019_04_01::Models::StorageAccountCheckNameAvailabilityParameters
      end
      def immutability_policy_properties
        Azure::Storage::Mgmt::V2019_04_01::Models::ImmutabilityPolicyProperties
      end
      def identity
        Azure::Storage::Mgmt::V2019_04_01::Models::Identity
      end
      def tag_property
        Azure::Storage::Mgmt::V2019_04_01::Models::TagProperty
      end
      def change_feed
        Azure::Storage::Mgmt::V2019_04_01::Models::ChangeFeed
      end
      def storage_account_list_result
        Azure::Storage::Mgmt::V2019_04_01::Models::StorageAccountListResult
      end
      def legal_hold_properties
        Azure::Storage::Mgmt::V2019_04_01::Models::LegalHoldProperties
      end
      def usage_name
        Azure::Storage::Mgmt::V2019_04_01::Models::UsageName
      end
      def lease_container_response
        Azure::Storage::Mgmt::V2019_04_01::Models::LeaseContainerResponse
      end
      def list_account_sas_response
        Azure::Storage::Mgmt::V2019_04_01::Models::ListAccountSasResponse
      end
      def lease_container_request
        Azure::Storage::Mgmt::V2019_04_01::Models::LeaseContainerRequest
      end
      def operation
        Azure::Storage::Mgmt::V2019_04_01::Models::Operation
      end
      def legal_hold
        Azure::Storage::Mgmt::V2019_04_01::Models::LegalHold
      end
      def endpoints
        Azure::Storage::Mgmt::V2019_04_01::Models::Endpoints
      end
      def blob_service_items
        Azure::Storage::Mgmt::V2019_04_01::Models::BlobServiceItems
      end
      def usage_list_result
        Azure::Storage::Mgmt::V2019_04_01::Models::UsageListResult
      end
      def list_container_items
        Azure::Storage::Mgmt::V2019_04_01::Models::ListContainerItems
      end
      def network_rule_set
        Azure::Storage::Mgmt::V2019_04_01::Models::NetworkRuleSet
      end
      def cors_rule
        Azure::Storage::Mgmt::V2019_04_01::Models::CorsRule
      end
      def operation_display
        Azure::Storage::Mgmt::V2019_04_01::Models::OperationDisplay
      end
      def cors_rules
        Azure::Storage::Mgmt::V2019_04_01::Models::CorsRules
      end
      def storage_account_regenerate_key_parameters
        Azure::Storage::Mgmt::V2019_04_01::Models::StorageAccountRegenerateKeyParameters
      end
      def delete_retention_policy
        Azure::Storage::Mgmt::V2019_04_01::Models::DeleteRetentionPolicy
      end
      def storage_account
        Azure::Storage::Mgmt::V2019_04_01::Models::StorageAccount
      end
      def management_policy
        Azure::Storage::Mgmt::V2019_04_01::Models::ManagementPolicy
      end
      def proxy_resource
        Azure::Storage::Mgmt::V2019_04_01::Models::ProxyResource
      end
      def tracked_resource
        Azure::Storage::Mgmt::V2019_04_01::Models::TrackedResource
      end
      def azure_entity_resource
        Azure::Storage::Mgmt::V2019_04_01::Models::AzureEntityResource
      end
      def blob_container
        Azure::Storage::Mgmt::V2019_04_01::Models::BlobContainer
      end
      def immutability_policy
        Azure::Storage::Mgmt::V2019_04_01::Models::ImmutabilityPolicy
      end
      def list_container_item
        Azure::Storage::Mgmt::V2019_04_01::Models::ListContainerItem
      end
      def blob_service_properties
        Azure::Storage::Mgmt::V2019_04_01::Models::BlobServiceProperties
      end
      def file_service_properties
        Azure::Storage::Mgmt::V2019_04_01::Models::FileServiceProperties
      end
      def file_share
        Azure::Storage::Mgmt::V2019_04_01::Models::FileShare
      end
      def file_share_item
        Azure::Storage::Mgmt::V2019_04_01::Models::FileShareItem
      end
      def reason_code
        Azure::Storage::Mgmt::V2019_04_01::Models::ReasonCode
      end
      def sku_name
        Azure::Storage::Mgmt::V2019_04_01::Models::SkuName
      end
      def sku_tier
        Azure::Storage::Mgmt::V2019_04_01::Models::SkuTier
      end
      def kind
        Azure::Storage::Mgmt::V2019_04_01::Models::Kind
      end
      def reason
        Azure::Storage::Mgmt::V2019_04_01::Models::Reason
      end
      def key_source
        Azure::Storage::Mgmt::V2019_04_01::Models::KeySource
      end
      def action
        Azure::Storage::Mgmt::V2019_04_01::Models::Action
      end
      def state
        Azure::Storage::Mgmt::V2019_04_01::Models::State
      end
      def bypass
        Azure::Storage::Mgmt::V2019_04_01::Models::Bypass
      end
      def default_action
        Azure::Storage::Mgmt::V2019_04_01::Models::DefaultAction
      end
      def directory_service_options
        Azure::Storage::Mgmt::V2019_04_01::Models::DirectoryServiceOptions
      end
      def access_tier
        Azure::Storage::Mgmt::V2019_04_01::Models::AccessTier
      end
      def large_file_shares_state
        Azure::Storage::Mgmt::V2019_04_01::Models::LargeFileSharesState
      end
      def geo_replication_status
        Azure::Storage::Mgmt::V2019_04_01::Models::GeoReplicationStatus
      end
      def provisioning_state
        Azure::Storage::Mgmt::V2019_04_01::Models::ProvisioningState
      end
      def account_status
        Azure::Storage::Mgmt::V2019_04_01::Models::AccountStatus
      end
      def key_permission
        Azure::Storage::Mgmt::V2019_04_01::Models::KeyPermission
      end
      def usage_unit
        Azure::Storage::Mgmt::V2019_04_01::Models::UsageUnit
      end
      def services
        Azure::Storage::Mgmt::V2019_04_01::Models::Services
      end
      def signed_resource_types
        Azure::Storage::Mgmt::V2019_04_01::Models::SignedResourceTypes
      end
      def permissions
        Azure::Storage::Mgmt::V2019_04_01::Models::Permissions
      end
      def http_protocol
        Azure::Storage::Mgmt::V2019_04_01::Models::HttpProtocol
      end
      def signed_resource
        Azure::Storage::Mgmt::V2019_04_01::Models::SignedResource
      end
      def public_access
        Azure::Storage::Mgmt::V2019_04_01::Models::PublicAccess
      end
      def lease_status
        Azure::Storage::Mgmt::V2019_04_01::Models::LeaseStatus
      end
      def lease_state
        Azure::Storage::Mgmt::V2019_04_01::Models::LeaseState
      end
      def lease_duration
        Azure::Storage::Mgmt::V2019_04_01::Models::LeaseDuration
      end
      def immutability_policy_state
        Azure::Storage::Mgmt::V2019_04_01::Models::ImmutabilityPolicyState
      end
      def immutability_policy_update_type
        Azure::Storage::Mgmt::V2019_04_01::Models::ImmutabilityPolicyUpdateType
      end
      def storage_account_expand
        Azure::Storage::Mgmt::V2019_04_01::Models::StorageAccountExpand
      end
    end
  end
end
