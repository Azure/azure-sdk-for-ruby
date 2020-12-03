# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_event_hub'

module Azure::Profiles::V2020_09_01_Hybrid
  module EventHub
    module Mgmt
      DisasterRecoveryConfigs = Azure::EventHub::Mgmt::V2017_04_01::DisasterRecoveryConfigs
      EventHubs = Azure::EventHub::Mgmt::V2017_04_01::EventHubs
      ConsumerGroups = Azure::EventHub::Mgmt::V2017_04_01::ConsumerGroups
      Operations = Azure::EventHub::Mgmt::V2017_04_01::Operations
      Regions = Azure::EventHub::Mgmt::V2017_04_01::Regions
      Clusters = Azure::EventHub::Mgmt::V2018_01_01_preview::Clusters
      Namespaces = Azure::EventHub::Mgmt::V2018_01_01_preview::Namespaces
      PrivateEndpointConnections = Azure::EventHub::Mgmt::V2018_01_01_preview::PrivateEndpointConnections
      PrivateLinkResources = Azure::EventHub::Mgmt::V2018_01_01_preview::PrivateLinkResources
      Configuration = Azure::EventHub::Mgmt::V2018_01_01_preview::Configuration

      module Models
        SharedAccessAuthorizationRuleListResult = Azure::EventHub::Mgmt::V2015_08_01::Models::SharedAccessAuthorizationRuleListResult
        ResourceListKeys = Azure::EventHub::Mgmt::V2015_08_01::Models::ResourceListKeys
        RegenerateKeysParameters = Azure::EventHub::Mgmt::V2015_08_01::Models::RegenerateKeysParameters
        NamespaceCreateOrUpdateParameters = Azure::EventHub::Mgmt::V2015_08_01::Models::NamespaceCreateOrUpdateParameters
        NamespaceListResult = Azure::EventHub::Mgmt::V2015_08_01::Models::NamespaceListResult
        EventHubCreateOrUpdateParameters = Azure::EventHub::Mgmt::V2015_08_01::Models::EventHubCreateOrUpdateParameters
        NamespaceUpdateParameter = Azure::EventHub::Mgmt::V2015_08_01::Models::NamespaceUpdateParameter
        ConsumerGroupCreateOrUpdateParameters = Azure::EventHub::Mgmt::V2015_08_01::Models::ConsumerGroupCreateOrUpdateParameters
        SharedAccessAuthorizationRuleCreateOrUpdateParameters = Azure::EventHub::Mgmt::V2015_08_01::Models::SharedAccessAuthorizationRuleCreateOrUpdateParameters
        NamespaceResource = Azure::EventHub::Mgmt::V2015_08_01::Models::NamespaceResource
        SharedAccessAuthorizationRuleResource = Azure::EventHub::Mgmt::V2015_08_01::Models::SharedAccessAuthorizationRuleResource
        EventHubResource = Azure::EventHub::Mgmt::V2015_08_01::Models::EventHubResource
        ConsumerGroupResource = Azure::EventHub::Mgmt::V2015_08_01::Models::ConsumerGroupResource
        NamespaceState = Azure::EventHub::Mgmt::V2015_08_01::Models::NamespaceState
        Policykey = Azure::EventHub::Mgmt::V2015_08_01::Models::Policykey
        ConsumerGroupListResult = Azure::EventHub::Mgmt::V2017_04_01::Models::ConsumerGroupListResult
        EventHubListResult = Azure::EventHub::Mgmt::V2017_04_01::Models::EventHubListResult
        AuthorizationRuleListResult = Azure::EventHub::Mgmt::V2017_04_01::Models::AuthorizationRuleListResult
        MessagingRegionsListResult = Azure::EventHub::Mgmt::V2017_04_01::Models::MessagingRegionsListResult
        RegenerateAccessKeyParameters = Azure::EventHub::Mgmt::V2017_04_01::Models::RegenerateAccessKeyParameters
        ArmDisasterRecoveryListResult = Azure::EventHub::Mgmt::V2017_04_01::Models::ArmDisasterRecoveryListResult
        CheckNameAvailabilityParameter = Azure::EventHub::Mgmt::V2017_04_01::Models::CheckNameAvailabilityParameter
        OperationDisplay = Azure::EventHub::Mgmt::V2017_04_01::Models::OperationDisplay
        AccessKeys = Azure::EventHub::Mgmt::V2017_04_01::Models::AccessKeys
        Operation = Azure::EventHub::Mgmt::V2017_04_01::Models::Operation
        OperationListResult = Azure::EventHub::Mgmt::V2017_04_01::Models::OperationListResult
        MessagingRegionsProperties = Azure::EventHub::Mgmt::V2017_04_01::Models::MessagingRegionsProperties
        Destination = Azure::EventHub::Mgmt::V2017_04_01::Models::Destination
        CheckNameAvailabilityResult = Azure::EventHub::Mgmt::V2017_04_01::Models::CheckNameAvailabilityResult
        CaptureDescription = Azure::EventHub::Mgmt::V2017_04_01::Models::CaptureDescription
        AuthorizationRule = Azure::EventHub::Mgmt::V2017_04_01::Models::AuthorizationRule
        ConsumerGroup = Azure::EventHub::Mgmt::V2017_04_01::Models::ConsumerGroup
        ArmDisasterRecovery = Azure::EventHub::Mgmt::V2017_04_01::Models::ArmDisasterRecovery
        Eventhub = Azure::EventHub::Mgmt::V2017_04_01::Models::Eventhub
        MessagingRegions = Azure::EventHub::Mgmt::V2017_04_01::Models::MessagingRegions
        AccessRights = Azure::EventHub::Mgmt::V2017_04_01::Models::AccessRights
        KeyType = Azure::EventHub::Mgmt::V2017_04_01::Models::KeyType
        UnavailableReason = Azure::EventHub::Mgmt::V2017_04_01::Models::UnavailableReason
        ProvisioningStateDR = Azure::EventHub::Mgmt::V2017_04_01::Models::ProvisioningStateDR
        RoleDisasterRecovery = Azure::EventHub::Mgmt::V2017_04_01::Models::RoleDisasterRecovery
        EncodingCaptureDescription = Azure::EventHub::Mgmt::V2017_04_01::Models::EncodingCaptureDescription
        EntityStatus = Azure::EventHub::Mgmt::V2017_04_01::Models::EntityStatus
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
        attr_reader :disaster_recovery_configs, :event_hubs, :consumer_groups, :operations, :regions, :clusters, :namespaces, :private_endpoint_connections, :private_link_resources, :configuration, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::EventHub::Mgmt::V2015_08_01::EventHubManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)

          @client_1 = Azure::EventHub::Mgmt::V2017_04_01::EventHubManagementClient.new(configurable.credentials, base_url, options)
          if(@client_1.respond_to?(:subscription_id))
            @client_1.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_1)
          @disaster_recovery_configs = @client_1.disaster_recovery_configs
          @event_hubs = @client_1.event_hubs
          @consumer_groups = @client_1.consumer_groups
          @operations = @client_1.operations
          @regions = @client_1.regions

          @client_2 = Azure::EventHub::Mgmt::V2018_01_01_preview::EventHubManagementClient.new(configurable.credentials, base_url, options)
          if(@client_2.respond_to?(:subscription_id))
            @client_2.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_2)
          @clusters = @client_2.clusters
          @namespaces = @client_2.namespaces
          @private_endpoint_connections = @client_2.private_endpoint_connections
          @private_link_resources = @client_2.private_link_resources
          @configuration = @client_2.configuration

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/V2020_09_01_Hybrid/EventHub/Mgmt"
          client.add_user_agent_information(profile_information)
        end

        def method_missing(method, *args)
          if @client_2.respond_to?method
            @client_2.send(method, *args)
          elsif @client_1.respond_to?method
            @client_1.send(method, *args)
          elsif @client_0.respond_to?method
            @client_0.send(method, *args)
          else
            super
          end
        end

        class ModelClasses
          def shared_access_authorization_rule_list_result
            Azure::EventHub::Mgmt::V2015_08_01::Models::SharedAccessAuthorizationRuleListResult
          end
          def resource_list_keys
            Azure::EventHub::Mgmt::V2015_08_01::Models::ResourceListKeys
          end
          def regenerate_keys_parameters
            Azure::EventHub::Mgmt::V2015_08_01::Models::RegenerateKeysParameters
          end
          def namespace_create_or_update_parameters
            Azure::EventHub::Mgmt::V2015_08_01::Models::NamespaceCreateOrUpdateParameters
          end
          def namespace_list_result
            Azure::EventHub::Mgmt::V2015_08_01::Models::NamespaceListResult
          end
          def event_hub_create_or_update_parameters
            Azure::EventHub::Mgmt::V2015_08_01::Models::EventHubCreateOrUpdateParameters
          end
          def namespace_update_parameter
            Azure::EventHub::Mgmt::V2015_08_01::Models::NamespaceUpdateParameter
          end
          def consumer_group_create_or_update_parameters
            Azure::EventHub::Mgmt::V2015_08_01::Models::ConsumerGroupCreateOrUpdateParameters
          end
          def shared_access_authorization_rule_create_or_update_parameters
            Azure::EventHub::Mgmt::V2015_08_01::Models::SharedAccessAuthorizationRuleCreateOrUpdateParameters
          end
          def namespace_resource
            Azure::EventHub::Mgmt::V2015_08_01::Models::NamespaceResource
          end
          def shared_access_authorization_rule_resource
            Azure::EventHub::Mgmt::V2015_08_01::Models::SharedAccessAuthorizationRuleResource
          end
          def event_hub_resource
            Azure::EventHub::Mgmt::V2015_08_01::Models::EventHubResource
          end
          def consumer_group_resource
            Azure::EventHub::Mgmt::V2015_08_01::Models::ConsumerGroupResource
          end
          def namespace_state
            Azure::EventHub::Mgmt::V2015_08_01::Models::NamespaceState
          end
          def policykey
            Azure::EventHub::Mgmt::V2015_08_01::Models::Policykey
          end
          def consumer_group_list_result
            Azure::EventHub::Mgmt::V2017_04_01::Models::ConsumerGroupListResult
          end
          def event_hub_list_result
            Azure::EventHub::Mgmt::V2017_04_01::Models::EventHubListResult
          end
          def authorization_rule_list_result
            Azure::EventHub::Mgmt::V2017_04_01::Models::AuthorizationRuleListResult
          end
          def messaging_regions_list_result
            Azure::EventHub::Mgmt::V2017_04_01::Models::MessagingRegionsListResult
          end
          def regenerate_access_key_parameters
            Azure::EventHub::Mgmt::V2017_04_01::Models::RegenerateAccessKeyParameters
          end
          def arm_disaster_recovery_list_result
            Azure::EventHub::Mgmt::V2017_04_01::Models::ArmDisasterRecoveryListResult
          end
          def check_name_availability_parameter
            Azure::EventHub::Mgmt::V2017_04_01::Models::CheckNameAvailabilityParameter
          end
          def operation_display
            Azure::EventHub::Mgmt::V2017_04_01::Models::OperationDisplay
          end
          def access_keys
            Azure::EventHub::Mgmt::V2017_04_01::Models::AccessKeys
          end
          def operation
            Azure::EventHub::Mgmt::V2017_04_01::Models::Operation
          end
          def operation_list_result
            Azure::EventHub::Mgmt::V2017_04_01::Models::OperationListResult
          end
          def messaging_regions_properties
            Azure::EventHub::Mgmt::V2017_04_01::Models::MessagingRegionsProperties
          end
          def destination
            Azure::EventHub::Mgmt::V2017_04_01::Models::Destination
          end
          def check_name_availability_result
            Azure::EventHub::Mgmt::V2017_04_01::Models::CheckNameAvailabilityResult
          end
          def capture_description
            Azure::EventHub::Mgmt::V2017_04_01::Models::CaptureDescription
          end
          def authorization_rule
            Azure::EventHub::Mgmt::V2017_04_01::Models::AuthorizationRule
          end
          def consumer_group
            Azure::EventHub::Mgmt::V2017_04_01::Models::ConsumerGroup
          end
          def arm_disaster_recovery
            Azure::EventHub::Mgmt::V2017_04_01::Models::ArmDisasterRecovery
          end
          def eventhub
            Azure::EventHub::Mgmt::V2017_04_01::Models::Eventhub
          end
          def messaging_regions
            Azure::EventHub::Mgmt::V2017_04_01::Models::MessagingRegions
          end
          def access_rights
            Azure::EventHub::Mgmt::V2017_04_01::Models::AccessRights
          end
          def key_type
            Azure::EventHub::Mgmt::V2017_04_01::Models::KeyType
          end
          def unavailable_reason
            Azure::EventHub::Mgmt::V2017_04_01::Models::UnavailableReason
          end
          def provisioning_state_dr
            Azure::EventHub::Mgmt::V2017_04_01::Models::ProvisioningStateDR
          end
          def role_disaster_recovery
            Azure::EventHub::Mgmt::V2017_04_01::Models::RoleDisasterRecovery
          end
          def encoding_capture_description
            Azure::EventHub::Mgmt::V2017_04_01::Models::EncodingCaptureDescription
          end
          def entity_status
            Azure::EventHub::Mgmt::V2017_04_01::Models::EntityStatus
          end
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
