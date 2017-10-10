# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_container_service'

module Azure::ContainerService::Management::Profile_2016_09_30
    ContainerServices = Azure::ARM::ContainerService::Api_2016_09_30::ContainerServices

    module Models
      ContainerServiceSshPublicKey = Azure::ARM::ContainerService::Api_2016_09_30::Models::ContainerServiceSshPublicKey
      ContainerServiceSshConfiguration = Azure::ARM::ContainerService::Api_2016_09_30::Models::ContainerServiceSshConfiguration
      ContainerServiceServicePrincipalProfile = Azure::ARM::ContainerService::Api_2016_09_30::Models::ContainerServiceServicePrincipalProfile
      ContainerServiceLinuxProfile = Azure::ARM::ContainerService::Api_2016_09_30::Models::ContainerServiceLinuxProfile
      ContainerServiceMasterProfile = Azure::ARM::ContainerService::Api_2016_09_30::Models::ContainerServiceMasterProfile
      ContainerServiceVMDiagnostics = Azure::ARM::ContainerService::Api_2016_09_30::Models::ContainerServiceVMDiagnostics
      ContainerServiceWindowsProfile = Azure::ARM::ContainerService::Api_2016_09_30::Models::ContainerServiceWindowsProfile
      ContainerServiceDiagnosticsProfile = Azure::ARM::ContainerService::Api_2016_09_30::Models::ContainerServiceDiagnosticsProfile
      ContainerServiceOrchestratorProfile = Azure::ARM::ContainerService::Api_2016_09_30::Models::ContainerServiceOrchestratorProfile
      ContainerServiceAgentPoolProfile = Azure::ARM::ContainerService::Api_2016_09_30::Models::ContainerServiceAgentPoolProfile
      ContainerServiceCustomProfile = Azure::ARM::ContainerService::Api_2016_09_30::Models::ContainerServiceCustomProfile
      ContainerServiceListResult = Azure::ARM::ContainerService::Api_2016_09_30::Models::ContainerServiceListResult
      ContainerService = Azure::ARM::ContainerService::Api_2016_09_30::Models::ContainerService
      ContainerServiceOchestratorTypes = Azure::ARM::ContainerService::Api_2016_09_30::Models::ContainerServiceOchestratorTypes
      ContainerServiceVMSizeTypes = Azure::ARM::ContainerService::Api_2016_09_30::Models::ContainerServiceVMSizeTypes
    end

    #
    # ContainerService
    #
    class ContainerServiceClass
      attr_accessor :container_services, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::ContainerService::Api_2016_09_30::ContainerServiceClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.container_services = Azure::ARM::ContainerService::Api_2016_09_30::ContainerServices.new(client)
        self.model_classes = ModelClasses.new
      end

      #
      # Method to get the client object
      #
      # @return Client object
      #
      def get_client
        client = Azure::ARM::ContainerService::Api_2016_09_30::ContainerServiceClient.new(@configurable.credentials, @base_url, @options)
        client.subscription_id = configurable.subscription_id
        return client
      end

      class ModelClasses
        def container_service_ssh_public_key
          Azure::ARM::ContainerService::Api_2016_09_30::Models::ContainerServiceSshPublicKey
        end
        def container_service_ssh_configuration
          Azure::ARM::ContainerService::Api_2016_09_30::Models::ContainerServiceSshConfiguration
        end
        def container_service_service_principal_profile
          Azure::ARM::ContainerService::Api_2016_09_30::Models::ContainerServiceServicePrincipalProfile
        end
        def container_service_linux_profile
          Azure::ARM::ContainerService::Api_2016_09_30::Models::ContainerServiceLinuxProfile
        end
        def container_service_master_profile
          Azure::ARM::ContainerService::Api_2016_09_30::Models::ContainerServiceMasterProfile
        end
        def container_service_vmdiagnostics
          Azure::ARM::ContainerService::Api_2016_09_30::Models::ContainerServiceVMDiagnostics
        end
        def container_service_windows_profile
          Azure::ARM::ContainerService::Api_2016_09_30::Models::ContainerServiceWindowsProfile
        end
        def container_service_diagnostics_profile
          Azure::ARM::ContainerService::Api_2016_09_30::Models::ContainerServiceDiagnosticsProfile
        end
        def container_service_orchestrator_profile
          Azure::ARM::ContainerService::Api_2016_09_30::Models::ContainerServiceOrchestratorProfile
        end
        def container_service_agent_pool_profile
          Azure::ARM::ContainerService::Api_2016_09_30::Models::ContainerServiceAgentPoolProfile
        end
        def container_service_custom_profile
          Azure::ARM::ContainerService::Api_2016_09_30::Models::ContainerServiceCustomProfile
        end
        def container_service_list_result
          Azure::ARM::ContainerService::Api_2016_09_30::Models::ContainerServiceListResult
        end
        def container_service
          Azure::ARM::ContainerService::Api_2016_09_30::Models::ContainerService
        end
        def container_service_ochestrator_types
          Azure::ARM::ContainerService::Api_2016_09_30::Models::ContainerServiceOchestratorTypes
        end
        def container_service_vmsize_types
          Azure::ARM::ContainerService::Api_2016_09_30::Models::ContainerServiceVMSizeTypes
        end
      end
    end
end
