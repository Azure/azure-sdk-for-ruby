# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_monitor'

module Azure::Monitor::Management::Profile_2017_04_01
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

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::Monitor::Api_2017_04_01::MonitorManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.action_groups = client.action_groups
        self.activity_log_alerts = client.activity_log_alerts
        self.model_classes = ModelClasses.new
      end

      #
      # Method to get the client object
      #
      # @return Client object
      #
      def get_client
        client = Azure::ARM::Monitor::Api_2017_04_01::MonitorManagementClient.new(@configurable.credentials, @base_url, @options)
        client.subscription_id = configurable.subscription_id
        return client
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
