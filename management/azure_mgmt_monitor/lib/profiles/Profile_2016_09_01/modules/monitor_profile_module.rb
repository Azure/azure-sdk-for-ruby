# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_monitor'


module Azure::Profiles::MonitorModule::Management::Profile_2016_09_01
  module Monitor
    ServiceDiagnosticSettingsOperations = Azure::ARM::Monitor::Api_2016_09_01::ServiceDiagnosticSettingsOperations
    MonitorClient = Azure::ARM::Monitor::Api_2016_09_01::MonitorClient

    module Models
      LogSettings = Azure::ARM::Monitor::Api_2016_09_01::Models::LogSettings
      MetricSettings = Azure::ARM::Monitor::Api_2016_09_01::Models::MetricSettings
      ServiceDiagnosticSettingsResourcePatch = Azure::ARM::Monitor::Api_2016_09_01::Models::ServiceDiagnosticSettingsResourcePatch
      RetentionPolicy = Azure::ARM::Monitor::Api_2016_09_01::Models::RetentionPolicy
      ErrorResponse = Azure::ARM::Monitor::Api_2016_09_01::Models::ErrorResponse
      ServiceDiagnosticSettingsResource = Azure::ARM::Monitor::Api_2016_09_01::Models::ServiceDiagnosticSettingsResource
    end

    #
    # Monitor
    #
    class MonitorClass
      attr_accessor :service_diagnostic_settings_operations, :monitor_client, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = .new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.service_diagnostic_settings_operations = Azure::ARM::Monitor::Api_2016_09_01::ServiceDiagnosticSettingsOperations.new(client)
        self.monitor_client = Azure::ARM::Monitor::Api_2016_09_01::MonitorClient.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def log_settings
          Azure::ARM::Monitor::Api_2016_09_01::Models::LogSettings
        end
        def metric_settings
          Azure::ARM::Monitor::Api_2016_09_01::Models::MetricSettings
        end
        def service_diagnostic_settings_resource_patch
          Azure::ARM::Monitor::Api_2016_09_01::Models::ServiceDiagnosticSettingsResourcePatch
        end
        def retention_policy
          Azure::ARM::Monitor::Api_2016_09_01::Models::RetentionPolicy
        end
        def error_response
          Azure::ARM::Monitor::Api_2016_09_01::Models::ErrorResponse
        end
        def service_diagnostic_settings_resource
          Azure::ARM::Monitor::Api_2016_09_01::Models::ServiceDiagnosticSettingsResource
        end
      end
    end
  end
end
