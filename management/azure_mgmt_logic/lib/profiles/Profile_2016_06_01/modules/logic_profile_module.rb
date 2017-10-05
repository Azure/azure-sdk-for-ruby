# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_logic'


module Azure::Profiles::LogicModule::Management::Profile_2016_06_01
  module Logic
    Workflows = Azure::ARM::Logic::Api_2016_06_01::Workflows
    WorkflowVersions = Azure::ARM::Logic::Api_2016_06_01::WorkflowVersions
    WorkflowTriggers = Azure::ARM::Logic::Api_2016_06_01::WorkflowTriggers
    WorkflowTriggerHistories = Azure::ARM::Logic::Api_2016_06_01::WorkflowTriggerHistories
    WorkflowRuns = Azure::ARM::Logic::Api_2016_06_01::WorkflowRuns
    WorkflowRunActions = Azure::ARM::Logic::Api_2016_06_01::WorkflowRunActions
    IntegrationAccounts = Azure::ARM::Logic::Api_2016_06_01::IntegrationAccounts
    Schemas = Azure::ARM::Logic::Api_2016_06_01::Schemas
    Maps = Azure::ARM::Logic::Api_2016_06_01::Maps
    Partners = Azure::ARM::Logic::Api_2016_06_01::Partners
    Agreements = Azure::ARM::Logic::Api_2016_06_01::Agreements
    Certificates = Azure::ARM::Logic::Api_2016_06_01::Certificates
    Sessions = Azure::ARM::Logic::Api_2016_06_01::Sessions

    module Models
      IntegrationAccountPartnerFilter = Azure::ARM::Logic::Api_2016_06_01::Models::IntegrationAccountPartnerFilter
      AS2MessageConnectionSettings = Azure::ARM::Logic::Api_2016_06_01::Models::AS2MessageConnectionSettings
      ResourceReference = Azure::ARM::Logic::Api_2016_06_01::Models::ResourceReference
      AS2AcknowledgementConnectionSettings = Azure::ARM::Logic::Api_2016_06_01::Models::AS2AcknowledgementConnectionSettings
      WorkflowParameter = Azure::ARM::Logic::Api_2016_06_01::Models::WorkflowParameter
      AS2MdnSettings = Azure::ARM::Logic::Api_2016_06_01::Models::AS2MdnSettings
      WorkflowFilter = Azure::ARM::Logic::Api_2016_06_01::Models::WorkflowFilter
      AS2SecuritySettings = Azure::ARM::Logic::Api_2016_06_01::Models::AS2SecuritySettings
      KeyVaultKeyReferenceKeyVault = Azure::ARM::Logic::Api_2016_06_01::Models::KeyVaultKeyReferenceKeyVault
      WorkflowVersionListResult = Azure::ARM::Logic::Api_2016_06_01::Models::WorkflowVersionListResult
      IntegrationAccountPartnerListResult = Azure::ARM::Logic::Api_2016_06_01::Models::IntegrationAccountPartnerListResult
      RecurrenceSchedule = Azure::ARM::Logic::Api_2016_06_01::Models::RecurrenceSchedule
      Sku = Azure::ARM::Logic::Api_2016_06_01::Models::Sku
      WorkflowTriggerListResult = Azure::ARM::Logic::Api_2016_06_01::Models::WorkflowTriggerListResult
      WorkflowTriggerListCallbackUrlQueries = Azure::ARM::Logic::Api_2016_06_01::Models::WorkflowTriggerListCallbackUrlQueries
      IntegrationAccountAgreementListResult = Azure::ARM::Logic::Api_2016_06_01::Models::IntegrationAccountAgreementListResult
      Correlation = Azure::ARM::Logic::Api_2016_06_01::Models::Correlation
      WorkflowListResult = Azure::ARM::Logic::Api_2016_06_01::Models::WorkflowListResult
      ContentLink = Azure::ARM::Logic::Api_2016_06_01::Models::ContentLink
      IntegrationAccountAgreementFilter = Azure::ARM::Logic::Api_2016_06_01::Models::IntegrationAccountAgreementFilter
      WorkflowTriggerHistoryListResult = Azure::ARM::Logic::Api_2016_06_01::Models::WorkflowTriggerHistoryListResult
      AS2ValidationSettings = Azure::ARM::Logic::Api_2016_06_01::Models::AS2ValidationSettings
      WorkflowRunTrigger = Azure::ARM::Logic::Api_2016_06_01::Models::WorkflowRunTrigger
      AS2EnvelopeSettings = Azure::ARM::Logic::Api_2016_06_01::Models::AS2EnvelopeSettings
      OperationDisplay = Azure::ARM::Logic::Api_2016_06_01::Models::OperationDisplay
      AS2ErrorSettings = Azure::ARM::Logic::Api_2016_06_01::Models::AS2ErrorSettings
      WorkflowRunListResult = Azure::ARM::Logic::Api_2016_06_01::Models::WorkflowRunListResult
      AS2ProtocolSettings = Azure::ARM::Logic::Api_2016_06_01::Models::AS2ProtocolSettings
      ErrorResponse = Azure::ARM::Logic::Api_2016_06_01::Models::ErrorResponse
      AS2OneWayAgreement = Azure::ARM::Logic::Api_2016_06_01::Models::AS2OneWayAgreement
      IntegrationAccountSessionListResult = Azure::ARM::Logic::Api_2016_06_01::Models::IntegrationAccountSessionListResult
      AS2AgreementContent = Azure::ARM::Logic::Api_2016_06_01::Models::AS2AgreementContent
      WorkflowRunActionListResult = Azure::ARM::Logic::Api_2016_06_01::Models::WorkflowRunActionListResult
      X12ValidationSettings = Azure::ARM::Logic::Api_2016_06_01::Models::X12ValidationSettings
      GenerateUpgradedDefinitionParameters = Azure::ARM::Logic::Api_2016_06_01::Models::GenerateUpgradedDefinitionParameters
      X12FramingSettings = Azure::ARM::Logic::Api_2016_06_01::Models::X12FramingSettings
      IntegrationAccountSessionFilter = Azure::ARM::Logic::Api_2016_06_01::Models::IntegrationAccountSessionFilter
      X12EnvelopeSettings = Azure::ARM::Logic::Api_2016_06_01::Models::X12EnvelopeSettings
      GetCallbackUrlParameters = Azure::ARM::Logic::Api_2016_06_01::Models::GetCallbackUrlParameters
      X12AcknowledgementSettings = Azure::ARM::Logic::Api_2016_06_01::Models::X12AcknowledgementSettings
      IntegrationAccountCertificateListResult = Azure::ARM::Logic::Api_2016_06_01::Models::IntegrationAccountCertificateListResult
      X12MessageFilter = Azure::ARM::Logic::Api_2016_06_01::Models::X12MessageFilter
      IntegrationAccountSchemaFilter = Azure::ARM::Logic::Api_2016_06_01::Models::IntegrationAccountSchemaFilter
      X12SecuritySettings = Azure::ARM::Logic::Api_2016_06_01::Models::X12SecuritySettings
      KeyVaultKeyReference = Azure::ARM::Logic::Api_2016_06_01::Models::KeyVaultKeyReference
      X12ProcessingSettings = Azure::ARM::Logic::Api_2016_06_01::Models::X12ProcessingSettings
      IntegrationAccountMapFilter = Azure::ARM::Logic::Api_2016_06_01::Models::IntegrationAccountMapFilter
      X12EnvelopeOverride = Azure::ARM::Logic::Api_2016_06_01::Models::X12EnvelopeOverride
      B2BPartnerContent = Azure::ARM::Logic::Api_2016_06_01::Models::B2BPartnerContent
      X12ValidationOverride = Azure::ARM::Logic::Api_2016_06_01::Models::X12ValidationOverride
      RecurrenceScheduleOccurrence = Azure::ARM::Logic::Api_2016_06_01::Models::RecurrenceScheduleOccurrence
      X12MessageIdentifier = Azure::ARM::Logic::Api_2016_06_01::Models::X12MessageIdentifier
      WorkflowTriggerFilter = Azure::ARM::Logic::Api_2016_06_01::Models::WorkflowTriggerFilter
      X12SchemaReference = Azure::ARM::Logic::Api_2016_06_01::Models::X12SchemaReference
      ContentHash = Azure::ARM::Logic::Api_2016_06_01::Models::ContentHash
      X12DelimiterOverrides = Azure::ARM::Logic::Api_2016_06_01::Models::X12DelimiterOverrides
      WorkflowTriggerHistoryFilter = Azure::ARM::Logic::Api_2016_06_01::Models::WorkflowTriggerHistoryFilter
      X12ProtocolSettings = Azure::ARM::Logic::Api_2016_06_01::Models::X12ProtocolSettings
      WorkflowRunFilter = Azure::ARM::Logic::Api_2016_06_01::Models::WorkflowRunFilter
      X12OneWayAgreement = Azure::ARM::Logic::Api_2016_06_01::Models::X12OneWayAgreement
      RetryHistory = Azure::ARM::Logic::Api_2016_06_01::Models::RetryHistory
      X12AgreementContent = Azure::ARM::Logic::Api_2016_06_01::Models::X12AgreementContent
      RegenerateActionParameter = Azure::ARM::Logic::Api_2016_06_01::Models::RegenerateActionParameter
      EdifactValidationSettings = Azure::ARM::Logic::Api_2016_06_01::Models::EdifactValidationSettings
      IntegrationAccountListResult = Azure::ARM::Logic::Api_2016_06_01::Models::IntegrationAccountListResult
      EdifactFramingSettings = Azure::ARM::Logic::Api_2016_06_01::Models::EdifactFramingSettings
      IntegrationAccountSchemaListResult = Azure::ARM::Logic::Api_2016_06_01::Models::IntegrationAccountSchemaListResult
      EdifactEnvelopeSettings = Azure::ARM::Logic::Api_2016_06_01::Models::EdifactEnvelopeSettings
      IntegrationAccountMapListResult = Azure::ARM::Logic::Api_2016_06_01::Models::IntegrationAccountMapListResult
      EdifactAcknowledgementSettings = Azure::ARM::Logic::Api_2016_06_01::Models::EdifactAcknowledgementSettings
      PartnerContent = Azure::ARM::Logic::Api_2016_06_01::Models::PartnerContent
      EdifactMessageFilter = Azure::ARM::Logic::Api_2016_06_01::Models::EdifactMessageFilter
      WorkflowTriggerCallbackUrl = Azure::ARM::Logic::Api_2016_06_01::Models::WorkflowTriggerCallbackUrl
      EdifactProcessingSettings = Azure::ARM::Logic::Api_2016_06_01::Models::EdifactProcessingSettings
      Operation = Azure::ARM::Logic::Api_2016_06_01::Models::Operation
      EdifactEnvelopeOverride = Azure::ARM::Logic::Api_2016_06_01::Models::EdifactEnvelopeOverride
      WorkflowRunActionFilter = Azure::ARM::Logic::Api_2016_06_01::Models::WorkflowRunActionFilter
      EdifactMessageIdentifier = Azure::ARM::Logic::Api_2016_06_01::Models::EdifactMessageIdentifier
      CallbackUrl = Azure::ARM::Logic::Api_2016_06_01::Models::CallbackUrl
      EdifactSchemaReference = Azure::ARM::Logic::Api_2016_06_01::Models::EdifactSchemaReference
      BusinessIdentity = Azure::ARM::Logic::Api_2016_06_01::Models::BusinessIdentity
      EdifactValidationOverride = Azure::ARM::Logic::Api_2016_06_01::Models::EdifactValidationOverride
      OperationListResult = Azure::ARM::Logic::Api_2016_06_01::Models::OperationListResult
      EdifactDelimiterOverride = Azure::ARM::Logic::Api_2016_06_01::Models::EdifactDelimiterOverride
      IntegrationAccountSku = Azure::ARM::Logic::Api_2016_06_01::Models::IntegrationAccountSku
      EdifactProtocolSettings = Azure::ARM::Logic::Api_2016_06_01::Models::EdifactProtocolSettings
      WorkflowTriggerRecurrence = Azure::ARM::Logic::Api_2016_06_01::Models::WorkflowTriggerRecurrence
      EdifactOneWayAgreement = Azure::ARM::Logic::Api_2016_06_01::Models::EdifactOneWayAgreement
      IntegrationAccountMapPropertiesParametersSchema = Azure::ARM::Logic::Api_2016_06_01::Models::IntegrationAccountMapPropertiesParametersSchema
      EdifactAgreementContent = Azure::ARM::Logic::Api_2016_06_01::Models::EdifactAgreementContent
      ErrorProperties = Azure::ARM::Logic::Api_2016_06_01::Models::ErrorProperties
      AgreementContent = Azure::ARM::Logic::Api_2016_06_01::Models::AgreementContent
      Workflow = Azure::ARM::Logic::Api_2016_06_01::Models::Workflow
      WorkflowVersion = Azure::ARM::Logic::Api_2016_06_01::Models::WorkflowVersion
      WorkflowTrigger = Azure::ARM::Logic::Api_2016_06_01::Models::WorkflowTrigger
      WorkflowTriggerHistory = Azure::ARM::Logic::Api_2016_06_01::Models::WorkflowTriggerHistory
      WorkflowOutputParameter = Azure::ARM::Logic::Api_2016_06_01::Models::WorkflowOutputParameter
      WorkflowRun = Azure::ARM::Logic::Api_2016_06_01::Models::WorkflowRun
      WorkflowRunAction = Azure::ARM::Logic::Api_2016_06_01::Models::WorkflowRunAction
      IntegrationAccount = Azure::ARM::Logic::Api_2016_06_01::Models::IntegrationAccount
      IntegrationAccountSchema = Azure::ARM::Logic::Api_2016_06_01::Models::IntegrationAccountSchema
      IntegrationAccountMap = Azure::ARM::Logic::Api_2016_06_01::Models::IntegrationAccountMap
      IntegrationAccountPartner = Azure::ARM::Logic::Api_2016_06_01::Models::IntegrationAccountPartner
      IntegrationAccountAgreement = Azure::ARM::Logic::Api_2016_06_01::Models::IntegrationAccountAgreement
      IntegrationAccountCertificate = Azure::ARM::Logic::Api_2016_06_01::Models::IntegrationAccountCertificate
      IntegrationAccountSession = Azure::ARM::Logic::Api_2016_06_01::Models::IntegrationAccountSession
      WorkflowProvisioningState = Azure::ARM::Logic::Api_2016_06_01::Models::WorkflowProvisioningState
      WorkflowState = Azure::ARM::Logic::Api_2016_06_01::Models::WorkflowState
      SkuName = Azure::ARM::Logic::Api_2016_06_01::Models::SkuName
      ParameterType = Azure::ARM::Logic::Api_2016_06_01::Models::ParameterType
      WorkflowTriggerProvisioningState = Azure::ARM::Logic::Api_2016_06_01::Models::WorkflowTriggerProvisioningState
      WorkflowStatus = Azure::ARM::Logic::Api_2016_06_01::Models::WorkflowStatus
      RecurrenceFrequency = Azure::ARM::Logic::Api_2016_06_01::Models::RecurrenceFrequency
      DaysOfWeek = Azure::ARM::Logic::Api_2016_06_01::Models::DaysOfWeek
      DayOfWeek = Azure::ARM::Logic::Api_2016_06_01::Models::DayOfWeek
      KeyType = Azure::ARM::Logic::Api_2016_06_01::Models::KeyType
      IntegrationAccountSkuName = Azure::ARM::Logic::Api_2016_06_01::Models::IntegrationAccountSkuName
      SchemaType = Azure::ARM::Logic::Api_2016_06_01::Models::SchemaType
      MapType = Azure::ARM::Logic::Api_2016_06_01::Models::MapType
      PartnerType = Azure::ARM::Logic::Api_2016_06_01::Models::PartnerType
      AgreementType = Azure::ARM::Logic::Api_2016_06_01::Models::AgreementType
      HashingAlgorithm = Azure::ARM::Logic::Api_2016_06_01::Models::HashingAlgorithm
      EncryptionAlgorithm = Azure::ARM::Logic::Api_2016_06_01::Models::EncryptionAlgorithm
      SigningAlgorithm = Azure::ARM::Logic::Api_2016_06_01::Models::SigningAlgorithm
      TrailingSeparatorPolicy = Azure::ARM::Logic::Api_2016_06_01::Models::TrailingSeparatorPolicy
      X12CharacterSet = Azure::ARM::Logic::Api_2016_06_01::Models::X12CharacterSet
      SegmentTerminatorSuffix = Azure::ARM::Logic::Api_2016_06_01::Models::SegmentTerminatorSuffix
      X12DateFormat = Azure::ARM::Logic::Api_2016_06_01::Models::X12DateFormat
      X12TimeFormat = Azure::ARM::Logic::Api_2016_06_01::Models::X12TimeFormat
      UsageIndicator = Azure::ARM::Logic::Api_2016_06_01::Models::UsageIndicator
      MessageFilterType = Azure::ARM::Logic::Api_2016_06_01::Models::MessageFilterType
      EdifactCharacterSet = Azure::ARM::Logic::Api_2016_06_01::Models::EdifactCharacterSet
      EdifactDecimalIndicator = Azure::ARM::Logic::Api_2016_06_01::Models::EdifactDecimalIndicator
    end

    #
    # Logic
    #
    class LogicClass
      attr_accessor :workflows, :workflow_versions, :workflow_triggers, :workflow_trigger_histories, :workflow_runs, :workflow_run_actions, :integration_accounts, :schemas, :maps, :partners, :agreements, :certificates, :sessions, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::Logic::Api_2016_06_01::LogicManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.workflows = Azure::ARM::Logic::Api_2016_06_01::Workflows.new(client)
        self.workflow_versions = Azure::ARM::Logic::Api_2016_06_01::WorkflowVersions.new(client)
        self.workflow_triggers = Azure::ARM::Logic::Api_2016_06_01::WorkflowTriggers.new(client)
        self.workflow_trigger_histories = Azure::ARM::Logic::Api_2016_06_01::WorkflowTriggerHistories.new(client)
        self.workflow_runs = Azure::ARM::Logic::Api_2016_06_01::WorkflowRuns.new(client)
        self.workflow_run_actions = Azure::ARM::Logic::Api_2016_06_01::WorkflowRunActions.new(client)
        self.integration_accounts = Azure::ARM::Logic::Api_2016_06_01::IntegrationAccounts.new(client)
        self.schemas = Azure::ARM::Logic::Api_2016_06_01::Schemas.new(client)
        self.maps = Azure::ARM::Logic::Api_2016_06_01::Maps.new(client)
        self.partners = Azure::ARM::Logic::Api_2016_06_01::Partners.new(client)
        self.agreements = Azure::ARM::Logic::Api_2016_06_01::Agreements.new(client)
        self.certificates = Azure::ARM::Logic::Api_2016_06_01::Certificates.new(client)
        self.sessions = Azure::ARM::Logic::Api_2016_06_01::Sessions.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2016-06-01'
            client = Azure::ARM::Logic::Api_2016_06_01::LogicManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def integration_account_partner_filter
          Azure::ARM::Logic::Api_2016_06_01::Models::IntegrationAccountPartnerFilter
        end
        def as2_message_connection_settings
          Azure::ARM::Logic::Api_2016_06_01::Models::AS2MessageConnectionSettings
        end
        def resource_reference
          Azure::ARM::Logic::Api_2016_06_01::Models::ResourceReference
        end
        def as2_acknowledgement_connection_settings
          Azure::ARM::Logic::Api_2016_06_01::Models::AS2AcknowledgementConnectionSettings
        end
        def workflow_parameter
          Azure::ARM::Logic::Api_2016_06_01::Models::WorkflowParameter
        end
        def as2_mdn_settings
          Azure::ARM::Logic::Api_2016_06_01::Models::AS2MdnSettings
        end
        def workflow_filter
          Azure::ARM::Logic::Api_2016_06_01::Models::WorkflowFilter
        end
        def as2_security_settings
          Azure::ARM::Logic::Api_2016_06_01::Models::AS2SecuritySettings
        end
        def key_vault_key_reference_key_vault
          Azure::ARM::Logic::Api_2016_06_01::Models::KeyVaultKeyReferenceKeyVault
        end
        def workflow_version_list_result
          Azure::ARM::Logic::Api_2016_06_01::Models::WorkflowVersionListResult
        end
        def integration_account_partner_list_result
          Azure::ARM::Logic::Api_2016_06_01::Models::IntegrationAccountPartnerListResult
        end
        def recurrence_schedule
          Azure::ARM::Logic::Api_2016_06_01::Models::RecurrenceSchedule
        end
        def sku
          Azure::ARM::Logic::Api_2016_06_01::Models::Sku
        end
        def workflow_trigger_list_result
          Azure::ARM::Logic::Api_2016_06_01::Models::WorkflowTriggerListResult
        end
        def workflow_trigger_list_callback_url_queries
          Azure::ARM::Logic::Api_2016_06_01::Models::WorkflowTriggerListCallbackUrlQueries
        end
        def integration_account_agreement_list_result
          Azure::ARM::Logic::Api_2016_06_01::Models::IntegrationAccountAgreementListResult
        end
        def correlation
          Azure::ARM::Logic::Api_2016_06_01::Models::Correlation
        end
        def workflow_list_result
          Azure::ARM::Logic::Api_2016_06_01::Models::WorkflowListResult
        end
        def content_link
          Azure::ARM::Logic::Api_2016_06_01::Models::ContentLink
        end
        def integration_account_agreement_filter
          Azure::ARM::Logic::Api_2016_06_01::Models::IntegrationAccountAgreementFilter
        end
        def workflow_trigger_history_list_result
          Azure::ARM::Logic::Api_2016_06_01::Models::WorkflowTriggerHistoryListResult
        end
        def as2_validation_settings
          Azure::ARM::Logic::Api_2016_06_01::Models::AS2ValidationSettings
        end
        def workflow_run_trigger
          Azure::ARM::Logic::Api_2016_06_01::Models::WorkflowRunTrigger
        end
        def as2_envelope_settings
          Azure::ARM::Logic::Api_2016_06_01::Models::AS2EnvelopeSettings
        end
        def operation_display
          Azure::ARM::Logic::Api_2016_06_01::Models::OperationDisplay
        end
        def as2_error_settings
          Azure::ARM::Logic::Api_2016_06_01::Models::AS2ErrorSettings
        end
        def workflow_run_list_result
          Azure::ARM::Logic::Api_2016_06_01::Models::WorkflowRunListResult
        end
        def as2_protocol_settings
          Azure::ARM::Logic::Api_2016_06_01::Models::AS2ProtocolSettings
        end
        def error_response
          Azure::ARM::Logic::Api_2016_06_01::Models::ErrorResponse
        end
        def as2_one_way_agreement
          Azure::ARM::Logic::Api_2016_06_01::Models::AS2OneWayAgreement
        end
        def integration_account_session_list_result
          Azure::ARM::Logic::Api_2016_06_01::Models::IntegrationAccountSessionListResult
        end
        def as2_agreement_content
          Azure::ARM::Logic::Api_2016_06_01::Models::AS2AgreementContent
        end
        def workflow_run_action_list_result
          Azure::ARM::Logic::Api_2016_06_01::Models::WorkflowRunActionListResult
        end
        def x12_validation_settings
          Azure::ARM::Logic::Api_2016_06_01::Models::X12ValidationSettings
        end
        def generate_upgraded_definition_parameters
          Azure::ARM::Logic::Api_2016_06_01::Models::GenerateUpgradedDefinitionParameters
        end
        def x12_framing_settings
          Azure::ARM::Logic::Api_2016_06_01::Models::X12FramingSettings
        end
        def integration_account_session_filter
          Azure::ARM::Logic::Api_2016_06_01::Models::IntegrationAccountSessionFilter
        end
        def x12_envelope_settings
          Azure::ARM::Logic::Api_2016_06_01::Models::X12EnvelopeSettings
        end
        def get_callback_url_parameters
          Azure::ARM::Logic::Api_2016_06_01::Models::GetCallbackUrlParameters
        end
        def x12_acknowledgement_settings
          Azure::ARM::Logic::Api_2016_06_01::Models::X12AcknowledgementSettings
        end
        def integration_account_certificate_list_result
          Azure::ARM::Logic::Api_2016_06_01::Models::IntegrationAccountCertificateListResult
        end
        def x12_message_filter
          Azure::ARM::Logic::Api_2016_06_01::Models::X12MessageFilter
        end
        def integration_account_schema_filter
          Azure::ARM::Logic::Api_2016_06_01::Models::IntegrationAccountSchemaFilter
        end
        def x12_security_settings
          Azure::ARM::Logic::Api_2016_06_01::Models::X12SecuritySettings
        end
        def key_vault_key_reference
          Azure::ARM::Logic::Api_2016_06_01::Models::KeyVaultKeyReference
        end
        def x12_processing_settings
          Azure::ARM::Logic::Api_2016_06_01::Models::X12ProcessingSettings
        end
        def integration_account_map_filter
          Azure::ARM::Logic::Api_2016_06_01::Models::IntegrationAccountMapFilter
        end
        def x12_envelope_override
          Azure::ARM::Logic::Api_2016_06_01::Models::X12EnvelopeOverride
        end
        def b2_bpartner_content
          Azure::ARM::Logic::Api_2016_06_01::Models::B2BPartnerContent
        end
        def x12_validation_override
          Azure::ARM::Logic::Api_2016_06_01::Models::X12ValidationOverride
        end
        def recurrence_schedule_occurrence
          Azure::ARM::Logic::Api_2016_06_01::Models::RecurrenceScheduleOccurrence
        end
        def x12_message_identifier
          Azure::ARM::Logic::Api_2016_06_01::Models::X12MessageIdentifier
        end
        def workflow_trigger_filter
          Azure::ARM::Logic::Api_2016_06_01::Models::WorkflowTriggerFilter
        end
        def x12_schema_reference
          Azure::ARM::Logic::Api_2016_06_01::Models::X12SchemaReference
        end
        def content_hash
          Azure::ARM::Logic::Api_2016_06_01::Models::ContentHash
        end
        def x12_delimiter_overrides
          Azure::ARM::Logic::Api_2016_06_01::Models::X12DelimiterOverrides
        end
        def workflow_trigger_history_filter
          Azure::ARM::Logic::Api_2016_06_01::Models::WorkflowTriggerHistoryFilter
        end
        def x12_protocol_settings
          Azure::ARM::Logic::Api_2016_06_01::Models::X12ProtocolSettings
        end
        def workflow_run_filter
          Azure::ARM::Logic::Api_2016_06_01::Models::WorkflowRunFilter
        end
        def x12_one_way_agreement
          Azure::ARM::Logic::Api_2016_06_01::Models::X12OneWayAgreement
        end
        def retry_history
          Azure::ARM::Logic::Api_2016_06_01::Models::RetryHistory
        end
        def x12_agreement_content
          Azure::ARM::Logic::Api_2016_06_01::Models::X12AgreementContent
        end
        def regenerate_action_parameter
          Azure::ARM::Logic::Api_2016_06_01::Models::RegenerateActionParameter
        end
        def edifact_validation_settings
          Azure::ARM::Logic::Api_2016_06_01::Models::EdifactValidationSettings
        end
        def integration_account_list_result
          Azure::ARM::Logic::Api_2016_06_01::Models::IntegrationAccountListResult
        end
        def edifact_framing_settings
          Azure::ARM::Logic::Api_2016_06_01::Models::EdifactFramingSettings
        end
        def integration_account_schema_list_result
          Azure::ARM::Logic::Api_2016_06_01::Models::IntegrationAccountSchemaListResult
        end
        def edifact_envelope_settings
          Azure::ARM::Logic::Api_2016_06_01::Models::EdifactEnvelopeSettings
        end
        def integration_account_map_list_result
          Azure::ARM::Logic::Api_2016_06_01::Models::IntegrationAccountMapListResult
        end
        def edifact_acknowledgement_settings
          Azure::ARM::Logic::Api_2016_06_01::Models::EdifactAcknowledgementSettings
        end
        def partner_content
          Azure::ARM::Logic::Api_2016_06_01::Models::PartnerContent
        end
        def edifact_message_filter
          Azure::ARM::Logic::Api_2016_06_01::Models::EdifactMessageFilter
        end
        def workflow_trigger_callback_url
          Azure::ARM::Logic::Api_2016_06_01::Models::WorkflowTriggerCallbackUrl
        end
        def edifact_processing_settings
          Azure::ARM::Logic::Api_2016_06_01::Models::EdifactProcessingSettings
        end
        def operation
          Azure::ARM::Logic::Api_2016_06_01::Models::Operation
        end
        def edifact_envelope_override
          Azure::ARM::Logic::Api_2016_06_01::Models::EdifactEnvelopeOverride
        end
        def workflow_run_action_filter
          Azure::ARM::Logic::Api_2016_06_01::Models::WorkflowRunActionFilter
        end
        def edifact_message_identifier
          Azure::ARM::Logic::Api_2016_06_01::Models::EdifactMessageIdentifier
        end
        def callback_url
          Azure::ARM::Logic::Api_2016_06_01::Models::CallbackUrl
        end
        def edifact_schema_reference
          Azure::ARM::Logic::Api_2016_06_01::Models::EdifactSchemaReference
        end
        def business_identity
          Azure::ARM::Logic::Api_2016_06_01::Models::BusinessIdentity
        end
        def edifact_validation_override
          Azure::ARM::Logic::Api_2016_06_01::Models::EdifactValidationOverride
        end
        def operation_list_result
          Azure::ARM::Logic::Api_2016_06_01::Models::OperationListResult
        end
        def edifact_delimiter_override
          Azure::ARM::Logic::Api_2016_06_01::Models::EdifactDelimiterOverride
        end
        def integration_account_sku
          Azure::ARM::Logic::Api_2016_06_01::Models::IntegrationAccountSku
        end
        def edifact_protocol_settings
          Azure::ARM::Logic::Api_2016_06_01::Models::EdifactProtocolSettings
        end
        def workflow_trigger_recurrence
          Azure::ARM::Logic::Api_2016_06_01::Models::WorkflowTriggerRecurrence
        end
        def edifact_one_way_agreement
          Azure::ARM::Logic::Api_2016_06_01::Models::EdifactOneWayAgreement
        end
        def integration_account_map_properties_parameters_schema
          Azure::ARM::Logic::Api_2016_06_01::Models::IntegrationAccountMapPropertiesParametersSchema
        end
        def edifact_agreement_content
          Azure::ARM::Logic::Api_2016_06_01::Models::EdifactAgreementContent
        end
        def error_properties
          Azure::ARM::Logic::Api_2016_06_01::Models::ErrorProperties
        end
        def agreement_content
          Azure::ARM::Logic::Api_2016_06_01::Models::AgreementContent
        end
        def workflow
          Azure::ARM::Logic::Api_2016_06_01::Models::Workflow
        end
        def workflow_version
          Azure::ARM::Logic::Api_2016_06_01::Models::WorkflowVersion
        end
        def workflow_trigger
          Azure::ARM::Logic::Api_2016_06_01::Models::WorkflowTrigger
        end
        def workflow_trigger_history
          Azure::ARM::Logic::Api_2016_06_01::Models::WorkflowTriggerHistory
        end
        def workflow_output_parameter
          Azure::ARM::Logic::Api_2016_06_01::Models::WorkflowOutputParameter
        end
        def workflow_run
          Azure::ARM::Logic::Api_2016_06_01::Models::WorkflowRun
        end
        def workflow_run_action
          Azure::ARM::Logic::Api_2016_06_01::Models::WorkflowRunAction
        end
        def integration_account
          Azure::ARM::Logic::Api_2016_06_01::Models::IntegrationAccount
        end
        def integration_account_schema
          Azure::ARM::Logic::Api_2016_06_01::Models::IntegrationAccountSchema
        end
        def integration_account_map
          Azure::ARM::Logic::Api_2016_06_01::Models::IntegrationAccountMap
        end
        def integration_account_partner
          Azure::ARM::Logic::Api_2016_06_01::Models::IntegrationAccountPartner
        end
        def integration_account_agreement
          Azure::ARM::Logic::Api_2016_06_01::Models::IntegrationAccountAgreement
        end
        def integration_account_certificate
          Azure::ARM::Logic::Api_2016_06_01::Models::IntegrationAccountCertificate
        end
        def integration_account_session
          Azure::ARM::Logic::Api_2016_06_01::Models::IntegrationAccountSession
        end
        def workflow_provisioning_state
          Azure::ARM::Logic::Api_2016_06_01::Models::WorkflowProvisioningState
        end
        def workflow_state
          Azure::ARM::Logic::Api_2016_06_01::Models::WorkflowState
        end
        def sku_name
          Azure::ARM::Logic::Api_2016_06_01::Models::SkuName
        end
        def parameter_type
          Azure::ARM::Logic::Api_2016_06_01::Models::ParameterType
        end
        def workflow_trigger_provisioning_state
          Azure::ARM::Logic::Api_2016_06_01::Models::WorkflowTriggerProvisioningState
        end
        def workflow_status
          Azure::ARM::Logic::Api_2016_06_01::Models::WorkflowStatus
        end
        def recurrence_frequency
          Azure::ARM::Logic::Api_2016_06_01::Models::RecurrenceFrequency
        end
        def days_of_week
          Azure::ARM::Logic::Api_2016_06_01::Models::DaysOfWeek
        end
        def day_of_week
          Azure::ARM::Logic::Api_2016_06_01::Models::DayOfWeek
        end
        def key_type
          Azure::ARM::Logic::Api_2016_06_01::Models::KeyType
        end
        def integration_account_sku_name
          Azure::ARM::Logic::Api_2016_06_01::Models::IntegrationAccountSkuName
        end
        def schema_type
          Azure::ARM::Logic::Api_2016_06_01::Models::SchemaType
        end
        def map_type
          Azure::ARM::Logic::Api_2016_06_01::Models::MapType
        end
        def partner_type
          Azure::ARM::Logic::Api_2016_06_01::Models::PartnerType
        end
        def agreement_type
          Azure::ARM::Logic::Api_2016_06_01::Models::AgreementType
        end
        def hashing_algorithm
          Azure::ARM::Logic::Api_2016_06_01::Models::HashingAlgorithm
        end
        def encryption_algorithm
          Azure::ARM::Logic::Api_2016_06_01::Models::EncryptionAlgorithm
        end
        def signing_algorithm
          Azure::ARM::Logic::Api_2016_06_01::Models::SigningAlgorithm
        end
        def trailing_separator_policy
          Azure::ARM::Logic::Api_2016_06_01::Models::TrailingSeparatorPolicy
        end
        def x12_character_set
          Azure::ARM::Logic::Api_2016_06_01::Models::X12CharacterSet
        end
        def segment_terminator_suffix
          Azure::ARM::Logic::Api_2016_06_01::Models::SegmentTerminatorSuffix
        end
        def x12_date_format
          Azure::ARM::Logic::Api_2016_06_01::Models::X12DateFormat
        end
        def x12_time_format
          Azure::ARM::Logic::Api_2016_06_01::Models::X12TimeFormat
        end
        def usage_indicator
          Azure::ARM::Logic::Api_2016_06_01::Models::UsageIndicator
        end
        def message_filter_type
          Azure::ARM::Logic::Api_2016_06_01::Models::MessageFilterType
        end
        def edifact_character_set
          Azure::ARM::Logic::Api_2016_06_01::Models::EdifactCharacterSet
        end
        def edifact_decimal_indicator
          Azure::ARM::Logic::Api_2016_06_01::Models::EdifactDecimalIndicator
        end
      end
    end
  end
end
