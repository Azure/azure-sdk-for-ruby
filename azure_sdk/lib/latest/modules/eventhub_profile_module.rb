# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_event_hub'

module Azure::Profiles::Latest
  module EventHub
    module Mgmt
      Clusters = Azure::EventHub::Mgmt::V2018_01_01_preview::Clusters
      Operations = Azure::EventHub::Mgmt::V2018_01_01_preview::Operations
      Namespaces = Azure::EventHub::Mgmt::V2018_01_01_preview::Namespaces
      Configuration = Azure::EventHub::Mgmt::V2018_01_01_preview::Configuration

      module Models
        Resource = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::Resource
        VirtualNetworkRule = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::VirtualNetworkRule
        VirtualNetworkRuleListResult = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::VirtualNetworkRuleListResult
        Sku = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::Sku
        OperationDisplay = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::OperationDisplay
        ErrorResponse = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::ErrorResponse
        ClusterQuotaConfigurationProperties = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::ClusterQuotaConfigurationProperties
        Operation = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::Operation
        OperationListResult = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::OperationListResult
        ClusterSku = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::ClusterSku
        ClusterListResult = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::ClusterListResult
        IpFilterRuleListResult = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::IpFilterRuleListResult
        Cluster = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::Cluster
        EHNamespaceListResult = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::EHNamespaceListResult
        IpFilterRule = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::IpFilterRule
        EHNamespace = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::EHNamespace
        TrackedResource = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::TrackedResource
        IPAction = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::IPAction
        SkuName = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::SkuName
        SkuTier = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::SkuTier
      end

      class EventHubManagementClass
        attr_reader :clusters, :operations, :namespaces, :configuration, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::EventHub::Mgmt::V2018_01_01_preview::EventHub2018PreviewManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @clusters = @client_0.clusters
          @operations = @client_0.operations
          @namespaces = @client_0.namespaces
          @configuration = @client_0.configuration

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
          def resource
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::Resource
          end
          def virtual_network_rule
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::VirtualNetworkRule
          end
          def virtual_network_rule_list_result
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::VirtualNetworkRuleListResult
          end
          def sku
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::Sku
          end
          def operation_display
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::OperationDisplay
          end
          def error_response
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::ErrorResponse
          end
          def cluster_quota_configuration_properties
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::ClusterQuotaConfigurationProperties
          end
          def operation
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::Operation
          end
          def operation_list_result
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::OperationListResult
          end
          def cluster_sku
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::ClusterSku
          end
          def cluster_list_result
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::ClusterListResult
          end
          def ip_filter_rule_list_result
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::IpFilterRuleListResult
          end
          def cluster
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::Cluster
          end
          def ehnamespace_list_result
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::EHNamespaceListResult
          end
          def ip_filter_rule
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::IpFilterRule
          end
          def ehnamespace
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::EHNamespace
          end
          def tracked_resource
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::TrackedResource
          end
          def ipaction
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::IPAction
          end
          def sku_name
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::SkuName
          end
          def sku_tier
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::SkuTier
          end
        end
      end
    end
  end
end
