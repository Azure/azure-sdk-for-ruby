# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_service_fabric'

module Azure::Profiles::Latest
  module ServiceFabric
    module Mgmt
      ApplicationType = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::ApplicationType
      Version = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Version
      Application = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Application
      Service = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Service
      Clusters = Azure::ServiceFabric::Mgmt::V2018_02_01::Clusters
      ClusterVersions = Azure::ServiceFabric::Mgmt::V2018_02_01::ClusterVersions
      Operations = Azure::ServiceFabric::Mgmt::V2018_02_01::Operations

      module Models
        ServicePropertiesBase = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServicePropertiesBase
        ServiceTypeHealthPolicyMapItem = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceTypeHealthPolicyMapItem
        ApplicationMetricDescription = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationMetricDescription
        ServiceCorrelationDescription = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceCorrelationDescription
        ServicePlacementPolicyDescription = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServicePlacementPolicyDescription
        ApplicationParameter = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationParameter
        ServiceLoadMetricDescription = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceLoadMetricDescription
        PartitionSchemeDescription = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::PartitionSchemeDescription
        ProxyResource = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ProxyResource
        RollingUpgradeMonitoringPolicy = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::RollingUpgradeMonitoringPolicy
        ApplicationTypeResourceList = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationTypeResourceList
        ApplicationResourceList = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationResourceList
        ApplicationUpgradePolicy = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationUpgradePolicy
        VersionResourceList = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::VersionResourceList
        ServiceResourceList = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceResourceList
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
        EndpointRangeDescription = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::EndpointRangeDescription
        ServiceTypeDeltaHealthPolicy = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ServiceTypeDeltaHealthPolicy
        NodeTypeDescription = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::NodeTypeDescription
        ServiceTypeHealthPolicy = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ServiceTypeHealthPolicy
        ClusterHealthPolicy = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterHealthPolicy
        AvailableOperationDisplay = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::AvailableOperationDisplay
        ClusterUpgradeDeltaHealthPolicy = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterUpgradeDeltaHealthPolicy
        CertificateDescription = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::CertificateDescription
        ClusterUpgradePolicy = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterUpgradePolicy
        ClientCertificateThumbprint = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClientCertificateThumbprint
        ClusterVersionDetails = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterVersionDetails
        ServerCertificateCommonNames = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ServerCertificateCommonNames
        ClusterCodeVersionsResult = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterCodeVersionsResult
        SettingsParameterDescription = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::SettingsParameterDescription
        ClusterCodeVersionsListResult = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterCodeVersionsListResult
        ApplicationDeltaHealthPolicy = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ApplicationDeltaHealthPolicy
        ClusterListResult = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterListResult
        AzureActiveDirectory = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::AzureActiveDirectory
        ClusterUpdateParameters = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterUpdateParameters
        ServerCertificateCommonName = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ServerCertificateCommonName
        OperationResult = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::OperationResult
        SettingsSectionDescription = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::SettingsSectionDescription
        OperationListResult = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::OperationListResult
        ClientCertificateCommonName = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClientCertificateCommonName
        Resource = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::Resource
        ApplicationHealthPolicy = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ApplicationHealthPolicy
        ErrorModelError = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ErrorModelError
        DiagnosticsStorageAccountConfig = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::DiagnosticsStorageAccountConfig
        ErrorModel = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ErrorModel
        Cluster = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::Cluster
        ProvisioningState = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ProvisioningState
      end

      class ServiceFabricManagementClass
        attr_reader :application_type, :version, :application, :service, :clusters, :cluster_versions, :operations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url = nil, options = nil)
          @configurable = configurable
          @base_url = base_url
          @options = options

          @client_0 = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::ServiceFabricManagementClient.new(configurable.credentials, base_url, options)
          if @client_0.respond_to?(:subscription_id)
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @application_type = @client_0.application_type
          @version = @client_0.version
          @application = @client_0.application
          @service = @client_0.service

          @client_1 = Azure::ServiceFabric::Mgmt::V2018_02_01::ServiceFabricManagementClient.new(configurable.credentials, base_url, options)
          if @client_1.respond_to?(:subscription_id)
            @client_1.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_1)
          @clusters = @client_1.clusters
          @cluster_versions = @client_1.cluster_versions
          @operations = @client_1.operations

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/ServiceFabric/Mgmt"
          client.add_user_agent_information(profile_information)
        end

        def method_missing(method, *args)
          if @client_1.respond_to? method
            @client_1.send(method, *args)
          elsif @client_0.respond_to? method
            @client_0.send(method, *args)
          else
            super
          end
        end

        class ModelClasses
          def service_properties_base
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServicePropertiesBase
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

          def application_parameter
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationParameter
          end

          def service_load_metric_description
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceLoadMetricDescription
          end

          def partition_scheme_description
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::PartitionSchemeDescription
          end

          def proxy_resource
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ProxyResource
          end

          def rolling_upgrade_monitoring_policy
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::RollingUpgradeMonitoringPolicy
          end

          def application_type_resource_list
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationTypeResourceList
          end

          def application_resource_list
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationResourceList
          end

          def application_upgrade_policy
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationUpgradePolicy
          end

          def version_resource_list
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::VersionResourceList
          end

          def service_resource_list
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceResourceList
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

          def endpoint_range_description
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::EndpointRangeDescription
          end

          def service_type_delta_health_policy
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ServiceTypeDeltaHealthPolicy
          end

          def node_type_description
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::NodeTypeDescription
          end

          def service_type_health_policy
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ServiceTypeHealthPolicy
          end

          def cluster_health_policy
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterHealthPolicy
          end

          def available_operation_display
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::AvailableOperationDisplay
          end

          def cluster_upgrade_delta_health_policy
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterUpgradeDeltaHealthPolicy
          end

          def certificate_description
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::CertificateDescription
          end

          def cluster_upgrade_policy
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterUpgradePolicy
          end

          def client_certificate_thumbprint
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClientCertificateThumbprint
          end

          def cluster_version_details
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterVersionDetails
          end

          def server_certificate_common_names
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ServerCertificateCommonNames
          end

          def cluster_code_versions_result
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterCodeVersionsResult
          end

          def settings_parameter_description
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::SettingsParameterDescription
          end

          def cluster_code_versions_list_result
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterCodeVersionsListResult
          end

          def application_delta_health_policy
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ApplicationDeltaHealthPolicy
          end

          def cluster_list_result
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterListResult
          end

          def azure_active_directory
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::AzureActiveDirectory
          end

          def cluster_update_parameters
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterUpdateParameters
          end

          def server_certificate_common_name
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ServerCertificateCommonName
          end

          def operation_result
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::OperationResult
          end

          def settings_section_description
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::SettingsSectionDescription
          end

          def operation_list_result
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::OperationListResult
          end

          def client_certificate_common_name
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClientCertificateCommonName
          end

          def resource
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::Resource
          end

          def application_health_policy
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ApplicationHealthPolicy
          end

          def error_model_error
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ErrorModelError
          end

          def diagnostics_storage_account_config
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::DiagnosticsStorageAccountConfig
          end

          def error_model
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ErrorModel
          end

          def cluster
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::Cluster
          end

          def provisioning_state
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ProvisioningState
          end
        end
      end
    end
  end
end
