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

      module Models
        ImageRegistryCredential = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ImageRegistryCredential
        Port = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::Port
        EnvironmentVariable = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::EnvironmentVariable
        IpAddress = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::IpAddress
        Event = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::Event
        ContainerGroupPropertiesInstanceView = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ContainerGroupPropertiesInstanceView
        ResourceRequests = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ResourceRequests
        ResourceLimits = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ResourceLimits
        VolumeMount = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::VolumeMount
        OperationDisplay = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::OperationDisplay
        AzureFileVolume = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::AzureFileVolume
        Operation = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::Operation
        Volume = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::Volume
        OperationListResult = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::OperationListResult
        ContainerState = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ContainerState
        UsageName = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::UsageName
        ResourceRequirements = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ResourceRequirements
        Usage = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::Usage
        GitRepoVolume = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::GitRepoVolume
        UsageListResult = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::UsageListResult
        ContainerPropertiesInstanceView = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ContainerPropertiesInstanceView
        ContainerGroupListResult = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ContainerGroupListResult
        ContainerPort = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ContainerPort
        Logs = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::Logs
        Container = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::Container
        Resource = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::Resource
        ContainerGroup = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ContainerGroup
        ContainerNetworkProtocol = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ContainerNetworkProtocol
        ContainerGroupRestartPolicy = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ContainerGroupRestartPolicy
        ContainerGroupNetworkProtocol = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ContainerGroupNetworkProtocol
        OperatingSystemTypes = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::OperatingSystemTypes
        ContainerInstanceOperationsOrigin = Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ContainerInstanceOperationsOrigin
      end

      class ContainerInstanceManagementClass
        attr_reader :container_groups, :operations, :container_group_usage, :container_logs, :configurable, :base_url, :options, :model_classes

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
          def image_registry_credential
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ImageRegistryCredential
          end
          def port
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::Port
          end
          def environment_variable
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::EnvironmentVariable
          end
          def ip_address
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::IpAddress
          end
          def event
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::Event
          end
          def container_group_properties_instance_view
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ContainerGroupPropertiesInstanceView
          end
          def resource_requests
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ResourceRequests
          end
          def resource_limits
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ResourceLimits
          end
          def volume_mount
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::VolumeMount
          end
          def operation_display
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::OperationDisplay
          end
          def azure_file_volume
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::AzureFileVolume
          end
          def operation
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::Operation
          end
          def volume
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::Volume
          end
          def operation_list_result
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::OperationListResult
          end
          def container_state
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ContainerState
          end
          def usage_name
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::UsageName
          end
          def resource_requirements
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ResourceRequirements
          end
          def usage
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::Usage
          end
          def git_repo_volume
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::GitRepoVolume
          end
          def usage_list_result
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::UsageListResult
          end
          def container_properties_instance_view
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ContainerPropertiesInstanceView
          end
          def container_group_list_result
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ContainerGroupListResult
          end
          def container_port
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::ContainerPort
          end
          def logs
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::Logs
          end
          def container
            Azure::ContainerInstance::Mgmt::V2018_02_01_preview::Models::Container
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
