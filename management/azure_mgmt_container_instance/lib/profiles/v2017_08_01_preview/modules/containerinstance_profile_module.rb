# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_container_instance'

module Azure::ContainerInstance::Profiles::V2017_08_01_Preview::Mgmt
    ContainerGroups = Azure::ARM::ContainerInstance::Api_2017_08_01_preview::ContainerGroups
    ContainerLogs = Azure::ARM::ContainerInstance::Api_2017_08_01_preview::ContainerLogs

    module Models
      Container = Azure::ARM::ContainerInstance::Api_2017_08_01_preview::Models::Container
      AzureFileVolume = Azure::ARM::ContainerInstance::Api_2017_08_01_preview::Models::AzureFileVolume
      EnvironmentVariable = Azure::ARM::ContainerInstance::Api_2017_08_01_preview::Models::EnvironmentVariable
      Volume = Azure::ARM::ContainerInstance::Api_2017_08_01_preview::Models::Volume
      ContainerEvent = Azure::ARM::ContainerInstance::Api_2017_08_01_preview::Models::ContainerEvent
      ImageRegistryCredential = Azure::ARM::ContainerInstance::Api_2017_08_01_preview::Models::ImageRegistryCredential
      ResourceRequests = Azure::ARM::ContainerInstance::Api_2017_08_01_preview::Models::ResourceRequests
      Port = Azure::ARM::ContainerInstance::Api_2017_08_01_preview::Models::Port
      ResourceRequirements = Azure::ARM::ContainerInstance::Api_2017_08_01_preview::Models::ResourceRequirements
      IpAddress = Azure::ARM::ContainerInstance::Api_2017_08_01_preview::Models::IpAddress
      ContainerPort = Azure::ARM::ContainerInstance::Api_2017_08_01_preview::Models::ContainerPort
      ContainerState = Azure::ARM::ContainerInstance::Api_2017_08_01_preview::Models::ContainerState
      ResourceLimits = Azure::ARM::ContainerInstance::Api_2017_08_01_preview::Models::ResourceLimits
      ContainerGroupListResult = Azure::ARM::ContainerInstance::Api_2017_08_01_preview::Models::ContainerGroupListResult
      ContainerPropertiesInstanceView = Azure::ARM::ContainerInstance::Api_2017_08_01_preview::Models::ContainerPropertiesInstanceView
      Logs = Azure::ARM::ContainerInstance::Api_2017_08_01_preview::Models::Logs
      VolumeMount = Azure::ARM::ContainerInstance::Api_2017_08_01_preview::Models::VolumeMount
      Resource = Azure::ARM::ContainerInstance::Api_2017_08_01_preview::Models::Resource
      ContainerGroup = Azure::ARM::ContainerInstance::Api_2017_08_01_preview::Models::ContainerGroup
      ContainerRestartPolicy = Azure::ARM::ContainerInstance::Api_2017_08_01_preview::Models::ContainerRestartPolicy
      ContainerGroupNetworkProtocol = Azure::ARM::ContainerInstance::Api_2017_08_01_preview::Models::ContainerGroupNetworkProtocol
      OperatingSystemTypes = Azure::ARM::ContainerInstance::Api_2017_08_01_preview::Models::OperatingSystemTypes
    end

    #
    # ContainerInstance
    #
    class ContainerInstanceClass
      attr_reader :container_groups, :container_logs, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        if options.is_a?(Hash) && options.length == 0
          @options = setup_options
        else
          @options = options
        end

        reset!(options)

        @configurable, @base_url, @options = self, nil, nil

        client_0 = Azure::ARM::ContainerInstance::Api_2017_08_01_preview::ContainerInstanceManagementClient.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        @container_groups = client_0.container_groups
        @container_logs = client_0.container_logs

        @model_classes = ModelClasses.new
      end

      #
      # Method to get the client object
      #
      # @return Client object
      #
      def get_client(version = '2017-08-01-preview')
        case version
          when '2017-08-01-preview'
            client = Azure::ARM::ContainerInstance::Api_2017_08_01_preview::ContainerInstanceManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def container
          Azure::ARM::ContainerInstance::Api_2017_08_01_preview::Models::Container
        end
        def azure_file_volume
          Azure::ARM::ContainerInstance::Api_2017_08_01_preview::Models::AzureFileVolume
        end
        def environment_variable
          Azure::ARM::ContainerInstance::Api_2017_08_01_preview::Models::EnvironmentVariable
        end
        def volume
          Azure::ARM::ContainerInstance::Api_2017_08_01_preview::Models::Volume
        end
        def container_event
          Azure::ARM::ContainerInstance::Api_2017_08_01_preview::Models::ContainerEvent
        end
        def image_registry_credential
          Azure::ARM::ContainerInstance::Api_2017_08_01_preview::Models::ImageRegistryCredential
        end
        def resource_requests
          Azure::ARM::ContainerInstance::Api_2017_08_01_preview::Models::ResourceRequests
        end
        def port
          Azure::ARM::ContainerInstance::Api_2017_08_01_preview::Models::Port
        end
        def resource_requirements
          Azure::ARM::ContainerInstance::Api_2017_08_01_preview::Models::ResourceRequirements
        end
        def ip_address
          Azure::ARM::ContainerInstance::Api_2017_08_01_preview::Models::IpAddress
        end
        def container_port
          Azure::ARM::ContainerInstance::Api_2017_08_01_preview::Models::ContainerPort
        end
        def container_state
          Azure::ARM::ContainerInstance::Api_2017_08_01_preview::Models::ContainerState
        end
        def resource_limits
          Azure::ARM::ContainerInstance::Api_2017_08_01_preview::Models::ResourceLimits
        end
        def container_group_list_result
          Azure::ARM::ContainerInstance::Api_2017_08_01_preview::Models::ContainerGroupListResult
        end
        def container_properties_instance_view
          Azure::ARM::ContainerInstance::Api_2017_08_01_preview::Models::ContainerPropertiesInstanceView
        end
        def logs
          Azure::ARM::ContainerInstance::Api_2017_08_01_preview::Models::Logs
        end
        def volume_mount
          Azure::ARM::ContainerInstance::Api_2017_08_01_preview::Models::VolumeMount
        end
        def resource
          Azure::ARM::ContainerInstance::Api_2017_08_01_preview::Models::Resource
        end
        def container_group
          Azure::ARM::ContainerInstance::Api_2017_08_01_preview::Models::ContainerGroup
        end
        def container_restart_policy
          Azure::ARM::ContainerInstance::Api_2017_08_01_preview::Models::ContainerRestartPolicy
        end
        def container_group_network_protocol
          Azure::ARM::ContainerInstance::Api_2017_08_01_preview::Models::ContainerGroupNetworkProtocol
        end
        def operating_system_types
          Azure::ARM::ContainerInstance::Api_2017_08_01_preview::Models::OperatingSystemTypes
        end
      end
    end
end
