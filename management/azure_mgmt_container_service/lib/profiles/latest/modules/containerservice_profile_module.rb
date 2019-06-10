# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_container_service'

module Azure::ContainerService::Profiles::Latest
  module Mgmt
    ContainerServices = Azure::ContainerService::Mgmt::V2019_04_01::ContainerServices
    Operations = Azure::ContainerService::Mgmt::V2019_04_01::Operations
    ManagedClusters = Azure::ContainerService::Mgmt::V2019_04_01::ManagedClusters
    AgentPools = Azure::ContainerService::Mgmt::V2019_04_01::AgentPools
    OpenShiftManagedClusters = Azure::ContainerService::Mgmt::V2019_04_30::OpenShiftManagedClusters

    module Models
      ContainerServiceWindowsProfile = Azure::ContainerService::Mgmt::V2017_07_01::Models::ContainerServiceWindowsProfile
      ContainerServiceCustomProfile = Azure::ContainerService::Mgmt::V2017_07_01::Models::ContainerServiceCustomProfile
      ContainerServiceServicePrincipalProfile = Azure::ContainerService::Mgmt::V2017_07_01::Models::ContainerServiceServicePrincipalProfile
      ContainerServiceOrchestratorProfile = Azure::ContainerService::Mgmt::V2017_07_01::Models::ContainerServiceOrchestratorProfile
      ContainerServiceAgentPoolProfile = Azure::ContainerService::Mgmt::V2017_07_01::Models::ContainerServiceAgentPoolProfile
      KeyVaultSecretRef = Azure::ContainerService::Mgmt::V2017_07_01::Models::KeyVaultSecretRef
      ContainerServiceListResult = Azure::ContainerService::Mgmt::V2017_07_01::Models::ContainerServiceListResult
      ContainerService = Azure::ContainerService::Mgmt::V2017_07_01::Models::ContainerService
      ContainerServiceOrchestratorTypes = Azure::ContainerService::Mgmt::V2017_07_01::Models::ContainerServiceOrchestratorTypes
      ContainerServiceSshConfiguration = Azure::ContainerService::Mgmt::V2019_04_01::Models::ContainerServiceSshConfiguration
      ContainerServiceLinuxProfile = Azure::ContainerService::Mgmt::V2019_04_01::Models::ContainerServiceLinuxProfile
      OrchestratorVersionProfile = Azure::ContainerService::Mgmt::V2019_04_01::Models::OrchestratorVersionProfile
      ContainerServiceNetworkProfile = Azure::ContainerService::Mgmt::V2019_04_01::Models::ContainerServiceNetworkProfile
      OperationValue = Azure::ContainerService::Mgmt::V2019_04_01::Models::OperationValue
      ContainerServiceVMDiagnostics = Azure::ContainerService::Mgmt::V2019_04_01::Models::ContainerServiceVMDiagnostics
      ContainerServiceDiagnosticsProfile = Azure::ContainerService::Mgmt::V2019_04_01::Models::ContainerServiceDiagnosticsProfile
      ManagedClusterAddonProfile = Azure::ContainerService::Mgmt::V2019_04_01::Models::ManagedClusterAddonProfile
      ContainerServiceMasterProfile = Azure::ContainerService::Mgmt::V2019_04_01::Models::ContainerServiceMasterProfile
      ManagedClusterAADProfile = Azure::ContainerService::Mgmt::V2019_04_01::Models::ManagedClusterAADProfile
      ManagedClusterServicePrincipalProfile = Azure::ContainerService::Mgmt::V2019_04_01::Models::ManagedClusterServicePrincipalProfile
      ManagedClusterAgentPoolProfileProperties = Azure::ContainerService::Mgmt::V2019_04_01::Models::ManagedClusterAgentPoolProfileProperties
      AgentPoolListResult = Azure::ContainerService::Mgmt::V2019_04_01::Models::AgentPoolListResult
      ContainerServiceSshPublicKey = Azure::ContainerService::Mgmt::V2019_04_01::Models::ContainerServiceSshPublicKey
      ManagedClusterIdentity = Azure::ContainerService::Mgmt::V2019_04_01::Models::ManagedClusterIdentity
      OrchestratorVersionProfileListResult = Azure::ContainerService::Mgmt::V2019_04_01::Models::OrchestratorVersionProfileListResult
      CredentialResults = Azure::ContainerService::Mgmt::V2019_04_01::Models::CredentialResults
      SubResource = Azure::ContainerService::Mgmt::V2019_04_01::Models::SubResource
      ManagedClusterListResult = Azure::ContainerService::Mgmt::V2019_04_01::Models::ManagedClusterListResult
      ManagedClusterWindowsProfile = Azure::ContainerService::Mgmt::V2019_04_01::Models::ManagedClusterWindowsProfile
      CredentialResult = Azure::ContainerService::Mgmt::V2019_04_01::Models::CredentialResult
      OperationListResult = Azure::ContainerService::Mgmt::V2019_04_01::Models::OperationListResult
      ManagedClusterPoolUpgradeProfileUpgradesItem = Azure::ContainerService::Mgmt::V2019_04_01::Models::ManagedClusterPoolUpgradeProfileUpgradesItem
      OrchestratorProfile = Azure::ContainerService::Mgmt::V2019_04_01::Models::OrchestratorProfile
      ManagedClusterPoolUpgradeProfile = Azure::ContainerService::Mgmt::V2019_04_01::Models::ManagedClusterPoolUpgradeProfile
      ManagedClusterUpgradeProfile = Azure::ContainerService::Mgmt::V2019_04_01::Models::ManagedClusterUpgradeProfile
      ManagedClusterAgentPoolProfile = Azure::ContainerService::Mgmt::V2019_04_01::Models::ManagedClusterAgentPoolProfile
      AgentPool = Azure::ContainerService::Mgmt::V2019_04_01::Models::AgentPool
      ManagedCluster = Azure::ContainerService::Mgmt::V2019_04_01::Models::ManagedCluster
      ManagedClusterAccessProfile = Azure::ContainerService::Mgmt::V2019_04_01::Models::ManagedClusterAccessProfile
      ContainerServiceStorageProfileTypes = Azure::ContainerService::Mgmt::V2019_04_01::Models::ContainerServiceStorageProfileTypes
      ContainerServiceVMSizeTypes = Azure::ContainerService::Mgmt::V2019_04_01::Models::ContainerServiceVMSizeTypes
      AgentPoolType = Azure::ContainerService::Mgmt::V2019_04_01::Models::AgentPoolType
      NetworkPlugin = Azure::ContainerService::Mgmt::V2019_04_01::Models::NetworkPlugin
      NetworkPolicy = Azure::ContainerService::Mgmt::V2019_04_01::Models::NetworkPolicy
      LoadBalancerSku = Azure::ContainerService::Mgmt::V2019_04_01::Models::LoadBalancerSku
      ResourceIdentityType = Azure::ContainerService::Mgmt::V2019_04_01::Models::ResourceIdentityType
      OpenShiftManagedClusterAgentPoolProfile = Azure::ContainerService::Mgmt::V2019_04_30::Models::OpenShiftManagedClusterAgentPoolProfile
      Resource = Azure::ContainerService::Mgmt::V2019_04_30::Models::Resource
      OpenShiftManagedClusterBaseIdentityProvider = Azure::ContainerService::Mgmt::V2019_04_30::Models::OpenShiftManagedClusterBaseIdentityProvider
      OpenShiftManagedClusterIdentityProvider = Azure::ContainerService::Mgmt::V2019_04_30::Models::OpenShiftManagedClusterIdentityProvider
      OpenShiftRouterProfile = Azure::ContainerService::Mgmt::V2019_04_30::Models::OpenShiftRouterProfile
      OpenShiftManagedClusterAuthProfile = Azure::ContainerService::Mgmt::V2019_04_30::Models::OpenShiftManagedClusterAuthProfile
      OpenShiftManagedClusterMasterPoolProfile = Azure::ContainerService::Mgmt::V2019_04_30::Models::OpenShiftManagedClusterMasterPoolProfile
      PurchasePlan = Azure::ContainerService::Mgmt::V2019_04_30::Models::PurchasePlan
      OpenShiftManagedClusterListResult = Azure::ContainerService::Mgmt::V2019_04_30::Models::OpenShiftManagedClusterListResult
      NetworkProfile = Azure::ContainerService::Mgmt::V2019_04_30::Models::NetworkProfile
      TagsObject = Azure::ContainerService::Mgmt::V2019_04_30::Models::TagsObject
      OpenShiftManagedCluster = Azure::ContainerService::Mgmt::V2019_04_30::Models::OpenShiftManagedCluster
      OpenShiftManagedClusterAADIdentityProvider = Azure::ContainerService::Mgmt::V2019_04_30::Models::OpenShiftManagedClusterAADIdentityProvider
      OSType = Azure::ContainerService::Mgmt::V2019_04_30::Models::OSType
      OpenShiftContainerServiceVMSize = Azure::ContainerService::Mgmt::V2019_04_30::Models::OpenShiftContainerServiceVMSize
      OpenShiftAgentPoolProfileRole = Azure::ContainerService::Mgmt::V2019_04_30::Models::OpenShiftAgentPoolProfileRole
    end

    #
    # ContainerServiceManagementClass
    #
    class ContainerServiceManagementClass
      attr_reader :container_services, :operations, :managed_clusters, :agent_pools, :open_shift_managed_clusters, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::ContainerService::Mgmt::V2017_07_01::ContainerServiceClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)

        @client_1 = Azure::ContainerService::Mgmt::V2019_04_01::ContainerServiceClient.new(configurable.credentials, base_url, options)
        if(@client_1.respond_to?(:subscription_id))
          @client_1.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_1)
        @container_services = @client_1.container_services
        @operations = @client_1.operations
        @managed_clusters = @client_1.managed_clusters
        @agent_pools = @client_1.agent_pools

        @client_2 = Azure::ContainerService::Mgmt::V2019_04_30::ContainerServiceClient.new(configurable.credentials, base_url, options)
        if(@client_2.respond_to?(:subscription_id))
          @client_2.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_2)
        @open_shift_managed_clusters = @client_2.open_shift_managed_clusters

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/ContainerService/Mgmt'
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

    end

    class ModelClasses
      def container_service_windows_profile
        Azure::ContainerService::Mgmt::V2017_07_01::Models::ContainerServiceWindowsProfile
      end
      def container_service_custom_profile
        Azure::ContainerService::Mgmt::V2017_07_01::Models::ContainerServiceCustomProfile
      end
      def container_service_service_principal_profile
        Azure::ContainerService::Mgmt::V2017_07_01::Models::ContainerServiceServicePrincipalProfile
      end
      def container_service_orchestrator_profile
        Azure::ContainerService::Mgmt::V2017_07_01::Models::ContainerServiceOrchestratorProfile
      end
      def container_service_agent_pool_profile
        Azure::ContainerService::Mgmt::V2017_07_01::Models::ContainerServiceAgentPoolProfile
      end
      def key_vault_secret_ref
        Azure::ContainerService::Mgmt::V2017_07_01::Models::KeyVaultSecretRef
      end
      def container_service_list_result
        Azure::ContainerService::Mgmt::V2017_07_01::Models::ContainerServiceListResult
      end
      def container_service
        Azure::ContainerService::Mgmt::V2017_07_01::Models::ContainerService
      end
      def container_service_orchestrator_types
        Azure::ContainerService::Mgmt::V2017_07_01::Models::ContainerServiceOrchestratorTypes
      end
      def container_service_ssh_configuration
        Azure::ContainerService::Mgmt::V2019_04_01::Models::ContainerServiceSshConfiguration
      end
      def container_service_linux_profile
        Azure::ContainerService::Mgmt::V2019_04_01::Models::ContainerServiceLinuxProfile
      end
      def orchestrator_version_profile
        Azure::ContainerService::Mgmt::V2019_04_01::Models::OrchestratorVersionProfile
      end
      def container_service_network_profile
        Azure::ContainerService::Mgmt::V2019_04_01::Models::ContainerServiceNetworkProfile
      end
      def operation_value
        Azure::ContainerService::Mgmt::V2019_04_01::Models::OperationValue
      end
      def container_service_vmdiagnostics
        Azure::ContainerService::Mgmt::V2019_04_01::Models::ContainerServiceVMDiagnostics
      end
      def container_service_diagnostics_profile
        Azure::ContainerService::Mgmt::V2019_04_01::Models::ContainerServiceDiagnosticsProfile
      end
      def managed_cluster_addon_profile
        Azure::ContainerService::Mgmt::V2019_04_01::Models::ManagedClusterAddonProfile
      end
      def container_service_master_profile
        Azure::ContainerService::Mgmt::V2019_04_01::Models::ContainerServiceMasterProfile
      end
      def managed_cluster_aadprofile
        Azure::ContainerService::Mgmt::V2019_04_01::Models::ManagedClusterAADProfile
      end
      def managed_cluster_service_principal_profile
        Azure::ContainerService::Mgmt::V2019_04_01::Models::ManagedClusterServicePrincipalProfile
      end
      def managed_cluster_agent_pool_profile_properties
        Azure::ContainerService::Mgmt::V2019_04_01::Models::ManagedClusterAgentPoolProfileProperties
      end
      def agent_pool_list_result
        Azure::ContainerService::Mgmt::V2019_04_01::Models::AgentPoolListResult
      end
      def container_service_ssh_public_key
        Azure::ContainerService::Mgmt::V2019_04_01::Models::ContainerServiceSshPublicKey
      end
      def managed_cluster_identity
        Azure::ContainerService::Mgmt::V2019_04_01::Models::ManagedClusterIdentity
      end
      def orchestrator_version_profile_list_result
        Azure::ContainerService::Mgmt::V2019_04_01::Models::OrchestratorVersionProfileListResult
      end
      def credential_results
        Azure::ContainerService::Mgmt::V2019_04_01::Models::CredentialResults
      end
      def sub_resource
        Azure::ContainerService::Mgmt::V2019_04_01::Models::SubResource
      end
      def managed_cluster_list_result
        Azure::ContainerService::Mgmt::V2019_04_01::Models::ManagedClusterListResult
      end
      def managed_cluster_windows_profile
        Azure::ContainerService::Mgmt::V2019_04_01::Models::ManagedClusterWindowsProfile
      end
      def credential_result
        Azure::ContainerService::Mgmt::V2019_04_01::Models::CredentialResult
      end
      def operation_list_result
        Azure::ContainerService::Mgmt::V2019_04_01::Models::OperationListResult
      end
      def managed_cluster_pool_upgrade_profile_upgrades_item
        Azure::ContainerService::Mgmt::V2019_04_01::Models::ManagedClusterPoolUpgradeProfileUpgradesItem
      end
      def orchestrator_profile
        Azure::ContainerService::Mgmt::V2019_04_01::Models::OrchestratorProfile
      end
      def managed_cluster_pool_upgrade_profile
        Azure::ContainerService::Mgmt::V2019_04_01::Models::ManagedClusterPoolUpgradeProfile
      end
      def managed_cluster_upgrade_profile
        Azure::ContainerService::Mgmt::V2019_04_01::Models::ManagedClusterUpgradeProfile
      end
      def managed_cluster_agent_pool_profile
        Azure::ContainerService::Mgmt::V2019_04_01::Models::ManagedClusterAgentPoolProfile
      end
      def agent_pool
        Azure::ContainerService::Mgmt::V2019_04_01::Models::AgentPool
      end
      def managed_cluster
        Azure::ContainerService::Mgmt::V2019_04_01::Models::ManagedCluster
      end
      def managed_cluster_access_profile
        Azure::ContainerService::Mgmt::V2019_04_01::Models::ManagedClusterAccessProfile
      end
      def container_service_storage_profile_types
        Azure::ContainerService::Mgmt::V2019_04_01::Models::ContainerServiceStorageProfileTypes
      end
      def container_service_vmsize_types
        Azure::ContainerService::Mgmt::V2019_04_01::Models::ContainerServiceVMSizeTypes
      end
      def agent_pool_type
        Azure::ContainerService::Mgmt::V2019_04_01::Models::AgentPoolType
      end
      def network_plugin
        Azure::ContainerService::Mgmt::V2019_04_01::Models::NetworkPlugin
      end
      def network_policy
        Azure::ContainerService::Mgmt::V2019_04_01::Models::NetworkPolicy
      end
      def load_balancer_sku
        Azure::ContainerService::Mgmt::V2019_04_01::Models::LoadBalancerSku
      end
      def resource_identity_type
        Azure::ContainerService::Mgmt::V2019_04_01::Models::ResourceIdentityType
      end
      def open_shift_managed_cluster_agent_pool_profile
        Azure::ContainerService::Mgmt::V2019_04_30::Models::OpenShiftManagedClusterAgentPoolProfile
      end
      def resource
        Azure::ContainerService::Mgmt::V2019_04_30::Models::Resource
      end
      def open_shift_managed_cluster_base_identity_provider
        Azure::ContainerService::Mgmt::V2019_04_30::Models::OpenShiftManagedClusterBaseIdentityProvider
      end
      def open_shift_managed_cluster_identity_provider
        Azure::ContainerService::Mgmt::V2019_04_30::Models::OpenShiftManagedClusterIdentityProvider
      end
      def open_shift_router_profile
        Azure::ContainerService::Mgmt::V2019_04_30::Models::OpenShiftRouterProfile
      end
      def open_shift_managed_cluster_auth_profile
        Azure::ContainerService::Mgmt::V2019_04_30::Models::OpenShiftManagedClusterAuthProfile
      end
      def open_shift_managed_cluster_master_pool_profile
        Azure::ContainerService::Mgmt::V2019_04_30::Models::OpenShiftManagedClusterMasterPoolProfile
      end
      def purchase_plan
        Azure::ContainerService::Mgmt::V2019_04_30::Models::PurchasePlan
      end
      def open_shift_managed_cluster_list_result
        Azure::ContainerService::Mgmt::V2019_04_30::Models::OpenShiftManagedClusterListResult
      end
      def network_profile
        Azure::ContainerService::Mgmt::V2019_04_30::Models::NetworkProfile
      end
      def tags_object
        Azure::ContainerService::Mgmt::V2019_04_30::Models::TagsObject
      end
      def open_shift_managed_cluster
        Azure::ContainerService::Mgmt::V2019_04_30::Models::OpenShiftManagedCluster
      end
      def open_shift_managed_cluster_aadidentity_provider
        Azure::ContainerService::Mgmt::V2019_04_30::Models::OpenShiftManagedClusterAADIdentityProvider
      end
      def ostype
        Azure::ContainerService::Mgmt::V2019_04_30::Models::OSType
      end
      def open_shift_container_service_vmsize
        Azure::ContainerService::Mgmt::V2019_04_30::Models::OpenShiftContainerServiceVMSize
      end
      def open_shift_agent_pool_profile_role
        Azure::ContainerService::Mgmt::V2019_04_30::Models::OpenShiftAgentPoolProfileRole
      end
    end
  end
end
