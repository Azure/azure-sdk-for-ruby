# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_maintenance'

module Azure::Maintenance::Profiles::Latest
  module Mgmt
    ApplyUpdates = Azure::Maintenance::Mgmt::V2018_06_01_preview::ApplyUpdates
    ConfigurationAssignments = Azure::Maintenance::Mgmt::V2018_06_01_preview::ConfigurationAssignments
    MaintenanceConfigurations = Azure::Maintenance::Mgmt::V2018_06_01_preview::MaintenanceConfigurations
    Operations = Azure::Maintenance::Mgmt::V2018_06_01_preview::Operations
    Updates = Azure::Maintenance::Mgmt::V2018_06_01_preview::Updates

    module Models
      MaintenanceError = Azure::Maintenance::Mgmt::V2018_06_01_preview::Models::MaintenanceError
      ListMaintenanceConfigurationsResult = Azure::Maintenance::Mgmt::V2018_06_01_preview::Models::ListMaintenanceConfigurationsResult
      Resource = Azure::Maintenance::Mgmt::V2018_06_01_preview::Models::Resource
      Update = Azure::Maintenance::Mgmt::V2018_06_01_preview::Models::Update
      ListUpdatesResult = Azure::Maintenance::Mgmt::V2018_06_01_preview::Models::ListUpdatesResult
      OperationInfo = Azure::Maintenance::Mgmt::V2018_06_01_preview::Models::OperationInfo
      ListConfigurationAssignmentsResult = Azure::Maintenance::Mgmt::V2018_06_01_preview::Models::ListConfigurationAssignmentsResult
      Operation = Azure::Maintenance::Mgmt::V2018_06_01_preview::Models::Operation
      ErrorDetails = Azure::Maintenance::Mgmt::V2018_06_01_preview::Models::ErrorDetails
      OperationsListResult = Azure::Maintenance::Mgmt::V2018_06_01_preview::Models::OperationsListResult
      ApplyUpdate = Azure::Maintenance::Mgmt::V2018_06_01_preview::Models::ApplyUpdate
      ConfigurationAssignment = Azure::Maintenance::Mgmt::V2018_06_01_preview::Models::ConfigurationAssignment
      MaintenanceConfiguration = Azure::Maintenance::Mgmt::V2018_06_01_preview::Models::MaintenanceConfiguration
      UpdateStatus = Azure::Maintenance::Mgmt::V2018_06_01_preview::Models::UpdateStatus
      MaintenanceScope = Azure::Maintenance::Mgmt::V2018_06_01_preview::Models::MaintenanceScope
      ImpactType = Azure::Maintenance::Mgmt::V2018_06_01_preview::Models::ImpactType
    end

    #
    # MaintenanceManagementClass
    #
    class MaintenanceManagementClass
      attr_reader :apply_updates, :configuration_assignments, :maintenance_configurations, :operations, :updates, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::Maintenance::Mgmt::V2018_06_01_preview::MaintenanceManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @apply_updates = @client_0.apply_updates
        @configuration_assignments = @client_0.configuration_assignments
        @maintenance_configurations = @client_0.maintenance_configurations
        @operations = @client_0.operations
        @updates = @client_0.updates

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/Maintenance/Mgmt'
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
      def maintenance_error
        Azure::Maintenance::Mgmt::V2018_06_01_preview::Models::MaintenanceError
      end
      def list_maintenance_configurations_result
        Azure::Maintenance::Mgmt::V2018_06_01_preview::Models::ListMaintenanceConfigurationsResult
      end
      def resource
        Azure::Maintenance::Mgmt::V2018_06_01_preview::Models::Resource
      end
      def update
        Azure::Maintenance::Mgmt::V2018_06_01_preview::Models::Update
      end
      def list_updates_result
        Azure::Maintenance::Mgmt::V2018_06_01_preview::Models::ListUpdatesResult
      end
      def operation_info
        Azure::Maintenance::Mgmt::V2018_06_01_preview::Models::OperationInfo
      end
      def list_configuration_assignments_result
        Azure::Maintenance::Mgmt::V2018_06_01_preview::Models::ListConfigurationAssignmentsResult
      end
      def operation
        Azure::Maintenance::Mgmt::V2018_06_01_preview::Models::Operation
      end
      def error_details
        Azure::Maintenance::Mgmt::V2018_06_01_preview::Models::ErrorDetails
      end
      def operations_list_result
        Azure::Maintenance::Mgmt::V2018_06_01_preview::Models::OperationsListResult
      end
      def apply_update
        Azure::Maintenance::Mgmt::V2018_06_01_preview::Models::ApplyUpdate
      end
      def configuration_assignment
        Azure::Maintenance::Mgmt::V2018_06_01_preview::Models::ConfigurationAssignment
      end
      def maintenance_configuration
        Azure::Maintenance::Mgmt::V2018_06_01_preview::Models::MaintenanceConfiguration
      end
      def update_status
        Azure::Maintenance::Mgmt::V2018_06_01_preview::Models::UpdateStatus
      end
      def maintenance_scope
        Azure::Maintenance::Mgmt::V2018_06_01_preview::Models::MaintenanceScope
      end
      def impact_type
        Azure::Maintenance::Mgmt::V2018_06_01_preview::Models::ImpactType
      end
    end
  end
end
