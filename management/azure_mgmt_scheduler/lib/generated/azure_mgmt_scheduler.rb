# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require 'generated/azure_mgmt_scheduler/module_definition'
require 'ms_rest_azure'

module Azure::ARM::Scheduler
  autoload :JobCollections,                                     'generated/azure_mgmt_scheduler/job_collections.rb'
  autoload :Jobs,                                               'generated/azure_mgmt_scheduler/jobs.rb'
  autoload :SchedulerManagementClient,                          'generated/azure_mgmt_scheduler/scheduler_management_client.rb'

  module Models
    autoload :JobRecurrence,                                      'generated/azure_mgmt_scheduler/models/job_recurrence.rb'
    autoload :Sku,                                                'generated/azure_mgmt_scheduler/models/sku.rb'
    autoload :JobStatus,                                          'generated/azure_mgmt_scheduler/models/job_status.rb'
    autoload :JobCollectionQuota,                                 'generated/azure_mgmt_scheduler/models/job_collection_quota.rb'
    autoload :JobProperties,                                      'generated/azure_mgmt_scheduler/models/job_properties.rb'
    autoload :JobCollectionDefinition,                            'generated/azure_mgmt_scheduler/models/job_collection_definition.rb'
    autoload :JobDefinition,                                      'generated/azure_mgmt_scheduler/models/job_definition.rb'
    autoload :HttpAuthentication,                                 'generated/azure_mgmt_scheduler/models/http_authentication.rb'
    autoload :JobListResult,                                      'generated/azure_mgmt_scheduler/models/job_list_result.rb'
    autoload :StorageQueueMessage,                                'generated/azure_mgmt_scheduler/models/storage_queue_message.rb'
    autoload :JobHistoryDefinitionProperties,                     'generated/azure_mgmt_scheduler/models/job_history_definition_properties.rb'
    autoload :HttpRequest,                                        'generated/azure_mgmt_scheduler/models/http_request.rb'
    autoload :RetryPolicy,                                        'generated/azure_mgmt_scheduler/models/retry_policy.rb'
    autoload :ServiceBusBrokeredMessageProperties,                'generated/azure_mgmt_scheduler/models/service_bus_brokered_message_properties.rb'
    autoload :JobAction,                                          'generated/azure_mgmt_scheduler/models/job_action.rb'
    autoload :JobRecurrenceSchedule,                              'generated/azure_mgmt_scheduler/models/job_recurrence_schedule.rb'
    autoload :JobHistoryDefinition,                               'generated/azure_mgmt_scheduler/models/job_history_definition.rb'
    autoload :JobCollectionProperties,                            'generated/azure_mgmt_scheduler/models/job_collection_properties.rb'
    autoload :JobHistoryListResult,                               'generated/azure_mgmt_scheduler/models/job_history_list_result.rb'
    autoload :JobErrorAction,                                     'generated/azure_mgmt_scheduler/models/job_error_action.rb'
    autoload :JobHistoryFilter,                                   'generated/azure_mgmt_scheduler/models/job_history_filter.rb'
    autoload :JobMaxRecurrence,                                   'generated/azure_mgmt_scheduler/models/job_max_recurrence.rb'
    autoload :JobStateFilter,                                     'generated/azure_mgmt_scheduler/models/job_state_filter.rb'
    autoload :JobRecurrenceScheduleMonthlyOccurrence,             'generated/azure_mgmt_scheduler/models/job_recurrence_schedule_monthly_occurrence.rb'
    autoload :ServiceBusMessage,                                  'generated/azure_mgmt_scheduler/models/service_bus_message.rb'
    autoload :JobCollectionListResult,                            'generated/azure_mgmt_scheduler/models/job_collection_list_result.rb'
    autoload :ServiceBusAuthentication,                           'generated/azure_mgmt_scheduler/models/service_bus_authentication.rb'
    autoload :ServiceBusQueueMessage,                             'generated/azure_mgmt_scheduler/models/service_bus_queue_message.rb'
    autoload :ServiceBusTopicMessage,                             'generated/azure_mgmt_scheduler/models/service_bus_topic_message.rb'
    autoload :ClientCertAuthentication,                           'generated/azure_mgmt_scheduler/models/client_cert_authentication.rb'
    autoload :BasicAuthentication,                                'generated/azure_mgmt_scheduler/models/basic_authentication.rb'
    autoload :OAuthAuthentication,                                'generated/azure_mgmt_scheduler/models/oauth_authentication.rb'
    autoload :SkuDefinition,                                      'generated/azure_mgmt_scheduler/models/sku_definition.rb'
    autoload :JobCollectionState,                                 'generated/azure_mgmt_scheduler/models/job_collection_state.rb'
    autoload :RecurrenceFrequency,                                'generated/azure_mgmt_scheduler/models/recurrence_frequency.rb'
    autoload :JobActionType,                                      'generated/azure_mgmt_scheduler/models/job_action_type.rb'
    autoload :HttpAuthenticationType,                             'generated/azure_mgmt_scheduler/models/http_authentication_type.rb'
    autoload :RetryType,                                          'generated/azure_mgmt_scheduler/models/retry_type.rb'
    autoload :DayOfWeek,                                          'generated/azure_mgmt_scheduler/models/day_of_week.rb'
    autoload :JobScheduleDay,                                     'generated/azure_mgmt_scheduler/models/job_schedule_day.rb'
    autoload :JobState,                                           'generated/azure_mgmt_scheduler/models/job_state.rb'
    autoload :JobHistoryActionName,                               'generated/azure_mgmt_scheduler/models/job_history_action_name.rb'
    autoload :JobExecutionStatus,                                 'generated/azure_mgmt_scheduler/models/job_execution_status.rb'
    autoload :ServiceBusAuthenticationType,                       'generated/azure_mgmt_scheduler/models/service_bus_authentication_type.rb'
    autoload :ServiceBusTransportType,                            'generated/azure_mgmt_scheduler/models/service_bus_transport_type.rb'
  end
end
