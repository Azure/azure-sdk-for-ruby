# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_storage'

module Azure::Storage::Profiles::Latest
  module Mgmt
    Operations = Azure::Storage::Mgmt::V2021_01_01::Operations
    Skus = Azure::Storage::Mgmt::V2021_01_01::Skus
    StorageAccounts = Azure::Storage::Mgmt::V2021_01_01::StorageAccounts
    DeletedAccounts = Azure::Storage::Mgmt::V2021_01_01::DeletedAccounts
    Usages = Azure::Storage::Mgmt::V2021_01_01::Usages
    ManagementPolicies = Azure::Storage::Mgmt::V2021_01_01::ManagementPolicies
    BlobInventoryPolicies = Azure::Storage::Mgmt::V2021_01_01::BlobInventoryPolicies
    PrivateEndpointConnections = Azure::Storage::Mgmt::V2021_01_01::PrivateEndpointConnections
    PrivateLinkResources = Azure::Storage::Mgmt::V2021_01_01::PrivateLinkResources
    ObjectReplicationPoliciesOperations = Azure::Storage::Mgmt::V2021_01_01::ObjectReplicationPoliciesOperations
    EncryptionScopes = Azure::Storage::Mgmt::V2021_01_01::EncryptionScopes
    BlobServices = Azure::Storage::Mgmt::V2021_01_01::BlobServices
    BlobContainers = Azure::Storage::Mgmt::V2021_01_01::BlobContainers
    FileServices = Azure::Storage::Mgmt::V2021_01_01::FileServices
    FileShares = Azure::Storage::Mgmt::V2021_01_01::FileShares
    QueueServices = Azure::Storage::Mgmt::V2021_01_01::QueueServices
    Queue = Azure::Storage::Mgmt::V2021_01_01::Queue
    TableServices = Azure::Storage::Mgmt::V2021_01_01::TableServices
    TableOperations = Azure::Storage::Mgmt::V2021_01_01::TableOperations

    module Models
      ManagementPolicyRule = Azure::Storage::Mgmt::V2021_01_01::Models::ManagementPolicyRule
      OperationDisplay = Azure::Storage::Mgmt::V2021_01_01::Models::OperationDisplay
      ManagementPolicySchema = Azure::Storage::Mgmt::V2021_01_01::Models::ManagementPolicySchema
      MetricSpecification = Azure::Storage::Mgmt::V2021_01_01::Models::MetricSpecification
      ManagementPolicyBaseBlob = Azure::Storage::Mgmt::V2021_01_01::Models::ManagementPolicyBaseBlob
      Operation = Azure::Storage::Mgmt::V2021_01_01::Models::Operation
      DateAfterCreation = Azure::Storage::Mgmt::V2021_01_01::Models::DateAfterCreation
      StorageAccountCheckNameAvailabilityParameters = Azure::Storage::Mgmt::V2021_01_01::Models::StorageAccountCheckNameAvailabilityParameters
      ManagementPolicySnapShot = Azure::Storage::Mgmt::V2021_01_01::Models::ManagementPolicySnapShot
      Restriction = Azure::Storage::Mgmt::V2021_01_01::Models::Restriction
      ManagementPolicyVersion = Azure::Storage::Mgmt::V2021_01_01::Models::ManagementPolicyVersion
      StorageSkuListResult = Azure::Storage::Mgmt::V2021_01_01::Models::StorageSkuListResult
      ManagementPolicyAction = Azure::Storage::Mgmt::V2021_01_01::Models::ManagementPolicyAction
      CustomDomain = Azure::Storage::Mgmt::V2021_01_01::Models::CustomDomain
      TagFilter = Azure::Storage::Mgmt::V2021_01_01::Models::TagFilter
      EncryptionServices = Azure::Storage::Mgmt::V2021_01_01::Models::EncryptionServices
      ManagementPolicyFilter = Azure::Storage::Mgmt::V2021_01_01::Models::ManagementPolicyFilter
      EncryptionIdentity = Azure::Storage::Mgmt::V2021_01_01::Models::EncryptionIdentity
      ManagementPolicyDefinition = Azure::Storage::Mgmt::V2021_01_01::Models::ManagementPolicyDefinition
      UserAssignedIdentity = Azure::Storage::Mgmt::V2021_01_01::Models::UserAssignedIdentity
      Dimension = Azure::Storage::Mgmt::V2021_01_01::Models::Dimension
      VirtualNetworkRule = Azure::Storage::Mgmt::V2021_01_01::Models::VirtualNetworkRule
      ServiceSpecification = Azure::Storage::Mgmt::V2021_01_01::Models::ServiceSpecification
      NetworkRuleSet = Azure::Storage::Mgmt::V2021_01_01::Models::NetworkRuleSet
      ListTableResource = Azure::Storage::Mgmt::V2021_01_01::Models::ListTableResource
      AzureFilesIdentityBasedAuthentication = Azure::Storage::Mgmt::V2021_01_01::Models::AzureFilesIdentityBasedAuthentication
      EncryptionScopeKeyVaultProperties = Azure::Storage::Mgmt::V2021_01_01::Models::EncryptionScopeKeyVaultProperties
      Identity = Azure::Storage::Mgmt::V2021_01_01::Models::Identity
      ListTableServices = Azure::Storage::Mgmt::V2021_01_01::Models::ListTableServices
      Sku = Azure::Storage::Mgmt::V2021_01_01::Models::Sku
      EncryptionScopeListResult = Azure::Storage::Mgmt::V2021_01_01::Models::EncryptionScopeListResult
      StorageAccountMicrosoftEndpoints = Azure::Storage::Mgmt::V2021_01_01::Models::StorageAccountMicrosoftEndpoints
      ObjectReplicationPolicyFilter = Azure::Storage::Mgmt::V2021_01_01::Models::ObjectReplicationPolicyFilter
      Endpoints = Azure::Storage::Mgmt::V2021_01_01::Models::Endpoints
      ObjectReplicationPolicyRule = Azure::Storage::Mgmt::V2021_01_01::Models::ObjectReplicationPolicyRule
      BlobRestoreRange = Azure::Storage::Mgmt::V2021_01_01::Models::BlobRestoreRange
      ListQueueResource = Azure::Storage::Mgmt::V2021_01_01::Models::ListQueueResource
      BlobRestoreStatus = Azure::Storage::Mgmt::V2021_01_01::Models::BlobRestoreStatus
      ObjectReplicationPolicies = Azure::Storage::Mgmt::V2021_01_01::Models::ObjectReplicationPolicies
      PrivateLinkServiceConnectionState = Azure::Storage::Mgmt::V2021_01_01::Models::PrivateLinkServiceConnectionState
      BlobInventoryPolicyFilter = Azure::Storage::Mgmt::V2021_01_01::Models::BlobInventoryPolicyFilter
      BlobServiceItems = Azure::Storage::Mgmt::V2021_01_01::Models::BlobServiceItems
      LeaseContainerResponse = Azure::Storage::Mgmt::V2021_01_01::Models::LeaseContainerResponse
      LeaseContainerRequest = Azure::Storage::Mgmt::V2021_01_01::Models::LeaseContainerRequest
      StorageAccountListResult = Azure::Storage::Mgmt::V2021_01_01::Models::StorageAccountListResult
      BlobInventoryPolicyDefinition = Azure::Storage::Mgmt::V2021_01_01::Models::BlobInventoryPolicyDefinition
      StorageAccountListKeysResult = Azure::Storage::Mgmt::V2021_01_01::Models::StorageAccountListKeysResult
      BlobInventoryPolicyRule = Azure::Storage::Mgmt::V2021_01_01::Models::BlobInventoryPolicyRule
      StorageAccountUpdateParameters = Azure::Storage::Mgmt::V2021_01_01::Models::StorageAccountUpdateParameters
      BlobInventoryPolicySchema = Azure::Storage::Mgmt::V2021_01_01::Models::BlobInventoryPolicySchema
      Usage = Azure::Storage::Mgmt::V2021_01_01::Models::Usage
      SystemData = Azure::Storage::Mgmt::V2021_01_01::Models::SystemData
      AccountSasParameters = Azure::Storage::Mgmt::V2021_01_01::Models::AccountSasParameters
      ListQueueServices = Azure::Storage::Mgmt::V2021_01_01::Models::ListQueueServices
      ServiceSasParameters = Azure::Storage::Mgmt::V2021_01_01::Models::ServiceSasParameters
      ListBlobInventoryPolicy = Azure::Storage::Mgmt::V2021_01_01::Models::ListBlobInventoryPolicy
      DateAfterModification = Azure::Storage::Mgmt::V2021_01_01::Models::DateAfterModification
      ErrorResponseBody = Azure::Storage::Mgmt::V2021_01_01::Models::ErrorResponseBody
      SKUCapability = Azure::Storage::Mgmt::V2021_01_01::Models::SKUCapability
      ErrorResponse = Azure::Storage::Mgmt::V2021_01_01::Models::ErrorResponse
      CheckNameAvailabilityResult = Azure::Storage::Mgmt::V2021_01_01::Models::CheckNameAvailabilityResult
      KeyVaultProperties = Azure::Storage::Mgmt::V2021_01_01::Models::KeyVaultProperties
      ResourceAccessRule = Azure::Storage::Mgmt::V2021_01_01::Models::ResourceAccessRule
      FileShareItems = Azure::Storage::Mgmt::V2021_01_01::Models::FileShareItems
      ActiveDirectoryProperties = Azure::Storage::Mgmt::V2021_01_01::Models::ActiveDirectoryProperties
      Resource = Azure::Storage::Mgmt::V2021_01_01::Models::Resource
      ExtendedLocation = Azure::Storage::Mgmt::V2021_01_01::Models::ExtendedLocation
      DeletedShare = Azure::Storage::Mgmt::V2021_01_01::Models::DeletedShare
      StorageAccountInternetEndpoints = Azure::Storage::Mgmt::V2021_01_01::Models::StorageAccountInternetEndpoints
      PrivateLinkResourceListResult = Azure::Storage::Mgmt::V2021_01_01::Models::PrivateLinkResourceListResult
      BlobRestoreParameters = Azure::Storage::Mgmt::V2021_01_01::Models::BlobRestoreParameters
      PrivateEndpointConnectionListResult = Azure::Storage::Mgmt::V2021_01_01::Models::PrivateEndpointConnectionListResult
      StorageAccountKey = Azure::Storage::Mgmt::V2021_01_01::Models::StorageAccountKey
      UpdateHistoryProperty = Azure::Storage::Mgmt::V2021_01_01::Models::UpdateHistoryProperty
      StorageAccountRegenerateKeyParameters = Azure::Storage::Mgmt::V2021_01_01::Models::StorageAccountRegenerateKeyParameters
      ImmutabilityPolicyProperties = Azure::Storage::Mgmt::V2021_01_01::Models::ImmutabilityPolicyProperties
      UsageListResult = Azure::Storage::Mgmt::V2021_01_01::Models::UsageListResult
      TagProperty = Azure::Storage::Mgmt::V2021_01_01::Models::TagProperty
      ListServiceSasResponse = Azure::Storage::Mgmt::V2021_01_01::Models::ListServiceSasResponse
      LegalHoldProperties = Azure::Storage::Mgmt::V2021_01_01::Models::LegalHoldProperties
      SkuInformation = Azure::Storage::Mgmt::V2021_01_01::Models::SkuInformation
      FileServiceItems = Azure::Storage::Mgmt::V2021_01_01::Models::FileServiceItems
      Encryption = Azure::Storage::Mgmt::V2021_01_01::Models::Encryption
      ProtocolSettings = Azure::Storage::Mgmt::V2021_01_01::Models::ProtocolSettings
      RoutingPreference = Azure::Storage::Mgmt::V2021_01_01::Models::RoutingPreference
      LegalHold = Azure::Storage::Mgmt::V2021_01_01::Models::LegalHold
      GeoReplicationStats = Azure::Storage::Mgmt::V2021_01_01::Models::GeoReplicationStats
      SmbSetting = Azure::Storage::Mgmt::V2021_01_01::Models::SmbSetting
      DeletedAccountListResult = Azure::Storage::Mgmt::V2021_01_01::Models::DeletedAccountListResult
      ListContainerItems = Azure::Storage::Mgmt::V2021_01_01::Models::ListContainerItems
      ListAccountSasResponse = Azure::Storage::Mgmt::V2021_01_01::Models::ListAccountSasResponse
      CorsRule = Azure::Storage::Mgmt::V2021_01_01::Models::CorsRule
      EncryptionService = Azure::Storage::Mgmt::V2021_01_01::Models::EncryptionService
      CorsRules = Azure::Storage::Mgmt::V2021_01_01::Models::CorsRules
      StorageAccountCreateParameters = Azure::Storage::Mgmt::V2021_01_01::Models::StorageAccountCreateParameters
      DeleteRetentionPolicy = Azure::Storage::Mgmt::V2021_01_01::Models::DeleteRetentionPolicy
      UsageName = Azure::Storage::Mgmt::V2021_01_01::Models::UsageName
      ChangeFeed = Azure::Storage::Mgmt::V2021_01_01::Models::ChangeFeed
      IPRule = Azure::Storage::Mgmt::V2021_01_01::Models::IPRule
      RestorePolicyProperties = Azure::Storage::Mgmt::V2021_01_01::Models::RestorePolicyProperties
      OperationListResult = Azure::Storage::Mgmt::V2021_01_01::Models::OperationListResult
      LastAccessTimeTrackingPolicy = Azure::Storage::Mgmt::V2021_01_01::Models::LastAccessTimeTrackingPolicy
      PrivateEndpoint = Azure::Storage::Mgmt::V2021_01_01::Models::PrivateEndpoint
      Multichannel = Azure::Storage::Mgmt::V2021_01_01::Models::Multichannel
      PrivateEndpointConnection = Azure::Storage::Mgmt::V2021_01_01::Models::PrivateEndpointConnection
      DeletedAccount = Azure::Storage::Mgmt::V2021_01_01::Models::DeletedAccount
      StorageAccount = Azure::Storage::Mgmt::V2021_01_01::Models::StorageAccount
      ManagementPolicy = Azure::Storage::Mgmt::V2021_01_01::Models::ManagementPolicy
      EncryptionScope = Azure::Storage::Mgmt::V2021_01_01::Models::EncryptionScope
      ObjectReplicationPolicy = Azure::Storage::Mgmt::V2021_01_01::Models::ObjectReplicationPolicy
      BlobInventoryPolicy = Azure::Storage::Mgmt::V2021_01_01::Models::BlobInventoryPolicy
      ProxyResource = Azure::Storage::Mgmt::V2021_01_01::Models::ProxyResource
      TrackedResource = Azure::Storage::Mgmt::V2021_01_01::Models::TrackedResource
      AzureEntityResource = Azure::Storage::Mgmt::V2021_01_01::Models::AzureEntityResource
      PrivateLinkResource = Azure::Storage::Mgmt::V2021_01_01::Models::PrivateLinkResource
      BlobContainer = Azure::Storage::Mgmt::V2021_01_01::Models::BlobContainer
      ImmutabilityPolicy = Azure::Storage::Mgmt::V2021_01_01::Models::ImmutabilityPolicy
      ListContainerItem = Azure::Storage::Mgmt::V2021_01_01::Models::ListContainerItem
      BlobServiceProperties = Azure::Storage::Mgmt::V2021_01_01::Models::BlobServiceProperties
      FileServiceProperties = Azure::Storage::Mgmt::V2021_01_01::Models::FileServiceProperties
      FileShare = Azure::Storage::Mgmt::V2021_01_01::Models::FileShare
      FileShareItem = Azure::Storage::Mgmt::V2021_01_01::Models::FileShareItem
      QueueServiceProperties = Azure::Storage::Mgmt::V2021_01_01::Models::QueueServiceProperties
      StorageQueue = Azure::Storage::Mgmt::V2021_01_01::Models::StorageQueue
      ListQueue = Azure::Storage::Mgmt::V2021_01_01::Models::ListQueue
      TableServiceProperties = Azure::Storage::Mgmt::V2021_01_01::Models::TableServiceProperties
      Table = Azure::Storage::Mgmt::V2021_01_01::Models::Table
      ReasonCode = Azure::Storage::Mgmt::V2021_01_01::Models::ReasonCode
      SkuName = Azure::Storage::Mgmt::V2021_01_01::Models::SkuName
      SkuTier = Azure::Storage::Mgmt::V2021_01_01::Models::SkuTier
      Kind = Azure::Storage::Mgmt::V2021_01_01::Models::Kind
      Reason = Azure::Storage::Mgmt::V2021_01_01::Models::Reason
      KeyType = Azure::Storage::Mgmt::V2021_01_01::Models::KeyType
      KeySource = Azure::Storage::Mgmt::V2021_01_01::Models::KeySource
      Action = Azure::Storage::Mgmt::V2021_01_01::Models::Action
      State = Azure::Storage::Mgmt::V2021_01_01::Models::State
      Bypass = Azure::Storage::Mgmt::V2021_01_01::Models::Bypass
      DefaultAction = Azure::Storage::Mgmt::V2021_01_01::Models::DefaultAction
      DirectoryServiceOptions = Azure::Storage::Mgmt::V2021_01_01::Models::DirectoryServiceOptions
      AccessTier = Azure::Storage::Mgmt::V2021_01_01::Models::AccessTier
      LargeFileSharesState = Azure::Storage::Mgmt::V2021_01_01::Models::LargeFileSharesState
      RoutingChoice = Azure::Storage::Mgmt::V2021_01_01::Models::RoutingChoice
      MinimumTlsVersion = Azure::Storage::Mgmt::V2021_01_01::Models::MinimumTlsVersion
      IdentityType = Azure::Storage::Mgmt::V2021_01_01::Models::IdentityType
      ExtendedLocationTypes = Azure::Storage::Mgmt::V2021_01_01::Models::ExtendedLocationTypes
      GeoReplicationStatus = Azure::Storage::Mgmt::V2021_01_01::Models::GeoReplicationStatus
      BlobRestoreProgressStatus = Azure::Storage::Mgmt::V2021_01_01::Models::BlobRestoreProgressStatus
      ProvisioningState = Azure::Storage::Mgmt::V2021_01_01::Models::ProvisioningState
      AccountStatus = Azure::Storage::Mgmt::V2021_01_01::Models::AccountStatus
      PrivateEndpointServiceConnectionStatus = Azure::Storage::Mgmt::V2021_01_01::Models::PrivateEndpointServiceConnectionStatus
      PrivateEndpointConnectionProvisioningState = Azure::Storage::Mgmt::V2021_01_01::Models::PrivateEndpointConnectionProvisioningState
      KeyPermission = Azure::Storage::Mgmt::V2021_01_01::Models::KeyPermission
      UsageUnit = Azure::Storage::Mgmt::V2021_01_01::Models::UsageUnit
      Services = Azure::Storage::Mgmt::V2021_01_01::Models::Services
      SignedResourceTypes = Azure::Storage::Mgmt::V2021_01_01::Models::SignedResourceTypes
      Permissions = Azure::Storage::Mgmt::V2021_01_01::Models::Permissions
      HttpProtocol = Azure::Storage::Mgmt::V2021_01_01::Models::HttpProtocol
      SignedResource = Azure::Storage::Mgmt::V2021_01_01::Models::SignedResource
      EncryptionScopeSource = Azure::Storage::Mgmt::V2021_01_01::Models::EncryptionScopeSource
      EncryptionScopeState = Azure::Storage::Mgmt::V2021_01_01::Models::EncryptionScopeState
      CreatedByType = Azure::Storage::Mgmt::V2021_01_01::Models::CreatedByType
      PublicAccess = Azure::Storage::Mgmt::V2021_01_01::Models::PublicAccess
      LeaseStatus = Azure::Storage::Mgmt::V2021_01_01::Models::LeaseStatus
      LeaseState = Azure::Storage::Mgmt::V2021_01_01::Models::LeaseState
      LeaseDuration = Azure::Storage::Mgmt::V2021_01_01::Models::LeaseDuration
      ImmutabilityPolicyState = Azure::Storage::Mgmt::V2021_01_01::Models::ImmutabilityPolicyState
      ImmutabilityPolicyUpdateType = Azure::Storage::Mgmt::V2021_01_01::Models::ImmutabilityPolicyUpdateType
      Name = Azure::Storage::Mgmt::V2021_01_01::Models::Name
      EnabledProtocols = Azure::Storage::Mgmt::V2021_01_01::Models::EnabledProtocols
      RootSquashType = Azure::Storage::Mgmt::V2021_01_01::Models::RootSquashType
      ShareAccessTier = Azure::Storage::Mgmt::V2021_01_01::Models::ShareAccessTier
      StorageAccountExpand = Azure::Storage::Mgmt::V2021_01_01::Models::StorageAccountExpand
      ListKeyExpand = Azure::Storage::Mgmt::V2021_01_01::Models::ListKeyExpand
      ListContainersInclude = Azure::Storage::Mgmt::V2021_01_01::Models::ListContainersInclude
      ListSharesExpand = Azure::Storage::Mgmt::V2021_01_01::Models::ListSharesExpand
      PutSharesExpand = Azure::Storage::Mgmt::V2021_01_01::Models::PutSharesExpand
      GetShareExpand = Azure::Storage::Mgmt::V2021_01_01::Models::GetShareExpand
    end

    #
    # StorageManagementClass
    #
    class StorageManagementClass
      attr_reader :operations, :skus, :storage_accounts, :deleted_accounts, :usages, :management_policies, :blob_inventory_policies, :private_endpoint_connections, :private_link_resources, :object_replication_policies_operations, :encryption_scopes, :blob_services, :blob_containers, :file_services, :file_shares, :queue_services, :queue, :table_services, :table_operations, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::Storage::Mgmt::V2021_01_01::StorageManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @operations = @client_0.operations
        @skus = @client_0.skus
        @storage_accounts = @client_0.storage_accounts
        @deleted_accounts = @client_0.deleted_accounts
        @usages = @client_0.usages
        @management_policies = @client_0.management_policies
        @blob_inventory_policies = @client_0.blob_inventory_policies
        @private_endpoint_connections = @client_0.private_endpoint_connections
        @private_link_resources = @client_0.private_link_resources
        @object_replication_policies_operations = @client_0.object_replication_policies_operations
        @encryption_scopes = @client_0.encryption_scopes
        @blob_services = @client_0.blob_services
        @blob_containers = @client_0.blob_containers
        @file_services = @client_0.file_services
        @file_shares = @client_0.file_shares
        @queue_services = @client_0.queue_services
        @queue = @client_0.queue
        @table_services = @client_0.table_services
        @table_operations = @client_0.table_operations

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
      def management_policy_rule
        Azure::Storage::Mgmt::V2021_01_01::Models::ManagementPolicyRule
      end
      def operation_display
        Azure::Storage::Mgmt::V2021_01_01::Models::OperationDisplay
      end
      def management_policy_schema
        Azure::Storage::Mgmt::V2021_01_01::Models::ManagementPolicySchema
      end
      def metric_specification
        Azure::Storage::Mgmt::V2021_01_01::Models::MetricSpecification
      end
      def management_policy_base_blob
        Azure::Storage::Mgmt::V2021_01_01::Models::ManagementPolicyBaseBlob
      end
      def operation
        Azure::Storage::Mgmt::V2021_01_01::Models::Operation
      end
      def date_after_creation
        Azure::Storage::Mgmt::V2021_01_01::Models::DateAfterCreation
      end
      def storage_account_check_name_availability_parameters
        Azure::Storage::Mgmt::V2021_01_01::Models::StorageAccountCheckNameAvailabilityParameters
      end
      def management_policy_snap_shot
        Azure::Storage::Mgmt::V2021_01_01::Models::ManagementPolicySnapShot
      end
      def restriction
        Azure::Storage::Mgmt::V2021_01_01::Models::Restriction
      end
      def management_policy_version
        Azure::Storage::Mgmt::V2021_01_01::Models::ManagementPolicyVersion
      end
      def storage_sku_list_result
        Azure::Storage::Mgmt::V2021_01_01::Models::StorageSkuListResult
      end
      def management_policy_action
        Azure::Storage::Mgmt::V2021_01_01::Models::ManagementPolicyAction
      end
      def custom_domain
        Azure::Storage::Mgmt::V2021_01_01::Models::CustomDomain
      end
      def tag_filter
        Azure::Storage::Mgmt::V2021_01_01::Models::TagFilter
      end
      def encryption_services
        Azure::Storage::Mgmt::V2021_01_01::Models::EncryptionServices
      end
      def management_policy_filter
        Azure::Storage::Mgmt::V2021_01_01::Models::ManagementPolicyFilter
      end
      def encryption_identity
        Azure::Storage::Mgmt::V2021_01_01::Models::EncryptionIdentity
      end
      def management_policy_definition
        Azure::Storage::Mgmt::V2021_01_01::Models::ManagementPolicyDefinition
      end
      def user_assigned_identity
        Azure::Storage::Mgmt::V2021_01_01::Models::UserAssignedIdentity
      end
      def dimension
        Azure::Storage::Mgmt::V2021_01_01::Models::Dimension
      end
      def virtual_network_rule
        Azure::Storage::Mgmt::V2021_01_01::Models::VirtualNetworkRule
      end
      def service_specification
        Azure::Storage::Mgmt::V2021_01_01::Models::ServiceSpecification
      end
      def network_rule_set
        Azure::Storage::Mgmt::V2021_01_01::Models::NetworkRuleSet
      end
      def list_table_resource
        Azure::Storage::Mgmt::V2021_01_01::Models::ListTableResource
      end
      def azure_files_identity_based_authentication
        Azure::Storage::Mgmt::V2021_01_01::Models::AzureFilesIdentityBasedAuthentication
      end
      def encryption_scope_key_vault_properties
        Azure::Storage::Mgmt::V2021_01_01::Models::EncryptionScopeKeyVaultProperties
      end
      def identity
        Azure::Storage::Mgmt::V2021_01_01::Models::Identity
      end
      def list_table_services
        Azure::Storage::Mgmt::V2021_01_01::Models::ListTableServices
      end
      def sku
        Azure::Storage::Mgmt::V2021_01_01::Models::Sku
      end
      def encryption_scope_list_result
        Azure::Storage::Mgmt::V2021_01_01::Models::EncryptionScopeListResult
      end
      def storage_account_microsoft_endpoints
        Azure::Storage::Mgmt::V2021_01_01::Models::StorageAccountMicrosoftEndpoints
      end
      def object_replication_policy_filter
        Azure::Storage::Mgmt::V2021_01_01::Models::ObjectReplicationPolicyFilter
      end
      def endpoints
        Azure::Storage::Mgmt::V2021_01_01::Models::Endpoints
      end
      def object_replication_policy_rule
        Azure::Storage::Mgmt::V2021_01_01::Models::ObjectReplicationPolicyRule
      end
      def blob_restore_range
        Azure::Storage::Mgmt::V2021_01_01::Models::BlobRestoreRange
      end
      def list_queue_resource
        Azure::Storage::Mgmt::V2021_01_01::Models::ListQueueResource
      end
      def blob_restore_status
        Azure::Storage::Mgmt::V2021_01_01::Models::BlobRestoreStatus
      end
      def object_replication_policies
        Azure::Storage::Mgmt::V2021_01_01::Models::ObjectReplicationPolicies
      end
      def private_link_service_connection_state
        Azure::Storage::Mgmt::V2021_01_01::Models::PrivateLinkServiceConnectionState
      end
      def blob_inventory_policy_filter
        Azure::Storage::Mgmt::V2021_01_01::Models::BlobInventoryPolicyFilter
      end
      def blob_service_items
        Azure::Storage::Mgmt::V2021_01_01::Models::BlobServiceItems
      end
      def lease_container_response
        Azure::Storage::Mgmt::V2021_01_01::Models::LeaseContainerResponse
      end
      def lease_container_request
        Azure::Storage::Mgmt::V2021_01_01::Models::LeaseContainerRequest
      end
      def storage_account_list_result
        Azure::Storage::Mgmt::V2021_01_01::Models::StorageAccountListResult
      end
      def blob_inventory_policy_definition
        Azure::Storage::Mgmt::V2021_01_01::Models::BlobInventoryPolicyDefinition
      end
      def storage_account_list_keys_result
        Azure::Storage::Mgmt::V2021_01_01::Models::StorageAccountListKeysResult
      end
      def blob_inventory_policy_rule
        Azure::Storage::Mgmt::V2021_01_01::Models::BlobInventoryPolicyRule
      end
      def storage_account_update_parameters
        Azure::Storage::Mgmt::V2021_01_01::Models::StorageAccountUpdateParameters
      end
      def blob_inventory_policy_schema
        Azure::Storage::Mgmt::V2021_01_01::Models::BlobInventoryPolicySchema
      end
      def usage
        Azure::Storage::Mgmt::V2021_01_01::Models::Usage
      end
      def system_data
        Azure::Storage::Mgmt::V2021_01_01::Models::SystemData
      end
      def account_sas_parameters
        Azure::Storage::Mgmt::V2021_01_01::Models::AccountSasParameters
      end
      def list_queue_services
        Azure::Storage::Mgmt::V2021_01_01::Models::ListQueueServices
      end
      def service_sas_parameters
        Azure::Storage::Mgmt::V2021_01_01::Models::ServiceSasParameters
      end
      def list_blob_inventory_policy
        Azure::Storage::Mgmt::V2021_01_01::Models::ListBlobInventoryPolicy
      end
      def date_after_modification
        Azure::Storage::Mgmt::V2021_01_01::Models::DateAfterModification
      end
      def error_response_body
        Azure::Storage::Mgmt::V2021_01_01::Models::ErrorResponseBody
      end
      def skucapability
        Azure::Storage::Mgmt::V2021_01_01::Models::SKUCapability
      end
      def error_response
        Azure::Storage::Mgmt::V2021_01_01::Models::ErrorResponse
      end
      def check_name_availability_result
        Azure::Storage::Mgmt::V2021_01_01::Models::CheckNameAvailabilityResult
      end
      def key_vault_properties
        Azure::Storage::Mgmt::V2021_01_01::Models::KeyVaultProperties
      end
      def resource_access_rule
        Azure::Storage::Mgmt::V2021_01_01::Models::ResourceAccessRule
      end
      def file_share_items
        Azure::Storage::Mgmt::V2021_01_01::Models::FileShareItems
      end
      def active_directory_properties
        Azure::Storage::Mgmt::V2021_01_01::Models::ActiveDirectoryProperties
      end
      def resource
        Azure::Storage::Mgmt::V2021_01_01::Models::Resource
      end
      def extended_location
        Azure::Storage::Mgmt::V2021_01_01::Models::ExtendedLocation
      end
      def deleted_share
        Azure::Storage::Mgmt::V2021_01_01::Models::DeletedShare
      end
      def storage_account_internet_endpoints
        Azure::Storage::Mgmt::V2021_01_01::Models::StorageAccountInternetEndpoints
      end
      def private_link_resource_list_result
        Azure::Storage::Mgmt::V2021_01_01::Models::PrivateLinkResourceListResult
      end
      def blob_restore_parameters
        Azure::Storage::Mgmt::V2021_01_01::Models::BlobRestoreParameters
      end
      def private_endpoint_connection_list_result
        Azure::Storage::Mgmt::V2021_01_01::Models::PrivateEndpointConnectionListResult
      end
      def storage_account_key
        Azure::Storage::Mgmt::V2021_01_01::Models::StorageAccountKey
      end
      def update_history_property
        Azure::Storage::Mgmt::V2021_01_01::Models::UpdateHistoryProperty
      end
      def storage_account_regenerate_key_parameters
        Azure::Storage::Mgmt::V2021_01_01::Models::StorageAccountRegenerateKeyParameters
      end
      def immutability_policy_properties
        Azure::Storage::Mgmt::V2021_01_01::Models::ImmutabilityPolicyProperties
      end
      def usage_list_result
        Azure::Storage::Mgmt::V2021_01_01::Models::UsageListResult
      end
      def tag_property
        Azure::Storage::Mgmt::V2021_01_01::Models::TagProperty
      end
      def list_service_sas_response
        Azure::Storage::Mgmt::V2021_01_01::Models::ListServiceSasResponse
      end
      def legal_hold_properties
        Azure::Storage::Mgmt::V2021_01_01::Models::LegalHoldProperties
      end
      def sku_information
        Azure::Storage::Mgmt::V2021_01_01::Models::SkuInformation
      end
      def file_service_items
        Azure::Storage::Mgmt::V2021_01_01::Models::FileServiceItems
      end
      def encryption
        Azure::Storage::Mgmt::V2021_01_01::Models::Encryption
      end
      def protocol_settings
        Azure::Storage::Mgmt::V2021_01_01::Models::ProtocolSettings
      end
      def routing_preference
        Azure::Storage::Mgmt::V2021_01_01::Models::RoutingPreference
      end
      def legal_hold
        Azure::Storage::Mgmt::V2021_01_01::Models::LegalHold
      end
      def geo_replication_stats
        Azure::Storage::Mgmt::V2021_01_01::Models::GeoReplicationStats
      end
      def smb_setting
        Azure::Storage::Mgmt::V2021_01_01::Models::SmbSetting
      end
      def deleted_account_list_result
        Azure::Storage::Mgmt::V2021_01_01::Models::DeletedAccountListResult
      end
      def list_container_items
        Azure::Storage::Mgmt::V2021_01_01::Models::ListContainerItems
      end
      def list_account_sas_response
        Azure::Storage::Mgmt::V2021_01_01::Models::ListAccountSasResponse
      end
      def cors_rule
        Azure::Storage::Mgmt::V2021_01_01::Models::CorsRule
      end
      def encryption_service
        Azure::Storage::Mgmt::V2021_01_01::Models::EncryptionService
      end
      def cors_rules
        Azure::Storage::Mgmt::V2021_01_01::Models::CorsRules
      end
      def storage_account_create_parameters
        Azure::Storage::Mgmt::V2021_01_01::Models::StorageAccountCreateParameters
      end
      def delete_retention_policy
        Azure::Storage::Mgmt::V2021_01_01::Models::DeleteRetentionPolicy
      end
      def usage_name
        Azure::Storage::Mgmt::V2021_01_01::Models::UsageName
      end
      def change_feed
        Azure::Storage::Mgmt::V2021_01_01::Models::ChangeFeed
      end
      def iprule
        Azure::Storage::Mgmt::V2021_01_01::Models::IPRule
      end
      def restore_policy_properties
        Azure::Storage::Mgmt::V2021_01_01::Models::RestorePolicyProperties
      end
      def operation_list_result
        Azure::Storage::Mgmt::V2021_01_01::Models::OperationListResult
      end
      def last_access_time_tracking_policy
        Azure::Storage::Mgmt::V2021_01_01::Models::LastAccessTimeTrackingPolicy
      end
      def private_endpoint
        Azure::Storage::Mgmt::V2021_01_01::Models::PrivateEndpoint
      end
      def multichannel
        Azure::Storage::Mgmt::V2021_01_01::Models::Multichannel
      end
      def private_endpoint_connection
        Azure::Storage::Mgmt::V2021_01_01::Models::PrivateEndpointConnection
      end
      def deleted_account
        Azure::Storage::Mgmt::V2021_01_01::Models::DeletedAccount
      end
      def storage_account
        Azure::Storage::Mgmt::V2021_01_01::Models::StorageAccount
      end
      def management_policy
        Azure::Storage::Mgmt::V2021_01_01::Models::ManagementPolicy
      end
      def encryption_scope
        Azure::Storage::Mgmt::V2021_01_01::Models::EncryptionScope
      end
      def object_replication_policy
        Azure::Storage::Mgmt::V2021_01_01::Models::ObjectReplicationPolicy
      end
      def blob_inventory_policy
        Azure::Storage::Mgmt::V2021_01_01::Models::BlobInventoryPolicy
      end
      def proxy_resource
        Azure::Storage::Mgmt::V2021_01_01::Models::ProxyResource
      end
      def tracked_resource
        Azure::Storage::Mgmt::V2021_01_01::Models::TrackedResource
      end
      def azure_entity_resource
        Azure::Storage::Mgmt::V2021_01_01::Models::AzureEntityResource
      end
      def private_link_resource
        Azure::Storage::Mgmt::V2021_01_01::Models::PrivateLinkResource
      end
      def blob_container
        Azure::Storage::Mgmt::V2021_01_01::Models::BlobContainer
      end
      def immutability_policy
        Azure::Storage::Mgmt::V2021_01_01::Models::ImmutabilityPolicy
      end
      def list_container_item
        Azure::Storage::Mgmt::V2021_01_01::Models::ListContainerItem
      end
      def blob_service_properties
        Azure::Storage::Mgmt::V2021_01_01::Models::BlobServiceProperties
      end
      def file_service_properties
        Azure::Storage::Mgmt::V2021_01_01::Models::FileServiceProperties
      end
      def file_share
        Azure::Storage::Mgmt::V2021_01_01::Models::FileShare
      end
      def file_share_item
        Azure::Storage::Mgmt::V2021_01_01::Models::FileShareItem
      end
      def queue_service_properties
        Azure::Storage::Mgmt::V2021_01_01::Models::QueueServiceProperties
      end
      def storage_queue
        Azure::Storage::Mgmt::V2021_01_01::Models::StorageQueue
      end
      def list_queue
        Azure::Storage::Mgmt::V2021_01_01::Models::ListQueue
      end
      def table_service_properties
        Azure::Storage::Mgmt::V2021_01_01::Models::TableServiceProperties
      end
      def table
        Azure::Storage::Mgmt::V2021_01_01::Models::Table
      end
      def reason_code
        Azure::Storage::Mgmt::V2021_01_01::Models::ReasonCode
      end
      def sku_name
        Azure::Storage::Mgmt::V2021_01_01::Models::SkuName
      end
      def sku_tier
        Azure::Storage::Mgmt::V2021_01_01::Models::SkuTier
      end
      def kind
        Azure::Storage::Mgmt::V2021_01_01::Models::Kind
      end
      def reason
        Azure::Storage::Mgmt::V2021_01_01::Models::Reason
      end
      def key_type
        Azure::Storage::Mgmt::V2021_01_01::Models::KeyType
      end
      def key_source
        Azure::Storage::Mgmt::V2021_01_01::Models::KeySource
      end
      def action
        Azure::Storage::Mgmt::V2021_01_01::Models::Action
      end
      def state
        Azure::Storage::Mgmt::V2021_01_01::Models::State
      end
      def bypass
        Azure::Storage::Mgmt::V2021_01_01::Models::Bypass
      end
      def default_action
        Azure::Storage::Mgmt::V2021_01_01::Models::DefaultAction
      end
      def directory_service_options
        Azure::Storage::Mgmt::V2021_01_01::Models::DirectoryServiceOptions
      end
      def access_tier
        Azure::Storage::Mgmt::V2021_01_01::Models::AccessTier
      end
      def large_file_shares_state
        Azure::Storage::Mgmt::V2021_01_01::Models::LargeFileSharesState
      end
      def routing_choice
        Azure::Storage::Mgmt::V2021_01_01::Models::RoutingChoice
      end
      def minimum_tls_version
        Azure::Storage::Mgmt::V2021_01_01::Models::MinimumTlsVersion
      end
      def identity_type
        Azure::Storage::Mgmt::V2021_01_01::Models::IdentityType
      end
      def extended_location_types
        Azure::Storage::Mgmt::V2021_01_01::Models::ExtendedLocationTypes
      end
      def geo_replication_status
        Azure::Storage::Mgmt::V2021_01_01::Models::GeoReplicationStatus
      end
      def blob_restore_progress_status
        Azure::Storage::Mgmt::V2021_01_01::Models::BlobRestoreProgressStatus
      end
      def provisioning_state
        Azure::Storage::Mgmt::V2021_01_01::Models::ProvisioningState
      end
      def account_status
        Azure::Storage::Mgmt::V2021_01_01::Models::AccountStatus
      end
      def private_endpoint_service_connection_status
        Azure::Storage::Mgmt::V2021_01_01::Models::PrivateEndpointServiceConnectionStatus
      end
      def private_endpoint_connection_provisioning_state
        Azure::Storage::Mgmt::V2021_01_01::Models::PrivateEndpointConnectionProvisioningState
      end
      def key_permission
        Azure::Storage::Mgmt::V2021_01_01::Models::KeyPermission
      end
      def usage_unit
        Azure::Storage::Mgmt::V2021_01_01::Models::UsageUnit
      end
      def services
        Azure::Storage::Mgmt::V2021_01_01::Models::Services
      end
      def signed_resource_types
        Azure::Storage::Mgmt::V2021_01_01::Models::SignedResourceTypes
      end
      def permissions
        Azure::Storage::Mgmt::V2021_01_01::Models::Permissions
      end
      def http_protocol
        Azure::Storage::Mgmt::V2021_01_01::Models::HttpProtocol
      end
      def signed_resource
        Azure::Storage::Mgmt::V2021_01_01::Models::SignedResource
      end
      def encryption_scope_source
        Azure::Storage::Mgmt::V2021_01_01::Models::EncryptionScopeSource
      end
      def encryption_scope_state
        Azure::Storage::Mgmt::V2021_01_01::Models::EncryptionScopeState
      end
      def created_by_type
        Azure::Storage::Mgmt::V2021_01_01::Models::CreatedByType
      end
      def public_access
        Azure::Storage::Mgmt::V2021_01_01::Models::PublicAccess
      end
      def lease_status
        Azure::Storage::Mgmt::V2021_01_01::Models::LeaseStatus
      end
      def lease_state
        Azure::Storage::Mgmt::V2021_01_01::Models::LeaseState
      end
      def lease_duration
        Azure::Storage::Mgmt::V2021_01_01::Models::LeaseDuration
      end
      def immutability_policy_state
        Azure::Storage::Mgmt::V2021_01_01::Models::ImmutabilityPolicyState
      end
      def immutability_policy_update_type
        Azure::Storage::Mgmt::V2021_01_01::Models::ImmutabilityPolicyUpdateType
      end
      def name
        Azure::Storage::Mgmt::V2021_01_01::Models::Name
      end
      def enabled_protocols
        Azure::Storage::Mgmt::V2021_01_01::Models::EnabledProtocols
      end
      def root_squash_type
        Azure::Storage::Mgmt::V2021_01_01::Models::RootSquashType
      end
      def share_access_tier
        Azure::Storage::Mgmt::V2021_01_01::Models::ShareAccessTier
      end
      def storage_account_expand
        Azure::Storage::Mgmt::V2021_01_01::Models::StorageAccountExpand
      end
      def list_key_expand
        Azure::Storage::Mgmt::V2021_01_01::Models::ListKeyExpand
      end
      def list_containers_include
        Azure::Storage::Mgmt::V2021_01_01::Models::ListContainersInclude
      end
      def list_shares_expand
        Azure::Storage::Mgmt::V2021_01_01::Models::ListSharesExpand
      end
      def put_shares_expand
        Azure::Storage::Mgmt::V2021_01_01::Models::PutSharesExpand
      end
      def get_share_expand
        Azure::Storage::Mgmt::V2021_01_01::Models::GetShareExpand
      end
    end
  end
end
