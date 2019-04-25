# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_monitor'

module Azure::Monitor::Profiles::V2019_03_01
  module Mgmt
    ActivityLogs = Azure::Monitor::Mgmt::V2015_04_01::ActivityLogs
    AutoscaleSettings = Azure::Monitor::Mgmt::V2015_04_01::AutoscaleSettings
    EventCategories = Azure::Monitor::Mgmt::V2015_04_01::EventCategories
    Operations = Azure::Monitor::Mgmt::V2015_04_01::Operations
    TenantActivityLogs = Azure::Monitor::Mgmt::V2015_04_01::TenantActivityLogs
    DiagnosticSettingsOperations = Azure::Monitor::Mgmt::V2017_05_01_preview::DiagnosticSettingsOperations
    DiagnosticSettingsCategoryOperations = Azure::Monitor::Mgmt::V2017_05_01_preview::DiagnosticSettingsCategoryOperations
    MetricDefinitions = Azure::Monitor::Mgmt::V2018_01_01::MetricDefinitions
    Metrics = Azure::Monitor::Mgmt::V2018_01_01::Metrics

    module Models
      RecurrentSchedule = Azure::Monitor::Mgmt::V2015_04_01::Models::RecurrentSchedule
      Recurrence = Azure::Monitor::Mgmt::V2015_04_01::Models::Recurrence
      SenderAuthorization = Azure::Monitor::Mgmt::V2015_04_01::Models::SenderAuthorization
      AutoscaleProfile = Azure::Monitor::Mgmt::V2015_04_01::Models::AutoscaleProfile
      EventData = Azure::Monitor::Mgmt::V2015_04_01::Models::EventData
      EmailNotification = Azure::Monitor::Mgmt::V2015_04_01::Models::EmailNotification
      WebhookNotification = Azure::Monitor::Mgmt::V2015_04_01::Models::WebhookNotification
      ScaleCapacity = Azure::Monitor::Mgmt::V2015_04_01::Models::ScaleCapacity
      AutoscaleNotification = Azure::Monitor::Mgmt::V2015_04_01::Models::AutoscaleNotification
      ScaleAction = Azure::Monitor::Mgmt::V2015_04_01::Models::ScaleAction
      ScaleRule = Azure::Monitor::Mgmt::V2015_04_01::Models::ScaleRule
      AutoscaleSettingResourcePatch = Azure::Monitor::Mgmt::V2015_04_01::Models::AutoscaleSettingResourcePatch
      EventDataCollection = Azure::Monitor::Mgmt::V2015_04_01::Models::EventDataCollection
      AutoscaleSettingResourceCollection = Azure::Monitor::Mgmt::V2015_04_01::Models::AutoscaleSettingResourceCollection
      MetricTrigger = Azure::Monitor::Mgmt::V2015_04_01::Models::MetricTrigger
      EventCategoryCollection = Azure::Monitor::Mgmt::V2015_04_01::Models::EventCategoryCollection
      HttpRequestInfo = Azure::Monitor::Mgmt::V2015_04_01::Models::HttpRequestInfo
      OperationDisplay = Azure::Monitor::Mgmt::V2015_04_01::Models::OperationDisplay
      TimeWindow = Azure::Monitor::Mgmt::V2015_04_01::Models::TimeWindow
      Operation = Azure::Monitor::Mgmt::V2015_04_01::Models::Operation
      Resource = Azure::Monitor::Mgmt::V2015_04_01::Models::Resource
      OperationListResult = Azure::Monitor::Mgmt::V2015_04_01::Models::OperationListResult
      AutoscaleSettingResource = Azure::Monitor::Mgmt::V2015_04_01::Models::AutoscaleSettingResource
      EventLevel = Azure::Monitor::Mgmt::V2015_04_01::Models::EventLevel
      MetricStatisticType = Azure::Monitor::Mgmt::V2015_04_01::Models::MetricStatisticType
      TimeAggregationType = Azure::Monitor::Mgmt::V2015_04_01::Models::TimeAggregationType
      ComparisonOperationType = Azure::Monitor::Mgmt::V2015_04_01::Models::ComparisonOperationType
      ScaleDirection = Azure::Monitor::Mgmt::V2015_04_01::Models::ScaleDirection
      ScaleType = Azure::Monitor::Mgmt::V2015_04_01::Models::ScaleType
      ProxyOnlyResource = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::ProxyOnlyResource
      MetricSettings = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::MetricSettings
      LogSettings = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::LogSettings
      DiagnosticSettingsCategoryResourceCollection = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::DiagnosticSettingsCategoryResourceCollection
      DiagnosticSettingsResourceCollection = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::DiagnosticSettingsResourceCollection
      RetentionPolicy = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::RetentionPolicy
      DiagnosticSettingsResource = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::DiagnosticSettingsResource
      DiagnosticSettingsCategoryResource = Azure::Monitor::Mgmt::V2017_05_01_preview::Models::DiagnosticSettingsCategoryResource
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
      attr_reader :activity_logs, :autoscale_settings, :event_categories, :operations, :tenant_activity_logs, :diagnostic_settings_operations, :diagnostic_settings_category_operations, :metric_definitions, :metrics, :configurable, :base_url, :options, :model_classes

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
        @diagnostic_settings_operations = @client_1.diagnostic_settings_operations
        @diagnostic_settings_category_operations = @client_1.diagnostic_settings_category_operations

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
        profile_information = 'Profiles/V2019_03_01/Monitor/Mgmt'
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
      def sender_authorization
        Azure::Monitor::Mgmt::V2015_04_01::Models::SenderAuthorization
      end
      def autoscale_profile
        Azure::Monitor::Mgmt::V2015_04_01::Models::AutoscaleProfile
      end
      def event_data
        Azure::Monitor::Mgmt::V2015_04_01::Models::EventData
      end
      def email_notification
        Azure::Monitor::Mgmt::V2015_04_01::Models::EmailNotification
      end
      def webhook_notification
        Azure::Monitor::Mgmt::V2015_04_01::Models::WebhookNotification
      end
      def scale_capacity
        Azure::Monitor::Mgmt::V2015_04_01::Models::ScaleCapacity
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
      def autoscale_setting_resource_patch
        Azure::Monitor::Mgmt::V2015_04_01::Models::AutoscaleSettingResourcePatch
      end
      def event_data_collection
        Azure::Monitor::Mgmt::V2015_04_01::Models::EventDataCollection
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
      def http_request_info
        Azure::Monitor::Mgmt::V2015_04_01::Models::HttpRequestInfo
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
      def resource
        Azure::Monitor::Mgmt::V2015_04_01::Models::Resource
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
      def scale_direction
        Azure::Monitor::Mgmt::V2015_04_01::Models::ScaleDirection
      end
      def scale_type
        Azure::Monitor::Mgmt::V2015_04_01::Models::ScaleType
      end
      def proxy_only_resource
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::ProxyOnlyResource
      end
      def metric_settings
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::MetricSettings
      end
      def log_settings
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::LogSettings
      end
      def diagnostic_settings_category_resource_collection
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::DiagnosticSettingsCategoryResourceCollection
      end
      def diagnostic_settings_resource_collection
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::DiagnosticSettingsResourceCollection
      end
      def retention_policy
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::RetentionPolicy
      end
      def diagnostic_settings_resource
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::DiagnosticSettingsResource
      end
      def diagnostic_settings_category_resource
        Azure::Monitor::Mgmt::V2017_05_01_preview::Models::DiagnosticSettingsCategoryResource
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
