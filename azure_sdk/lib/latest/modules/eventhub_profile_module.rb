# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_event_hub'

module Azure::Profiles::Latest
  module EventHub
    module Mgmt
      Clusters = Azure::EventHub::Mgmt::V2018_01_01_preview::Clusters
      Namespaces = Azure::EventHub::Mgmt::V2018_01_01_preview::Namespaces
      PrivateEndpointConnections = Azure::EventHub::Mgmt::V2018_01_01_preview::PrivateEndpointConnections
      PrivateLinkResources = Azure::EventHub::Mgmt::V2018_01_01_preview::PrivateLinkResources
      Configuration = Azure::EventHub::Mgmt::V2018_01_01_preview::Configuration

      module Models
        Encryption = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::Encryption
        KeyVaultProperties = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::KeyVaultProperties
        AvailableClustersList = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::AvailableClustersList
        AvailableCluster = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::AvailableCluster
        ClusterSku = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::ClusterSku
        ClusterListResult = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::ClusterListResult
        EHNamespaceListResult = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::EHNamespaceListResult
        EHNamespaceIdListResult = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::EHNamespaceIdListResult
        PrivateEndpoint = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::PrivateEndpoint
        Resource = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::Resource
        Subnet = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::Subnet
        NWRuleSetIpRules = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::NWRuleSetIpRules
        Sku = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::Sku
        ConnectionState = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::ConnectionState
        ErrorResponse = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::ErrorResponse
        NWRuleSetVirtualNetworkRules = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::NWRuleSetVirtualNetworkRules
        EHNamespaceIdContainer = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::EHNamespaceIdContainer
        PrivateEndpointConnectionListResult = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::PrivateEndpointConnectionListResult
        Identity = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::Identity
        PrivateLinkResource = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::PrivateLinkResource
        IpFilterRuleListResult = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::IpFilterRuleListResult
        PrivateLinkResourcesListResult = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::PrivateLinkResourcesListResult
        VirtualNetworkRuleListResult = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::VirtualNetworkRuleListResult
        ClusterQuotaConfigurationProperties = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::ClusterQuotaConfigurationProperties
        TrackedResource = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::TrackedResource
        Cluster = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::Cluster
        IpFilterRule = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::IpFilterRule
        EHNamespace = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::EHNamespace
        PrivateEndpointConnection = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::PrivateEndpointConnection
        VirtualNetworkRule = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::VirtualNetworkRule
        NetworkRuleSet = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::NetworkRuleSet
        IPAction = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::IPAction
        SkuName = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::SkuName
        SkuTier = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::SkuTier
        IdentityType = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::IdentityType
        KeySource = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::KeySource
        PrivateLinkConnectionStatus = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::PrivateLinkConnectionStatus
        EndPointProvisioningState = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::EndPointProvisioningState
        NetworkRuleIPAction = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::NetworkRuleIPAction
        DefaultAction = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::DefaultAction
      end

      class EventHubManagementClass
        attr_reader :clusters, :namespaces, :private_endpoint_connections, :private_link_resources, :configuration, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::EventHub::Mgmt::V2018_01_01_preview::EventHubManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @clusters = @client_0.clusters
          @namespaces = @client_0.namespaces
          @private_endpoint_connections = @client_0.private_endpoint_connections
          @private_link_resources = @client_0.private_link_resources
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
          def encryption
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::Encryption
          end
          def key_vault_properties
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::KeyVaultProperties
          end
          def available_clusters_list
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::AvailableClustersList
          end
          def available_cluster
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::AvailableCluster
          end
          def cluster_sku
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::ClusterSku
          end
          def cluster_list_result
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::ClusterListResult
          end
          def ehnamespace_list_result
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::EHNamespaceListResult
          end
          def ehnamespace_id_list_result
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::EHNamespaceIdListResult
          end
          def private_endpoint
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::PrivateEndpoint
          end
          def resource
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::Resource
          end
          def subnet
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::Subnet
          end
          def nwrule_set_ip_rules
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::NWRuleSetIpRules
          end
          def sku
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::Sku
          end
          def connection_state
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::ConnectionState
          end
          def error_response
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::ErrorResponse
          end
          def nwrule_set_virtual_network_rules
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::NWRuleSetVirtualNetworkRules
          end
          def ehnamespace_id_container
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::EHNamespaceIdContainer
          end
          def private_endpoint_connection_list_result
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::PrivateEndpointConnectionListResult
          end
          def identity
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::Identity
          end
          def private_link_resource
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::PrivateLinkResource
          end
          def ip_filter_rule_list_result
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::IpFilterRuleListResult
          end
          def private_link_resources_list_result
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::PrivateLinkResourcesListResult
          end
          def virtual_network_rule_list_result
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::VirtualNetworkRuleListResult
          end
          def cluster_quota_configuration_properties
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::ClusterQuotaConfigurationProperties
          end
          def tracked_resource
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::TrackedResource
          end
          def cluster
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::Cluster
          end
          def ip_filter_rule
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::IpFilterRule
          end
          def ehnamespace
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::EHNamespace
          end
          def private_endpoint_connection
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::PrivateEndpointConnection
          end
          def virtual_network_rule
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::VirtualNetworkRule
          end
          def network_rule_set
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::NetworkRuleSet
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
          def identity_type
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::IdentityType
          end
          def key_source
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::KeySource
          end
          def private_link_connection_status
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::PrivateLinkConnectionStatus
          end
          def end_point_provisioning_state
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::EndPointProvisioningState
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
