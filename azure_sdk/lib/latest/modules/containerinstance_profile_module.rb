# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_container_instance'

module Azure::Profiles::Latest
  module ContainerInstance
    module Mgmt
      ContainerGroups = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::ContainerGroups
      Operations = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Operations
      ContainerGroupUsage = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::ContainerGroupUsage
      ContainerLogs = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::ContainerLogs
      StartContainer = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::StartContainer

      module Models
        IpAddress = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::IpAddress
        ContainerPort = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ContainerPort
        ContainerGroupPropertiesInstanceView = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ContainerGroupPropertiesInstanceView
        ContainerState = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ContainerState
        Event = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::Event
        ResourceRequests = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ResourceRequests
        OperationDisplay = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::OperationDisplay
        ResourceRequirements = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ResourceRequirements
        Operation = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::Operation
        Container = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::Container
        OperationListResult = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::OperationListResult
        GitRepoVolume = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::GitRepoVolume
        UsageName = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::UsageName
        ImageRegistryCredential = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ImageRegistryCredential
        Usage = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::Usage
        EnvironmentVariable = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::EnvironmentVariable
        UsageListResult = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::UsageListResult
        ResourceLimits = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ResourceLimits
        ContainerGroupListResult = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ContainerGroupListResult
        AzureFileVolume = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::AzureFileVolume
        Logs = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::Logs
        Port = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::Port
        ContainerExecRequestTerminalSize = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ContainerExecRequestTerminalSize
        VolumeMount = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::VolumeMount
        ContainerExecRequest = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ContainerExecRequest
        ContainerPropertiesInstanceView = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ContainerPropertiesInstanceView
        ContainerExecResponse = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ContainerExecResponse
        Volume = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::Volume
        Resource = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::Resource
        ContainerGroup = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ContainerGroup
        ContainerNetworkProtocol = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ContainerNetworkProtocol
        ContainerGroupRestartPolicy = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ContainerGroupRestartPolicy
        ContainerGroupNetworkProtocol = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ContainerGroupNetworkProtocol
        OperatingSystemTypes = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::OperatingSystemTypes
        ContainerInstanceOperationsOrigin = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ContainerInstanceOperationsOrigin
      end

      class ContainerInstanceManagementClass
        attr_reader :container_groups, :operations, :container_group_usage, :container_logs, :start_container, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::ContainerInstanceManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @container_groups = @client_0.container_groups
          @operations = @client_0.operations
          @container_group_usage = @client_0.container_group_usage
          @container_logs = @client_0.container_logs
          @start_container = @client_0.start_container

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
          def ip_address
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::IpAddress
          end
          def container_port
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ContainerPort
          end
          def container_group_properties_instance_view
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ContainerGroupPropertiesInstanceView
          end
          def container_state
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ContainerState
          end
          def event
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::Event
          end
          def resource_requests
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ResourceRequests
          end
          def operation_display
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::OperationDisplay
          end
          def resource_requirements
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ResourceRequirements
          end
          def operation
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::Operation
          end
          def container
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::Container
          end
          def operation_list_result
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::OperationListResult
          end
          def git_repo_volume
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::GitRepoVolume
          end
          def usage_name
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::UsageName
          end
          def image_registry_credential
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ImageRegistryCredential
          end
          def usage
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::Usage
          end
          def environment_variable
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::EnvironmentVariable
          end
          def usage_list_result
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::UsageListResult
          end
          def resource_limits
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ResourceLimits
          end
          def container_group_list_result
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ContainerGroupListResult
          end
          def azure_file_volume
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::AzureFileVolume
          end
          def logs
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::Logs
          end
          def port
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::Port
          end
          def container_exec_request_terminal_size
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ContainerExecRequestTerminalSize
          end
          def volume_mount
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::VolumeMount
          end
          def container_exec_request
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ContainerExecRequest
          end
          def container_properties_instance_view
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ContainerPropertiesInstanceView
          end
          def container_exec_response
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ContainerExecResponse
          end
          def volume
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::Volume
          end
          def resource
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::Resource
          end
          def container_group
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ContainerGroup
          end
          def container_network_protocol
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ContainerNetworkProtocol
          end
          def container_group_restart_policy
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ContainerGroupRestartPolicy
          end
          def container_group_network_protocol
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ContainerGroupNetworkProtocol
          end
          def operating_system_types
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::OperatingSystemTypes
          end
          def container_instance_operations_origin
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ContainerInstanceOperationsOrigin
          end
        end
      end
    end
  end
end
