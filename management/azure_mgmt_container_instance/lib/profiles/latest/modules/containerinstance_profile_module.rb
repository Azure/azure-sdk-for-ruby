# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_container_instance'

module Azure::ContainerInstance::Profiles::Latest
  module Mgmt
    ContainerGroups = Azure::ContainerInstance::Mgmt::V2019_12_01::ContainerGroups
    Operations = Azure::ContainerInstance::Mgmt::V2019_12_01::Operations
    Location = Azure::ContainerInstance::Mgmt::V2019_12_01::Location
    Containers = Azure::ContainerInstance::Mgmt::V2019_12_01::Containers

    module Models
      ContainerGroupDiagnostics = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::ContainerGroupDiagnostics
      ContainerGroupNetworkProfile = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::ContainerGroupNetworkProfile
      EnvironmentVariable = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::EnvironmentVariable
      DnsConfiguration = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::DnsConfiguration
      Event = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::Event
      EncryptionProperties = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::EncryptionProperties
      GpuResource = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::GpuResource
      InitContainerPropertiesDefinitionInstanceView = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::InitContainerPropertiesDefinitionInstanceView
      ResourceLimits = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::ResourceLimits
      InitContainerDefinition = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::InitContainerDefinition
      VolumeMount = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::VolumeMount
      ContainerExec = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::ContainerExec
      ContainerProbe = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::ContainerProbe
      OperationDisplay = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::OperationDisplay
      AzureFileVolume = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::AzureFileVolume
      Operation = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::Operation
      Volume = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::Volume
      OperationListResult = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::OperationListResult
      ContainerGroupIdentity = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::ContainerGroupIdentity
      UsageName = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::UsageName
      Port = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::Port
      Usage = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::Usage
      ContainerGroupPropertiesInstanceView = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::ContainerGroupPropertiesInstanceView
      UsageListResult = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::UsageListResult
      ContainerPort = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::ContainerPort
      ContainerGroupListResult = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::ContainerGroupListResult
      ContainerPropertiesInstanceView = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::ContainerPropertiesInstanceView
      Logs = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::Logs
      ResourceRequirements = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::ResourceRequirements
      ContainerExecRequestTerminalSize = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::ContainerExecRequestTerminalSize
      Container = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::Container
      ContainerExecRequest = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::ContainerExecRequest
      ContainerGroupIdentityUserAssignedIdentitiesValue = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::ContainerGroupIdentityUserAssignedIdentitiesValue
      ContainerExecResponse = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::ContainerExecResponse
      IpAddress = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::IpAddress
      Resource = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::Resource
      ContainerState = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::ContainerState
      CachedImages = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::CachedImages
      ContainerHttpGet = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::ContainerHttpGet
      CachedImagesListResult = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::CachedImagesListResult
      ImageRegistryCredential = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::ImageRegistryCredential
      CapabilitiesCapabilities = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::CapabilitiesCapabilities
      ResourceRequests = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::ResourceRequests
      Capabilities = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::Capabilities
      LogAnalytics = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::LogAnalytics
      CapabilitiesListResult = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::CapabilitiesListResult
      GitRepoVolume = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::GitRepoVolume
      ContainerGroup = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::ContainerGroup
      ContainerNetworkProtocol = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::ContainerNetworkProtocol
      GpuSku = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::GpuSku
      Scheme = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::Scheme
      ResourceIdentityType = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::ResourceIdentityType
      ContainerGroupRestartPolicy = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::ContainerGroupRestartPolicy
      ContainerGroupNetworkProtocol = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::ContainerGroupNetworkProtocol
      ContainerGroupIpAddressType = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::ContainerGroupIpAddressType
      OperatingSystemTypes = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::OperatingSystemTypes
      LogAnalyticsLogType = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::LogAnalyticsLogType
      ContainerGroupSku = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::ContainerGroupSku
      ContainerInstanceOperationsOrigin = Azure::ContainerInstance::Mgmt::V2019_12_01::Models::ContainerInstanceOperationsOrigin
    end

    #
    # ContainerInstanceManagementClass
    #
    class ContainerInstanceManagementClass
      attr_reader :container_groups, :operations, :location, :containers, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::ContainerInstance::Mgmt::V2019_12_01::ContainerInstanceManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @container_groups = @client_0.container_groups
        @operations = @client_0.operations
        @location = @client_0.location
        @containers = @client_0.containers

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/ContainerInstance/Mgmt'
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
      def container_group_diagnostics
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::ContainerGroupDiagnostics
      end
      def container_group_network_profile
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::ContainerGroupNetworkProfile
      end
      def environment_variable
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::EnvironmentVariable
      end
      def dns_configuration
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::DnsConfiguration
      end
      def event
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::Event
      end
      def encryption_properties
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::EncryptionProperties
      end
      def gpu_resource
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::GpuResource
      end
      def init_container_properties_definition_instance_view
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::InitContainerPropertiesDefinitionInstanceView
      end
      def resource_limits
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::ResourceLimits
      end
      def init_container_definition
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::InitContainerDefinition
      end
      def volume_mount
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::VolumeMount
      end
      def container_exec
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::ContainerExec
      end
      def container_probe
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::ContainerProbe
      end
      def operation_display
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::OperationDisplay
      end
      def azure_file_volume
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::AzureFileVolume
      end
      def operation
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::Operation
      end
      def volume
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::Volume
      end
      def operation_list_result
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::OperationListResult
      end
      def container_group_identity
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::ContainerGroupIdentity
      end
      def usage_name
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::UsageName
      end
      def port
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::Port
      end
      def usage
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::Usage
      end
      def container_group_properties_instance_view
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::ContainerGroupPropertiesInstanceView
      end
      def usage_list_result
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::UsageListResult
      end
      def container_port
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::ContainerPort
      end
      def container_group_list_result
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::ContainerGroupListResult
      end
      def container_properties_instance_view
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::ContainerPropertiesInstanceView
      end
      def logs
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::Logs
      end
      def resource_requirements
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::ResourceRequirements
      end
      def container_exec_request_terminal_size
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::ContainerExecRequestTerminalSize
      end
      def container
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::Container
      end
      def container_exec_request
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::ContainerExecRequest
      end
      def container_group_identity_user_assigned_identities_value
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::ContainerGroupIdentityUserAssignedIdentitiesValue
      end
      def container_exec_response
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::ContainerExecResponse
      end
      def ip_address
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::IpAddress
      end
      def resource
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::Resource
      end
      def container_state
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::ContainerState
      end
      def cached_images
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::CachedImages
      end
      def container_http_get
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::ContainerHttpGet
      end
      def cached_images_list_result
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::CachedImagesListResult
      end
      def image_registry_credential
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::ImageRegistryCredential
      end
      def capabilities_capabilities
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::CapabilitiesCapabilities
      end
      def resource_requests
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::ResourceRequests
      end
      def capabilities
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::Capabilities
      end
      def log_analytics
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::LogAnalytics
      end
      def capabilities_list_result
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::CapabilitiesListResult
      end
      def git_repo_volume
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::GitRepoVolume
      end
      def container_group
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::ContainerGroup
      end
      def container_network_protocol
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::ContainerNetworkProtocol
      end
      def gpu_sku
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::GpuSku
      end
      def scheme
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::Scheme
      end
      def resource_identity_type
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::ResourceIdentityType
      end
      def container_group_restart_policy
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::ContainerGroupRestartPolicy
      end
      def container_group_network_protocol
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::ContainerGroupNetworkProtocol
      end
      def container_group_ip_address_type
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::ContainerGroupIpAddressType
      end
      def operating_system_types
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::OperatingSystemTypes
      end
      def log_analytics_log_type
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::LogAnalyticsLogType
      end
      def container_group_sku
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::ContainerGroupSku
      end
      def container_instance_operations_origin
        Azure::ContainerInstance::Mgmt::V2019_12_01::Models::ContainerInstanceOperationsOrigin
      end
    end
  end
end
