# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_container_instance'

module Azure::Profiles::Latest
  module ContainerInstance
    module Mgmt
      ContainerGroupUsage = Azure::ContainerInstance::Mgmt::V2018_10_01::ContainerGroupUsage
      ContainerOperations = Azure::ContainerInstance::Mgmt::V2018_10_01::ContainerOperations
      ServiceAssociationLink = Azure::ContainerInstance::Mgmt::V2018_10_01::ServiceAssociationLink
      Operations = Azure::ContainerInstance::Mgmt::V2018_10_01::Operations
      ContainerGroups = Azure::ContainerInstance::Mgmt::V2018_10_01::ContainerGroups

      module Models
        Container = Azure::ContainerInstance::Mgmt::V2018_10_01::Models::Container
        GitRepoVolume = Azure::ContainerInstance::Mgmt::V2018_10_01::Models::GitRepoVolume
        ContainerGroupIdentityUserAssignedIdentitiesValue = Azure::ContainerInstance::Mgmt::V2018_10_01::Models::ContainerGroupIdentityUserAssignedIdentitiesValue
        ImageRegistryCredential = Azure::ContainerInstance::Mgmt::V2018_10_01::Models::ImageRegistryCredential
        ResourceLimits = Azure::ContainerInstance::Mgmt::V2018_10_01::Models::ResourceLimits
        ContainerHttpGet = Azure::ContainerInstance::Mgmt::V2018_10_01::Models::ContainerHttpGet
        Volume = Azure::ContainerInstance::Mgmt::V2018_10_01::Models::Volume
        ContainerGroupListResult = Azure::ContainerInstance::Mgmt::V2018_10_01::Models::ContainerGroupListResult
        EnvironmentVariable = Azure::ContainerInstance::Mgmt::V2018_10_01::Models::EnvironmentVariable
        Logs = Azure::ContainerInstance::Mgmt::V2018_10_01::Models::Logs
        VolumeMount = Azure::ContainerInstance::Mgmt::V2018_10_01::Models::VolumeMount
        ContainerExecRequestTerminalSize = Azure::ContainerInstance::Mgmt::V2018_10_01::Models::ContainerExecRequestTerminalSize
        ContainerGroupIdentity = Azure::ContainerInstance::Mgmt::V2018_10_01::Models::ContainerGroupIdentity
        Event = Azure::ContainerInstance::Mgmt::V2018_10_01::Models::Event
        ContainerExecRequest = Azure::ContainerInstance::Mgmt::V2018_10_01::Models::ContainerExecRequest
        ContainerExecResponse = Azure::ContainerInstance::Mgmt::V2018_10_01::Models::ContainerExecResponse
        GpuResource = Azure::ContainerInstance::Mgmt::V2018_10_01::Models::GpuResource
        AzureFileVolume = Azure::ContainerInstance::Mgmt::V2018_10_01::Models::AzureFileVolume
        ContainerNetworkProtocol = Azure::ContainerInstance::Mgmt::V2018_10_01::Models::ContainerNetworkProtocol
        GpuSku = Azure::ContainerInstance::Mgmt::V2018_10_01::Models::GpuSku
        ContainerGroup = Azure::ContainerInstance::Mgmt::V2018_10_01::Models::ContainerGroup
        ContainerGroupRestartPolicy = Azure::ContainerInstance::Mgmt::V2018_10_01::Models::ContainerGroupRestartPolicy
        ResourceIdentityType = Azure::ContainerInstance::Mgmt::V2018_10_01::Models::ResourceIdentityType
        ContainerGroupIpAddressType = Azure::ContainerInstance::Mgmt::V2018_10_01::Models::ContainerGroupIpAddressType
        ContainerGroupNetworkProtocol = Azure::ContainerInstance::Mgmt::V2018_10_01::Models::ContainerGroupNetworkProtocol
        ContainerInstanceOperationsOrigin = Azure::ContainerInstance::Mgmt::V2018_10_01::Models::ContainerInstanceOperationsOrigin
        OperatingSystemTypes = Azure::ContainerInstance::Mgmt::V2018_10_01::Models::OperatingSystemTypes
        ContainerProbe = Azure::ContainerInstance::Mgmt::V2018_10_01::Models::ContainerProbe
        LogAnalyticsLogType = Azure::ContainerInstance::Mgmt::V2018_10_01::Models::LogAnalyticsLogType
        UsageListResult = Azure::ContainerInstance::Mgmt::V2018_10_01::Models::UsageListResult
        UsageName = Azure::ContainerInstance::Mgmt::V2018_10_01::Models::UsageName
        LogAnalytics = Azure::ContainerInstance::Mgmt::V2018_10_01::Models::LogAnalytics
        Resource = Azure::ContainerInstance::Mgmt::V2018_10_01::Models::Resource
        OperationDisplay = Azure::ContainerInstance::Mgmt::V2018_10_01::Models::OperationDisplay
        Operation = Azure::ContainerInstance::Mgmt::V2018_10_01::Models::Operation
        OperationListResult = Azure::ContainerInstance::Mgmt::V2018_10_01::Models::OperationListResult
        Port = Azure::ContainerInstance::Mgmt::V2018_10_01::Models::Port
        ContainerPort = Azure::ContainerInstance::Mgmt::V2018_10_01::Models::ContainerPort
        IpAddress = Azure::ContainerInstance::Mgmt::V2018_10_01::Models::IpAddress
        ContainerState = Azure::ContainerInstance::Mgmt::V2018_10_01::Models::ContainerState
        ContainerGroupPropertiesInstanceView = Azure::ContainerInstance::Mgmt::V2018_10_01::Models::ContainerGroupPropertiesInstanceView
        ContainerPropertiesInstanceView = Azure::ContainerInstance::Mgmt::V2018_10_01::Models::ContainerPropertiesInstanceView
        ResourceRequests = Azure::ContainerInstance::Mgmt::V2018_10_01::Models::ResourceRequests
        ContainerGroupDiagnostics = Azure::ContainerInstance::Mgmt::V2018_10_01::Models::ContainerGroupDiagnostics
        ResourceRequirements = Azure::ContainerInstance::Mgmt::V2018_10_01::Models::ResourceRequirements
        ContainerGroupNetworkProfile = Azure::ContainerInstance::Mgmt::V2018_10_01::Models::ContainerGroupNetworkProfile
        ContainerExec = Azure::ContainerInstance::Mgmt::V2018_10_01::Models::ContainerExec
        DnsConfiguration = Azure::ContainerInstance::Mgmt::V2018_10_01::Models::DnsConfiguration
        Usage = Azure::ContainerInstance::Mgmt::V2018_10_01::Models::Usage
      end

      class ContainerInstanceManagementClass
        attr_reader :container_group_usage, :container_operations, :service_association_link, :operations, :container_groups, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::ContainerInstance::Mgmt::V2018_10_01::ContainerInstanceManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @container_group_usage = @client_0.container_group_usage
          @container_operations = @client_0.container_operations
          @service_association_link = @client_0.service_association_link
          @operations = @client_0.operations
          @container_groups = @client_0.container_groups

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/ContainerInstance/Mgmt"
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
          def container
            Azure::ContainerInstance::Mgmt::V2018_10_01::Models::Container
          end
          def git_repo_volume
            Azure::ContainerInstance::Mgmt::V2018_10_01::Models::GitRepoVolume
          end
          def container_group_identity_user_assigned_identities_value
            Azure::ContainerInstance::Mgmt::V2018_10_01::Models::ContainerGroupIdentityUserAssignedIdentitiesValue
          end
          def image_registry_credential
            Azure::ContainerInstance::Mgmt::V2018_10_01::Models::ImageRegistryCredential
          end
          def resource_limits
            Azure::ContainerInstance::Mgmt::V2018_10_01::Models::ResourceLimits
          end
          def container_http_get
            Azure::ContainerInstance::Mgmt::V2018_10_01::Models::ContainerHttpGet
          end
          def volume
            Azure::ContainerInstance::Mgmt::V2018_10_01::Models::Volume
          end
          def container_group_list_result
            Azure::ContainerInstance::Mgmt::V2018_10_01::Models::ContainerGroupListResult
          end
          def environment_variable
            Azure::ContainerInstance::Mgmt::V2018_10_01::Models::EnvironmentVariable
          end
          def logs
            Azure::ContainerInstance::Mgmt::V2018_10_01::Models::Logs
          end
          def volume_mount
            Azure::ContainerInstance::Mgmt::V2018_10_01::Models::VolumeMount
          end
          def container_exec_request_terminal_size
            Azure::ContainerInstance::Mgmt::V2018_10_01::Models::ContainerExecRequestTerminalSize
          end
          def container_group_identity
            Azure::ContainerInstance::Mgmt::V2018_10_01::Models::ContainerGroupIdentity
          end
          def event
            Azure::ContainerInstance::Mgmt::V2018_10_01::Models::Event
          end
          def container_exec_request
            Azure::ContainerInstance::Mgmt::V2018_10_01::Models::ContainerExecRequest
          end
          def container_exec_response
            Azure::ContainerInstance::Mgmt::V2018_10_01::Models::ContainerExecResponse
          end
          def gpu_resource
            Azure::ContainerInstance::Mgmt::V2018_10_01::Models::GpuResource
          end
          def azure_file_volume
            Azure::ContainerInstance::Mgmt::V2018_10_01::Models::AzureFileVolume
          end
          def container_network_protocol
            Azure::ContainerInstance::Mgmt::V2018_10_01::Models::ContainerNetworkProtocol
          end
          def gpu_sku
            Azure::ContainerInstance::Mgmt::V2018_10_01::Models::GpuSku
          end
          def container_group
            Azure::ContainerInstance::Mgmt::V2018_10_01::Models::ContainerGroup
          end
          def container_group_restart_policy
            Azure::ContainerInstance::Mgmt::V2018_10_01::Models::ContainerGroupRestartPolicy
          end
          def resource_identity_type
            Azure::ContainerInstance::Mgmt::V2018_10_01::Models::ResourceIdentityType
          end
          def container_group_ip_address_type
            Azure::ContainerInstance::Mgmt::V2018_10_01::Models::ContainerGroupIpAddressType
          end
          def container_group_network_protocol
            Azure::ContainerInstance::Mgmt::V2018_10_01::Models::ContainerGroupNetworkProtocol
          end
          def container_instance_operations_origin
            Azure::ContainerInstance::Mgmt::V2018_10_01::Models::ContainerInstanceOperationsOrigin
          end
          def operating_system_types
            Azure::ContainerInstance::Mgmt::V2018_10_01::Models::OperatingSystemTypes
          end
          def container_probe
            Azure::ContainerInstance::Mgmt::V2018_10_01::Models::ContainerProbe
          end
          def log_analytics_log_type
            Azure::ContainerInstance::Mgmt::V2018_10_01::Models::LogAnalyticsLogType
          end
          def usage_list_result
            Azure::ContainerInstance::Mgmt::V2018_10_01::Models::UsageListResult
          end
          def usage_name
            Azure::ContainerInstance::Mgmt::V2018_10_01::Models::UsageName
          end
          def log_analytics
            Azure::ContainerInstance::Mgmt::V2018_10_01::Models::LogAnalytics
          end
          def resource
            Azure::ContainerInstance::Mgmt::V2018_10_01::Models::Resource
          end
          def operation_display
            Azure::ContainerInstance::Mgmt::V2018_10_01::Models::OperationDisplay
          end
          def operation
            Azure::ContainerInstance::Mgmt::V2018_10_01::Models::Operation
          end
          def operation_list_result
            Azure::ContainerInstance::Mgmt::V2018_10_01::Models::OperationListResult
          end
          def port
            Azure::ContainerInstance::Mgmt::V2018_10_01::Models::Port
          end
          def container_port
            Azure::ContainerInstance::Mgmt::V2018_10_01::Models::ContainerPort
          end
          def ip_address
            Azure::ContainerInstance::Mgmt::V2018_10_01::Models::IpAddress
          end
          def container_state
            Azure::ContainerInstance::Mgmt::V2018_10_01::Models::ContainerState
          end
          def container_group_properties_instance_view
            Azure::ContainerInstance::Mgmt::V2018_10_01::Models::ContainerGroupPropertiesInstanceView
          end
          def container_properties_instance_view
            Azure::ContainerInstance::Mgmt::V2018_10_01::Models::ContainerPropertiesInstanceView
          end
          def resource_requests
            Azure::ContainerInstance::Mgmt::V2018_10_01::Models::ResourceRequests
          end
          def container_group_diagnostics
            Azure::ContainerInstance::Mgmt::V2018_10_01::Models::ContainerGroupDiagnostics
          end
          def resource_requirements
            Azure::ContainerInstance::Mgmt::V2018_10_01::Models::ResourceRequirements
          end
          def container_group_network_profile
            Azure::ContainerInstance::Mgmt::V2018_10_01::Models::ContainerGroupNetworkProfile
          end
          def container_exec
            Azure::ContainerInstance::Mgmt::V2018_10_01::Models::ContainerExec
          end
          def dns_configuration
            Azure::ContainerInstance::Mgmt::V2018_10_01::Models::DnsConfiguration
          end
          def usage
            Azure::ContainerInstance::Mgmt::V2018_10_01::Models::Usage
          end
        end
      end
    end
  end
end
