# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_scheduler'

module Azure::Profiles::Latest
  module Scheduler
    module Mgmt
      JobCollections = Azure::Scheduler::Mgmt::V2016_03_01::JobCollections
      Jobs = Azure::Scheduler::Mgmt::V2016_03_01::Jobs

      module Models
        RetryPolicy = Azure::Scheduler::Mgmt::V2016_03_01::Models::RetryPolicy
        JobListResult = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobListResult
        JobRecurrence = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobRecurrence
        JobCollectionQuota = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobCollectionQuota
        JobCollectionDefinition = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobCollectionDefinition
        JobDefinition = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobDefinition
        HttpAuthentication = Azure::Scheduler::Mgmt::V2016_03_01::Models::HttpAuthentication
        StorageQueueMessage = Azure::Scheduler::Mgmt::V2016_03_01::Models::StorageQueueMessage
        JobHistoryDefinitionProperties = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobHistoryDefinitionProperties
        HttpRequest = Azure::Scheduler::Mgmt::V2016_03_01::Models::HttpRequest
        ServiceBusBrokeredMessageProperties = Azure::Scheduler::Mgmt::V2016_03_01::Models::ServiceBusBrokeredMessageProperties
        JobAction = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobAction
        JobRecurrenceSchedule = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobRecurrenceSchedule
        JobHistoryDefinition = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobHistoryDefinition
        RecurrenceFrequency = Azure::Scheduler::Mgmt::V2016_03_01::Models::RecurrenceFrequency
        JobHistoryListResult = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobHistoryListResult
        DayOfWeek = Azure::Scheduler::Mgmt::V2016_03_01::Models::DayOfWeek
        JobCollectionProperties = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobCollectionProperties
        JobMaxRecurrence = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobMaxRecurrence
        JobErrorAction = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobErrorAction
        JobRecurrenceScheduleMonthlyOccurrence = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobRecurrenceScheduleMonthlyOccurrence
        ServiceBusMessage = Azure::Scheduler::Mgmt::V2016_03_01::Models::ServiceBusMessage
        JobStateFilter = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobStateFilter
        JobHistoryFilter = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobHistoryFilter
        ServiceBusAuthentication = Azure::Scheduler::Mgmt::V2016_03_01::Models::ServiceBusAuthentication
        JobState = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobState
        ServiceBusTopicMessage = Azure::Scheduler::Mgmt::V2016_03_01::Models::ServiceBusTopicMessage
        ServiceBusQueueMessage = Azure::Scheduler::Mgmt::V2016_03_01::Models::ServiceBusQueueMessage
        SkuDefinition = Azure::Scheduler::Mgmt::V2016_03_01::Models::SkuDefinition
        JobCollectionState = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobCollectionState
        JobActionType = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobActionType
        RetryType = Azure::Scheduler::Mgmt::V2016_03_01::Models::RetryType
        JobScheduleDay = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobScheduleDay
        JobHistoryActionName = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobHistoryActionName
        JobExecutionStatus = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobExecutionStatus
        ServiceBusAuthenticationType = Azure::Scheduler::Mgmt::V2016_03_01::Models::ServiceBusAuthenticationType
        ClientCertAuthentication = Azure::Scheduler::Mgmt::V2016_03_01::Models::ClientCertAuthentication
        JobCollectionListResult = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobCollectionListResult
        ServiceBusTransportType = Azure::Scheduler::Mgmt::V2016_03_01::Models::ServiceBusTransportType
        OAuthAuthentication = Azure::Scheduler::Mgmt::V2016_03_01::Models::OAuthAuthentication
        BasicAuthentication = Azure::Scheduler::Mgmt::V2016_03_01::Models::BasicAuthentication
        JobStatus = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobStatus
        JobProperties = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobProperties
        Sku = Azure::Scheduler::Mgmt::V2016_03_01::Models::Sku
      end

      class SchedulerManagementClass
        attr_reader :job_collections, :jobs, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Scheduler::Mgmt::V2016_03_01::SchedulerManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @job_collections = @client_0.job_collections
          @jobs = @client_0.jobs

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Scheduler/Mgmt"
          client.add_user_agent_information(profile_information)
        end

        def method_missing(method, *args)
          if @client_0.respond_to?method
            @client_0.send(method, *args)
          else
            super
          end
        end

        class ModelClasses
          def retry_policy
            Azure::Scheduler::Mgmt::V2016_03_01::Models::RetryPolicy
          end
          def job_list_result
            Azure::Scheduler::Mgmt::V2016_03_01::Models::JobListResult
          end
          def job_recurrence
            Azure::Scheduler::Mgmt::V2016_03_01::Models::JobRecurrence
          end
          def job_collection_quota
            Azure::Scheduler::Mgmt::V2016_03_01::Models::JobCollectionQuota
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
          def storage_queue_message
            Azure::Scheduler::Mgmt::V2016_03_01::Models::StorageQueueMessage
          end
          def job_history_definition_properties
            Azure::Scheduler::Mgmt::V2016_03_01::Models::JobHistoryDefinitionProperties
          end
          def http_request
            Azure::Scheduler::Mgmt::V2016_03_01::Models::HttpRequest
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
          def recurrence_frequency
            Azure::Scheduler::Mgmt::V2016_03_01::Models::RecurrenceFrequency
          end
          def job_history_list_result
            Azure::Scheduler::Mgmt::V2016_03_01::Models::JobHistoryListResult
          end
          def day_of_week
            Azure::Scheduler::Mgmt::V2016_03_01::Models::DayOfWeek
          end
          def job_collection_properties
            Azure::Scheduler::Mgmt::V2016_03_01::Models::JobCollectionProperties
          end
          def job_max_recurrence
            Azure::Scheduler::Mgmt::V2016_03_01::Models::JobMaxRecurrence
          end
          def job_error_action
            Azure::Scheduler::Mgmt::V2016_03_01::Models::JobErrorAction
          end
          def job_recurrence_schedule_monthly_occurrence
            Azure::Scheduler::Mgmt::V2016_03_01::Models::JobRecurrenceScheduleMonthlyOccurrence
          end
          def service_bus_message
            Azure::Scheduler::Mgmt::V2016_03_01::Models::ServiceBusMessage
          end
          def job_state_filter
            Azure::Scheduler::Mgmt::V2016_03_01::Models::JobStateFilter
          end
          def job_history_filter
            Azure::Scheduler::Mgmt::V2016_03_01::Models::JobHistoryFilter
          end
          def service_bus_authentication
            Azure::Scheduler::Mgmt::V2016_03_01::Models::ServiceBusAuthentication
          end
          def job_state
            Azure::Scheduler::Mgmt::V2016_03_01::Models::JobState
          end
          def service_bus_topic_message
            Azure::Scheduler::Mgmt::V2016_03_01::Models::ServiceBusTopicMessage
          end
          def service_bus_queue_message
            Azure::Scheduler::Mgmt::V2016_03_01::Models::ServiceBusQueueMessage
          end
          def sku_definition
            Azure::Scheduler::Mgmt::V2016_03_01::Models::SkuDefinition
          end
          def job_collection_state
            Azure::Scheduler::Mgmt::V2016_03_01::Models::JobCollectionState
          end
          def job_action_type
            Azure::Scheduler::Mgmt::V2016_03_01::Models::JobActionType
          end
          def retry_type
            Azure::Scheduler::Mgmt::V2016_03_01::Models::RetryType
          end
          def job_schedule_day
            Azure::Scheduler::Mgmt::V2016_03_01::Models::JobScheduleDay
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
          def client_cert_authentication
            Azure::Scheduler::Mgmt::V2016_03_01::Models::ClientCertAuthentication
          end
          def job_collection_list_result
            Azure::Scheduler::Mgmt::V2016_03_01::Models::JobCollectionListResult
          end
          def service_bus_transport_type
            Azure::Scheduler::Mgmt::V2016_03_01::Models::ServiceBusTransportType
          end
          def oauth_authentication
            Azure::Scheduler::Mgmt::V2016_03_01::Models::OAuthAuthentication
          end
          def basic_authentication
            Azure::Scheduler::Mgmt::V2016_03_01::Models::BasicAuthentication
          end
          def job_status
            Azure::Scheduler::Mgmt::V2016_03_01::Models::JobStatus
          end
          def job_properties
            Azure::Scheduler::Mgmt::V2016_03_01::Models::JobProperties
          end
          def sku
            Azure::Scheduler::Mgmt::V2016_03_01::Models::Sku
          end
        end
      end
    end
  end
end
