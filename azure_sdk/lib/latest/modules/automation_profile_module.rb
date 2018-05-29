# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_automation'

module Azure::Profiles::Latest
  module Automation
    module Mgmt
      AutomationAccountOperations = Azure::Automation::Mgmt::V2015_10_31::AutomationAccountOperations
      Operations = Azure::Automation::Mgmt::V2015_10_31::Operations
      StatisticsOperations = Azure::Automation::Mgmt::V2015_10_31::StatisticsOperations
      Usages = Azure::Automation::Mgmt::V2015_10_31::Usages
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
      JobStreamOperations = Azure::Automation::Mgmt::V2015_10_31::JobStreamOperations
      JobScheduleOperations = Azure::Automation::Mgmt::V2015_10_31::JobScheduleOperations
      LinkedWorkspaceOperations = Azure::Automation::Mgmt::V2015_10_31::LinkedWorkspaceOperations
      ActivityOperations = Azure::Automation::Mgmt::V2015_10_31::ActivityOperations
      ModuleModelOperations = Azure::Automation::Mgmt::V2015_10_31::ModuleModelOperations
      ObjectDataTypes = Azure::Automation::Mgmt::V2015_10_31::ObjectDataTypes
      Fields = Azure::Automation::Mgmt::V2015_10_31::Fields
      RunbookDraftOperations = Azure::Automation::Mgmt::V2015_10_31::RunbookDraftOperations
      RunbookOperations = Azure::Automation::Mgmt::V2015_10_31::RunbookOperations
      TestJobStreams = Azure::Automation::Mgmt::V2015_10_31::TestJobStreams
      TestJobOperations = Azure::Automation::Mgmt::V2015_10_31::TestJobOperations
      ScheduleOperations = Azure::Automation::Mgmt::V2015_10_31::ScheduleOperations
      VariableOperations = Azure::Automation::Mgmt::V2015_10_31::VariableOperations
      WebhookOperations = Azure::Automation::Mgmt::V2015_10_31::WebhookOperations

      module Models
        AgentRegistration = Azure::Automation::Mgmt::V2015_10_31::Models::AgentRegistration
        ErrorResponse = Azure::Automation::Mgmt::V2015_10_31::Models::ErrorResponse
        AgentRegistrationRegenerateKeyParameter = Azure::Automation::Mgmt::V2015_10_31::Models::AgentRegistrationRegenerateKeyParameter
        KeyListResult = Azure::Automation::Mgmt::V2015_10_31::Models::KeyListResult
        DscCompilationJobCreateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::DscCompilationJobCreateParameters
        Usage = Azure::Automation::Mgmt::V2015_10_31::Models::Usage
        DscCompilationJobListResult = Azure::Automation::Mgmt::V2015_10_31::Models::DscCompilationJobListResult
        Statistics = Azure::Automation::Mgmt::V2015_10_31::Models::Statistics
        DscConfigurationListResult = Azure::Automation::Mgmt::V2015_10_31::Models::DscConfigurationListResult
        RunbookAssociationProperty = Azure::Automation::Mgmt::V2015_10_31::Models::RunbookAssociationProperty
        DscConfigurationCreateOrUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::DscConfigurationCreateOrUpdateParameters
        AgentRegistrationKeys = Azure::Automation::Mgmt::V2015_10_31::Models::AgentRegistrationKeys
        Key = Azure::Automation::Mgmt::V2015_10_31::Models::Key
        DscConfigurationAssociationProperty = Azure::Automation::Mgmt::V2015_10_31::Models::DscConfigurationAssociationProperty
        UsageCounterName = Azure::Automation::Mgmt::V2015_10_31::Models::UsageCounterName
        DscNodeConfigurationListResult = Azure::Automation::Mgmt::V2015_10_31::Models::DscNodeConfigurationListResult
        UsageListResult = Azure::Automation::Mgmt::V2015_10_31::Models::UsageListResult
        DscNodeConfigurationCreateOrUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::DscNodeConfigurationCreateOrUpdateParameters
        StatisticsListResult = Azure::Automation::Mgmt::V2015_10_31::Models::StatisticsListResult
        DscNodeListResult = Azure::Automation::Mgmt::V2015_10_31::Models::DscNodeListResult
        TypeFieldListResult = Azure::Automation::Mgmt::V2015_10_31::Models::TypeFieldListResult
        RunbookParameter = Azure::Automation::Mgmt::V2015_10_31::Models::RunbookParameter
        TypeField = Azure::Automation::Mgmt::V2015_10_31::Models::TypeField
        ContentLink = Azure::Automation::Mgmt::V2015_10_31::Models::ContentLink
        VariableCreateOrUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::VariableCreateOrUpdateParameters
        WebhookUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::WebhookUpdateParameters
        DscConfigurationUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::DscConfigurationUpdateParameters
        WebhookListResult = Azure::Automation::Mgmt::V2015_10_31::Models::WebhookListResult
        DscMetaConfiguration = Azure::Automation::Mgmt::V2015_10_31::Models::DscMetaConfiguration
        DscConfigurationParameter = Azure::Automation::Mgmt::V2015_10_31::Models::DscConfigurationParameter
        DscNodeConfigurationAssociationProperty = Azure::Automation::Mgmt::V2015_10_31::Models::DscNodeConfigurationAssociationProperty
        VariableUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::VariableUpdateParameters
        DscNodeExtensionHandlerAssociationProperty = Azure::Automation::Mgmt::V2015_10_31::Models::DscNodeExtensionHandlerAssociationProperty
        VariableListResult = Azure::Automation::Mgmt::V2015_10_31::Models::VariableListResult
        DscNodeUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::DscNodeUpdateParameters
        OperationDisplay = Azure::Automation::Mgmt::V2015_10_31::Models::OperationDisplay
        DscReportError = Azure::Automation::Mgmt::V2015_10_31::Models::DscReportError
        OperationListResult = Azure::Automation::Mgmt::V2015_10_31::Models::OperationListResult
        DscReportResourceNavigation = Azure::Automation::Mgmt::V2015_10_31::Models::DscReportResourceNavigation
        AutomationAccountUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::AutomationAccountUpdateParameters
        DscReportResource = Azure::Automation::Mgmt::V2015_10_31::Models::DscReportResource
        CertificateUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::CertificateUpdateParameters
        DscNodeReport = Azure::Automation::Mgmt::V2015_10_31::Models::DscNodeReport
        ConnectionListResult = Azure::Automation::Mgmt::V2015_10_31::Models::ConnectionListResult
        DscNodeReportListResult = Azure::Automation::Mgmt::V2015_10_31::Models::DscNodeReportListResult
        ConnectionCreateOrUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::ConnectionCreateOrUpdateParameters
        HybridRunbookWorker = Azure::Automation::Mgmt::V2015_10_31::Models::HybridRunbookWorker
        ConnectionType = Azure::Automation::Mgmt::V2015_10_31::Models::ConnectionType
        RunAsCredentialAssociationProperty = Azure::Automation::Mgmt::V2015_10_31::Models::RunAsCredentialAssociationProperty
        ConnectionTypeCreateOrUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::ConnectionTypeCreateOrUpdateParameters
        HybridRunbookWorkerGroup = Azure::Automation::Mgmt::V2015_10_31::Models::HybridRunbookWorkerGroup
        CredentialUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::CredentialUpdateParameters
        HybridRunbookWorkerGroupsListResult = Azure::Automation::Mgmt::V2015_10_31::Models::HybridRunbookWorkerGroupsListResult
        ActivityParameter = Azure::Automation::Mgmt::V2015_10_31::Models::ActivityParameter
        HybridRunbookWorkerGroupUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::HybridRunbookWorkerGroupUpdateParameters
        ActivityOutputType = Azure::Automation::Mgmt::V2015_10_31::Models::ActivityOutputType
        Job = Azure::Automation::Mgmt::V2015_10_31::Models::Job
        ActivityListResult = Azure::Automation::Mgmt::V2015_10_31::Models::ActivityListResult
        JobCreateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::JobCreateParameters
        AdvancedSchedule = Azure::Automation::Mgmt::V2015_10_31::Models::AdvancedSchedule
        JobListResult = Azure::Automation::Mgmt::V2015_10_31::Models::JobListResult
        ScheduleAssociationProperty = Azure::Automation::Mgmt::V2015_10_31::Models::ScheduleAssociationProperty
        Resource = Azure::Automation::Mgmt::V2015_10_31::Models::Resource
        JobScheduleCreateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::JobScheduleCreateParameters
        RunbookDraft = Azure::Automation::Mgmt::V2015_10_31::Models::RunbookDraft
        JobSchedule = Azure::Automation::Mgmt::V2015_10_31::Models::JobSchedule
        ContentSource = Azure::Automation::Mgmt::V2015_10_31::Models::ContentSource
        JobScheduleListResult = Azure::Automation::Mgmt::V2015_10_31::Models::JobScheduleListResult
        Sku = Azure::Automation::Mgmt::V2015_10_31::Models::Sku
        JobStream = Azure::Automation::Mgmt::V2015_10_31::Models::JobStream
        Operation = Azure::Automation::Mgmt::V2015_10_31::Models::Operation
        JobStreamListResult = Azure::Automation::Mgmt::V2015_10_31::Models::JobStreamListResult
        CertificateListResult = Azure::Automation::Mgmt::V2015_10_31::Models::CertificateListResult
        LinkedWorkspace = Azure::Automation::Mgmt::V2015_10_31::Models::LinkedWorkspace
        ConnectionUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::ConnectionUpdateParameters
        ModuleCreateOrUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::ModuleCreateOrUpdateParameters
        ConnectionTypeListResult = Azure::Automation::Mgmt::V2015_10_31::Models::ConnectionTypeListResult
        ModuleListResult = Azure::Automation::Mgmt::V2015_10_31::Models::ModuleListResult
        CredentialCreateOrUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::CredentialCreateOrUpdateParameters
        ModuleUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::ModuleUpdateParameters
        Activity = Azure::Automation::Mgmt::V2015_10_31::Models::Activity
        RunbookDraftUndoEditResult = Azure::Automation::Mgmt::V2015_10_31::Models::RunbookDraftUndoEditResult
        JobProvisioningStateProperty = Azure::Automation::Mgmt::V2015_10_31::Models::JobProvisioningStateProperty
        RunbookCreateOrUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::RunbookCreateOrUpdateParameters
        ContentHash = Azure::Automation::Mgmt::V2015_10_31::Models::ContentHash
        RunbookCreateOrUpdateDraftProperties = Azure::Automation::Mgmt::V2015_10_31::Models::RunbookCreateOrUpdateDraftProperties
        WebhookCreateOrUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::WebhookCreateOrUpdateParameters
        RunbookCreateOrUpdateDraftParameters = Azure::Automation::Mgmt::V2015_10_31::Models::RunbookCreateOrUpdateDraftParameters
        AutomationAccountCreateOrUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::AutomationAccountCreateOrUpdateParameters
        RunbookUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::RunbookUpdateParameters
        FieldDefinition = Azure::Automation::Mgmt::V2015_10_31::Models::FieldDefinition
        RunbookListResult = Azure::Automation::Mgmt::V2015_10_31::Models::RunbookListResult
        ActivityParameterSet = Azure::Automation::Mgmt::V2015_10_31::Models::ActivityParameterSet
        ScheduleCreateOrUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::ScheduleCreateOrUpdateParameters
        ConnectionTypeAssociationProperty = Azure::Automation::Mgmt::V2015_10_31::Models::ConnectionTypeAssociationProperty
        Schedule = Azure::Automation::Mgmt::V2015_10_31::Models::Schedule
        AutomationAccountListResult = Azure::Automation::Mgmt::V2015_10_31::Models::AutomationAccountListResult
        ScheduleUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::ScheduleUpdateParameters
        CredentialListResult = Azure::Automation::Mgmt::V2015_10_31::Models::CredentialListResult
        ScheduleListResult = Azure::Automation::Mgmt::V2015_10_31::Models::ScheduleListResult
        ModuleErrorInfo = Azure::Automation::Mgmt::V2015_10_31::Models::ModuleErrorInfo
        SubResource = Azure::Automation::Mgmt::V2015_10_31::Models::SubResource
        AdvancedScheduleMonthlyOccurrence = Azure::Automation::Mgmt::V2015_10_31::Models::AdvancedScheduleMonthlyOccurrence
        TestJobCreateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::TestJobCreateParameters
        CertificateCreateOrUpdateParameters = Azure::Automation::Mgmt::V2015_10_31::Models::CertificateCreateOrUpdateParameters
        TestJob = Azure::Automation::Mgmt::V2015_10_31::Models::TestJob
        ProxyResource = Azure::Automation::Mgmt::V2015_10_31::Models::ProxyResource
        Webhook = Azure::Automation::Mgmt::V2015_10_31::Models::Webhook
        Variable = Azure::Automation::Mgmt::V2015_10_31::Models::Variable
        DscCompilationJob = Azure::Automation::Mgmt::V2015_10_31::Models::DscCompilationJob
        Credential = Azure::Automation::Mgmt::V2015_10_31::Models::Credential
        Connection = Azure::Automation::Mgmt::V2015_10_31::Models::Connection
        Certificate = Azure::Automation::Mgmt::V2015_10_31::Models::Certificate
        TrackedResource = Azure::Automation::Mgmt::V2015_10_31::Models::TrackedResource
        Runbook = Azure::Automation::Mgmt::V2015_10_31::Models::Runbook
        ModuleModel = Azure::Automation::Mgmt::V2015_10_31::Models::ModuleModel
        DscConfiguration = Azure::Automation::Mgmt::V2015_10_31::Models::DscConfiguration
        AutomationAccount = Azure::Automation::Mgmt::V2015_10_31::Models::AutomationAccount
        DscNode = Azure::Automation::Mgmt::V2015_10_31::Models::DscNode
        DscNodeConfiguration = Azure::Automation::Mgmt::V2015_10_31::Models::DscNodeConfiguration
        AutomationKeyName = Azure::Automation::Mgmt::V2015_10_31::Models::AutomationKeyName
        AutomationKeyPermissions = Azure::Automation::Mgmt::V2015_10_31::Models::AutomationKeyPermissions
        JobProvisioningState = Azure::Automation::Mgmt::V2015_10_31::Models::JobProvisioningState
        JobStatus = Azure::Automation::Mgmt::V2015_10_31::Models::JobStatus
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
        GroupTypeEnum = Azure::Automation::Mgmt::V2015_10_31::Models::GroupTypeEnum
        JobStreamType = Azure::Automation::Mgmt::V2015_10_31::Models::JobStreamType
        HttpStatusCode = Azure::Automation::Mgmt::V2015_10_31::Models::HttpStatusCode
        ScheduleFrequency = Azure::Automation::Mgmt::V2015_10_31::Models::ScheduleFrequency
      end

      class AutomationManagementClass
        attr_reader :automation_account_operations, :operations, :statistics_operations, :usages, :keys, :certificate_operations, :connection_operations, :connection_type_operations, :credential_operations, :dsc_compilation_job_operations, :dsc_compilation_job_stream, :dsc_configuration_operations, :agent_registration_information, :dsc_node_operations, :node_reports, :dsc_node_configuration_operations, :hybrid_runbook_worker_group_operations, :job_operations, :job_stream_operations, :job_schedule_operations, :linked_workspace_operations, :activity_operations, :module_model_operations, :object_data_types, :fields, :runbook_draft_operations, :runbook_operations, :test_job_streams, :test_job_operations, :schedule_operations, :variable_operations, :webhook_operations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Automation::Mgmt::V2015_10_31::AutomationClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @automation_account_operations = @client_0.automation_account_operations
          @operations = @client_0.operations
          @statistics_operations = @client_0.statistics_operations
          @usages = @client_0.usages
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
          @job_stream_operations = @client_0.job_stream_operations
          @job_schedule_operations = @client_0.job_schedule_operations
          @linked_workspace_operations = @client_0.linked_workspace_operations
          @activity_operations = @client_0.activity_operations
          @module_model_operations = @client_0.module_model_operations
          @object_data_types = @client_0.object_data_types
          @fields = @client_0.fields
          @runbook_draft_operations = @client_0.runbook_draft_operations
          @runbook_operations = @client_0.runbook_operations
          @test_job_streams = @client_0.test_job_streams
          @test_job_operations = @client_0.test_job_operations
          @schedule_operations = @client_0.schedule_operations
          @variable_operations = @client_0.variable_operations
          @webhook_operations = @client_0.webhook_operations

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
          def agent_registration
            Azure::Automation::Mgmt::V2015_10_31::Models::AgentRegistration
          end
          def error_response
            Azure::Automation::Mgmt::V2015_10_31::Models::ErrorResponse
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
          def usage
            Azure::Automation::Mgmt::V2015_10_31::Models::Usage
          end
          def dsc_compilation_job_list_result
            Azure::Automation::Mgmt::V2015_10_31::Models::DscCompilationJobListResult
          end
          def statistics
            Azure::Automation::Mgmt::V2015_10_31::Models::Statistics
          end
          def dsc_configuration_list_result
            Azure::Automation::Mgmt::V2015_10_31::Models::DscConfigurationListResult
          end
          def runbook_association_property
            Azure::Automation::Mgmt::V2015_10_31::Models::RunbookAssociationProperty
          end
          def dsc_configuration_create_or_update_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::DscConfigurationCreateOrUpdateParameters
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
          def dsc_node_configuration_list_result
            Azure::Automation::Mgmt::V2015_10_31::Models::DscNodeConfigurationListResult
          end
          def usage_list_result
            Azure::Automation::Mgmt::V2015_10_31::Models::UsageListResult
          end
          def dsc_node_configuration_create_or_update_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::DscNodeConfigurationCreateOrUpdateParameters
          end
          def statistics_list_result
            Azure::Automation::Mgmt::V2015_10_31::Models::StatisticsListResult
          end
          def dsc_node_list_result
            Azure::Automation::Mgmt::V2015_10_31::Models::DscNodeListResult
          end
          def type_field_list_result
            Azure::Automation::Mgmt::V2015_10_31::Models::TypeFieldListResult
          end
          def runbook_parameter
            Azure::Automation::Mgmt::V2015_10_31::Models::RunbookParameter
          end
          def type_field
            Azure::Automation::Mgmt::V2015_10_31::Models::TypeField
          end
          def content_link
            Azure::Automation::Mgmt::V2015_10_31::Models::ContentLink
          end
          def variable_create_or_update_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::VariableCreateOrUpdateParameters
          end
          def webhook_update_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::WebhookUpdateParameters
          end
          def dsc_configuration_update_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::DscConfigurationUpdateParameters
          end
          def webhook_list_result
            Azure::Automation::Mgmt::V2015_10_31::Models::WebhookListResult
          end
          def dsc_meta_configuration
            Azure::Automation::Mgmt::V2015_10_31::Models::DscMetaConfiguration
          end
          def dsc_configuration_parameter
            Azure::Automation::Mgmt::V2015_10_31::Models::DscConfigurationParameter
          end
          def dsc_node_configuration_association_property
            Azure::Automation::Mgmt::V2015_10_31::Models::DscNodeConfigurationAssociationProperty
          end
          def variable_update_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::VariableUpdateParameters
          end
          def dsc_node_extension_handler_association_property
            Azure::Automation::Mgmt::V2015_10_31::Models::DscNodeExtensionHandlerAssociationProperty
          end
          def variable_list_result
            Azure::Automation::Mgmt::V2015_10_31::Models::VariableListResult
          end
          def dsc_node_update_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::DscNodeUpdateParameters
          end
          def operation_display
            Azure::Automation::Mgmt::V2015_10_31::Models::OperationDisplay
          end
          def dsc_report_error
            Azure::Automation::Mgmt::V2015_10_31::Models::DscReportError
          end
          def operation_list_result
            Azure::Automation::Mgmt::V2015_10_31::Models::OperationListResult
          end
          def dsc_report_resource_navigation
            Azure::Automation::Mgmt::V2015_10_31::Models::DscReportResourceNavigation
          end
          def automation_account_update_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::AutomationAccountUpdateParameters
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
          def connection_list_result
            Azure::Automation::Mgmt::V2015_10_31::Models::ConnectionListResult
          end
          def dsc_node_report_list_result
            Azure::Automation::Mgmt::V2015_10_31::Models::DscNodeReportListResult
          end
          def connection_create_or_update_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::ConnectionCreateOrUpdateParameters
          end
          def hybrid_runbook_worker
            Azure::Automation::Mgmt::V2015_10_31::Models::HybridRunbookWorker
          end
          def connection_type
            Azure::Automation::Mgmt::V2015_10_31::Models::ConnectionType
          end
          def run_as_credential_association_property
            Azure::Automation::Mgmt::V2015_10_31::Models::RunAsCredentialAssociationProperty
          end
          def connection_type_create_or_update_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::ConnectionTypeCreateOrUpdateParameters
          end
          def hybrid_runbook_worker_group
            Azure::Automation::Mgmt::V2015_10_31::Models::HybridRunbookWorkerGroup
          end
          def credential_update_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::CredentialUpdateParameters
          end
          def hybrid_runbook_worker_groups_list_result
            Azure::Automation::Mgmt::V2015_10_31::Models::HybridRunbookWorkerGroupsListResult
          end
          def activity_parameter
            Azure::Automation::Mgmt::V2015_10_31::Models::ActivityParameter
          end
          def hybrid_runbook_worker_group_update_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::HybridRunbookWorkerGroupUpdateParameters
          end
          def activity_output_type
            Azure::Automation::Mgmt::V2015_10_31::Models::ActivityOutputType
          end
          def job
            Azure::Automation::Mgmt::V2015_10_31::Models::Job
          end
          def activity_list_result
            Azure::Automation::Mgmt::V2015_10_31::Models::ActivityListResult
          end
          def job_create_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::JobCreateParameters
          end
          def advanced_schedule
            Azure::Automation::Mgmt::V2015_10_31::Models::AdvancedSchedule
          end
          def job_list_result
            Azure::Automation::Mgmt::V2015_10_31::Models::JobListResult
          end
          def schedule_association_property
            Azure::Automation::Mgmt::V2015_10_31::Models::ScheduleAssociationProperty
          end
          def resource
            Azure::Automation::Mgmt::V2015_10_31::Models::Resource
          end
          def job_schedule_create_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::JobScheduleCreateParameters
          end
          def runbook_draft
            Azure::Automation::Mgmt::V2015_10_31::Models::RunbookDraft
          end
          def job_schedule
            Azure::Automation::Mgmt::V2015_10_31::Models::JobSchedule
          end
          def content_source
            Azure::Automation::Mgmt::V2015_10_31::Models::ContentSource
          end
          def job_schedule_list_result
            Azure::Automation::Mgmt::V2015_10_31::Models::JobScheduleListResult
          end
          def sku
            Azure::Automation::Mgmt::V2015_10_31::Models::Sku
          end
          def job_stream
            Azure::Automation::Mgmt::V2015_10_31::Models::JobStream
          end
          def operation
            Azure::Automation::Mgmt::V2015_10_31::Models::Operation
          end
          def job_stream_list_result
            Azure::Automation::Mgmt::V2015_10_31::Models::JobStreamListResult
          end
          def certificate_list_result
            Azure::Automation::Mgmt::V2015_10_31::Models::CertificateListResult
          end
          def linked_workspace
            Azure::Automation::Mgmt::V2015_10_31::Models::LinkedWorkspace
          end
          def connection_update_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::ConnectionUpdateParameters
          end
          def module_create_or_update_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::ModuleCreateOrUpdateParameters
          end
          def connection_type_list_result
            Azure::Automation::Mgmt::V2015_10_31::Models::ConnectionTypeListResult
          end
          def module_list_result
            Azure::Automation::Mgmt::V2015_10_31::Models::ModuleListResult
          end
          def credential_create_or_update_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::CredentialCreateOrUpdateParameters
          end
          def module_update_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::ModuleUpdateParameters
          end
          def activity
            Azure::Automation::Mgmt::V2015_10_31::Models::Activity
          end
          def runbook_draft_undo_edit_result
            Azure::Automation::Mgmt::V2015_10_31::Models::RunbookDraftUndoEditResult
          end
          def job_provisioning_state_property
            Azure::Automation::Mgmt::V2015_10_31::Models::JobProvisioningStateProperty
          end
          def runbook_create_or_update_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::RunbookCreateOrUpdateParameters
          end
          def content_hash
            Azure::Automation::Mgmt::V2015_10_31::Models::ContentHash
          end
          def runbook_create_or_update_draft_properties
            Azure::Automation::Mgmt::V2015_10_31::Models::RunbookCreateOrUpdateDraftProperties
          end
          def webhook_create_or_update_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::WebhookCreateOrUpdateParameters
          end
          def runbook_create_or_update_draft_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::RunbookCreateOrUpdateDraftParameters
          end
          def automation_account_create_or_update_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::AutomationAccountCreateOrUpdateParameters
          end
          def runbook_update_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::RunbookUpdateParameters
          end
          def field_definition
            Azure::Automation::Mgmt::V2015_10_31::Models::FieldDefinition
          end
          def runbook_list_result
            Azure::Automation::Mgmt::V2015_10_31::Models::RunbookListResult
          end
          def activity_parameter_set
            Azure::Automation::Mgmt::V2015_10_31::Models::ActivityParameterSet
          end
          def schedule_create_or_update_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::ScheduleCreateOrUpdateParameters
          end
          def connection_type_association_property
            Azure::Automation::Mgmt::V2015_10_31::Models::ConnectionTypeAssociationProperty
          end
          def schedule
            Azure::Automation::Mgmt::V2015_10_31::Models::Schedule
          end
          def automation_account_list_result
            Azure::Automation::Mgmt::V2015_10_31::Models::AutomationAccountListResult
          end
          def schedule_update_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::ScheduleUpdateParameters
          end
          def credential_list_result
            Azure::Automation::Mgmt::V2015_10_31::Models::CredentialListResult
          end
          def schedule_list_result
            Azure::Automation::Mgmt::V2015_10_31::Models::ScheduleListResult
          end
          def module_error_info
            Azure::Automation::Mgmt::V2015_10_31::Models::ModuleErrorInfo
          end
          def sub_resource
            Azure::Automation::Mgmt::V2015_10_31::Models::SubResource
          end
          def advanced_schedule_monthly_occurrence
            Azure::Automation::Mgmt::V2015_10_31::Models::AdvancedScheduleMonthlyOccurrence
          end
          def test_job_create_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::TestJobCreateParameters
          end
          def certificate_create_or_update_parameters
            Azure::Automation::Mgmt::V2015_10_31::Models::CertificateCreateOrUpdateParameters
          end
          def test_job
            Azure::Automation::Mgmt::V2015_10_31::Models::TestJob
          end
          def proxy_resource
            Azure::Automation::Mgmt::V2015_10_31::Models::ProxyResource
          end
          def webhook
            Azure::Automation::Mgmt::V2015_10_31::Models::Webhook
          end
          def variable
            Azure::Automation::Mgmt::V2015_10_31::Models::Variable
          end
          def dsc_compilation_job
            Azure::Automation::Mgmt::V2015_10_31::Models::DscCompilationJob
          end
          def credential
            Azure::Automation::Mgmt::V2015_10_31::Models::Credential
          end
          def connection
            Azure::Automation::Mgmt::V2015_10_31::Models::Connection
          end
          def certificate
            Azure::Automation::Mgmt::V2015_10_31::Models::Certificate
          end
          def tracked_resource
            Azure::Automation::Mgmt::V2015_10_31::Models::TrackedResource
          end
          def runbook
            Azure::Automation::Mgmt::V2015_10_31::Models::Runbook
          end
          def module_model
            Azure::Automation::Mgmt::V2015_10_31::Models::ModuleModel
          end
          def dsc_configuration
            Azure::Automation::Mgmt::V2015_10_31::Models::DscConfiguration
          end
          def automation_account
            Azure::Automation::Mgmt::V2015_10_31::Models::AutomationAccount
          end
          def dsc_node
            Azure::Automation::Mgmt::V2015_10_31::Models::DscNode
          end
          def dsc_node_configuration
            Azure::Automation::Mgmt::V2015_10_31::Models::DscNodeConfiguration
          end
          def automation_key_name
            Azure::Automation::Mgmt::V2015_10_31::Models::AutomationKeyName
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
          def group_type_enum
            Azure::Automation::Mgmt::V2015_10_31::Models::GroupTypeEnum
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
  end
end
