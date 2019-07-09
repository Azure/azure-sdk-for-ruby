# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_alerts_management'

module Azure::Profiles::Latest
  module AlertsManagement
    module Mgmt
      Operations = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Operations
      Alerts = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Alerts
      SmartGroups = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::SmartGroups
      ActionRules = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::ActionRules

      module Models
        AlertsSummaryGroupItem = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::AlertsSummaryGroupItem
        AlertsSummaryGroup = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::AlertsSummaryGroup
        Operation = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::Operation
        SmartGroupModificationProperties = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::SmartGroupModificationProperties
        ActionRulesList = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::ActionRulesList
        ErrorResponse = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::ErrorResponse
        OperationDisplay = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::OperationDisplay
        Resource = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::Resource
        Essentials = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::Essentials
        SuppressionSchedule = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::SuppressionSchedule
        ActionRuleProperties = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::ActionRuleProperties
        OperationsList = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::OperationsList
        AlertModificationItem = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::AlertModificationItem
        SuppressionConfig = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::SuppressionConfig
        SmartGroupAggregatedProperty = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::SmartGroupAggregatedProperty
        ErrorResponseBody = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::ErrorResponseBody
        PatchObject = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::PatchObject
        AlertsList = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::AlertsList
        SmartGroupsList = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::SmartGroupsList
        SmartGroupModificationItem = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::SmartGroupModificationItem
        Scope = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::Scope
        AlertModificationProperties = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::AlertModificationProperties
        Condition = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::Condition
        AlertProperties = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::AlertProperties
        Conditions = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::Conditions
        ManagedResource = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::ManagedResource
        Alert = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::Alert
        AlertModification = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::AlertModification
        SmartGroupModification = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::SmartGroupModification
        AlertsSummary = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::AlertsSummary
        SmartGroup = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::SmartGroup
        ActionRule = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::ActionRule
        Suppression = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::Suppression
        ActionGroup = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::ActionGroup
        Diagnostics = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::Diagnostics
        Severity = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::Severity
        SignalType = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::SignalType
        AlertState = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::AlertState
        MonitorCondition = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::MonitorCondition
        MonitorService = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::MonitorService
        AlertModificationEvent = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::AlertModificationEvent
        SmartGroupModificationEvent = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::SmartGroupModificationEvent
        State = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::State
        ScopeType = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::ScopeType
        Operator = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::Operator
        SuppressionType = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::SuppressionType
        ActionRuleStatus = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::ActionRuleStatus
        TimeRange = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::TimeRange
        AlertsSortByFields = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::AlertsSortByFields
        AlertsSummaryGroupByFields = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::AlertsSummaryGroupByFields
        SmartGroupsSortByFields = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::SmartGroupsSortByFields
      end

      class AlertsManagementManagementClass
        attr_reader :operations, :alerts, :smart_groups, :action_rules, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::AlertsManagement::Mgmt::V2019_05_05_preview::AlertsManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @operations = @client_0.operations
          @alerts = @client_0.alerts
          @smart_groups = @client_0.smart_groups
          @action_rules = @client_0.action_rules

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/AlertsManagement/Mgmt"
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
          def alerts_summary_group_item
            Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::AlertsSummaryGroupItem
          end
          def alerts_summary_group
            Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::AlertsSummaryGroup
          end
          def operation
            Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::Operation
          end
          def smart_group_modification_properties
            Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::SmartGroupModificationProperties
          end
          def action_rules_list
            Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::ActionRulesList
          end
          def error_response
            Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::ErrorResponse
          end
          def operation_display
            Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::OperationDisplay
          end
          def resource
            Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::Resource
          end
          def essentials
            Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::Essentials
          end
          def suppression_schedule
            Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::SuppressionSchedule
          end
          def action_rule_properties
            Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::ActionRuleProperties
          end
          def operations_list
            Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::OperationsList
          end
          def alert_modification_item
            Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::AlertModificationItem
          end
          def suppression_config
            Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::SuppressionConfig
          end
          def smart_group_aggregated_property
            Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::SmartGroupAggregatedProperty
          end
          def error_response_body
            Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::ErrorResponseBody
          end
          def patch_object
            Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::PatchObject
          end
          def alerts_list
            Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::AlertsList
          end
          def smart_groups_list
            Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::SmartGroupsList
          end
          def smart_group_modification_item
            Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::SmartGroupModificationItem
          end
          def scope
            Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::Scope
          end
          def alert_modification_properties
            Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::AlertModificationProperties
          end
          def condition
            Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::Condition
          end
          def alert_properties
            Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::AlertProperties
          end
          def conditions
            Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::Conditions
          end
          def managed_resource
            Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::ManagedResource
          end
          def alert
            Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::Alert
          end
          def alert_modification
            Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::AlertModification
          end
          def smart_group_modification
            Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::SmartGroupModification
          end
          def alerts_summary
            Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::AlertsSummary
          end
          def smart_group
            Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::SmartGroup
          end
          def action_rule
            Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::ActionRule
          end
          def suppression
            Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::Suppression
          end
          def action_group
            Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::ActionGroup
          end
          def diagnostics
            Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::Diagnostics
          end
          def severity
            Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::Severity
          end
          def signal_type
            Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::SignalType
          end
          def alert_state
            Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::AlertState
          end
          def monitor_condition
            Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::MonitorCondition
          end
          def monitor_service
            Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::MonitorService
          end
          def alert_modification_event
            Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::AlertModificationEvent
          end
          def smart_group_modification_event
            Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::SmartGroupModificationEvent
          end
          def state
            Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::State
          end
          def scope_type
            Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::ScopeType
          end
          def operator
            Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::Operator
          end
          def suppression_type
            Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::SuppressionType
          end
          def action_rule_status
            Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::ActionRuleStatus
          end
          def time_range
            Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::TimeRange
          end
          def alerts_sort_by_fields
            Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::AlertsSortByFields
          end
          def alerts_summary_group_by_fields
            Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::AlertsSummaryGroupByFields
          end
          def smart_groups_sort_by_fields
            Azure::AlertsManagement::Mgmt::V2019_05_05_preview::Models::SmartGroupsSortByFields
          end
        end
      end
    end
  end
end
