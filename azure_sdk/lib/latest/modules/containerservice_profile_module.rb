# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_container_service'

module Azure::Profiles::Latest
  module ContainerService
    module Mgmt
      ContainerServices = Azure::ContainerService::Mgmt::V2017_09_30::ContainerServices
      OpenShiftManagedClusters = Azure::ContainerService::Mgmt::V2018_09_30_preview::OpenShiftManagedClusters
      Operations = Azure::ContainerService::Mgmt::V2019_02_01::Operations
      ManagedClusters = Azure::ContainerService::Mgmt::V2019_02_01::ManagedClusters
      AgentPools = Azure::ContainerService::Mgmt::V2019_02_01::AgentPools

      module Models
        ContainerServiceCustomProfile = Azure::ContainerService::Mgmt::V2017_07_01::Models::ContainerServiceCustomProfile
        ContainerServiceServicePrincipalProfile = Azure::ContainerService::Mgmt::V2017_07_01::Models::ContainerServiceServicePrincipalProfile
        ContainerServiceOrchestratorProfile = Azure::ContainerService::Mgmt::V2017_07_01::Models::ContainerServiceOrchestratorProfile
        ContainerServiceAgentPoolProfile = Azure::ContainerService::Mgmt::V2017_07_01::Models::ContainerServiceAgentPoolProfile
        KeyVaultSecretRef = Azure::ContainerService::Mgmt::V2017_07_01::Models::KeyVaultSecretRef
        ContainerServiceListResult = Azure::ContainerService::Mgmt::V2017_07_01::Models::ContainerServiceListResult
        ContainerService = Azure::ContainerService::Mgmt::V2017_07_01::Models::ContainerService
        ContainerServiceOrchestratorTypes = Azure::ContainerService::Mgmt::V2017_07_01::Models::ContainerServiceOrchestratorTypes
        OrchestratorVersionProfile = Azure::ContainerService::Mgmt::V2017_09_30::Models::OrchestratorVersionProfile
        OrchestratorVersionProfileListResult = Azure::ContainerService::Mgmt::V2017_09_30::Models::OrchestratorVersionProfileListResult
        OpenShiftManagedClusterAgentPoolProfile = Azure::ContainerService::Mgmt::V2018_09_30_preview::Models::OpenShiftManagedClusterAgentPoolProfile
        OpenShiftManagedClusterBaseIdentityProvider = Azure::ContainerService::Mgmt::V2018_09_30_preview::Models::OpenShiftManagedClusterBaseIdentityProvider
        OpenShiftManagedClusterIdentityProvider = Azure::ContainerService::Mgmt::V2018_09_30_preview::Models::OpenShiftManagedClusterIdentityProvider
        OpenShiftRouterProfile = Azure::ContainerService::Mgmt::V2018_09_30_preview::Models::OpenShiftRouterProfile
        OpenShiftManagedClusterAuthProfile = Azure::ContainerService::Mgmt::V2018_09_30_preview::Models::OpenShiftManagedClusterAuthProfile
        OpenShiftManagedClusterMasterPoolProfile = Azure::ContainerService::Mgmt::V2018_09_30_preview::Models::OpenShiftManagedClusterMasterPoolProfile
        PurchasePlan = Azure::ContainerService::Mgmt::V2018_09_30_preview::Models::PurchasePlan
        OpenShiftManagedClusterListResult = Azure::ContainerService::Mgmt::V2018_09_30_preview::Models::OpenShiftManagedClusterListResult
        NetworkProfile = Azure::ContainerService::Mgmt::V2018_09_30_preview::Models::NetworkProfile
        OpenShiftManagedCluster = Azure::ContainerService::Mgmt::V2018_09_30_preview::Models::OpenShiftManagedCluster
        OpenShiftManagedClusterAADIdentityProvider = Azure::ContainerService::Mgmt::V2018_09_30_preview::Models::OpenShiftManagedClusterAADIdentityProvider
        OpenShiftContainerServiceVMSize = Azure::ContainerService::Mgmt::V2018_09_30_preview::Models::OpenShiftContainerServiceVMSize
        OpenShiftAgentPoolProfileRole = Azure::ContainerService::Mgmt::V2018_09_30_preview::Models::OpenShiftAgentPoolProfileRole
        ContainerServiceLinuxProfile = Azure::ContainerService::Mgmt::V2019_02_01::Models::ContainerServiceLinuxProfile
        ContainerServiceNetworkProfile = Azure::ContainerService::Mgmt::V2019_02_01::Models::ContainerServiceNetworkProfile
        OperationListResult = Azure::ContainerService::Mgmt::V2019_02_01::Models::OperationListResult
        ContainerServiceVMDiagnostics = Azure::ContainerService::Mgmt::V2019_02_01::Models::ContainerServiceVMDiagnostics
        SubResource = Azure::ContainerService::Mgmt::V2019_02_01::Models::SubResource
        ContainerServiceDiagnosticsProfile = Azure::ContainerService::Mgmt::V2019_02_01::Models::ContainerServiceDiagnosticsProfile
        ManagedClusterServicePrincipalProfile = Azure::ContainerService::Mgmt::V2019_02_01::Models::ManagedClusterServicePrincipalProfile
        ManagedClusterAddonProfile = Azure::ContainerService::Mgmt::V2019_02_01::Models::ManagedClusterAddonProfile
        ManagedClusterAgentPoolProfileProperties = Azure::ContainerService::Mgmt::V2019_02_01::Models::ManagedClusterAgentPoolProfileProperties
        ManagedClusterAADProfile = Azure::ContainerService::Mgmt::V2019_02_01::Models::ManagedClusterAADProfile
        ContainerServiceMasterProfile = Azure::ContainerService::Mgmt::V2019_02_01::Models::ContainerServiceMasterProfile
        CredentialResult = Azure::ContainerService::Mgmt::V2019_02_01::Models::CredentialResult
        ContainerServiceWindowsProfile = Azure::ContainerService::Mgmt::V2019_02_01::Models::ContainerServiceWindowsProfile
        ContainerServiceSshConfiguration = Azure::ContainerService::Mgmt::V2019_02_01::Models::ContainerServiceSshConfiguration
        Resource = Azure::ContainerService::Mgmt::V2019_02_01::Models::Resource
        ManagedClusterListResult = Azure::ContainerService::Mgmt::V2019_02_01::Models::ManagedClusterListResult
        AgentPoolListResult = Azure::ContainerService::Mgmt::V2019_02_01::Models::AgentPoolListResult
        OrchestratorProfile = Azure::ContainerService::Mgmt::V2019_02_01::Models::OrchestratorProfile
        OperationValue = Azure::ContainerService::Mgmt::V2019_02_01::Models::OperationValue
        CredentialResults = Azure::ContainerService::Mgmt::V2019_02_01::Models::CredentialResults
        ContainerServiceSshPublicKey = Azure::ContainerService::Mgmt::V2019_02_01::Models::ContainerServiceSshPublicKey
        ManagedClusterPoolUpgradeProfile = Azure::ContainerService::Mgmt::V2019_02_01::Models::ManagedClusterPoolUpgradeProfile
        TagsObject = Azure::ContainerService::Mgmt::V2019_02_01::Models::TagsObject
        ManagedClusterUpgradeProfile = Azure::ContainerService::Mgmt::V2019_02_01::Models::ManagedClusterUpgradeProfile
        ManagedClusterAgentPoolProfile = Azure::ContainerService::Mgmt::V2019_02_01::Models::ManagedClusterAgentPoolProfile
        AgentPool = Azure::ContainerService::Mgmt::V2019_02_01::Models::AgentPool
        ManagedCluster = Azure::ContainerService::Mgmt::V2019_02_01::Models::ManagedCluster
        ManagedClusterAccessProfile = Azure::ContainerService::Mgmt::V2019_02_01::Models::ManagedClusterAccessProfile
        ContainerServiceStorageProfileTypes = Azure::ContainerService::Mgmt::V2019_02_01::Models::ContainerServiceStorageProfileTypes
        ContainerServiceVMSizeTypes = Azure::ContainerService::Mgmt::V2019_02_01::Models::ContainerServiceVMSizeTypes
        OSType = Azure::ContainerService::Mgmt::V2019_02_01::Models::OSType
        AgentPoolType = Azure::ContainerService::Mgmt::V2019_02_01::Models::AgentPoolType
        NetworkPlugin = Azure::ContainerService::Mgmt::V2019_02_01::Models::NetworkPlugin
        NetworkPolicy = Azure::ContainerService::Mgmt::V2019_02_01::Models::NetworkPolicy
      end

      class ContainerServiceManagementClass
        attr_reader :container_services, :open_shift_managed_clusters, :operations, :managed_clusters, :agent_pools, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::ContainerService::Mgmt::V2017_07_01::ContainerServiceClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)

          @client_1 = Azure::ContainerService::Mgmt::V2017_09_30::ContainerServiceClient.new(configurable.credentials, base_url, options)
          if(@client_1.respond_to?(:subscription_id))
            @client_1.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_1)
          @container_services = @client_1.container_services

          @client_2 = Azure::ContainerService::Mgmt::V2018_09_30_preview::ContainerServiceClient.new(configurable.credentials, base_url, options)
          if(@client_2.respond_to?(:subscription_id))
            @client_2.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_2)
          @open_shift_managed_clusters = @client_2.open_shift_managed_clusters

          @client_3 = Azure::ContainerService::Mgmt::V2019_02_01::ContainerServiceClient.new(configurable.credentials, base_url, options)
          if(@client_3.respond_to?(:subscription_id))
            @client_3.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_3)
          @operations = @client_3.operations
          @managed_clusters = @client_3.managed_clusters
          @agent_pools = @client_3.agent_pools

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/ContainerService/Mgmt"
          client.add_user_agent_information(profile_information)
        end

        def method_missing(method, *args)
          if @client_3.respond_to?method
            @client_3.send(method, *args)
          elsif @client_2.respond_to?method
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
          def orchestrator_version_profile
            Azure::ContainerService::Mgmt::V2017_09_30::Models::OrchestratorVersionProfile
          end
          def orchestrator_version_profile_list_result
            Azure::ContainerService::Mgmt::V2017_09_30::Models::OrchestratorVersionProfileListResult
          end
          def open_shift_managed_cluster_agent_pool_profile
            Azure::ContainerService::Mgmt::V2018_09_30_preview::Models::OpenShiftManagedClusterAgentPoolProfile
          end
          def open_shift_managed_cluster_base_identity_provider
            Azure::ContainerService::Mgmt::V2018_09_30_preview::Models::OpenShiftManagedClusterBaseIdentityProvider
          end
          def open_shift_managed_cluster_identity_provider
            Azure::ContainerService::Mgmt::V2018_09_30_preview::Models::OpenShiftManagedClusterIdentityProvider
          end
          def open_shift_router_profile
            Azure::ContainerService::Mgmt::V2018_09_30_preview::Models::OpenShiftRouterProfile
          end
          def open_shift_managed_cluster_auth_profile
            Azure::ContainerService::Mgmt::V2018_09_30_preview::Models::OpenShiftManagedClusterAuthProfile
          end
          def open_shift_managed_cluster_master_pool_profile
            Azure::ContainerService::Mgmt::V2018_09_30_preview::Models::OpenShiftManagedClusterMasterPoolProfile
          end
          def purchase_plan
            Azure::ContainerService::Mgmt::V2018_09_30_preview::Models::PurchasePlan
          end
          def open_shift_managed_cluster_list_result
            Azure::ContainerService::Mgmt::V2018_09_30_preview::Models::OpenShiftManagedClusterListResult
          end
          def network_profile
            Azure::ContainerService::Mgmt::V2018_09_30_preview::Models::NetworkProfile
          end
          def open_shift_managed_cluster
            Azure::ContainerService::Mgmt::V2018_09_30_preview::Models::OpenShiftManagedCluster
          end
          def open_shift_managed_cluster_aadidentity_provider
            Azure::ContainerService::Mgmt::V2018_09_30_preview::Models::OpenShiftManagedClusterAADIdentityProvider
          end
          def open_shift_container_service_vmsize
            Azure::ContainerService::Mgmt::V2018_09_30_preview::Models::OpenShiftContainerServiceVMSize
          end
          def open_shift_agent_pool_profile_role
            Azure::ContainerService::Mgmt::V2018_09_30_preview::Models::OpenShiftAgentPoolProfileRole
          end
          def container_service_linux_profile
            Azure::ContainerService::Mgmt::V2019_02_01::Models::ContainerServiceLinuxProfile
          end
          def container_service_network_profile
            Azure::ContainerService::Mgmt::V2019_02_01::Models::ContainerServiceNetworkProfile
          end
          def operation_list_result
            Azure::ContainerService::Mgmt::V2019_02_01::Models::OperationListResult
          end
          def container_service_vmdiagnostics
            Azure::ContainerService::Mgmt::V2019_02_01::Models::ContainerServiceVMDiagnostics
          end
          def sub_resource
            Azure::ContainerService::Mgmt::V2019_02_01::Models::SubResource
          end
          def container_service_diagnostics_profile
            Azure::ContainerService::Mgmt::V2019_02_01::Models::ContainerServiceDiagnosticsProfile
          end
          def managed_cluster_service_principal_profile
            Azure::ContainerService::Mgmt::V2019_02_01::Models::ManagedClusterServicePrincipalProfile
          end
          def managed_cluster_addon_profile
            Azure::ContainerService::Mgmt::V2019_02_01::Models::ManagedClusterAddonProfile
          end
          def managed_cluster_agent_pool_profile_properties
            Azure::ContainerService::Mgmt::V2019_02_01::Models::ManagedClusterAgentPoolProfileProperties
          end
          def managed_cluster_aadprofile
            Azure::ContainerService::Mgmt::V2019_02_01::Models::ManagedClusterAADProfile
          end
          def container_service_master_profile
            Azure::ContainerService::Mgmt::V2019_02_01::Models::ContainerServiceMasterProfile
          end
          def credential_result
            Azure::ContainerService::Mgmt::V2019_02_01::Models::CredentialResult
          end
          def container_service_windows_profile
            Azure::ContainerService::Mgmt::V2019_02_01::Models::ContainerServiceWindowsProfile
          end
          def container_service_ssh_configuration
            Azure::ContainerService::Mgmt::V2019_02_01::Models::ContainerServiceSshConfiguration
          end
          def resource
            Azure::ContainerService::Mgmt::V2019_02_01::Models::Resource
          end
          def managed_cluster_list_result
            Azure::ContainerService::Mgmt::V2019_02_01::Models::ManagedClusterListResult
          end
          def agent_pool_list_result
            Azure::ContainerService::Mgmt::V2019_02_01::Models::AgentPoolListResult
          end
          def orchestrator_profile
            Azure::ContainerService::Mgmt::V2019_02_01::Models::OrchestratorProfile
          end
          def operation_value
            Azure::ContainerService::Mgmt::V2019_02_01::Models::OperationValue
          end
          def credential_results
            Azure::ContainerService::Mgmt::V2019_02_01::Models::CredentialResults
          end
          def container_service_ssh_public_key
            Azure::ContainerService::Mgmt::V2019_02_01::Models::ContainerServiceSshPublicKey
          end
          def managed_cluster_pool_upgrade_profile
            Azure::ContainerService::Mgmt::V2019_02_01::Models::ManagedClusterPoolUpgradeProfile
          end
          def tags_object
            Azure::ContainerService::Mgmt::V2019_02_01::Models::TagsObject
          end
          def managed_cluster_upgrade_profile
            Azure::ContainerService::Mgmt::V2019_02_01::Models::ManagedClusterUpgradeProfile
          end
          def managed_cluster_agent_pool_profile
            Azure::ContainerService::Mgmt::V2019_02_01::Models::ManagedClusterAgentPoolProfile
          end
          def agent_pool
            Azure::ContainerService::Mgmt::V2019_02_01::Models::AgentPool
          end
          def managed_cluster
            Azure::ContainerService::Mgmt::V2019_02_01::Models::ManagedCluster
          end
          def managed_cluster_access_profile
            Azure::ContainerService::Mgmt::V2019_02_01::Models::ManagedClusterAccessProfile
          end
          def container_service_storage_profile_types
            Azure::ContainerService::Mgmt::V2019_02_01::Models::ContainerServiceStorageProfileTypes
          end
          def container_service_vmsize_types
            Azure::ContainerService::Mgmt::V2019_02_01::Models::ContainerServiceVMSizeTypes
          end
          def ostype
            Azure::ContainerService::Mgmt::V2019_02_01::Models::OSType
          end
          def agent_pool_type
            Azure::ContainerService::Mgmt::V2019_02_01::Models::AgentPoolType
          end
          def network_plugin
            Azure::ContainerService::Mgmt::V2019_02_01::Models::NetworkPlugin
          end
          def network_policy
            Azure::ContainerService::Mgmt::V2019_02_01::Models::NetworkPolicy
          end
        end
      end
    end
  end
end
