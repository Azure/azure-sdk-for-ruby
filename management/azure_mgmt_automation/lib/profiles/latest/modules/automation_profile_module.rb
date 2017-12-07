# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_automation'

module Azure::Automation::Profiles::Latest
  module Mgmt
    AutomationAccountOperations = Azure::Automation::Mgmt::V2015_10_31::AutomationAccountOperations
    Operations = Azure::Automation::Mgmt::V2015_10_31::Operations
    StatisticsOperations = Azure::Automation::Mgmt::V2015_10_31::StatisticsOperations
    Usages = Azure::Automation::Mgmt::V2015_10_31::Usages
    CertificateOperations = Azure::Automation::Mgmt::V2015_10_31::CertificateOperations
    ConnectionOperations = Azure::Automation::Mgmt::V2015_10_31::ConnectionOperations
    ConnectionTypeOperations = Azure::Automation::Mgmt::V2015_10_31::ConnectionTypeOperations
    CredentialOperations = Azure::Automation::Mgmt::V2015_10_31::CredentialOperations
    DscCompilationJobOperations = Azure::Automation::Mgmt::V2015_10_31::DscCompilationJobOperations
    DscConfigurationOperations = Azure::Automation::Mgmt::V2015_10_31::DscConfigurationOperations
    AgentRegistrationInformation = Azure::Automation::Mgmt::V2015_10_31::AgentRegistrationInformation
    DscNodeOperations = Azure::Automation::Mgmt::V2015_10_31::DscNodeOperations
    NodeReports = Azure::Automation::Mgmt::V2015_10_31::NodeReports
    DscNodeConfigurationOperations = Azure::Automation::Mgmt::V2015_10_31::DscNodeConfigurationOperations
    HybridRunbookWorkerGroupOperations = Azure::Automation::Mgmt::V2015_10_31::HybridRunbookWorkerGroupOperations
    JobOperations = Azure::Automation::Mgmt::V2015_10_31::JobOperations
    JobStreamOperations = Azure::Automation::Mgmt::V2015_10_31::JobStreamOperations
    JobScheduleOperations = Azure::Automation::Mgmt::V2015_10_31::JobScheduleOperations
    ActivityOperations = Azure::Automation::Mgmt::V2015_10_31::ActivityOperations
    ModuleModelOperations = Azure::Automation::Mgmt::V2015_10_31::ModuleModelOperations
    ObjectDataTypes = Azure::Automation::Mgmt::V2015_10_31::ObjectDataTypes
    Fields = Azure::Automation::Mgmt::V2015_10_31::Fields
    RunbookDraftOperations = Azure::Automation::Mgmt::V2015_10_31::RunbookDraftOperations
    RunbookOperations = Azure::Automation::Mgmt::V2015_10_31::RunbookOperations
    TestJobStreams = Azure::Automation::Mgmt::V2015_10_31::TestJobStreams
    TestJobs = Azure::Automation::Mgmt::V2015_10_31::TestJobs
    ScheduleOperations = Azure::Automation::Mgmt::V2015_10_31::ScheduleOperations
    VariableOperations = Azure::Automation::Mgmt::V2015_10_31::VariableOperations
    WebhookOperations = Azure::Automation::Mgmt::V2015_10_31::WebhookOperations

    module Models
      DscCompilationJob = Azure::Automation::Mgmt::V2015_10_31::Models::DscCompilationJob
      ErrorResponse = Azure::Automation::Mgmt::V2015_10_31::Models::ErrorResponse
      DscCompilationJobListResult = Azure::Automation::Mgmt::V2015_10_31::Models::DscCompilationJobListResult
      Usage = Azure::Automation::Mgmt::V2015_10_31::Models::Usage
      DscConfigurationListResult = Azure::Automation::Mgmt::V2015_10_31::Models::DscConfigurationListResult
      Statistics = Azure::Automation::Mgmt::V2015_10_31::Models::Statistics
      DscConfigurationCreateOrUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::DscConfigurationCreateOrUpdateParameters
      RunbookParameter = Azure::Automation::Mgmt::V2015_10_31::Models::RunbookParameter
      DscMetaConfiguration = Azure::Automation::Mgmt::V2015_10_31::Models::DscMetaConfiguration
      ContentLink = Azure::Automation::Mgmt::V2015_10_31::Models::ContentLink
      DscNodeConfigurationCreateOrUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::DscNodeConfigurationCreateOrUpdateParameters
      ContentHash = Azure::Automation::Mgmt::V2015_10_31::Models::ContentHash
      ModuleErrorInfo = Azure::Automation::Mgmt::V2015_10_31::Models::ModuleErrorInfo
      RunbookDraft = Azure::Automation::Mgmt::V2015_10_31::Models::RunbookDraft
      DscNodeConfigurationAssociationProperty = Azure::Automation::Mgmt::V2015_10_31::Models::DscNodeConfigurationAssociationProperty
      WebhookCreateOrUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::WebhookCreateOrUpdateParameters
      ContentSource = Azure::Automation::Mgmt::V2015_10_31::Models::ContentSource
      DscNodeConfiguration = Azure::Automation::Mgmt::V2015_10_31::Models::DscNodeConfiguration
      WebhookListResult = Azure::Automation::Mgmt::V2015_10_31::Models::WebhookListResult
      DscNodeConfigurationListResult = Azure::Automation::Mgmt::V2015_10_31::Models::DscNodeConfigurationListResult
      Webhook = Azure::Automation::Mgmt::V2015_10_31::Models::Webhook
      DscNodeListResult = Azure::Automation::Mgmt::V2015_10_31::Models::DscNodeListResult
      AutomationAccountListResult = Azure::Automation::Mgmt::V2015_10_31::Models::AutomationAccountListResult
      DscNodeUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::DscNodeUpdateParameters
      Operation = Azure::Automation::Mgmt::V2015_10_31::Models::Operation
      DscReportError = Azure::Automation::Mgmt::V2015_10_31::Models::DscReportError
      AutomationAccountCreateOrUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::AutomationAccountCreateOrUpdateParameters
      DscReportResourceNavigation = Azure::Automation::Mgmt::V2015_10_31::Models::DscReportResourceNavigation
      Certificate = Azure::Automation::Mgmt::V2015_10_31::Models::Certificate
      DscReportResource = Azure::Automation::Mgmt::V2015_10_31::Models::DscReportResource
      CertificateUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::CertificateUpdateParameters
      DscNodeReport = Azure::Automation::Mgmt::V2015_10_31::Models::DscNodeReport
      ConnectionTypeAssociationProperty = Azure::Automation::Mgmt::V2015_10_31::Models::ConnectionTypeAssociationProperty
      DscNodeReportListResult = Azure::Automation::Mgmt::V2015_10_31::Models::DscNodeReportListResult
      ConnectionListResult = Azure::Automation::Mgmt::V2015_10_31::Models::ConnectionListResult
      HybridRunbookWorker = Azure::Automation::Mgmt::V2015_10_31::Models::HybridRunbookWorker
      ConnectionCreateOrUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::ConnectionCreateOrUpdateParameters
      RunAsCredentialAssociationProperty = Azure::Automation::Mgmt::V2015_10_31::Models::RunAsCredentialAssociationProperty
      ConnectionType = Azure::Automation::Mgmt::V2015_10_31::Models::ConnectionType
      HybridRunbookWorkerGroup = Azure::Automation::Mgmt::V2015_10_31::Models::HybridRunbookWorkerGroup
      ConnectionTypeCreateOrUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::ConnectionTypeCreateOrUpdateParameters
      HybridRunbookWorkerGroupsListResult = Azure::Automation::Mgmt::V2015_10_31::Models::HybridRunbookWorkerGroupsListResult
      CredentialListResult = Azure::Automation::Mgmt::V2015_10_31::Models::CredentialListResult
      HybridRunbookWorkerGroupUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::HybridRunbookWorkerGroupUpdateParameters
      CredentialCreateOrUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::CredentialCreateOrUpdateParameters
      RunbookAssociationProperty = Azure::Automation::Mgmt::V2015_10_31::Models::RunbookAssociationProperty
      ActivityParameterSet = Azure::Automation::Mgmt::V2015_10_31::Models::ActivityParameterSet
      Job = Azure::Automation::Mgmt::V2015_10_31::Models::Job
      Activity = Azure::Automation::Mgmt::V2015_10_31::Models::Activity
      JobCreateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::JobCreateParameters
      AdvancedScheduleMonthlyOccurrence = Azure::Automation::Mgmt::V2015_10_31::Models::AdvancedScheduleMonthlyOccurrence
      JobListResult = Azure::Automation::Mgmt::V2015_10_31::Models::JobListResult
      AgentRegistrationKeys = Azure::Automation::Mgmt::V2015_10_31::Models::AgentRegistrationKeys
      ScheduleAssociationProperty = Azure::Automation::Mgmt::V2015_10_31::Models::ScheduleAssociationProperty
      AgentRegistrationRegenerateKeyParameter = Azure::Automation::Mgmt::V2015_10_31::Models::AgentRegistrationRegenerateKeyParameter
      JobScheduleCreateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::JobScheduleCreateParameters
      DscCompilationJobCreateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::DscCompilationJobCreateParameters
      JobSchedule = Azure::Automation::Mgmt::V2015_10_31::Models::JobSchedule
      UsageListResult = Azure::Automation::Mgmt::V2015_10_31::Models::UsageListResult
      JobScheduleListResult = Azure::Automation::Mgmt::V2015_10_31::Models::JobScheduleListResult
      JobStream = Azure::Automation::Mgmt::V2015_10_31::Models::JobStream
      DscConfigurationParameter = Azure::Automation::Mgmt::V2015_10_31::Models::DscConfigurationParameter
      JobStreamListResult = Azure::Automation::Mgmt::V2015_10_31::Models::JobStreamListResult
      Resource = Azure::Automation::Mgmt::V2015_10_31::Models::Resource
      ModuleCreateOrUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::ModuleCreateOrUpdateParameters
      OperationListResult = Azure::Automation::Mgmt::V2015_10_31::Models::OperationListResult
      ModuleListResult = Azure::Automation::Mgmt::V2015_10_31::Models::ModuleListResult
      CertificateListResult = Azure::Automation::Mgmt::V2015_10_31::Models::CertificateListResult
      ModuleUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::ModuleUpdateParameters
      Connection = Azure::Automation::Mgmt::V2015_10_31::Models::Connection
      RunbookDraftUndoEditResult = Azure::Automation::Mgmt::V2015_10_31::Models::RunbookDraftUndoEditResult
      FieldDefinition = Azure::Automation::Mgmt::V2015_10_31::Models::FieldDefinition
      RunbookCreateOrUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::RunbookCreateOrUpdateParameters
      Credential = Azure::Automation::Mgmt::V2015_10_31::Models::Credential
      RunbookCreateOrUpdateDraftProperties = Azure::Automation::Mgmt::V2015_10_31::Models::RunbookCreateOrUpdateDraftProperties
      ActivityParameter = Azure::Automation::Mgmt::V2015_10_31::Models::ActivityParameter
      RunbookCreateOrUpdateDraftParameters = Azure::Automation::Mgmt::V2015_10_31::Models::RunbookCreateOrUpdateDraftParameters
      ActivityListResult = Azure::Automation::Mgmt::V2015_10_31::Models::ActivityListResult
      RunbookUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::RunbookUpdateParameters
      AgentRegistration = Azure::Automation::Mgmt::V2015_10_31::Models::AgentRegistration
      RunbookListResult = Azure::Automation::Mgmt::V2015_10_31::Models::RunbookListResult
      UsageCounterName = Azure::Automation::Mgmt::V2015_10_31::Models::UsageCounterName
      ScheduleCreateOrUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::ScheduleCreateOrUpdateParameters
      WebhookUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::WebhookUpdateParameters
      Schedule = Azure::Automation::Mgmt::V2015_10_31::Models::Schedule
      OperationDisplay = Azure::Automation::Mgmt::V2015_10_31::Models::OperationDisplay
      ScheduleUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::ScheduleUpdateParameters
      CertificateCreateOrUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::CertificateCreateOrUpdateParameters
      ScheduleListResult = Azure::Automation::Mgmt::V2015_10_31::Models::ScheduleListResult
      ConnectionTypeListResult = Azure::Automation::Mgmt::V2015_10_31::Models::ConnectionTypeListResult
      SubResource = Azure::Automation::Mgmt::V2015_10_31::Models::SubResource
      ActivityOutputType = Azure::Automation::Mgmt::V2015_10_31::Models::ActivityOutputType
      TestJobCreateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::TestJobCreateParameters
      DscConfigurationAssociationProperty = Azure::Automation::Mgmt::V2015_10_31::Models::DscConfigurationAssociationProperty
      TestJob = Azure::Automation::Mgmt::V2015_10_31::Models::TestJob
      Sku = Azure::Automation::Mgmt::V2015_10_31::Models::Sku
      TypeField = Azure::Automation::Mgmt::V2015_10_31::Models::TypeField
      ConnectionUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::ConnectionUpdateParameters
      TypeFieldListResult = Azure::Automation::Mgmt::V2015_10_31::Models::TypeFieldListResult
      AdvancedSchedule = Azure::Automation::Mgmt::V2015_10_31::Models::AdvancedSchedule
      VariableCreateOrUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::VariableCreateOrUpdateParameters
      AutomationAccountUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::AutomationAccountUpdateParameters
      Variable = Azure::Automation::Mgmt::V2015_10_31::Models::Variable
      StatisticsListResult = Azure::Automation::Mgmt::V2015_10_31::Models::StatisticsListResult
      VariableListResult = Azure::Automation::Mgmt::V2015_10_31::Models::VariableListResult
      CredentialUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::CredentialUpdateParameters
      VariableUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::VariableUpdateParameters
      Runbook = Azure::Automation::Mgmt::V2015_10_31::Models::Runbook
      ModuleModel = Azure::Automation::Mgmt::V2015_10_31::Models::ModuleModel
      DscNode = Azure::Automation::Mgmt::V2015_10_31::Models::DscNode
      DscConfiguration = Azure::Automation::Mgmt::V2015_10_31::Models::DscConfiguration
      AutomationAccount = Azure::Automation::Mgmt::V2015_10_31::Models::AutomationAccount
      RunbookTypeEnum = Azure::Automation::Mgmt::V2015_10_31::Models::RunbookTypeEnum
      RunbookState = Azure::Automation::Mgmt::V2015_10_31::Models::RunbookState
      RunbookProvisioningState = Azure::Automation::Mgmt::V2015_10_31::Models::RunbookProvisioningState
      ModuleProvisioningState = Azure::Automation::Mgmt::V2015_10_31::Models::ModuleProvisioningState
      ContentSourceType = Azure::Automation::Mgmt::V2015_10_31::Models::ContentSourceType
      DscConfigurationProvisioningState = Azure::Automation::Mgmt::V2015_10_31::Models::DscConfigurationProvisioningState
      DscConfigurationState = Azure::Automation::Mgmt::V2015_10_31::Models::DscConfigurationState
      SkuNameEnum = Azure::Automation::Mgmt::V2015_10_31::Models::SkuNameEnum
      AutomationAccountState = Azure::Automation::Mgmt::V2015_10_31::Models::AutomationAccountState
      ScheduleDay = Azure::Automation::Mgmt::V2015_10_31::Models::ScheduleDay
      AgentRegistrationKeyName = Azure::Automation::Mgmt::V2015_10_31::Models::AgentRegistrationKeyName
      JobStatus = Azure::Automation::Mgmt::V2015_10_31::Models::JobStatus
      JobStreamType = Azure::Automation::Mgmt::V2015_10_31::Models::JobStreamType
      HttpStatusCode = Azure::Automation::Mgmt::V2015_10_31::Models::HttpStatusCode
      ScheduleFrequency = Azure::Automation::Mgmt::V2015_10_31::Models::ScheduleFrequency
    end

    #
    # AutomationManagementClass
    #
    class AutomationManagementClass
      attr_reader :automation_account_operations, :operations, :statistics_operations, :usages, :certificate_operations, :connection_operations, :connection_type_operations, :credential_operations, :dsc_compilation_job_operations, :dsc_configuration_operations, :agent_registration_information, :dsc_node_operations, :node_reports, :dsc_node_configuration_operations, :hybrid_runbook_worker_group_operations, :job_operations, :job_stream_operations, :job_schedule_operations, :activity_operations, :module_model_operations, :object_data_types, :fields, :runbook_draft_operations, :runbook_operations, :test_job_streams, :test_jobs, :schedule_operations, :variable_operations, :webhook_operations, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        if options.is_a?(Hash) && options.length == 0
          @options = setup_default_options
        else
          @options = options
        end

        reset!(options)

        @configurable, @base_url, @options = self, nil, nil

        client_0 = Azure::Automation::Mgmt::V2015_10_31::AutomationClient.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        @automation_account_operations = client_0.automation_account_operations
        @operations = client_0.operations
        @statistics_operations = client_0.statistics_operations
        @usages = client_0.usages
        @certificate_operations = client_0.certificate_operations
        @connection_operations = client_0.connection_operations
        @connection_type_operations = client_0.connection_type_operations
        @credential_operations = client_0.credential_operations
        @dsc_compilation_job_operations = client_0.dsc_compilation_job_operations
        @dsc_configuration_operations = client_0.dsc_configuration_operations
        @agent_registration_information = client_0.agent_registration_information
        @dsc_node_operations = client_0.dsc_node_operations
        @node_reports = client_0.node_reports
        @dsc_node_configuration_operations = client_0.dsc_node_configuration_operations
        @hybrid_runbook_worker_group_operations = client_0.hybrid_runbook_worker_group_operations
        @job_operations = client_0.job_operations
        @job_stream_operations = client_0.job_stream_operations
        @job_schedule_operations = client_0.job_schedule_operations
        @activity_operations = client_0.activity_operations
        @module_model_operations = client_0.module_model_operations
        @object_data_types = client_0.object_data_types
        @fields = client_0.fields
        @runbook_draft_operations = client_0.runbook_draft_operations
        @runbook_operations = client_0.runbook_operations
        @test_job_streams = client_0.test_job_streams
        @test_jobs = client_0.test_jobs
        @schedule_operations = client_0.schedule_operations
        @variable_operations = client_0.variable_operations
        @webhook_operations = client_0.webhook_operations

        @model_classes = ModelClasses.new
      end
    end

    class ModelClasses
      def dsc_compilation_job
        Azure::Automation::Mgmt::V2015_10_31::Models::DscCompilationJob
      end
      def error_response
        Azure::Automation::Mgmt::V2015_10_31::Models::ErrorResponse
      end
      def dsc_compilation_job_list_result
        Azure::Automation::Mgmt::V2015_10_31::Models::DscCompilationJobListResult
      end
      def usage
        Azure::Automation::Mgmt::V2015_10_31::Models::Usage
      end
      def dsc_configuration_list_result
        Azure::Automation::Mgmt::V2015_10_31::Models::DscConfigurationListResult
      end
      def statistics
        Azure::Automation::Mgmt::V2015_10_31::Models::Statistics
      end
      def dsc_configuration_create_or_update_parameters
        Azure::Automation::Mgmt::V2015_10_31::Models::DscConfigurationCreateOrUpdateParameters
      end
      def runbook_parameter
        Azure::Automation::Mgmt::V2015_10_31::Models::RunbookParameter
      end
      def dsc_meta_configuration
        Azure::Automation::Mgmt::V2015_10_31::Models::DscMetaConfiguration
      end
      def content_link
        Azure::Automation::Mgmt::V2015_10_31::Models::ContentLink
      end
      def dsc_node_configuration_create_or_update_parameters
        Azure::Automation::Mgmt::V2015_10_31::Models::DscNodeConfigurationCreateOrUpdateParameters
      end
      def content_hash
        Azure::Automation::Mgmt::V2015_10_31::Models::ContentHash
      end
      def module_error_info
        Azure::Automation::Mgmt::V2015_10_31::Models::ModuleErrorInfo
      end
      def runbook_draft
        Azure::Automation::Mgmt::V2015_10_31::Models::RunbookDraft
      end
      def dsc_node_configuration_association_property
        Azure::Automation::Mgmt::V2015_10_31::Models::DscNodeConfigurationAssociationProperty
      end
      def webhook_create_or_update_parameters
        Azure::Automation::Mgmt::V2015_10_31::Models::WebhookCreateOrUpdateParameters
      end
      def content_source
        Azure::Automation::Mgmt::V2015_10_31::Models::ContentSource
      end
      def dsc_node_configuration
        Azure::Automation::Mgmt::V2015_10_31::Models::DscNodeConfiguration
      end
      def webhook_list_result
        Azure::Automation::Mgmt::V2015_10_31::Models::WebhookListResult
      end
      def dsc_node_configuration_list_result
        Azure::Automation::Mgmt::V2015_10_31::Models::DscNodeConfigurationListResult
      end
      def webhook
        Azure::Automation::Mgmt::V2015_10_31::Models::Webhook
      end
      def dsc_node_list_result
        Azure::Automation::Mgmt::V2015_10_31::Models::DscNodeListResult
      end
      def automation_account_list_result
        Azure::Automation::Mgmt::V2015_10_31::Models::AutomationAccountListResult
      end
      def dsc_node_update_parameters
        Azure::Automation::Mgmt::V2015_10_31::Models::DscNodeUpdateParameters
      end
      def operation
        Azure::Automation::Mgmt::V2015_10_31::Models::Operation
      end
      def dsc_report_error
        Azure::Automation::Mgmt::V2015_10_31::Models::DscReportError
      end
      def automation_account_create_or_update_parameters
        Azure::Automation::Mgmt::V2015_10_31::Models::AutomationAccountCreateOrUpdateParameters
      end
      def dsc_report_resource_navigation
        Azure::Automation::Mgmt::V2015_10_31::Models::DscReportResourceNavigation
      end
      def certificate
        Azure::Automation::Mgmt::V2015_10_31::Models::Certificate
      end
      def dsc_report_resource
        Azure::Automation::Mgmt::V2015_10_31::Models::DscReportResource
      end
      def certificate_update_parameters
        Azure::Automation::Mgmt::V2015_10_31::Models::CertificateUpdateParameters
      end
      def dsc_node_report
        Azure::Automation::Mgmt::V2015_10_31::Models::DscNodeReport
      end
      def connection_type_association_property
        Azure::Automation::Mgmt::V2015_10_31::Models::ConnectionTypeAssociationProperty
      end
      def dsc_node_report_list_result
        Azure::Automation::Mgmt::V2015_10_31::Models::DscNodeReportListResult
      end
      def connection_list_result
        Azure::Automation::Mgmt::V2015_10_31::Models::ConnectionListResult
      end
      def hybrid_runbook_worker
        Azure::Automation::Mgmt::V2015_10_31::Models::HybridRunbookWorker
      end
      def connection_create_or_update_parameters
        Azure::Automation::Mgmt::V2015_10_31::Models::ConnectionCreateOrUpdateParameters
      end
      def run_as_credential_association_property
        Azure::Automation::Mgmt::V2015_10_31::Models::RunAsCredentialAssociationProperty
      end
      def connection_type
        Azure::Automation::Mgmt::V2015_10_31::Models::ConnectionType
      end
      def hybrid_runbook_worker_group
        Azure::Automation::Mgmt::V2015_10_31::Models::HybridRunbookWorkerGroup
      end
      def connection_type_create_or_update_parameters
        Azure::Automation::Mgmt::V2015_10_31::Models::ConnectionTypeCreateOrUpdateParameters
      end
      def hybrid_runbook_worker_groups_list_result
        Azure::Automation::Mgmt::V2015_10_31::Models::HybridRunbookWorkerGroupsListResult
      end
      def credential_list_result
        Azure::Automation::Mgmt::V2015_10_31::Models::CredentialListResult
      end
      def hybrid_runbook_worker_group_update_parameters
        Azure::Automation::Mgmt::V2015_10_31::Models::HybridRunbookWorkerGroupUpdateParameters
      end
      def credential_create_or_update_parameters
        Azure::Automation::Mgmt::V2015_10_31::Models::CredentialCreateOrUpdateParameters
      end
      def runbook_association_property
        Azure::Automation::Mgmt::V2015_10_31::Models::RunbookAssociationProperty
      end
      def activity_parameter_set
        Azure::Automation::Mgmt::V2015_10_31::Models::ActivityParameterSet
      end
      def job
        Azure::Automation::Mgmt::V2015_10_31::Models::Job
      end
      def activity
        Azure::Automation::Mgmt::V2015_10_31::Models::Activity
      end
      def job_create_parameters
        Azure::Automation::Mgmt::V2015_10_31::Models::JobCreateParameters
      end
      def advanced_schedule_monthly_occurrence
        Azure::Automation::Mgmt::V2015_10_31::Models::AdvancedScheduleMonthlyOccurrence
      end
      def job_list_result
        Azure::Automation::Mgmt::V2015_10_31::Models::JobListResult
      end
      def agent_registration_keys
        Azure::Automation::Mgmt::V2015_10_31::Models::AgentRegistrationKeys
      end
      def schedule_association_property
        Azure::Automation::Mgmt::V2015_10_31::Models::ScheduleAssociationProperty
      end
      def agent_registration_regenerate_key_parameter
        Azure::Automation::Mgmt::V2015_10_31::Models::AgentRegistrationRegenerateKeyParameter
      end
      def job_schedule_create_parameters
        Azure::Automation::Mgmt::V2015_10_31::Models::JobScheduleCreateParameters
      end
      def dsc_compilation_job_create_parameters
        Azure::Automation::Mgmt::V2015_10_31::Models::DscCompilationJobCreateParameters
      end
      def job_schedule
        Azure::Automation::Mgmt::V2015_10_31::Models::JobSchedule
      end
      def usage_list_result
        Azure::Automation::Mgmt::V2015_10_31::Models::UsageListResult
      end
      def job_schedule_list_result
        Azure::Automation::Mgmt::V2015_10_31::Models::JobScheduleListResult
      end
      def job_stream
        Azure::Automation::Mgmt::V2015_10_31::Models::JobStream
      end
      def dsc_configuration_parameter
        Azure::Automation::Mgmt::V2015_10_31::Models::DscConfigurationParameter
      end
      def job_stream_list_result
        Azure::Automation::Mgmt::V2015_10_31::Models::JobStreamListResult
      end
      def resource
        Azure::Automation::Mgmt::V2015_10_31::Models::Resource
      end
      def module_create_or_update_parameters
        Azure::Automation::Mgmt::V2015_10_31::Models::ModuleCreateOrUpdateParameters
      end
      def operation_list_result
        Azure::Automation::Mgmt::V2015_10_31::Models::OperationListResult
      end
      def module_list_result
        Azure::Automation::Mgmt::V2015_10_31::Models::ModuleListResult
      end
      def certificate_list_result
        Azure::Automation::Mgmt::V2015_10_31::Models::CertificateListResult
      end
      def module_update_parameters
        Azure::Automation::Mgmt::V2015_10_31::Models::ModuleUpdateParameters
      end
      def connection
        Azure::Automation::Mgmt::V2015_10_31::Models::Connection
      end
      def runbook_draft_undo_edit_result
        Azure::Automation::Mgmt::V2015_10_31::Models::RunbookDraftUndoEditResult
      end
      def field_definition
        Azure::Automation::Mgmt::V2015_10_31::Models::FieldDefinition
      end
      def runbook_create_or_update_parameters
        Azure::Automation::Mgmt::V2015_10_31::Models::RunbookCreateOrUpdateParameters
      end
      def credential
        Azure::Automation::Mgmt::V2015_10_31::Models::Credential
      end
      def runbook_create_or_update_draft_properties
        Azure::Automation::Mgmt::V2015_10_31::Models::RunbookCreateOrUpdateDraftProperties
      end
      def activity_parameter
        Azure::Automation::Mgmt::V2015_10_31::Models::ActivityParameter
      end
      def runbook_create_or_update_draft_parameters
        Azure::Automation::Mgmt::V2015_10_31::Models::RunbookCreateOrUpdateDraftParameters
      end
      def activity_list_result
        Azure::Automation::Mgmt::V2015_10_31::Models::ActivityListResult
      end
      def runbook_update_parameters
        Azure::Automation::Mgmt::V2015_10_31::Models::RunbookUpdateParameters
      end
      def agent_registration
        Azure::Automation::Mgmt::V2015_10_31::Models::AgentRegistration
      end
      def runbook_list_result
        Azure::Automation::Mgmt::V2015_10_31::Models::RunbookListResult
      end
      def usage_counter_name
        Azure::Automation::Mgmt::V2015_10_31::Models::UsageCounterName
      end
      def schedule_create_or_update_parameters
        Azure::Automation::Mgmt::V2015_10_31::Models::ScheduleCreateOrUpdateParameters
      end
      def webhook_update_parameters
        Azure::Automation::Mgmt::V2015_10_31::Models::WebhookUpdateParameters
      end
      def schedule
        Azure::Automation::Mgmt::V2015_10_31::Models::Schedule
      end
      def operation_display
        Azure::Automation::Mgmt::V2015_10_31::Models::OperationDisplay
      end
      def schedule_update_parameters
        Azure::Automation::Mgmt::V2015_10_31::Models::ScheduleUpdateParameters
      end
      def certificate_create_or_update_parameters
        Azure::Automation::Mgmt::V2015_10_31::Models::CertificateCreateOrUpdateParameters
      end
      def schedule_list_result
        Azure::Automation::Mgmt::V2015_10_31::Models::ScheduleListResult
      end
      def connection_type_list_result
        Azure::Automation::Mgmt::V2015_10_31::Models::ConnectionTypeListResult
      end
      def sub_resource
        Azure::Automation::Mgmt::V2015_10_31::Models::SubResource
      end
      def activity_output_type
        Azure::Automation::Mgmt::V2015_10_31::Models::ActivityOutputType
      end
      def test_job_create_parameters
        Azure::Automation::Mgmt::V2015_10_31::Models::TestJobCreateParameters
      end
      def dsc_configuration_association_property
        Azure::Automation::Mgmt::V2015_10_31::Models::DscConfigurationAssociationProperty
      end
      def test_job
        Azure::Automation::Mgmt::V2015_10_31::Models::TestJob
      end
      def sku
        Azure::Automation::Mgmt::V2015_10_31::Models::Sku
      end
      def type_field
        Azure::Automation::Mgmt::V2015_10_31::Models::TypeField
      end
      def connection_update_parameters
        Azure::Automation::Mgmt::V2015_10_31::Models::ConnectionUpdateParameters
      end
      def type_field_list_result
        Azure::Automation::Mgmt::V2015_10_31::Models::TypeFieldListResult
      end
      def advanced_schedule
        Azure::Automation::Mgmt::V2015_10_31::Models::AdvancedSchedule
      end
      def variable_create_or_update_parameters
        Azure::Automation::Mgmt::V2015_10_31::Models::VariableCreateOrUpdateParameters
      end
      def automation_account_update_parameters
        Azure::Automation::Mgmt::V2015_10_31::Models::AutomationAccountUpdateParameters
      end
      def variable
        Azure::Automation::Mgmt::V2015_10_31::Models::Variable
      end
      def statistics_list_result
        Azure::Automation::Mgmt::V2015_10_31::Models::StatisticsListResult
      end
      def variable_list_result
        Azure::Automation::Mgmt::V2015_10_31::Models::VariableListResult
      end
      def credential_update_parameters
        Azure::Automation::Mgmt::V2015_10_31::Models::CredentialUpdateParameters
      end
      def variable_update_parameters
        Azure::Automation::Mgmt::V2015_10_31::Models::VariableUpdateParameters
      end
      def runbook
        Azure::Automation::Mgmt::V2015_10_31::Models::Runbook
      end
      def module_model
        Azure::Automation::Mgmt::V2015_10_31::Models::ModuleModel
      end
      def dsc_node
        Azure::Automation::Mgmt::V2015_10_31::Models::DscNode
      end
      def dsc_configuration
        Azure::Automation::Mgmt::V2015_10_31::Models::DscConfiguration
      end
      def automation_account
        Azure::Automation::Mgmt::V2015_10_31::Models::AutomationAccount
      end
      def runbook_type_enum
        Azure::Automation::Mgmt::V2015_10_31::Models::RunbookTypeEnum
      end
      def runbook_state
        Azure::Automation::Mgmt::V2015_10_31::Models::RunbookState
      end
      def runbook_provisioning_state
        Azure::Automation::Mgmt::V2015_10_31::Models::RunbookProvisioningState
      end
      def module_provisioning_state
        Azure::Automation::Mgmt::V2015_10_31::Models::ModuleProvisioningState
      end
      def content_source_type
        Azure::Automation::Mgmt::V2015_10_31::Models::ContentSourceType
      end
      def dsc_configuration_provisioning_state
        Azure::Automation::Mgmt::V2015_10_31::Models::DscConfigurationProvisioningState
      end
      def dsc_configuration_state
        Azure::Automation::Mgmt::V2015_10_31::Models::DscConfigurationState
      end
      def sku_name_enum
        Azure::Automation::Mgmt::V2015_10_31::Models::SkuNameEnum
      end
      def automation_account_state
        Azure::Automation::Mgmt::V2015_10_31::Models::AutomationAccountState
      end
      def schedule_day
        Azure::Automation::Mgmt::V2015_10_31::Models::ScheduleDay
      end
      def agent_registration_key_name
        Azure::Automation::Mgmt::V2015_10_31::Models::AgentRegistrationKeyName
      end
      def job_status
        Azure::Automation::Mgmt::V2015_10_31::Models::JobStatus
      end
      def job_stream_type
        Azure::Automation::Mgmt::V2015_10_31::Models::JobStreamType
      end
      def http_status_code
        Azure::Automation::Mgmt::V2015_10_31::Models::HttpStatusCode
      end
      def schedule_frequency
        Azure::Automation::Mgmt::V2015_10_31::Models::ScheduleFrequency
      end
    end
  end
end
