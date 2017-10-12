# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_operational_insights'

module Azure::OperationalInsights::Management::Profile_2015_11_01_Preview
    StorageInsights = Azure::ARM::OperationalInsights::Api_2015_03_20::StorageInsights
    SavedSearches = Azure::ARM::OperationalInsights::Api_2015_03_20::SavedSearches
    LinkedServices = Azure::ARM::OperationalInsights::Api_2015_11_01_preview::LinkedServices
    DataSources = Azure::ARM::OperationalInsights::Api_2015_11_01_preview::DataSources
    Workspaces = Azure::ARM::OperationalInsights::Api_2015_11_01_preview::Workspaces

    module Models
      SearchSchemaValue = Azure::ARM::OperationalInsights::Api_2015_03_20::Models::SearchSchemaValue
      LinkTarget = Azure::ARM::OperationalInsights::Api_2015_03_20::Models::LinkTarget
      SearchGetSchemaResponse = Azure::ARM::OperationalInsights::Api_2015_03_20::Models::SearchGetSchemaResponse
      CoreSummary = Azure::ARM::OperationalInsights::Api_2015_03_20::Models::CoreSummary
      SearchHighlight = Azure::ARM::OperationalInsights::Api_2015_03_20::Models::SearchHighlight
      SearchMetadataSchema = Azure::ARM::OperationalInsights::Api_2015_03_20::Models::SearchMetadataSchema
      SearchParameters = Azure::ARM::OperationalInsights::Api_2015_03_20::Models::SearchParameters
      SavedSearch = Azure::ARM::OperationalInsights::Api_2015_03_20::Models::SavedSearch
      StorageAccount = Azure::ARM::OperationalInsights::Api_2015_03_20::Models::StorageAccount
      SearchError = Azure::ARM::OperationalInsights::Api_2015_03_20::Models::SearchError
      StorageInsightStatus = Azure::ARM::OperationalInsights::Api_2015_03_20::Models::StorageInsightStatus
      Tag = Azure::ARM::OperationalInsights::Api_2015_03_20::Models::Tag
      SearchSort = Azure::ARM::OperationalInsights::Api_2015_03_20::Models::SearchSort
      SavedSearchesListResult = Azure::ARM::OperationalInsights::Api_2015_03_20::Models::SavedSearchesListResult
      StorageInsightListResult = Azure::ARM::OperationalInsights::Api_2015_03_20::Models::StorageInsightListResult
      SearchMetadata = Azure::ARM::OperationalInsights::Api_2015_03_20::Models::SearchMetadata
      SearchResultsResponse = Azure::ARM::OperationalInsights::Api_2015_03_20::Models::SearchResultsResponse
      StorageInsight = Azure::ARM::OperationalInsights::Api_2015_03_20::Models::StorageInsight
      SearchSortEnum = Azure::ARM::OperationalInsights::Api_2015_03_20::Models::SearchSortEnum
      StorageInsightState = Azure::ARM::OperationalInsights::Api_2015_03_20::Models::StorageInsightState
      UsageMetric = Azure::ARM::OperationalInsights::Api_2015_11_01_preview::Models::UsageMetric
      WorkspaceListUsagesResult = Azure::ARM::OperationalInsights::Api_2015_11_01_preview::Models::WorkspaceListUsagesResult
      LinkedServiceListResult = Azure::ARM::OperationalInsights::Api_2015_11_01_preview::Models::LinkedServiceListResult
      ManagementGroup = Azure::ARM::OperationalInsights::Api_2015_11_01_preview::Models::ManagementGroup
      DataSourceFilter = Azure::ARM::OperationalInsights::Api_2015_11_01_preview::Models::DataSourceFilter
      WorkspaceListManagementGroupsResult = Azure::ARM::OperationalInsights::Api_2015_11_01_preview::Models::WorkspaceListManagementGroupsResult
      IntelligencePack = Azure::ARM::OperationalInsights::Api_2015_11_01_preview::Models::IntelligencePack
      Sku = Azure::ARM::OperationalInsights::Api_2015_11_01_preview::Models::Sku
      MetricName = Azure::ARM::OperationalInsights::Api_2015_11_01_preview::Models::MetricName
      SharedKeys = Azure::ARM::OperationalInsights::Api_2015_11_01_preview::Models::SharedKeys
      Resource = Azure::ARM::OperationalInsights::Api_2015_11_01_preview::Models::Resource
      DataSourceListResult = Azure::ARM::OperationalInsights::Api_2015_11_01_preview::Models::DataSourceListResult
      ProxyResource = Azure::ARM::OperationalInsights::Api_2015_11_01_preview::Models::ProxyResource
      WorkspaceListResult = Azure::ARM::OperationalInsights::Api_2015_11_01_preview::Models::WorkspaceListResult
      LinkedService = Azure::ARM::OperationalInsights::Api_2015_11_01_preview::Models::LinkedService
      DataSource = Azure::ARM::OperationalInsights::Api_2015_11_01_preview::Models::DataSource
      Workspace = Azure::ARM::OperationalInsights::Api_2015_11_01_preview::Models::Workspace
      DataSourceKind = Azure::ARM::OperationalInsights::Api_2015_11_01_preview::Models::DataSourceKind
      SkuNameEnum = Azure::ARM::OperationalInsights::Api_2015_11_01_preview::Models::SkuNameEnum
      EntityStatus = Azure::ARM::OperationalInsights::Api_2015_11_01_preview::Models::EntityStatus
    end

    #
    # OperationalInsights
    #
    class OperationalInsightsClass
      attr_reader :storage_insights, :saved_searches, :linked_services, :data_sources, :workspaces, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        client_0 = Azure::ARM::OperationalInsights::Api_2015_03_20::OperationalInsightsManagementClient.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        @storage_insights = client_0.storage_insights
        @saved_searches = client_0.saved_searches

        client_1 = Azure::ARM::OperationalInsights::Api_2015_11_01_preview::AzureLogAnalytics.new(configurable.credentials, base_url, options)
        if(client_1.respond_to?(:subscription_id))
          client_1.subscription_id = configurable.subscription_id
        end
        @linked_services = client_1.linked_services
        @data_sources = client_1.data_sources
        @workspaces = client_1.workspaces

        @model_classes = ModelClasses.new
      end

      #
      # Method to get the client object
      #
      # @return Client object
      #
      def get_client(version = '2015-11-01-preview')
        case version
          when '2015-03-20'
            client = Azure::ARM::OperationalInsights::Api_2015_03_20::OperationalInsightsManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          when '2015-11-01-preview'
            client = Azure::ARM::OperationalInsights::Api_2015_11_01_preview::AzureLogAnalytics.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def search_schema_value
          Azure::ARM::OperationalInsights::Api_2015_03_20::Models::SearchSchemaValue
        end
        def link_target
          Azure::ARM::OperationalInsights::Api_2015_03_20::Models::LinkTarget
        end
        def search_get_schema_response
          Azure::ARM::OperationalInsights::Api_2015_03_20::Models::SearchGetSchemaResponse
        end
        def core_summary
          Azure::ARM::OperationalInsights::Api_2015_03_20::Models::CoreSummary
        end
        def search_highlight
          Azure::ARM::OperationalInsights::Api_2015_03_20::Models::SearchHighlight
        end
        def search_metadata_schema
          Azure::ARM::OperationalInsights::Api_2015_03_20::Models::SearchMetadataSchema
        end
        def search_parameters
          Azure::ARM::OperationalInsights::Api_2015_03_20::Models::SearchParameters
        end
        def saved_search
          Azure::ARM::OperationalInsights::Api_2015_03_20::Models::SavedSearch
        end
        def storage_account
          Azure::ARM::OperationalInsights::Api_2015_03_20::Models::StorageAccount
        end
        def search_error
          Azure::ARM::OperationalInsights::Api_2015_03_20::Models::SearchError
        end
        def storage_insight_status
          Azure::ARM::OperationalInsights::Api_2015_03_20::Models::StorageInsightStatus
        end
        def tag
          Azure::ARM::OperationalInsights::Api_2015_03_20::Models::Tag
        end
        def search_sort
          Azure::ARM::OperationalInsights::Api_2015_03_20::Models::SearchSort
        end
        def saved_searches_list_result
          Azure::ARM::OperationalInsights::Api_2015_03_20::Models::SavedSearchesListResult
        end
        def storage_insight_list_result
          Azure::ARM::OperationalInsights::Api_2015_03_20::Models::StorageInsightListResult
        end
        def search_metadata
          Azure::ARM::OperationalInsights::Api_2015_03_20::Models::SearchMetadata
        end
        def search_results_response
          Azure::ARM::OperationalInsights::Api_2015_03_20::Models::SearchResultsResponse
        end
        def storage_insight
          Azure::ARM::OperationalInsights::Api_2015_03_20::Models::StorageInsight
        end
        def search_sort_enum
          Azure::ARM::OperationalInsights::Api_2015_03_20::Models::SearchSortEnum
        end
        def storage_insight_state
          Azure::ARM::OperationalInsights::Api_2015_03_20::Models::StorageInsightState
        end
        def usage_metric
          Azure::ARM::OperationalInsights::Api_2015_11_01_preview::Models::UsageMetric
        end
        def workspace_list_usages_result
          Azure::ARM::OperationalInsights::Api_2015_11_01_preview::Models::WorkspaceListUsagesResult
        end
        def linked_service_list_result
          Azure::ARM::OperationalInsights::Api_2015_11_01_preview::Models::LinkedServiceListResult
        end
        def management_group
          Azure::ARM::OperationalInsights::Api_2015_11_01_preview::Models::ManagementGroup
        end
        def data_source_filter
          Azure::ARM::OperationalInsights::Api_2015_11_01_preview::Models::DataSourceFilter
        end
        def workspace_list_management_groups_result
          Azure::ARM::OperationalInsights::Api_2015_11_01_preview::Models::WorkspaceListManagementGroupsResult
        end
        def intelligence_pack
          Azure::ARM::OperationalInsights::Api_2015_11_01_preview::Models::IntelligencePack
        end
        def sku
          Azure::ARM::OperationalInsights::Api_2015_11_01_preview::Models::Sku
        end
        def metric_name
          Azure::ARM::OperationalInsights::Api_2015_11_01_preview::Models::MetricName
        end
        def shared_keys
          Azure::ARM::OperationalInsights::Api_2015_11_01_preview::Models::SharedKeys
        end
        def resource
          Azure::ARM::OperationalInsights::Api_2015_11_01_preview::Models::Resource
        end
        def data_source_list_result
          Azure::ARM::OperationalInsights::Api_2015_11_01_preview::Models::DataSourceListResult
        end
        def proxy_resource
          Azure::ARM::OperationalInsights::Api_2015_11_01_preview::Models::ProxyResource
        end
        def workspace_list_result
          Azure::ARM::OperationalInsights::Api_2015_11_01_preview::Models::WorkspaceListResult
        end
        def linked_service
          Azure::ARM::OperationalInsights::Api_2015_11_01_preview::Models::LinkedService
        end
        def data_source
          Azure::ARM::OperationalInsights::Api_2015_11_01_preview::Models::DataSource
        end
        def workspace
          Azure::ARM::OperationalInsights::Api_2015_11_01_preview::Models::Workspace
        end
        def data_source_kind
          Azure::ARM::OperationalInsights::Api_2015_11_01_preview::Models::DataSourceKind
        end
        def sku_name_enum
          Azure::ARM::OperationalInsights::Api_2015_11_01_preview::Models::SkuNameEnum
        end
        def entity_status
          Azure::ARM::OperationalInsights::Api_2015_11_01_preview::Models::EntityStatus
        end
      end
    end
end
