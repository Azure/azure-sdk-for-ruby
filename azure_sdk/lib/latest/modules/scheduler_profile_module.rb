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
        JobRecurrence = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobRecurrence
        JobStatus = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobStatus
        JobCollectionQuota = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobCollectionQuota
        JobCollectionDefinition = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobCollectionDefinition
        HttpAuthentication = Azure::Scheduler::Mgmt::V2016_03_01::Models::HttpAuthentication
        StorageQueueMessage = Azure::Scheduler::Mgmt::V2016_03_01::Models::StorageQueueMessage
        JobHistoryDefinitionProperties = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobHistoryDefinitionProperties
        HttpRequest = Azure::Scheduler::Mgmt::V2016_03_01::Models::HttpRequest
        ServiceBusBrokeredMessageProperties = Azure::Scheduler::Mgmt::V2016_03_01::Models::ServiceBusBrokeredMessageProperties
        JobAction = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobAction
        JobRecurrenceSchedule = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobRecurrenceSchedule
        JobHistoryDefinition = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobHistoryDefinition
        JobCollectionProperties = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobCollectionProperties
        JobProperties = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobProperties
        Sku = Azure::Scheduler::Mgmt::V2016_03_01::Models::Sku
        JobHistoryFilter = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobHistoryFilter
        JobHistoryListResult = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobHistoryListResult
        JobMaxRecurrence = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobMaxRecurrence
        JobStateFilter = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobStateFilter
        JobRecurrenceScheduleMonthlyOccurrence = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobRecurrenceScheduleMonthlyOccurrence
        JobErrorAction = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobErrorAction
        JobCollectionListResult = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobCollectionListResult
        ServiceBusQueueMessage = Azure::Scheduler::Mgmt::V2016_03_01::Models::ServiceBusQueueMessage
        ServiceBusTopicMessage = Azure::Scheduler::Mgmt::V2016_03_01::Models::ServiceBusTopicMessage
        ServiceBusAuthentication = Azure::Scheduler::Mgmt::V2016_03_01::Models::ServiceBusAuthentication
        ServiceBusMessage = Azure::Scheduler::Mgmt::V2016_03_01::Models::ServiceBusMessage
        OAuthAuthentication = Azure::Scheduler::Mgmt::V2016_03_01::Models::OAuthAuthentication
        ClientCertAuthentication = Azure::Scheduler::Mgmt::V2016_03_01::Models::ClientCertAuthentication
        JobCollectionState = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobCollectionState
        SkuDefinition = Azure::Scheduler::Mgmt::V2016_03_01::Models::SkuDefinition
        RetryType = Azure::Scheduler::Mgmt::V2016_03_01::Models::RetryType
        RetryPolicy = Azure::Scheduler::Mgmt::V2016_03_01::Models::RetryPolicy
        JobExecutionStatus = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobExecutionStatus
        JobListResult = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobListResult
        RecurrenceFrequency = Azure::Scheduler::Mgmt::V2016_03_01::Models::RecurrenceFrequency
        ServiceBusTransportType = Azure::Scheduler::Mgmt::V2016_03_01::Models::ServiceBusTransportType
        BasicAuthentication = Azure::Scheduler::Mgmt::V2016_03_01::Models::BasicAuthentication
        JobHistoryActionName = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobHistoryActionName
        JobActionType = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobActionType
        JobState = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobState
        DayOfWeek = Azure::Scheduler::Mgmt::V2016_03_01::Models::DayOfWeek
        ServiceBusAuthenticationType = Azure::Scheduler::Mgmt::V2016_03_01::Models::ServiceBusAuthenticationType
        JobScheduleDay = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobScheduleDay
        JobDefinition = Azure::Scheduler::Mgmt::V2016_03_01::Models::JobDefinition
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
          def job_recurrence
            Azure::Scheduler::Mgmt::V2016_03_01::Models::JobRecurrence
          end
          def job_status
            Azure::Scheduler::Mgmt::V2016_03_01::Models::JobStatus
          end
          def job_collection_quota
            Azure::Scheduler::Mgmt::V2016_03_01::Models::JobCollectionQuota
          end
          def job_collection_definition
            Azure::Scheduler::Mgmt::V2016_03_01::Models::JobCollectionDefinition
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
          def job_collection_properties
            Azure::Scheduler::Mgmt::V2016_03_01::Models::JobCollectionProperties
          end
          def job_properties
            Azure::Scheduler::Mgmt::V2016_03_01::Models::JobProperties
          end
          def sku
            Azure::Scheduler::Mgmt::V2016_03_01::Models::Sku
          end
          def job_history_filter
            Azure::Scheduler::Mgmt::V2016_03_01::Models::JobHistoryFilter
          end
          def job_history_list_result
            Azure::Scheduler::Mgmt::V2016_03_01::Models::JobHistoryListResult
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
          def job_error_action
            Azure::Scheduler::Mgmt::V2016_03_01::Models::JobErrorAction
          end
          def job_collection_list_result
            Azure::Scheduler::Mgmt::V2016_03_01::Models::JobCollectionListResult
          end
          def service_bus_queue_message
            Azure::Scheduler::Mgmt::V2016_03_01::Models::ServiceBusQueueMessage
          end
          def service_bus_topic_message
            Azure::Scheduler::Mgmt::V2016_03_01::Models::ServiceBusTopicMessage
          end
          def service_bus_authentication
            Azure::Scheduler::Mgmt::V2016_03_01::Models::ServiceBusAuthentication
          end
          def service_bus_message
            Azure::Scheduler::Mgmt::V2016_03_01::Models::ServiceBusMessage
          end
          def oauth_authentication
            Azure::Scheduler::Mgmt::V2016_03_01::Models::OAuthAuthentication
          end
          def client_cert_authentication
            Azure::Scheduler::Mgmt::V2016_03_01::Models::ClientCertAuthentication
          end
          def job_collection_state
            Azure::Scheduler::Mgmt::V2016_03_01::Models::JobCollectionState
          end
          def sku_definition
            Azure::Scheduler::Mgmt::V2016_03_01::Models::SkuDefinition
          end
          def retry_type
            Azure::Scheduler::Mgmt::V2016_03_01::Models::RetryType
          end
          def retry_policy
            Azure::Scheduler::Mgmt::V2016_03_01::Models::RetryPolicy
          end
          def job_execution_status
            Azure::Scheduler::Mgmt::V2016_03_01::Models::JobExecutionStatus
          end
          def job_list_result
            Azure::Scheduler::Mgmt::V2016_03_01::Models::JobListResult
          end
          def recurrence_frequency
            Azure::Scheduler::Mgmt::V2016_03_01::Models::RecurrenceFrequency
          end
          def service_bus_transport_type
            Azure::Scheduler::Mgmt::V2016_03_01::Models::ServiceBusTransportType
          end
          def basic_authentication
            Azure::Scheduler::Mgmt::V2016_03_01::Models::BasicAuthentication
          end
          def job_history_action_name
            Azure::Scheduler::Mgmt::V2016_03_01::Models::JobHistoryActionName
          end
          def job_action_type
            Azure::Scheduler::Mgmt::V2016_03_01::Models::JobActionType
          end
          def job_state
            Azure::Scheduler::Mgmt::V2016_03_01::Models::JobState
          end
          def day_of_week
            Azure::Scheduler::Mgmt::V2016_03_01::Models::DayOfWeek
          end
          def service_bus_authentication_type
            Azure::Scheduler::Mgmt::V2016_03_01::Models::ServiceBusAuthenticationType
          end
          def job_schedule_day
            Azure::Scheduler::Mgmt::V2016_03_01::Models::JobScheduleDay
          end
          def job_definition
            Azure::Scheduler::Mgmt::V2016_03_01::Models::JobDefinition
          end
        end
      end
    end
  end
end
