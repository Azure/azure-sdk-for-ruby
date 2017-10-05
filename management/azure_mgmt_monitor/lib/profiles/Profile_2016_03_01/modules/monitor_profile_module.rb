# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_monitor'


module Azure::Profiles::MonitorModule::Management::Profile_2016_03_01
  module Monitor
    AlertRuleIncidents = Azure::ARM::Monitor::Api_2016_03_01::AlertRuleIncidents
    AlertRules = Azure::ARM::Monitor::Api_2016_03_01::AlertRules
    LogProfiles = Azure::ARM::Monitor::Api_2016_03_01::LogProfiles

    module Models
      AlertRuleResourcePatch = Azure::ARM::Monitor::Api_2016_03_01::Models::AlertRuleResourcePatch
      Incident = Azure::ARM::Monitor::Api_2016_03_01::Models::Incident
      AlertRuleResourceCollection = Azure::ARM::Monitor::Api_2016_03_01::Models::AlertRuleResourceCollection
      ErrorResponse = Azure::ARM::Monitor::Api_2016_03_01::Models::ErrorResponse
      ManagementEventAggregationCondition = Azure::ARM::Monitor::Api_2016_03_01::Models::ManagementEventAggregationCondition
      RuleCondition = Azure::ARM::Monitor::Api_2016_03_01::Models::RuleCondition
      RuleManagementEventClaimsDataSource = Azure::ARM::Monitor::Api_2016_03_01::Models::RuleManagementEventClaimsDataSource
      RuleAction = Azure::ARM::Monitor::Api_2016_03_01::Models::RuleAction
      IncidentListResult = Azure::ARM::Monitor::Api_2016_03_01::Models::IncidentListResult
      LogProfileCollection = Azure::ARM::Monitor::Api_2016_03_01::Models::LogProfileCollection
      RuleDataSource = Azure::ARM::Monitor::Api_2016_03_01::Models::RuleDataSource
      RetentionPolicy = Azure::ARM::Monitor::Api_2016_03_01::Models::RetentionPolicy
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
    end

    #
    # Monitor
    #
    class MonitorClass
      attr_accessor :alert_rule_incidents, :alert_rules, :log_profiles, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::Monitor::Api_2016_03_01::MonitorManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.alert_rule_incidents = Azure::ARM::Monitor::Api_2016_03_01::AlertRuleIncidents.new(client)
        self.alert_rules = Azure::ARM::Monitor::Api_2016_03_01::AlertRules.new(client)
        self.log_profiles = Azure::ARM::Monitor::Api_2016_03_01::LogProfiles.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2016-03-01'
            client = Azure::ARM::Monitor::Api_2016_03_01::MonitorManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def alert_rule_resource_patch
          Azure::ARM::Monitor::Api_2016_03_01::Models::AlertRuleResourcePatch
        end
        def incident
          Azure::ARM::Monitor::Api_2016_03_01::Models::Incident
        end
        def alert_rule_resource_collection
          Azure::ARM::Monitor::Api_2016_03_01::Models::AlertRuleResourceCollection
        end
        def error_response
          Azure::ARM::Monitor::Api_2016_03_01::Models::ErrorResponse
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
        def retention_policy
          Azure::ARM::Monitor::Api_2016_03_01::Models::RetentionPolicy
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
      end
    end
  end
end
