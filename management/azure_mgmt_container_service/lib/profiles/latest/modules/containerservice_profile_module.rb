# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_container_service'

module Azure::ContainerService::Profiles::Latest
  module Mgmt
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
      ContainerServiceOrchestratorTypes = Azure::ContainerService::Mgmt::V2017_01_31::Models::ContainerServiceOrchestratorTypes
      ContainerServiceVMSizeTypes = Azure::ContainerService::Mgmt::V2017_01_31::Models::ContainerServiceVMSizeTypes
      ContainerService = Azure::ContainerService::Mgmt::V2017_01_31::Models::ContainerService
    end

    #
    # ContainerServiceManagementClass
    #
    class ContainerServiceManagementClass
      attr_reader :container_services, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::ContainerService::Mgmt::V2017_01_31::ContainerServiceClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @container_services = @client_0.container_services

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/ContainerService/Mgmt'
        client.add_user_agent_information(profile_information)
      end

      def method_missing(method, *args)
        if @client_0.respond_to?method
          @client_0.send(method, *args)
        else
          super
        end
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
      def container_service_orchestrator_types
        Azure::ContainerService::Mgmt::V2017_01_31::Models::ContainerServiceOrchestratorTypes
      end
      def container_service_vmsize_types
        Azure::ContainerService::Mgmt::V2017_01_31::Models::ContainerServiceVMSizeTypes
      end
      def container_service
        Azure::ContainerService::Mgmt::V2017_01_31::Models::ContainerService
      end
    end
  end
end
