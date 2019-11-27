# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_operational_insights'

module Azure::Profiles::V2019_07_01
  module OperationalInsights
    module Mgmt
      StorageInsights = Azure::OperationalInsights::Mgmt::V2015_03_20::StorageInsights
      Workspaces = Azure::OperationalInsights::Mgmt::V2015_03_20::Workspaces
      SavedSearches = Azure::OperationalInsights::Mgmt::V2015_03_20::SavedSearches
      Operations = Azure::OperationalInsights::Mgmt::V2015_03_20::Operations

      module Models
        SearchSchemaValue = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::SearchSchemaValue
        SearchGetSchemaResponse = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::SearchGetSchemaResponse
        Operation = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::Operation
        SearchHighlight = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::SearchHighlight
        LinkTarget = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::LinkTarget
        SearchParameters = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::SearchParameters
        CoreSummary = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::CoreSummary
        StorageAccount = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::StorageAccount
        SearchMetadataSchema = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::SearchMetadataSchema
        StorageInsightStatus = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::StorageInsightStatus
        SavedSearch = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::SavedSearch
        SavedSearchesListResult = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::SavedSearchesListResult
        SearchResultsResponse = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::SearchResultsResponse
        StorageInsightListResult = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::StorageInsightListResult
        OperationListResult = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::OperationListResult
        Resource = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::Resource
        SearchSort = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::SearchSort
        ProxyResource = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::ProxyResource
        SearchError = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::SearchError
        WorkspacePurgeBodyFilters = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::WorkspacePurgeBodyFilters
        Tag = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::Tag
        WorkspacePurgeBody = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::WorkspacePurgeBody
        OperationDisplay = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::OperationDisplay
        WorkspacePurgeResponse = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::WorkspacePurgeResponse
        SearchMetadata = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::SearchMetadata
        WorkspacePurgeStatusResponse = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::WorkspacePurgeStatusResponse
        StorageInsight = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::StorageInsight
        SearchSortEnum = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::SearchSortEnum
        StorageInsightState = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::StorageInsightState
        PurgeState = Azure::OperationalInsights::Mgmt::V2015_03_20::Models::PurgeState
      end

      class OperationalInsightsManagementClass
        attr_reader :storage_insights, :workspaces, :saved_searches, :operations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::OperationalInsights::Mgmt::V2015_03_20::OperationalInsightsManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @storage_insights = @client_0.storage_insights
          @workspaces = @client_0.workspaces
          @saved_searches = @client_0.saved_searches
          @operations = @client_0.operations

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/V2019_07_01/OperationalInsights/Mgmt"
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
          def search_schema_value
            Azure::OperationalInsights::Mgmt::V2015_03_20::Models::SearchSchemaValue
          end
          def search_get_schema_response
            Azure::OperationalInsights::Mgmt::V2015_03_20::Models::SearchGetSchemaResponse
          end
          def operation
            Azure::OperationalInsights::Mgmt::V2015_03_20::Models::Operation
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
          def storage_account
            Azure::OperationalInsights::Mgmt::V2015_03_20::Models::StorageAccount
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
          def operation_list_result
            Azure::OperationalInsights::Mgmt::V2015_03_20::Models::OperationListResult
          end
          def resource
            Azure::OperationalInsights::Mgmt::V2015_03_20::Models::Resource
          end
          def search_sort
            Azure::OperationalInsights::Mgmt::V2015_03_20::Models::SearchSort
          end
          def proxy_resource
            Azure::OperationalInsights::Mgmt::V2015_03_20::Models::ProxyResource
          end
          def search_error
            Azure::OperationalInsights::Mgmt::V2015_03_20::Models::SearchError
          end
          def workspace_purge_body_filters
            Azure::OperationalInsights::Mgmt::V2015_03_20::Models::WorkspacePurgeBodyFilters
          end
          def tag
            Azure::OperationalInsights::Mgmt::V2015_03_20::Models::Tag
          end
          def workspace_purge_body
            Azure::OperationalInsights::Mgmt::V2015_03_20::Models::WorkspacePurgeBody
          end
          def operation_display
            Azure::OperationalInsights::Mgmt::V2015_03_20::Models::OperationDisplay
          end
          def workspace_purge_response
            Azure::OperationalInsights::Mgmt::V2015_03_20::Models::WorkspacePurgeResponse
          end
          def search_metadata
            Azure::OperationalInsights::Mgmt::V2015_03_20::Models::SearchMetadata
          end
          def workspace_purge_status_response
            Azure::OperationalInsights::Mgmt::V2015_03_20::Models::WorkspacePurgeStatusResponse
          end
          def storage_insight
            Azure::OperationalInsights::Mgmt::V2015_03_20::Models::StorageInsight
          end
          def search_sort_enum
            Azure::OperationalInsights::Mgmt::V2015_03_20::Models::SearchSortEnum
          end
          def storage_insight_state
            Azure::OperationalInsights::Mgmt::V2015_03_20::Models::StorageInsightState
          end
          def purge_state
            Azure::OperationalInsights::Mgmt::V2015_03_20::Models::PurgeState
          end
        end
      end
    end
  end
end
