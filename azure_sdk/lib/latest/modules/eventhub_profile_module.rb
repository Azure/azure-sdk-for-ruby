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
        EHNamespaceIdListResult = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::EHNamespaceIdListResult
        OperationDisplay = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::OperationDisplay
        Sku = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::Sku
        OperationListResult = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::OperationListResult
        Operation = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::Operation
        Subnet = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::Subnet
        AvailableClustersList = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::AvailableClustersList
        ClusterSku = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::ClusterSku
        ClusterQuotaConfigurationProperties = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::ClusterQuotaConfigurationProperties
        VirtualNetworkRuleListResult = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::VirtualNetworkRuleListResult
        Resource = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::Resource
        EHNamespaceListResult = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::EHNamespaceListResult
        ClusterListResult = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::ClusterListResult
        NWRuleSetVirtualNetworkRules = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::NWRuleSetVirtualNetworkRules
        EHNamespaceIdContainer = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::EHNamespaceIdContainer
        IpFilterRuleListResult = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::IpFilterRuleListResult
        ErrorResponse = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::ErrorResponse
        NWRuleSetIpRules = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::NWRuleSetIpRules
        TrackedResource = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::TrackedResource
        Cluster = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::Cluster
        EHNamespace = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::EHNamespace
        IpFilterRule = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::IpFilterRule
        VirtualNetworkRule = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::VirtualNetworkRule
        NetworkRuleSet = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::NetworkRuleSet
        SkuName = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::SkuName
        SkuTier = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::SkuTier
        IPAction = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::IPAction
        NetworkRuleIPAction = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::NetworkRuleIPAction
        DefaultAction = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::DefaultAction
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
          def ehnamespace_id_list_result
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::EHNamespaceIdListResult
          end
          def operation_display
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::OperationDisplay
          end
          def sku
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::Sku
          end
          def operation_list_result
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::OperationListResult
          end
          def operation
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::Operation
          end
          def subnet
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::Subnet
          end
          def available_clusters_list
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::AvailableClustersList
          end
          def cluster_sku
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::ClusterSku
          end
          def cluster_quota_configuration_properties
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::ClusterQuotaConfigurationProperties
          end
          def virtual_network_rule_list_result
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::VirtualNetworkRuleListResult
          end
          def resource
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::Resource
          end
          def ehnamespace_list_result
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::EHNamespaceListResult
          end
          def cluster_list_result
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::ClusterListResult
          end
          def nwrule_set_virtual_network_rules
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::NWRuleSetVirtualNetworkRules
          end
          def ehnamespace_id_container
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::EHNamespaceIdContainer
          end
          def ip_filter_rule_list_result
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::IpFilterRuleListResult
          end
          def error_response
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::ErrorResponse
          end
          def nwrule_set_ip_rules
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::NWRuleSetIpRules
          end
          def tracked_resource
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::TrackedResource
          end
          def cluster
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::Cluster
          end
          def ehnamespace
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::EHNamespace
          end
          def ip_filter_rule
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::IpFilterRule
          end
          def virtual_network_rule
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::VirtualNetworkRule
          end
          def network_rule_set
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::NetworkRuleSet
          end
          def sku_name
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::SkuName
          end
          def sku_tier
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::SkuTier
          end
          def ipaction
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::IPAction
          end
          def network_rule_ipaction
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::NetworkRuleIPAction
          end
          def default_action
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::DefaultAction
          end
        end
      end
    end
  end
end
