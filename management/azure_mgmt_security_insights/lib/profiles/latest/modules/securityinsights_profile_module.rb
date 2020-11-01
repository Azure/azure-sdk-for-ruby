# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_security_insights'

module Azure::SecurityInsights::Profiles::Latest
  module Mgmt
    Operations = Azure::SecurityInsights::Mgmt::V2020_01_01::Operations
    AlertRules = Azure::SecurityInsights::Mgmt::V2020_01_01::AlertRules
    Actions = Azure::SecurityInsights::Mgmt::V2020_01_01::Actions
    AlertRuleTemplates = Azure::SecurityInsights::Mgmt::V2020_01_01::AlertRuleTemplates
    Bookmarks = Azure::SecurityInsights::Mgmt::V2020_01_01::Bookmarks
    DataConnectors = Azure::SecurityInsights::Mgmt::V2020_01_01::DataConnectors
    Incidents = Azure::SecurityInsights::Mgmt::V2020_01_01::Incidents
    IncidentComments = Azure::SecurityInsights::Mgmt::V2020_01_01::IncidentComments

    module Models
      IncidentLabel = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::IncidentLabel
      DataConnectorDataTypeCommon = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::DataConnectorDataTypeCommon
      IncidentOwnerInfo = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::IncidentOwnerInfo
      IncidentInfo = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::IncidentInfo
      OfficeDataConnectorDataTypes = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::OfficeDataConnectorDataTypes
      TIDataConnectorDataTypes = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::TIDataConnectorDataTypes
      BookmarkList = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::BookmarkList
      ActionPropertiesBase = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::ActionPropertiesBase
      ClientInfo = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::ClientInfo
      ActionsList = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::ActionsList
      ErrorAdditionalInfo = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::ErrorAdditionalInfo
      OperationsList = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::OperationsList
      ErrorResponse = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::ErrorResponse
      AlertRuleTemplatesList = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::AlertRuleTemplatesList
      Operation = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::Operation
      AwsCloudTrailDataConnectorDataTypes = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::AwsCloudTrailDataConnectorDataTypes
      IncidentCommentList = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::IncidentCommentList
      UserInfo = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::UserInfo
      DataConnectorList = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::DataConnectorList
      ScheduledAlertRuleCommonProperties = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::ScheduledAlertRuleCommonProperties
      DataConnectorTenantId = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::DataConnectorTenantId
      Resource = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::Resource
      DataConnectorWithAlertsProperties = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::DataConnectorWithAlertsProperties
      AlertRulesList = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::AlertRulesList
      OfficeConsentList = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::OfficeConsentList
      ThreatIntelligence = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::ThreatIntelligence
      MicrosoftSecurityIncidentCreationAlertRuleCommonProperties = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::MicrosoftSecurityIncidentCreationAlertRuleCommonProperties
      AlertRuleTemplateDataSource = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::AlertRuleTemplateDataSource
      IncidentAdditionalData = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::IncidentAdditionalData
      ResourceWithEtag = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::ResourceWithEtag
      AlertsDataTypeOfDataConnector = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::AlertsDataTypeOfDataConnector
      OperationDisplay = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::OperationDisplay
      IncidentList = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::IncidentList
      DataConnector = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::DataConnector
      AADDataConnector = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::AADDataConnector
      AATPDataConnector = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::AATPDataConnector
      ASCDataConnector = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::ASCDataConnector
      ActionRequest = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::ActionRequest
      ActionResponse = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::ActionResponse
      AlertRule = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::AlertRule
      AlertRuleTemplate = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::AlertRuleTemplate
      AwsCloudTrailDataConnectorDataTypesLogs = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::AwsCloudTrailDataConnectorDataTypesLogs
      AwsCloudTrailDataConnector = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::AwsCloudTrailDataConnector
      Bookmark = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::Bookmark
      FusionAlertRule = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::FusionAlertRule
      FusionAlertRuleTemplate = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::FusionAlertRuleTemplate
      Incident = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::Incident
      IncidentComment = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::IncidentComment
      MCASDataConnectorDataTypes = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::MCASDataConnectorDataTypes
      MCASDataConnector = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::MCASDataConnector
      MDATPDataConnector = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::MDATPDataConnector
      MicrosoftSecurityIncidentCreationAlertRule = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::MicrosoftSecurityIncidentCreationAlertRule
      MicrosoftSecurityIncidentCreationAlertRuleTemplate = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::MicrosoftSecurityIncidentCreationAlertRuleTemplate
      OfficeConsent = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::OfficeConsent
      OfficeDataConnectorDataTypesExchange = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::OfficeDataConnectorDataTypesExchange
      OfficeDataConnectorDataTypesSharePoint = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::OfficeDataConnectorDataTypesSharePoint
      OfficeDataConnector = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::OfficeDataConnector
      ScheduledAlertRule = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::ScheduledAlertRule
      ScheduledAlertRuleTemplate = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::ScheduledAlertRuleTemplate
      Settings = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::Settings
      TIDataConnectorDataTypesIndicators = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::TIDataConnectorDataTypesIndicators
      TIDataConnector = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::TIDataConnector
      ToggleSettings = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::ToggleSettings
      UebaSettings = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::UebaSettings
      DataTypeState = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::DataTypeState
      AlertRuleKind = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::AlertRuleKind
      TemplateStatus = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::TemplateStatus
      TriggerOperator = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::TriggerOperator
      AlertSeverity = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::AlertSeverity
      MicrosoftSecurityProductName = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::MicrosoftSecurityProductName
      AttackTactic = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::AttackTactic
      CaseSeverity = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::CaseSeverity
      DataConnectorKind = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::DataConnectorKind
      IncidentClassification = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::IncidentClassification
      IncidentClassificationReason = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::IncidentClassificationReason
      IncidentLabelType = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::IncidentLabelType
      IncidentSeverity = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::IncidentSeverity
      IncidentStatus = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::IncidentStatus
      SettingKind = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::SettingKind
      LicenseStatus = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::LicenseStatus
      StatusInMcas = Azure::SecurityInsights::Mgmt::V2020_01_01::Models::StatusInMcas
    end

    #
    # SecurityInsightsManagementClass
    #
    class SecurityInsightsManagementClass
      attr_reader :operations, :alert_rules, :actions, :alert_rule_templates, :bookmarks, :data_connectors, :incidents, :incident_comments, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        if options.is_a?(Hash) && options.length == 0
          @options = setup_default_options
        else
          @options = options
        end

        reset!(options)

        @configurable = self
        @base_url = options[:base_url].nil? ? nil:options[:base_url]
        @options = options[:options].nil? ? nil:options[:options]

        @client_0 = Azure::SecurityInsights::Mgmt::V2020_01_01::SecurityInsights.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @operations = @client_0.operations
        @alert_rules = @client_0.alert_rules
        @actions = @client_0.actions
        @alert_rule_templates = @client_0.alert_rule_templates
        @bookmarks = @client_0.bookmarks
        @data_connectors = @client_0.data_connectors
        @incidents = @client_0.incidents
        @incident_comments = @client_0.incident_comments

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/SecurityInsights/Mgmt'
        client.add_user_agent_information(profile_information)
      end

      def method_missing(method, *args)
        if @client_0.respond_to?method
          @client_0.send(method, *args)
        else
          super
        end
      end

    end

    class ModelClasses
      def incident_label
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::IncidentLabel
      end
      def data_connector_data_type_common
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::DataConnectorDataTypeCommon
      end
      def incident_owner_info
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::IncidentOwnerInfo
      end
      def incident_info
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::IncidentInfo
      end
      def office_data_connector_data_types
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::OfficeDataConnectorDataTypes
      end
      def tidata_connector_data_types
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::TIDataConnectorDataTypes
      end
      def bookmark_list
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::BookmarkList
      end
      def action_properties_base
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::ActionPropertiesBase
      end
      def client_info
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::ClientInfo
      end
      def actions_list
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::ActionsList
      end
      def error_additional_info
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::ErrorAdditionalInfo
      end
      def operations_list
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::OperationsList
      end
      def error_response
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::ErrorResponse
      end
      def alert_rule_templates_list
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::AlertRuleTemplatesList
      end
      def operation
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::Operation
      end
      def aws_cloud_trail_data_connector_data_types
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::AwsCloudTrailDataConnectorDataTypes
      end
      def incident_comment_list
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::IncidentCommentList
      end
      def user_info
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::UserInfo
      end
      def data_connector_list
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::DataConnectorList
      end
      def scheduled_alert_rule_common_properties
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::ScheduledAlertRuleCommonProperties
      end
      def data_connector_tenant_id
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::DataConnectorTenantId
      end
      def resource
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::Resource
      end
      def data_connector_with_alerts_properties
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::DataConnectorWithAlertsProperties
      end
      def alert_rules_list
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::AlertRulesList
      end
      def office_consent_list
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::OfficeConsentList
      end
      def threat_intelligence
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::ThreatIntelligence
      end
      def microsoft_security_incident_creation_alert_rule_common_properties
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::MicrosoftSecurityIncidentCreationAlertRuleCommonProperties
      end
      def alert_rule_template_data_source
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::AlertRuleTemplateDataSource
      end
      def incident_additional_data
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::IncidentAdditionalData
      end
      def resource_with_etag
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::ResourceWithEtag
      end
      def alerts_data_type_of_data_connector
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::AlertsDataTypeOfDataConnector
      end
      def operation_display
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::OperationDisplay
      end
      def incident_list
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::IncidentList
      end
      def data_connector
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::DataConnector
      end
      def aaddata_connector
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::AADDataConnector
      end
      def aatpdata_connector
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::AATPDataConnector
      end
      def ascdata_connector
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::ASCDataConnector
      end
      def action_request
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::ActionRequest
      end
      def action_response
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::ActionResponse
      end
      def alert_rule
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::AlertRule
      end
      def alert_rule_template
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::AlertRuleTemplate
      end
      def aws_cloud_trail_data_connector_data_types_logs
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::AwsCloudTrailDataConnectorDataTypesLogs
      end
      def aws_cloud_trail_data_connector
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::AwsCloudTrailDataConnector
      end
      def bookmark
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::Bookmark
      end
      def fusion_alert_rule
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::FusionAlertRule
      end
      def fusion_alert_rule_template
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::FusionAlertRuleTemplate
      end
      def incident
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::Incident
      end
      def incident_comment
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::IncidentComment
      end
      def mcasdata_connector_data_types
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::MCASDataConnectorDataTypes
      end
      def mcasdata_connector
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::MCASDataConnector
      end
      def mdatpdata_connector
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::MDATPDataConnector
      end
      def microsoft_security_incident_creation_alert_rule
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::MicrosoftSecurityIncidentCreationAlertRule
      end
      def microsoft_security_incident_creation_alert_rule_template
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::MicrosoftSecurityIncidentCreationAlertRuleTemplate
      end
      def office_consent
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::OfficeConsent
      end
      def office_data_connector_data_types_exchange
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::OfficeDataConnectorDataTypesExchange
      end
      def office_data_connector_data_types_share_point
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::OfficeDataConnectorDataTypesSharePoint
      end
      def office_data_connector
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::OfficeDataConnector
      end
      def scheduled_alert_rule
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::ScheduledAlertRule
      end
      def scheduled_alert_rule_template
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::ScheduledAlertRuleTemplate
      end
      def settings
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::Settings
      end
      def tidata_connector_data_types_indicators
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::TIDataConnectorDataTypesIndicators
      end
      def tidata_connector
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::TIDataConnector
      end
      def toggle_settings
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::ToggleSettings
      end
      def ueba_settings
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::UebaSettings
      end
      def data_type_state
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::DataTypeState
      end
      def alert_rule_kind
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::AlertRuleKind
      end
      def template_status
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::TemplateStatus
      end
      def trigger_operator
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::TriggerOperator
      end
      def alert_severity
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::AlertSeverity
      end
      def microsoft_security_product_name
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::MicrosoftSecurityProductName
      end
      def attack_tactic
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::AttackTactic
      end
      def case_severity
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::CaseSeverity
      end
      def data_connector_kind
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::DataConnectorKind
      end
      def incident_classification
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::IncidentClassification
      end
      def incident_classification_reason
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::IncidentClassificationReason
      end
      def incident_label_type
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::IncidentLabelType
      end
      def incident_severity
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::IncidentSeverity
      end
      def incident_status
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::IncidentStatus
      end
      def setting_kind
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::SettingKind
      end
      def license_status
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::LicenseStatus
      end
      def status_in_mcas
        Azure::SecurityInsights::Mgmt::V2020_01_01::Models::StatusInMcas
      end
    end
  end
end
