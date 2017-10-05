# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_monitor'


module Azure::Profiles::MonitorModule::Management::Profile_Latest
  module Monitor
    DiagnosticSettingsCategoryOperations = Azure::ARM::Monitor::Api_2017_05_01_preview::DiagnosticSettingsCategoryOperations
    DiagnosticSettingsOperations = Azure::ARM::Monitor::Api_2017_05_01_preview::DiagnosticSettingsOperations
    MonitorClient = Azure::ARM::Monitor::Api_2017_05_01_preview::MonitorClient

    module Models
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
      attr_accessor :diagnostic_settings_category_operations, :diagnostic_settings_operations, :monitor_client, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = .new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.diagnostic_settings_category_operations = Azure::ARM::Monitor::Api_2017_05_01_preview::DiagnosticSettingsCategoryOperations.new(client)
        self.diagnostic_settings_operations = Azure::ARM::Monitor::Api_2017_05_01_preview::DiagnosticSettingsOperations.new(client)
        self.monitor_client = Azure::ARM::Monitor::Api_2017_05_01_preview::MonitorClient.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
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
end
