# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_storage'

module Azure::Storage::Profiles::Latest
  module Mgmt
    Operations = Azure::Storage::Mgmt::V2020_08_01_preview::Operations
    Skus = Azure::Storage::Mgmt::V2020_08_01_preview::Skus
    StorageAccounts = Azure::Storage::Mgmt::V2020_08_01_preview::StorageAccounts
    DeletedAccounts = Azure::Storage::Mgmt::V2020_08_01_preview::DeletedAccounts
    Usages = Azure::Storage::Mgmt::V2020_08_01_preview::Usages
    ManagementPolicies = Azure::Storage::Mgmt::V2020_08_01_preview::ManagementPolicies
    PrivateEndpointConnections = Azure::Storage::Mgmt::V2020_08_01_preview::PrivateEndpointConnections
    PrivateLinkResources = Azure::Storage::Mgmt::V2020_08_01_preview::PrivateLinkResources
    ObjectReplicationPoliciesOperations = Azure::Storage::Mgmt::V2020_08_01_preview::ObjectReplicationPoliciesOperations
    EncryptionScopes = Azure::Storage::Mgmt::V2020_08_01_preview::EncryptionScopes
    BlobServices = Azure::Storage::Mgmt::V2020_08_01_preview::BlobServices
    BlobContainers = Azure::Storage::Mgmt::V2020_08_01_preview::BlobContainers
    FileServices = Azure::Storage::Mgmt::V2020_08_01_preview::FileServices
    FileShares = Azure::Storage::Mgmt::V2020_08_01_preview::FileShares
    QueueServices = Azure::Storage::Mgmt::V2020_08_01_preview::QueueServices
    Queue = Azure::Storage::Mgmt::V2020_08_01_preview::Queue
    TableServices = Azure::Storage::Mgmt::V2020_08_01_preview::TableServices
    TableOperations = Azure::Storage::Mgmt::V2020_08_01_preview::TableOperations

    module Models
      TagFilter = Azure::Storage::Mgmt::V2020_08_01_preview::Models::TagFilter
      OperationDisplay = Azure::Storage::Mgmt::V2020_08_01_preview::Models::OperationDisplay
      ManagementPolicyFilter = Azure::Storage::Mgmt::V2020_08_01_preview::Models::ManagementPolicyFilter
      MetricSpecification = Azure::Storage::Mgmt::V2020_08_01_preview::Models::MetricSpecification
      ManagementPolicyDefinition = Azure::Storage::Mgmt::V2020_08_01_preview::Models::ManagementPolicyDefinition
      Operation = Azure::Storage::Mgmt::V2020_08_01_preview::Models::Operation
      ManagementPolicyRule = Azure::Storage::Mgmt::V2020_08_01_preview::Models::ManagementPolicyRule
      StorageAccountCheckNameAvailabilityParameters = Azure::Storage::Mgmt::V2020_08_01_preview::Models::StorageAccountCheckNameAvailabilityParameters
      ManagementPolicySchema = Azure::Storage::Mgmt::V2020_08_01_preview::Models::ManagementPolicySchema
      Restriction = Azure::Storage::Mgmt::V2020_08_01_preview::Models::Restriction
      DateAfterModification = Azure::Storage::Mgmt::V2020_08_01_preview::Models::DateAfterModification
      ManagementPolicyBaseBlob = Azure::Storage::Mgmt::V2020_08_01_preview::Models::ManagementPolicyBaseBlob
      CheckNameAvailabilityResult = Azure::Storage::Mgmt::V2020_08_01_preview::Models::CheckNameAvailabilityResult
      DateAfterCreation = Azure::Storage::Mgmt::V2020_08_01_preview::Models::DateAfterCreation
      EncryptionService = Azure::Storage::Mgmt::V2020_08_01_preview::Models::EncryptionService
      ManagementPolicySnapShot = Azure::Storage::Mgmt::V2020_08_01_preview::Models::ManagementPolicySnapShot
      KeyVaultProperties = Azure::Storage::Mgmt::V2020_08_01_preview::Models::KeyVaultProperties
      ManagementPolicyAction = Azure::Storage::Mgmt::V2020_08_01_preview::Models::ManagementPolicyAction
      VirtualNetworkRule = Azure::Storage::Mgmt::V2020_08_01_preview::Models::VirtualNetworkRule
      Dimension = Azure::Storage::Mgmt::V2020_08_01_preview::Models::Dimension
      NetworkRuleSet = Azure::Storage::Mgmt::V2020_08_01_preview::Models::NetworkRuleSet
      ServiceSpecification = Azure::Storage::Mgmt::V2020_08_01_preview::Models::ServiceSpecification
      AzureFilesIdentityBasedAuthentication = Azure::Storage::Mgmt::V2020_08_01_preview::Models::AzureFilesIdentityBasedAuthentication
      OperationListResult = Azure::Storage::Mgmt::V2020_08_01_preview::Models::OperationListResult
      Identity = Azure::Storage::Mgmt::V2020_08_01_preview::Models::Identity
      SKUCapability = Azure::Storage::Mgmt::V2020_08_01_preview::Models::SKUCapability
      StorageAccountCreateParameters = Azure::Storage::Mgmt::V2020_08_01_preview::Models::StorageAccountCreateParameters
      SkuInformation = Azure::Storage::Mgmt::V2020_08_01_preview::Models::SkuInformation
      StorageAccountInternetEndpoints = Azure::Storage::Mgmt::V2020_08_01_preview::Models::StorageAccountInternetEndpoints
      ListTableResource = Azure::Storage::Mgmt::V2020_08_01_preview::Models::ListTableResource
      GeoReplicationStats = Azure::Storage::Mgmt::V2020_08_01_preview::Models::GeoReplicationStats
      EncryptionScopeKeyVaultProperties = Azure::Storage::Mgmt::V2020_08_01_preview::Models::EncryptionScopeKeyVaultProperties
      BlobRestoreParameters = Azure::Storage::Mgmt::V2020_08_01_preview::Models::BlobRestoreParameters
      ListTableServices = Azure::Storage::Mgmt::V2020_08_01_preview::Models::ListTableServices
      PrivateEndpoint = Azure::Storage::Mgmt::V2020_08_01_preview::Models::PrivateEndpoint
      EncryptionScopeListResult = Azure::Storage::Mgmt::V2020_08_01_preview::Models::EncryptionScopeListResult
      PrivateLinkServiceConnectionState = Azure::Storage::Mgmt::V2020_08_01_preview::Models::PrivateLinkServiceConnectionState
      BlobServiceItems = Azure::Storage::Mgmt::V2020_08_01_preview::Models::BlobServiceItems
      RestorePolicyProperties = Azure::Storage::Mgmt::V2020_08_01_preview::Models::RestorePolicyProperties
      StorageAccountKey = Azure::Storage::Mgmt::V2020_08_01_preview::Models::StorageAccountKey
      ObjectReplicationPolicyFilter = Azure::Storage::Mgmt::V2020_08_01_preview::Models::ObjectReplicationPolicyFilter
      DeletedAccountListResult = Azure::Storage::Mgmt::V2020_08_01_preview::Models::DeletedAccountListResult
      ObjectReplicationPolicyRule = Azure::Storage::Mgmt::V2020_08_01_preview::Models::ObjectReplicationPolicyRule
      StorageAccountRegenerateKeyParameters = Azure::Storage::Mgmt::V2020_08_01_preview::Models::StorageAccountRegenerateKeyParameters
      ListQueueResource = Azure::Storage::Mgmt::V2020_08_01_preview::Models::ListQueueResource
      UsageName = Azure::Storage::Mgmt::V2020_08_01_preview::Models::UsageName
      ObjectReplicationPolicies = Azure::Storage::Mgmt::V2020_08_01_preview::Models::ObjectReplicationPolicies
      UsageListResult = Azure::Storage::Mgmt::V2020_08_01_preview::Models::UsageListResult
      ErrorResponseBody = Azure::Storage::Mgmt::V2020_08_01_preview::Models::ErrorResponseBody
      ListAccountSasResponse = Azure::Storage::Mgmt::V2020_08_01_preview::Models::ListAccountSasResponse
      ErrorResponse = Azure::Storage::Mgmt::V2020_08_01_preview::Models::ErrorResponse
      ListServiceSasResponse = Azure::Storage::Mgmt::V2020_08_01_preview::Models::ListServiceSasResponse
      ListQueueServices = Azure::Storage::Mgmt::V2020_08_01_preview::Models::ListQueueServices
      CustomDomain = Azure::Storage::Mgmt::V2020_08_01_preview::Models::CustomDomain
      Encryption = Azure::Storage::Mgmt::V2020_08_01_preview::Models::Encryption
      ActiveDirectoryProperties = Azure::Storage::Mgmt::V2020_08_01_preview::Models::ActiveDirectoryProperties
      Resource = Azure::Storage::Mgmt::V2020_08_01_preview::Models::Resource
      Sku = Azure::Storage::Mgmt::V2020_08_01_preview::Models::Sku
      FileShareItems = Azure::Storage::Mgmt::V2020_08_01_preview::Models::FileShareItems
      Endpoints = Azure::Storage::Mgmt::V2020_08_01_preview::Models::Endpoints
      PrivateLinkResourceListResult = Azure::Storage::Mgmt::V2020_08_01_preview::Models::PrivateLinkResourceListResult
      BlobRestoreStatus = Azure::Storage::Mgmt::V2020_08_01_preview::Models::BlobRestoreStatus
      PrivateEndpointConnectionListResult = Azure::Storage::Mgmt::V2020_08_01_preview::Models::PrivateEndpointConnectionListResult
      StorageAccountListResult = Azure::Storage::Mgmt::V2020_08_01_preview::Models::StorageAccountListResult
      UpdateHistoryProperty = Azure::Storage::Mgmt::V2020_08_01_preview::Models::UpdateHistoryProperty
      StorageAccountUpdateParameters = Azure::Storage::Mgmt::V2020_08_01_preview::Models::StorageAccountUpdateParameters
      ImmutabilityPolicyProperties = Azure::Storage::Mgmt::V2020_08_01_preview::Models::ImmutabilityPolicyProperties
      AccountSasParameters = Azure::Storage::Mgmt::V2020_08_01_preview::Models::AccountSasParameters
      TagProperty = Azure::Storage::Mgmt::V2020_08_01_preview::Models::TagProperty
      StorageSkuListResult = Azure::Storage::Mgmt::V2020_08_01_preview::Models::StorageSkuListResult
      LegalHoldProperties = Azure::Storage::Mgmt::V2020_08_01_preview::Models::LegalHoldProperties
      IPRule = Azure::Storage::Mgmt::V2020_08_01_preview::Models::IPRule
      DeletedShare = Azure::Storage::Mgmt::V2020_08_01_preview::Models::DeletedShare
      StorageAccountMicrosoftEndpoints = Azure::Storage::Mgmt::V2020_08_01_preview::Models::StorageAccountMicrosoftEndpoints
      FileServiceItems = Azure::Storage::Mgmt::V2020_08_01_preview::Models::FileServiceItems
      LeaseContainerRequest = Azure::Storage::Mgmt::V2020_08_01_preview::Models::LeaseContainerRequest
      LegalHold = Azure::Storage::Mgmt::V2020_08_01_preview::Models::LegalHold
      Usage = Azure::Storage::Mgmt::V2020_08_01_preview::Models::Usage
      LeaseContainerResponse = Azure::Storage::Mgmt::V2020_08_01_preview::Models::LeaseContainerResponse
      EncryptionServices = Azure::Storage::Mgmt::V2020_08_01_preview::Models::EncryptionServices
      ListContainerItems = Azure::Storage::Mgmt::V2020_08_01_preview::Models::ListContainerItems
      BlobRestoreRange = Azure::Storage::Mgmt::V2020_08_01_preview::Models::BlobRestoreRange
      CorsRule = Azure::Storage::Mgmt::V2020_08_01_preview::Models::CorsRule
      ServiceSasParameters = Azure::Storage::Mgmt::V2020_08_01_preview::Models::ServiceSasParameters
      CorsRules = Azure::Storage::Mgmt::V2020_08_01_preview::Models::CorsRules
      StorageAccountListKeysResult = Azure::Storage::Mgmt::V2020_08_01_preview::Models::StorageAccountListKeysResult
      DeleteRetentionPolicy = Azure::Storage::Mgmt::V2020_08_01_preview::Models::DeleteRetentionPolicy
      RoutingPreference = Azure::Storage::Mgmt::V2020_08_01_preview::Models::RoutingPreference
      ChangeFeed = Azure::Storage::Mgmt::V2020_08_01_preview::Models::ChangeFeed
      PrivateEndpointConnection = Azure::Storage::Mgmt::V2020_08_01_preview::Models::PrivateEndpointConnection
      DeletedAccount = Azure::Storage::Mgmt::V2020_08_01_preview::Models::DeletedAccount
      StorageAccount = Azure::Storage::Mgmt::V2020_08_01_preview::Models::StorageAccount
      ManagementPolicy = Azure::Storage::Mgmt::V2020_08_01_preview::Models::ManagementPolicy
      EncryptionScope = Azure::Storage::Mgmt::V2020_08_01_preview::Models::EncryptionScope
      ObjectReplicationPolicy = Azure::Storage::Mgmt::V2020_08_01_preview::Models::ObjectReplicationPolicy
      ProxyResource = Azure::Storage::Mgmt::V2020_08_01_preview::Models::ProxyResource
      TrackedResource = Azure::Storage::Mgmt::V2020_08_01_preview::Models::TrackedResource
      AzureEntityResource = Azure::Storage::Mgmt::V2020_08_01_preview::Models::AzureEntityResource
      PrivateLinkResource = Azure::Storage::Mgmt::V2020_08_01_preview::Models::PrivateLinkResource
      BlobContainer = Azure::Storage::Mgmt::V2020_08_01_preview::Models::BlobContainer
      ImmutabilityPolicy = Azure::Storage::Mgmt::V2020_08_01_preview::Models::ImmutabilityPolicy
      ListContainerItem = Azure::Storage::Mgmt::V2020_08_01_preview::Models::ListContainerItem
      BlobServiceProperties = Azure::Storage::Mgmt::V2020_08_01_preview::Models::BlobServiceProperties
      FileServiceProperties = Azure::Storage::Mgmt::V2020_08_01_preview::Models::FileServiceProperties
      FileShare = Azure::Storage::Mgmt::V2020_08_01_preview::Models::FileShare
      FileShareItem = Azure::Storage::Mgmt::V2020_08_01_preview::Models::FileShareItem
      QueueServiceProperties = Azure::Storage::Mgmt::V2020_08_01_preview::Models::QueueServiceProperties
      StorageQueue = Azure::Storage::Mgmt::V2020_08_01_preview::Models::StorageQueue
      ListQueue = Azure::Storage::Mgmt::V2020_08_01_preview::Models::ListQueue
      TableServiceProperties = Azure::Storage::Mgmt::V2020_08_01_preview::Models::TableServiceProperties
      Table = Azure::Storage::Mgmt::V2020_08_01_preview::Models::Table
      ReasonCode = Azure::Storage::Mgmt::V2020_08_01_preview::Models::ReasonCode
      SkuName = Azure::Storage::Mgmt::V2020_08_01_preview::Models::SkuName
      SkuTier = Azure::Storage::Mgmt::V2020_08_01_preview::Models::SkuTier
      Kind = Azure::Storage::Mgmt::V2020_08_01_preview::Models::Kind
      Reason = Azure::Storage::Mgmt::V2020_08_01_preview::Models::Reason
      KeyType = Azure::Storage::Mgmt::V2020_08_01_preview::Models::KeyType
      KeySource = Azure::Storage::Mgmt::V2020_08_01_preview::Models::KeySource
      Action = Azure::Storage::Mgmt::V2020_08_01_preview::Models::Action
      State = Azure::Storage::Mgmt::V2020_08_01_preview::Models::State
      Bypass = Azure::Storage::Mgmt::V2020_08_01_preview::Models::Bypass
      DefaultAction = Azure::Storage::Mgmt::V2020_08_01_preview::Models::DefaultAction
      DirectoryServiceOptions = Azure::Storage::Mgmt::V2020_08_01_preview::Models::DirectoryServiceOptions
      AccessTier = Azure::Storage::Mgmt::V2020_08_01_preview::Models::AccessTier
      LargeFileSharesState = Azure::Storage::Mgmt::V2020_08_01_preview::Models::LargeFileSharesState
      RoutingChoice = Azure::Storage::Mgmt::V2020_08_01_preview::Models::RoutingChoice
      MinimumTlsVersion = Azure::Storage::Mgmt::V2020_08_01_preview::Models::MinimumTlsVersion
      GeoReplicationStatus = Azure::Storage::Mgmt::V2020_08_01_preview::Models::GeoReplicationStatus
      BlobRestoreProgressStatus = Azure::Storage::Mgmt::V2020_08_01_preview::Models::BlobRestoreProgressStatus
      ProvisioningState = Azure::Storage::Mgmt::V2020_08_01_preview::Models::ProvisioningState
      AccountStatus = Azure::Storage::Mgmt::V2020_08_01_preview::Models::AccountStatus
      PrivateEndpointServiceConnectionStatus = Azure::Storage::Mgmt::V2020_08_01_preview::Models::PrivateEndpointServiceConnectionStatus
      PrivateEndpointConnectionProvisioningState = Azure::Storage::Mgmt::V2020_08_01_preview::Models::PrivateEndpointConnectionProvisioningState
      KeyPermission = Azure::Storage::Mgmt::V2020_08_01_preview::Models::KeyPermission
      UsageUnit = Azure::Storage::Mgmt::V2020_08_01_preview::Models::UsageUnit
      Services = Azure::Storage::Mgmt::V2020_08_01_preview::Models::Services
      SignedResourceTypes = Azure::Storage::Mgmt::V2020_08_01_preview::Models::SignedResourceTypes
      Permissions = Azure::Storage::Mgmt::V2020_08_01_preview::Models::Permissions
      HttpProtocol = Azure::Storage::Mgmt::V2020_08_01_preview::Models::HttpProtocol
      SignedResource = Azure::Storage::Mgmt::V2020_08_01_preview::Models::SignedResource
      EncryptionScopeSource = Azure::Storage::Mgmt::V2020_08_01_preview::Models::EncryptionScopeSource
      EncryptionScopeState = Azure::Storage::Mgmt::V2020_08_01_preview::Models::EncryptionScopeState
      PublicAccess = Azure::Storage::Mgmt::V2020_08_01_preview::Models::PublicAccess
      LeaseStatus = Azure::Storage::Mgmt::V2020_08_01_preview::Models::LeaseStatus
      LeaseState = Azure::Storage::Mgmt::V2020_08_01_preview::Models::LeaseState
      LeaseDuration = Azure::Storage::Mgmt::V2020_08_01_preview::Models::LeaseDuration
      ImmutabilityPolicyState = Azure::Storage::Mgmt::V2020_08_01_preview::Models::ImmutabilityPolicyState
      ImmutabilityPolicyUpdateType = Azure::Storage::Mgmt::V2020_08_01_preview::Models::ImmutabilityPolicyUpdateType
      EnabledProtocols = Azure::Storage::Mgmt::V2020_08_01_preview::Models::EnabledProtocols
      RootSquashType = Azure::Storage::Mgmt::V2020_08_01_preview::Models::RootSquashType
      ShareAccessTier = Azure::Storage::Mgmt::V2020_08_01_preview::Models::ShareAccessTier
      StorageAccountExpand = Azure::Storage::Mgmt::V2020_08_01_preview::Models::StorageAccountExpand
      ListKeyExpand = Azure::Storage::Mgmt::V2020_08_01_preview::Models::ListKeyExpand
      ListContainersInclude = Azure::Storage::Mgmt::V2020_08_01_preview::Models::ListContainersInclude
      ListSharesExpand = Azure::Storage::Mgmt::V2020_08_01_preview::Models::ListSharesExpand
      GetShareExpand = Azure::Storage::Mgmt::V2020_08_01_preview::Models::GetShareExpand
    end

    #
    # StorageManagementClass
    #
    class StorageManagementClass
      attr_reader :operations, :skus, :storage_accounts, :deleted_accounts, :usages, :management_policies, :private_endpoint_connections, :private_link_resources, :object_replication_policies_operations, :encryption_scopes, :blob_services, :blob_containers, :file_services, :file_shares, :queue_services, :queue, :table_services, :table_operations, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::Storage::Mgmt::V2020_08_01_preview::StorageManagementClient.new(configurable.credentials, base_url, options)
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
      def tag_filter
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::TagFilter
      end
      def operation_display
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::OperationDisplay
      end
      def management_policy_filter
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::ManagementPolicyFilter
      end
      def metric_specification
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::MetricSpecification
      end
      def management_policy_definition
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::ManagementPolicyDefinition
      end
      def operation
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::Operation
      end
      def management_policy_rule
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::ManagementPolicyRule
      end
      def storage_account_check_name_availability_parameters
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::StorageAccountCheckNameAvailabilityParameters
      end
      def management_policy_schema
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::ManagementPolicySchema
      end
      def restriction
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::Restriction
      end
      def date_after_modification
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::DateAfterModification
      end
      def management_policy_base_blob
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::ManagementPolicyBaseBlob
      end
      def check_name_availability_result
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::CheckNameAvailabilityResult
      end
      def date_after_creation
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::DateAfterCreation
      end
      def encryption_service
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::EncryptionService
      end
      def management_policy_snap_shot
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::ManagementPolicySnapShot
      end
      def key_vault_properties
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::KeyVaultProperties
      end
      def management_policy_action
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::ManagementPolicyAction
      end
      def virtual_network_rule
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::VirtualNetworkRule
      end
      def dimension
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::Dimension
      end
      def network_rule_set
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::NetworkRuleSet
      end
      def service_specification
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::ServiceSpecification
      end
      def azure_files_identity_based_authentication
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::AzureFilesIdentityBasedAuthentication
      end
      def operation_list_result
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::OperationListResult
      end
      def identity
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::Identity
      end
      def skucapability
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::SKUCapability
      end
      def storage_account_create_parameters
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::StorageAccountCreateParameters
      end
      def sku_information
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::SkuInformation
      end
      def storage_account_internet_endpoints
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::StorageAccountInternetEndpoints
      end
      def list_table_resource
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::ListTableResource
      end
      def geo_replication_stats
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::GeoReplicationStats
      end
      def encryption_scope_key_vault_properties
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::EncryptionScopeKeyVaultProperties
      end
      def blob_restore_parameters
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::BlobRestoreParameters
      end
      def list_table_services
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::ListTableServices
      end
      def private_endpoint
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::PrivateEndpoint
      end
      def encryption_scope_list_result
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::EncryptionScopeListResult
      end
      def private_link_service_connection_state
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::PrivateLinkServiceConnectionState
      end
      def blob_service_items
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::BlobServiceItems
      end
      def restore_policy_properties
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::RestorePolicyProperties
      end
      def storage_account_key
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::StorageAccountKey
      end
      def object_replication_policy_filter
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::ObjectReplicationPolicyFilter
      end
      def deleted_account_list_result
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::DeletedAccountListResult
      end
      def object_replication_policy_rule
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::ObjectReplicationPolicyRule
      end
      def storage_account_regenerate_key_parameters
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::StorageAccountRegenerateKeyParameters
      end
      def list_queue_resource
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::ListQueueResource
      end
      def usage_name
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::UsageName
      end
      def object_replication_policies
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::ObjectReplicationPolicies
      end
      def usage_list_result
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::UsageListResult
      end
      def error_response_body
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::ErrorResponseBody
      end
      def list_account_sas_response
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::ListAccountSasResponse
      end
      def error_response
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::ErrorResponse
      end
      def list_service_sas_response
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::ListServiceSasResponse
      end
      def list_queue_services
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::ListQueueServices
      end
      def custom_domain
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::CustomDomain
      end
      def encryption
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::Encryption
      end
      def active_directory_properties
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::ActiveDirectoryProperties
      end
      def resource
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::Resource
      end
      def sku
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::Sku
      end
      def file_share_items
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::FileShareItems
      end
      def endpoints
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::Endpoints
      end
      def private_link_resource_list_result
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::PrivateLinkResourceListResult
      end
      def blob_restore_status
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::BlobRestoreStatus
      end
      def private_endpoint_connection_list_result
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::PrivateEndpointConnectionListResult
      end
      def storage_account_list_result
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::StorageAccountListResult
      end
      def update_history_property
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::UpdateHistoryProperty
      end
      def storage_account_update_parameters
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::StorageAccountUpdateParameters
      end
      def immutability_policy_properties
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::ImmutabilityPolicyProperties
      end
      def account_sas_parameters
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::AccountSasParameters
      end
      def tag_property
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::TagProperty
      end
      def storage_sku_list_result
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::StorageSkuListResult
      end
      def legal_hold_properties
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::LegalHoldProperties
      end
      def iprule
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::IPRule
      end
      def deleted_share
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::DeletedShare
      end
      def storage_account_microsoft_endpoints
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::StorageAccountMicrosoftEndpoints
      end
      def file_service_items
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::FileServiceItems
      end
      def lease_container_request
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::LeaseContainerRequest
      end
      def legal_hold
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::LegalHold
      end
      def usage
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::Usage
      end
      def lease_container_response
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::LeaseContainerResponse
      end
      def encryption_services
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::EncryptionServices
      end
      def list_container_items
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::ListContainerItems
      end
      def blob_restore_range
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::BlobRestoreRange
      end
      def cors_rule
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::CorsRule
      end
      def service_sas_parameters
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::ServiceSasParameters
      end
      def cors_rules
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::CorsRules
      end
      def storage_account_list_keys_result
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::StorageAccountListKeysResult
      end
      def delete_retention_policy
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::DeleteRetentionPolicy
      end
      def routing_preference
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::RoutingPreference
      end
      def change_feed
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::ChangeFeed
      end
      def private_endpoint_connection
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::PrivateEndpointConnection
      end
      def deleted_account
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::DeletedAccount
      end
      def storage_account
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::StorageAccount
      end
      def management_policy
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::ManagementPolicy
      end
      def encryption_scope
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::EncryptionScope
      end
      def object_replication_policy
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::ObjectReplicationPolicy
      end
      def proxy_resource
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::ProxyResource
      end
      def tracked_resource
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::TrackedResource
      end
      def azure_entity_resource
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::AzureEntityResource
      end
      def private_link_resource
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::PrivateLinkResource
      end
      def blob_container
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::BlobContainer
      end
      def immutability_policy
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::ImmutabilityPolicy
      end
      def list_container_item
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::ListContainerItem
      end
      def blob_service_properties
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::BlobServiceProperties
      end
      def file_service_properties
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::FileServiceProperties
      end
      def file_share
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::FileShare
      end
      def file_share_item
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::FileShareItem
      end
      def queue_service_properties
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::QueueServiceProperties
      end
      def storage_queue
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::StorageQueue
      end
      def list_queue
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::ListQueue
      end
      def table_service_properties
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::TableServiceProperties
      end
      def table
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::Table
      end
      def reason_code
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::ReasonCode
      end
      def sku_name
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::SkuName
      end
      def sku_tier
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::SkuTier
      end
      def kind
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::Kind
      end
      def reason
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::Reason
      end
      def key_type
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::KeyType
      end
      def key_source
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::KeySource
      end
      def action
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::Action
      end
      def state
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::State
      end
      def bypass
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::Bypass
      end
      def default_action
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::DefaultAction
      end
      def directory_service_options
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::DirectoryServiceOptions
      end
      def access_tier
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::AccessTier
      end
      def large_file_shares_state
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::LargeFileSharesState
      end
      def routing_choice
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::RoutingChoice
      end
      def minimum_tls_version
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::MinimumTlsVersion
      end
      def geo_replication_status
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::GeoReplicationStatus
      end
      def blob_restore_progress_status
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::BlobRestoreProgressStatus
      end
      def provisioning_state
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::ProvisioningState
      end
      def account_status
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::AccountStatus
      end
      def private_endpoint_service_connection_status
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::PrivateEndpointServiceConnectionStatus
      end
      def private_endpoint_connection_provisioning_state
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::PrivateEndpointConnectionProvisioningState
      end
      def key_permission
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::KeyPermission
      end
      def usage_unit
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::UsageUnit
      end
      def services
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::Services
      end
      def signed_resource_types
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::SignedResourceTypes
      end
      def permissions
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::Permissions
      end
      def http_protocol
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::HttpProtocol
      end
      def signed_resource
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::SignedResource
      end
      def encryption_scope_source
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::EncryptionScopeSource
      end
      def encryption_scope_state
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::EncryptionScopeState
      end
      def public_access
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::PublicAccess
      end
      def lease_status
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::LeaseStatus
      end
      def lease_state
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::LeaseState
      end
      def lease_duration
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::LeaseDuration
      end
      def immutability_policy_state
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::ImmutabilityPolicyState
      end
      def immutability_policy_update_type
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::ImmutabilityPolicyUpdateType
      end
      def enabled_protocols
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::EnabledProtocols
      end
      def root_squash_type
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::RootSquashType
      end
      def share_access_tier
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::ShareAccessTier
      end
      def storage_account_expand
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::StorageAccountExpand
      end
      def list_key_expand
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::ListKeyExpand
      end
      def list_containers_include
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::ListContainersInclude
      end
      def list_shares_expand
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::ListSharesExpand
      end
      def get_share_expand
        Azure::Storage::Mgmt::V2020_08_01_preview::Models::GetShareExpand
      end
    end
  end
end
