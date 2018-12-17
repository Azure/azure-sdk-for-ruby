# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_logic'

module Azure::Profiles::Latest
  module Logic
    module Mgmt
      Workflows = Azure::Logic::Mgmt::V2016_06_01::Workflows
      WorkflowVersions = Azure::Logic::Mgmt::V2016_06_01::WorkflowVersions
      WorkflowTriggers = Azure::Logic::Mgmt::V2016_06_01::WorkflowTriggers
      WorkflowTriggerHistories = Azure::Logic::Mgmt::V2016_06_01::WorkflowTriggerHistories
      WorkflowRuns = Azure::Logic::Mgmt::V2016_06_01::WorkflowRuns
      WorkflowRunActions = Azure::Logic::Mgmt::V2016_06_01::WorkflowRunActions
      WorkflowRunActionRepetitions = Azure::Logic::Mgmt::V2016_06_01::WorkflowRunActionRepetitions
      WorkflowRunActionRepetitionsRequestHistories = Azure::Logic::Mgmt::V2016_06_01::WorkflowRunActionRepetitionsRequestHistories
      WorkflowRunActionRequestHistories = Azure::Logic::Mgmt::V2016_06_01::WorkflowRunActionRequestHistories
      WorkflowRunActionScopedRepetitions = Azure::Logic::Mgmt::V2016_06_01::WorkflowRunActionScopedRepetitions
      WorkflowRunOperations = Azure::Logic::Mgmt::V2016_06_01::WorkflowRunOperations
      IntegrationAccounts = Azure::Logic::Mgmt::V2016_06_01::IntegrationAccounts
      IntegrationAccountAssemblies = Azure::Logic::Mgmt::V2016_06_01::IntegrationAccountAssemblies
      IntegrationAccountBatchConfigurations = Azure::Logic::Mgmt::V2016_06_01::IntegrationAccountBatchConfigurations
      Schemas = Azure::Logic::Mgmt::V2016_06_01::Schemas
      Maps = Azure::Logic::Mgmt::V2016_06_01::Maps
      Partners = Azure::Logic::Mgmt::V2016_06_01::Partners
      Agreements = Azure::Logic::Mgmt::V2016_06_01::Agreements
      Sessions = Azure::Logic::Mgmt::V2016_06_01::Sessions
      Certificates = Azure::Logic::Mgmt::V2016_06_01::Certificates

      module Models
        OperationResult = Azure::Logic::Mgmt::V2016_06_01::Models::OperationResult
        OperationDisplay = Azure::Logic::Mgmt::V2016_06_01::Models::OperationDisplay
        Operation = Azure::Logic::Mgmt::V2016_06_01::Models::Operation
        OperationListResult = Azure::Logic::Mgmt::V2016_06_01::Models::OperationListResult
        SkuName = Azure::Logic::Mgmt::V2016_06_01::Models::SkuName
        ContentHash = Azure::Logic::Mgmt::V2016_06_01::Models::ContentHash
        ContentLink = Azure::Logic::Mgmt::V2016_06_01::Models::ContentLink
        SubResource = Azure::Logic::Mgmt::V2016_06_01::Models::SubResource
        KeyVaultKeyReference = Azure::Logic::Mgmt::V2016_06_01::Models::KeyVaultKeyReference
        Sku = Azure::Logic::Mgmt::V2016_06_01::Models::Sku
        KeyType = Azure::Logic::Mgmt::V2016_06_01::Models::KeyType
        Resource = Azure::Logic::Mgmt::V2016_06_01::Models::Resource
        X12EnvelopeOverride = Azure::Logic::Mgmt::V2016_06_01::Models::X12EnvelopeOverride
        X12ValidationOverride = Azure::Logic::Mgmt::V2016_06_01::Models::X12ValidationOverride
        X12MessageIdentifier = Azure::Logic::Mgmt::V2016_06_01::Models::X12MessageIdentifier
        X12SchemaReference = Azure::Logic::Mgmt::V2016_06_01::Models::X12SchemaReference
        AS2ProtocolSettings = Azure::Logic::Mgmt::V2016_06_01::Models::AS2ProtocolSettings
        AS2OneWayAgreement = Azure::Logic::Mgmt::V2016_06_01::Models::AS2OneWayAgreement
        WorkflowListResult = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowListResult
        AS2AgreementContent = Azure::Logic::Mgmt::V2016_06_01::Models::AS2AgreementContent
        WorkflowVersionListResult = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowVersionListResult
        X12ValidationSettings = Azure::Logic::Mgmt::V2016_06_01::Models::X12ValidationSettings
        RecurrenceSchedule = Azure::Logic::Mgmt::V2016_06_01::Models::RecurrenceSchedule
        X12FramingSettings = Azure::Logic::Mgmt::V2016_06_01::Models::X12FramingSettings
        RequestHistoryListResult = Azure::Logic::Mgmt::V2016_06_01::Models::RequestHistoryListResult
        X12EnvelopeSettings = Azure::Logic::Mgmt::V2016_06_01::Models::X12EnvelopeSettings
        WorkflowTriggerListResult = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerListResult
        X12AcknowledgementSettings = Azure::Logic::Mgmt::V2016_06_01::Models::X12AcknowledgementSettings
        WorkflowTriggerCallbackUrl = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerCallbackUrl
        X12MessageFilter = Azure::Logic::Mgmt::V2016_06_01::Models::X12MessageFilter
        X12SecuritySettings = Azure::Logic::Mgmt::V2016_06_01::Models::X12SecuritySettings
        RequestHistoryProperties = Azure::Logic::Mgmt::V2016_06_01::Models::RequestHistoryProperties
        X12ProcessingSettings = Azure::Logic::Mgmt::V2016_06_01::Models::X12ProcessingSettings
        WorkflowTriggerHistoryFilter = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerHistoryFilter
        ResourceReference = Azure::Logic::Mgmt::V2016_06_01::Models::ResourceReference
        WorkflowRunFilter = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowRunFilter
        WorkflowParameter = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowParameter
        ErrorProperties = Azure::Logic::Mgmt::V2016_06_01::Models::ErrorProperties
        RunCorrelation = Azure::Logic::Mgmt::V2016_06_01::Models::RunCorrelation
        RetryHistory = Azure::Logic::Mgmt::V2016_06_01::Models::RetryHistory
        X12DelimiterOverrides = Azure::Logic::Mgmt::V2016_06_01::Models::X12DelimiterOverrides
        WorkflowRunActionFilter = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowRunActionFilter
        X12ProtocolSettings = Azure::Logic::Mgmt::V2016_06_01::Models::X12ProtocolSettings
        RegenerateActionParameter = Azure::Logic::Mgmt::V2016_06_01::Models::RegenerateActionParameter
        X12OneWayAgreement = Azure::Logic::Mgmt::V2016_06_01::Models::X12OneWayAgreement
        IntegrationAccountSku = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountSku
        X12AgreementContent = Azure::Logic::Mgmt::V2016_06_01::Models::X12AgreementContent
        IntegrationAccountListResult = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountListResult
        EdifactValidationSettings = Azure::Logic::Mgmt::V2016_06_01::Models::EdifactValidationSettings
        CallbackUrl = Azure::Logic::Mgmt::V2016_06_01::Models::CallbackUrl
        EdifactFramingSettings = Azure::Logic::Mgmt::V2016_06_01::Models::EdifactFramingSettings
        IntegrationAccountSchemaListResult = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountSchemaListResult
        EdifactEnvelopeSettings = Azure::Logic::Mgmt::V2016_06_01::Models::EdifactEnvelopeSettings
        IntegrationAccountMapPropertiesParametersSchema = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountMapPropertiesParametersSchema
        EdifactAcknowledgementSettings = Azure::Logic::Mgmt::V2016_06_01::Models::EdifactAcknowledgementSettings
        IntegrationAccountMapListResult = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountMapListResult
        EdifactMessageFilter = Azure::Logic::Mgmt::V2016_06_01::Models::EdifactMessageFilter
        BusinessIdentity = Azure::Logic::Mgmt::V2016_06_01::Models::BusinessIdentity
        EdifactProcessingSettings = Azure::Logic::Mgmt::V2016_06_01::Models::EdifactProcessingSettings
        PartnerContent = Azure::Logic::Mgmt::V2016_06_01::Models::PartnerContent
        EdifactEnvelopeOverride = Azure::Logic::Mgmt::V2016_06_01::Models::EdifactEnvelopeOverride
        IntegrationAccountPartnerListResult = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountPartnerListResult
        EdifactMessageIdentifier = Azure::Logic::Mgmt::V2016_06_01::Models::EdifactMessageIdentifier
        AS2MessageConnectionSettings = Azure::Logic::Mgmt::V2016_06_01::Models::AS2MessageConnectionSettings
        EdifactSchemaReference = Azure::Logic::Mgmt::V2016_06_01::Models::EdifactSchemaReference
        AS2MdnSettings = Azure::Logic::Mgmt::V2016_06_01::Models::AS2MdnSettings
        EdifactValidationOverride = Azure::Logic::Mgmt::V2016_06_01::Models::EdifactValidationOverride
        AS2ValidationSettings = Azure::Logic::Mgmt::V2016_06_01::Models::AS2ValidationSettings
        EdifactDelimiterOverride = Azure::Logic::Mgmt::V2016_06_01::Models::EdifactDelimiterOverride
        AS2ErrorSettings = Azure::Logic::Mgmt::V2016_06_01::Models::AS2ErrorSettings
        EdifactProtocolSettings = Azure::Logic::Mgmt::V2016_06_01::Models::EdifactProtocolSettings
        EdifactOneWayAgreement = Azure::Logic::Mgmt::V2016_06_01::Models::EdifactOneWayAgreement
        WorkflowTriggerRecurrence = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerRecurrence
        EdifactAgreementContent = Azure::Logic::Mgmt::V2016_06_01::Models::EdifactAgreementContent
        WorkflowTriggerListCallbackUrlQueries = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerListCallbackUrlQueries
        Response = Azure::Logic::Mgmt::V2016_06_01::Models::Response
        AgreementContent = Azure::Logic::Mgmt::V2016_06_01::Models::AgreementContent
        OperationResultProperties = Azure::Logic::Mgmt::V2016_06_01::Models::OperationResultProperties
        WorkflowRunTrigger = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowRunTrigger
        WorkflowRunListResult = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowRunListResult
        IntegrationAccountAgreementFilter = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountAgreementFilter
        IntegrationAccountAgreementListResult = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountAgreementListResult
        KeyVaultKeyReferenceKeyVault = Azure::Logic::Mgmt::V2016_06_01::Models::KeyVaultKeyReferenceKeyVault
        GenerateUpgradedDefinitionParameters = Azure::Logic::Mgmt::V2016_06_01::Models::GenerateUpgradedDefinitionParameters
        BatchConfigurationCollection = Azure::Logic::Mgmt::V2016_06_01::Models::BatchConfigurationCollection
        WorkflowRunActionRepetitionDefinitionCollection = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowRunActionRepetitionDefinitionCollection
        IntegrationAccountSchemaFilter = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountSchemaFilter
        GetCallbackUrlParameters = Azure::Logic::Mgmt::V2016_06_01::Models::GetCallbackUrlParameters
        IntegrationAccountMapFilter = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountMapFilter
        IntegrationAccountSessionFilter = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountSessionFilter
        JsonSchema = Azure::Logic::Mgmt::V2016_06_01::Models::JsonSchema
        RepetitionIndex = Azure::Logic::Mgmt::V2016_06_01::Models::RepetitionIndex
        AS2AcknowledgementConnectionSettings = Azure::Logic::Mgmt::V2016_06_01::Models::AS2AcknowledgementConnectionSettings
        IntegrationAccountCertificateListResult = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountCertificateListResult
        IntegrationAccountSessionListResult = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountSessionListResult
        RecurrenceScheduleOccurrence = Azure::Logic::Mgmt::V2016_06_01::Models::RecurrenceScheduleOccurrence
        Correlation = Azure::Logic::Mgmt::V2016_06_01::Models::Correlation
        ErrorInfo = Azure::Logic::Mgmt::V2016_06_01::Models::ErrorInfo
        WorkflowRunActionListResult = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowRunActionListResult
        ListKeyVaultKeysDefinition = Azure::Logic::Mgmt::V2016_06_01::Models::ListKeyVaultKeysDefinition
        AS2EnvelopeSettings = Azure::Logic::Mgmt::V2016_06_01::Models::AS2EnvelopeSettings
        ArtifactProperties = Azure::Logic::Mgmt::V2016_06_01::Models::ArtifactProperties
        Request = Azure::Logic::Mgmt::V2016_06_01::Models::Request
        KeyVaultKey = Azure::Logic::Mgmt::V2016_06_01::Models::KeyVaultKey
        KeyVaultKeyAttributes = Azure::Logic::Mgmt::V2016_06_01::Models::KeyVaultKeyAttributes
        AS2SecuritySettings = Azure::Logic::Mgmt::V2016_06_01::Models::AS2SecuritySettings
        WorkflowTriggerFilter = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerFilter
        TrackingEventErrorInfo = Azure::Logic::Mgmt::V2016_06_01::Models::TrackingEventErrorInfo
        B2BPartnerContent = Azure::Logic::Mgmt::V2016_06_01::Models::B2BPartnerContent
        AssemblyCollection = Azure::Logic::Mgmt::V2016_06_01::Models::AssemblyCollection
        TrackingEventsDefinition = Azure::Logic::Mgmt::V2016_06_01::Models::TrackingEventsDefinition
        KeyVaultKeyCollection = Azure::Logic::Mgmt::V2016_06_01::Models::KeyVaultKeyCollection
        AccessKeyRegenerateActionDefinition = Azure::Logic::Mgmt::V2016_06_01::Models::AccessKeyRegenerateActionDefinition
        BatchReleaseCriteria = Azure::Logic::Mgmt::V2016_06_01::Models::BatchReleaseCriteria
        TrackingEvent = Azure::Logic::Mgmt::V2016_06_01::Models::TrackingEvent
        WorkflowTriggerHistoryListResult = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerHistoryListResult
        Expression = Azure::Logic::Mgmt::V2016_06_01::Models::Expression
        WorkflowFilter = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowFilter
        ExpressionTraces = Azure::Logic::Mgmt::V2016_06_01::Models::ExpressionTraces
        Workflow = Azure::Logic::Mgmt::V2016_06_01::Models::Workflow
        SetTriggerStateActionDefinition = Azure::Logic::Mgmt::V2016_06_01::Models::SetTriggerStateActionDefinition
        WorkflowTrigger = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTrigger
        WorkflowTriggerHistory = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerHistory
        IntegrationAccountPartnerFilter = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountPartnerFilter
        WorkflowRun = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowRun
        WorkflowRunAction = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowRunAction
        WorkflowVersion = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowVersion
        IntegrationAccountSchema = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountSchema
        IntegrationAccountMap = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountMap
        WorkflowOutputParameter = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowOutputParameter
        IntegrationAccountAgreement = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountAgreement
        IntegrationAccountCertificate = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountCertificate
        IntegrationAccount = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccount
        ExpressionRoot = Azure::Logic::Mgmt::V2016_06_01::Models::ExpressionRoot
        AzureResourceErrorInfo = Azure::Logic::Mgmt::V2016_06_01::Models::AzureResourceErrorInfo
        IntegrationAccountPartner = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountPartner
        RunActionCorrelation = Azure::Logic::Mgmt::V2016_06_01::Models::RunActionCorrelation
        AssemblyProperties = Azure::Logic::Mgmt::V2016_06_01::Models::AssemblyProperties
        IntegrationAccountSession = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountSession
        ArtifactContentPropertiesDefinition = Azure::Logic::Mgmt::V2016_06_01::Models::ArtifactContentPropertiesDefinition
        BatchConfigurationProperties = Azure::Logic::Mgmt::V2016_06_01::Models::BatchConfigurationProperties
        WorkflowRunActionRepetitionDefinition = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowRunActionRepetitionDefinition
        RequestHistory = Azure::Logic::Mgmt::V2016_06_01::Models::RequestHistory
        WorkflowProvisioningState = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowProvisioningState
        KeyVaultReference = Azure::Logic::Mgmt::V2016_06_01::Models::KeyVaultReference
        WorkflowState = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowState
        ParameterType = Azure::Logic::Mgmt::V2016_06_01::Models::ParameterType
        BatchConfiguration = Azure::Logic::Mgmt::V2016_06_01::Models::BatchConfiguration
        AssemblyDefinition = Azure::Logic::Mgmt::V2016_06_01::Models::AssemblyDefinition
        WorkflowTriggerProvisioningState = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerProvisioningState
        WorkflowStatus = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowStatus
        RecurrenceFrequency = Azure::Logic::Mgmt::V2016_06_01::Models::RecurrenceFrequency
        DaysOfWeek = Azure::Logic::Mgmt::V2016_06_01::Models::DaysOfWeek
        DayOfWeek = Azure::Logic::Mgmt::V2016_06_01::Models::DayOfWeek
        IntegrationAccountSkuName = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountSkuName
        SchemaType = Azure::Logic::Mgmt::V2016_06_01::Models::SchemaType
        AgreementType = Azure::Logic::Mgmt::V2016_06_01::Models::AgreementType
        PartnerType = Azure::Logic::Mgmt::V2016_06_01::Models::PartnerType
        SigningAlgorithm = Azure::Logic::Mgmt::V2016_06_01::Models::SigningAlgorithm
        TrailingSeparatorPolicy = Azure::Logic::Mgmt::V2016_06_01::Models::TrailingSeparatorPolicy
        EncryptionAlgorithm = Azure::Logic::Mgmt::V2016_06_01::Models::EncryptionAlgorithm
        X12CharacterSet = Azure::Logic::Mgmt::V2016_06_01::Models::X12CharacterSet
        HashingAlgorithm = Azure::Logic::Mgmt::V2016_06_01::Models::HashingAlgorithm
        MapType = Azure::Logic::Mgmt::V2016_06_01::Models::MapType
        X12TimeFormat = Azure::Logic::Mgmt::V2016_06_01::Models::X12TimeFormat
        X12DateFormat = Azure::Logic::Mgmt::V2016_06_01::Models::X12DateFormat
        ErrorResponse = Azure::Logic::Mgmt::V2016_06_01::Models::ErrorResponse
        UsageIndicator = Azure::Logic::Mgmt::V2016_06_01::Models::UsageIndicator
        MessageFilterType = Azure::Logic::Mgmt::V2016_06_01::Models::MessageFilterType
        EdifactCharacterSet = Azure::Logic::Mgmt::V2016_06_01::Models::EdifactCharacterSet
        EdifactDecimalIndicator = Azure::Logic::Mgmt::V2016_06_01::Models::EdifactDecimalIndicator
        SegmentTerminatorSuffix = Azure::Logic::Mgmt::V2016_06_01::Models::SegmentTerminatorSuffix
        EventLevel = Azure::Logic::Mgmt::V2016_06_01::Models::EventLevel
        TrackingRecordType = Azure::Logic::Mgmt::V2016_06_01::Models::TrackingRecordType
        TrackEventsOperationOptions = Azure::Logic::Mgmt::V2016_06_01::Models::TrackEventsOperationOptions
        AccessKeyType = Azure::Logic::Mgmt::V2016_06_01::Models::AccessKeyType
      end

      class LogicManagementClass
        attr_reader :workflows, :workflow_versions, :workflow_triggers, :workflow_trigger_histories, :workflow_runs, :workflow_run_actions, :workflow_run_action_repetitions, :workflow_run_action_repetitions_request_histories, :workflow_run_action_request_histories, :workflow_run_action_scoped_repetitions, :workflow_run_operations, :integration_accounts, :integration_account_assemblies, :integration_account_batch_configurations, :schemas, :maps, :partners, :agreements, :sessions, :certificates, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Logic::Mgmt::V2016_06_01::LogicManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @workflows = @client_0.workflows
          @workflow_versions = @client_0.workflow_versions
          @workflow_triggers = @client_0.workflow_triggers
          @workflow_trigger_histories = @client_0.workflow_trigger_histories
          @workflow_runs = @client_0.workflow_runs
          @workflow_run_actions = @client_0.workflow_run_actions
          @workflow_run_action_repetitions = @client_0.workflow_run_action_repetitions
          @workflow_run_action_repetitions_request_histories = @client_0.workflow_run_action_repetitions_request_histories
          @workflow_run_action_request_histories = @client_0.workflow_run_action_request_histories
          @workflow_run_action_scoped_repetitions = @client_0.workflow_run_action_scoped_repetitions
          @workflow_run_operations = @client_0.workflow_run_operations
          @integration_accounts = @client_0.integration_accounts
          @integration_account_assemblies = @client_0.integration_account_assemblies
          @integration_account_batch_configurations = @client_0.integration_account_batch_configurations
          @schemas = @client_0.schemas
          @maps = @client_0.maps
          @partners = @client_0.partners
          @agreements = @client_0.agreements
          @sessions = @client_0.sessions
          @certificates = @client_0.certificates

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Logic/Mgmt"
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
          def operation_result
            Azure::Logic::Mgmt::V2016_06_01::Models::OperationResult
          end
          def operation_display
            Azure::Logic::Mgmt::V2016_06_01::Models::OperationDisplay
          end
          def operation
            Azure::Logic::Mgmt::V2016_06_01::Models::Operation
          end
          def operation_list_result
            Azure::Logic::Mgmt::V2016_06_01::Models::OperationListResult
          end
          def sku_name
            Azure::Logic::Mgmt::V2016_06_01::Models::SkuName
          end
          def content_hash
            Azure::Logic::Mgmt::V2016_06_01::Models::ContentHash
          end
          def content_link
            Azure::Logic::Mgmt::V2016_06_01::Models::ContentLink
          end
          def sub_resource
            Azure::Logic::Mgmt::V2016_06_01::Models::SubResource
          end
          def key_vault_key_reference
            Azure::Logic::Mgmt::V2016_06_01::Models::KeyVaultKeyReference
          end
          def sku
            Azure::Logic::Mgmt::V2016_06_01::Models::Sku
          end
          def key_type
            Azure::Logic::Mgmt::V2016_06_01::Models::KeyType
          end
          def resource
            Azure::Logic::Mgmt::V2016_06_01::Models::Resource
          end
          def x12_envelope_override
            Azure::Logic::Mgmt::V2016_06_01::Models::X12EnvelopeOverride
          end
          def x12_validation_override
            Azure::Logic::Mgmt::V2016_06_01::Models::X12ValidationOverride
          end
          def x12_message_identifier
            Azure::Logic::Mgmt::V2016_06_01::Models::X12MessageIdentifier
          end
          def x12_schema_reference
            Azure::Logic::Mgmt::V2016_06_01::Models::X12SchemaReference
          end
          def as2_protocol_settings
            Azure::Logic::Mgmt::V2016_06_01::Models::AS2ProtocolSettings
          end
          def as2_one_way_agreement
            Azure::Logic::Mgmt::V2016_06_01::Models::AS2OneWayAgreement
          end
          def workflow_list_result
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowListResult
          end
          def as2_agreement_content
            Azure::Logic::Mgmt::V2016_06_01::Models::AS2AgreementContent
          end
          def workflow_version_list_result
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowVersionListResult
          end
          def x12_validation_settings
            Azure::Logic::Mgmt::V2016_06_01::Models::X12ValidationSettings
          end
          def recurrence_schedule
            Azure::Logic::Mgmt::V2016_06_01::Models::RecurrenceSchedule
          end
          def x12_framing_settings
            Azure::Logic::Mgmt::V2016_06_01::Models::X12FramingSettings
          end
          def request_history_list_result
            Azure::Logic::Mgmt::V2016_06_01::Models::RequestHistoryListResult
          end
          def x12_envelope_settings
            Azure::Logic::Mgmt::V2016_06_01::Models::X12EnvelopeSettings
          end
          def workflow_trigger_list_result
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerListResult
          end
          def x12_acknowledgement_settings
            Azure::Logic::Mgmt::V2016_06_01::Models::X12AcknowledgementSettings
          end
          def workflow_trigger_callback_url
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerCallbackUrl
          end
          def x12_message_filter
            Azure::Logic::Mgmt::V2016_06_01::Models::X12MessageFilter
          end
          def x12_security_settings
            Azure::Logic::Mgmt::V2016_06_01::Models::X12SecuritySettings
          end
          def request_history_properties
            Azure::Logic::Mgmt::V2016_06_01::Models::RequestHistoryProperties
          end
          def x12_processing_settings
            Azure::Logic::Mgmt::V2016_06_01::Models::X12ProcessingSettings
          end
          def workflow_trigger_history_filter
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerHistoryFilter
          end
          def resource_reference
            Azure::Logic::Mgmt::V2016_06_01::Models::ResourceReference
          end
          def workflow_run_filter
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowRunFilter
          end
          def workflow_parameter
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowParameter
          end
          def error_properties
            Azure::Logic::Mgmt::V2016_06_01::Models::ErrorProperties
          end
          def run_correlation
            Azure::Logic::Mgmt::V2016_06_01::Models::RunCorrelation
          end
          def retry_history
            Azure::Logic::Mgmt::V2016_06_01::Models::RetryHistory
          end
          def x12_delimiter_overrides
            Azure::Logic::Mgmt::V2016_06_01::Models::X12DelimiterOverrides
          end
          def workflow_run_action_filter
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowRunActionFilter
          end
          def x12_protocol_settings
            Azure::Logic::Mgmt::V2016_06_01::Models::X12ProtocolSettings
          end
          def regenerate_action_parameter
            Azure::Logic::Mgmt::V2016_06_01::Models::RegenerateActionParameter
          end
          def x12_one_way_agreement
            Azure::Logic::Mgmt::V2016_06_01::Models::X12OneWayAgreement
          end
          def integration_account_sku
            Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountSku
          end
          def x12_agreement_content
            Azure::Logic::Mgmt::V2016_06_01::Models::X12AgreementContent
          end
          def integration_account_list_result
            Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountListResult
          end
          def edifact_validation_settings
            Azure::Logic::Mgmt::V2016_06_01::Models::EdifactValidationSettings
          end
          def callback_url
            Azure::Logic::Mgmt::V2016_06_01::Models::CallbackUrl
          end
          def edifact_framing_settings
            Azure::Logic::Mgmt::V2016_06_01::Models::EdifactFramingSettings
          end
          def integration_account_schema_list_result
            Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountSchemaListResult
          end
          def edifact_envelope_settings
            Azure::Logic::Mgmt::V2016_06_01::Models::EdifactEnvelopeSettings
          end
          def integration_account_map_properties_parameters_schema
            Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountMapPropertiesParametersSchema
          end
          def edifact_acknowledgement_settings
            Azure::Logic::Mgmt::V2016_06_01::Models::EdifactAcknowledgementSettings
          end
          def integration_account_map_list_result
            Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountMapListResult
          end
          def edifact_message_filter
            Azure::Logic::Mgmt::V2016_06_01::Models::EdifactMessageFilter
          end
          def business_identity
            Azure::Logic::Mgmt::V2016_06_01::Models::BusinessIdentity
          end
          def edifact_processing_settings
            Azure::Logic::Mgmt::V2016_06_01::Models::EdifactProcessingSettings
          end
          def partner_content
            Azure::Logic::Mgmt::V2016_06_01::Models::PartnerContent
          end
          def edifact_envelope_override
            Azure::Logic::Mgmt::V2016_06_01::Models::EdifactEnvelopeOverride
          end
          def integration_account_partner_list_result
            Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountPartnerListResult
          end
          def edifact_message_identifier
            Azure::Logic::Mgmt::V2016_06_01::Models::EdifactMessageIdentifier
          end
          def as2_message_connection_settings
            Azure::Logic::Mgmt::V2016_06_01::Models::AS2MessageConnectionSettings
          end
          def edifact_schema_reference
            Azure::Logic::Mgmt::V2016_06_01::Models::EdifactSchemaReference
          end
          def as2_mdn_settings
            Azure::Logic::Mgmt::V2016_06_01::Models::AS2MdnSettings
          end
          def edifact_validation_override
            Azure::Logic::Mgmt::V2016_06_01::Models::EdifactValidationOverride
          end
          def as2_validation_settings
            Azure::Logic::Mgmt::V2016_06_01::Models::AS2ValidationSettings
          end
          def edifact_delimiter_override
            Azure::Logic::Mgmt::V2016_06_01::Models::EdifactDelimiterOverride
          end
          def as2_error_settings
            Azure::Logic::Mgmt::V2016_06_01::Models::AS2ErrorSettings
          end
          def edifact_protocol_settings
            Azure::Logic::Mgmt::V2016_06_01::Models::EdifactProtocolSettings
          end
          def edifact_one_way_agreement
            Azure::Logic::Mgmt::V2016_06_01::Models::EdifactOneWayAgreement
          end
          def workflow_trigger_recurrence
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerRecurrence
          end
          def edifact_agreement_content
            Azure::Logic::Mgmt::V2016_06_01::Models::EdifactAgreementContent
          end
          def workflow_trigger_list_callback_url_queries
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerListCallbackUrlQueries
          end
          def response
            Azure::Logic::Mgmt::V2016_06_01::Models::Response
          end
          def agreement_content
            Azure::Logic::Mgmt::V2016_06_01::Models::AgreementContent
          end
          def operation_result_properties
            Azure::Logic::Mgmt::V2016_06_01::Models::OperationResultProperties
          end
          def workflow_run_trigger
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowRunTrigger
          end
          def workflow_run_list_result
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowRunListResult
          end
          def integration_account_agreement_filter
            Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountAgreementFilter
          end
          def integration_account_agreement_list_result
            Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountAgreementListResult
          end
          def key_vault_key_reference_key_vault
            Azure::Logic::Mgmt::V2016_06_01::Models::KeyVaultKeyReferenceKeyVault
          end
          def generate_upgraded_definition_parameters
            Azure::Logic::Mgmt::V2016_06_01::Models::GenerateUpgradedDefinitionParameters
          end
          def batch_configuration_collection
            Azure::Logic::Mgmt::V2016_06_01::Models::BatchConfigurationCollection
          end
          def workflow_run_action_repetition_definition_collection
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowRunActionRepetitionDefinitionCollection
          end
          def integration_account_schema_filter
            Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountSchemaFilter
          end
          def get_callback_url_parameters
            Azure::Logic::Mgmt::V2016_06_01::Models::GetCallbackUrlParameters
          end
          def integration_account_map_filter
            Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountMapFilter
          end
          def integration_account_session_filter
            Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountSessionFilter
          end
          def json_schema
            Azure::Logic::Mgmt::V2016_06_01::Models::JsonSchema
          end
          def repetition_index
            Azure::Logic::Mgmt::V2016_06_01::Models::RepetitionIndex
          end
          def as2_acknowledgement_connection_settings
            Azure::Logic::Mgmt::V2016_06_01::Models::AS2AcknowledgementConnectionSettings
          end
          def integration_account_certificate_list_result
            Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountCertificateListResult
          end
          def integration_account_session_list_result
            Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountSessionListResult
          end
          def recurrence_schedule_occurrence
            Azure::Logic::Mgmt::V2016_06_01::Models::RecurrenceScheduleOccurrence
          end
          def correlation
            Azure::Logic::Mgmt::V2016_06_01::Models::Correlation
          end
          def error_info
            Azure::Logic::Mgmt::V2016_06_01::Models::ErrorInfo
          end
          def workflow_run_action_list_result
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowRunActionListResult
          end
          def list_key_vault_keys_definition
            Azure::Logic::Mgmt::V2016_06_01::Models::ListKeyVaultKeysDefinition
          end
          def as2_envelope_settings
            Azure::Logic::Mgmt::V2016_06_01::Models::AS2EnvelopeSettings
          end
          def artifact_properties
            Azure::Logic::Mgmt::V2016_06_01::Models::ArtifactProperties
          end
          def request
            Azure::Logic::Mgmt::V2016_06_01::Models::Request
          end
          def key_vault_key
            Azure::Logic::Mgmt::V2016_06_01::Models::KeyVaultKey
          end
          def key_vault_key_attributes
            Azure::Logic::Mgmt::V2016_06_01::Models::KeyVaultKeyAttributes
          end
          def as2_security_settings
            Azure::Logic::Mgmt::V2016_06_01::Models::AS2SecuritySettings
          end
          def workflow_trigger_filter
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerFilter
          end
          def tracking_event_error_info
            Azure::Logic::Mgmt::V2016_06_01::Models::TrackingEventErrorInfo
          end
          def b2_bpartner_content
            Azure::Logic::Mgmt::V2016_06_01::Models::B2BPartnerContent
          end
          def assembly_collection
            Azure::Logic::Mgmt::V2016_06_01::Models::AssemblyCollection
          end
          def tracking_events_definition
            Azure::Logic::Mgmt::V2016_06_01::Models::TrackingEventsDefinition
          end
          def key_vault_key_collection
            Azure::Logic::Mgmt::V2016_06_01::Models::KeyVaultKeyCollection
          end
          def access_key_regenerate_action_definition
            Azure::Logic::Mgmt::V2016_06_01::Models::AccessKeyRegenerateActionDefinition
          end
          def batch_release_criteria
            Azure::Logic::Mgmt::V2016_06_01::Models::BatchReleaseCriteria
          end
          def tracking_event
            Azure::Logic::Mgmt::V2016_06_01::Models::TrackingEvent
          end
          def workflow_trigger_history_list_result
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerHistoryListResult
          end
          def expression
            Azure::Logic::Mgmt::V2016_06_01::Models::Expression
          end
          def workflow_filter
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowFilter
          end
          def expression_traces
            Azure::Logic::Mgmt::V2016_06_01::Models::ExpressionTraces
          end
          def workflow
            Azure::Logic::Mgmt::V2016_06_01::Models::Workflow
          end
          def set_trigger_state_action_definition
            Azure::Logic::Mgmt::V2016_06_01::Models::SetTriggerStateActionDefinition
          end
          def workflow_trigger
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTrigger
          end
          def workflow_trigger_history
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerHistory
          end
          def integration_account_partner_filter
            Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountPartnerFilter
          end
          def workflow_run
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowRun
          end
          def workflow_run_action
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowRunAction
          end
          def workflow_version
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowVersion
          end
          def integration_account_schema
            Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountSchema
          end
          def integration_account_map
            Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountMap
          end
          def workflow_output_parameter
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowOutputParameter
          end
          def integration_account_agreement
            Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountAgreement
          end
          def integration_account_certificate
            Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountCertificate
          end
          def integration_account
            Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccount
          end
          def expression_root
            Azure::Logic::Mgmt::V2016_06_01::Models::ExpressionRoot
          end
          def azure_resource_error_info
            Azure::Logic::Mgmt::V2016_06_01::Models::AzureResourceErrorInfo
          end
          def integration_account_partner
            Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountPartner
          end
          def run_action_correlation
            Azure::Logic::Mgmt::V2016_06_01::Models::RunActionCorrelation
          end
          def assembly_properties
            Azure::Logic::Mgmt::V2016_06_01::Models::AssemblyProperties
          end
          def integration_account_session
            Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountSession
          end
          def artifact_content_properties_definition
            Azure::Logic::Mgmt::V2016_06_01::Models::ArtifactContentPropertiesDefinition
          end
          def batch_configuration_properties
            Azure::Logic::Mgmt::V2016_06_01::Models::BatchConfigurationProperties
          end
          def workflow_run_action_repetition_definition
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowRunActionRepetitionDefinition
          end
          def request_history
            Azure::Logic::Mgmt::V2016_06_01::Models::RequestHistory
          end
          def workflow_provisioning_state
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowProvisioningState
          end
          def key_vault_reference
            Azure::Logic::Mgmt::V2016_06_01::Models::KeyVaultReference
          end
          def workflow_state
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowState
          end
          def parameter_type
            Azure::Logic::Mgmt::V2016_06_01::Models::ParameterType
          end
          def batch_configuration
            Azure::Logic::Mgmt::V2016_06_01::Models::BatchConfiguration
          end
          def assembly_definition
            Azure::Logic::Mgmt::V2016_06_01::Models::AssemblyDefinition
          end
          def workflow_trigger_provisioning_state
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerProvisioningState
          end
          def workflow_status
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowStatus
          end
          def recurrence_frequency
            Azure::Logic::Mgmt::V2016_06_01::Models::RecurrenceFrequency
          end
          def days_of_week
            Azure::Logic::Mgmt::V2016_06_01::Models::DaysOfWeek
          end
          def day_of_week
            Azure::Logic::Mgmt::V2016_06_01::Models::DayOfWeek
          end
          def integration_account_sku_name
            Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountSkuName
          end
          def schema_type
            Azure::Logic::Mgmt::V2016_06_01::Models::SchemaType
          end
          def agreement_type
            Azure::Logic::Mgmt::V2016_06_01::Models::AgreementType
          end
          def partner_type
            Azure::Logic::Mgmt::V2016_06_01::Models::PartnerType
          end
          def signing_algorithm
            Azure::Logic::Mgmt::V2016_06_01::Models::SigningAlgorithm
          end
          def trailing_separator_policy
            Azure::Logic::Mgmt::V2016_06_01::Models::TrailingSeparatorPolicy
          end
          def encryption_algorithm
            Azure::Logic::Mgmt::V2016_06_01::Models::EncryptionAlgorithm
          end
          def x12_character_set
            Azure::Logic::Mgmt::V2016_06_01::Models::X12CharacterSet
          end
          def hashing_algorithm
            Azure::Logic::Mgmt::V2016_06_01::Models::HashingAlgorithm
          end
          def map_type
            Azure::Logic::Mgmt::V2016_06_01::Models::MapType
          end
          def x12_time_format
            Azure::Logic::Mgmt::V2016_06_01::Models::X12TimeFormat
          end
          def x12_date_format
            Azure::Logic::Mgmt::V2016_06_01::Models::X12DateFormat
          end
          def error_response
            Azure::Logic::Mgmt::V2016_06_01::Models::ErrorResponse
          end
          def usage_indicator
            Azure::Logic::Mgmt::V2016_06_01::Models::UsageIndicator
          end
          def message_filter_type
            Azure::Logic::Mgmt::V2016_06_01::Models::MessageFilterType
          end
          def edifact_character_set
            Azure::Logic::Mgmt::V2016_06_01::Models::EdifactCharacterSet
          end
          def edifact_decimal_indicator
            Azure::Logic::Mgmt::V2016_06_01::Models::EdifactDecimalIndicator
          end
          def segment_terminator_suffix
            Azure::Logic::Mgmt::V2016_06_01::Models::SegmentTerminatorSuffix
          end
          def event_level
            Azure::Logic::Mgmt::V2016_06_01::Models::EventLevel
          end
          def tracking_record_type
            Azure::Logic::Mgmt::V2016_06_01::Models::TrackingRecordType
          end
          def track_events_operation_options
            Azure::Logic::Mgmt::V2016_06_01::Models::TrackEventsOperationOptions
          end
          def access_key_type
            Azure::Logic::Mgmt::V2016_06_01::Models::AccessKeyType
          end
        end
      end
    end
  end
end
