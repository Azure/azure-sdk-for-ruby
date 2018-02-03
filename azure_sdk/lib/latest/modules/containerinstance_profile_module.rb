# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_container_instance'

module Azure::Profiles::Latest
  module ContainerInstance
    module Mgmt
      ContainerGroups = Azure::ContainerInstance::Mgmt::V2017_08_01_preview::ContainerGroups
      ContainerLogs = Azure::ContainerInstance::Mgmt::V2017_08_01_preview::ContainerLogs

      module Models
        Container = Azure::ContainerInstance::Mgmt::V2017_08_01_preview::Models::Container
        AzureFileVolume = Azure::ContainerInstance::Mgmt::V2017_08_01_preview::Models::AzureFileVolume
        EnvironmentVariable = Azure::ContainerInstance::Mgmt::V2017_08_01_preview::Models::EnvironmentVariable
        Volume = Azure::ContainerInstance::Mgmt::V2017_08_01_preview::Models::Volume
        ContainerEvent = Azure::ContainerInstance::Mgmt::V2017_08_01_preview::Models::ContainerEvent
        ImageRegistryCredential = Azure::ContainerInstance::Mgmt::V2017_08_01_preview::Models::ImageRegistryCredential
        ResourceRequests = Azure::ContainerInstance::Mgmt::V2017_08_01_preview::Models::ResourceRequests
        Port = Azure::ContainerInstance::Mgmt::V2017_08_01_preview::Models::Port
        ResourceRequirements = Azure::ContainerInstance::Mgmt::V2017_08_01_preview::Models::ResourceRequirements
        IpAddress = Azure::ContainerInstance::Mgmt::V2017_08_01_preview::Models::IpAddress
        ContainerPort = Azure::ContainerInstance::Mgmt::V2017_08_01_preview::Models::ContainerPort
        ContainerState = Azure::ContainerInstance::Mgmt::V2017_08_01_preview::Models::ContainerState
        ResourceLimits = Azure::ContainerInstance::Mgmt::V2017_08_01_preview::Models::ResourceLimits
        ContainerGroupListResult = Azure::ContainerInstance::Mgmt::V2017_08_01_preview::Models::ContainerGroupListResult
        ContainerPropertiesInstanceView = Azure::ContainerInstance::Mgmt::V2017_08_01_preview::Models::ContainerPropertiesInstanceView
        Logs = Azure::ContainerInstance::Mgmt::V2017_08_01_preview::Models::Logs
        VolumeMount = Azure::ContainerInstance::Mgmt::V2017_08_01_preview::Models::VolumeMount
        Resource = Azure::ContainerInstance::Mgmt::V2017_08_01_preview::Models::Resource
        ContainerGroup = Azure::ContainerInstance::Mgmt::V2017_08_01_preview::Models::ContainerGroup
        ContainerRestartPolicy = Azure::ContainerInstance::Mgmt::V2017_08_01_preview::Models::ContainerRestartPolicy
        ContainerGroupNetworkProtocol = Azure::ContainerInstance::Mgmt::V2017_08_01_preview::Models::ContainerGroupNetworkProtocol
        OperatingSystemTypes = Azure::ContainerInstance::Mgmt::V2017_08_01_preview::Models::OperatingSystemTypes
      end

      class ContainerInstanceManagementClass
        attr_reader :container_groups, :container_logs, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::ContainerInstance::Mgmt::V2017_08_01_preview::ContainerInstanceManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @container_groups = @client_0.container_groups
          @container_logs = @client_0.container_logs

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = 'Profiles/azure_sdk/Latest/ContainerInstance/Mgmt'
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
            Azure::ContainerInstance::Mgmt::V2017_08_01_preview::Models::Container
          end
          def azure_file_volume
            Azure::ContainerInstance::Mgmt::V2017_08_01_preview::Models::AzureFileVolume
          end
          def environment_variable
            Azure::ContainerInstance::Mgmt::V2017_08_01_preview::Models::EnvironmentVariable
          end
          def volume
            Azure::ContainerInstance::Mgmt::V2017_08_01_preview::Models::Volume
          end
          def container_event
            Azure::ContainerInstance::Mgmt::V2017_08_01_preview::Models::ContainerEvent
          end
          def image_registry_credential
            Azure::ContainerInstance::Mgmt::V2017_08_01_preview::Models::ImageRegistryCredential
          end
          def resource_requests
            Azure::ContainerInstance::Mgmt::V2017_08_01_preview::Models::ResourceRequests
          end
          def port
            Azure::ContainerInstance::Mgmt::V2017_08_01_preview::Models::Port
          end
          def resource_requirements
            Azure::ContainerInstance::Mgmt::V2017_08_01_preview::Models::ResourceRequirements
          end
          def ip_address
            Azure::ContainerInstance::Mgmt::V2017_08_01_preview::Models::IpAddress
          end
          def container_port
            Azure::ContainerInstance::Mgmt::V2017_08_01_preview::Models::ContainerPort
          end
          def container_state
            Azure::ContainerInstance::Mgmt::V2017_08_01_preview::Models::ContainerState
          end
          def resource_limits
            Azure::ContainerInstance::Mgmt::V2017_08_01_preview::Models::ResourceLimits
          end
          def container_group_list_result
            Azure::ContainerInstance::Mgmt::V2017_08_01_preview::Models::ContainerGroupListResult
          end
          def container_properties_instance_view
            Azure::ContainerInstance::Mgmt::V2017_08_01_preview::Models::ContainerPropertiesInstanceView
          end
          def logs
            Azure::ContainerInstance::Mgmt::V2017_08_01_preview::Models::Logs
          end
          def volume_mount
            Azure::ContainerInstance::Mgmt::V2017_08_01_preview::Models::VolumeMount
          end
          def resource
            Azure::ContainerInstance::Mgmt::V2017_08_01_preview::Models::Resource
          end
          def container_group
            Azure::ContainerInstance::Mgmt::V2017_08_01_preview::Models::ContainerGroup
          end
          def container_restart_policy
            Azure::ContainerInstance::Mgmt::V2017_08_01_preview::Models::ContainerRestartPolicy
          end
          def container_group_network_protocol
            Azure::ContainerInstance::Mgmt::V2017_08_01_preview::Models::ContainerGroupNetworkProtocol
          end
          def operating_system_types
            Azure::ContainerInstance::Mgmt::V2017_08_01_preview::Models::OperatingSystemTypes
          end
        end
      end
    end
  end
end
