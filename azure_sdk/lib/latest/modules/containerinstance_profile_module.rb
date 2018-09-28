# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_container_instance'

module Azure::Profiles::Latest
  module ContainerInstance
    module Mgmt
      Operations = Azure::ContainerInstance::Mgmt::V2018_06_01::Operations
      ContainerGroups = Azure::ContainerInstance::Mgmt::V2018_06_01::ContainerGroups
      ContainerGroupUsage = Azure::ContainerInstance::Mgmt::V2018_06_01::ContainerGroupUsage
      ContainerOperations = Azure::ContainerInstance::Mgmt::V2018_06_01::ContainerOperations

      module Models
        ContainerProbe = Azure::ContainerInstance::Mgmt::V2018_06_01::Models::ContainerProbe
        Logs = Azure::ContainerInstance::Mgmt::V2018_06_01::Models::Logs
        Volume = Azure::ContainerInstance::Mgmt::V2018_06_01::Models::Volume
        ContainerExecRequestTerminalSize = Azure::ContainerInstance::Mgmt::V2018_06_01::Models::ContainerExecRequestTerminalSize
        Operation = Azure::ContainerInstance::Mgmt::V2018_06_01::Models::Operation
        ContainerExecRequest = Azure::ContainerInstance::Mgmt::V2018_06_01::Models::ContainerExecRequest
        AzureFileVolume = Azure::ContainerInstance::Mgmt::V2018_06_01::Models::AzureFileVolume
        ContainerPropertiesInstanceView = Azure::ContainerInstance::Mgmt::V2018_06_01::Models::ContainerPropertiesInstanceView
        ContainerExec = Azure::ContainerInstance::Mgmt::V2018_06_01::Models::ContainerExec
        ContainerExecResponse = Azure::ContainerInstance::Mgmt::V2018_06_01::Models::ContainerExecResponse
        ContainerPort = Azure::ContainerInstance::Mgmt::V2018_06_01::Models::ContainerPort
        Event = Azure::ContainerInstance::Mgmt::V2018_06_01::Models::Event
        ContainerNetworkProtocol = Azure::ContainerInstance::Mgmt::V2018_06_01::Models::ContainerNetworkProtocol
        ContainerGroupRestartPolicy = Azure::ContainerInstance::Mgmt::V2018_06_01::Models::ContainerGroupRestartPolicy
        ContainerGroup = Azure::ContainerInstance::Mgmt::V2018_06_01::Models::ContainerGroup
        ContainerInstanceOperationsOrigin = Azure::ContainerInstance::Mgmt::V2018_06_01::Models::ContainerInstanceOperationsOrigin
        ContainerGroupNetworkProtocol = Azure::ContainerInstance::Mgmt::V2018_06_01::Models::ContainerGroupNetworkProtocol
        UsageName = Azure::ContainerInstance::Mgmt::V2018_06_01::Models::UsageName
        Usage = Azure::ContainerInstance::Mgmt::V2018_06_01::Models::Usage
        UsageListResult = Azure::ContainerInstance::Mgmt::V2018_06_01::Models::UsageListResult
        LogAnalytics = Azure::ContainerInstance::Mgmt::V2018_06_01::Models::LogAnalytics
        Resource = Azure::ContainerInstance::Mgmt::V2018_06_01::Models::Resource
        OperatingSystemTypes = Azure::ContainerInstance::Mgmt::V2018_06_01::Models::OperatingSystemTypes
        Port = Azure::ContainerInstance::Mgmt::V2018_06_01::Models::Port
        IpAddress = Azure::ContainerInstance::Mgmt::V2018_06_01::Models::IpAddress
        EnvironmentVariable = Azure::ContainerInstance::Mgmt::V2018_06_01::Models::EnvironmentVariable
        ContainerGroupPropertiesInstanceView = Azure::ContainerInstance::Mgmt::V2018_06_01::Models::ContainerGroupPropertiesInstanceView
        ResourceRequests = Azure::ContainerInstance::Mgmt::V2018_06_01::Models::ResourceRequests
        ContainerGroupDiagnostics = Azure::ContainerInstance::Mgmt::V2018_06_01::Models::ContainerGroupDiagnostics
        ResourceRequirements = Azure::ContainerInstance::Mgmt::V2018_06_01::Models::ResourceRequirements
        VolumeMount = Azure::ContainerInstance::Mgmt::V2018_06_01::Models::VolumeMount
        ContainerHttpGet = Azure::ContainerInstance::Mgmt::V2018_06_01::Models::ContainerHttpGet
        OperationDisplay = Azure::ContainerInstance::Mgmt::V2018_06_01::Models::OperationDisplay
        GitRepoVolume = Azure::ContainerInstance::Mgmt::V2018_06_01::Models::GitRepoVolume
        ImageRegistryCredential = Azure::ContainerInstance::Mgmt::V2018_06_01::Models::ImageRegistryCredential
        Container = Azure::ContainerInstance::Mgmt::V2018_06_01::Models::Container
        ResourceLimits = Azure::ContainerInstance::Mgmt::V2018_06_01::Models::ResourceLimits
        OperationListResult = Azure::ContainerInstance::Mgmt::V2018_06_01::Models::OperationListResult
        ContainerState = Azure::ContainerInstance::Mgmt::V2018_06_01::Models::ContainerState
        ContainerGroupListResult = Azure::ContainerInstance::Mgmt::V2018_06_01::Models::ContainerGroupListResult
      end

      class ContainerInstanceManagementClass
        attr_reader :operations, :container_groups, :container_group_usage, :container_operations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::ContainerInstance::Mgmt::V2018_06_01::ContainerInstanceManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @operations = @client_0.operations
          @container_groups = @client_0.container_groups
          @container_group_usage = @client_0.container_group_usage
          @container_operations = @client_0.container_operations

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
          def container_probe
            Azure::ContainerInstance::Mgmt::V2018_06_01::Models::ContainerProbe
          end
          def logs
            Azure::ContainerInstance::Mgmt::V2018_06_01::Models::Logs
          end
          def volume
            Azure::ContainerInstance::Mgmt::V2018_06_01::Models::Volume
          end
          def container_exec_request_terminal_size
            Azure::ContainerInstance::Mgmt::V2018_06_01::Models::ContainerExecRequestTerminalSize
          end
          def operation
            Azure::ContainerInstance::Mgmt::V2018_06_01::Models::Operation
          end
          def container_exec_request
            Azure::ContainerInstance::Mgmt::V2018_06_01::Models::ContainerExecRequest
          end
          def azure_file_volume
            Azure::ContainerInstance::Mgmt::V2018_06_01::Models::AzureFileVolume
          end
          def container_properties_instance_view
            Azure::ContainerInstance::Mgmt::V2018_06_01::Models::ContainerPropertiesInstanceView
          end
          def container_exec
            Azure::ContainerInstance::Mgmt::V2018_06_01::Models::ContainerExec
          end
          def container_exec_response
            Azure::ContainerInstance::Mgmt::V2018_06_01::Models::ContainerExecResponse
          end
          def container_port
            Azure::ContainerInstance::Mgmt::V2018_06_01::Models::ContainerPort
          end
          def event
            Azure::ContainerInstance::Mgmt::V2018_06_01::Models::Event
          end
          def container_network_protocol
            Azure::ContainerInstance::Mgmt::V2018_06_01::Models::ContainerNetworkProtocol
          end
          def container_group_restart_policy
            Azure::ContainerInstance::Mgmt::V2018_06_01::Models::ContainerGroupRestartPolicy
          end
          def container_group
            Azure::ContainerInstance::Mgmt::V2018_06_01::Models::ContainerGroup
          end
          def container_instance_operations_origin
            Azure::ContainerInstance::Mgmt::V2018_06_01::Models::ContainerInstanceOperationsOrigin
          end
          def container_group_network_protocol
            Azure::ContainerInstance::Mgmt::V2018_06_01::Models::ContainerGroupNetworkProtocol
          end
          def usage_name
            Azure::ContainerInstance::Mgmt::V2018_06_01::Models::UsageName
          end
          def usage
            Azure::ContainerInstance::Mgmt::V2018_06_01::Models::Usage
          end
          def usage_list_result
            Azure::ContainerInstance::Mgmt::V2018_06_01::Models::UsageListResult
          end
          def log_analytics
            Azure::ContainerInstance::Mgmt::V2018_06_01::Models::LogAnalytics
          end
          def resource
            Azure::ContainerInstance::Mgmt::V2018_06_01::Models::Resource
          end
          def operating_system_types
            Azure::ContainerInstance::Mgmt::V2018_06_01::Models::OperatingSystemTypes
          end
          def port
            Azure::ContainerInstance::Mgmt::V2018_06_01::Models::Port
          end
          def ip_address
            Azure::ContainerInstance::Mgmt::V2018_06_01::Models::IpAddress
          end
          def environment_variable
            Azure::ContainerInstance::Mgmt::V2018_06_01::Models::EnvironmentVariable
          end
          def container_group_properties_instance_view
            Azure::ContainerInstance::Mgmt::V2018_06_01::Models::ContainerGroupPropertiesInstanceView
          end
          def resource_requests
            Azure::ContainerInstance::Mgmt::V2018_06_01::Models::ResourceRequests
          end
          def container_group_diagnostics
            Azure::ContainerInstance::Mgmt::V2018_06_01::Models::ContainerGroupDiagnostics
          end
          def resource_requirements
            Azure::ContainerInstance::Mgmt::V2018_06_01::Models::ResourceRequirements
          end
          def volume_mount
            Azure::ContainerInstance::Mgmt::V2018_06_01::Models::VolumeMount
          end
          def container_http_get
            Azure::ContainerInstance::Mgmt::V2018_06_01::Models::ContainerHttpGet
          end
          def operation_display
            Azure::ContainerInstance::Mgmt::V2018_06_01::Models::OperationDisplay
          end
          def git_repo_volume
            Azure::ContainerInstance::Mgmt::V2018_06_01::Models::GitRepoVolume
          end
          def image_registry_credential
            Azure::ContainerInstance::Mgmt::V2018_06_01::Models::ImageRegistryCredential
          end
          def container
            Azure::ContainerInstance::Mgmt::V2018_06_01::Models::Container
          end
          def resource_limits
            Azure::ContainerInstance::Mgmt::V2018_06_01::Models::ResourceLimits
          end
          def operation_list_result
            Azure::ContainerInstance::Mgmt::V2018_06_01::Models::OperationListResult
          end
          def container_state
            Azure::ContainerInstance::Mgmt::V2018_06_01::Models::ContainerState
          end
          def container_group_list_result
            Azure::ContainerInstance::Mgmt::V2018_06_01::Models::ContainerGroupListResult
          end
        end
      end
    end
  end
end
