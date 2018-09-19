# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_service_fabric'

module Azure::Profiles::Latest
  module ServiceFabric
    module Mgmt
      Operations = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Operations
      Clusters = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Clusters
      Version = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Version
      ApplicationType = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::ApplicationType
      Service = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Service
      Application = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Application
      ClusterVersions = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::ClusterVersions

      module Models
        ApplicationTypeResourceList = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationTypeResourceList
        ClientCertificateCommonName = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ClientCertificateCommonName
        ApplicationResourceList = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationResourceList
        ClientCertificateThumbprint = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ClientCertificateThumbprint
        ClusterUpgradeDeltaHealthPolicy = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ClusterUpgradeDeltaHealthPolicy
        ClusterVersionDetails = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ClusterVersionDetails
        ClusterListResult = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ClusterListResult
        SettingsParameterDescription = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::SettingsParameterDescription
        ApplicationUpgradePolicy = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationUpgradePolicy
        SettingsSectionDescription = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::SettingsSectionDescription
        VersionResourceList = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::VersionResourceList
        EndpointRangeDescription = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::EndpointRangeDescription
        ServiceResourceList = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceResourceList
        NodeTypeDescription = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::NodeTypeDescription
        NamedPartitionSchemeDescription = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::NamedPartitionSchemeDescription
        SingletonPartitionSchemeDescription = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::SingletonPartitionSchemeDescription
        UniformInt64RangePartitionSchemeDescription = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::UniformInt64RangePartitionSchemeDescription
        ApplicationTypeResource = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationTypeResource
        VersionResource = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::VersionResource
        ApplicationResource = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationResource
        ApplicationResourceUpdate = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationResourceUpdate
        ServiceProperties = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceProperties
        ServiceResource = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceResource
        ServiceUpdateProperties = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceUpdateProperties
        ServiceResourceUpdate = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceResourceUpdate
        StatelessServiceProperties = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::StatelessServiceProperties
        StatelessServiceUpdateProperties = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::StatelessServiceUpdateProperties
        StatefulServiceProperties = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::StatefulServiceProperties
        StatefulServiceUpdateProperties = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::StatefulServiceUpdateProperties
        Cluster = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::Cluster
        CertificateDescription = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::CertificateDescription
        OperationListResult = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::OperationListResult
        ProxyResource = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ProxyResource
        OperationResult = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::OperationResult
        Resource = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::Resource
        ProvisioningState = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ProvisioningState
        ServicePropertiesBase = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServicePropertiesBase
        ErrorModel = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ErrorModel
        ServiceTypeHealthPolicyMapItem = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceTypeHealthPolicyMapItem
        ApplicationMetricDescription = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationMetricDescription
        ServiceCorrelationDescription = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceCorrelationDescription
        ServicePlacementPolicyDescription = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServicePlacementPolicyDescription
        ServiceTypeDeltaHealthPolicy = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceTypeDeltaHealthPolicy
        ApplicationHealthPolicy = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationHealthPolicy
        ClusterUpdateParameters = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ClusterUpdateParameters
        ApplicationParameter = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationParameter
        ClusterCodeVersionsListResult = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ClusterCodeVersionsListResult
        ServiceLoadMetricDescription = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceLoadMetricDescription
        ClusterCodeVersionsResult = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ClusterCodeVersionsResult
        PartitionSchemeDescription = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::PartitionSchemeDescription
        DiagnosticsStorageAccountConfig = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::DiagnosticsStorageAccountConfig
        RollingUpgradeMonitoringPolicy = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::RollingUpgradeMonitoringPolicy
        ClusterUpgradePolicy = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ClusterUpgradePolicy
        AvailableOperationDisplay = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::AvailableOperationDisplay
        ClusterHealthPolicy = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ClusterHealthPolicy
        AzureActiveDirectory = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::AzureActiveDirectory
        ServiceTypeHealthPolicy = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceTypeHealthPolicy
      end

      class ServiceFabricManagementClass
        attr_reader :operations, :clusters, :version, :application_type, :service, :application, :cluster_versions, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::ServiceFabricManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @operations = @client_0.operations
          @clusters = @client_0.clusters
          @version = @client_0.version
          @application_type = @client_0.application_type
          @service = @client_0.service
          @application = @client_0.application
          @cluster_versions = @client_0.cluster_versions

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/ServiceFabric/Mgmt"
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
          def application_type_resource_list
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationTypeResourceList
          end
          def client_certificate_common_name
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ClientCertificateCommonName
          end
          def application_resource_list
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationResourceList
          end
          def client_certificate_thumbprint
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ClientCertificateThumbprint
          end
          def cluster_upgrade_delta_health_policy
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ClusterUpgradeDeltaHealthPolicy
          end
          def cluster_version_details
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ClusterVersionDetails
          end
          def cluster_list_result
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ClusterListResult
          end
          def settings_parameter_description
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::SettingsParameterDescription
          end
          def application_upgrade_policy
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationUpgradePolicy
          end
          def settings_section_description
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::SettingsSectionDescription
          end
          def version_resource_list
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::VersionResourceList
          end
          def endpoint_range_description
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::EndpointRangeDescription
          end
          def service_resource_list
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceResourceList
          end
          def node_type_description
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::NodeTypeDescription
          end
          def named_partition_scheme_description
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::NamedPartitionSchemeDescription
          end
          def singleton_partition_scheme_description
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::SingletonPartitionSchemeDescription
          end
          def uniform_int64_range_partition_scheme_description
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::UniformInt64RangePartitionSchemeDescription
          end
          def application_type_resource
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationTypeResource
          end
          def version_resource
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::VersionResource
          end
          def application_resource
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationResource
          end
          def application_resource_update
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationResourceUpdate
          end
          def service_properties
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceProperties
          end
          def service_resource
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceResource
          end
          def service_update_properties
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceUpdateProperties
          end
          def service_resource_update
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceResourceUpdate
          end
          def stateless_service_properties
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::StatelessServiceProperties
          end
          def stateless_service_update_properties
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::StatelessServiceUpdateProperties
          end
          def stateful_service_properties
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::StatefulServiceProperties
          end
          def stateful_service_update_properties
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::StatefulServiceUpdateProperties
          end
          def cluster
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::Cluster
          end
          def certificate_description
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::CertificateDescription
          end
          def operation_list_result
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::OperationListResult
          end
          def proxy_resource
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ProxyResource
          end
          def operation_result
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::OperationResult
          end
          def resource
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::Resource
          end
          def provisioning_state
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ProvisioningState
          end
          def service_properties_base
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServicePropertiesBase
          end
          def error_model
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ErrorModel
          end
          def service_type_health_policy_map_item
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceTypeHealthPolicyMapItem
          end
          def application_metric_description
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationMetricDescription
          end
          def service_correlation_description
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceCorrelationDescription
          end
          def service_placement_policy_description
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServicePlacementPolicyDescription
          end
          def service_type_delta_health_policy
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceTypeDeltaHealthPolicy
          end
          def application_health_policy
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationHealthPolicy
          end
          def cluster_update_parameters
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ClusterUpdateParameters
          end
          def application_parameter
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationParameter
          end
          def cluster_code_versions_list_result
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ClusterCodeVersionsListResult
          end
          def service_load_metric_description
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceLoadMetricDescription
          end
          def cluster_code_versions_result
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ClusterCodeVersionsResult
          end
          def partition_scheme_description
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::PartitionSchemeDescription
          end
          def diagnostics_storage_account_config
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::DiagnosticsStorageAccountConfig
          end
          def rolling_upgrade_monitoring_policy
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::RollingUpgradeMonitoringPolicy
          end
          def cluster_upgrade_policy
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ClusterUpgradePolicy
          end
          def available_operation_display
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::AvailableOperationDisplay
          end
          def cluster_health_policy
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ClusterHealthPolicy
          end
          def azure_active_directory
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::AzureActiveDirectory
          end
          def service_type_health_policy
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceTypeHealthPolicy
          end
        end
      end
    end
  end
end
