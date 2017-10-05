# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_operational_insights'


module Azure::Profiles::OperationalInsightsModule::Management::Profile_2015_03_20
  module OperationalInsights
    StorageInsights = Azure::ARM::OperationalInsights::Api_2015_03_20::StorageInsights
    Workspaces = Azure::ARM::OperationalInsights::Api_2015_03_20::Workspaces
    SavedSearches = Azure::ARM::OperationalInsights::Api_2015_03_20::SavedSearches

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
      ProxyResource = Azure::ARM::OperationalInsights::Api_2015_03_20::Models::ProxyResource
      StorageInsight = Azure::ARM::OperationalInsights::Api_2015_03_20::Models::StorageInsight
      SearchSortEnum = Azure::ARM::OperationalInsights::Api_2015_03_20::Models::SearchSortEnum
      StorageInsightState = Azure::ARM::OperationalInsights::Api_2015_03_20::Models::StorageInsightState
    end

    #
    # OperationalInsights
    #
    class OperationalInsightsClass
      attr_accessor :storage_insights, :workspaces, :saved_searches, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::OperationalInsights::Api_2015_03_20::OperationalInsightsManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.storage_insights = Azure::ARM::OperationalInsights::Api_2015_03_20::StorageInsights.new(client)
        self.workspaces = Azure::ARM::OperationalInsights::Api_2015_03_20::Workspaces.new(client)
        self.saved_searches = Azure::ARM::OperationalInsights::Api_2015_03_20::SavedSearches.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2015-03-20'
            client = Azure::ARM::OperationalInsights::Api_2015_03_20::OperationalInsightsManagementClient.new(@configurable.credentials, @base_url, @options)
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
        def proxy_resource
          Azure::ARM::OperationalInsights::Api_2015_03_20::Models::ProxyResource
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
      end
    end
  end
end
