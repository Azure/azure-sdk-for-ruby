# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_operational_insights'


module Azure::Profiles::OperationalInsightsModule::Management::Profile_Latest
  module OperationalInsights
    LinkedServices = Azure::ARM::OperationalInsights::Api_2015_11_01_preview::LinkedServices
    DataSources = Azure::ARM::OperationalInsights::Api_2015_11_01_preview::DataSources
    Workspaces = Azure::ARM::OperationalInsights::Api_2015_11_01_preview::Workspaces
    AzureLogAnalytics = Azure::ARM::OperationalInsights::Api_2015_11_01_preview::AzureLogAnalytics

    module Models
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
      attr_accessor :linked_services, :data_sources, :workspaces, :azure_log_analytics, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = .new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.linked_services = Azure::ARM::OperationalInsights::Api_2015_11_01_preview::LinkedServices.new(client)
        self.data_sources = Azure::ARM::OperationalInsights::Api_2015_11_01_preview::DataSources.new(client)
        self.workspaces = Azure::ARM::OperationalInsights::Api_2015_11_01_preview::Workspaces.new(client)
        self.azure_log_analytics = Azure::ARM::OperationalInsights::Api_2015_11_01_preview::AzureLogAnalytics.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
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
end
