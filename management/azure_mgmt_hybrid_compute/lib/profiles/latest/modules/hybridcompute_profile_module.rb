# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_hybrid_compute'

module Azure::HybridCompute::Profiles::Latest
  module Mgmt
    Machines = Azure::HybridCompute::Mgmt::V2020_08_02::Machines
    MachineExtensions = Azure::HybridCompute::Mgmt::V2020_08_02::MachineExtensions
    Operations = Azure::HybridCompute::Mgmt::V2020_08_02::Operations

    module Models
      MachineListResult = Azure::HybridCompute::Mgmt::V2020_08_02::Models::MachineListResult
      OperationValue = Azure::HybridCompute::Mgmt::V2020_08_02::Models::OperationValue
      UpdateResource = Azure::HybridCompute::Mgmt::V2020_08_02::Models::UpdateResource
      OperationValueDisplayModel = Azure::HybridCompute::Mgmt::V2020_08_02::Models::OperationValueDisplayModel
      ErrorResponse = Azure::HybridCompute::Mgmt::V2020_08_02::Models::ErrorResponse
      LocationData = Azure::HybridCompute::Mgmt::V2020_08_02::Models::LocationData
      Identity = Azure::HybridCompute::Mgmt::V2020_08_02::Models::Identity
      ErrorDetail = Azure::HybridCompute::Mgmt::V2020_08_02::Models::ErrorDetail
      OSProfile = Azure::HybridCompute::Mgmt::V2020_08_02::Models::OSProfile
      MachineExtensionPropertiesModel = Azure::HybridCompute::Mgmt::V2020_08_02::Models::MachineExtensionPropertiesModel
      OperationListResult = Azure::HybridCompute::Mgmt::V2020_08_02::Models::OperationListResult
      MachineUpdateProperties = Azure::HybridCompute::Mgmt::V2020_08_02::Models::MachineUpdateProperties
      MachineExtensionInstanceView = Azure::HybridCompute::Mgmt::V2020_08_02::Models::MachineExtensionInstanceView
      MachineExtensionUpdatePropertiesModel = Azure::HybridCompute::Mgmt::V2020_08_02::Models::MachineExtensionUpdatePropertiesModel
      Resource = Azure::HybridCompute::Mgmt::V2020_08_02::Models::Resource
      MachineExtensionsListResult = Azure::HybridCompute::Mgmt::V2020_08_02::Models::MachineExtensionsListResult
      MachineExtensionInstanceViewStatus = Azure::HybridCompute::Mgmt::V2020_08_02::Models::MachineExtensionInstanceViewStatus
      MachineProperties = Azure::HybridCompute::Mgmt::V2020_08_02::Models::MachineProperties
      MachinePropertiesOsProfile = Azure::HybridCompute::Mgmt::V2020_08_02::Models::MachinePropertiesOsProfile
      MachineIdentity = Azure::HybridCompute::Mgmt::V2020_08_02::Models::MachineIdentity
      Machine = Azure::HybridCompute::Mgmt::V2020_08_02::Models::Machine
      MachineUpdate = Azure::HybridCompute::Mgmt::V2020_08_02::Models::MachineUpdate
      TrackedResource = Azure::HybridCompute::Mgmt::V2020_08_02::Models::TrackedResource
      MachineExtension = Azure::HybridCompute::Mgmt::V2020_08_02::Models::MachineExtension
      MachineExtensionUpdate = Azure::HybridCompute::Mgmt::V2020_08_02::Models::MachineExtensionUpdate
      MachineExtensionPropertiesInstanceView = Azure::HybridCompute::Mgmt::V2020_08_02::Models::MachineExtensionPropertiesInstanceView
      ProxyResource = Azure::HybridCompute::Mgmt::V2020_08_02::Models::ProxyResource
      AzureEntityResource = Azure::HybridCompute::Mgmt::V2020_08_02::Models::AzureEntityResource
      StatusTypes = Azure::HybridCompute::Mgmt::V2020_08_02::Models::StatusTypes
      StatusLevelTypes = Azure::HybridCompute::Mgmt::V2020_08_02::Models::StatusLevelTypes
      InstanceViewTypes = Azure::HybridCompute::Mgmt::V2020_08_02::Models::InstanceViewTypes
    end

    #
    # HybridComputeManagementClass
    #
    class HybridComputeManagementClass
      attr_reader :machines, :machine_extensions, :operations, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::HybridCompute::Mgmt::V2020_08_02::HybridComputeManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @machines = @client_0.machines
        @machine_extensions = @client_0.machine_extensions
        @operations = @client_0.operations

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/HybridCompute/Mgmt'
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
      def machine_list_result
        Azure::HybridCompute::Mgmt::V2020_08_02::Models::MachineListResult
      end
      def operation_value
        Azure::HybridCompute::Mgmt::V2020_08_02::Models::OperationValue
      end
      def update_resource
        Azure::HybridCompute::Mgmt::V2020_08_02::Models::UpdateResource
      end
      def operation_value_display_model
        Azure::HybridCompute::Mgmt::V2020_08_02::Models::OperationValueDisplayModel
      end
      def error_response
        Azure::HybridCompute::Mgmt::V2020_08_02::Models::ErrorResponse
      end
      def location_data
        Azure::HybridCompute::Mgmt::V2020_08_02::Models::LocationData
      end
      def identity
        Azure::HybridCompute::Mgmt::V2020_08_02::Models::Identity
      end
      def error_detail
        Azure::HybridCompute::Mgmt::V2020_08_02::Models::ErrorDetail
      end
      def osprofile
        Azure::HybridCompute::Mgmt::V2020_08_02::Models::OSProfile
      end
      def machine_extension_properties_model
        Azure::HybridCompute::Mgmt::V2020_08_02::Models::MachineExtensionPropertiesModel
      end
      def operation_list_result
        Azure::HybridCompute::Mgmt::V2020_08_02::Models::OperationListResult
      end
      def machine_update_properties
        Azure::HybridCompute::Mgmt::V2020_08_02::Models::MachineUpdateProperties
      end
      def machine_extension_instance_view
        Azure::HybridCompute::Mgmt::V2020_08_02::Models::MachineExtensionInstanceView
      end
      def machine_extension_update_properties_model
        Azure::HybridCompute::Mgmt::V2020_08_02::Models::MachineExtensionUpdatePropertiesModel
      end
      def resource
        Azure::HybridCompute::Mgmt::V2020_08_02::Models::Resource
      end
      def machine_extensions_list_result
        Azure::HybridCompute::Mgmt::V2020_08_02::Models::MachineExtensionsListResult
      end
      def machine_extension_instance_view_status
        Azure::HybridCompute::Mgmt::V2020_08_02::Models::MachineExtensionInstanceViewStatus
      end
      def machine_properties
        Azure::HybridCompute::Mgmt::V2020_08_02::Models::MachineProperties
      end
      def machine_properties_os_profile
        Azure::HybridCompute::Mgmt::V2020_08_02::Models::MachinePropertiesOsProfile
      end
      def machine_identity
        Azure::HybridCompute::Mgmt::V2020_08_02::Models::MachineIdentity
      end
      def machine
        Azure::HybridCompute::Mgmt::V2020_08_02::Models::Machine
      end
      def machine_update
        Azure::HybridCompute::Mgmt::V2020_08_02::Models::MachineUpdate
      end
      def tracked_resource
        Azure::HybridCompute::Mgmt::V2020_08_02::Models::TrackedResource
      end
      def machine_extension
        Azure::HybridCompute::Mgmt::V2020_08_02::Models::MachineExtension
      end
      def machine_extension_update
        Azure::HybridCompute::Mgmt::V2020_08_02::Models::MachineExtensionUpdate
      end
      def machine_extension_properties_instance_view
        Azure::HybridCompute::Mgmt::V2020_08_02::Models::MachineExtensionPropertiesInstanceView
      end
      def proxy_resource
        Azure::HybridCompute::Mgmt::V2020_08_02::Models::ProxyResource
      end
      def azure_entity_resource
        Azure::HybridCompute::Mgmt::V2020_08_02::Models::AzureEntityResource
      end
      def status_types
        Azure::HybridCompute::Mgmt::V2020_08_02::Models::StatusTypes
      end
      def status_level_types
        Azure::HybridCompute::Mgmt::V2020_08_02::Models::StatusLevelTypes
      end
      def instance_view_types
        Azure::HybridCompute::Mgmt::V2020_08_02::Models::InstanceViewTypes
      end
    end
  end
end
