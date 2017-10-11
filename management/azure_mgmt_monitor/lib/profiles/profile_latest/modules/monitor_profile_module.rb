# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_monitor'

module Azure::Monitor::Management::Profile_Latest
    AutoscaleSettings = Azure::ARM::Monitor::Api_2015_04_01::AutoscaleSettings
    Operations = Azure::ARM::Monitor::Api_2015_04_01::Operations
    AlertRuleIncidents = Azure::ARM::Monitor::Api_2016_03_01::AlertRuleIncidents
    AlertRules = Azure::ARM::Monitor::Api_2016_03_01::AlertRules
    LogProfiles = Azure::ARM::Monitor::Api_2016_03_01::LogProfiles
    ActionGroups = Azure::ARM::Monitor::Api_2017_04_01::ActionGroups
    ActivityLogAlerts = Azure::ARM::Monitor::Api_2017_04_01::ActivityLogAlerts
    DiagnosticSettingsCategoryOperations = Azure::ARM::Monitor::Api_2017_05_01_preview::DiagnosticSettingsCategoryOperations
    DiagnosticSettingsOperations = Azure::ARM::Monitor::Api_2017_05_01_preview::DiagnosticSettingsOperations

    module Models
      EmailNotification = Azure::ARM::Monitor::Api_2015_04_01::Models::EmailNotification
      WebhookNotification = Azure::ARM::Monitor::Api_2015_04_01::Models::WebhookNotification
      ScaleCapacity = Azure::ARM::Monitor::Api_2015_04_01::Models::ScaleCapacity
      AutoscaleNotification = Azure::ARM::Monitor::Api_2015_04_01::Models::AutoscaleNotification
      ScaleAction = Azure::ARM::Monitor::Api_2015_04_01::Models::ScaleAction
      ScaleRule = Azure::ARM::Monitor::Api_2015_04_01::Models::ScaleRule
      RecurrentSchedule = Azure::ARM::Monitor::Api_2015_04_01::Models::RecurrentSchedule
      AutoscaleSettingResourcePatch = Azure::ARM::Monitor::Api_2015_04_01::Models::AutoscaleSettingResourcePatch
      AutoscaleProfile = Azure::ARM::Monitor::Api_2015_04_01::Models::AutoscaleProfile
      AutoscaleSettingResourceCollection = Azure::ARM::Monitor::Api_2015_04_01::Models::AutoscaleSettingResourceCollection
      MetricTrigger = Azure::ARM::Monitor::Api_2015_04_01::Models::MetricTrigger
      Recurrence = Azure::ARM::Monitor::Api_2015_04_01::Models::Recurrence
      OperationDisplay = Azure::ARM::Monitor::Api_2015_04_01::Models::OperationDisplay
      TimeWindow = Azure::ARM::Monitor::Api_2015_04_01::Models::TimeWindow
      Operation = Azure::ARM::Monitor::Api_2015_04_01::Models::Operation
      OperationListResult = Azure::ARM::Monitor::Api_2015_04_01::Models::OperationListResult
      AutoscaleSettingResource = Azure::ARM::Monitor::Api_2015_04_01::Models::AutoscaleSettingResource
      MetricStatisticType = Azure::ARM::Monitor::Api_2015_04_01::Models::MetricStatisticType
      TimeAggregationType = Azure::ARM::Monitor::Api_2015_04_01::Models::TimeAggregationType
      ComparisonOperationType = Azure::ARM::Monitor::Api_2015_04_01::Models::ComparisonOperationType
      ScaleDirection = Azure::ARM::Monitor::Api_2015_04_01::Models::ScaleDirection
      ScaleType = Azure::ARM::Monitor::Api_2015_04_01::Models::ScaleType
      RecurrenceFrequency = Azure::ARM::Monitor::Api_2015_04_01::Models::RecurrenceFrequency
      AlertRuleResourcePatch = Azure::ARM::Monitor::Api_2016_03_01::Models::AlertRuleResourcePatch
      Incident = Azure::ARM::Monitor::Api_2016_03_01::Models::Incident
      AlertRuleResourceCollection = Azure::ARM::Monitor::Api_2016_03_01::Models::AlertRuleResourceCollection
      ManagementEventAggregationCondition = Azure::ARM::Monitor::Api_2016_03_01::Models::ManagementEventAggregationCondition
      RuleCondition = Azure::ARM::Monitor::Api_2016_03_01::Models::RuleCondition
      RuleManagementEventClaimsDataSource = Azure::ARM::Monitor::Api_2016_03_01::Models::RuleManagementEventClaimsDataSource
      RuleAction = Azure::ARM::Monitor::Api_2016_03_01::Models::RuleAction
      IncidentListResult = Azure::ARM::Monitor::Api_2016_03_01::Models::IncidentListResult
      LogProfileCollection = Azure::ARM::Monitor::Api_2016_03_01::Models::LogProfileCollection
      RuleDataSource = Azure::ARM::Monitor::Api_2016_03_01::Models::RuleDataSource
      LogProfileResourcePatch = Azure::ARM::Monitor::Api_2016_03_01::Models::LogProfileResourcePatch
      RuleMetricDataSource = Azure::ARM::Monitor::Api_2016_03_01::Models::RuleMetricDataSource
      RuleManagementEventDataSource = Azure::ARM::Monitor::Api_2016_03_01::Models::RuleManagementEventDataSource
      ThresholdRuleCondition = Azure::ARM::Monitor::Api_2016_03_01::Models::ThresholdRuleCondition
      LocationThresholdRuleCondition = Azure::ARM::Monitor::Api_2016_03_01::Models::LocationThresholdRuleCondition
      ManagementEventRuleCondition = Azure::ARM::Monitor::Api_2016_03_01::Models::ManagementEventRuleCondition
      RuleEmailAction = Azure::ARM::Monitor::Api_2016_03_01::Models::RuleEmailAction
      RuleWebhookAction = Azure::ARM::Monitor::Api_2016_03_01::Models::RuleWebhookAction
      AlertRuleResource = Azure::ARM::Monitor::Api_2016_03_01::Models::AlertRuleResource
      LogProfileResource = Azure::ARM::Monitor::Api_2016_03_01::Models::LogProfileResource
      ConditionOperator = Azure::ARM::Monitor::Api_2016_03_01::Models::ConditionOperator
      TimeAggregationOperator = Azure::ARM::Monitor::Api_2016_03_01::Models::TimeAggregationOperator
      ActivityLogAlertLeafCondition = Azure::ARM::Monitor::Api_2017_04_01::Models::ActivityLogAlertLeafCondition
      EmailReceiver = Azure::ARM::Monitor::Api_2017_04_01::Models::EmailReceiver
      ActivityLogAlertAllOfCondition = Azure::ARM::Monitor::Api_2017_04_01::Models::ActivityLogAlertAllOfCondition
      WebhookReceiver = Azure::ARM::Monitor::Api_2017_04_01::Models::WebhookReceiver
      ActivityLogAlertActionGroup = Azure::ARM::Monitor::Api_2017_04_01::Models::ActivityLogAlertActionGroup
      ActionGroupList = Azure::ARM::Monitor::Api_2017_04_01::Models::ActionGroupList
      ActivityLogAlertActionList = Azure::ARM::Monitor::Api_2017_04_01::Models::ActivityLogAlertActionList
      SmsReceiver = Azure::ARM::Monitor::Api_2017_04_01::Models::SmsReceiver
      EnableRequest = Azure::ARM::Monitor::Api_2017_04_01::Models::EnableRequest
      ActivityLogAlertList = Azure::ARM::Monitor::Api_2017_04_01::Models::ActivityLogAlertList
      ActivityLogAlertPatchBody = Azure::ARM::Monitor::Api_2017_04_01::Models::ActivityLogAlertPatchBody
      ActionGroupResource = Azure::ARM::Monitor::Api_2017_04_01::Models::ActionGroupResource
      ActivityLogAlertResource = Azure::ARM::Monitor::Api_2017_04_01::Models::ActivityLogAlertResource
      ReceiverStatus = Azure::ARM::Monitor::Api_2017_04_01::Models::ReceiverStatus
      RetentionPolicy = Azure::ARM::Monitor::Api_2017_05_01_preview::Models::RetentionPolicy
      MetricSettings = Azure::ARM::Monitor::Api_2017_05_01_preview::Models::MetricSettings
      ProxyOnlyResource = Azure::ARM::Monitor::Api_2017_05_01_preview::Models::ProxyOnlyResource
      ErrorResponse = Azure::ARM::Monitor::Api_2017_05_01_preview::Models::ErrorResponse
      LogSettings = Azure::ARM::Monitor::Api_2017_05_01_preview::Models::LogSettings
      DiagnosticSettingsCategoryResourceCollection = Azure::ARM::Monitor::Api_2017_05_01_preview::Models::DiagnosticSettingsCategoryResourceCollection
      DiagnosticSettingsResourceCollection = Azure::ARM::Monitor::Api_2017_05_01_preview::Models::DiagnosticSettingsResourceCollection
      DiagnosticSettingsCategoryResource = Azure::ARM::Monitor::Api_2017_05_01_preview::Models::DiagnosticSettingsCategoryResource
      DiagnosticSettingsResource = Azure::ARM::Monitor::Api_2017_05_01_preview::Models::DiagnosticSettingsResource
      CategoryType = Azure::ARM::Monitor::Api_2017_05_01_preview::Models::CategoryType
    end

    #
    # Monitor
    #
    class MonitorClass
      attr_reader :autoscale_settings, :operations, :alert_rule_incidents, :alert_rules, :log_profiles, :action_groups, :activity_log_alerts, :diagnostic_settings_category_operations, :diagnostic_settings_operations, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        client_0 = Azure::ARM::Monitor::Api_2015_04_01::MonitorManagementClient.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        @autoscale_settings = client_0.autoscale_settings
        @operations = client_0.operations

        client_1 = Azure::ARM::Monitor::Api_2016_03_01::MonitorManagementClient.new(configurable.credentials, base_url, options)
        if(client_1.respond_to?(:subscription_id))
          client_1.subscription_id = configurable.subscription_id
        end
        @alert_rule_incidents = client_1.alert_rule_incidents
        @alert_rules = client_1.alert_rules
        @log_profiles = client_1.log_profiles

        client_2 = Azure::ARM::Monitor::Api_2017_04_01::MonitorManagementClient.new(configurable.credentials, base_url, options)
        if(client_2.respond_to?(:subscription_id))
          client_2.subscription_id = configurable.subscription_id
        end
        @action_groups = client_2.action_groups
        @activity_log_alerts = client_2.activity_log_alerts

        client_3 = Azure::ARM::Monitor::Api_2017_05_01_preview::MonitorClient.new(configurable.credentials, base_url, options)
        if(client_3.respond_to?(:subscription_id))
          client_3.subscription_id = configurable.subscription_id
        end
        @diagnostic_settings_category_operations = client_3.diagnostic_settings_category_operations
        @diagnostic_settings_operations = client_3.diagnostic_settings_operations

        @model_classes = ModelClasses.new
      end

      #
      # Method to get the client object
      #
      # @return Client object
      #
      def get_client(version = '2017-05-01-preview')
        case version
          when '2015-04-01'
            client = Azure::ARM::Monitor::Api_2015_04_01::MonitorManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          when '2016-03-01'
            client = Azure::ARM::Monitor::Api_2016_03_01::MonitorManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          when '2017-04-01'
            client = Azure::ARM::Monitor::Api_2017_04_01::MonitorManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          when '2017-05-01-preview'
            client = Azure::ARM::Monitor::Api_2017_05_01_preview::MonitorClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def email_notification
          Azure::ARM::Monitor::Api_2015_04_01::Models::EmailNotification
        end
        def webhook_notification
          Azure::ARM::Monitor::Api_2015_04_01::Models::WebhookNotification
        end
        def scale_capacity
          Azure::ARM::Monitor::Api_2015_04_01::Models::ScaleCapacity
        end
        def autoscale_notification
          Azure::ARM::Monitor::Api_2015_04_01::Models::AutoscaleNotification
        end
        def scale_action
          Azure::ARM::Monitor::Api_2015_04_01::Models::ScaleAction
        end
        def scale_rule
          Azure::ARM::Monitor::Api_2015_04_01::Models::ScaleRule
        end
        def recurrent_schedule
          Azure::ARM::Monitor::Api_2015_04_01::Models::RecurrentSchedule
        end
        def autoscale_setting_resource_patch
          Azure::ARM::Monitor::Api_2015_04_01::Models::AutoscaleSettingResourcePatch
        end
        def autoscale_profile
          Azure::ARM::Monitor::Api_2015_04_01::Models::AutoscaleProfile
        end
        def autoscale_setting_resource_collection
          Azure::ARM::Monitor::Api_2015_04_01::Models::AutoscaleSettingResourceCollection
        end
        def metric_trigger
          Azure::ARM::Monitor::Api_2015_04_01::Models::MetricTrigger
        end
        def recurrence
          Azure::ARM::Monitor::Api_2015_04_01::Models::Recurrence
        end
        def operation_display
          Azure::ARM::Monitor::Api_2015_04_01::Models::OperationDisplay
        end
        def time_window
          Azure::ARM::Monitor::Api_2015_04_01::Models::TimeWindow
        end
        def operation
          Azure::ARM::Monitor::Api_2015_04_01::Models::Operation
        end
        def operation_list_result
          Azure::ARM::Monitor::Api_2015_04_01::Models::OperationListResult
        end
        def autoscale_setting_resource
          Azure::ARM::Monitor::Api_2015_04_01::Models::AutoscaleSettingResource
        end
        def metric_statistic_type
          Azure::ARM::Monitor::Api_2015_04_01::Models::MetricStatisticType
        end
        def time_aggregation_type
          Azure::ARM::Monitor::Api_2015_04_01::Models::TimeAggregationType
        end
        def comparison_operation_type
          Azure::ARM::Monitor::Api_2015_04_01::Models::ComparisonOperationType
        end
        def scale_direction
          Azure::ARM::Monitor::Api_2015_04_01::Models::ScaleDirection
        end
        def scale_type
          Azure::ARM::Monitor::Api_2015_04_01::Models::ScaleType
        end
        def recurrence_frequency
          Azure::ARM::Monitor::Api_2015_04_01::Models::RecurrenceFrequency
        end
        def alert_rule_resource_patch
          Azure::ARM::Monitor::Api_2016_03_01::Models::AlertRuleResourcePatch
        end
        def incident
          Azure::ARM::Monitor::Api_2016_03_01::Models::Incident
        end
        def alert_rule_resource_collection
          Azure::ARM::Monitor::Api_2016_03_01::Models::AlertRuleResourceCollection
        end
        def management_event_aggregation_condition
          Azure::ARM::Monitor::Api_2016_03_01::Models::ManagementEventAggregationCondition
        end
        def rule_condition
          Azure::ARM::Monitor::Api_2016_03_01::Models::RuleCondition
        end
        def rule_management_event_claims_data_source
          Azure::ARM::Monitor::Api_2016_03_01::Models::RuleManagementEventClaimsDataSource
        end
        def rule_action
          Azure::ARM::Monitor::Api_2016_03_01::Models::RuleAction
        end
        def incident_list_result
          Azure::ARM::Monitor::Api_2016_03_01::Models::IncidentListResult
        end
        def log_profile_collection
          Azure::ARM::Monitor::Api_2016_03_01::Models::LogProfileCollection
        end
        def rule_data_source
          Azure::ARM::Monitor::Api_2016_03_01::Models::RuleDataSource
        end
        def log_profile_resource_patch
          Azure::ARM::Monitor::Api_2016_03_01::Models::LogProfileResourcePatch
        end
        def rule_metric_data_source
          Azure::ARM::Monitor::Api_2016_03_01::Models::RuleMetricDataSource
        end
        def rule_management_event_data_source
          Azure::ARM::Monitor::Api_2016_03_01::Models::RuleManagementEventDataSource
        end
        def threshold_rule_condition
          Azure::ARM::Monitor::Api_2016_03_01::Models::ThresholdRuleCondition
        end
        def location_threshold_rule_condition
          Azure::ARM::Monitor::Api_2016_03_01::Models::LocationThresholdRuleCondition
        end
        def management_event_rule_condition
          Azure::ARM::Monitor::Api_2016_03_01::Models::ManagementEventRuleCondition
        end
        def rule_email_action
          Azure::ARM::Monitor::Api_2016_03_01::Models::RuleEmailAction
        end
        def rule_webhook_action
          Azure::ARM::Monitor::Api_2016_03_01::Models::RuleWebhookAction
        end
        def alert_rule_resource
          Azure::ARM::Monitor::Api_2016_03_01::Models::AlertRuleResource
        end
        def log_profile_resource
          Azure::ARM::Monitor::Api_2016_03_01::Models::LogProfileResource
        end
        def condition_operator
          Azure::ARM::Monitor::Api_2016_03_01::Models::ConditionOperator
        end
        def time_aggregation_operator
          Azure::ARM::Monitor::Api_2016_03_01::Models::TimeAggregationOperator
        end
        def activity_log_alert_leaf_condition
          Azure::ARM::Monitor::Api_2017_04_01::Models::ActivityLogAlertLeafCondition
        end
        def email_receiver
          Azure::ARM::Monitor::Api_2017_04_01::Models::EmailReceiver
        end
        def activity_log_alert_all_of_condition
          Azure::ARM::Monitor::Api_2017_04_01::Models::ActivityLogAlertAllOfCondition
        end
        def webhook_receiver
          Azure::ARM::Monitor::Api_2017_04_01::Models::WebhookReceiver
        end
        def activity_log_alert_action_group
          Azure::ARM::Monitor::Api_2017_04_01::Models::ActivityLogAlertActionGroup
        end
        def action_group_list
          Azure::ARM::Monitor::Api_2017_04_01::Models::ActionGroupList
        end
        def activity_log_alert_action_list
          Azure::ARM::Monitor::Api_2017_04_01::Models::ActivityLogAlertActionList
        end
        def sms_receiver
          Azure::ARM::Monitor::Api_2017_04_01::Models::SmsReceiver
        end
        def enable_request
          Azure::ARM::Monitor::Api_2017_04_01::Models::EnableRequest
        end
        def activity_log_alert_list
          Azure::ARM::Monitor::Api_2017_04_01::Models::ActivityLogAlertList
        end
        def activity_log_alert_patch_body
          Azure::ARM::Monitor::Api_2017_04_01::Models::ActivityLogAlertPatchBody
        end
        def action_group_resource
          Azure::ARM::Monitor::Api_2017_04_01::Models::ActionGroupResource
        end
        def activity_log_alert_resource
          Azure::ARM::Monitor::Api_2017_04_01::Models::ActivityLogAlertResource
        end
        def receiver_status
          Azure::ARM::Monitor::Api_2017_04_01::Models::ReceiverStatus
        end
        def retention_policy
          Azure::ARM::Monitor::Api_2017_05_01_preview::Models::RetentionPolicy
        end
        def metric_settings
          Azure::ARM::Monitor::Api_2017_05_01_preview::Models::MetricSettings
        end
        def proxy_only_resource
          Azure::ARM::Monitor::Api_2017_05_01_preview::Models::ProxyOnlyResource
        end
        def error_response
          Azure::ARM::Monitor::Api_2017_05_01_preview::Models::ErrorResponse
        end
        def log_settings
          Azure::ARM::Monitor::Api_2017_05_01_preview::Models::LogSettings
        end
        def diagnostic_settings_category_resource_collection
          Azure::ARM::Monitor::Api_2017_05_01_preview::Models::DiagnosticSettingsCategoryResourceCollection
        end
        def diagnostic_settings_resource_collection
          Azure::ARM::Monitor::Api_2017_05_01_preview::Models::DiagnosticSettingsResourceCollection
        end
        def diagnostic_settings_category_resource
          Azure::ARM::Monitor::Api_2017_05_01_preview::Models::DiagnosticSettingsCategoryResource
        end
        def diagnostic_settings_resource
          Azure::ARM::Monitor::Api_2017_05_01_preview::Models::DiagnosticSettingsResource
        end
        def category_type
          Azure::ARM::Monitor::Api_2017_05_01_preview::Models::CategoryType
        end
      end
    end
end
