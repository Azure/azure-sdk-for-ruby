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
      WorkflowRunActionScopedRepetitions = Azure::Logic::Mgmt::V2016_06_01::WorkflowRunActionScopedRepetitions
      WorkflowRunOperations = Azure::Logic::Mgmt::V2016_06_01::WorkflowRunOperations
      IntegrationAccounts = Azure::Logic::Mgmt::V2016_06_01::IntegrationAccounts
      IntegrationAccountAssemblies = Azure::Logic::Mgmt::V2016_06_01::IntegrationAccountAssemblies
      IntegrationAccountBatchConfigurations = Azure::Logic::Mgmt::V2016_06_01::IntegrationAccountBatchConfigurations
      Schemas = Azure::Logic::Mgmt::V2016_06_01::Schemas
      Maps = Azure::Logic::Mgmt::V2016_06_01::Maps
      Partners = Azure::Logic::Mgmt::V2016_06_01::Partners
      Agreements = Azure::Logic::Mgmt::V2016_06_01::Agreements
      Certificates = Azure::Logic::Mgmt::V2016_06_01::Certificates
      Sessions = Azure::Logic::Mgmt::V2016_06_01::Sessions

      module Models
        RecurrenceFrequency = Azure::Logic::Mgmt::V2016_06_01::Models::RecurrenceFrequency
        DaysOfWeek = Azure::Logic::Mgmt::V2016_06_01::Models::DaysOfWeek
        DayOfWeek = Azure::Logic::Mgmt::V2016_06_01::Models::DayOfWeek
        IntegrationAccountSkuName = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountSkuName
        SchemaType = Azure::Logic::Mgmt::V2016_06_01::Models::SchemaType
        MapType = Azure::Logic::Mgmt::V2016_06_01::Models::MapType
        PartnerType = Azure::Logic::Mgmt::V2016_06_01::Models::PartnerType
        AgreementType = Azure::Logic::Mgmt::V2016_06_01::Models::AgreementType
        HashingAlgorithm = Azure::Logic::Mgmt::V2016_06_01::Models::HashingAlgorithm
        EncryptionAlgorithm = Azure::Logic::Mgmt::V2016_06_01::Models::EncryptionAlgorithm
        SigningAlgorithm = Azure::Logic::Mgmt::V2016_06_01::Models::SigningAlgorithm
        TrailingSeparatorPolicy = Azure::Logic::Mgmt::V2016_06_01::Models::TrailingSeparatorPolicy
        X12CharacterSet = Azure::Logic::Mgmt::V2016_06_01::Models::X12CharacterSet
        SegmentTerminatorSuffix = Azure::Logic::Mgmt::V2016_06_01::Models::SegmentTerminatorSuffix
        X12DateFormat = Azure::Logic::Mgmt::V2016_06_01::Models::X12DateFormat
        KeyVaultReference = Azure::Logic::Mgmt::V2016_06_01::Models::KeyVaultReference
        UsageIndicator = Azure::Logic::Mgmt::V2016_06_01::Models::UsageIndicator
        X12TimeFormat = Azure::Logic::Mgmt::V2016_06_01::Models::X12TimeFormat
        ContentHash = Azure::Logic::Mgmt::V2016_06_01::Models::ContentHash
        MessageFilterType = Azure::Logic::Mgmt::V2016_06_01::Models::MessageFilterType
        EdifactCharacterSet = Azure::Logic::Mgmt::V2016_06_01::Models::EdifactCharacterSet
        EdifactDecimalIndicator = Azure::Logic::Mgmt::V2016_06_01::Models::EdifactDecimalIndicator
        TrackEventsOperationOptions = Azure::Logic::Mgmt::V2016_06_01::Models::TrackEventsOperationOptions
        EventLevel = Azure::Logic::Mgmt::V2016_06_01::Models::EventLevel
        TrackingRecordType = Azure::Logic::Mgmt::V2016_06_01::Models::TrackingRecordType
        AccessKeyType = Azure::Logic::Mgmt::V2016_06_01::Models::AccessKeyType
        ContentLink = Azure::Logic::Mgmt::V2016_06_01::Models::ContentLink
        OperationDisplay = Azure::Logic::Mgmt::V2016_06_01::Models::OperationDisplay
        OperationListResult = Azure::Logic::Mgmt::V2016_06_01::Models::OperationListResult
        ErrorResponse = Azure::Logic::Mgmt::V2016_06_01::Models::ErrorResponse
        Operation = Azure::Logic::Mgmt::V2016_06_01::Models::Operation
        Sku = Azure::Logic::Mgmt::V2016_06_01::Models::Sku
        Resource = Azure::Logic::Mgmt::V2016_06_01::Models::Resource
        SubResource = Azure::Logic::Mgmt::V2016_06_01::Models::SubResource
        SkuName = Azure::Logic::Mgmt::V2016_06_01::Models::SkuName
        OperationResult = Azure::Logic::Mgmt::V2016_06_01::Models::OperationResult
        KeyType = Azure::Logic::Mgmt::V2016_06_01::Models::KeyType
        X12SecuritySettings = Azure::Logic::Mgmt::V2016_06_01::Models::X12SecuritySettings
        X12ProcessingSettings = Azure::Logic::Mgmt::V2016_06_01::Models::X12ProcessingSettings
        ResourceReference = Azure::Logic::Mgmt::V2016_06_01::Models::ResourceReference
        X12EnvelopeOverride = Azure::Logic::Mgmt::V2016_06_01::Models::X12EnvelopeOverride
        WorkflowParameter = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowParameter
        X12ValidationOverride = Azure::Logic::Mgmt::V2016_06_01::Models::X12ValidationOverride
        WorkflowFilter = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowFilter
        X12MessageIdentifier = Azure::Logic::Mgmt::V2016_06_01::Models::X12MessageIdentifier
        AS2ProtocolSettings = Azure::Logic::Mgmt::V2016_06_01::Models::AS2ProtocolSettings
        AS2OneWayAgreement = Azure::Logic::Mgmt::V2016_06_01::Models::AS2OneWayAgreement
        RecurrenceScheduleOccurrence = Azure::Logic::Mgmt::V2016_06_01::Models::RecurrenceScheduleOccurrence
        AS2AgreementContent = Azure::Logic::Mgmt::V2016_06_01::Models::AS2AgreementContent
        WorkflowTriggerRecurrence = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerRecurrence
        X12ValidationSettings = Azure::Logic::Mgmt::V2016_06_01::Models::X12ValidationSettings
        WorkflowTriggerFilter = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerFilter
        X12FramingSettings = Azure::Logic::Mgmt::V2016_06_01::Models::X12FramingSettings
        WorkflowTriggerListCallbackUrlQueries = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerListCallbackUrlQueries
        X12EnvelopeSettings = Azure::Logic::Mgmt::V2016_06_01::Models::X12EnvelopeSettings
        Correlation = Azure::Logic::Mgmt::V2016_06_01::Models::Correlation
        X12AcknowledgementSettings = Azure::Logic::Mgmt::V2016_06_01::Models::X12AcknowledgementSettings
        X12MessageFilter = Azure::Logic::Mgmt::V2016_06_01::Models::X12MessageFilter
        WorkflowTriggerHistoryListResult = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerHistoryListResult
        WorkflowRunTrigger = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowRunTrigger
        ArtifactProperties = Azure::Logic::Mgmt::V2016_06_01::Models::ArtifactProperties
        WorkflowRunFilter = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowRunFilter
        AccessKeyRegenerateActionDefinition = Azure::Logic::Mgmt::V2016_06_01::Models::AccessKeyRegenerateActionDefinition
        ErrorProperties = Azure::Logic::Mgmt::V2016_06_01::Models::ErrorProperties
        WorkflowListResult = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowListResult
        RetryHistory = Azure::Logic::Mgmt::V2016_06_01::Models::RetryHistory
        RepetitionIndex = Azure::Logic::Mgmt::V2016_06_01::Models::RepetitionIndex
        WorkflowRunActionFilter = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowRunActionFilter
        X12SchemaReference = Azure::Logic::Mgmt::V2016_06_01::Models::X12SchemaReference
        RegenerateActionParameter = Azure::Logic::Mgmt::V2016_06_01::Models::RegenerateActionParameter
        X12DelimiterOverrides = Azure::Logic::Mgmt::V2016_06_01::Models::X12DelimiterOverrides
        IntegrationAccountSku = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountSku
        X12ProtocolSettings = Azure::Logic::Mgmt::V2016_06_01::Models::X12ProtocolSettings
        IntegrationAccountListResult = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountListResult
        X12OneWayAgreement = Azure::Logic::Mgmt::V2016_06_01::Models::X12OneWayAgreement
        CallbackUrl = Azure::Logic::Mgmt::V2016_06_01::Models::CallbackUrl
        X12AgreementContent = Azure::Logic::Mgmt::V2016_06_01::Models::X12AgreementContent
        IntegrationAccountSchemaListResult = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountSchemaListResult
        EdifactValidationSettings = Azure::Logic::Mgmt::V2016_06_01::Models::EdifactValidationSettings
        IntegrationAccountMapPropertiesParametersSchema = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountMapPropertiesParametersSchema
        EdifactFramingSettings = Azure::Logic::Mgmt::V2016_06_01::Models::EdifactFramingSettings
        IntegrationAccountMapListResult = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountMapListResult
        EdifactEnvelopeSettings = Azure::Logic::Mgmt::V2016_06_01::Models::EdifactEnvelopeSettings
        BusinessIdentity = Azure::Logic::Mgmt::V2016_06_01::Models::BusinessIdentity
        EdifactAcknowledgementSettings = Azure::Logic::Mgmt::V2016_06_01::Models::EdifactAcknowledgementSettings
        PartnerContent = Azure::Logic::Mgmt::V2016_06_01::Models::PartnerContent
        EdifactMessageFilter = Azure::Logic::Mgmt::V2016_06_01::Models::EdifactMessageFilter
        IntegrationAccountPartnerListResult = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountPartnerListResult
        EdifactProcessingSettings = Azure::Logic::Mgmt::V2016_06_01::Models::EdifactProcessingSettings
        AS2MessageConnectionSettings = Azure::Logic::Mgmt::V2016_06_01::Models::AS2MessageConnectionSettings
        EdifactEnvelopeOverride = Azure::Logic::Mgmt::V2016_06_01::Models::EdifactEnvelopeOverride
        AS2MdnSettings = Azure::Logic::Mgmt::V2016_06_01::Models::AS2MdnSettings
        EdifactMessageIdentifier = Azure::Logic::Mgmt::V2016_06_01::Models::EdifactMessageIdentifier
        AS2ValidationSettings = Azure::Logic::Mgmt::V2016_06_01::Models::AS2ValidationSettings
        EdifactSchemaReference = Azure::Logic::Mgmt::V2016_06_01::Models::EdifactSchemaReference
        AS2ErrorSettings = Azure::Logic::Mgmt::V2016_06_01::Models::AS2ErrorSettings
        EdifactValidationOverride = Azure::Logic::Mgmt::V2016_06_01::Models::EdifactValidationOverride
        RecurrenceSchedule = Azure::Logic::Mgmt::V2016_06_01::Models::RecurrenceSchedule
        EdifactDelimiterOverride = Azure::Logic::Mgmt::V2016_06_01::Models::EdifactDelimiterOverride
        WorkflowTriggerListResult = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerListResult
        EdifactProtocolSettings = Azure::Logic::Mgmt::V2016_06_01::Models::EdifactProtocolSettings
        EdifactOneWayAgreement = Azure::Logic::Mgmt::V2016_06_01::Models::EdifactOneWayAgreement
        WorkflowTriggerHistoryFilter = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerHistoryFilter
        EdifactAgreementContent = Azure::Logic::Mgmt::V2016_06_01::Models::EdifactAgreementContent
        WorkflowRunListResult = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowRunListResult
        AgreementContent = Azure::Logic::Mgmt::V2016_06_01::Models::AgreementContent
        AssemblyCollection = Azure::Logic::Mgmt::V2016_06_01::Models::AssemblyCollection
        ErrorInfo = Azure::Logic::Mgmt::V2016_06_01::Models::ErrorInfo
        GenerateUpgradedDefinitionParameters = Azure::Logic::Mgmt::V2016_06_01::Models::GenerateUpgradedDefinitionParameters
        IntegrationAccountAgreementListResult = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountAgreementListResult
        GetCallbackUrlParameters = Azure::Logic::Mgmt::V2016_06_01::Models::GetCallbackUrlParameters
        IntegrationAccountAgreementFilter = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountAgreementFilter
        IntegrationAccountSchemaFilter = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountSchemaFilter
        KeyVaultKeyReferenceKeyVault = Azure::Logic::Mgmt::V2016_06_01::Models::KeyVaultKeyReferenceKeyVault
        IntegrationAccountMapFilter = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountMapFilter
        WorkflowRunActionRepetitionDefinitionCollection = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowRunActionRepetitionDefinitionCollection
        Expression = Azure::Logic::Mgmt::V2016_06_01::Models::Expression
        AS2AcknowledgementConnectionSettings = Azure::Logic::Mgmt::V2016_06_01::Models::AS2AcknowledgementConnectionSettings
        IntegrationAccountCertificateListResult = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountCertificateListResult
        AS2EnvelopeSettings = Azure::Logic::Mgmt::V2016_06_01::Models::AS2EnvelopeSettings
        KeyVaultKeyReference = Azure::Logic::Mgmt::V2016_06_01::Models::KeyVaultKeyReference
        IntegrationAccountSessionFilter = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountSessionFilter
        ExpressionTraces = Azure::Logic::Mgmt::V2016_06_01::Models::ExpressionTraces
        BatchConfigurationCollection = Azure::Logic::Mgmt::V2016_06_01::Models::BatchConfigurationCollection
        IntegrationAccountSessionListResult = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountSessionListResult
        JsonSchema = Azure::Logic::Mgmt::V2016_06_01::Models::JsonSchema
        OperationResultProperties = Azure::Logic::Mgmt::V2016_06_01::Models::OperationResultProperties
        IntegrationAccountPartnerFilter = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountPartnerFilter
        SetTriggerStateActionDefinition = Azure::Logic::Mgmt::V2016_06_01::Models::SetTriggerStateActionDefinition
        WorkflowVersionListResult = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowVersionListResult
        ListKeyVaultKeysDefinition = Azure::Logic::Mgmt::V2016_06_01::Models::ListKeyVaultKeysDefinition
        BatchReleaseCriteria = Azure::Logic::Mgmt::V2016_06_01::Models::BatchReleaseCriteria
        KeyVaultKeyAttributes = Azure::Logic::Mgmt::V2016_06_01::Models::KeyVaultKeyAttributes
        RunCorrelation = Azure::Logic::Mgmt::V2016_06_01::Models::RunCorrelation
        KeyVaultKey = Azure::Logic::Mgmt::V2016_06_01::Models::KeyVaultKey
        AS2SecuritySettings = Azure::Logic::Mgmt::V2016_06_01::Models::AS2SecuritySettings
        KeyVaultKeyCollection = Azure::Logic::Mgmt::V2016_06_01::Models::KeyVaultKeyCollection
        WorkflowRunActionListResult = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowRunActionListResult
        TrackingEventErrorInfo = Azure::Logic::Mgmt::V2016_06_01::Models::TrackingEventErrorInfo
        WorkflowTriggerCallbackUrl = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerCallbackUrl
        TrackingEvent = Azure::Logic::Mgmt::V2016_06_01::Models::TrackingEvent
        B2BPartnerContent = Azure::Logic::Mgmt::V2016_06_01::Models::B2BPartnerContent
        TrackingEventsDefinition = Azure::Logic::Mgmt::V2016_06_01::Models::TrackingEventsDefinition
        Workflow = Azure::Logic::Mgmt::V2016_06_01::Models::Workflow
        WorkflowVersion = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowVersion
        WorkflowTrigger = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTrigger
        WorkflowTriggerHistory = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerHistory
        WorkflowOutputParameter = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowOutputParameter
        WorkflowRun = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowRun
        WorkflowRunAction = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowRunAction
        IntegrationAccount = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccount
        IntegrationAccountSchema = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountSchema
        IntegrationAccountMap = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountMap
        IntegrationAccountPartner = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountPartner
        IntegrationAccountAgreement = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountAgreement
        IntegrationAccountCertificate = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountCertificate
        IntegrationAccountSession = Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountSession
        ExpressionRoot = Azure::Logic::Mgmt::V2016_06_01::Models::ExpressionRoot
        AzureResourceErrorInfo = Azure::Logic::Mgmt::V2016_06_01::Models::AzureResourceErrorInfo
        WorkflowRunActionRepetitionDefinition = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowRunActionRepetitionDefinition
        RunActionCorrelation = Azure::Logic::Mgmt::V2016_06_01::Models::RunActionCorrelation
        AssemblyDefinition = Azure::Logic::Mgmt::V2016_06_01::Models::AssemblyDefinition
        ArtifactContentPropertiesDefinition = Azure::Logic::Mgmt::V2016_06_01::Models::ArtifactContentPropertiesDefinition
        AssemblyProperties = Azure::Logic::Mgmt::V2016_06_01::Models::AssemblyProperties
        BatchConfigurationProperties = Azure::Logic::Mgmt::V2016_06_01::Models::BatchConfigurationProperties
        BatchConfiguration = Azure::Logic::Mgmt::V2016_06_01::Models::BatchConfiguration
        WorkflowProvisioningState = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowProvisioningState
        WorkflowState = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowState
        ParameterType = Azure::Logic::Mgmt::V2016_06_01::Models::ParameterType
        WorkflowTriggerProvisioningState = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerProvisioningState
        WorkflowStatus = Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowStatus
      end

      class LogicManagementClass
        attr_reader :workflows, :workflow_versions, :workflow_triggers, :workflow_trigger_histories, :workflow_runs, :workflow_run_actions, :workflow_run_action_repetitions, :workflow_run_action_scoped_repetitions, :workflow_run_operations, :integration_accounts, :integration_account_assemblies, :integration_account_batch_configurations, :schemas, :maps, :partners, :agreements, :certificates, :sessions, :configurable, :base_url, :options, :model_classes

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
          @workflow_run_action_scoped_repetitions = @client_0.workflow_run_action_scoped_repetitions
          @workflow_run_operations = @client_0.workflow_run_operations
          @integration_accounts = @client_0.integration_accounts
          @integration_account_assemblies = @client_0.integration_account_assemblies
          @integration_account_batch_configurations = @client_0.integration_account_batch_configurations
          @schemas = @client_0.schemas
          @maps = @client_0.maps
          @partners = @client_0.partners
          @agreements = @client_0.agreements
          @certificates = @client_0.certificates
          @sessions = @client_0.sessions

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
          def map_type
            Azure::Logic::Mgmt::V2016_06_01::Models::MapType
          end
          def partner_type
            Azure::Logic::Mgmt::V2016_06_01::Models::PartnerType
          end
          def agreement_type
            Azure::Logic::Mgmt::V2016_06_01::Models::AgreementType
          end
          def hashing_algorithm
            Azure::Logic::Mgmt::V2016_06_01::Models::HashingAlgorithm
          end
          def encryption_algorithm
            Azure::Logic::Mgmt::V2016_06_01::Models::EncryptionAlgorithm
          end
          def signing_algorithm
            Azure::Logic::Mgmt::V2016_06_01::Models::SigningAlgorithm
          end
          def trailing_separator_policy
            Azure::Logic::Mgmt::V2016_06_01::Models::TrailingSeparatorPolicy
          end
          def x12_character_set
            Azure::Logic::Mgmt::V2016_06_01::Models::X12CharacterSet
          end
          def segment_terminator_suffix
            Azure::Logic::Mgmt::V2016_06_01::Models::SegmentTerminatorSuffix
          end
          def x12_date_format
            Azure::Logic::Mgmt::V2016_06_01::Models::X12DateFormat
          end
          def key_vault_reference
            Azure::Logic::Mgmt::V2016_06_01::Models::KeyVaultReference
          end
          def usage_indicator
            Azure::Logic::Mgmt::V2016_06_01::Models::UsageIndicator
          end
          def x12_time_format
            Azure::Logic::Mgmt::V2016_06_01::Models::X12TimeFormat
          end
          def content_hash
            Azure::Logic::Mgmt::V2016_06_01::Models::ContentHash
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
          def track_events_operation_options
            Azure::Logic::Mgmt::V2016_06_01::Models::TrackEventsOperationOptions
          end
          def event_level
            Azure::Logic::Mgmt::V2016_06_01::Models::EventLevel
          end
          def tracking_record_type
            Azure::Logic::Mgmt::V2016_06_01::Models::TrackingRecordType
          end
          def access_key_type
            Azure::Logic::Mgmt::V2016_06_01::Models::AccessKeyType
          end
          def content_link
            Azure::Logic::Mgmt::V2016_06_01::Models::ContentLink
          end
          def operation_display
            Azure::Logic::Mgmt::V2016_06_01::Models::OperationDisplay
          end
          def operation_list_result
            Azure::Logic::Mgmt::V2016_06_01::Models::OperationListResult
          end
          def error_response
            Azure::Logic::Mgmt::V2016_06_01::Models::ErrorResponse
          end
          def operation
            Azure::Logic::Mgmt::V2016_06_01::Models::Operation
          end
          def sku
            Azure::Logic::Mgmt::V2016_06_01::Models::Sku
          end
          def resource
            Azure::Logic::Mgmt::V2016_06_01::Models::Resource
          end
          def sub_resource
            Azure::Logic::Mgmt::V2016_06_01::Models::SubResource
          end
          def sku_name
            Azure::Logic::Mgmt::V2016_06_01::Models::SkuName
          end
          def operation_result
            Azure::Logic::Mgmt::V2016_06_01::Models::OperationResult
          end
          def key_type
            Azure::Logic::Mgmt::V2016_06_01::Models::KeyType
          end
          def x12_security_settings
            Azure::Logic::Mgmt::V2016_06_01::Models::X12SecuritySettings
          end
          def x12_processing_settings
            Azure::Logic::Mgmt::V2016_06_01::Models::X12ProcessingSettings
          end
          def resource_reference
            Azure::Logic::Mgmt::V2016_06_01::Models::ResourceReference
          end
          def x12_envelope_override
            Azure::Logic::Mgmt::V2016_06_01::Models::X12EnvelopeOverride
          end
          def workflow_parameter
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowParameter
          end
          def x12_validation_override
            Azure::Logic::Mgmt::V2016_06_01::Models::X12ValidationOverride
          end
          def workflow_filter
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowFilter
          end
          def x12_message_identifier
            Azure::Logic::Mgmt::V2016_06_01::Models::X12MessageIdentifier
          end
          def as2_protocol_settings
            Azure::Logic::Mgmt::V2016_06_01::Models::AS2ProtocolSettings
          end
          def as2_one_way_agreement
            Azure::Logic::Mgmt::V2016_06_01::Models::AS2OneWayAgreement
          end
          def recurrence_schedule_occurrence
            Azure::Logic::Mgmt::V2016_06_01::Models::RecurrenceScheduleOccurrence
          end
          def as2_agreement_content
            Azure::Logic::Mgmt::V2016_06_01::Models::AS2AgreementContent
          end
          def workflow_trigger_recurrence
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerRecurrence
          end
          def x12_validation_settings
            Azure::Logic::Mgmt::V2016_06_01::Models::X12ValidationSettings
          end
          def workflow_trigger_filter
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerFilter
          end
          def x12_framing_settings
            Azure::Logic::Mgmt::V2016_06_01::Models::X12FramingSettings
          end
          def workflow_trigger_list_callback_url_queries
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerListCallbackUrlQueries
          end
          def x12_envelope_settings
            Azure::Logic::Mgmt::V2016_06_01::Models::X12EnvelopeSettings
          end
          def correlation
            Azure::Logic::Mgmt::V2016_06_01::Models::Correlation
          end
          def x12_acknowledgement_settings
            Azure::Logic::Mgmt::V2016_06_01::Models::X12AcknowledgementSettings
          end
          def x12_message_filter
            Azure::Logic::Mgmt::V2016_06_01::Models::X12MessageFilter
          end
          def workflow_trigger_history_list_result
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerHistoryListResult
          end
          def workflow_run_trigger
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowRunTrigger
          end
          def artifact_properties
            Azure::Logic::Mgmt::V2016_06_01::Models::ArtifactProperties
          end
          def workflow_run_filter
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowRunFilter
          end
          def access_key_regenerate_action_definition
            Azure::Logic::Mgmt::V2016_06_01::Models::AccessKeyRegenerateActionDefinition
          end
          def error_properties
            Azure::Logic::Mgmt::V2016_06_01::Models::ErrorProperties
          end
          def workflow_list_result
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowListResult
          end
          def retry_history
            Azure::Logic::Mgmt::V2016_06_01::Models::RetryHistory
          end
          def repetition_index
            Azure::Logic::Mgmt::V2016_06_01::Models::RepetitionIndex
          end
          def workflow_run_action_filter
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowRunActionFilter
          end
          def x12_schema_reference
            Azure::Logic::Mgmt::V2016_06_01::Models::X12SchemaReference
          end
          def regenerate_action_parameter
            Azure::Logic::Mgmt::V2016_06_01::Models::RegenerateActionParameter
          end
          def x12_delimiter_overrides
            Azure::Logic::Mgmt::V2016_06_01::Models::X12DelimiterOverrides
          end
          def integration_account_sku
            Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountSku
          end
          def x12_protocol_settings
            Azure::Logic::Mgmt::V2016_06_01::Models::X12ProtocolSettings
          end
          def integration_account_list_result
            Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountListResult
          end
          def x12_one_way_agreement
            Azure::Logic::Mgmt::V2016_06_01::Models::X12OneWayAgreement
          end
          def callback_url
            Azure::Logic::Mgmt::V2016_06_01::Models::CallbackUrl
          end
          def x12_agreement_content
            Azure::Logic::Mgmt::V2016_06_01::Models::X12AgreementContent
          end
          def integration_account_schema_list_result
            Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountSchemaListResult
          end
          def edifact_validation_settings
            Azure::Logic::Mgmt::V2016_06_01::Models::EdifactValidationSettings
          end
          def integration_account_map_properties_parameters_schema
            Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountMapPropertiesParametersSchema
          end
          def edifact_framing_settings
            Azure::Logic::Mgmt::V2016_06_01::Models::EdifactFramingSettings
          end
          def integration_account_map_list_result
            Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountMapListResult
          end
          def edifact_envelope_settings
            Azure::Logic::Mgmt::V2016_06_01::Models::EdifactEnvelopeSettings
          end
          def business_identity
            Azure::Logic::Mgmt::V2016_06_01::Models::BusinessIdentity
          end
          def edifact_acknowledgement_settings
            Azure::Logic::Mgmt::V2016_06_01::Models::EdifactAcknowledgementSettings
          end
          def partner_content
            Azure::Logic::Mgmt::V2016_06_01::Models::PartnerContent
          end
          def edifact_message_filter
            Azure::Logic::Mgmt::V2016_06_01::Models::EdifactMessageFilter
          end
          def integration_account_partner_list_result
            Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountPartnerListResult
          end
          def edifact_processing_settings
            Azure::Logic::Mgmt::V2016_06_01::Models::EdifactProcessingSettings
          end
          def as2_message_connection_settings
            Azure::Logic::Mgmt::V2016_06_01::Models::AS2MessageConnectionSettings
          end
          def edifact_envelope_override
            Azure::Logic::Mgmt::V2016_06_01::Models::EdifactEnvelopeOverride
          end
          def as2_mdn_settings
            Azure::Logic::Mgmt::V2016_06_01::Models::AS2MdnSettings
          end
          def edifact_message_identifier
            Azure::Logic::Mgmt::V2016_06_01::Models::EdifactMessageIdentifier
          end
          def as2_validation_settings
            Azure::Logic::Mgmt::V2016_06_01::Models::AS2ValidationSettings
          end
          def edifact_schema_reference
            Azure::Logic::Mgmt::V2016_06_01::Models::EdifactSchemaReference
          end
          def as2_error_settings
            Azure::Logic::Mgmt::V2016_06_01::Models::AS2ErrorSettings
          end
          def edifact_validation_override
            Azure::Logic::Mgmt::V2016_06_01::Models::EdifactValidationOverride
          end
          def recurrence_schedule
            Azure::Logic::Mgmt::V2016_06_01::Models::RecurrenceSchedule
          end
          def edifact_delimiter_override
            Azure::Logic::Mgmt::V2016_06_01::Models::EdifactDelimiterOverride
          end
          def workflow_trigger_list_result
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerListResult
          end
          def edifact_protocol_settings
            Azure::Logic::Mgmt::V2016_06_01::Models::EdifactProtocolSettings
          end
          def edifact_one_way_agreement
            Azure::Logic::Mgmt::V2016_06_01::Models::EdifactOneWayAgreement
          end
          def workflow_trigger_history_filter
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerHistoryFilter
          end
          def edifact_agreement_content
            Azure::Logic::Mgmt::V2016_06_01::Models::EdifactAgreementContent
          end
          def workflow_run_list_result
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowRunListResult
          end
          def agreement_content
            Azure::Logic::Mgmt::V2016_06_01::Models::AgreementContent
          end
          def assembly_collection
            Azure::Logic::Mgmt::V2016_06_01::Models::AssemblyCollection
          end
          def error_info
            Azure::Logic::Mgmt::V2016_06_01::Models::ErrorInfo
          end
          def generate_upgraded_definition_parameters
            Azure::Logic::Mgmt::V2016_06_01::Models::GenerateUpgradedDefinitionParameters
          end
          def integration_account_agreement_list_result
            Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountAgreementListResult
          end
          def get_callback_url_parameters
            Azure::Logic::Mgmt::V2016_06_01::Models::GetCallbackUrlParameters
          end
          def integration_account_agreement_filter
            Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountAgreementFilter
          end
          def integration_account_schema_filter
            Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountSchemaFilter
          end
          def key_vault_key_reference_key_vault
            Azure::Logic::Mgmt::V2016_06_01::Models::KeyVaultKeyReferenceKeyVault
          end
          def integration_account_map_filter
            Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountMapFilter
          end
          def workflow_run_action_repetition_definition_collection
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowRunActionRepetitionDefinitionCollection
          end
          def expression
            Azure::Logic::Mgmt::V2016_06_01::Models::Expression
          end
          def as2_acknowledgement_connection_settings
            Azure::Logic::Mgmt::V2016_06_01::Models::AS2AcknowledgementConnectionSettings
          end
          def integration_account_certificate_list_result
            Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountCertificateListResult
          end
          def as2_envelope_settings
            Azure::Logic::Mgmt::V2016_06_01::Models::AS2EnvelopeSettings
          end
          def key_vault_key_reference
            Azure::Logic::Mgmt::V2016_06_01::Models::KeyVaultKeyReference
          end
          def integration_account_session_filter
            Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountSessionFilter
          end
          def expression_traces
            Azure::Logic::Mgmt::V2016_06_01::Models::ExpressionTraces
          end
          def batch_configuration_collection
            Azure::Logic::Mgmt::V2016_06_01::Models::BatchConfigurationCollection
          end
          def integration_account_session_list_result
            Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountSessionListResult
          end
          def json_schema
            Azure::Logic::Mgmt::V2016_06_01::Models::JsonSchema
          end
          def operation_result_properties
            Azure::Logic::Mgmt::V2016_06_01::Models::OperationResultProperties
          end
          def integration_account_partner_filter
            Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountPartnerFilter
          end
          def set_trigger_state_action_definition
            Azure::Logic::Mgmt::V2016_06_01::Models::SetTriggerStateActionDefinition
          end
          def workflow_version_list_result
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowVersionListResult
          end
          def list_key_vault_keys_definition
            Azure::Logic::Mgmt::V2016_06_01::Models::ListKeyVaultKeysDefinition
          end
          def batch_release_criteria
            Azure::Logic::Mgmt::V2016_06_01::Models::BatchReleaseCriteria
          end
          def key_vault_key_attributes
            Azure::Logic::Mgmt::V2016_06_01::Models::KeyVaultKeyAttributes
          end
          def run_correlation
            Azure::Logic::Mgmt::V2016_06_01::Models::RunCorrelation
          end
          def key_vault_key
            Azure::Logic::Mgmt::V2016_06_01::Models::KeyVaultKey
          end
          def as2_security_settings
            Azure::Logic::Mgmt::V2016_06_01::Models::AS2SecuritySettings
          end
          def key_vault_key_collection
            Azure::Logic::Mgmt::V2016_06_01::Models::KeyVaultKeyCollection
          end
          def workflow_run_action_list_result
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowRunActionListResult
          end
          def tracking_event_error_info
            Azure::Logic::Mgmt::V2016_06_01::Models::TrackingEventErrorInfo
          end
          def workflow_trigger_callback_url
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerCallbackUrl
          end
          def tracking_event
            Azure::Logic::Mgmt::V2016_06_01::Models::TrackingEvent
          end
          def b2_bpartner_content
            Azure::Logic::Mgmt::V2016_06_01::Models::B2BPartnerContent
          end
          def tracking_events_definition
            Azure::Logic::Mgmt::V2016_06_01::Models::TrackingEventsDefinition
          end
          def workflow
            Azure::Logic::Mgmt::V2016_06_01::Models::Workflow
          end
          def workflow_version
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowVersion
          end
          def workflow_trigger
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTrigger
          end
          def workflow_trigger_history
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerHistory
          end
          def workflow_output_parameter
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowOutputParameter
          end
          def workflow_run
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowRun
          end
          def workflow_run_action
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowRunAction
          end
          def integration_account
            Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccount
          end
          def integration_account_schema
            Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountSchema
          end
          def integration_account_map
            Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountMap
          end
          def integration_account_partner
            Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountPartner
          end
          def integration_account_agreement
            Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountAgreement
          end
          def integration_account_certificate
            Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountCertificate
          end
          def integration_account_session
            Azure::Logic::Mgmt::V2016_06_01::Models::IntegrationAccountSession
          end
          def expression_root
            Azure::Logic::Mgmt::V2016_06_01::Models::ExpressionRoot
          end
          def azure_resource_error_info
            Azure::Logic::Mgmt::V2016_06_01::Models::AzureResourceErrorInfo
          end
          def workflow_run_action_repetition_definition
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowRunActionRepetitionDefinition
          end
          def run_action_correlation
            Azure::Logic::Mgmt::V2016_06_01::Models::RunActionCorrelation
          end
          def assembly_definition
            Azure::Logic::Mgmt::V2016_06_01::Models::AssemblyDefinition
          end
          def artifact_content_properties_definition
            Azure::Logic::Mgmt::V2016_06_01::Models::ArtifactContentPropertiesDefinition
          end
          def assembly_properties
            Azure::Logic::Mgmt::V2016_06_01::Models::AssemblyProperties
          end
          def batch_configuration_properties
            Azure::Logic::Mgmt::V2016_06_01::Models::BatchConfigurationProperties
          end
          def batch_configuration
            Azure::Logic::Mgmt::V2016_06_01::Models::BatchConfiguration
          end
          def workflow_provisioning_state
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowProvisioningState
          end
          def workflow_state
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowState
          end
          def parameter_type
            Azure::Logic::Mgmt::V2016_06_01::Models::ParameterType
          end
          def workflow_trigger_provisioning_state
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowTriggerProvisioningState
          end
          def workflow_status
            Azure::Logic::Mgmt::V2016_06_01::Models::WorkflowStatus
          end
        end
      end
    end
  end
end
