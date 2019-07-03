# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_hanaonazure'

module Azure::Hanaonazure::Profiles::Latest
  module Mgmt
    Operations = Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Operations
    HanaInstances = Azure::Hanaonazure::Mgmt::V2017_11_03_preview::HanaInstances
    SapMonitors = Azure::Hanaonazure::Mgmt::V2017_11_03_preview::SapMonitors

    module Models
      HanaInstancesListResult = Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::HanaInstancesListResult
      Display = Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::Display
      HardwareProfile = Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::HardwareProfile
      Operation = Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::Operation
      StorageProfile = Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::StorageProfile
      OperationList = Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::OperationList
      IpAddress = Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::IpAddress
      ErrorResponse = Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::ErrorResponse
      NetworkProfile = Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::NetworkProfile
      Disk = Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::Disk
      Tags = Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::Tags
      Resource = Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::Resource
      MonitoringDetails = Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::MonitoringDetails
      OSProfile = Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::OSProfile
      SapMonitorListResult = Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::SapMonitorListResult
      HanaInstance = Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::HanaInstance
      SapMonitor = Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::SapMonitor
      HanaHardwareTypeNamesEnum = Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::HanaHardwareTypeNamesEnum
      HanaInstanceSizeNamesEnum = Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::HanaInstanceSizeNamesEnum
      HanaInstancePowerStateEnum = Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::HanaInstancePowerStateEnum
      HanaProvisioningStatesEnum = Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::HanaProvisioningStatesEnum
    end

    #
    # HanaonazureManagementClass
    #
    class HanaonazureManagementClass
      attr_reader :operations, :hana_instances, :sap_monitors, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::Hanaonazure::Mgmt::V2017_11_03_preview::HanaManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @operations = @client_0.operations
        @hana_instances = @client_0.hana_instances
        @sap_monitors = @client_0.sap_monitors

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/Hanaonazure/Mgmt'
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
      def hana_instances_list_result
        Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::HanaInstancesListResult
      end
      def display
        Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::Display
      end
      def hardware_profile
        Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::HardwareProfile
      end
      def operation
        Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::Operation
      end
      def storage_profile
        Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::StorageProfile
      end
      def operation_list
        Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::OperationList
      end
      def ip_address
        Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::IpAddress
      end
      def error_response
        Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::ErrorResponse
      end
      def network_profile
        Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::NetworkProfile
      end
      def disk
        Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::Disk
      end
      def tags
        Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::Tags
      end
      def resource
        Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::Resource
      end
      def monitoring_details
        Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::MonitoringDetails
      end
      def osprofile
        Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::OSProfile
      end
      def sap_monitor_list_result
        Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::SapMonitorListResult
      end
      def hana_instance
        Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::HanaInstance
      end
      def sap_monitor
        Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::SapMonitor
      end
      def hana_hardware_type_names_enum
        Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::HanaHardwareTypeNamesEnum
      end
      def hana_instance_size_names_enum
        Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::HanaInstanceSizeNamesEnum
      end
      def hana_instance_power_state_enum
        Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::HanaInstancePowerStateEnum
      end
      def hana_provisioning_states_enum
        Azure::Hanaonazure::Mgmt::V2017_11_03_preview::Models::HanaProvisioningStatesEnum
      end
    end
  end
end
