# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_monitor'

module Azure::Monitor::Profiles::V2019_03_01_Hybrid
  module Mgmt
    ActivityLogs = Azure::Monitor::Mgmt::V2015_04_01::ActivityLogs
    AutoscaleSettings = Azure::Monitor::Mgmt::V2015_04_01::AutoscaleSettings
    EventCategories = Azure::Monitor::Mgmt::V2015_04_01::EventCategories
    Operations = Azure::Monitor::Mgmt::V2015_04_01::Operations
    TenantActivityLogs = Azure::Monitor::Mgmt::V2015_04_01::TenantActivityLogs
    DiagnosticSettingsCategoryOperations = Azure::Monitor::Mgmt::V2017_05_01_preview::DiagnosticSettingsCategoryOperations
    DiagnosticSettingsOperations = Azure::Monitor::Mgmt::V2017_05_01_preview::DiagnosticSettingsOperations
    SubscriptionDiagnosticSettingsOperations = Azure::Monitor::Mgmt::V2017_05_01_preview::SubscriptionDiagnosticSettingsOperations
    MetricDefinitions = Azure::Monitor::Mgmt::V2018_01_01::MetricDefinitions
    Metrics = Azure::Monitor::Mgmt::V2018_01_01::Metrics

    module Models
      RecurrentSchedule = Azure::Monitor::Mgmt::V2015_04_01::Models::RecurrentSchedule
      Recurrence = Azure::Monitor::Mgmt::V2015_04_01::Models::Recurrence
      HttpRequestInfo = Azure::Monitor::Mgmt::V2015_04_01::Models::HttpRequestInfo
      AutoscaleProfile = Azure::Monitor::Mgmt::V2015_04_01::Models::AutoscaleProfile
      EventDataCollection = Azure::Monitor::Mgmt::V2015_04_01::Models::EventDataCollection
      EmailNotification = Azure::Monitor::Mgmt::V2015_04_01::Models::EmailNotification
      Resource = Azure::Monitor::Mgmt::V2015_04_01::Models::Resource
      WebhookNotification = Azure::Monitor::Mgmt::V2015_04_01::Models::WebhookNotification
      ScaleRuleMetricDimension = Azure::Monitor::Mgmt::V2015_04_01::Models::ScaleRuleMetricDimension
      AutoscaleNotification = Azure::Monitor::Mgmt::V2015_04_01::Models::AutoscaleNotification
      ScaleAction = Azure::Monitor::Mgmt::V2015_04_01::Models::ScaleAction
      ScaleRule = Azure::Monitor::Mgmt::V2015_04_01::Models::ScaleRule
      SenderAuthorization = Azure::Monitor::Mgmt::V2015_04_01::Models::SenderAuthorization
      AutoscaleSettingResourcePatch = Azure::Monitor::Mgmt::V2015_04_01::Models::AutoscaleSettingResourcePatch
      AutoscaleSettingResourceCollection = Azure::Monitor::Mgmt::V2015_04_01::Models::AutoscaleSettingResourceCollection
      MetricTrigger = Azure::Monitor::Mgmt::V2015_04_01::Models::MetricTrigger
      EventCategoryCollection = Azure::Monitor::Mgmt::V2015_04_01::Models::EventCategoryCollection
      EventData = Azure::Monitor::Mgmt::V2015_04_01::Models::EventData
      OperationDisplay = Azure::Monitor::Mgmt::V2015_04_01::Models::OperationDisplay
      TimeWindow = Azure::Monitor::Mgmt::V2015_04_01::Models::TimeWindow
      Operation = Azure::Monitor::Mgmt::V2015_04_01::Models::Operation
      ScaleCapacity = Azure::Monitor::Mgmt::V2015_04_01::Models::ScaleCapacity
      OperationListResult = Azure::Monitor::Mgmt::V2015_04_01::Models::OperationListResult
      AutoscaleSettingResource = Azure::Monitor::Mgmt::V2015_04_01::Models::AutoscaleSettingResource
      EventLevel = Azure::Monitor::Mgmt::V2015_04_01::Models::EventLevel
      MetricStatisticType = Azure::Monitor::Mgmt::V2015_04_01::Models::MetricStatisticType
      TimeAggregationType = Azure::Monitor::Mgmt::V2015_04_01::Models::TimeAggregationType
      ComparisonOperationType = Azure::Monitor::Mgmt::V2015_04_01::Models::ComparisonOperationType
      ScaleRuleMetricDimensionOperationType = Azure::Monitor::Mgmt::V2015_04_01::Models::ScaleRuleMetricDimensionOperationType
      ScaleDirection = Azure::Monitor::Mgmt::V2015_04_01::Models::ScaleDirection
      ScaleType = Azure::Monitor::Mgmt::V2015_04_01::Models::ScaleType
      RecurrenceFrequency = Azure::Monitor::Mgmt::V2015_04_01::Models::RecurrenceFrequency
      ProxyOnlyResource = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::ProxyOnlyResource
      DiagnosticSettingsCategoryResourceCollection = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::DiagnosticSettingsCategoryResourceCollection
      RetentionPolicy = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::RetentionPolicy
      LogSettings = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::LogSettings
      DiagnosticSettingsResourceCollection = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::DiagnosticSettingsResourceCollection
      SubscriptionProxyOnlyResource = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::SubscriptionProxyOnlyResource
      MetricSettings = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::MetricSettings
      SubscriptionDiagnosticSettingsResourceCollection = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::SubscriptionDiagnosticSettingsResourceCollection
      SubscriptionLogSettings = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::SubscriptionLogSettings
      DiagnosticSettingsCategoryResource = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::DiagnosticSettingsCategoryResource
      DiagnosticSettingsResource = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::DiagnosticSettingsResource
      SubscriptionDiagnosticSettingsResource = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::SubscriptionDiagnosticSettingsResource
      CategoryType = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::CategoryType
      MetricValue = Azure::Monitor::Mgmt::V2018_01_01::Models::MetricValue
      LocalizableString = Azure::Monitor::Mgmt::V2018_01_01::Models::LocalizableString
      MetadataValue = Azure::Monitor::Mgmt::V2018_01_01::Models::MetadataValue
      MetricDefinition = Azure::Monitor::Mgmt::V2018_01_01::Models::MetricDefinition
      TimeSeriesElement = Azure::Monitor::Mgmt::V2018_01_01::Models::TimeSeriesElement
      ErrorResponse = Azure::Monitor::Mgmt::V2018_01_01::Models::ErrorResponse
      Metric = Azure::Monitor::Mgmt::V2018_01_01::Models::Metric
      MetricDefinitionCollection = Azure::Monitor::Mgmt::V2018_01_01::Models::MetricDefinitionCollection
      Response = Azure::Monitor::Mgmt::V2018_01_01::Models::Response
      MetricAvailability = Azure::Monitor::Mgmt::V2018_01_01::Models::MetricAvailability
      Unit = Azure::Monitor::Mgmt::V2018_01_01::Models::Unit
      AggregationType = Azure::Monitor::Mgmt::V2018_01_01::Models::AggregationType
      ResultType = Azure::Monitor::Mgmt::V2018_01_01::Models::ResultType
    end

    #
    # MonitorManagementClass
    #
    class MonitorManagementClass
      attr_reader :activity_logs, :autoscale_settings, :event_categories, :operations, :tenant_activity_logs, :diagnostic_settings_category_operations, :diagnostic_settings_operations, :subscription_diagnostic_settings_operations, :metric_definitions, :metrics, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::Monitor::Mgmt::V2015_04_01::MonitorManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @activity_logs = @client_0.activity_logs
        @autoscale_settings = @client_0.autoscale_settings
        @event_categories = @client_0.event_categories
        @operations = @client_0.operations
        @tenant_activity_logs = @client_0.tenant_activity_logs

        @client_1 = Azure::Monitor::Mgmt::V2017_05_01_preview::MonitorManagementClient.new(configurable.credentials, base_url, options)
        if(@client_1.respond_to?(:subscription_id))
          @client_1.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_1)
        @diagnostic_settings_category_operations = @client_1.diagnostic_settings_category_operations
        @diagnostic_settings_operations = @client_1.diagnostic_settings_operations
        @subscription_diagnostic_settings_operations = @client_1.subscription_diagnostic_settings_operations

        @client_2 = Azure::Monitor::Mgmt::V2018_01_01::MonitorManagementClient.new(configurable.credentials, base_url, options)
        if(@client_2.respond_to?(:subscription_id))
          @client_2.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_2)
        @metric_definitions = @client_2.metric_definitions
        @metrics = @client_2.metrics

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/V2019_03_01_Hybrid/Monitor/Mgmt'
        client.add_user_agent_information(profile_information)
      end

      def method_missing(method, *args)
        if @client_2.respond_to?method
          @client_2.send(method, *args)
        elsif @client_1.respond_to?method
          @client_1.send(method, *args)
        elsif @client_0.respond_to?method
          @client_0.send(method, *args)
        else
          super
        end
      end

    end

    class ModelClasses
      def recurrent_schedule
        Azure::Monitor::Mgmt::V2015_04_01::Models::RecurrentSchedule
      end
      def recurrence
        Azure::Monitor::Mgmt::V2015_04_01::Models::Recurrence
      end
      def http_request_info
        Azure::Monitor::Mgmt::V2015_04_01::Models::HttpRequestInfo
      end
      def autoscale_profile
        Azure::Monitor::Mgmt::V2015_04_01::Models::AutoscaleProfile
      end
      def event_data_collection
        Azure::Monitor::Mgmt::V2015_04_01::Models::EventDataCollection
      end
      def email_notification
        Azure::Monitor::Mgmt::V2015_04_01::Models::EmailNotification
      end
      def resource
        Azure::Monitor::Mgmt::V2015_04_01::Models::Resource
      end
      def webhook_notification
        Azure::Monitor::Mgmt::V2015_04_01::Models::WebhookNotification
      end
      def scale_rule_metric_dimension
        Azure::Monitor::Mgmt::V2015_04_01::Models::ScaleRuleMetricDimension
      end
      def autoscale_notification
        Azure::Monitor::Mgmt::V2015_04_01::Models::AutoscaleNotification
      end
      def scale_action
        Azure::Monitor::Mgmt::V2015_04_01::Models::ScaleAction
      end
      def scale_rule
        Azure::Monitor::Mgmt::V2015_04_01::Models::ScaleRule
      end
      def sender_authorization
        Azure::Monitor::Mgmt::V2015_04_01::Models::SenderAuthorization
      end
      def autoscale_setting_resource_patch
        Azure::Monitor::Mgmt::V2015_04_01::Models::AutoscaleSettingResourcePatch
      end
      def autoscale_setting_resource_collection
        Azure::Monitor::Mgmt::V2015_04_01::Models::AutoscaleSettingResourceCollection
      end
      def metric_trigger
        Azure::Monitor::Mgmt::V2015_04_01::Models::MetricTrigger
      end
      def event_category_collection
        Azure::Monitor::Mgmt::V2015_04_01::Models::EventCategoryCollection
      end
      def event_data
        Azure::Monitor::Mgmt::V2015_04_01::Models::EventData
      end
      def operation_display
        Azure::Monitor::Mgmt::V2015_04_01::Models::OperationDisplay
      end
      def time_window
        Azure::Monitor::Mgmt::V2015_04_01::Models::TimeWindow
      end
      def operation
        Azure::Monitor::Mgmt::V2015_04_01::Models::Operation
      end
      def scale_capacity
        Azure::Monitor::Mgmt::V2015_04_01::Models::ScaleCapacity
      end
      def operation_list_result
        Azure::Monitor::Mgmt::V2015_04_01::Models::OperationListResult
      end
      def autoscale_setting_resource
        Azure::Monitor::Mgmt::V2015_04_01::Models::AutoscaleSettingResource
      end
      def event_level
        Azure::Monitor::Mgmt::V2015_04_01::Models::EventLevel
      end
      def metric_statistic_type
        Azure::Monitor::Mgmt::V2015_04_01::Models::MetricStatisticType
      end
      def time_aggregation_type
        Azure::Monitor::Mgmt::V2015_04_01::Models::TimeAggregationType
      end
      def comparison_operation_type
        Azure::Monitor::Mgmt::V2015_04_01::Models::ComparisonOperationType
      end
      def scale_rule_metric_dimension_operation_type
        Azure::Monitor::Mgmt::V2015_04_01::Models::ScaleRuleMetricDimensionOperationType
      end
      def scale_direction
        Azure::Monitor::Mgmt::V2015_04_01::Models::ScaleDirection
      end
      def scale_type
        Azure::Monitor::Mgmt::V2015_04_01::Models::ScaleType
      end
      def recurrence_frequency
        Azure::Monitor::Mgmt::V2015_04_01::Models::RecurrenceFrequency
      end
      def proxy_only_resource
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::ProxyOnlyResource
      end
      def diagnostic_settings_category_resource_collection
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::DiagnosticSettingsCategoryResourceCollection
      end
      def retention_policy
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::RetentionPolicy
      end
      def log_settings
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::LogSettings
      end
      def diagnostic_settings_resource_collection
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::DiagnosticSettingsResourceCollection
      end
      def subscription_proxy_only_resource
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::SubscriptionProxyOnlyResource
      end
      def metric_settings
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::MetricSettings
      end
      def subscription_diagnostic_settings_resource_collection
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::SubscriptionDiagnosticSettingsResourceCollection
      end
      def subscription_log_settings
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::SubscriptionLogSettings
      end
      def diagnostic_settings_category_resource
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::DiagnosticSettingsCategoryResource
      end
      def diagnostic_settings_resource
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::DiagnosticSettingsResource
      end
      def subscription_diagnostic_settings_resource
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::SubscriptionDiagnosticSettingsResource
      end
      def category_type
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::CategoryType
      end
      def metric_value
        Azure::Monitor::Mgmt::V2018_01_01::Models::MetricValue
      end
      def localizable_string
        Azure::Monitor::Mgmt::V2018_01_01::Models::LocalizableString
      end
      def metadata_value
        Azure::Monitor::Mgmt::V2018_01_01::Models::MetadataValue
      end
      def metric_definition
        Azure::Monitor::Mgmt::V2018_01_01::Models::MetricDefinition
      end
      def time_series_element
        Azure::Monitor::Mgmt::V2018_01_01::Models::TimeSeriesElement
      end
      def error_response
        Azure::Monitor::Mgmt::V2018_01_01::Models::ErrorResponse
      end
      def metric
        Azure::Monitor::Mgmt::V2018_01_01::Models::Metric
      end
      def metric_definition_collection
        Azure::Monitor::Mgmt::V2018_01_01::Models::MetricDefinitionCollection
      end
      def response
        Azure::Monitor::Mgmt::V2018_01_01::Models::Response
      end
      def metric_availability
        Azure::Monitor::Mgmt::V2018_01_01::Models::MetricAvailability
      end
      def unit
        Azure::Monitor::Mgmt::V2018_01_01::Models::Unit
      end
      def aggregation_type
        Azure::Monitor::Mgmt::V2018_01_01::Models::AggregationType
      end
      def result_type
        Azure::Monitor::Mgmt::V2018_01_01::Models::ResultType
      end
    end
  end
end
