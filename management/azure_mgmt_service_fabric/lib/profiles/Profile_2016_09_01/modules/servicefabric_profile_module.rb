# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_service_fabric'


module Azure::Profiles::ServiceFabricModule::Management::Profile_2016_09_01
  module ServiceFabric
    Clusters = Azure::ARM::ServiceFabric::Api_2016_09_01::Clusters
    ClusterVersions = Azure::ARM::ServiceFabric::Api_2016_09_01::ClusterVersions
    Operations = Azure::ARM::ServiceFabric::Api_2016_09_01::Operations

    module Models
      ClusterUpgradePolicy = Azure::ARM::ServiceFabric::Api_2016_09_01::Models::ClusterUpgradePolicy
      ClusterVersionDetails = Azure::ARM::ServiceFabric::Api_2016_09_01::Models::ClusterVersionDetails
      DiagnosticsStorageAccountConfig = Azure::ARM::ServiceFabric::Api_2016_09_01::Models::DiagnosticsStorageAccountConfig
      ClusterCodeVersionsListResult = Azure::ARM::ServiceFabric::Api_2016_09_01::Models::ClusterCodeVersionsListResult
      AzureActiveDirectory = Azure::ARM::ServiceFabric::Api_2016_09_01::Models::AzureActiveDirectory
      SettingsParameterDescription = Azure::ARM::ServiceFabric::Api_2016_09_01::Models::SettingsParameterDescription
      ClusterUpdateParameters = Azure::ARM::ServiceFabric::Api_2016_09_01::Models::ClusterUpdateParameters
      EndpointRangeDescription = Azure::ARM::ServiceFabric::Api_2016_09_01::Models::EndpointRangeDescription
      NodeTypeDescription = Azure::ARM::ServiceFabric::Api_2016_09_01::Models::NodeTypeDescription
      ClientCertificateCommonName = Azure::ARM::ServiceFabric::Api_2016_09_01::Models::ClientCertificateCommonName
      ClusterListResult = Azure::ARM::ServiceFabric::Api_2016_09_01::Models::ClusterListResult
      ClusterUpgradeDeltaHealthPolicy = Azure::ARM::ServiceFabric::Api_2016_09_01::Models::ClusterUpgradeDeltaHealthPolicy
      AvailableOperationDisplay = Azure::ARM::ServiceFabric::Api_2016_09_01::Models::AvailableOperationDisplay
      CertificateDescription = Azure::ARM::ServiceFabric::Api_2016_09_01::Models::CertificateDescription
      OperationResult = Azure::ARM::ServiceFabric::Api_2016_09_01::Models::OperationResult
      ClientCertificateThumbprint = Azure::ARM::ServiceFabric::Api_2016_09_01::Models::ClientCertificateThumbprint
      OperationListResult = Azure::ARM::ServiceFabric::Api_2016_09_01::Models::OperationListResult
      ClusterCodeVersionsResult = Azure::ARM::ServiceFabric::Api_2016_09_01::Models::ClusterCodeVersionsResult
      ErrorModelError = Azure::ARM::ServiceFabric::Api_2016_09_01::Models::ErrorModelError
      ClusterHealthPolicy = Azure::ARM::ServiceFabric::Api_2016_09_01::Models::ClusterHealthPolicy
      ErrorModel = Azure::ARM::ServiceFabric::Api_2016_09_01::Models::ErrorModel
      SettingsSectionDescription = Azure::ARM::ServiceFabric::Api_2016_09_01::Models::SettingsSectionDescription
      Cluster = Azure::ARM::ServiceFabric::Api_2016_09_01::Models::Cluster
      ProvisioningState = Azure::ARM::ServiceFabric::Api_2016_09_01::Models::ProvisioningState
    end

    #
    # ServiceFabric
    #
    class ServiceFabricClass
      attr_accessor :clusters, :cluster_versions, :operations, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::ServiceFabric::Api_2016_09_01::ServiceFabricManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.clusters = Azure::ARM::ServiceFabric::Api_2016_09_01::Clusters.new(client)
        self.cluster_versions = Azure::ARM::ServiceFabric::Api_2016_09_01::ClusterVersions.new(client)
        self.operations = Azure::ARM::ServiceFabric::Api_2016_09_01::Operations.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2016-09-01'
            client = Azure::ARM::ServiceFabric::Api_2016_09_01::ServiceFabricManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def cluster_upgrade_policy
          Azure::ARM::ServiceFabric::Api_2016_09_01::Models::ClusterUpgradePolicy
        end
        def cluster_version_details
          Azure::ARM::ServiceFabric::Api_2016_09_01::Models::ClusterVersionDetails
        end
        def diagnostics_storage_account_config
          Azure::ARM::ServiceFabric::Api_2016_09_01::Models::DiagnosticsStorageAccountConfig
        end
        def cluster_code_versions_list_result
          Azure::ARM::ServiceFabric::Api_2016_09_01::Models::ClusterCodeVersionsListResult
        end
        def azure_active_directory
          Azure::ARM::ServiceFabric::Api_2016_09_01::Models::AzureActiveDirectory
        end
        def settings_parameter_description
          Azure::ARM::ServiceFabric::Api_2016_09_01::Models::SettingsParameterDescription
        end
        def cluster_update_parameters
          Azure::ARM::ServiceFabric::Api_2016_09_01::Models::ClusterUpdateParameters
        end
        def endpoint_range_description
          Azure::ARM::ServiceFabric::Api_2016_09_01::Models::EndpointRangeDescription
        end
        def node_type_description
          Azure::ARM::ServiceFabric::Api_2016_09_01::Models::NodeTypeDescription
        end
        def client_certificate_common_name
          Azure::ARM::ServiceFabric::Api_2016_09_01::Models::ClientCertificateCommonName
        end
        def cluster_list_result
          Azure::ARM::ServiceFabric::Api_2016_09_01::Models::ClusterListResult
        end
        def cluster_upgrade_delta_health_policy
          Azure::ARM::ServiceFabric::Api_2016_09_01::Models::ClusterUpgradeDeltaHealthPolicy
        end
        def available_operation_display
          Azure::ARM::ServiceFabric::Api_2016_09_01::Models::AvailableOperationDisplay
        end
        def certificate_description
          Azure::ARM::ServiceFabric::Api_2016_09_01::Models::CertificateDescription
        end
        def operation_result
          Azure::ARM::ServiceFabric::Api_2016_09_01::Models::OperationResult
        end
        def client_certificate_thumbprint
          Azure::ARM::ServiceFabric::Api_2016_09_01::Models::ClientCertificateThumbprint
        end
        def operation_list_result
          Azure::ARM::ServiceFabric::Api_2016_09_01::Models::OperationListResult
        end
        def cluster_code_versions_result
          Azure::ARM::ServiceFabric::Api_2016_09_01::Models::ClusterCodeVersionsResult
        end
        def error_model_error
          Azure::ARM::ServiceFabric::Api_2016_09_01::Models::ErrorModelError
        end
        def cluster_health_policy
          Azure::ARM::ServiceFabric::Api_2016_09_01::Models::ClusterHealthPolicy
        end
        def error_model
          Azure::ARM::ServiceFabric::Api_2016_09_01::Models::ErrorModel
        end
        def settings_section_description
          Azure::ARM::ServiceFabric::Api_2016_09_01::Models::SettingsSectionDescription
        end
        def cluster
          Azure::ARM::ServiceFabric::Api_2016_09_01::Models::Cluster
        end
        def provisioning_state
          Azure::ARM::ServiceFabric::Api_2016_09_01::Models::ProvisioningState
        end
      end
    end
  end
end
