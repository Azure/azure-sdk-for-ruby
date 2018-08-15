# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_automation'

module Azure::Profiles::Latest
  module Automation
    module Mgmt
      JobStreamOperations = Azure::Automation::Mgmt::V2015_10_31::JobStreamOperations
      JobScheduleOperations = Azure::Automation::Mgmt::V2015_10_31::JobScheduleOperations
      LinkedWorkspaceOperations = Azure::Automation::Mgmt::V2015_10_31::LinkedWorkspaceOperations
      ActivityOperations = Azure::Automation::Mgmt::V2015_10_31::ActivityOperations
      ModuleModelOperations = Azure::Automation::Mgmt::V2015_10_31::ModuleModelOperations
      ObjectDataTypes = Azure::Automation::Mgmt::V2015_10_31::ObjectDataTypes
      Usages = Azure::Automation::Mgmt::V2015_10_31::Usages
      Fields = Azure::Automation::Mgmt::V2015_10_31::Fields
      RunbookDraftOperations = Azure::Automation::Mgmt::V2015_10_31::RunbookDraftOperations
      RunbookOperations = Azure::Automation::Mgmt::V2015_10_31::RunbookOperations
      TestJobStreams = Azure::Automation::Mgmt::V2015_10_31::TestJobStreams
      TestJobOperations = Azure::Automation::Mgmt::V2015_10_31::TestJobOperations
      ScheduleOperations = Azure::Automation::Mgmt::V2015_10_31::ScheduleOperations
      VariableOperations = Azure::Automation::Mgmt::V2015_10_31::VariableOperations
      WebhookOperations = Azure::Automation::Mgmt::V2015_10_31::WebhookOperations
      Operations = Azure::Automation::Mgmt::V2015_10_31::Operations
      AutomationAccountOperations = Azure::Automation::Mgmt::V2015_10_31::AutomationAccountOperations
      StatisticsOperations = Azure::Automation::Mgmt::V2015_10_31::StatisticsOperations
      Keys = Azure::Automation::Mgmt::V2015_10_31::Keys
      CertificateOperations = Azure::Automation::Mgmt::V2015_10_31::CertificateOperations
      ConnectionOperations = Azure::Automation::Mgmt::V2015_10_31::ConnectionOperations
      ConnectionTypeOperations = Azure::Automation::Mgmt::V2015_10_31::ConnectionTypeOperations
      CredentialOperations = Azure::Automation::Mgmt::V2015_10_31::CredentialOperations
      DscCompilationJobOperations = Azure::Automation::Mgmt::V2015_10_31::DscCompilationJobOperations
      DscCompilationJobStream = Azure::Automation::Mgmt::V2015_10_31::DscCompilationJobStream
      DscConfigurationOperations = Azure::Automation::Mgmt::V2015_10_31::DscConfigurationOperations
      AgentRegistrationInformation = Azure::Automation::Mgmt::V2015_10_31::AgentRegistrationInformation
      DscNodeOperations = Azure::Automation::Mgmt::V2015_10_31::DscNodeOperations
      NodeReports = Azure::Automation::Mgmt::V2015_10_31::NodeReports
      DscNodeConfigurationOperations = Azure::Automation::Mgmt::V2015_10_31::DscNodeConfigurationOperations
      HybridRunbookWorkerGroupOperations = Azure::Automation::Mgmt::V2015_10_31::HybridRunbookWorkerGroupOperations
      JobOperations = Azure::Automation::Mgmt::V2015_10_31::JobOperations

      module Models
        ActivityOutputType = Azure::Automation::Mgmt::V2015_10_31::Models::ActivityOutputType
        HybridRunbookWorkerGroupsListResult = Azure::Automation::Mgmt::V2015_10_31::Models::HybridRunbookWorkerGroupsListResult
        ActivityListResult = Azure::Automation::Mgmt::V2015_10_31::Models::ActivityListResult
        HybridRunbookWorkerGroupUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::HybridRunbookWorkerGroupUpdateParameters
        AdvancedSchedule = Azure::Automation::Mgmt::V2015_10_31::Models::AdvancedSchedule
        ScheduleAssociationProperty = Azure::Automation::Mgmt::V2015_10_31::Models::ScheduleAssociationProperty
        JobScheduleCreateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::JobScheduleCreateParameters
        JobSchedule = Azure::Automation::Mgmt::V2015_10_31::Models::JobSchedule
        RunbookDraft = Azure::Automation::Mgmt::V2015_10_31::Models::RunbookDraft
        JobScheduleListResult = Azure::Automation::Mgmt::V2015_10_31::Models::JobScheduleListResult
        ContentSource = Azure::Automation::Mgmt::V2015_10_31::Models::ContentSource
        LinkedWorkspace = Azure::Automation::Mgmt::V2015_10_31::Models::LinkedWorkspace
        ModuleCreateOrUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::ModuleCreateOrUpdateParameters
        ModuleListResult = Azure::Automation::Mgmt::V2015_10_31::Models::ModuleListResult
        CertificateListResult = Azure::Automation::Mgmt::V2015_10_31::Models::CertificateListResult
        ModuleUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::ModuleUpdateParameters
        ConnectionUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::ConnectionUpdateParameters
        RunbookDraftUndoEditResult = Azure::Automation::Mgmt::V2015_10_31::Models::RunbookDraftUndoEditResult
        ConnectionTypeListResult = Azure::Automation::Mgmt::V2015_10_31::Models::ConnectionTypeListResult
        RunbookCreateOrUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::RunbookCreateOrUpdateParameters
        CredentialCreateOrUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::CredentialCreateOrUpdateParameters
        RunbookCreateOrUpdateDraftProperties = Azure::Automation::Mgmt::V2015_10_31::Models::RunbookCreateOrUpdateDraftProperties
        Activity = Azure::Automation::Mgmt::V2015_10_31::Models::Activity
        RunbookCreateOrUpdateDraftParameters = Azure::Automation::Mgmt::V2015_10_31::Models::RunbookCreateOrUpdateDraftParameters
        JobProvisioningStateProperty = Azure::Automation::Mgmt::V2015_10_31::Models::JobProvisioningStateProperty
        RunbookUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::RunbookUpdateParameters
        ContentHash = Azure::Automation::Mgmt::V2015_10_31::Models::ContentHash
        RunbookListResult = Azure::Automation::Mgmt::V2015_10_31::Models::RunbookListResult
        DscNodeListResult = Azure::Automation::Mgmt::V2015_10_31::Models::DscNodeListResult
        ScheduleCreateOrUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::ScheduleCreateOrUpdateParameters
        AutomationAccountCreateOrUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::AutomationAccountCreateOrUpdateParameters
        Schedule = Azure::Automation::Mgmt::V2015_10_31::Models::Schedule
        FieldDefinition = Azure::Automation::Mgmt::V2015_10_31::Models::FieldDefinition
        ScheduleUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::ScheduleUpdateParameters
        ActivityParameterSet = Azure::Automation::Mgmt::V2015_10_31::Models::ActivityParameterSet
        ScheduleListResult = Azure::Automation::Mgmt::V2015_10_31::Models::ScheduleListResult
        OperationDisplay = Azure::Automation::Mgmt::V2015_10_31::Models::OperationDisplay
        ConnectionTypeAssociationProperty = Azure::Automation::Mgmt::V2015_10_31::Models::ConnectionTypeAssociationProperty
        OperationListResult = Azure::Automation::Mgmt::V2015_10_31::Models::OperationListResult
        TestJobCreateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::TestJobCreateParameters
        AutomationAccountListResult = Azure::Automation::Mgmt::V2015_10_31::Models::AutomationAccountListResult
        TestJob = Azure::Automation::Mgmt::V2015_10_31::Models::TestJob
        CredentialListResult = Azure::Automation::Mgmt::V2015_10_31::Models::CredentialListResult
        TypeField = Azure::Automation::Mgmt::V2015_10_31::Models::TypeField
        ModuleErrorInfo = Azure::Automation::Mgmt::V2015_10_31::Models::ModuleErrorInfo
        TypeFieldListResult = Azure::Automation::Mgmt::V2015_10_31::Models::TypeFieldListResult
        ErrorResponse = Azure::Automation::Mgmt::V2015_10_31::Models::ErrorResponse
        ProxyResource = Azure::Automation::Mgmt::V2015_10_31::Models::ProxyResource
        VariableCreateOrUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::VariableCreateOrUpdateParameters
        AdvancedScheduleMonthlyOccurrence = Azure::Automation::Mgmt::V2015_10_31::Models::AdvancedScheduleMonthlyOccurrence
        CertificateCreateOrUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::CertificateCreateOrUpdateParameters
        Operation = Azure::Automation::Mgmt::V2015_10_31::Models::Operation
        DscCompilationJob = Azure::Automation::Mgmt::V2015_10_31::Models::DscCompilationJob
        Webhook = Azure::Automation::Mgmt::V2015_10_31::Models::Webhook
        Variable = Azure::Automation::Mgmt::V2015_10_31::Models::Variable
        Runbook = Azure::Automation::Mgmt::V2015_10_31::Models::Runbook
        Credential = Azure::Automation::Mgmt::V2015_10_31::Models::Credential
        TrackedResource = Azure::Automation::Mgmt::V2015_10_31::Models::TrackedResource
        AutomationAccount = Azure::Automation::Mgmt::V2015_10_31::Models::AutomationAccount
        ModuleModel = Azure::Automation::Mgmt::V2015_10_31::Models::ModuleModel
        DscConfiguration = Azure::Automation::Mgmt::V2015_10_31::Models::DscConfiguration
        AutomationKeyName = Azure::Automation::Mgmt::V2015_10_31::Models::AutomationKeyName
        DscNode = Azure::Automation::Mgmt::V2015_10_31::Models::DscNode
        DscNodeConfiguration = Azure::Automation::Mgmt::V2015_10_31::Models::DscNodeConfiguration
        Job = Azure::Automation::Mgmt::V2015_10_31::Models::Job
        AutomationKeyPermissions = Azure::Automation::Mgmt::V2015_10_31::Models::AutomationKeyPermissions
        JobProvisioningState = Azure::Automation::Mgmt::V2015_10_31::Models::JobProvisioningState
        JobStatus = Azure::Automation::Mgmt::V2015_10_31::Models::JobStatus
        RunbookTypeEnum = Azure::Automation::Mgmt::V2015_10_31::Models::RunbookTypeEnum
        RunbookState = Azure::Automation::Mgmt::V2015_10_31::Models::RunbookState
        RunbookProvisioningState = Azure::Automation::Mgmt::V2015_10_31::Models::RunbookProvisioningState
        ModuleProvisioningState = Azure::Automation::Mgmt::V2015_10_31::Models::ModuleProvisioningState
        ContentSourceType = Azure::Automation::Mgmt::V2015_10_31::Models::ContentSourceType
        DscConfigurationProvisioningState = Azure::Automation::Mgmt::V2015_10_31::Models::DscConfigurationProvisioningState
        Sku = Azure::Automation::Mgmt::V2015_10_31::Models::Sku
        SkuNameEnum = Azure::Automation::Mgmt::V2015_10_31::Models::SkuNameEnum
        AutomationAccountState = Azure::Automation::Mgmt::V2015_10_31::Models::AutomationAccountState
        ScheduleDay = Azure::Automation::Mgmt::V2015_10_31::Models::ScheduleDay
        DscConfigurationState = Azure::Automation::Mgmt::V2015_10_31::Models::DscConfigurationState
        SubResource = Azure::Automation::Mgmt::V2015_10_31::Models::SubResource
        HttpStatusCode = Azure::Automation::Mgmt::V2015_10_31::Models::HttpStatusCode
        ScheduleFrequency = Azure::Automation::Mgmt::V2015_10_31::Models::ScheduleFrequency
        AgentRegistrationKeyName = Azure::Automation::Mgmt::V2015_10_31::Models::AgentRegistrationKeyName
        JobStreamType = Azure::Automation::Mgmt::V2015_10_31::Models::JobStreamType
        Usage = Azure::Automation::Mgmt::V2015_10_31::Models::Usage
        UsageListResult = Azure::Automation::Mgmt::V2015_10_31::Models::UsageListResult
        Resource = Azure::Automation::Mgmt::V2015_10_31::Models::Resource
        Certificate = Azure::Automation::Mgmt::V2015_10_31::Models::Certificate
        Connection = Azure::Automation::Mgmt::V2015_10_31::Models::Connection
        AgentRegistration = Azure::Automation::Mgmt::V2015_10_31::Models::AgentRegistration
        AgentRegistrationRegenerateKeyParameter = Azure::Automation::Mgmt::V2015_10_31::Models::AgentRegistrationRegenerateKeyParameter
        KeyListResult = Azure::Automation::Mgmt::V2015_10_31::Models::KeyListResult
        DscCompilationJobCreateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::DscCompilationJobCreateParameters
        JobStream = Azure::Automation::Mgmt::V2015_10_31::Models::JobStream
        Statistics = Azure::Automation::Mgmt::V2015_10_31::Models::Statistics
        JobStreamListResult = Azure::Automation::Mgmt::V2015_10_31::Models::JobStreamListResult
        RunbookAssociationProperty = Azure::Automation::Mgmt::V2015_10_31::Models::RunbookAssociationProperty
        DscCompilationJobListResult = Azure::Automation::Mgmt::V2015_10_31::Models::DscCompilationJobListResult
        AgentRegistrationKeys = Azure::Automation::Mgmt::V2015_10_31::Models::AgentRegistrationKeys
        Key = Azure::Automation::Mgmt::V2015_10_31::Models::Key
        DscConfigurationAssociationProperty = Azure::Automation::Mgmt::V2015_10_31::Models::DscConfigurationAssociationProperty
        UsageCounterName = Azure::Automation::Mgmt::V2015_10_31::Models::UsageCounterName
        JobCreateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::JobCreateParameters
        JobListResult = Azure::Automation::Mgmt::V2015_10_31::Models::JobListResult
        StatisticsListResult = Azure::Automation::Mgmt::V2015_10_31::Models::StatisticsListResult
        VariableUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::VariableUpdateParameters
        RunbookParameter = Azure::Automation::Mgmt::V2015_10_31::Models::RunbookParameter
        VariableListResult = Azure::Automation::Mgmt::V2015_10_31::Models::VariableListResult
        ContentLink = Azure::Automation::Mgmt::V2015_10_31::Models::ContentLink
        WebhookCreateOrUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::WebhookCreateOrUpdateParameters
        DscNodeConfigurationListResult = Azure::Automation::Mgmt::V2015_10_31::Models::DscNodeConfigurationListResult
        DscConfigurationListResult = Azure::Automation::Mgmt::V2015_10_31::Models::DscConfigurationListResult
        DscNodeConfigurationCreateOrUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::DscNodeConfigurationCreateOrUpdateParameters
        DscConfigurationCreateOrUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::DscConfigurationCreateOrUpdateParameters
        DscConfigurationParameter = Azure::Automation::Mgmt::V2015_10_31::Models::DscConfigurationParameter
        DscConfigurationUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::DscConfigurationUpdateParameters
        WebhookUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::WebhookUpdateParameters
        DscMetaConfiguration = Azure::Automation::Mgmt::V2015_10_31::Models::DscMetaConfiguration
        WebhookListResult = Azure::Automation::Mgmt::V2015_10_31::Models::WebhookListResult
        DscNodeConfigurationAssociationProperty = Azure::Automation::Mgmt::V2015_10_31::Models::DscNodeConfigurationAssociationProperty
        DscNodeExtensionHandlerAssociationProperty = Azure::Automation::Mgmt::V2015_10_31::Models::DscNodeExtensionHandlerAssociationProperty
        DscNodeUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::DscNodeUpdateParameters
        AutomationAccountUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::AutomationAccountUpdateParameters
        DscReportError = Azure::Automation::Mgmt::V2015_10_31::Models::DscReportError
        CertificateUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::CertificateUpdateParameters
        DscReportResourceNavigation = Azure::Automation::Mgmt::V2015_10_31::Models::DscReportResourceNavigation
        ConnectionListResult = Azure::Automation::Mgmt::V2015_10_31::Models::ConnectionListResult
        DscReportResource = Azure::Automation::Mgmt::V2015_10_31::Models::DscReportResource
        ConnectionCreateOrUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::ConnectionCreateOrUpdateParameters
        DscNodeReport = Azure::Automation::Mgmt::V2015_10_31::Models::DscNodeReport
        ConnectionType = Azure::Automation::Mgmt::V2015_10_31::Models::ConnectionType
        DscNodeReportListResult = Azure::Automation::Mgmt::V2015_10_31::Models::DscNodeReportListResult
        ConnectionTypeCreateOrUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::ConnectionTypeCreateOrUpdateParameters
        HybridRunbookWorker = Azure::Automation::Mgmt::V2015_10_31::Models::HybridRunbookWorker
        CredentialUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::CredentialUpdateParameters
        RunAsCredentialAssociationProperty = Azure::Automation::Mgmt::V2015_10_31::Models::RunAsCredentialAssociationProperty
        ActivityParameter = Azure::Automation::Mgmt::V2015_10_31::Models::ActivityParameter
        HybridRunbookWorkerGroup = Azure::Automation::Mgmt::V2015_10_31::Models::HybridRunbookWorkerGroup
      end

      class AutomationManagementClass
        attr_reader :job_stream_operations, :job_schedule_operations, :linked_workspace_operations, :activity_operations, :module_model_operations, :object_data_types, :usages, :fields, :runbook_draft_operations, :runbook_operations, :test_job_streams, :test_job_operations, :schedule_operations, :variable_operations, :webhook_operations, :operations, :automation_account_operations, :statistics_operations, :keys, :certificate_operations, :connection_operations, :connection_type_operations, :credential_operations, :dsc_compilation_job_operations, :dsc_compilation_job_stream, :dsc_configuration_operations, :agent_registration_information, :dsc_node_operations, :node_reports, :dsc_node_configuration_operations, :hybrid_runbook_worker_group_operations, :job_operations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Automation::Mgmt::V2015_10_31::AutomationClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @job_stream_operations = @client_0.job_stream_operations
          @job_schedule_operations = @client_0.job_schedule_operations
          @linked_workspace_operations = @client_0.linked_workspace_operations
          @activity_operations = @client_0.activity_operations
          @module_model_operations = @client_0.module_model_operations
          @object_data_types = @client_0.object_data_types
          @usages = @client_0.usages
          @fields = @client_0.fields
          @runbook_draft_operations = @client_0.runbook_draft_operations
          @runbook_operations = @client_0.runbook_operations
          @test_job_streams = @client_0.test_job_streams
          @test_job_operations = @client_0.test_job_operations
          @schedule_operations = @client_0.schedule_operations
          @variable_operations = @client_0.variable_operations
          @webhook_operations = @client_0.webhook_operations
          @operations = @client_0.operations
          @automation_account_operations = @client_0.automation_account_operations
          @statistics_operations = @client_0.statistics_operations
          @keys = @client_0.keys
          @certificate_operations = @client_0.certificate_operations
          @connection_operations = @client_0.connection_operations
          @connection_type_operations = @client_0.connection_type_operations
          @credential_operations = @client_0.credential_operations
          @dsc_compilation_job_operations = @client_0.dsc_compilation_job_operations
          @dsc_compilation_job_stream = @client_0.dsc_compilation_job_stream
          @dsc_configuration_operations = @client_0.dsc_configuration_operations
          @agent_registration_information = @client_0.agent_registration_information
          @dsc_node_operations = @client_0.dsc_node_operations
          @node_reports = @client_0.node_reports
          @dsc_node_configuration_operations = @client_0.dsc_node_configuration_operations
          @hybrid_runbook_worker_group_operations = @client_0.hybrid_runbook_worker_group_operations
          @job_operations = @client_0.job_operations

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Automation/Mgmt"
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
          def activity_output_type
            Azure::Automation::Mgmt::V2015_10_31::Models::ActivityOutputType
          end
          def hybrid_runbook_worker_groups_list_result
            Azure::Automation::Mgmt::V2015_10_31::Models::HybridRunbookWorkerGroupsListResult
          end
          def activity_list_result
            Azure::Automation::Mgmt::V2015_10_31::Models::ActivityListResult
          end
          def hybrid_runbook_worker_group_update_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::HybridRunbookWorkerGroupUpdateParameters
          end
          def advanced_schedule
            Azure::Automation::Mgmt::V2015_10_31::Models::AdvancedSchedule
          end
          def schedule_association_property
            Azure::Automation::Mgmt::V2015_10_31::Models::ScheduleAssociationProperty
          end
          def job_schedule_create_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::JobScheduleCreateParameters
          end
          def job_schedule
            Azure::Automation::Mgmt::V2015_10_31::Models::JobSchedule
          end
          def runbook_draft
            Azure::Automation::Mgmt::V2015_10_31::Models::RunbookDraft
          end
          def job_schedule_list_result
            Azure::Automation::Mgmt::V2015_10_31::Models::JobScheduleListResult
          end
          def content_source
            Azure::Automation::Mgmt::V2015_10_31::Models::ContentSource
          end
          def linked_workspace
            Azure::Automation::Mgmt::V2015_10_31::Models::LinkedWorkspace
          end
          def module_create_or_update_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::ModuleCreateOrUpdateParameters
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
          def connection_update_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::ConnectionUpdateParameters
          end
          def runbook_draft_undo_edit_result
            Azure::Automation::Mgmt::V2015_10_31::Models::RunbookDraftUndoEditResult
          end
          def connection_type_list_result
            Azure::Automation::Mgmt::V2015_10_31::Models::ConnectionTypeListResult
          end
          def runbook_create_or_update_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::RunbookCreateOrUpdateParameters
          end
          def credential_create_or_update_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::CredentialCreateOrUpdateParameters
          end
          def runbook_create_or_update_draft_properties
            Azure::Automation::Mgmt::V2015_10_31::Models::RunbookCreateOrUpdateDraftProperties
          end
          def activity
            Azure::Automation::Mgmt::V2015_10_31::Models::Activity
          end
          def runbook_create_or_update_draft_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::RunbookCreateOrUpdateDraftParameters
          end
          def job_provisioning_state_property
            Azure::Automation::Mgmt::V2015_10_31::Models::JobProvisioningStateProperty
          end
          def runbook_update_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::RunbookUpdateParameters
          end
          def content_hash
            Azure::Automation::Mgmt::V2015_10_31::Models::ContentHash
          end
          def runbook_list_result
            Azure::Automation::Mgmt::V2015_10_31::Models::RunbookListResult
          end
          def dsc_node_list_result
            Azure::Automation::Mgmt::V2015_10_31::Models::DscNodeListResult
          end
          def schedule_create_or_update_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::ScheduleCreateOrUpdateParameters
          end
          def automation_account_create_or_update_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::AutomationAccountCreateOrUpdateParameters
          end
          def schedule
            Azure::Automation::Mgmt::V2015_10_31::Models::Schedule
          end
          def field_definition
            Azure::Automation::Mgmt::V2015_10_31::Models::FieldDefinition
          end
          def schedule_update_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::ScheduleUpdateParameters
          end
          def activity_parameter_set
            Azure::Automation::Mgmt::V2015_10_31::Models::ActivityParameterSet
          end
          def schedule_list_result
            Azure::Automation::Mgmt::V2015_10_31::Models::ScheduleListResult
          end
          def operation_display
            Azure::Automation::Mgmt::V2015_10_31::Models::OperationDisplay
          end
          def connection_type_association_property
            Azure::Automation::Mgmt::V2015_10_31::Models::ConnectionTypeAssociationProperty
          end
          def operation_list_result
            Azure::Automation::Mgmt::V2015_10_31::Models::OperationListResult
          end
          def test_job_create_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::TestJobCreateParameters
          end
          def automation_account_list_result
            Azure::Automation::Mgmt::V2015_10_31::Models::AutomationAccountListResult
          end
          def test_job
            Azure::Automation::Mgmt::V2015_10_31::Models::TestJob
          end
          def credential_list_result
            Azure::Automation::Mgmt::V2015_10_31::Models::CredentialListResult
          end
          def type_field
            Azure::Automation::Mgmt::V2015_10_31::Models::TypeField
          end
          def module_error_info
            Azure::Automation::Mgmt::V2015_10_31::Models::ModuleErrorInfo
          end
          def type_field_list_result
            Azure::Automation::Mgmt::V2015_10_31::Models::TypeFieldListResult
          end
          def error_response
            Azure::Automation::Mgmt::V2015_10_31::Models::ErrorResponse
          end
          def proxy_resource
            Azure::Automation::Mgmt::V2015_10_31::Models::ProxyResource
          end
          def variable_create_or_update_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::VariableCreateOrUpdateParameters
          end
          def advanced_schedule_monthly_occurrence
            Azure::Automation::Mgmt::V2015_10_31::Models::AdvancedScheduleMonthlyOccurrence
          end
          def certificate_create_or_update_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::CertificateCreateOrUpdateParameters
          end
          def operation
            Azure::Automation::Mgmt::V2015_10_31::Models::Operation
          end
          def dsc_compilation_job
            Azure::Automation::Mgmt::V2015_10_31::Models::DscCompilationJob
          end
          def webhook
            Azure::Automation::Mgmt::V2015_10_31::Models::Webhook
          end
          def variable
            Azure::Automation::Mgmt::V2015_10_31::Models::Variable
          end
          def runbook
            Azure::Automation::Mgmt::V2015_10_31::Models::Runbook
          end
          def credential
            Azure::Automation::Mgmt::V2015_10_31::Models::Credential
          end
          def tracked_resource
            Azure::Automation::Mgmt::V2015_10_31::Models::TrackedResource
          end
          def automation_account
            Azure::Automation::Mgmt::V2015_10_31::Models::AutomationAccount
          end
          def module_model
            Azure::Automation::Mgmt::V2015_10_31::Models::ModuleModel
          end
          def dsc_configuration
            Azure::Automation::Mgmt::V2015_10_31::Models::DscConfiguration
          end
          def automation_key_name
            Azure::Automation::Mgmt::V2015_10_31::Models::AutomationKeyName
          end
          def dsc_node
            Azure::Automation::Mgmt::V2015_10_31::Models::DscNode
          end
          def dsc_node_configuration
            Azure::Automation::Mgmt::V2015_10_31::Models::DscNodeConfiguration
          end
          def job
            Azure::Automation::Mgmt::V2015_10_31::Models::Job
          end
          def automation_key_permissions
            Azure::Automation::Mgmt::V2015_10_31::Models::AutomationKeyPermissions
          end
          def job_provisioning_state
            Azure::Automation::Mgmt::V2015_10_31::Models::JobProvisioningState
          end
          def job_status
            Azure::Automation::Mgmt::V2015_10_31::Models::JobStatus
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
          def sku
            Azure::Automation::Mgmt::V2015_10_31::Models::Sku
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
          def dsc_configuration_state
            Azure::Automation::Mgmt::V2015_10_31::Models::DscConfigurationState
          end
          def sub_resource
            Azure::Automation::Mgmt::V2015_10_31::Models::SubResource
          end
          def http_status_code
            Azure::Automation::Mgmt::V2015_10_31::Models::HttpStatusCode
          end
          def schedule_frequency
            Azure::Automation::Mgmt::V2015_10_31::Models::ScheduleFrequency
          end
          def agent_registration_key_name
            Azure::Automation::Mgmt::V2015_10_31::Models::AgentRegistrationKeyName
          end
          def job_stream_type
            Azure::Automation::Mgmt::V2015_10_31::Models::JobStreamType
          end
          def usage
            Azure::Automation::Mgmt::V2015_10_31::Models::Usage
          end
          def usage_list_result
            Azure::Automation::Mgmt::V2015_10_31::Models::UsageListResult
          end
          def resource
            Azure::Automation::Mgmt::V2015_10_31::Models::Resource
          end
          def certificate
            Azure::Automation::Mgmt::V2015_10_31::Models::Certificate
          end
          def connection
            Azure::Automation::Mgmt::V2015_10_31::Models::Connection
          end
          def agent_registration
            Azure::Automation::Mgmt::V2015_10_31::Models::AgentRegistration
          end
          def agent_registration_regenerate_key_parameter
            Azure::Automation::Mgmt::V2015_10_31::Models::AgentRegistrationRegenerateKeyParameter
          end
          def key_list_result
            Azure::Automation::Mgmt::V2015_10_31::Models::KeyListResult
          end
          def dsc_compilation_job_create_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::DscCompilationJobCreateParameters
          end
          def job_stream
            Azure::Automation::Mgmt::V2015_10_31::Models::JobStream
          end
          def statistics
            Azure::Automation::Mgmt::V2015_10_31::Models::Statistics
          end
          def job_stream_list_result
            Azure::Automation::Mgmt::V2015_10_31::Models::JobStreamListResult
          end
          def runbook_association_property
            Azure::Automation::Mgmt::V2015_10_31::Models::RunbookAssociationProperty
          end
          def dsc_compilation_job_list_result
            Azure::Automation::Mgmt::V2015_10_31::Models::DscCompilationJobListResult
          end
          def agent_registration_keys
            Azure::Automation::Mgmt::V2015_10_31::Models::AgentRegistrationKeys
          end
          def key
            Azure::Automation::Mgmt::V2015_10_31::Models::Key
          end
          def dsc_configuration_association_property
            Azure::Automation::Mgmt::V2015_10_31::Models::DscConfigurationAssociationProperty
          end
          def usage_counter_name
            Azure::Automation::Mgmt::V2015_10_31::Models::UsageCounterName
          end
          def job_create_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::JobCreateParameters
          end
          def job_list_result
            Azure::Automation::Mgmt::V2015_10_31::Models::JobListResult
          end
          def statistics_list_result
            Azure::Automation::Mgmt::V2015_10_31::Models::StatisticsListResult
          end
          def variable_update_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::VariableUpdateParameters
          end
          def runbook_parameter
            Azure::Automation::Mgmt::V2015_10_31::Models::RunbookParameter
          end
          def variable_list_result
            Azure::Automation::Mgmt::V2015_10_31::Models::VariableListResult
          end
          def content_link
            Azure::Automation::Mgmt::V2015_10_31::Models::ContentLink
          end
          def webhook_create_or_update_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::WebhookCreateOrUpdateParameters
          end
          def dsc_node_configuration_list_result
            Azure::Automation::Mgmt::V2015_10_31::Models::DscNodeConfigurationListResult
          end
          def dsc_configuration_list_result
            Azure::Automation::Mgmt::V2015_10_31::Models::DscConfigurationListResult
          end
          def dsc_node_configuration_create_or_update_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::DscNodeConfigurationCreateOrUpdateParameters
          end
          def dsc_configuration_create_or_update_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::DscConfigurationCreateOrUpdateParameters
          end
          def dsc_configuration_parameter
            Azure::Automation::Mgmt::V2015_10_31::Models::DscConfigurationParameter
          end
          def dsc_configuration_update_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::DscConfigurationUpdateParameters
          end
          def webhook_update_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::WebhookUpdateParameters
          end
          def dsc_meta_configuration
            Azure::Automation::Mgmt::V2015_10_31::Models::DscMetaConfiguration
          end
          def webhook_list_result
            Azure::Automation::Mgmt::V2015_10_31::Models::WebhookListResult
          end
          def dsc_node_configuration_association_property
            Azure::Automation::Mgmt::V2015_10_31::Models::DscNodeConfigurationAssociationProperty
          end
          def dsc_node_extension_handler_association_property
            Azure::Automation::Mgmt::V2015_10_31::Models::DscNodeExtensionHandlerAssociationProperty
          end
          def dsc_node_update_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::DscNodeUpdateParameters
          end
          def automation_account_update_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::AutomationAccountUpdateParameters
          end
          def dsc_report_error
            Azure::Automation::Mgmt::V2015_10_31::Models::DscReportError
          end
          def certificate_update_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::CertificateUpdateParameters
          end
          def dsc_report_resource_navigation
            Azure::Automation::Mgmt::V2015_10_31::Models::DscReportResourceNavigation
          end
          def connection_list_result
            Azure::Automation::Mgmt::V2015_10_31::Models::ConnectionListResult
          end
          def dsc_report_resource
            Azure::Automation::Mgmt::V2015_10_31::Models::DscReportResource
          end
          def connection_create_or_update_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::ConnectionCreateOrUpdateParameters
          end
          def dsc_node_report
            Azure::Automation::Mgmt::V2015_10_31::Models::DscNodeReport
          end
          def connection_type
            Azure::Automation::Mgmt::V2015_10_31::Models::ConnectionType
          end
          def dsc_node_report_list_result
            Azure::Automation::Mgmt::V2015_10_31::Models::DscNodeReportListResult
          end
          def connection_type_create_or_update_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::ConnectionTypeCreateOrUpdateParameters
          end
          def hybrid_runbook_worker
            Azure::Automation::Mgmt::V2015_10_31::Models::HybridRunbookWorker
          end
          def credential_update_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::CredentialUpdateParameters
          end
          def run_as_credential_association_property
            Azure::Automation::Mgmt::V2015_10_31::Models::RunAsCredentialAssociationProperty
          end
          def activity_parameter
            Azure::Automation::Mgmt::V2015_10_31::Models::ActivityParameter
          end
          def hybrid_runbook_worker_group
            Azure::Automation::Mgmt::V2015_10_31::Models::HybridRunbookWorkerGroup
          end
        end
      end
    end
  end
end
