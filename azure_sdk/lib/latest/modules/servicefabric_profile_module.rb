# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_service_fabric'

module Azure::Profiles::Latest
  module ServiceFabric
    module Mgmt
      ApplicationType = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::ApplicationType
      Service = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Service
      Version = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Version
      Application = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Application
      Operations = Azure::ServiceFabric::Mgmt::V2018_02_01::Operations
      Clusters = Azure::ServiceFabric::Mgmt::V2018_02_01::Clusters
      ClusterVersions = Azure::ServiceFabric::Mgmt::V2018_02_01::ClusterVersions

      module Models
        ServicePropertiesBase = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServicePropertiesBase
        ServiceTypeHealthPolicyMapItem = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceTypeHealthPolicyMapItem
        ApplicationMetricDescription = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationMetricDescription
        ServiceCorrelationDescription = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceCorrelationDescription
        ServicePlacementPolicyDescription = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServicePlacementPolicyDescription
        ApplicationParameter = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationParameter
        ServiceLoadMetricDescription = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceLoadMetricDescription
        RollingUpgradeMonitoringPolicy = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::RollingUpgradeMonitoringPolicy
        PartitionSchemeDescription = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::PartitionSchemeDescription
        ApplicationTypeResourceList = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationTypeResourceList
        ApplicationResourceList = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationResourceList
        ApplicationUpgradePolicy = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationUpgradePolicy
        VersionResourceList = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::VersionResourceList
        ServiceResourceList = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceResourceList
        NamedPartitionSchemeDescription = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::NamedPartitionSchemeDescription
        UniformInt64RangePartitionSchemeDescription = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::UniformInt64RangePartitionSchemeDescription
        SingletonPartitionSchemeDescription = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::SingletonPartitionSchemeDescription
        VersionResource = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::VersionResource
        ApplicationTypeResource = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationTypeResource
        ApplicationResource = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationResource
        ApplicationResourceUpdate = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationResourceUpdate
        ServiceProperties = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceProperties
        ServiceResource = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceResource
        ServiceResourceUpdate = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceResourceUpdate
        StatelessServiceProperties = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::StatelessServiceProperties
        ServiceUpdateProperties = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceUpdateProperties
        StatefulServiceProperties = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::StatefulServiceProperties
        StatefulServiceUpdateProperties = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::StatefulServiceUpdateProperties
        StatelessServiceUpdateProperties = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::StatelessServiceUpdateProperties
        ProxyResource = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ProxyResource
        ClusterVersionDetails = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterVersionDetails
        SettingsParameterDescription = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::SettingsParameterDescription
        ApplicationHealthPolicy = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ApplicationHealthPolicy
        SettingsSectionDescription = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::SettingsSectionDescription
        Cluster = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::Cluster
        EndpointRangeDescription = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::EndpointRangeDescription
        NodeTypeDescription = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::NodeTypeDescription
        Resource = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::Resource
        ProvisioningState = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ProvisioningState
        OperationListResult = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::OperationListResult
        ErrorModel = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ErrorModel
        ServerCertificateCommonNames = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ServerCertificateCommonNames
        ServiceTypeDeltaHealthPolicy = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ServiceTypeDeltaHealthPolicy
        OperationResult = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::OperationResult
        ClusterUpdateParameters = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterUpdateParameters
        ApplicationDeltaHealthPolicy = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ApplicationDeltaHealthPolicy
        ClusterCodeVersionsListResult = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterCodeVersionsListResult
        ErrorModelError = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ErrorModelError
        ClusterCodeVersionsResult = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterCodeVersionsResult
        ServerCertificateCommonName = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ServerCertificateCommonName
        DiagnosticsStorageAccountConfig = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::DiagnosticsStorageAccountConfig
        ClusterUpgradePolicy = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterUpgradePolicy
        AvailableOperationDisplay = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::AvailableOperationDisplay
        ClusterHealthPolicy = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterHealthPolicy
        AzureActiveDirectory = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::AzureActiveDirectory
        ServiceTypeHealthPolicy = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ServiceTypeHealthPolicy
        CertificateDescription = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::CertificateDescription
        ClusterListResult = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterListResult
        ClientCertificateCommonName = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClientCertificateCommonName
        ClientCertificateThumbprint = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClientCertificateThumbprint
        ClusterUpgradeDeltaHealthPolicy = Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterUpgradeDeltaHealthPolicy
      end

      class ServiceFabricManagementClass
        attr_reader :application_type, :service, :version, :application, :operations, :clusters, :cluster_versions, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::ServiceFabric::Mgmt::V2017_07_01_preview::ServiceFabricManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @application_type = @client_0.application_type
          @service = @client_0.service
          @version = @client_0.version
          @application = @client_0.application

          @client_1 = Azure::ServiceFabric::Mgmt::V2018_02_01::ServiceFabricManagementClient.new(configurable.credentials, base_url, options)
          if(@client_1.respond_to?(:subscription_id))
            @client_1.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_1)
          @operations = @client_1.operations
          @clusters = @client_1.clusters
          @cluster_versions = @client_1.cluster_versions

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/ServiceFabric/Mgmt"
          client.add_user_agent_information(profile_information)
        end

        def method_missing(method, *args)
          if @client_1.respond_to?method
            @client_1.send(method, *args)
          elsif @client_0.respond_to?method
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
          def rolling_upgrade_monitoring_policy
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::RollingUpgradeMonitoringPolicy
          end
          def partition_scheme_description
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::PartitionSchemeDescription
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
          def uniform_int64_range_partition_scheme_description
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::UniformInt64RangePartitionSchemeDescription
          end
          def singleton_partition_scheme_description
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::SingletonPartitionSchemeDescription
          end
          def version_resource
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::VersionResource
          end
          def application_type_resource
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ApplicationTypeResource
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
          def service_resource_update
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceResourceUpdate
          end
          def stateless_service_properties
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::StatelessServiceProperties
          end
          def service_update_properties
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ServiceUpdateProperties
          end
          def stateful_service_properties
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::StatefulServiceProperties
          end
          def stateful_service_update_properties
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::StatefulServiceUpdateProperties
          end
          def stateless_service_update_properties
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::StatelessServiceUpdateProperties
          end
          def proxy_resource
            Azure::ServiceFabric::Mgmt::V2017_07_01_preview::Models::ProxyResource
          end
          def cluster_version_details
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterVersionDetails
          end
          def settings_parameter_description
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::SettingsParameterDescription
          end
          def application_health_policy
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ApplicationHealthPolicy
          end
          def settings_section_description
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::SettingsSectionDescription
          end
          def cluster
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::Cluster
          end
          def endpoint_range_description
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::EndpointRangeDescription
          end
          def node_type_description
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::NodeTypeDescription
          end
          def resource
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::Resource
          end
          def provisioning_state
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ProvisioningState
          end
          def operation_list_result
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::OperationListResult
          end
          def error_model
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ErrorModel
          end
          def server_certificate_common_names
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ServerCertificateCommonNames
          end
          def service_type_delta_health_policy
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ServiceTypeDeltaHealthPolicy
          end
          def operation_result
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::OperationResult
          end
          def cluster_update_parameters
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterUpdateParameters
          end
          def application_delta_health_policy
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ApplicationDeltaHealthPolicy
          end
          def cluster_code_versions_list_result
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterCodeVersionsListResult
          end
          def error_model_error
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ErrorModelError
          end
          def cluster_code_versions_result
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterCodeVersionsResult
          end
          def server_certificate_common_name
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ServerCertificateCommonName
          end
          def diagnostics_storage_account_config
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::DiagnosticsStorageAccountConfig
          end
          def cluster_upgrade_policy
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterUpgradePolicy
          end
          def available_operation_display
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::AvailableOperationDisplay
          end
          def cluster_health_policy
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterHealthPolicy
          end
          def azure_active_directory
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::AzureActiveDirectory
          end
          def service_type_health_policy
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ServiceTypeHealthPolicy
          end
          def certificate_description
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::CertificateDescription
          end
          def cluster_list_result
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterListResult
          end
          def client_certificate_common_name
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClientCertificateCommonName
          end
          def client_certificate_thumbprint
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClientCertificateThumbprint
          end
          def cluster_upgrade_delta_health_policy
            Azure::ServiceFabric::Mgmt::V2018_02_01::Models::ClusterUpgradeDeltaHealthPolicy
          end
        end
      end
    end
  end
end
