# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_automation'


module Azure::Profiles::AutomationModule::Management::Profile_Latest
  module Automation
    AutomationAccountOperations = Azure::ARM::Automation::Api_2015_10_31::AutomationAccountOperations
    Operations = Azure::ARM::Automation::Api_2015_10_31::Operations
    StatisticsOperations = Azure::ARM::Automation::Api_2015_10_31::StatisticsOperations
    Usages = Azure::ARM::Automation::Api_2015_10_31::Usages
    CertificateOperations = Azure::ARM::Automation::Api_2015_10_31::CertificateOperations
    ConnectionOperations = Azure::ARM::Automation::Api_2015_10_31::ConnectionOperations
    ConnectionTypeOperations = Azure::ARM::Automation::Api_2015_10_31::ConnectionTypeOperations
    CredentialOperations = Azure::ARM::Automation::Api_2015_10_31::CredentialOperations
    DscCompilationJobOperations = Azure::ARM::Automation::Api_2015_10_31::DscCompilationJobOperations
    DscConfigurationOperations = Azure::ARM::Automation::Api_2015_10_31::DscConfigurationOperations
    AgentRegistrationInformation = Azure::ARM::Automation::Api_2015_10_31::AgentRegistrationInformation
    DscNodeOperations = Azure::ARM::Automation::Api_2015_10_31::DscNodeOperations
    NodeReports = Azure::ARM::Automation::Api_2015_10_31::NodeReports
    DscNodeConfigurationOperations = Azure::ARM::Automation::Api_2015_10_31::DscNodeConfigurationOperations
    HybridRunbookWorkerGroupOperations = Azure::ARM::Automation::Api_2015_10_31::HybridRunbookWorkerGroupOperations
    JobOperations = Azure::ARM::Automation::Api_2015_10_31::JobOperations
    JobStreamOperations = Azure::ARM::Automation::Api_2015_10_31::JobStreamOperations
    JobScheduleOperations = Azure::ARM::Automation::Api_2015_10_31::JobScheduleOperations
    ActivityOperations = Azure::ARM::Automation::Api_2015_10_31::ActivityOperations
    ModuleModelOperations = Azure::ARM::Automation::Api_2015_10_31::ModuleModelOperations
    ObjectDataTypes = Azure::ARM::Automation::Api_2015_10_31::ObjectDataTypes
    Fields = Azure::ARM::Automation::Api_2015_10_31::Fields
    RunbookDraftOperations = Azure::ARM::Automation::Api_2015_10_31::RunbookDraftOperations
    RunbookOperations = Azure::ARM::Automation::Api_2015_10_31::RunbookOperations
    TestJobStreams = Azure::ARM::Automation::Api_2015_10_31::TestJobStreams
    TestJobs = Azure::ARM::Automation::Api_2015_10_31::TestJobs
    ScheduleOperations = Azure::ARM::Automation::Api_2015_10_31::ScheduleOperations
    VariableOperations = Azure::ARM::Automation::Api_2015_10_31::VariableOperations
    WebhookOperations = Azure::ARM::Automation::Api_2015_10_31::WebhookOperations
    AutomationClient = Azure::ARM::Automation::Api_2015_10_31::AutomationClient

    module Models
      DscCompilationJob = Azure::ARM::Automation::Api_2015_10_31::Models::DscCompilationJob
      ErrorResponse = Azure::ARM::Automation::Api_2015_10_31::Models::ErrorResponse
      DscCompilationJobListResult = Azure::ARM::Automation::Api_2015_10_31::Models::DscCompilationJobListResult
      Usage = Azure::ARM::Automation::Api_2015_10_31::Models::Usage
      DscConfigurationListResult = Azure::ARM::Automation::Api_2015_10_31::Models::DscConfigurationListResult
      Statistics = Azure::ARM::Automation::Api_2015_10_31::Models::Statistics
      DscConfigurationCreateOrUpdateParameters = Azure::ARM::Automation::Api_2015_10_31::Models::DscConfigurationCreateOrUpdateParameters
      RunbookParameter = Azure::ARM::Automation::Api_2015_10_31::Models::RunbookParameter
      DscMetaConfiguration = Azure::ARM::Automation::Api_2015_10_31::Models::DscMetaConfiguration
      ContentLink = Azure::ARM::Automation::Api_2015_10_31::Models::ContentLink
      DscNodeConfigurationCreateOrUpdateParameters = Azure::ARM::Automation::Api_2015_10_31::Models::DscNodeConfigurationCreateOrUpdateParameters
      ContentHash = Azure::ARM::Automation::Api_2015_10_31::Models::ContentHash
      ModuleErrorInfo = Azure::ARM::Automation::Api_2015_10_31::Models::ModuleErrorInfo
      RunbookDraft = Azure::ARM::Automation::Api_2015_10_31::Models::RunbookDraft
      DscNodeConfigurationAssociationProperty = Azure::ARM::Automation::Api_2015_10_31::Models::DscNodeConfigurationAssociationProperty
      WebhookCreateOrUpdateParameters = Azure::ARM::Automation::Api_2015_10_31::Models::WebhookCreateOrUpdateParameters
      ContentSource = Azure::ARM::Automation::Api_2015_10_31::Models::ContentSource
      DscNodeConfiguration = Azure::ARM::Automation::Api_2015_10_31::Models::DscNodeConfiguration
      WebhookListResult = Azure::ARM::Automation::Api_2015_10_31::Models::WebhookListResult
      DscNodeConfigurationListResult = Azure::ARM::Automation::Api_2015_10_31::Models::DscNodeConfigurationListResult
      Webhook = Azure::ARM::Automation::Api_2015_10_31::Models::Webhook
      DscNodeListResult = Azure::ARM::Automation::Api_2015_10_31::Models::DscNodeListResult
      AutomationAccountListResult = Azure::ARM::Automation::Api_2015_10_31::Models::AutomationAccountListResult
      DscNodeUpdateParameters = Azure::ARM::Automation::Api_2015_10_31::Models::DscNodeUpdateParameters
      Operation = Azure::ARM::Automation::Api_2015_10_31::Models::Operation
      DscReportError = Azure::ARM::Automation::Api_2015_10_31::Models::DscReportError
      AutomationAccountCreateOrUpdateParameters = Azure::ARM::Automation::Api_2015_10_31::Models::AutomationAccountCreateOrUpdateParameters
      DscReportResourceNavigation = Azure::ARM::Automation::Api_2015_10_31::Models::DscReportResourceNavigation
      Certificate = Azure::ARM::Automation::Api_2015_10_31::Models::Certificate
      DscReportResource = Azure::ARM::Automation::Api_2015_10_31::Models::DscReportResource
      CertificateUpdateParameters = Azure::ARM::Automation::Api_2015_10_31::Models::CertificateUpdateParameters
      DscNodeReport = Azure::ARM::Automation::Api_2015_10_31::Models::DscNodeReport
      ConnectionTypeAssociationProperty = Azure::ARM::Automation::Api_2015_10_31::Models::ConnectionTypeAssociationProperty
      DscNodeReportListResult = Azure::ARM::Automation::Api_2015_10_31::Models::DscNodeReportListResult
      ConnectionListResult = Azure::ARM::Automation::Api_2015_10_31::Models::ConnectionListResult
      HybridRunbookWorker = Azure::ARM::Automation::Api_2015_10_31::Models::HybridRunbookWorker
      ConnectionCreateOrUpdateParameters = Azure::ARM::Automation::Api_2015_10_31::Models::ConnectionCreateOrUpdateParameters
      RunAsCredentialAssociationProperty = Azure::ARM::Automation::Api_2015_10_31::Models::RunAsCredentialAssociationProperty
      ConnectionType = Azure::ARM::Automation::Api_2015_10_31::Models::ConnectionType
      HybridRunbookWorkerGroup = Azure::ARM::Automation::Api_2015_10_31::Models::HybridRunbookWorkerGroup
      ConnectionTypeCreateOrUpdateParameters = Azure::ARM::Automation::Api_2015_10_31::Models::ConnectionTypeCreateOrUpdateParameters
      HybridRunbookWorkerGroupsListResult = Azure::ARM::Automation::Api_2015_10_31::Models::HybridRunbookWorkerGroupsListResult
      CredentialListResult = Azure::ARM::Automation::Api_2015_10_31::Models::CredentialListResult
      HybridRunbookWorkerGroupUpdateParameters = Azure::ARM::Automation::Api_2015_10_31::Models::HybridRunbookWorkerGroupUpdateParameters
      CredentialCreateOrUpdateParameters = Azure::ARM::Automation::Api_2015_10_31::Models::CredentialCreateOrUpdateParameters
      RunbookAssociationProperty = Azure::ARM::Automation::Api_2015_10_31::Models::RunbookAssociationProperty
      ActivityParameterSet = Azure::ARM::Automation::Api_2015_10_31::Models::ActivityParameterSet
      Job = Azure::ARM::Automation::Api_2015_10_31::Models::Job
      Activity = Azure::ARM::Automation::Api_2015_10_31::Models::Activity
      JobCreateParameters = Azure::ARM::Automation::Api_2015_10_31::Models::JobCreateParameters
      AdvancedScheduleMonthlyOccurrence = Azure::ARM::Automation::Api_2015_10_31::Models::AdvancedScheduleMonthlyOccurrence
      JobListResult = Azure::ARM::Automation::Api_2015_10_31::Models::JobListResult
      AgentRegistrationKeys = Azure::ARM::Automation::Api_2015_10_31::Models::AgentRegistrationKeys
      ScheduleAssociationProperty = Azure::ARM::Automation::Api_2015_10_31::Models::ScheduleAssociationProperty
      AgentRegistrationRegenerateKeyParameter = Azure::ARM::Automation::Api_2015_10_31::Models::AgentRegistrationRegenerateKeyParameter
      JobScheduleCreateParameters = Azure::ARM::Automation::Api_2015_10_31::Models::JobScheduleCreateParameters
      DscCompilationJobCreateParameters = Azure::ARM::Automation::Api_2015_10_31::Models::DscCompilationJobCreateParameters
      JobSchedule = Azure::ARM::Automation::Api_2015_10_31::Models::JobSchedule
      UsageListResult = Azure::ARM::Automation::Api_2015_10_31::Models::UsageListResult
      JobScheduleListResult = Azure::ARM::Automation::Api_2015_10_31::Models::JobScheduleListResult
      JobStream = Azure::ARM::Automation::Api_2015_10_31::Models::JobStream
      DscConfigurationParameter = Azure::ARM::Automation::Api_2015_10_31::Models::DscConfigurationParameter
      JobStreamListResult = Azure::ARM::Automation::Api_2015_10_31::Models::JobStreamListResult
      ModuleCreateOrUpdateParameters = Azure::ARM::Automation::Api_2015_10_31::Models::ModuleCreateOrUpdateParameters
      OperationListResult = Azure::ARM::Automation::Api_2015_10_31::Models::OperationListResult
      ModuleListResult = Azure::ARM::Automation::Api_2015_10_31::Models::ModuleListResult
      CertificateListResult = Azure::ARM::Automation::Api_2015_10_31::Models::CertificateListResult
      ModuleUpdateParameters = Azure::ARM::Automation::Api_2015_10_31::Models::ModuleUpdateParameters
      Connection = Azure::ARM::Automation::Api_2015_10_31::Models::Connection
      RunbookDraftUndoEditResult = Azure::ARM::Automation::Api_2015_10_31::Models::RunbookDraftUndoEditResult
      FieldDefinition = Azure::ARM::Automation::Api_2015_10_31::Models::FieldDefinition
      RunbookCreateOrUpdateParameters = Azure::ARM::Automation::Api_2015_10_31::Models::RunbookCreateOrUpdateParameters
      Credential = Azure::ARM::Automation::Api_2015_10_31::Models::Credential
      RunbookCreateOrUpdateDraftProperties = Azure::ARM::Automation::Api_2015_10_31::Models::RunbookCreateOrUpdateDraftProperties
      ActivityParameter = Azure::ARM::Automation::Api_2015_10_31::Models::ActivityParameter
      RunbookCreateOrUpdateDraftParameters = Azure::ARM::Automation::Api_2015_10_31::Models::RunbookCreateOrUpdateDraftParameters
      ActivityListResult = Azure::ARM::Automation::Api_2015_10_31::Models::ActivityListResult
      RunbookUpdateParameters = Azure::ARM::Automation::Api_2015_10_31::Models::RunbookUpdateParameters
      AgentRegistration = Azure::ARM::Automation::Api_2015_10_31::Models::AgentRegistration
      RunbookListResult = Azure::ARM::Automation::Api_2015_10_31::Models::RunbookListResult
      UsageCounterName = Azure::ARM::Automation::Api_2015_10_31::Models::UsageCounterName
      ScheduleCreateOrUpdateParameters = Azure::ARM::Automation::Api_2015_10_31::Models::ScheduleCreateOrUpdateParameters
      WebhookUpdateParameters = Azure::ARM::Automation::Api_2015_10_31::Models::WebhookUpdateParameters
      Schedule = Azure::ARM::Automation::Api_2015_10_31::Models::Schedule
      OperationDisplay = Azure::ARM::Automation::Api_2015_10_31::Models::OperationDisplay
      ScheduleUpdateParameters = Azure::ARM::Automation::Api_2015_10_31::Models::ScheduleUpdateParameters
      CertificateCreateOrUpdateParameters = Azure::ARM::Automation::Api_2015_10_31::Models::CertificateCreateOrUpdateParameters
      ScheduleListResult = Azure::ARM::Automation::Api_2015_10_31::Models::ScheduleListResult
      ConnectionTypeListResult = Azure::ARM::Automation::Api_2015_10_31::Models::ConnectionTypeListResult
      ActivityOutputType = Azure::ARM::Automation::Api_2015_10_31::Models::ActivityOutputType
      TestJobCreateParameters = Azure::ARM::Automation::Api_2015_10_31::Models::TestJobCreateParameters
      DscConfigurationAssociationProperty = Azure::ARM::Automation::Api_2015_10_31::Models::DscConfigurationAssociationProperty
      TestJob = Azure::ARM::Automation::Api_2015_10_31::Models::TestJob
      Sku = Azure::ARM::Automation::Api_2015_10_31::Models::Sku
      TypeField = Azure::ARM::Automation::Api_2015_10_31::Models::TypeField
      ConnectionUpdateParameters = Azure::ARM::Automation::Api_2015_10_31::Models::ConnectionUpdateParameters
      TypeFieldListResult = Azure::ARM::Automation::Api_2015_10_31::Models::TypeFieldListResult
      AdvancedSchedule = Azure::ARM::Automation::Api_2015_10_31::Models::AdvancedSchedule
      VariableCreateOrUpdateParameters = Azure::ARM::Automation::Api_2015_10_31::Models::VariableCreateOrUpdateParameters
      AutomationAccountUpdateParameters = Azure::ARM::Automation::Api_2015_10_31::Models::AutomationAccountUpdateParameters
      Variable = Azure::ARM::Automation::Api_2015_10_31::Models::Variable
      StatisticsListResult = Azure::ARM::Automation::Api_2015_10_31::Models::StatisticsListResult
      VariableListResult = Azure::ARM::Automation::Api_2015_10_31::Models::VariableListResult
      CredentialUpdateParameters = Azure::ARM::Automation::Api_2015_10_31::Models::CredentialUpdateParameters
      VariableUpdateParameters = Azure::ARM::Automation::Api_2015_10_31::Models::VariableUpdateParameters
      Runbook = Azure::ARM::Automation::Api_2015_10_31::Models::Runbook
      ModuleModel = Azure::ARM::Automation::Api_2015_10_31::Models::ModuleModel
      DscNode = Azure::ARM::Automation::Api_2015_10_31::Models::DscNode
      DscConfiguration = Azure::ARM::Automation::Api_2015_10_31::Models::DscConfiguration
      AutomationAccount = Azure::ARM::Automation::Api_2015_10_31::Models::AutomationAccount
      RunbookTypeEnum = Azure::ARM::Automation::Api_2015_10_31::Models::RunbookTypeEnum
      RunbookState = Azure::ARM::Automation::Api_2015_10_31::Models::RunbookState
      RunbookProvisioningState = Azure::ARM::Automation::Api_2015_10_31::Models::RunbookProvisioningState
      ModuleProvisioningState = Azure::ARM::Automation::Api_2015_10_31::Models::ModuleProvisioningState
      ContentSourceType = Azure::ARM::Automation::Api_2015_10_31::Models::ContentSourceType
      DscConfigurationProvisioningState = Azure::ARM::Automation::Api_2015_10_31::Models::DscConfigurationProvisioningState
      DscConfigurationState = Azure::ARM::Automation::Api_2015_10_31::Models::DscConfigurationState
      SkuNameEnum = Azure::ARM::Automation::Api_2015_10_31::Models::SkuNameEnum
      AutomationAccountState = Azure::ARM::Automation::Api_2015_10_31::Models::AutomationAccountState
      ScheduleDay = Azure::ARM::Automation::Api_2015_10_31::Models::ScheduleDay
      AgentRegistrationKeyName = Azure::ARM::Automation::Api_2015_10_31::Models::AgentRegistrationKeyName
      JobStatus = Azure::ARM::Automation::Api_2015_10_31::Models::JobStatus
      JobStreamType = Azure::ARM::Automation::Api_2015_10_31::Models::JobStreamType
      HttpStatusCode = Azure::ARM::Automation::Api_2015_10_31::Models::HttpStatusCode
      ScheduleFrequency = Azure::ARM::Automation::Api_2015_10_31::Models::ScheduleFrequency
    end

    #
    # Automation
    #
    class AutomationClass
      attr_accessor :automation_account_operations, :operations, :statistics_operations, :usages, :certificate_operations, :connection_operations, :connection_type_operations, :credential_operations, :dsc_compilation_job_operations, :dsc_configuration_operations, :agent_registration_information, :dsc_node_operations, :node_reports, :dsc_node_configuration_operations, :hybrid_runbook_worker_group_operations, :job_operations, :job_stream_operations, :job_schedule_operations, :activity_operations, :module_model_operations, :object_data_types, :fields, :runbook_draft_operations, :runbook_operations, :test_job_streams, :test_jobs, :schedule_operations, :variable_operations, :webhook_operations, :automation_client, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = .new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.automation_account_operations = Azure::ARM::Automation::Api_2015_10_31::AutomationAccountOperations.new(client)
        self.operations = Azure::ARM::Automation::Api_2015_10_31::Operations.new(client)
        self.statistics_operations = Azure::ARM::Automation::Api_2015_10_31::StatisticsOperations.new(client)
        self.usages = Azure::ARM::Automation::Api_2015_10_31::Usages.new(client)
        self.certificate_operations = Azure::ARM::Automation::Api_2015_10_31::CertificateOperations.new(client)
        self.connection_operations = Azure::ARM::Automation::Api_2015_10_31::ConnectionOperations.new(client)
        self.connection_type_operations = Azure::ARM::Automation::Api_2015_10_31::ConnectionTypeOperations.new(client)
        self.credential_operations = Azure::ARM::Automation::Api_2015_10_31::CredentialOperations.new(client)
        self.dsc_compilation_job_operations = Azure::ARM::Automation::Api_2015_10_31::DscCompilationJobOperations.new(client)
        self.dsc_configuration_operations = Azure::ARM::Automation::Api_2015_10_31::DscConfigurationOperations.new(client)
        self.agent_registration_information = Azure::ARM::Automation::Api_2015_10_31::AgentRegistrationInformation.new(client)
        self.dsc_node_operations = Azure::ARM::Automation::Api_2015_10_31::DscNodeOperations.new(client)
        self.node_reports = Azure::ARM::Automation::Api_2015_10_31::NodeReports.new(client)
        self.dsc_node_configuration_operations = Azure::ARM::Automation::Api_2015_10_31::DscNodeConfigurationOperations.new(client)
        self.hybrid_runbook_worker_group_operations = Azure::ARM::Automation::Api_2015_10_31::HybridRunbookWorkerGroupOperations.new(client)
        self.job_operations = Azure::ARM::Automation::Api_2015_10_31::JobOperations.new(client)
        self.job_stream_operations = Azure::ARM::Automation::Api_2015_10_31::JobStreamOperations.new(client)
        self.job_schedule_operations = Azure::ARM::Automation::Api_2015_10_31::JobScheduleOperations.new(client)
        self.activity_operations = Azure::ARM::Automation::Api_2015_10_31::ActivityOperations.new(client)
        self.module_model_operations = Azure::ARM::Automation::Api_2015_10_31::ModuleModelOperations.new(client)
        self.object_data_types = Azure::ARM::Automation::Api_2015_10_31::ObjectDataTypes.new(client)
        self.fields = Azure::ARM::Automation::Api_2015_10_31::Fields.new(client)
        self.runbook_draft_operations = Azure::ARM::Automation::Api_2015_10_31::RunbookDraftOperations.new(client)
        self.runbook_operations = Azure::ARM::Automation::Api_2015_10_31::RunbookOperations.new(client)
        self.test_job_streams = Azure::ARM::Automation::Api_2015_10_31::TestJobStreams.new(client)
        self.test_jobs = Azure::ARM::Automation::Api_2015_10_31::TestJobs.new(client)
        self.schedule_operations = Azure::ARM::Automation::Api_2015_10_31::ScheduleOperations.new(client)
        self.variable_operations = Azure::ARM::Automation::Api_2015_10_31::VariableOperations.new(client)
        self.webhook_operations = Azure::ARM::Automation::Api_2015_10_31::WebhookOperations.new(client)
        self.automation_client = Azure::ARM::Automation::Api_2015_10_31::AutomationClient.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def dsc_compilation_job
          Azure::ARM::Automation::Api_2015_10_31::Models::DscCompilationJob
        end
        def error_response
          Azure::ARM::Automation::Api_2015_10_31::Models::ErrorResponse
        end
        def dsc_compilation_job_list_result
          Azure::ARM::Automation::Api_2015_10_31::Models::DscCompilationJobListResult
        end
        def usage
          Azure::ARM::Automation::Api_2015_10_31::Models::Usage
        end
        def dsc_configuration_list_result
          Azure::ARM::Automation::Api_2015_10_31::Models::DscConfigurationListResult
        end
        def statistics
          Azure::ARM::Automation::Api_2015_10_31::Models::Statistics
        end
        def dsc_configuration_create_or_update_parameters
          Azure::ARM::Automation::Api_2015_10_31::Models::DscConfigurationCreateOrUpdateParameters
        end
        def runbook_parameter
          Azure::ARM::Automation::Api_2015_10_31::Models::RunbookParameter
        end
        def dsc_meta_configuration
          Azure::ARM::Automation::Api_2015_10_31::Models::DscMetaConfiguration
        end
        def content_link
          Azure::ARM::Automation::Api_2015_10_31::Models::ContentLink
        end
        def dsc_node_configuration_create_or_update_parameters
          Azure::ARM::Automation::Api_2015_10_31::Models::DscNodeConfigurationCreateOrUpdateParameters
        end
        def content_hash
          Azure::ARM::Automation::Api_2015_10_31::Models::ContentHash
        end
        def module_error_info
          Azure::ARM::Automation::Api_2015_10_31::Models::ModuleErrorInfo
        end
        def runbook_draft
          Azure::ARM::Automation::Api_2015_10_31::Models::RunbookDraft
        end
        def dsc_node_configuration_association_property
          Azure::ARM::Automation::Api_2015_10_31::Models::DscNodeConfigurationAssociationProperty
        end
        def webhook_create_or_update_parameters
          Azure::ARM::Automation::Api_2015_10_31::Models::WebhookCreateOrUpdateParameters
        end
        def content_source
          Azure::ARM::Automation::Api_2015_10_31::Models::ContentSource
        end
        def dsc_node_configuration
          Azure::ARM::Automation::Api_2015_10_31::Models::DscNodeConfiguration
        end
        def webhook_list_result
          Azure::ARM::Automation::Api_2015_10_31::Models::WebhookListResult
        end
        def dsc_node_configuration_list_result
          Azure::ARM::Automation::Api_2015_10_31::Models::DscNodeConfigurationListResult
        end
        def webhook
          Azure::ARM::Automation::Api_2015_10_31::Models::Webhook
        end
        def dsc_node_list_result
          Azure::ARM::Automation::Api_2015_10_31::Models::DscNodeListResult
        end
        def automation_account_list_result
          Azure::ARM::Automation::Api_2015_10_31::Models::AutomationAccountListResult
        end
        def dsc_node_update_parameters
          Azure::ARM::Automation::Api_2015_10_31::Models::DscNodeUpdateParameters
        end
        def operation
          Azure::ARM::Automation::Api_2015_10_31::Models::Operation
        end
        def dsc_report_error
          Azure::ARM::Automation::Api_2015_10_31::Models::DscReportError
        end
        def automation_account_create_or_update_parameters
          Azure::ARM::Automation::Api_2015_10_31::Models::AutomationAccountCreateOrUpdateParameters
        end
        def dsc_report_resource_navigation
          Azure::ARM::Automation::Api_2015_10_31::Models::DscReportResourceNavigation
        end
        def certificate
          Azure::ARM::Automation::Api_2015_10_31::Models::Certificate
        end
        def dsc_report_resource
          Azure::ARM::Automation::Api_2015_10_31::Models::DscReportResource
        end
        def certificate_update_parameters
          Azure::ARM::Automation::Api_2015_10_31::Models::CertificateUpdateParameters
        end
        def dsc_node_report
          Azure::ARM::Automation::Api_2015_10_31::Models::DscNodeReport
        end
        def connection_type_association_property
          Azure::ARM::Automation::Api_2015_10_31::Models::ConnectionTypeAssociationProperty
        end
        def dsc_node_report_list_result
          Azure::ARM::Automation::Api_2015_10_31::Models::DscNodeReportListResult
        end
        def connection_list_result
          Azure::ARM::Automation::Api_2015_10_31::Models::ConnectionListResult
        end
        def hybrid_runbook_worker
          Azure::ARM::Automation::Api_2015_10_31::Models::HybridRunbookWorker
        end
        def connection_create_or_update_parameters
          Azure::ARM::Automation::Api_2015_10_31::Models::ConnectionCreateOrUpdateParameters
        end
        def run_as_credential_association_property
          Azure::ARM::Automation::Api_2015_10_31::Models::RunAsCredentialAssociationProperty
        end
        def connection_type
          Azure::ARM::Automation::Api_2015_10_31::Models::ConnectionType
        end
        def hybrid_runbook_worker_group
          Azure::ARM::Automation::Api_2015_10_31::Models::HybridRunbookWorkerGroup
        end
        def connection_type_create_or_update_parameters
          Azure::ARM::Automation::Api_2015_10_31::Models::ConnectionTypeCreateOrUpdateParameters
        end
        def hybrid_runbook_worker_groups_list_result
          Azure::ARM::Automation::Api_2015_10_31::Models::HybridRunbookWorkerGroupsListResult
        end
        def credential_list_result
          Azure::ARM::Automation::Api_2015_10_31::Models::CredentialListResult
        end
        def hybrid_runbook_worker_group_update_parameters
          Azure::ARM::Automation::Api_2015_10_31::Models::HybridRunbookWorkerGroupUpdateParameters
        end
        def credential_create_or_update_parameters
          Azure::ARM::Automation::Api_2015_10_31::Models::CredentialCreateOrUpdateParameters
        end
        def runbook_association_property
          Azure::ARM::Automation::Api_2015_10_31::Models::RunbookAssociationProperty
        end
        def activity_parameter_set
          Azure::ARM::Automation::Api_2015_10_31::Models::ActivityParameterSet
        end
        def job
          Azure::ARM::Automation::Api_2015_10_31::Models::Job
        end
        def activity
          Azure::ARM::Automation::Api_2015_10_31::Models::Activity
        end
        def job_create_parameters
          Azure::ARM::Automation::Api_2015_10_31::Models::JobCreateParameters
        end
        def advanced_schedule_monthly_occurrence
          Azure::ARM::Automation::Api_2015_10_31::Models::AdvancedScheduleMonthlyOccurrence
        end
        def job_list_result
          Azure::ARM::Automation::Api_2015_10_31::Models::JobListResult
        end
        def agent_registration_keys
          Azure::ARM::Automation::Api_2015_10_31::Models::AgentRegistrationKeys
        end
        def schedule_association_property
          Azure::ARM::Automation::Api_2015_10_31::Models::ScheduleAssociationProperty
        end
        def agent_registration_regenerate_key_parameter
          Azure::ARM::Automation::Api_2015_10_31::Models::AgentRegistrationRegenerateKeyParameter
        end
        def job_schedule_create_parameters
          Azure::ARM::Automation::Api_2015_10_31::Models::JobScheduleCreateParameters
        end
        def dsc_compilation_job_create_parameters
          Azure::ARM::Automation::Api_2015_10_31::Models::DscCompilationJobCreateParameters
        end
        def job_schedule
          Azure::ARM::Automation::Api_2015_10_31::Models::JobSchedule
        end
        def usage_list_result
          Azure::ARM::Automation::Api_2015_10_31::Models::UsageListResult
        end
        def job_schedule_list_result
          Azure::ARM::Automation::Api_2015_10_31::Models::JobScheduleListResult
        end
        def job_stream
          Azure::ARM::Automation::Api_2015_10_31::Models::JobStream
        end
        def dsc_configuration_parameter
          Azure::ARM::Automation::Api_2015_10_31::Models::DscConfigurationParameter
        end
        def job_stream_list_result
          Azure::ARM::Automation::Api_2015_10_31::Models::JobStreamListResult
        end
        def module_create_or_update_parameters
          Azure::ARM::Automation::Api_2015_10_31::Models::ModuleCreateOrUpdateParameters
        end
        def operation_list_result
          Azure::ARM::Automation::Api_2015_10_31::Models::OperationListResult
        end
        def module_list_result
          Azure::ARM::Automation::Api_2015_10_31::Models::ModuleListResult
        end
        def certificate_list_result
          Azure::ARM::Automation::Api_2015_10_31::Models::CertificateListResult
        end
        def module_update_parameters
          Azure::ARM::Automation::Api_2015_10_31::Models::ModuleUpdateParameters
        end
        def connection
          Azure::ARM::Automation::Api_2015_10_31::Models::Connection
        end
        def runbook_draft_undo_edit_result
          Azure::ARM::Automation::Api_2015_10_31::Models::RunbookDraftUndoEditResult
        end
        def field_definition
          Azure::ARM::Automation::Api_2015_10_31::Models::FieldDefinition
        end
        def runbook_create_or_update_parameters
          Azure::ARM::Automation::Api_2015_10_31::Models::RunbookCreateOrUpdateParameters
        end
        def credential
          Azure::ARM::Automation::Api_2015_10_31::Models::Credential
        end
        def runbook_create_or_update_draft_properties
          Azure::ARM::Automation::Api_2015_10_31::Models::RunbookCreateOrUpdateDraftProperties
        end
        def activity_parameter
          Azure::ARM::Automation::Api_2015_10_31::Models::ActivityParameter
        end
        def runbook_create_or_update_draft_parameters
          Azure::ARM::Automation::Api_2015_10_31::Models::RunbookCreateOrUpdateDraftParameters
        end
        def activity_list_result
          Azure::ARM::Automation::Api_2015_10_31::Models::ActivityListResult
        end
        def runbook_update_parameters
          Azure::ARM::Automation::Api_2015_10_31::Models::RunbookUpdateParameters
        end
        def agent_registration
          Azure::ARM::Automation::Api_2015_10_31::Models::AgentRegistration
        end
        def runbook_list_result
          Azure::ARM::Automation::Api_2015_10_31::Models::RunbookListResult
        end
        def usage_counter_name
          Azure::ARM::Automation::Api_2015_10_31::Models::UsageCounterName
        end
        def schedule_create_or_update_parameters
          Azure::ARM::Automation::Api_2015_10_31::Models::ScheduleCreateOrUpdateParameters
        end
        def webhook_update_parameters
          Azure::ARM::Automation::Api_2015_10_31::Models::WebhookUpdateParameters
        end
        def schedule
          Azure::ARM::Automation::Api_2015_10_31::Models::Schedule
        end
        def operation_display
          Azure::ARM::Automation::Api_2015_10_31::Models::OperationDisplay
        end
        def schedule_update_parameters
          Azure::ARM::Automation::Api_2015_10_31::Models::ScheduleUpdateParameters
        end
        def certificate_create_or_update_parameters
          Azure::ARM::Automation::Api_2015_10_31::Models::CertificateCreateOrUpdateParameters
        end
        def schedule_list_result
          Azure::ARM::Automation::Api_2015_10_31::Models::ScheduleListResult
        end
        def connection_type_list_result
          Azure::ARM::Automation::Api_2015_10_31::Models::ConnectionTypeListResult
        end
        def activity_output_type
          Azure::ARM::Automation::Api_2015_10_31::Models::ActivityOutputType
        end
        def test_job_create_parameters
          Azure::ARM::Automation::Api_2015_10_31::Models::TestJobCreateParameters
        end
        def dsc_configuration_association_property
          Azure::ARM::Automation::Api_2015_10_31::Models::DscConfigurationAssociationProperty
        end
        def test_job
          Azure::ARM::Automation::Api_2015_10_31::Models::TestJob
        end
        def sku
          Azure::ARM::Automation::Api_2015_10_31::Models::Sku
        end
        def type_field
          Azure::ARM::Automation::Api_2015_10_31::Models::TypeField
        end
        def connection_update_parameters
          Azure::ARM::Automation::Api_2015_10_31::Models::ConnectionUpdateParameters
        end
        def type_field_list_result
          Azure::ARM::Automation::Api_2015_10_31::Models::TypeFieldListResult
        end
        def advanced_schedule
          Azure::ARM::Automation::Api_2015_10_31::Models::AdvancedSchedule
        end
        def variable_create_or_update_parameters
          Azure::ARM::Automation::Api_2015_10_31::Models::VariableCreateOrUpdateParameters
        end
        def automation_account_update_parameters
          Azure::ARM::Automation::Api_2015_10_31::Models::AutomationAccountUpdateParameters
        end
        def variable
          Azure::ARM::Automation::Api_2015_10_31::Models::Variable
        end
        def statistics_list_result
          Azure::ARM::Automation::Api_2015_10_31::Models::StatisticsListResult
        end
        def variable_list_result
          Azure::ARM::Automation::Api_2015_10_31::Models::VariableListResult
        end
        def credential_update_parameters
          Azure::ARM::Automation::Api_2015_10_31::Models::CredentialUpdateParameters
        end
        def variable_update_parameters
          Azure::ARM::Automation::Api_2015_10_31::Models::VariableUpdateParameters
        end
        def runbook
          Azure::ARM::Automation::Api_2015_10_31::Models::Runbook
        end
        def module_model
          Azure::ARM::Automation::Api_2015_10_31::Models::ModuleModel
        end
        def dsc_node
          Azure::ARM::Automation::Api_2015_10_31::Models::DscNode
        end
        def dsc_configuration
          Azure::ARM::Automation::Api_2015_10_31::Models::DscConfiguration
        end
        def automation_account
          Azure::ARM::Automation::Api_2015_10_31::Models::AutomationAccount
        end
        def runbook_type_enum
          Azure::ARM::Automation::Api_2015_10_31::Models::RunbookTypeEnum
        end
        def runbook_state
          Azure::ARM::Automation::Api_2015_10_31::Models::RunbookState
        end
        def runbook_provisioning_state
          Azure::ARM::Automation::Api_2015_10_31::Models::RunbookProvisioningState
        end
        def module_provisioning_state
          Azure::ARM::Automation::Api_2015_10_31::Models::ModuleProvisioningState
        end
        def content_source_type
          Azure::ARM::Automation::Api_2015_10_31::Models::ContentSourceType
        end
        def dsc_configuration_provisioning_state
          Azure::ARM::Automation::Api_2015_10_31::Models::DscConfigurationProvisioningState
        end
        def dsc_configuration_state
          Azure::ARM::Automation::Api_2015_10_31::Models::DscConfigurationState
        end
        def sku_name_enum
          Azure::ARM::Automation::Api_2015_10_31::Models::SkuNameEnum
        end
        def automation_account_state
          Azure::ARM::Automation::Api_2015_10_31::Models::AutomationAccountState
        end
        def schedule_day
          Azure::ARM::Automation::Api_2015_10_31::Models::ScheduleDay
        end
        def agent_registration_key_name
          Azure::ARM::Automation::Api_2015_10_31::Models::AgentRegistrationKeyName
        end
        def job_status
          Azure::ARM::Automation::Api_2015_10_31::Models::JobStatus
        end
        def job_stream_type
          Azure::ARM::Automation::Api_2015_10_31::Models::JobStreamType
        end
        def http_status_code
          Azure::ARM::Automation::Api_2015_10_31::Models::HttpStatusCode
        end
        def schedule_frequency
          Azure::ARM::Automation::Api_2015_10_31::Models::ScheduleFrequency
        end
      end
    end
  end
end
