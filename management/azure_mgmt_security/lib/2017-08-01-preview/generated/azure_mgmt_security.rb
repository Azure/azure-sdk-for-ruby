# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
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
require '2017-08-01-preview/generated/azure_mgmt_security/module_definition'
require 'ms_rest_azure'

module Azure::Security::Mgmt::V2017_08_01_preview
  autoload :AdvancedThreatProtection,                           '2017-08-01-preview/generated/azure_mgmt_security/advanced_threat_protection.rb'
  autoload :AutoProvisioningSettings,                           '2017-08-01-preview/generated/azure_mgmt_security/auto_provisioning_settings.rb'
  autoload :Compliances,                                        '2017-08-01-preview/generated/azure_mgmt_security/compliances.rb'
  autoload :DeviceSecurityGroups,                               '2017-08-01-preview/generated/azure_mgmt_security/device_security_groups.rb'
  autoload :InformationProtectionPolicies,                      '2017-08-01-preview/generated/azure_mgmt_security/information_protection_policies.rb'
  autoload :IoTSecuritySolutionsAnalytics,                      '2017-08-01-preview/generated/azure_mgmt_security/io_tsecurity_solutions_analytics.rb'
  autoload :IoTSecuritySolutionsAnalyticsAggregatedAlerts,      '2017-08-01-preview/generated/azure_mgmt_security/io_tsecurity_solutions_analytics_aggregated_alerts.rb'
  autoload :IoTSecuritySolutionsAnalyticsAggregatedAlert,       '2017-08-01-preview/generated/azure_mgmt_security/io_tsecurity_solutions_analytics_aggregated_alert.rb'
  autoload :IoTSecuritySolutionsAnalyticsRecommendation,        '2017-08-01-preview/generated/azure_mgmt_security/io_tsecurity_solutions_analytics_recommendation.rb'
  autoload :IoTSecuritySolutionsAnalyticsRecommendations,       '2017-08-01-preview/generated/azure_mgmt_security/io_tsecurity_solutions_analytics_recommendations.rb'
  autoload :IoTSecuritySolutions,                               '2017-08-01-preview/generated/azure_mgmt_security/io_tsecurity_solutions.rb'
  autoload :IoTSecuritySolutionsResourceGroup,                  '2017-08-01-preview/generated/azure_mgmt_security/io_tsecurity_solutions_resource_group.rb'
  autoload :IotSecuritySolution,                                '2017-08-01-preview/generated/azure_mgmt_security/iot_security_solution.rb'
  autoload :Pricings,                                           '2017-08-01-preview/generated/azure_mgmt_security/pricings.rb'
  autoload :SecurityContacts,                                   '2017-08-01-preview/generated/azure_mgmt_security/security_contacts.rb'
  autoload :Settings,                                           '2017-08-01-preview/generated/azure_mgmt_security/settings.rb'
  autoload :WorkspaceSettings,                                  '2017-08-01-preview/generated/azure_mgmt_security/workspace_settings.rb'
  autoload :SecurityCenter,                                     '2017-08-01-preview/generated/azure_mgmt_security/security_center.rb'

  module Models
    autoload :IoTSecurityDeviceAlertsList,                        '2017-08-01-preview/generated/azure_mgmt_security/models/io_tsecurity_device_alerts_list.rb'
    autoload :DeviceSecurityGroupList,                            '2017-08-01-preview/generated/azure_mgmt_security/models/device_security_group_list.rb'
    autoload :IoTSecurityDeviceAlert,                             '2017-08-01-preview/generated/azure_mgmt_security/models/io_tsecurity_device_alert.rb'
    autoload :CustomAlertRule,                                    '2017-08-01-preview/generated/azure_mgmt_security/models/custom_alert_rule.rb'
    autoload :AzureTrackedResourceLocation,                       '2017-08-01-preview/generated/azure_mgmt_security/models/azure_tracked_resource_location.rb'
    autoload :InformationProtectionKeyword,                       '2017-08-01-preview/generated/azure_mgmt_security/models/information_protection_keyword.rb'
    autoload :ETag,                                               '2017-08-01-preview/generated/azure_mgmt_security/models/etag.rb'
    autoload :SensitivityLabel,                                   '2017-08-01-preview/generated/azure_mgmt_security/models/sensitivity_label.rb'
    autoload :Resource,                                           '2017-08-01-preview/generated/azure_mgmt_security/models/resource.rb'
    autoload :PricingList,                                        '2017-08-01-preview/generated/azure_mgmt_security/models/pricing_list.rb'
    autoload :IoTSecurityAlertedDevicesList,                      '2017-08-01-preview/generated/azure_mgmt_security/models/io_tsecurity_alerted_devices_list.rb'
    autoload :SecurityContactList,                                '2017-08-01-preview/generated/azure_mgmt_security/models/security_contact_list.rb'
    autoload :ComplianceSegment,                                  '2017-08-01-preview/generated/azure_mgmt_security/models/compliance_segment.rb'
    autoload :SettingsList,                                       '2017-08-01-preview/generated/azure_mgmt_security/models/settings_list.rb'
    autoload :ComplianceList,                                     '2017-08-01-preview/generated/azure_mgmt_security/models/compliance_list.rb'
    autoload :IoTSecurityDeviceRecommendationsList,               '2017-08-01-preview/generated/azure_mgmt_security/models/io_tsecurity_device_recommendations_list.rb'
    autoload :IoTSeverityMetrics,                                 '2017-08-01-preview/generated/azure_mgmt_security/models/io_tseverity_metrics.rb'
    autoload :IoTSecurityDeviceRecommendation,                    '2017-08-01-preview/generated/azure_mgmt_security/models/io_tsecurity_device_recommendation.rb'
    autoload :IoTSecuritySolutionsList,                           '2017-08-01-preview/generated/azure_mgmt_security/models/io_tsecurity_solutions_list.rb'
    autoload :IoTSecurityAggregatedAlert,                         '2017-08-01-preview/generated/azure_mgmt_security/models/io_tsecurity_aggregated_alert.rb'
    autoload :TrackedResource,                                    '2017-08-01-preview/generated/azure_mgmt_security/models/tracked_resource.rb'
    autoload :IoTSecuritySolutionAnalyticsModelList,              '2017-08-01-preview/generated/azure_mgmt_security/models/io_tsecurity_solution_analytics_model_list.rb'
    autoload :Tags,                                               '2017-08-01-preview/generated/azure_mgmt_security/models/tags.rb'
    autoload :IoTSecuritySolutionModel,                           '2017-08-01-preview/generated/azure_mgmt_security/models/io_tsecurity_solution_model.rb'
    autoload :AutoProvisioningSettingList,                        '2017-08-01-preview/generated/azure_mgmt_security/models/auto_provisioning_setting_list.rb'
    autoload :RecommendationConfigurationProperties,              '2017-08-01-preview/generated/azure_mgmt_security/models/recommendation_configuration_properties.rb'
    autoload :IoTSecuritySolutionAnalyticsModelPropertiesDevicesMetricsItem, '2017-08-01-preview/generated/azure_mgmt_security/models/io_tsecurity_solution_analytics_model_properties_devices_metrics_item.rb'
    autoload :UserDefinedResourcesProperties,                     '2017-08-01-preview/generated/azure_mgmt_security/models/user_defined_resources_properties.rb'
    autoload :InformationType,                                    '2017-08-01-preview/generated/azure_mgmt_security/models/information_type.rb'
    autoload :TagsResource,                                       '2017-08-01-preview/generated/azure_mgmt_security/models/tags_resource.rb'
    autoload :IoTSecurityAggregatedRecommendationList,            '2017-08-01-preview/generated/azure_mgmt_security/models/io_tsecurity_aggregated_recommendation_list.rb'
    autoload :InformationProtectionPolicyList,                    '2017-08-01-preview/generated/azure_mgmt_security/models/information_protection_policy_list.rb'
    autoload :IoTSecurityAggregatedRecommendation,                '2017-08-01-preview/generated/azure_mgmt_security/models/io_tsecurity_aggregated_recommendation.rb'
    autoload :IoTSecurityAlertedDevice,                           '2017-08-01-preview/generated/azure_mgmt_security/models/io_tsecurity_alerted_device.rb'
    autoload :IoTSecurityAggregatedAlertList,                     '2017-08-01-preview/generated/azure_mgmt_security/models/io_tsecurity_aggregated_alert_list.rb'
    autoload :Kind,                                               '2017-08-01-preview/generated/azure_mgmt_security/models/kind.rb'
    autoload :WorkspaceSettingList,                               '2017-08-01-preview/generated/azure_mgmt_security/models/workspace_setting_list.rb'
    autoload :AdvancedThreatProtectionSetting,                    '2017-08-01-preview/generated/azure_mgmt_security/models/advanced_threat_protection_setting.rb'
    autoload :AscLocation,                                        '2017-08-01-preview/generated/azure_mgmt_security/models/asc_location.rb'
    autoload :AutoProvisioningSetting,                            '2017-08-01-preview/generated/azure_mgmt_security/models/auto_provisioning_setting.rb'
    autoload :Compliance,                                         '2017-08-01-preview/generated/azure_mgmt_security/models/compliance.rb'
    autoload :ThresholdCustomAlertRule,                           '2017-08-01-preview/generated/azure_mgmt_security/models/threshold_custom_alert_rule.rb'
    autoload :TimeWindowCustomAlertRule,                          '2017-08-01-preview/generated/azure_mgmt_security/models/time_window_custom_alert_rule.rb'
    autoload :ListCustomAlertRule,                                '2017-08-01-preview/generated/azure_mgmt_security/models/list_custom_alert_rule.rb'
    autoload :AllowlistCustomAlertRule,                           '2017-08-01-preview/generated/azure_mgmt_security/models/allowlist_custom_alert_rule.rb'
    autoload :DenylistCustomAlertRule,                            '2017-08-01-preview/generated/azure_mgmt_security/models/denylist_custom_alert_rule.rb'
    autoload :DeviceSecurityGroup,                                '2017-08-01-preview/generated/azure_mgmt_security/models/device_security_group.rb'
    autoload :ConnectionToIpNotAllowed,                           '2017-08-01-preview/generated/azure_mgmt_security/models/connection_to_ip_not_allowed.rb'
    autoload :LocalUserNotAllowed,                                '2017-08-01-preview/generated/azure_mgmt_security/models/local_user_not_allowed.rb'
    autoload :ProcessNotAllowed,                                  '2017-08-01-preview/generated/azure_mgmt_security/models/process_not_allowed.rb'
    autoload :ActiveConnectionsNotInAllowedRange,                 '2017-08-01-preview/generated/azure_mgmt_security/models/active_connections_not_in_allowed_range.rb'
    autoload :AmqpC2DMessagesNotInAllowedRange,                   '2017-08-01-preview/generated/azure_mgmt_security/models/amqp_c2dmessages_not_in_allowed_range.rb'
    autoload :MqttC2DMessagesNotInAllowedRange,                   '2017-08-01-preview/generated/azure_mgmt_security/models/mqtt_c2dmessages_not_in_allowed_range.rb'
    autoload :HttpC2DMessagesNotInAllowedRange,                   '2017-08-01-preview/generated/azure_mgmt_security/models/http_c2dmessages_not_in_allowed_range.rb'
    autoload :AmqpC2DRejectedMessagesNotInAllowedRange,           '2017-08-01-preview/generated/azure_mgmt_security/models/amqp_c2drejected_messages_not_in_allowed_range.rb'
    autoload :MqttC2DRejectedMessagesNotInAllowedRange,           '2017-08-01-preview/generated/azure_mgmt_security/models/mqtt_c2drejected_messages_not_in_allowed_range.rb'
    autoload :HttpC2DRejectedMessagesNotInAllowedRange,           '2017-08-01-preview/generated/azure_mgmt_security/models/http_c2drejected_messages_not_in_allowed_range.rb'
    autoload :AmqpD2CMessagesNotInAllowedRange,                   '2017-08-01-preview/generated/azure_mgmt_security/models/amqp_d2cmessages_not_in_allowed_range.rb'
    autoload :MqttD2CMessagesNotInAllowedRange,                   '2017-08-01-preview/generated/azure_mgmt_security/models/mqtt_d2cmessages_not_in_allowed_range.rb'
    autoload :HttpD2CMessagesNotInAllowedRange,                   '2017-08-01-preview/generated/azure_mgmt_security/models/http_d2cmessages_not_in_allowed_range.rb'
    autoload :DirectMethodInvokesNotInAllowedRange,               '2017-08-01-preview/generated/azure_mgmt_security/models/direct_method_invokes_not_in_allowed_range.rb'
    autoload :FailedLocalLoginsNotInAllowedRange,                 '2017-08-01-preview/generated/azure_mgmt_security/models/failed_local_logins_not_in_allowed_range.rb'
    autoload :FileUploadsNotInAllowedRange,                       '2017-08-01-preview/generated/azure_mgmt_security/models/file_uploads_not_in_allowed_range.rb'
    autoload :QueuePurgesNotInAllowedRange,                       '2017-08-01-preview/generated/azure_mgmt_security/models/queue_purges_not_in_allowed_range.rb'
    autoload :TwinUpdatesNotInAllowedRange,                       '2017-08-01-preview/generated/azure_mgmt_security/models/twin_updates_not_in_allowed_range.rb'
    autoload :UnauthorizedOperationsNotInAllowedRange,            '2017-08-01-preview/generated/azure_mgmt_security/models/unauthorized_operations_not_in_allowed_range.rb'
    autoload :InformationProtectionPolicy,                        '2017-08-01-preview/generated/azure_mgmt_security/models/information_protection_policy.rb'
    autoload :IoTSecuritySolutionAnalyticsModel,                  '2017-08-01-preview/generated/azure_mgmt_security/models/io_tsecurity_solution_analytics_model.rb'
    autoload :UpdateIotSecuritySolutionData,                      '2017-08-01-preview/generated/azure_mgmt_security/models/update_iot_security_solution_data.rb'
    autoload :Pricing,                                            '2017-08-01-preview/generated/azure_mgmt_security/models/pricing.rb'
    autoload :SecurityContact,                                    '2017-08-01-preview/generated/azure_mgmt_security/models/security_contact.rb'
    autoload :SettingResource,                                    '2017-08-01-preview/generated/azure_mgmt_security/models/setting_resource.rb'
    autoload :Setting,                                            '2017-08-01-preview/generated/azure_mgmt_security/models/setting.rb'
    autoload :DataExportSetting,                                  '2017-08-01-preview/generated/azure_mgmt_security/models/data_export_setting.rb'
    autoload :WorkspaceSetting,                                   '2017-08-01-preview/generated/azure_mgmt_security/models/workspace_setting.rb'
    autoload :AutoProvision,                                      '2017-08-01-preview/generated/azure_mgmt_security/models/auto_provision.rb'
    autoload :ValueType,                                          '2017-08-01-preview/generated/azure_mgmt_security/models/value_type.rb'
    autoload :Rank,                                               '2017-08-01-preview/generated/azure_mgmt_security/models/rank.rb'
    autoload :ReportedSeverity,                                   '2017-08-01-preview/generated/azure_mgmt_security/models/reported_severity.rb'
    autoload :SecuritySolutionStatus,                             '2017-08-01-preview/generated/azure_mgmt_security/models/security_solution_status.rb'
    autoload :ExportData,                                         '2017-08-01-preview/generated/azure_mgmt_security/models/export_data.rb'
    autoload :DataSource,                                         '2017-08-01-preview/generated/azure_mgmt_security/models/data_source.rb'
    autoload :RecommendationType,                                 '2017-08-01-preview/generated/azure_mgmt_security/models/recommendation_type.rb'
    autoload :RecommendationConfigStatus,                         '2017-08-01-preview/generated/azure_mgmt_security/models/recommendation_config_status.rb'
    autoload :PricingTier,                                        '2017-08-01-preview/generated/azure_mgmt_security/models/pricing_tier.rb'
    autoload :AlertNotifications,                                 '2017-08-01-preview/generated/azure_mgmt_security/models/alert_notifications.rb'
    autoload :AlertsToAdmins,                                     '2017-08-01-preview/generated/azure_mgmt_security/models/alerts_to_admins.rb'
    autoload :SettingKind,                                        '2017-08-01-preview/generated/azure_mgmt_security/models/setting_kind.rb'
  end
end
