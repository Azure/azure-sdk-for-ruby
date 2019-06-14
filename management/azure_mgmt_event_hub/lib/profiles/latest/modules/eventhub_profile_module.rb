# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_event_hub'

module Azure::EventHub::Profiles::Latest
  module Mgmt
    Configuration = Azure::EventHub::Mgmt::V2018_01_01_preview::Configuration
    Namespaces = Azure::EventHub::Mgmt::V2018_01_01_preview::Namespaces
    Operations = Azure::EventHub::Mgmt::V2018_01_01_preview::Operations
    Clusters = Azure::EventHub::Mgmt::V2018_01_01_preview::Clusters

    module Models
      TrackedResource = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::TrackedResource
      Cluster = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::Cluster
      EHNamespace = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::EHNamespace
      IpFilterRule = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::IpFilterRule
      VirtualNetworkRule = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::VirtualNetworkRule
      SkuName = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::SkuName
      SkuTier = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::SkuTier
      IPAction = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::IPAction
      ClusterQuotaConfigurationProperties = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::ClusterQuotaConfigurationProperties
      OperationDisplay = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::OperationDisplay
      ErrorResponse = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::ErrorResponse
      OperationListResult = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::OperationListResult
      VirtualNetworkRuleListResult = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::VirtualNetworkRuleListResult
      Resource = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::Resource
      Operation = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::Operation
      Sku = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::Sku
      ClusterListResult = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::ClusterListResult
      IpFilterRuleListResult = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::IpFilterRuleListResult
      ClusterSku = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::ClusterSku
      EHNamespaceListResult = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::EHNamespaceListResult
    end

    #
    # EventHubManagementClass
    #
    class EventHubManagementClass
      attr_reader :configuration, :namespaces, :operations, :clusters, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::EventHub::Mgmt::V2018_01_01_preview::EventHub2018PreviewManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @configuration = @client_0.configuration
        @namespaces = @client_0.namespaces
        @operations = @client_0.operations
        @clusters = @client_0.clusters

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/EventHub/Mgmt'
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
      def sku_name
        Azure::EventHub::Mgmt::V2018_01_01_preview::Models::SkuName
      end
      def sku_tier
        Azure::EventHub::Mgmt::V2018_01_01_preview::Models::SkuTier
      end
      def ipaction
        Azure::EventHub::Mgmt::V2018_01_01_preview::Models::IPAction
      end
      def cluster_quota_configuration_properties
        Azure::EventHub::Mgmt::V2018_01_01_preview::Models::ClusterQuotaConfigurationProperties
      end
      def operation_display
        Azure::EventHub::Mgmt::V2018_01_01_preview::Models::OperationDisplay
      end
      def error_response
        Azure::EventHub::Mgmt::V2018_01_01_preview::Models::ErrorResponse
      end
      def operation_list_result
        Azure::EventHub::Mgmt::V2018_01_01_preview::Models::OperationListResult
      end
      def virtual_network_rule_list_result
        Azure::EventHub::Mgmt::V2018_01_01_preview::Models::VirtualNetworkRuleListResult
      end
      def resource
        Azure::EventHub::Mgmt::V2018_01_01_preview::Models::Resource
      end
      def operation
        Azure::EventHub::Mgmt::V2018_01_01_preview::Models::Operation
      end
      def sku
        Azure::EventHub::Mgmt::V2018_01_01_preview::Models::Sku
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
    end
  end
end
