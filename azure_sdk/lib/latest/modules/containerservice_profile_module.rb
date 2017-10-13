# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_container_service'

module Azure::Profiles::Latest
  module ContainerService::Mgmt
    ContainerServices = Azure::ContainerService::Mgmt::V2017_01_31::ContainerServices

    module Models
      ContainerServiceSshPublicKey = Azure::ContainerService::Mgmt::V2017_01_31::Models::ContainerServiceSshPublicKey
      Resource = Azure::ContainerService::Mgmt::V2017_01_31::Models::Resource
      ContainerServiceSshConfiguration = Azure::ContainerService::Mgmt::V2017_01_31::Models::ContainerServiceSshConfiguration
      ContainerServiceServicePrincipalProfile = Azure::ContainerService::Mgmt::V2017_01_31::Models::ContainerServiceServicePrincipalProfile
      ContainerServiceLinuxProfile = Azure::ContainerService::Mgmt::V2017_01_31::Models::ContainerServiceLinuxProfile
      ContainerServiceMasterProfile = Azure::ContainerService::Mgmt::V2017_01_31::Models::ContainerServiceMasterProfile
      ContainerServiceVMDiagnostics = Azure::ContainerService::Mgmt::V2017_01_31::Models::ContainerServiceVMDiagnostics
      ContainerServiceWindowsProfile = Azure::ContainerService::Mgmt::V2017_01_31::Models::ContainerServiceWindowsProfile
      ContainerServiceDiagnosticsProfile = Azure::ContainerService::Mgmt::V2017_01_31::Models::ContainerServiceDiagnosticsProfile
      ContainerServiceOrchestratorProfile = Azure::ContainerService::Mgmt::V2017_01_31::Models::ContainerServiceOrchestratorProfile
      ContainerServiceAgentPoolProfile = Azure::ContainerService::Mgmt::V2017_01_31::Models::ContainerServiceAgentPoolProfile
      ContainerServiceCustomProfile = Azure::ContainerService::Mgmt::V2017_01_31::Models::ContainerServiceCustomProfile
      ContainerServiceListResult = Azure::ContainerService::Mgmt::V2017_01_31::Models::ContainerServiceListResult
      ContainerService = Azure::ContainerService::Mgmt::V2017_01_31::Models::ContainerService
      ContainerServiceOrchestratorTypes = Azure::ContainerService::Mgmt::V2017_01_31::Models::ContainerServiceOrchestratorTypes
      ContainerServiceVMSizeTypes = Azure::ContainerService::Mgmt::V2017_01_31::Models::ContainerServiceVMSizeTypes
    end

    #
    # ContainerService
    #
    class ContainerServiceClass
      attr_reader :container_services, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        client_0 = Azure::ContainerService::Mgmt::V2017_01_31::ComputeManagementClient.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        @container_services = client_0.container_services

        @model_classes = ModelClasses.new
      end

      #
      # Method to get the client object
      #
      # @return Client object
      #
      def get_client(version = '2017-01-31')
        case version
          when '2017-01-31'
            client = Azure::ContainerService::Mgmt::V2017_01_31::ComputeManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def container_service_ssh_public_key
          Azure::ContainerService::Mgmt::V2017_01_31::Models::ContainerServiceSshPublicKey
        end
        def resource
          Azure::ContainerService::Mgmt::V2017_01_31::Models::Resource
        end
        def container_service_ssh_configuration
          Azure::ContainerService::Mgmt::V2017_01_31::Models::ContainerServiceSshConfiguration
        end
        def container_service_service_principal_profile
          Azure::ContainerService::Mgmt::V2017_01_31::Models::ContainerServiceServicePrincipalProfile
        end
        def container_service_linux_profile
          Azure::ContainerService::Mgmt::V2017_01_31::Models::ContainerServiceLinuxProfile
        end
        def container_service_master_profile
          Azure::ContainerService::Mgmt::V2017_01_31::Models::ContainerServiceMasterProfile
        end
        def container_service_vmdiagnostics
          Azure::ContainerService::Mgmt::V2017_01_31::Models::ContainerServiceVMDiagnostics
        end
        def container_service_windows_profile
          Azure::ContainerService::Mgmt::V2017_01_31::Models::ContainerServiceWindowsProfile
        end
        def container_service_diagnostics_profile
          Azure::ContainerService::Mgmt::V2017_01_31::Models::ContainerServiceDiagnosticsProfile
        end
        def container_service_orchestrator_profile
          Azure::ContainerService::Mgmt::V2017_01_31::Models::ContainerServiceOrchestratorProfile
        end
        def container_service_agent_pool_profile
          Azure::ContainerService::Mgmt::V2017_01_31::Models::ContainerServiceAgentPoolProfile
        end
        def container_service_custom_profile
          Azure::ContainerService::Mgmt::V2017_01_31::Models::ContainerServiceCustomProfile
        end
        def container_service_list_result
          Azure::ContainerService::Mgmt::V2017_01_31::Models::ContainerServiceListResult
        end
        def container_service
          Azure::ContainerService::Mgmt::V2017_01_31::Models::ContainerService
        end
        def container_service_orchestrator_types
          Azure::ContainerService::Mgmt::V2017_01_31::Models::ContainerServiceOrchestratorTypes
        end
        def container_service_vmsize_types
          Azure::ContainerService::Mgmt::V2017_01_31::Models::ContainerServiceVMSizeTypes
        end
      end
    end
  end
end
