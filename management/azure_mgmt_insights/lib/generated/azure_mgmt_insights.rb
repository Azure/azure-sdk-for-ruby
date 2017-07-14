# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
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
require 'generated/azure_mgmt_insights/module_definition'
require 'ms_rest_azure'

module Azure::ARM::Insights
  autoload :AutoscaleSettings,                                  'generated/azure_mgmt_insights/autoscale_settings.rb'
  autoload :ServiceDiagnosticSettingsOperations,                'generated/azure_mgmt_insights/service_diagnostic_settings_operations.rb'
  autoload :AlertRules,                                         'generated/azure_mgmt_insights/alert_rules.rb'
  autoload :AlertRuleIncidents,                                 'generated/azure_mgmt_insights/alert_rule_incidents.rb'
  autoload :LogProfiles,                                        'generated/azure_mgmt_insights/log_profiles.rb'
  autoload :InsightsManagementClient,                           'generated/azure_mgmt_insights/insights_management_client.rb'

  module Models
    autoload :RuleCondition,                                      'generated/azure_mgmt_insights/models/rule_condition.rb'
    autoload :RuleDataSource,                                     'generated/azure_mgmt_insights/models/rule_data_source.rb'
    autoload :MetricTrigger,                                      'generated/azure_mgmt_insights/models/metric_trigger.rb'
    autoload :MetricSettings,                                     'generated/azure_mgmt_insights/models/metric_settings.rb'
    autoload :LogSettings,                                        'generated/azure_mgmt_insights/models/log_settings.rb'
    autoload :TimeWindow,                                         'generated/azure_mgmt_insights/models/time_window.rb'
    autoload :RecurrentSchedule,                                  'generated/azure_mgmt_insights/models/recurrent_schedule.rb'
    autoload :RuleAction,                                         'generated/azure_mgmt_insights/models/rule_action.rb'
    autoload :AutoscaleProfile,                                   'generated/azure_mgmt_insights/models/autoscale_profile.rb'
    autoload :ScaleCapacity,                                      'generated/azure_mgmt_insights/models/scale_capacity.rb'
    autoload :WebhookNotification,                                'generated/azure_mgmt_insights/models/webhook_notification.rb'
    autoload :ScaleAction,                                        'generated/azure_mgmt_insights/models/scale_action.rb'
    autoload :AlertRuleResourceCollection,                        'generated/azure_mgmt_insights/models/alert_rule_resource_collection.rb'
    autoload :AutoscaleSettingResourceCollection,                 'generated/azure_mgmt_insights/models/autoscale_setting_resource_collection.rb'
    autoload :ScaleRule,                                          'generated/azure_mgmt_insights/models/scale_rule.rb'
    autoload :RuleManagementEventClaimsDataSource,                'generated/azure_mgmt_insights/models/rule_management_event_claims_data_source.rb'
    autoload :EmailNotification,                                  'generated/azure_mgmt_insights/models/email_notification.rb'
    autoload :LogProfileCollection,                               'generated/azure_mgmt_insights/models/log_profile_collection.rb'
    autoload :RetentionPolicy,                                    'generated/azure_mgmt_insights/models/retention_policy.rb'
    autoload :IncidentListResult,                                 'generated/azure_mgmt_insights/models/incident_list_result.rb'
    autoload :AutoscaleNotification,                              'generated/azure_mgmt_insights/models/autoscale_notification.rb'
    autoload :Incident,                                           'generated/azure_mgmt_insights/models/incident.rb'
    autoload :Recurrence,                                         'generated/azure_mgmt_insights/models/recurrence.rb'
    autoload :ManagementEventAggregationCondition,                'generated/azure_mgmt_insights/models/management_event_aggregation_condition.rb'
    autoload :AutoscaleSettingResource,                           'generated/azure_mgmt_insights/models/autoscale_setting_resource.rb'
    autoload :ServiceDiagnosticSettingsResource,                  'generated/azure_mgmt_insights/models/service_diagnostic_settings_resource.rb'
    autoload :RuleMetricDataSource,                               'generated/azure_mgmt_insights/models/rule_metric_data_source.rb'
    autoload :RuleManagementEventDataSource,                      'generated/azure_mgmt_insights/models/rule_management_event_data_source.rb'
    autoload :ThresholdRuleCondition,                             'generated/azure_mgmt_insights/models/threshold_rule_condition.rb'
    autoload :LocationThresholdRuleCondition,                     'generated/azure_mgmt_insights/models/location_threshold_rule_condition.rb'
    autoload :ManagementEventRuleCondition,                       'generated/azure_mgmt_insights/models/management_event_rule_condition.rb'
    autoload :RuleEmailAction,                                    'generated/azure_mgmt_insights/models/rule_email_action.rb'
    autoload :RuleWebhookAction,                                  'generated/azure_mgmt_insights/models/rule_webhook_action.rb'
    autoload :AlertRuleResource,                                  'generated/azure_mgmt_insights/models/alert_rule_resource.rb'
    autoload :LogProfileResource,                                 'generated/azure_mgmt_insights/models/log_profile_resource.rb'
    autoload :MetricStatisticType,                                'generated/azure_mgmt_insights/models/metric_statistic_type.rb'
    autoload :TimeAggregationType,                                'generated/azure_mgmt_insights/models/time_aggregation_type.rb'
    autoload :ComparisonOperationType,                            'generated/azure_mgmt_insights/models/comparison_operation_type.rb'
    autoload :ScaleDirection,                                     'generated/azure_mgmt_insights/models/scale_direction.rb'
    autoload :ScaleType,                                          'generated/azure_mgmt_insights/models/scale_type.rb'
    autoload :RecurrenceFrequency,                                'generated/azure_mgmt_insights/models/recurrence_frequency.rb'
    autoload :ConditionOperator,                                  'generated/azure_mgmt_insights/models/condition_operator.rb'
    autoload :TimeAggregationOperator,                            'generated/azure_mgmt_insights/models/time_aggregation_operator.rb'
  end
end
