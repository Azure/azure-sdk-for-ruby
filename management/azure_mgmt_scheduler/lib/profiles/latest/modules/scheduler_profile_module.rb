# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_scheduler'

module Azure::Scheduler::Profiles::Latest::Mgmt
    JobCollections = Azure::Scheduler::Mgmt::V2016_03_01::JobCollections
    Jobs = Azure::Scheduler::Mgmt::V2016_03_01::Jobs

    module Models
      JobRecurrence = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobRecurrence
      Sku = Azure::Scheduler::Mgmt::V2016_03_01::Models::Sku
      JobStatus = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobStatus
      JobCollectionQuota = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobCollectionQuota
      JobProperties = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobProperties
      JobCollectionDefinition = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobCollectionDefinition
      JobDefinition = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobDefinition
      HttpAuthentication = Azure::Scheduler::Mgmt::V2016_03_01::Models::HttpAuthentication
      JobListResult = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobListResult
      StorageQueueMessage = Azure::Scheduler::Mgmt::V2016_03_01::Models::StorageQueueMessage
      JobHistoryDefinitionProperties = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobHistoryDefinitionProperties
      HttpRequest = Azure::Scheduler::Mgmt::V2016_03_01::Models::HttpRequest
      RetryPolicy = Azure::Scheduler::Mgmt::V2016_03_01::Models::RetryPolicy
      ServiceBusBrokeredMessageProperties = Azure::Scheduler::Mgmt::V2016_03_01::Models::ServiceBusBrokeredMessageProperties
      JobAction = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobAction
      JobRecurrenceSchedule = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobRecurrenceSchedule
      JobHistoryDefinition = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobHistoryDefinition
      JobCollectionProperties = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobCollectionProperties
      JobHistoryListResult = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobHistoryListResult
      JobErrorAction = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobErrorAction
      JobHistoryFilter = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobHistoryFilter
      JobMaxRecurrence = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobMaxRecurrence
      JobStateFilter = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobStateFilter
      JobRecurrenceScheduleMonthlyOccurrence = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobRecurrenceScheduleMonthlyOccurrence
      ServiceBusMessage = Azure::Scheduler::Mgmt::V2016_03_01::Models::ServiceBusMessage
      JobCollectionListResult = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobCollectionListResult
      ServiceBusAuthentication = Azure::Scheduler::Mgmt::V2016_03_01::Models::ServiceBusAuthentication
      ServiceBusQueueMessage = Azure::Scheduler::Mgmt::V2016_03_01::Models::ServiceBusQueueMessage
      ServiceBusTopicMessage = Azure::Scheduler::Mgmt::V2016_03_01::Models::ServiceBusTopicMessage
      ClientCertAuthentication = Azure::Scheduler::Mgmt::V2016_03_01::Models::ClientCertAuthentication
      BasicAuthentication = Azure::Scheduler::Mgmt::V2016_03_01::Models::BasicAuthentication
      OAuthAuthentication = Azure::Scheduler::Mgmt::V2016_03_01::Models::OAuthAuthentication
      SkuDefinition = Azure::Scheduler::Mgmt::V2016_03_01::Models::SkuDefinition
      JobCollectionState = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobCollectionState
      RecurrenceFrequency = Azure::Scheduler::Mgmt::V2016_03_01::Models::RecurrenceFrequency
      JobActionType = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobActionType
      HttpAuthenticationType = Azure::Scheduler::Mgmt::V2016_03_01::Models::HttpAuthenticationType
      RetryType = Azure::Scheduler::Mgmt::V2016_03_01::Models::RetryType
      DayOfWeek = Azure::Scheduler::Mgmt::V2016_03_01::Models::DayOfWeek
      JobScheduleDay = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobScheduleDay
      JobState = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobState
      JobHistoryActionName = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobHistoryActionName
      JobExecutionStatus = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobExecutionStatus
      ServiceBusAuthenticationType = Azure::Scheduler::Mgmt::V2016_03_01::Models::ServiceBusAuthenticationType
      ServiceBusTransportType = Azure::Scheduler::Mgmt::V2016_03_01::Models::ServiceBusTransportType
    end

    #
    # Scheduler
    #
    class SchedulerClass
      attr_reader :job_collections, :jobs, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        if options.is_a?(Hash) && options.length == 0
          @options = setup_default_options
        else
          @options = options
        end

        reset!(options)

        @configurable, @base_url, @options = self, nil, nil

        client_0 = Azure::Scheduler::Mgmt::V2016_03_01::SchedulerManagementClient.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        @job_collections = client_0.job_collections
        @jobs = client_0.jobs

        @model_classes = ModelClasses.new
      end

      class ModelClasses
        def job_recurrence
          Azure::Scheduler::Mgmt::V2016_03_01::Models::JobRecurrence
        end
        def sku
          Azure::Scheduler::Mgmt::V2016_03_01::Models::Sku
        end
        def job_status
          Azure::Scheduler::Mgmt::V2016_03_01::Models::JobStatus
        end
        def job_collection_quota
          Azure::Scheduler::Mgmt::V2016_03_01::Models::JobCollectionQuota
        end
        def job_properties
          Azure::Scheduler::Mgmt::V2016_03_01::Models::JobProperties
        end
        def job_collection_definition
          Azure::Scheduler::Mgmt::V2016_03_01::Models::JobCollectionDefinition
        end
        def job_definition
          Azure::Scheduler::Mgmt::V2016_03_01::Models::JobDefinition
        end
        def http_authentication
          Azure::Scheduler::Mgmt::V2016_03_01::Models::HttpAuthentication
        end
        def job_list_result
          Azure::Scheduler::Mgmt::V2016_03_01::Models::JobListResult
        end
        def storage_queue_message
          Azure::Scheduler::Mgmt::V2016_03_01::Models::StorageQueueMessage
        end
        def job_history_definition_properties
          Azure::Scheduler::Mgmt::V2016_03_01::Models::JobHistoryDefinitionProperties
        end
        def http_request
          Azure::Scheduler::Mgmt::V2016_03_01::Models::HttpRequest
        end
        def retry_policy
          Azure::Scheduler::Mgmt::V2016_03_01::Models::RetryPolicy
        end
        def service_bus_brokered_message_properties
          Azure::Scheduler::Mgmt::V2016_03_01::Models::ServiceBusBrokeredMessageProperties
        end
        def job_action
          Azure::Scheduler::Mgmt::V2016_03_01::Models::JobAction
        end
        def job_recurrence_schedule
          Azure::Scheduler::Mgmt::V2016_03_01::Models::JobRecurrenceSchedule
        end
        def job_history_definition
          Azure::Scheduler::Mgmt::V2016_03_01::Models::JobHistoryDefinition
        end
        def job_collection_properties
          Azure::Scheduler::Mgmt::V2016_03_01::Models::JobCollectionProperties
        end
        def job_history_list_result
          Azure::Scheduler::Mgmt::V2016_03_01::Models::JobHistoryListResult
        end
        def job_error_action
          Azure::Scheduler::Mgmt::V2016_03_01::Models::JobErrorAction
        end
        def job_history_filter
          Azure::Scheduler::Mgmt::V2016_03_01::Models::JobHistoryFilter
        end
        def job_max_recurrence
          Azure::Scheduler::Mgmt::V2016_03_01::Models::JobMaxRecurrence
        end
        def job_state_filter
          Azure::Scheduler::Mgmt::V2016_03_01::Models::JobStateFilter
        end
        def job_recurrence_schedule_monthly_occurrence
          Azure::Scheduler::Mgmt::V2016_03_01::Models::JobRecurrenceScheduleMonthlyOccurrence
        end
        def service_bus_message
          Azure::Scheduler::Mgmt::V2016_03_01::Models::ServiceBusMessage
        end
        def job_collection_list_result
          Azure::Scheduler::Mgmt::V2016_03_01::Models::JobCollectionListResult
        end
        def service_bus_authentication
          Azure::Scheduler::Mgmt::V2016_03_01::Models::ServiceBusAuthentication
        end
        def service_bus_queue_message
          Azure::Scheduler::Mgmt::V2016_03_01::Models::ServiceBusQueueMessage
        end
        def service_bus_topic_message
          Azure::Scheduler::Mgmt::V2016_03_01::Models::ServiceBusTopicMessage
        end
        def client_cert_authentication
          Azure::Scheduler::Mgmt::V2016_03_01::Models::ClientCertAuthentication
        end
        def basic_authentication
          Azure::Scheduler::Mgmt::V2016_03_01::Models::BasicAuthentication
        end
        def oauth_authentication
          Azure::Scheduler::Mgmt::V2016_03_01::Models::OAuthAuthentication
        end
        def sku_definition
          Azure::Scheduler::Mgmt::V2016_03_01::Models::SkuDefinition
        end
        def job_collection_state
          Azure::Scheduler::Mgmt::V2016_03_01::Models::JobCollectionState
        end
        def recurrence_frequency
          Azure::Scheduler::Mgmt::V2016_03_01::Models::RecurrenceFrequency
        end
        def job_action_type
          Azure::Scheduler::Mgmt::V2016_03_01::Models::JobActionType
        end
        def http_authentication_type
          Azure::Scheduler::Mgmt::V2016_03_01::Models::HttpAuthenticationType
        end
        def retry_type
          Azure::Scheduler::Mgmt::V2016_03_01::Models::RetryType
        end
        def day_of_week
          Azure::Scheduler::Mgmt::V2016_03_01::Models::DayOfWeek
        end
        def job_schedule_day
          Azure::Scheduler::Mgmt::V2016_03_01::Models::JobScheduleDay
        end
        def job_state
          Azure::Scheduler::Mgmt::V2016_03_01::Models::JobState
        end
        def job_history_action_name
          Azure::Scheduler::Mgmt::V2016_03_01::Models::JobHistoryActionName
        end
        def job_execution_status
          Azure::Scheduler::Mgmt::V2016_03_01::Models::JobExecutionStatus
        end
        def service_bus_authentication_type
          Azure::Scheduler::Mgmt::V2016_03_01::Models::ServiceBusAuthenticationType
        end
        def service_bus_transport_type
          Azure::Scheduler::Mgmt::V2016_03_01::Models::ServiceBusTransportType
        end
      end
    end
end
