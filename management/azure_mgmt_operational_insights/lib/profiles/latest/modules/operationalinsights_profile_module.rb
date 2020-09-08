# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_operational_insights'

module Azure::OperationalInsights::Profiles::Latest
  module Mgmt
    StorageInsights = Azure::OperationalInsights::Mgmt::V2015_03_20::StorageInsights
    DataExports = Azure::OperationalInsights::Mgmt::V2020_08_01::DataExports
    DataSources = Azure::OperationalInsights::Mgmt::V2020_08_01::DataSources
    IntelligencePacks = Azure::OperationalInsights::Mgmt::V2020_08_01::IntelligencePacks
    LinkedServices = Azure::OperationalInsights::Mgmt::V2020_08_01::LinkedServices
    LinkedStorageAccounts = Azure::OperationalInsights::Mgmt::V2020_08_01::LinkedStorageAccounts
    ManagementGroups = Azure::OperationalInsights::Mgmt::V2020_08_01::ManagementGroups
    Operations = Azure::OperationalInsights::Mgmt::V2020_08_01::Operations
    OperationStatuses = Azure::OperationalInsights::Mgmt::V2020_08_01::OperationStatuses
    SharedKeysOperations = Azure::OperationalInsights::Mgmt::V2020_08_01::SharedKeysOperations
    Usages = Azure::OperationalInsights::Mgmt::V2020_08_01::Usages
    Workspaces = Azure::OperationalInsights::Mgmt::V2020_08_01::Workspaces
    DeletedWorkspaces = Azure::OperationalInsights::Mgmt::V2020_08_01::DeletedWorkspaces
    Clusters = Azure::OperationalInsights::Mgmt::V2020_08_01::Clusters
    StorageInsightConfigs = Azure::OperationalInsights::Mgmt::V2020_08_01::StorageInsightConfigs
    SavedSearches = Azure::OperationalInsights::Mgmt::V2020_08_01::SavedSearches
    AvailableServiceTiers = Azure::OperationalInsights::Mgmt::V2020_08_01::AvailableServiceTiers
    Gateways = Azure::OperationalInsights::Mgmt::V2020_08_01::Gateways
    Schema = Azure::OperationalInsights::Mgmt::V2020_08_01::Schema
    WorkspacePurge = Azure::OperationalInsights::Mgmt::V2020_08_01::WorkspacePurge
    Tables = Azure::OperationalInsights::Mgmt::V2020_08_01::Tables

    module Models
      LinkTarget = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::LinkTarget
      WorkspaceSku = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::WorkspaceSku
      WorkspaceCapping = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::WorkspaceCapping
      DataExportListResult = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::DataExportListResult
      PrivateLinkScopedResource = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::PrivateLinkScopedResource
      ErrorResponse = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::ErrorResponse
      SearchSort = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::SearchSort
      WorkspacePurgeBody = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::WorkspacePurgeBody
      ErrorAdditionalInfo = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::ErrorAdditionalInfo
      WorkspacePurgeBodyFilters = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::WorkspacePurgeBodyFilters
      DataExportErrorResponse = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::DataExportErrorResponse
      DataSourceFilter = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::DataSourceFilter
      SearchMetadataSchema = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::SearchMetadataSchema
      IntelligencePack = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::IntelligencePack
      ErrorContract = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::ErrorContract
      LinkedServiceListResult = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::LinkedServiceListResult
      WorkspaceListResult = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::WorkspaceListResult
      LinkedStorageAccountsListResult = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::LinkedStorageAccountsListResult
      KeyVaultProperties = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::KeyVaultProperties
      WorkspaceListManagementGroupsResult = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::WorkspaceListManagementGroupsResult
      ClusterErrorResponse = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::ClusterErrorResponse
      Operation = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::Operation
      ClusterSku = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::ClusterSku
      OperationStatus = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::OperationStatus
      ClusterPatch = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::ClusterPatch
      MetricName = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::MetricName
      Identity = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::Identity
      WorkspaceListUsagesResult = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::WorkspaceListUsagesResult
      TablesListResult = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::TablesListResult
      SearchGetSchemaResponse = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::SearchGetSchemaResponse
      ClusterListResult = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::ClusterListResult
      SearchSchemaValue = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::SearchSchemaValue
      StorageAccount = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::StorageAccount
      ManagementGroup = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::ManagementGroup
      StorageInsightStatus = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::StorageInsightStatus
      OperationListResult = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::OperationListResult
      WorkspacePurgeStatusResponse = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::WorkspacePurgeStatusResponse
      UsageMetric = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::UsageMetric
      StorageInsightListResult = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::StorageInsightListResult
      DataSourceListResult = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::DataSourceListResult
      Tag = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::Tag
      OperationDisplay = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::OperationDisplay
      WorkspacePurgeResponse = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::WorkspacePurgeResponse
      Resource = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::Resource
      SavedSearchesListResult = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::SavedSearchesListResult
      SharedKeys = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::SharedKeys
      AvailableServiceTier = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::AvailableServiceTier
      SearchMetadata = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::SearchMetadata
      CoreSummary = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::CoreSummary
      DataExport = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::DataExport
      TrackedResource = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::TrackedResource
      AzureEntityResource = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::AzureEntityResource
      ProxyResource = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::ProxyResource
      DataSource = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::DataSource
      LinkedService = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::LinkedService
      LinkedStorageAccountsResource = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::LinkedStorageAccountsResource
      Workspace = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::Workspace
      WorkspacePatch = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::WorkspacePatch
      Cluster = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::Cluster
      StorageInsight = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::StorageInsight
      SavedSearch = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::SavedSearch
      Table = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::Table
      Type = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::Type
      DataSourceKind = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::DataSourceKind
      LinkedServiceEntityStatus = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::LinkedServiceEntityStatus
      DataSourceType = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::DataSourceType
      WorkspaceSkuNameEnum = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::WorkspaceSkuNameEnum
      DataIngestionStatus = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::DataIngestionStatus
      WorkspaceEntityStatus = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::WorkspaceEntityStatus
      PublicNetworkAccessType = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::PublicNetworkAccessType
      ClusterEntityStatus = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::ClusterEntityStatus
      ClusterSkuNameEnum = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::ClusterSkuNameEnum
      IdentityType = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::IdentityType
      StorageInsightState = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::StorageInsightState
      SkuNameEnum = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::SkuNameEnum
      SearchSortEnum = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::SearchSortEnum
      PurgeState = Azure::OperationalInsights::Mgmt::V2020_08_01::Models::PurgeState
    end

    #
    # OperationalInsightsManagementClass
    #
    class OperationalInsightsManagementClass
      attr_reader :storage_insights, :data_exports, :data_sources, :intelligence_packs, :linked_services, :linked_storage_accounts, :management_groups, :operations, :operation_statuses, :shared_keys_operations, :usages, :workspaces, :deleted_workspaces, :clusters, :storage_insight_configs, :saved_searches, :available_service_tiers, :gateways, :schema, :workspace_purge, :tables, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::OperationalInsights::Mgmt::V2015_03_20::OperationalInsightsManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @storage_insights = @client_0.storage_insights

        @client_1 = Azure::OperationalInsights::Mgmt::V2020_08_01::OperationalInsightsManagementClient.new(configurable.credentials, base_url, options)
        if(@client_1.respond_to?(:subscription_id))
          @client_1.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_1)
        @data_exports = @client_1.data_exports
        @data_sources = @client_1.data_sources
        @intelligence_packs = @client_1.intelligence_packs
        @linked_services = @client_1.linked_services
        @linked_storage_accounts = @client_1.linked_storage_accounts
        @management_groups = @client_1.management_groups
        @operations = @client_1.operations
        @operation_statuses = @client_1.operation_statuses
        @shared_keys_operations = @client_1.shared_keys_operations
        @usages = @client_1.usages
        @workspaces = @client_1.workspaces
        @deleted_workspaces = @client_1.deleted_workspaces
        @clusters = @client_1.clusters
        @storage_insight_configs = @client_1.storage_insight_configs
        @saved_searches = @client_1.saved_searches
        @available_service_tiers = @client_1.available_service_tiers
        @gateways = @client_1.gateways
        @schema = @client_1.schema
        @workspace_purge = @client_1.workspace_purge
        @tables = @client_1.tables

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/OperationalInsights/Mgmt'
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
      def link_target
        Azure::OperationalInsights::Mgmt::V2015_03_20::Models::LinkTarget
      end
      def workspace_sku
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::WorkspaceSku
      end
      def workspace_capping
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::WorkspaceCapping
      end
      def data_export_list_result
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::DataExportListResult
      end
      def private_link_scoped_resource
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::PrivateLinkScopedResource
      end
      def error_response
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::ErrorResponse
      end
      def search_sort
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::SearchSort
      end
      def workspace_purge_body
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::WorkspacePurgeBody
      end
      def error_additional_info
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::ErrorAdditionalInfo
      end
      def workspace_purge_body_filters
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::WorkspacePurgeBodyFilters
      end
      def data_export_error_response
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::DataExportErrorResponse
      end
      def data_source_filter
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::DataSourceFilter
      end
      def search_metadata_schema
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::SearchMetadataSchema
      end
      def intelligence_pack
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::IntelligencePack
      end
      def error_contract
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::ErrorContract
      end
      def linked_service_list_result
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::LinkedServiceListResult
      end
      def workspace_list_result
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::WorkspaceListResult
      end
      def linked_storage_accounts_list_result
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::LinkedStorageAccountsListResult
      end
      def key_vault_properties
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::KeyVaultProperties
      end
      def workspace_list_management_groups_result
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::WorkspaceListManagementGroupsResult
      end
      def cluster_error_response
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::ClusterErrorResponse
      end
      def operation
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::Operation
      end
      def cluster_sku
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::ClusterSku
      end
      def operation_status
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::OperationStatus
      end
      def cluster_patch
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::ClusterPatch
      end
      def metric_name
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::MetricName
      end
      def identity
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::Identity
      end
      def workspace_list_usages_result
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::WorkspaceListUsagesResult
      end
      def tables_list_result
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::TablesListResult
      end
      def search_get_schema_response
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::SearchGetSchemaResponse
      end
      def cluster_list_result
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::ClusterListResult
      end
      def search_schema_value
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::SearchSchemaValue
      end
      def storage_account
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::StorageAccount
      end
      def management_group
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::ManagementGroup
      end
      def storage_insight_status
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::StorageInsightStatus
      end
      def operation_list_result
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::OperationListResult
      end
      def workspace_purge_status_response
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::WorkspacePurgeStatusResponse
      end
      def usage_metric
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::UsageMetric
      end
      def storage_insight_list_result
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::StorageInsightListResult
      end
      def data_source_list_result
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::DataSourceListResult
      end
      def tag
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::Tag
      end
      def operation_display
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::OperationDisplay
      end
      def workspace_purge_response
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::WorkspacePurgeResponse
      end
      def resource
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::Resource
      end
      def saved_searches_list_result
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::SavedSearchesListResult
      end
      def shared_keys
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::SharedKeys
      end
      def available_service_tier
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::AvailableServiceTier
      end
      def search_metadata
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::SearchMetadata
      end
      def core_summary
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::CoreSummary
      end
      def data_export
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::DataExport
      end
      def tracked_resource
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::TrackedResource
      end
      def azure_entity_resource
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::AzureEntityResource
      end
      def proxy_resource
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::ProxyResource
      end
      def data_source
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::DataSource
      end
      def linked_service
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::LinkedService
      end
      def linked_storage_accounts_resource
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::LinkedStorageAccountsResource
      end
      def workspace
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::Workspace
      end
      def workspace_patch
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::WorkspacePatch
      end
      def cluster
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::Cluster
      end
      def storage_insight
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::StorageInsight
      end
      def saved_search
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::SavedSearch
      end
      def table
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::Table
      end
      def type
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::Type
      end
      def data_source_kind
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::DataSourceKind
      end
      def linked_service_entity_status
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::LinkedServiceEntityStatus
      end
      def data_source_type
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::DataSourceType
      end
      def workspace_sku_name_enum
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::WorkspaceSkuNameEnum
      end
      def data_ingestion_status
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::DataIngestionStatus
      end
      def workspace_entity_status
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::WorkspaceEntityStatus
      end
      def public_network_access_type
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::PublicNetworkAccessType
      end
      def cluster_entity_status
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::ClusterEntityStatus
      end
      def cluster_sku_name_enum
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::ClusterSkuNameEnum
      end
      def identity_type
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::IdentityType
      end
      def storage_insight_state
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::StorageInsightState
      end
      def sku_name_enum
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::SkuNameEnum
      end
      def search_sort_enum
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::SearchSortEnum
      end
      def purge_state
        Azure::OperationalInsights::Mgmt::V2020_08_01::Models::PurgeState
      end
    end
  end
end
