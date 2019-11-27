# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_alerts_management'

module Azure::Profiles::V2019_07_01
  module AlertsManagement
    module Mgmt
      Operations = Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Operations
      Alerts = Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Alerts
      SmartGroups = Azure::AlertsManagement::Mgmt::V2018_05_05_preview::SmartGroups

      module Models
        SmartGroupModificationProperties = Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::SmartGroupModificationProperties
        AlertsSummaryPropertiesSummaryBySeverity = Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::AlertsSummaryPropertiesSummaryBySeverity
        Operation = Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::Operation
        SmartGroupModificationItem = Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::SmartGroupModificationItem
        OperationDisplay = Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::OperationDisplay
        Resource = Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::Resource
        AlertsSummaryBySeverityAndMonitorCondition = Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::AlertsSummaryBySeverityAndMonitorCondition
        AlertsList = Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::AlertsList
        AlertsSummaryByState = Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::AlertsSummaryByState
        AlertModificationProperties = Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::AlertModificationProperties
        AlertsSummaryByMonitorCondition = Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::AlertsSummaryByMonitorCondition
        AlertsSummaryByMonitorService = Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::AlertsSummaryByMonitorService
        AlertModificationItem = Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::AlertModificationItem
        SmartGroupAggregatedProperty = Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::SmartGroupAggregatedProperty
        SmartGroupsList = Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::SmartGroupsList
        OperationsList = Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::OperationsList
        Alert = Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::Alert
        AlertModification = Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::AlertModification
        SmartGroupModification = Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::SmartGroupModification
        AlertsSummaryPropertiesSummaryByState = Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::AlertsSummaryPropertiesSummaryByState
        AlertsSummaryPropertiesSummaryBySeveritySev0 = Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::AlertsSummaryPropertiesSummaryBySeveritySev0
        AlertsSummaryPropertiesSummaryBySeveritySev1 = Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::AlertsSummaryPropertiesSummaryBySeveritySev1
        AlertsSummaryPropertiesSummaryBySeveritySev2 = Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::AlertsSummaryPropertiesSummaryBySeveritySev2
        AlertsSummaryPropertiesSummaryBySeveritySev3 = Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::AlertsSummaryPropertiesSummaryBySeveritySev3
        AlertsSummaryPropertiesSummaryBySeveritySev4 = Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::AlertsSummaryPropertiesSummaryBySeveritySev4
        AlertsSummaryPropertiesSummaryBySeverityAndMonitorCondition = Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::AlertsSummaryPropertiesSummaryBySeverityAndMonitorCondition
        AlertsSummaryPropertiesSummaryByMonitorService = Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::AlertsSummaryPropertiesSummaryByMonitorService
        AlertsSummary = Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::AlertsSummary
        AlertsSummaryBySeverityAndMonitorConditionSev0 = Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::AlertsSummaryBySeverityAndMonitorConditionSev0
        AlertsSummaryBySeverityAndMonitorConditionSev1 = Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::AlertsSummaryBySeverityAndMonitorConditionSev1
        AlertsSummaryBySeverityAndMonitorConditionSev2 = Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::AlertsSummaryBySeverityAndMonitorConditionSev2
        AlertsSummaryBySeverityAndMonitorConditionSev3 = Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::AlertsSummaryBySeverityAndMonitorConditionSev3
        AlertsSummaryBySeverityAndMonitorConditionSev4 = Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::AlertsSummaryBySeverityAndMonitorConditionSev4
        SmartGroup = Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::SmartGroup
        Severity = Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::Severity
        SignalType = Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::SignalType
        AlertState = Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::AlertState
        MonitorCondition = Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::MonitorCondition
        MonitorService = Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::MonitorService
        AlertModificationEvent = Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::AlertModificationEvent
        SmartGroupModificationEvent = Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::SmartGroupModificationEvent
        State = Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::State
        ApiVersion = Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::ApiVersion
        TimeRange = Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::TimeRange
        AlertsSortByFields = Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::AlertsSortByFields
        SmartGroupsSortByFields = Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::SmartGroupsSortByFields
      end

      class AlertsManagementManagementClass
        attr_reader :operations, :alerts, :smart_groups, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::AlertsManagement::Mgmt::V2018_05_05_preview::AlertsManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @operations = @client_0.operations
          @alerts = @client_0.alerts
          @smart_groups = @client_0.smart_groups

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/V2019_07_01/AlertsManagement/Mgmt"
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
          def smart_group_modification_properties
            Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::SmartGroupModificationProperties
          end
          def alerts_summary_properties_summary_by_severity
            Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::AlertsSummaryPropertiesSummaryBySeverity
          end
          def operation
            Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::Operation
          end
          def smart_group_modification_item
            Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::SmartGroupModificationItem
          end
          def operation_display
            Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::OperationDisplay
          end
          def resource
            Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::Resource
          end
          def alerts_summary_by_severity_and_monitor_condition
            Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::AlertsSummaryBySeverityAndMonitorCondition
          end
          def alerts_list
            Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::AlertsList
          end
          def alerts_summary_by_state
            Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::AlertsSummaryByState
          end
          def alert_modification_properties
            Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::AlertModificationProperties
          end
          def alerts_summary_by_monitor_condition
            Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::AlertsSummaryByMonitorCondition
          end
          def alerts_summary_by_monitor_service
            Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::AlertsSummaryByMonitorService
          end
          def alert_modification_item
            Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::AlertModificationItem
          end
          def smart_group_aggregated_property
            Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::SmartGroupAggregatedProperty
          end
          def smart_groups_list
            Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::SmartGroupsList
          end
          def operations_list
            Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::OperationsList
          end
          def alert
            Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::Alert
          end
          def alert_modification
            Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::AlertModification
          end
          def smart_group_modification
            Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::SmartGroupModification
          end
          def alerts_summary_properties_summary_by_state
            Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::AlertsSummaryPropertiesSummaryByState
          end
          def alerts_summary_properties_summary_by_severity_sev0
            Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::AlertsSummaryPropertiesSummaryBySeveritySev0
          end
          def alerts_summary_properties_summary_by_severity_sev1
            Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::AlertsSummaryPropertiesSummaryBySeveritySev1
          end
          def alerts_summary_properties_summary_by_severity_sev2
            Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::AlertsSummaryPropertiesSummaryBySeveritySev2
          end
          def alerts_summary_properties_summary_by_severity_sev3
            Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::AlertsSummaryPropertiesSummaryBySeveritySev3
          end
          def alerts_summary_properties_summary_by_severity_sev4
            Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::AlertsSummaryPropertiesSummaryBySeveritySev4
          end
          def alerts_summary_properties_summary_by_severity_and_monitor_condition
            Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::AlertsSummaryPropertiesSummaryBySeverityAndMonitorCondition
          end
          def alerts_summary_properties_summary_by_monitor_service
            Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::AlertsSummaryPropertiesSummaryByMonitorService
          end
          def alerts_summary
            Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::AlertsSummary
          end
          def alerts_summary_by_severity_and_monitor_condition_sev0
            Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::AlertsSummaryBySeverityAndMonitorConditionSev0
          end
          def alerts_summary_by_severity_and_monitor_condition_sev1
            Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::AlertsSummaryBySeverityAndMonitorConditionSev1
          end
          def alerts_summary_by_severity_and_monitor_condition_sev2
            Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::AlertsSummaryBySeverityAndMonitorConditionSev2
          end
          def alerts_summary_by_severity_and_monitor_condition_sev3
            Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::AlertsSummaryBySeverityAndMonitorConditionSev3
          end
          def alerts_summary_by_severity_and_monitor_condition_sev4
            Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::AlertsSummaryBySeverityAndMonitorConditionSev4
          end
          def smart_group
            Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::SmartGroup
          end
          def severity
            Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::Severity
          end
          def signal_type
            Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::SignalType
          end
          def alert_state
            Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::AlertState
          end
          def monitor_condition
            Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::MonitorCondition
          end
          def monitor_service
            Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::MonitorService
          end
          def alert_modification_event
            Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::AlertModificationEvent
          end
          def smart_group_modification_event
            Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::SmartGroupModificationEvent
          end
          def state
            Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::State
          end
          def api_version
            Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::ApiVersion
          end
          def time_range
            Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::TimeRange
          end
          def alerts_sort_by_fields
            Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::AlertsSortByFields
          end
          def smart_groups_sort_by_fields
            Azure::AlertsManagement::Mgmt::V2018_05_05_preview::Models::SmartGroupsSortByFields
          end
        end
      end
    end
  end
end
