# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_operational_insights'

module Azure::Profiles::Latest
  module OperationalInsights
    module Mgmt
      StorageInsights = Azure::OperationalInsights::Mgmt::V2015_03_20::StorageInsights
      SavedSearches = Azure::OperationalInsights::Mgmt::V2015_03_20::SavedSearches
      DataSources = Azure::OperationalInsights::Mgmt::V2015_11_01_preview::DataSources
      Workspaces = Azure::OperationalInsights::Mgmt::V2015_11_01_preview::Workspaces
      Operations = Azure::OperationalInsights::Mgmt::V2015_11_01_preview::Operations
      LinkedServices = Azure::OperationalInsights::Mgmt::V2015_11_01_preview::LinkedServices

      module Models
        SearchSchemaValue = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::SearchSchemaValue
        SearchGetSchemaResponse = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::SearchGetSchemaResponse
        SearchHighlight = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::SearchHighlight
        LinkTarget = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::LinkTarget
        SearchParameters = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::SearchParameters
        CoreSummary = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::CoreSummary
        SearchMetadataSchema = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::SearchMetadataSchema
        StorageInsightStatus = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::StorageInsightStatus
        SavedSearch = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::SavedSearch
        SavedSearchesListResult = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::SavedSearchesListResult
        SearchResultsResponse = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::SearchResultsResponse
        StorageInsightListResult = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::StorageInsightListResult
        SearchSort = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::SearchSort
        SearchError = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::SearchError
        WorkspacePurgeBodyFilters = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::WorkspacePurgeBodyFilters
        WorkspacePurgeBody = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::WorkspacePurgeBody
        SearchMetadata = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::SearchMetadata
        WorkspacePurgeResponse = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::WorkspacePurgeResponse
        SearchSortEnum = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::SearchSortEnum
        WorkspacePurgeStatusResponse = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::WorkspacePurgeStatusResponse
        StorageInsight = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::StorageInsight
        Tag = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::Tag
        PurgeState = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::PurgeState
        StorageInsightState = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::StorageInsightState
        StorageAccount = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::StorageAccount
        ProxyResource = Azure::OperationalInsights::Mgmt::V2015_11_01_preview::Models::ProxyResource
        UsageMetric = Azure::OperationalInsights::Mgmt::V2015_11_01_preview::Models::UsageMetric
        WorkspaceListUsagesResult = Azure::OperationalInsights::Mgmt::V2015_11_01_preview::Models::WorkspaceListUsagesResult
        LinkedServiceListResult = Azure::OperationalInsights::Mgmt::V2015_11_01_preview::Models::LinkedServiceListResult
        ManagementGroup = Azure::OperationalInsights::Mgmt::V2015_11_01_preview::Models::ManagementGroup
        DataSourceFilter = Azure::OperationalInsights::Mgmt::V2015_11_01_preview::Models::DataSourceFilter
        WorkspaceListManagementGroupsResult = Azure::OperationalInsights::Mgmt::V2015_11_01_preview::Models::WorkspaceListManagementGroupsResult
        IntelligencePack = Azure::OperationalInsights::Mgmt::V2015_11_01_preview::Models::IntelligencePack
        SharedKeys = Azure::OperationalInsights::Mgmt::V2015_11_01_preview::Models::SharedKeys
        Resource = Azure::OperationalInsights::Mgmt::V2015_11_01_preview::Models::Resource
        DataSourceListResult = Azure::OperationalInsights::Mgmt::V2015_11_01_preview::Models::DataSourceListResult
        MetricName = Azure::OperationalInsights::Mgmt::V2015_11_01_preview::Models::MetricName
        LinkedService = Azure::OperationalInsights::Mgmt::V2015_11_01_preview::Models::LinkedService
        DataSourceKind = Azure::OperationalInsights::Mgmt::V2015_11_01_preview::Models::DataSourceKind
        OperationDisplay = Azure::OperationalInsights::Mgmt::V2015_11_01_preview::Models::OperationDisplay
        DataSource = Azure::OperationalInsights::Mgmt::V2015_11_01_preview::Models::DataSource
        Operation = Azure::OperationalInsights::Mgmt::V2015_11_01_preview::Models::Operation
        EntityStatus = Azure::OperationalInsights::Mgmt::V2015_11_01_preview::Models::EntityStatus
        OperationListResult = Azure::OperationalInsights::Mgmt::V2015_11_01_preview::Models::OperationListResult
        WorkspaceListResult = Azure::OperationalInsights::Mgmt::V2015_11_01_preview::Models::WorkspaceListResult
        Workspace = Azure::OperationalInsights::Mgmt::V2015_11_01_preview::Models::Workspace
        SkuNameEnum = Azure::OperationalInsights::Mgmt::V2015_11_01_preview::Models::SkuNameEnum
        Sku = Azure::OperationalInsights::Mgmt::V2015_11_01_preview::Models::Sku
      end

      class OperationalInsightsManagementClass
        attr_reader :storage_insights, :saved_searches, :data_sources, :workspaces, :operations, :linked_services, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::OperationalInsights::Mgmt::V2015_03_20::OperationalInsightsManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @storage_insights = @client_0.storage_insights
          @saved_searches = @client_0.saved_searches

          @client_1 = Azure::OperationalInsights::Mgmt::V2015_11_01_preview::OperationalInsightsManagementClient.new(configurable.credentials, base_url, options)
          if(@client_1.respond_to?(:subscription_id))
            @client_1.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_1)
          @data_sources = @client_1.data_sources
          @workspaces = @client_1.workspaces
          @operations = @client_1.operations
          @linked_services = @client_1.linked_services

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/OperationalInsights/Mgmt"
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
          def search_schema_value
            Azure::OperationalInsights::Mgmt::V2015_03_20::Models::SearchSchemaValue
          end
          def search_get_schema_response
            Azure::OperationalInsights::Mgmt::V2015_03_20::Models::SearchGetSchemaResponse
          end
          def search_highlight
            Azure::OperationalInsights::Mgmt::V2015_03_20::Models::SearchHighlight
          end
          def link_target
            Azure::OperationalInsights::Mgmt::V2015_03_20::Models::LinkTarget
          end
          def search_parameters
            Azure::OperationalInsights::Mgmt::V2015_03_20::Models::SearchParameters
          end
          def core_summary
            Azure::OperationalInsights::Mgmt::V2015_03_20::Models::CoreSummary
          end
          def search_metadata_schema
            Azure::OperationalInsights::Mgmt::V2015_03_20::Models::SearchMetadataSchema
          end
          def storage_insight_status
            Azure::OperationalInsights::Mgmt::V2015_03_20::Models::StorageInsightStatus
          end
          def saved_search
            Azure::OperationalInsights::Mgmt::V2015_03_20::Models::SavedSearch
          end
          def saved_searches_list_result
            Azure::OperationalInsights::Mgmt::V2015_03_20::Models::SavedSearchesListResult
          end
          def search_results_response
            Azure::OperationalInsights::Mgmt::V2015_03_20::Models::SearchResultsResponse
          end
          def storage_insight_list_result
            Azure::OperationalInsights::Mgmt::V2015_03_20::Models::StorageInsightListResult
          end
          def search_sort
            Azure::OperationalInsights::Mgmt::V2015_03_20::Models::SearchSort
          end
          def search_error
            Azure::OperationalInsights::Mgmt::V2015_03_20::Models::SearchError
          end
          def workspace_purge_body_filters
            Azure::OperationalInsights::Mgmt::V2015_03_20::Models::WorkspacePurgeBodyFilters
          end
          def workspace_purge_body
            Azure::OperationalInsights::Mgmt::V2015_03_20::Models::WorkspacePurgeBody
          end
          def search_metadata
            Azure::OperationalInsights::Mgmt::V2015_03_20::Models::SearchMetadata
          end
          def workspace_purge_response
            Azure::OperationalInsights::Mgmt::V2015_03_20::Models::WorkspacePurgeResponse
          end
          def search_sort_enum
            Azure::OperationalInsights::Mgmt::V2015_03_20::Models::SearchSortEnum
          end
          def workspace_purge_status_response
            Azure::OperationalInsights::Mgmt::V2015_03_20::Models::WorkspacePurgeStatusResponse
          end
          def storage_insight
            Azure::OperationalInsights::Mgmt::V2015_03_20::Models::StorageInsight
          end
          def tag
            Azure::OperationalInsights::Mgmt::V2015_03_20::Models::Tag
          end
          def purge_state
            Azure::OperationalInsights::Mgmt::V2015_03_20::Models::PurgeState
          end
          def storage_insight_state
            Azure::OperationalInsights::Mgmt::V2015_03_20::Models::StorageInsightState
          end
          def storage_account
            Azure::OperationalInsights::Mgmt::V2015_03_20::Models::StorageAccount
          end
          def proxy_resource
            Azure::OperationalInsights::Mgmt::V2015_11_01_preview::Models::ProxyResource
          end
          def usage_metric
            Azure::OperationalInsights::Mgmt::V2015_11_01_preview::Models::UsageMetric
          end
          def workspace_list_usages_result
            Azure::OperationalInsights::Mgmt::V2015_11_01_preview::Models::WorkspaceListUsagesResult
          end
          def linked_service_list_result
            Azure::OperationalInsights::Mgmt::V2015_11_01_preview::Models::LinkedServiceListResult
          end
          def management_group
            Azure::OperationalInsights::Mgmt::V2015_11_01_preview::Models::ManagementGroup
          end
          def data_source_filter
            Azure::OperationalInsights::Mgmt::V2015_11_01_preview::Models::DataSourceFilter
          end
          def workspace_list_management_groups_result
            Azure::OperationalInsights::Mgmt::V2015_11_01_preview::Models::WorkspaceListManagementGroupsResult
          end
          def intelligence_pack
            Azure::OperationalInsights::Mgmt::V2015_11_01_preview::Models::IntelligencePack
          end
          def shared_keys
            Azure::OperationalInsights::Mgmt::V2015_11_01_preview::Models::SharedKeys
          end
          def resource
            Azure::OperationalInsights::Mgmt::V2015_11_01_preview::Models::Resource
          end
          def data_source_list_result
            Azure::OperationalInsights::Mgmt::V2015_11_01_preview::Models::DataSourceListResult
          end
          def metric_name
            Azure::OperationalInsights::Mgmt::V2015_11_01_preview::Models::MetricName
          end
          def linked_service
            Azure::OperationalInsights::Mgmt::V2015_11_01_preview::Models::LinkedService
          end
          def data_source_kind
            Azure::OperationalInsights::Mgmt::V2015_11_01_preview::Models::DataSourceKind
          end
          def operation_display
            Azure::OperationalInsights::Mgmt::V2015_11_01_preview::Models::OperationDisplay
          end
          def data_source
            Azure::OperationalInsights::Mgmt::V2015_11_01_preview::Models::DataSource
          end
          def operation
            Azure::OperationalInsights::Mgmt::V2015_11_01_preview::Models::Operation
          end
          def entity_status
            Azure::OperationalInsights::Mgmt::V2015_11_01_preview::Models::EntityStatus
          end
          def operation_list_result
            Azure::OperationalInsights::Mgmt::V2015_11_01_preview::Models::OperationListResult
          end
          def workspace_list_result
            Azure::OperationalInsights::Mgmt::V2015_11_01_preview::Models::WorkspaceListResult
          end
          def workspace
            Azure::OperationalInsights::Mgmt::V2015_11_01_preview::Models::Workspace
          end
          def sku_name_enum
            Azure::OperationalInsights::Mgmt::V2015_11_01_preview::Models::SkuNameEnum
          end
          def sku
            Azure::OperationalInsights::Mgmt::V2015_11_01_preview::Models::Sku
          end
        end
      end
    end
  end
end
