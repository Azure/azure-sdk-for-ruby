# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_event_hub'

module Azure::Profiles::Latest
  module EventHub
    module Mgmt
      Operations = Azure::EventHub::Mgmt::V2018_01_01_preview::Operations
      Clusters = Azure::EventHub::Mgmt::V2018_01_01_preview::Clusters
      Configuration = Azure::EventHub::Mgmt::V2018_01_01_preview::Configuration
      Namespaces = Azure::EventHub::Mgmt::V2018_01_01_preview::Namespaces

      module Models
        VirtualNetworkRule = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::VirtualNetworkRule
        Operation = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::Operation
        Sku = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::Sku
        TrackedResource = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::TrackedResource
        ClusterQuotaConfigurationProperties = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::ClusterQuotaConfigurationProperties
        ClusterListResult = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::ClusterListResult
        IpFilterRuleListResult = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::IpFilterRuleListResult
        ClusterSku = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::ClusterSku
        EHNamespaceListResult = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::EHNamespaceListResult
        Cluster = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::Cluster
        OperationDisplay = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::OperationDisplay
        EHNamespace = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::EHNamespace
        OperationListResult = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::OperationListResult
        IPAction = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::IPAction
        Resource = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::Resource
        VirtualNetworkRuleListResult = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::VirtualNetworkRuleListResult
        IpFilterRule = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::IpFilterRule
        SkuTier = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::SkuTier
        SkuName = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::SkuName
        ErrorResponse = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::ErrorResponse
      end

      class EventHubManagementClass
        attr_reader :operations, :clusters, :configuration, :namespaces, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::EventHub::Mgmt::V2018_01_01_preview::EventHub2018PreviewManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @operations = @client_0.operations
          @clusters = @client_0.clusters
          @configuration = @client_0.configuration
          @namespaces = @client_0.namespaces

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/EventHub/Mgmt"
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
          def virtual_network_rule
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::VirtualNetworkRule
          end
          def operation
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::Operation
          end
          def sku
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::Sku
          end
          def tracked_resource
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::TrackedResource
          end
          def cluster_quota_configuration_properties
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::ClusterQuotaConfigurationProperties
          end
          def cluster_list_result
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::ClusterListResult
          end
          def ip_filter_rule_list_result
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::IpFilterRuleListResult
          end
          def cluster_sku
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::ClusterSku
          end
          def ehnamespace_list_result
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::EHNamespaceListResult
          end
          def cluster
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::Cluster
          end
          def operation_display
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::OperationDisplay
          end
          def ehnamespace
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::EHNamespace
          end
          def operation_list_result
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::OperationListResult
          end
          def ipaction
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::IPAction
          end
          def resource
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::Resource
          end
          def virtual_network_rule_list_result
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::VirtualNetworkRuleListResult
          end
          def ip_filter_rule
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::IpFilterRule
          end
          def sku_tier
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::SkuTier
          end
          def sku_name
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::SkuName
          end
          def error_response
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::ErrorResponse
          end
        end
      end
    end
  end
end
