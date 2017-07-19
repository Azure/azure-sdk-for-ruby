# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require 'generated/azure_mgmt_monitor/module_definition'
require 'ms_rest_azure'

module Azure::ARM::Monitor
  autoload :AutoscaleSettings,                                  'generated/azure_mgmt_monitor/autoscale_settings.rb'
  autoload :AlertRuleIncidents,                                 'generated/azure_mgmt_monitor/alert_rule_incidents.rb'
  autoload :AlertRules,                                         'generated/azure_mgmt_monitor/alert_rules.rb'
  autoload :LogProfiles,                                        'generated/azure_mgmt_monitor/log_profiles.rb'
  autoload :ServiceDiagnosticSettingsOperations,                'generated/azure_mgmt_monitor/service_diagnostic_settings_operations.rb'
  autoload :ActionGroups,                                       'generated/azure_mgmt_monitor/action_groups.rb'
  autoload :ActivityLogAlerts,                                  'generated/azure_mgmt_monitor/activity_log_alerts.rb'
  autoload :MonitorManagementClient,                            'generated/azure_mgmt_monitor/monitor_management_client.rb'

  module Models
    autoload :RuleAction,                                         'generated/azure_mgmt_monitor/models/rule_action.rb'
    autoload :ActionGroupList,                                    'generated/azure_mgmt_monitor/models/action_group_list.rb'
    autoload :MetricTrigger,                                      'generated/azure_mgmt_monitor/models/metric_trigger.rb'
    autoload :ActivityLogAlertLeafCondition,                      'generated/azure_mgmt_monitor/models/activity_log_alert_leaf_condition.rb'
    autoload :ScaleRule,                                          'generated/azure_mgmt_monitor/models/scale_rule.rb'
    autoload :ManagementEventAggregationCondition,                'generated/azure_mgmt_monitor/models/management_event_aggregation_condition.rb'
    autoload :RecurrentSchedule,                                  'generated/azure_mgmt_monitor/models/recurrent_schedule.rb'
    autoload :EnableRequest,                                      'generated/azure_mgmt_monitor/models/enable_request.rb'
    autoload :AutoscaleProfile,                                   'generated/azure_mgmt_monitor/models/autoscale_profile.rb'
    autoload :ScaleCapacity,                                      'generated/azure_mgmt_monitor/models/scale_capacity.rb'
    autoload :WebhookNotification,                                'generated/azure_mgmt_monitor/models/webhook_notification.rb'
    autoload :AutoscaleNotification,                              'generated/azure_mgmt_monitor/models/autoscale_notification.rb'
    autoload :AutoscaleSettingResourcePatch,                      'generated/azure_mgmt_monitor/models/autoscale_setting_resource_patch.rb'
    autoload :SmsReceiver,                                        'generated/azure_mgmt_monitor/models/sms_receiver.rb'
    autoload :ErrorResponse,                                      'generated/azure_mgmt_monitor/models/error_response.rb'
    autoload :ActivityLogAlertPatchBody,                          'generated/azure_mgmt_monitor/models/activity_log_alert_patch_body.rb'
    autoload :IncidentListResult,                                 'generated/azure_mgmt_monitor/models/incident_list_result.rb'
    autoload :ActivityLogAlertList,                               'generated/azure_mgmt_monitor/models/activity_log_alert_list.rb'
    autoload :RuleCondition,                                      'generated/azure_mgmt_monitor/models/rule_condition.rb'
    autoload :AlertRuleResourcePatch,                             'generated/azure_mgmt_monitor/models/alert_rule_resource_patch.rb'
    autoload :RuleManagementEventClaimsDataSource,                'generated/azure_mgmt_monitor/models/rule_management_event_claims_data_source.rb'
    autoload :AlertRuleResourceCollection,                        'generated/azure_mgmt_monitor/models/alert_rule_resource_collection.rb'
    autoload :ScaleAction,                                        'generated/azure_mgmt_monitor/models/scale_action.rb'
    autoload :RetentionPolicy,                                    'generated/azure_mgmt_monitor/models/retention_policy.rb'
    autoload :Recurrence,                                         'generated/azure_mgmt_monitor/models/recurrence.rb'
    autoload :ActivityLogAlertActionList,                         'generated/azure_mgmt_monitor/models/activity_log_alert_action_list.rb'
    autoload :AutoscaleSettingResourceCollection,                 'generated/azure_mgmt_monitor/models/autoscale_setting_resource_collection.rb'
    autoload :LogProfileResourcePatch,                            'generated/azure_mgmt_monitor/models/log_profile_resource_patch.rb'
    autoload :RuleDataSource,                                     'generated/azure_mgmt_monitor/models/rule_data_source.rb'
    autoload :LogProfileCollection,                               'generated/azure_mgmt_monitor/models/log_profile_collection.rb'
    autoload :WebhookReceiver,                                    'generated/azure_mgmt_monitor/models/webhook_receiver.rb'
    autoload :MetricSettings,                                     'generated/azure_mgmt_monitor/models/metric_settings.rb'
    autoload :EmailNotification,                                  'generated/azure_mgmt_monitor/models/email_notification.rb'
    autoload :LogSettings,                                        'generated/azure_mgmt_monitor/models/log_settings.rb'
    autoload :ActivityLogAlertAllOfCondition,                     'generated/azure_mgmt_monitor/models/activity_log_alert_all_of_condition.rb'
    autoload :ActivityLogAlertActionGroup,                        'generated/azure_mgmt_monitor/models/activity_log_alert_action_group.rb'
    autoload :Incident,                                           'generated/azure_mgmt_monitor/models/incident.rb'
    autoload :ServiceDiagnosticSettingsResourcePatch,             'generated/azure_mgmt_monitor/models/service_diagnostic_settings_resource_patch.rb'
    autoload :TimeWindow,                                         'generated/azure_mgmt_monitor/models/time_window.rb'
    autoload :EmailReceiver,                                      'generated/azure_mgmt_monitor/models/email_receiver.rb'
    autoload :AutoscaleSettingResource,                           'generated/azure_mgmt_monitor/models/autoscale_setting_resource.rb'
    autoload :RuleMetricDataSource,                               'generated/azure_mgmt_monitor/models/rule_metric_data_source.rb'
    autoload :RuleManagementEventDataSource,                      'generated/azure_mgmt_monitor/models/rule_management_event_data_source.rb'
    autoload :ThresholdRuleCondition,                             'generated/azure_mgmt_monitor/models/threshold_rule_condition.rb'
    autoload :LocationThresholdRuleCondition,                     'generated/azure_mgmt_monitor/models/location_threshold_rule_condition.rb'
    autoload :ManagementEventRuleCondition,                       'generated/azure_mgmt_monitor/models/management_event_rule_condition.rb'
    autoload :RuleEmailAction,                                    'generated/azure_mgmt_monitor/models/rule_email_action.rb'
    autoload :RuleWebhookAction,                                  'generated/azure_mgmt_monitor/models/rule_webhook_action.rb'
    autoload :AlertRuleResource,                                  'generated/azure_mgmt_monitor/models/alert_rule_resource.rb'
    autoload :LogProfileResource,                                 'generated/azure_mgmt_monitor/models/log_profile_resource.rb'
    autoload :ServiceDiagnosticSettingsResource,                  'generated/azure_mgmt_monitor/models/service_diagnostic_settings_resource.rb'
    autoload :ActionGroupResource,                                'generated/azure_mgmt_monitor/models/action_group_resource.rb'
    autoload :ActivityLogAlertResource,                           'generated/azure_mgmt_monitor/models/activity_log_alert_resource.rb'
    autoload :MetricStatisticType,                                'generated/azure_mgmt_monitor/models/metric_statistic_type.rb'
    autoload :TimeAggregationType,                                'generated/azure_mgmt_monitor/models/time_aggregation_type.rb'
    autoload :ComparisonOperationType,                            'generated/azure_mgmt_monitor/models/comparison_operation_type.rb'
    autoload :ScaleDirection,                                     'generated/azure_mgmt_monitor/models/scale_direction.rb'
    autoload :ScaleType,                                          'generated/azure_mgmt_monitor/models/scale_type.rb'
    autoload :RecurrenceFrequency,                                'generated/azure_mgmt_monitor/models/recurrence_frequency.rb'
    autoload :ConditionOperator,                                  'generated/azure_mgmt_monitor/models/condition_operator.rb'
    autoload :TimeAggregationOperator,                            'generated/azure_mgmt_monitor/models/time_aggregation_operator.rb'
    autoload :ReceiverStatus,                                     'generated/azure_mgmt_monitor/models/receiver_status.rb'
  end
end
