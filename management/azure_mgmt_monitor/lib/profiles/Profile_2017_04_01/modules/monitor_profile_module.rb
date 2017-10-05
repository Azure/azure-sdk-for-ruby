# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_monitor'


module Azure::Profiles::MonitorModule::Management::Profile_2017_04_01
  module Monitor
    ActionGroups = Azure::ARM::Monitor::Api_2017_04_01::ActionGroups
    ActivityLogAlerts = Azure::ARM::Monitor::Api_2017_04_01::ActivityLogAlerts

    module Models
      ErrorResponse = Azure::ARM::Monitor::Api_2017_04_01::Models::ErrorResponse
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
    end

    #
    # Monitor
    #
    class MonitorClass
      attr_accessor :action_groups, :activity_log_alerts, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::Monitor::Api_2017_04_01::MonitorManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.action_groups = Azure::ARM::Monitor::Api_2017_04_01::ActionGroups.new(client)
        self.activity_log_alerts = Azure::ARM::Monitor::Api_2017_04_01::ActivityLogAlerts.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2017-04-01'
            client = Azure::ARM::Monitor::Api_2017_04_01::MonitorManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def error_response
          Azure::ARM::Monitor::Api_2017_04_01::Models::ErrorResponse
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
      end
    end
  end
end
