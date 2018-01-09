# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_service_fabric'

module Azure::Profiles::Latest
  module ServiceFabric
    module Mgmt
      Clusters = Azure::ServiceFabric::Mgmt::V2016_09_01::Clusters
      ClusterVersions = Azure::ServiceFabric::Mgmt::V2016_09_01::ClusterVersions
      Operations = Azure::ServiceFabric::Mgmt::V2016_09_01::Operations

      module Models
        ClusterUpgradePolicy = Azure::ServiceFabric::Mgmt::V2016_09_01::Models::ClusterUpgradePolicy
        ClusterVersionDetails = Azure::ServiceFabric::Mgmt::V2016_09_01::Models::ClusterVersionDetails
        DiagnosticsStorageAccountConfig = Azure::ServiceFabric::Mgmt::V2016_09_01::Models::DiagnosticsStorageAccountConfig
        ClusterCodeVersionsListResult = Azure::ServiceFabric::Mgmt::V2016_09_01::Models::ClusterCodeVersionsListResult
        AzureActiveDirectory = Azure::ServiceFabric::Mgmt::V2016_09_01::Models::AzureActiveDirectory
        SettingsParameterDescription = Azure::ServiceFabric::Mgmt::V2016_09_01::Models::SettingsParameterDescription
        ClusterUpdateParameters = Azure::ServiceFabric::Mgmt::V2016_09_01::Models::ClusterUpdateParameters
        EndpointRangeDescription = Azure::ServiceFabric::Mgmt::V2016_09_01::Models::EndpointRangeDescription
        NodeTypeDescription = Azure::ServiceFabric::Mgmt::V2016_09_01::Models::NodeTypeDescription
        ClientCertificateCommonName = Azure::ServiceFabric::Mgmt::V2016_09_01::Models::ClientCertificateCommonName
        ClusterListResult = Azure::ServiceFabric::Mgmt::V2016_09_01::Models::ClusterListResult
        ClusterUpgradeDeltaHealthPolicy = Azure::ServiceFabric::Mgmt::V2016_09_01::Models::ClusterUpgradeDeltaHealthPolicy
        AvailableOperationDisplay = Azure::ServiceFabric::Mgmt::V2016_09_01::Models::AvailableOperationDisplay
        CertificateDescription = Azure::ServiceFabric::Mgmt::V2016_09_01::Models::CertificateDescription
        OperationResult = Azure::ServiceFabric::Mgmt::V2016_09_01::Models::OperationResult
        ClientCertificateThumbprint = Azure::ServiceFabric::Mgmt::V2016_09_01::Models::ClientCertificateThumbprint
        OperationListResult = Azure::ServiceFabric::Mgmt::V2016_09_01::Models::OperationListResult
        ClusterCodeVersionsResult = Azure::ServiceFabric::Mgmt::V2016_09_01::Models::ClusterCodeVersionsResult
        ErrorModelError = Azure::ServiceFabric::Mgmt::V2016_09_01::Models::ErrorModelError
        ClusterHealthPolicy = Azure::ServiceFabric::Mgmt::V2016_09_01::Models::ClusterHealthPolicy
        ErrorModel = Azure::ServiceFabric::Mgmt::V2016_09_01::Models::ErrorModel
        SettingsSectionDescription = Azure::ServiceFabric::Mgmt::V2016_09_01::Models::SettingsSectionDescription
        Resource = Azure::ServiceFabric::Mgmt::V2016_09_01::Models::Resource
        Cluster = Azure::ServiceFabric::Mgmt::V2016_09_01::Models::Cluster
        ProvisioningState = Azure::ServiceFabric::Mgmt::V2016_09_01::Models::ProvisioningState
      end

      class ServiceFabricManagementClass
        attr_reader :clusters, :cluster_versions, :operations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          client_0 = Azure::ServiceFabric::Mgmt::V2016_09_01::ServiceFabricManagementClient.new(configurable.credentials, base_url, options)
          if(client_0.respond_to?(:subscription_id))
            client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(client_0)
          @clusters = client_0.clusters
          @cluster_versions = client_0.cluster_versions
          @operations = client_0.operations

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = 'Profiles/Rollup/Mgmt/ServiceFabric'
          profile_information = "#{profile_information}/Latest"
          client.add_user_agent_information(profile_information)
        end

        class ModelClasses
          def cluster_upgrade_policy
            Azure::ServiceFabric::Mgmt::V2016_09_01::Models::ClusterUpgradePolicy
          end
          def cluster_version_details
            Azure::ServiceFabric::Mgmt::V2016_09_01::Models::ClusterVersionDetails
          end
          def diagnostics_storage_account_config
            Azure::ServiceFabric::Mgmt::V2016_09_01::Models::DiagnosticsStorageAccountConfig
          end
          def cluster_code_versions_list_result
            Azure::ServiceFabric::Mgmt::V2016_09_01::Models::ClusterCodeVersionsListResult
          end
          def azure_active_directory
            Azure::ServiceFabric::Mgmt::V2016_09_01::Models::AzureActiveDirectory
          end
          def settings_parameter_description
            Azure::ServiceFabric::Mgmt::V2016_09_01::Models::SettingsParameterDescription
          end
          def cluster_update_parameters
            Azure::ServiceFabric::Mgmt::V2016_09_01::Models::ClusterUpdateParameters
          end
          def endpoint_range_description
            Azure::ServiceFabric::Mgmt::V2016_09_01::Models::EndpointRangeDescription
          end
          def node_type_description
            Azure::ServiceFabric::Mgmt::V2016_09_01::Models::NodeTypeDescription
          end
          def client_certificate_common_name
            Azure::ServiceFabric::Mgmt::V2016_09_01::Models::ClientCertificateCommonName
          end
          def cluster_list_result
            Azure::ServiceFabric::Mgmt::V2016_09_01::Models::ClusterListResult
          end
          def cluster_upgrade_delta_health_policy
            Azure::ServiceFabric::Mgmt::V2016_09_01::Models::ClusterUpgradeDeltaHealthPolicy
          end
          def available_operation_display
            Azure::ServiceFabric::Mgmt::V2016_09_01::Models::AvailableOperationDisplay
          end
          def certificate_description
            Azure::ServiceFabric::Mgmt::V2016_09_01::Models::CertificateDescription
          end
          def operation_result
            Azure::ServiceFabric::Mgmt::V2016_09_01::Models::OperationResult
          end
          def client_certificate_thumbprint
            Azure::ServiceFabric::Mgmt::V2016_09_01::Models::ClientCertificateThumbprint
          end
          def operation_list_result
            Azure::ServiceFabric::Mgmt::V2016_09_01::Models::OperationListResult
          end
          def cluster_code_versions_result
            Azure::ServiceFabric::Mgmt::V2016_09_01::Models::ClusterCodeVersionsResult
          end
          def error_model_error
            Azure::ServiceFabric::Mgmt::V2016_09_01::Models::ErrorModelError
          end
          def cluster_health_policy
            Azure::ServiceFabric::Mgmt::V2016_09_01::Models::ClusterHealthPolicy
          end
          def error_model
            Azure::ServiceFabric::Mgmt::V2016_09_01::Models::ErrorModel
          end
          def settings_section_description
            Azure::ServiceFabric::Mgmt::V2016_09_01::Models::SettingsSectionDescription
          end
          def resource
            Azure::ServiceFabric::Mgmt::V2016_09_01::Models::Resource
          end
          def cluster
            Azure::ServiceFabric::Mgmt::V2016_09_01::Models::Cluster
          end
          def provisioning_state
            Azure::ServiceFabric::Mgmt::V2016_09_01::Models::ProvisioningState
          end
        end
      end
    end
  end
end
