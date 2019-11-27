# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_event_hub'

module Azure::Profiles::V2019_07_01
  module EventHub
    module Mgmt
      Clusters = Azure::EventHub::Mgmt::V2018_01_01_preview::Clusters
      Configuration = Azure::EventHub::Mgmt::V2018_01_01_preview::Configuration
      Operations = Azure::EventHub::Mgmt::V2017_04_01::Operations
      Namespaces = Azure::EventHub::Mgmt::V2017_04_01::Namespaces
      DisasterRecoveryConfigs = Azure::EventHub::Mgmt::V2017_04_01::DisasterRecoveryConfigs
      EventHubs = Azure::EventHub::Mgmt::V2017_04_01::EventHubs
      ConsumerGroups = Azure::EventHub::Mgmt::V2017_04_01::ConsumerGroups
      Regions = Azure::EventHub::Mgmt::V2017_04_01::Regions

      module Models
        Identity = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::Identity
        KeyVaultProperties = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::KeyVaultProperties
        AvailableCluster = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::AvailableCluster
        ClusterSku = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::ClusterSku
        ClusterListResult = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::ClusterListResult
        Encryption = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::Encryption
        EHNamespaceIdListResult = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::EHNamespaceIdListResult
        ClusterQuotaConfigurationProperties = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::ClusterQuotaConfigurationProperties
        EHNamespaceIdContainer = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::EHNamespaceIdContainer
        IpFilterRuleListResult = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::IpFilterRuleListResult
        VirtualNetworkRuleListResult = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::VirtualNetworkRuleListResult
        AvailableClustersList = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::AvailableClustersList
        Cluster = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::Cluster
        IpFilterRule = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::IpFilterRule
        VirtualNetworkRule = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::VirtualNetworkRule
        IdentityType = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::IdentityType
        KeySource = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::KeySource
        IPAction = Azure::EventHub::Mgmt::V2018_01_01_preview::Models::IPAction
        SharedAccessAuthorizationRuleListResult = Azure::EventHub::Mgmt::V2014_09_01::Models::SharedAccessAuthorizationRuleListResult
        NamespaceCreateOrUpdateParameters = Azure::EventHub::Mgmt::V2014_09_01::Models::NamespaceCreateOrUpdateParameters
        EventHubCreateOrUpdateParameters = Azure::EventHub::Mgmt::V2014_09_01::Models::EventHubCreateOrUpdateParameters
        NamespaceListResult = Azure::EventHub::Mgmt::V2014_09_01::Models::NamespaceListResult
        NamespaceUpdateParameter = Azure::EventHub::Mgmt::V2014_09_01::Models::NamespaceUpdateParameter
        SharedAccessAuthorizationRuleCreateOrUpdateParameters = Azure::EventHub::Mgmt::V2014_09_01::Models::SharedAccessAuthorizationRuleCreateOrUpdateParameters
        ConsumerGroupCreateOrUpdateParameters = Azure::EventHub::Mgmt::V2014_09_01::Models::ConsumerGroupCreateOrUpdateParameters
        NamespaceResource = Azure::EventHub::Mgmt::V2014_09_01::Models::NamespaceResource
        SharedAccessAuthorizationRuleResource = Azure::EventHub::Mgmt::V2014_09_01::Models::SharedAccessAuthorizationRuleResource
        SharedAccessAuthorizationRulePostResource = Azure::EventHub::Mgmt::V2014_09_01::Models::SharedAccessAuthorizationRulePostResource
        EventHubResource = Azure::EventHub::Mgmt::V2014_09_01::Models::EventHubResource
        ConsumerGroupResource = Azure::EventHub::Mgmt::V2014_09_01::Models::ConsumerGroupResource
        NamespaceState = Azure::EventHub::Mgmt::V2014_09_01::Models::NamespaceState
        CheckNameAvailabilityResult = Azure::EventHub::Mgmt::V2017_04_01::Models::CheckNameAvailabilityResult
        EventHubListResult = Azure::EventHub::Mgmt::V2017_04_01::Models::EventHubListResult
        Resource = Azure::EventHub::Mgmt::V2017_04_01::Models::Resource
        NWRuleSetIpRules = Azure::EventHub::Mgmt::V2017_04_01::Models::NWRuleSetIpRules
        ConsumerGroupListResult = Azure::EventHub::Mgmt::V2017_04_01::Models::ConsumerGroupListResult
        NetworkRuleSetListResult = Azure::EventHub::Mgmt::V2017_04_01::Models::NetworkRuleSetListResult
        CheckNameAvailabilityParameter = Azure::EventHub::Mgmt::V2017_04_01::Models::CheckNameAvailabilityParameter
        AccessKeys = Azure::EventHub::Mgmt::V2017_04_01::Models::AccessKeys
        Subnet = Azure::EventHub::Mgmt::V2017_04_01::Models::Subnet
        Destination = Azure::EventHub::Mgmt::V2017_04_01::Models::Destination
        OperationDisplay = Azure::EventHub::Mgmt::V2017_04_01::Models::OperationDisplay
        NWRuleSetVirtualNetworkRules = Azure::EventHub::Mgmt::V2017_04_01::Models::NWRuleSetVirtualNetworkRules
        Operation = Azure::EventHub::Mgmt::V2017_04_01::Models::Operation
        EHNamespaceListResult = Azure::EventHub::Mgmt::V2017_04_01::Models::EHNamespaceListResult
        OperationListResult = Azure::EventHub::Mgmt::V2017_04_01::Models::OperationListResult
        RegenerateAccessKeyParameters = Azure::EventHub::Mgmt::V2017_04_01::Models::RegenerateAccessKeyParameters
        ErrorResponse = Azure::EventHub::Mgmt::V2017_04_01::Models::ErrorResponse
        Sku = Azure::EventHub::Mgmt::V2017_04_01::Models::Sku
        MessagingRegionsListResult = Azure::EventHub::Mgmt::V2017_04_01::Models::MessagingRegionsListResult
        CaptureDescription = Azure::EventHub::Mgmt::V2017_04_01::Models::CaptureDescription
        ArmDisasterRecoveryListResult = Azure::EventHub::Mgmt::V2017_04_01::Models::ArmDisasterRecoveryListResult
        AuthorizationRuleListResult = Azure::EventHub::Mgmt::V2017_04_01::Models::AuthorizationRuleListResult
        MessagingRegionsProperties = Azure::EventHub::Mgmt::V2017_04_01::Models::MessagingRegionsProperties
        TrackedResource = Azure::EventHub::Mgmt::V2017_04_01::Models::TrackedResource
        EHNamespace = Azure::EventHub::Mgmt::V2017_04_01::Models::EHNamespace
        AuthorizationRule = Azure::EventHub::Mgmt::V2017_04_01::Models::AuthorizationRule
        Eventhub = Azure::EventHub::Mgmt::V2017_04_01::Models::Eventhub
        ConsumerGroup = Azure::EventHub::Mgmt::V2017_04_01::Models::ConsumerGroup
        ArmDisasterRecovery = Azure::EventHub::Mgmt::V2017_04_01::Models::ArmDisasterRecovery
        MessagingRegions = Azure::EventHub::Mgmt::V2017_04_01::Models::MessagingRegions
        MessagingPlan = Azure::EventHub::Mgmt::V2017_04_01::Models::MessagingPlan
        NetworkRuleSet = Azure::EventHub::Mgmt::V2017_04_01::Models::NetworkRuleSet
        SkuName = Azure::EventHub::Mgmt::V2017_04_01::Models::SkuName
        SkuTier = Azure::EventHub::Mgmt::V2017_04_01::Models::SkuTier
        AccessRights = Azure::EventHub::Mgmt::V2017_04_01::Models::AccessRights
        KeyType = Azure::EventHub::Mgmt::V2017_04_01::Models::KeyType
        EntityStatus = Azure::EventHub::Mgmt::V2017_04_01::Models::EntityStatus
        EncodingCaptureDescription = Azure::EventHub::Mgmt::V2017_04_01::Models::EncodingCaptureDescription
        UnavailableReason = Azure::EventHub::Mgmt::V2017_04_01::Models::UnavailableReason
        ProvisioningStateDR = Azure::EventHub::Mgmt::V2017_04_01::Models::ProvisioningStateDR
        RoleDisasterRecovery = Azure::EventHub::Mgmt::V2017_04_01::Models::RoleDisasterRecovery
        NetworkRuleIPAction = Azure::EventHub::Mgmt::V2017_04_01::Models::NetworkRuleIPAction
        DefaultAction = Azure::EventHub::Mgmt::V2017_04_01::Models::DefaultAction
      end

      class EventHubManagementClass
        attr_reader :clusters, :configuration, :operations, :namespaces, :disaster_recovery_configs, :event_hubs, :consumer_groups, :regions, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::EventHub::Mgmt::V2018_01_01_preview::EventHub2018PreviewManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @clusters = @client_0.clusters
          @configuration = @client_0.configuration

          @client_1 = Azure::EventHub::Mgmt::V2014_09_01::EventHubManagementClient.new(configurable.credentials, base_url, options)
          if(@client_1.respond_to?(:subscription_id))
            @client_1.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_1)

          @client_2 = Azure::EventHub::Mgmt::V2017_04_01::EventHubManagementClient.new(configurable.credentials, base_url, options)
          if(@client_2.respond_to?(:subscription_id))
            @client_2.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_2)
          @operations = @client_2.operations
          @namespaces = @client_2.namespaces
          @disaster_recovery_configs = @client_2.disaster_recovery_configs
          @event_hubs = @client_2.event_hubs
          @consumer_groups = @client_2.consumer_groups
          @regions = @client_2.regions

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/V2019_07_01/EventHub/Mgmt"
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
          def identity
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::Identity
          end
          def key_vault_properties
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::KeyVaultProperties
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
          def encryption
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::Encryption
          end
          def ehnamespace_id_list_result
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::EHNamespaceIdListResult
          end
          def cluster_quota_configuration_properties
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::ClusterQuotaConfigurationProperties
          end
          def ehnamespace_id_container
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::EHNamespaceIdContainer
          end
          def ip_filter_rule_list_result
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::IpFilterRuleListResult
          end
          def virtual_network_rule_list_result
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::VirtualNetworkRuleListResult
          end
          def available_clusters_list
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::AvailableClustersList
          end
          def cluster
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::Cluster
          end
          def ip_filter_rule
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::IpFilterRule
          end
          def virtual_network_rule
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::VirtualNetworkRule
          end
          def identity_type
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::IdentityType
          end
          def key_source
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::KeySource
          end
          def ipaction
            Azure::EventHub::Mgmt::V2018_01_01_preview::Models::IPAction
          end
          def shared_access_authorization_rule_list_result
            Azure::EventHub::Mgmt::V2014_09_01::Models::SharedAccessAuthorizationRuleListResult
          end
          def namespace_create_or_update_parameters
            Azure::EventHub::Mgmt::V2014_09_01::Models::NamespaceCreateOrUpdateParameters
          end
          def event_hub_create_or_update_parameters
            Azure::EventHub::Mgmt::V2014_09_01::Models::EventHubCreateOrUpdateParameters
          end
          def namespace_list_result
            Azure::EventHub::Mgmt::V2014_09_01::Models::NamespaceListResult
          end
          def namespace_update_parameter
            Azure::EventHub::Mgmt::V2014_09_01::Models::NamespaceUpdateParameter
          end
          def shared_access_authorization_rule_create_or_update_parameters
            Azure::EventHub::Mgmt::V2014_09_01::Models::SharedAccessAuthorizationRuleCreateOrUpdateParameters
          end
          def consumer_group_create_or_update_parameters
            Azure::EventHub::Mgmt::V2014_09_01::Models::ConsumerGroupCreateOrUpdateParameters
          end
          def namespace_resource
            Azure::EventHub::Mgmt::V2014_09_01::Models::NamespaceResource
          end
          def shared_access_authorization_rule_resource
            Azure::EventHub::Mgmt::V2014_09_01::Models::SharedAccessAuthorizationRuleResource
          end
          def shared_access_authorization_rule_post_resource
            Azure::EventHub::Mgmt::V2014_09_01::Models::SharedAccessAuthorizationRulePostResource
          end
          def event_hub_resource
            Azure::EventHub::Mgmt::V2014_09_01::Models::EventHubResource
          end
          def consumer_group_resource
            Azure::EventHub::Mgmt::V2014_09_01::Models::ConsumerGroupResource
          end
          def namespace_state
            Azure::EventHub::Mgmt::V2014_09_01::Models::NamespaceState
          end
          def check_name_availability_result
            Azure::EventHub::Mgmt::V2017_04_01::Models::CheckNameAvailabilityResult
          end
          def event_hub_list_result
            Azure::EventHub::Mgmt::V2017_04_01::Models::EventHubListResult
          end
          def resource
            Azure::EventHub::Mgmt::V2017_04_01::Models::Resource
          end
          def nwrule_set_ip_rules
            Azure::EventHub::Mgmt::V2017_04_01::Models::NWRuleSetIpRules
          end
          def consumer_group_list_result
            Azure::EventHub::Mgmt::V2017_04_01::Models::ConsumerGroupListResult
          end
          def network_rule_set_list_result
            Azure::EventHub::Mgmt::V2017_04_01::Models::NetworkRuleSetListResult
          end
          def check_name_availability_parameter
            Azure::EventHub::Mgmt::V2017_04_01::Models::CheckNameAvailabilityParameter
          end
          def access_keys
            Azure::EventHub::Mgmt::V2017_04_01::Models::AccessKeys
          end
          def subnet
            Azure::EventHub::Mgmt::V2017_04_01::Models::Subnet
          end
          def destination
            Azure::EventHub::Mgmt::V2017_04_01::Models::Destination
          end
          def operation_display
            Azure::EventHub::Mgmt::V2017_04_01::Models::OperationDisplay
          end
          def nwrule_set_virtual_network_rules
            Azure::EventHub::Mgmt::V2017_04_01::Models::NWRuleSetVirtualNetworkRules
          end
          def operation
            Azure::EventHub::Mgmt::V2017_04_01::Models::Operation
          end
          def ehnamespace_list_result
            Azure::EventHub::Mgmt::V2017_04_01::Models::EHNamespaceListResult
          end
          def operation_list_result
            Azure::EventHub::Mgmt::V2017_04_01::Models::OperationListResult
          end
          def regenerate_access_key_parameters
            Azure::EventHub::Mgmt::V2017_04_01::Models::RegenerateAccessKeyParameters
          end
          def error_response
            Azure::EventHub::Mgmt::V2017_04_01::Models::ErrorResponse
          end
          def sku
            Azure::EventHub::Mgmt::V2017_04_01::Models::Sku
          end
          def messaging_regions_list_result
            Azure::EventHub::Mgmt::V2017_04_01::Models::MessagingRegionsListResult
          end
          def capture_description
            Azure::EventHub::Mgmt::V2017_04_01::Models::CaptureDescription
          end
          def arm_disaster_recovery_list_result
            Azure::EventHub::Mgmt::V2017_04_01::Models::ArmDisasterRecoveryListResult
          end
          def authorization_rule_list_result
            Azure::EventHub::Mgmt::V2017_04_01::Models::AuthorizationRuleListResult
          end
          def messaging_regions_properties
            Azure::EventHub::Mgmt::V2017_04_01::Models::MessagingRegionsProperties
          end
          def tracked_resource
            Azure::EventHub::Mgmt::V2017_04_01::Models::TrackedResource
          end
          def ehnamespace
            Azure::EventHub::Mgmt::V2017_04_01::Models::EHNamespace
          end
          def authorization_rule
            Azure::EventHub::Mgmt::V2017_04_01::Models::AuthorizationRule
          end
          def eventhub
            Azure::EventHub::Mgmt::V2017_04_01::Models::Eventhub
          end
          def consumer_group
            Azure::EventHub::Mgmt::V2017_04_01::Models::ConsumerGroup
          end
          def arm_disaster_recovery
            Azure::EventHub::Mgmt::V2017_04_01::Models::ArmDisasterRecovery
          end
          def messaging_regions
            Azure::EventHub::Mgmt::V2017_04_01::Models::MessagingRegions
          end
          def messaging_plan
            Azure::EventHub::Mgmt::V2017_04_01::Models::MessagingPlan
          end
          def network_rule_set
            Azure::EventHub::Mgmt::V2017_04_01::Models::NetworkRuleSet
          end
          def sku_name
            Azure::EventHub::Mgmt::V2017_04_01::Models::SkuName
          end
          def sku_tier
            Azure::EventHub::Mgmt::V2017_04_01::Models::SkuTier
          end
          def access_rights
            Azure::EventHub::Mgmt::V2017_04_01::Models::AccessRights
          end
          def key_type
            Azure::EventHub::Mgmt::V2017_04_01::Models::KeyType
          end
          def entity_status
            Azure::EventHub::Mgmt::V2017_04_01::Models::EntityStatus
          end
          def encoding_capture_description
            Azure::EventHub::Mgmt::V2017_04_01::Models::EncodingCaptureDescription
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
          def network_rule_ipaction
            Azure::EventHub::Mgmt::V2017_04_01::Models::NetworkRuleIPAction
          end
          def default_action
            Azure::EventHub::Mgmt::V2017_04_01::Models::DefaultAction
          end
        end
      end
    end
  end
end
