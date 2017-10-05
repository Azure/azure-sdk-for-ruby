# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_monitor'


module Azure::Profiles::MonitorModule::Management::Profile_2015_04_01
  module Monitor
    AutoscaleSettings = Azure::ARM::Monitor::Api_2015_04_01::AutoscaleSettings
    Operations = Azure::ARM::Monitor::Api_2015_04_01::Operations

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
      ErrorResponse = Azure::ARM::Monitor::Api_2015_04_01::Models::ErrorResponse
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
    end

    #
    # Monitor
    #
    class MonitorClass
      attr_accessor :autoscale_settings, :operations, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::Monitor::Api_2015_04_01::MonitorManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.autoscale_settings = Azure::ARM::Monitor::Api_2015_04_01::AutoscaleSettings.new(client)
        self.operations = Azure::ARM::Monitor::Api_2015_04_01::Operations.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2015-04-01'
            client = Azure::ARM::Monitor::Api_2015_04_01::MonitorManagementClient.new(@configurable.credentials, @base_url, @options)
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
        def error_response
          Azure::ARM::Monitor::Api_2015_04_01::Models::ErrorResponse
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
      end
    end
  end
end
