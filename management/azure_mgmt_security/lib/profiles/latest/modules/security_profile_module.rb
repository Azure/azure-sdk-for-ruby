# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_security'

module Azure::Security::Profiles::Latest
  module Mgmt
    Locations = Azure::Security::Mgmt::V2015_06_01_preview::Locations
    Operations = Azure::Security::Mgmt::V2015_06_01_preview::Operations
    Tasks = Azure::Security::Mgmt::V2015_06_01_preview::Tasks
    AdvancedThreatProtection = Azure::Security::Mgmt::V2017_08_01_preview::AdvancedThreatProtection
    AutoProvisioningSettings = Azure::Security::Mgmt::V2017_08_01_preview::AutoProvisioningSettings
    Compliances = Azure::Security::Mgmt::V2017_08_01_preview::Compliances
    DeviceSecurityGroups = Azure::Security::Mgmt::V2017_08_01_preview::DeviceSecurityGroups
    InformationProtectionPolicies = Azure::Security::Mgmt::V2017_08_01_preview::InformationProtectionPolicies
    IoTSecuritySolutionsAnalytics = Azure::Security::Mgmt::V2017_08_01_preview::IoTSecuritySolutionsAnalytics
    IoTSecuritySolutionsAnalyticsAggregatedAlerts = Azure::Security::Mgmt::V2017_08_01_preview::IoTSecuritySolutionsAnalyticsAggregatedAlerts
    IoTSecuritySolutionsAnalyticsAggregatedAlert = Azure::Security::Mgmt::V2017_08_01_preview::IoTSecuritySolutionsAnalyticsAggregatedAlert
    IoTSecuritySolutionsAnalyticsRecommendation = Azure::Security::Mgmt::V2017_08_01_preview::IoTSecuritySolutionsAnalyticsRecommendation
    IoTSecuritySolutionsAnalyticsRecommendations = Azure::Security::Mgmt::V2017_08_01_preview::IoTSecuritySolutionsAnalyticsRecommendations
    IoTSecuritySolutions = Azure::Security::Mgmt::V2017_08_01_preview::IoTSecuritySolutions
    IoTSecuritySolutionsResourceGroup = Azure::Security::Mgmt::V2017_08_01_preview::IoTSecuritySolutionsResourceGroup
    SecurityContacts = Azure::Security::Mgmt::V2017_08_01_preview::SecurityContacts
    WorkspaceSettings = Azure::Security::Mgmt::V2017_08_01_preview::WorkspaceSettings
    ComplianceResults = Azure::Security::Mgmt::V2017_08_01::ComplianceResults
    Pricings = Azure::Security::Mgmt::V2018_06_01::Pricings
    RegulatoryComplianceStandards = Azure::Security::Mgmt::V2019_01_01_preview::RegulatoryComplianceStandards
    RegulatoryComplianceControls = Azure::Security::Mgmt::V2019_01_01_preview::RegulatoryComplianceControls
    RegulatoryComplianceAssessments = Azure::Security::Mgmt::V2019_01_01_preview::RegulatoryComplianceAssessments
    AlertsSuppressionRules = Azure::Security::Mgmt::V2019_01_01_preview::AlertsSuppressionRules
    AssessmentsMetadataSubscription = Azure::Security::Mgmt::V2019_01_01_preview::AssessmentsMetadataSubscription
    Alerts = Azure::Security::Mgmt::V2019_01_01::Alerts
    Settings = Azure::Security::Mgmt::V2019_01_01::Settings
    IotSecuritySolutionAnalytics = Azure::Security::Mgmt::V2019_08_01::IotSecuritySolutionAnalytics
    IotSecuritySolutionsAnalyticsAggregatedAlert = Azure::Security::Mgmt::V2019_08_01::IotSecuritySolutionsAnalyticsAggregatedAlert
    IotSecuritySolutionsAnalyticsRecommendation = Azure::Security::Mgmt::V2019_08_01::IotSecuritySolutionsAnalyticsRecommendation
    IotSecuritySolution = Azure::Security::Mgmt::V2019_08_01::IotSecuritySolution
    Connectors = Azure::Security::Mgmt::V2020_01_01_preview::Connectors
    AdaptiveNetworkHardenings = Azure::Security::Mgmt::V2020_01_01::AdaptiveNetworkHardenings
    AllowedConnections = Azure::Security::Mgmt::V2020_01_01::AllowedConnections
    AdaptiveApplicationControls = Azure::Security::Mgmt::V2020_01_01::AdaptiveApplicationControls
    AssessmentsMetadata = Azure::Security::Mgmt::V2020_01_01::AssessmentsMetadata
    Assessments = Azure::Security::Mgmt::V2020_01_01::Assessments
    DiscoveredSecuritySolutions = Azure::Security::Mgmt::V2020_01_01::DiscoveredSecuritySolutions
    SecuritySolutions = Azure::Security::Mgmt::V2020_01_01::SecuritySolutions
    SecuritySolutionsReferenceDataOperations = Azure::Security::Mgmt::V2020_01_01::SecuritySolutionsReferenceDataOperations
    ExternalSecuritySolutions = Azure::Security::Mgmt::V2020_01_01::ExternalSecuritySolutions
    JitNetworkAccessPolicies = Azure::Security::Mgmt::V2020_01_01::JitNetworkAccessPolicies
    ServerVulnerabilityAssessmentOperations = Azure::Security::Mgmt::V2020_01_01::ServerVulnerabilityAssessmentOperations
    Topology = Azure::Security::Mgmt::V2020_01_01::Topology
    SecureScores = Azure::Security::Mgmt::V2020_01_01::SecureScores
    SecureScoreControls = Azure::Security::Mgmt::V2020_01_01::SecureScoreControls
    SecureScoreControlDefinitions = Azure::Security::Mgmt::V2020_01_01::SecureScoreControlDefinitions
    SqlVulnerabilityAssessmentScans = Azure::Security::Mgmt::V2020_07_01_preview::SqlVulnerabilityAssessmentScans
    SqlVulnerabilityAssessmentScanResults = Azure::Security::Mgmt::V2020_07_01_preview::SqlVulnerabilityAssessmentScanResults
    SqlVulnerabilityAssessmentBaselineRules = Azure::Security::Mgmt::V2020_07_01_preview::SqlVulnerabilityAssessmentBaselineRules
    IotDefenderSettings = Azure::Security::Mgmt::V2020_08_06_preview::IotDefenderSettings
    IotSensors = Azure::Security::Mgmt::V2020_08_06_preview::IotSensors
    DevicesForSubscription = Azure::Security::Mgmt::V2020_08_06_preview::DevicesForSubscription
    DevicesForHub = Azure::Security::Mgmt::V2020_08_06_preview::DevicesForHub
    DeviceOperations = Azure::Security::Mgmt::V2020_08_06_preview::DeviceOperations
    OnPremiseIotSensors = Azure::Security::Mgmt::V2020_08_06_preview::OnPremiseIotSensors
    IotAlerts = Azure::Security::Mgmt::V2020_08_06_preview::IotAlerts
    IotAlertTypes = Azure::Security::Mgmt::V2020_08_06_preview::IotAlertTypes
    IotRecommendations = Azure::Security::Mgmt::V2020_08_06_preview::IotRecommendations
    IotRecommendationTypes = Azure::Security::Mgmt::V2020_08_06_preview::IotRecommendationTypes

    module Models
      AppWhitelistingPutGroupData = Azure::Security::Mgmt::V2015_06_01_preview::Models::AppWhitelistingPutGroupData
      SecurityTaskList = Azure::Security::Mgmt::V2015_06_01_preview::Models::SecurityTaskList
      SecurityTaskParameters = Azure::Security::Mgmt::V2015_06_01_preview::Models::SecurityTaskParameters
      AppWhitelistingIssueSummary = Azure::Security::Mgmt::V2015_06_01_preview::Models::AppWhitelistingIssueSummary
      OperationList = Azure::Security::Mgmt::V2015_06_01_preview::Models::OperationList
      AppWhitelistingGroups = Azure::Security::Mgmt::V2015_06_01_preview::Models::AppWhitelistingGroups
      AppWhitelistingGroup = Azure::Security::Mgmt::V2015_06_01_preview::Models::AppWhitelistingGroup
      AscLocationList = Azure::Security::Mgmt::V2015_06_01_preview::Models::AscLocationList
      OperationDisplay = Azure::Security::Mgmt::V2015_06_01_preview::Models::OperationDisplay
      Operation = Azure::Security::Mgmt::V2015_06_01_preview::Models::Operation
      SecurityTask = Azure::Security::Mgmt::V2015_06_01_preview::Models::SecurityTask
      IoTSecurityDeviceAlertsList = Azure::Security::Mgmt::V2017_08_01_preview::Models::IoTSecurityDeviceAlertsList
      DeviceSecurityGroupList = Azure::Security::Mgmt::V2017_08_01_preview::Models::DeviceSecurityGroupList
      CustomAlertRule = Azure::Security::Mgmt::V2017_08_01_preview::Models::CustomAlertRule
      InformationProtectionKeyword = Azure::Security::Mgmt::V2017_08_01_preview::Models::InformationProtectionKeyword
      SensitivityLabel = Azure::Security::Mgmt::V2017_08_01_preview::Models::SensitivityLabel
      IoTSecurityAlertedDevicesList = Azure::Security::Mgmt::V2017_08_01_preview::Models::IoTSecurityAlertedDevicesList
      SecurityContactList = Azure::Security::Mgmt::V2017_08_01_preview::Models::SecurityContactList
      ComplianceSegment = Azure::Security::Mgmt::V2017_08_01_preview::Models::ComplianceSegment
      ComplianceList = Azure::Security::Mgmt::V2017_08_01_preview::Models::ComplianceList
      IoTSecurityDeviceRecommendationsList = Azure::Security::Mgmt::V2017_08_01_preview::Models::IoTSecurityDeviceRecommendationsList
      AutoProvisioningSettingList = Azure::Security::Mgmt::V2017_08_01_preview::Models::AutoProvisioningSettingList
      InformationType = Azure::Security::Mgmt::V2017_08_01_preview::Models::InformationType
      InformationProtectionPolicyList = Azure::Security::Mgmt::V2017_08_01_preview::Models::InformationProtectionPolicyList
      WorkspaceSettingList = Azure::Security::Mgmt::V2017_08_01_preview::Models::WorkspaceSettingList
      AdvancedThreatProtectionSetting = Azure::Security::Mgmt::V2017_08_01_preview::Models::AdvancedThreatProtectionSetting
      AutoProvisioningSetting = Azure::Security::Mgmt::V2017_08_01_preview::Models::AutoProvisioningSetting
      Compliance = Azure::Security::Mgmt::V2017_08_01_preview::Models::Compliance
      ThresholdCustomAlertRule = Azure::Security::Mgmt::V2017_08_01_preview::Models::ThresholdCustomAlertRule
      TimeWindowCustomAlertRule = Azure::Security::Mgmt::V2017_08_01_preview::Models::TimeWindowCustomAlertRule
      ListCustomAlertRule = Azure::Security::Mgmt::V2017_08_01_preview::Models::ListCustomAlertRule
      AllowlistCustomAlertRule = Azure::Security::Mgmt::V2017_08_01_preview::Models::AllowlistCustomAlertRule
      DenylistCustomAlertRule = Azure::Security::Mgmt::V2017_08_01_preview::Models::DenylistCustomAlertRule
      DeviceSecurityGroup = Azure::Security::Mgmt::V2017_08_01_preview::Models::DeviceSecurityGroup
      ConnectionToIpNotAllowed = Azure::Security::Mgmt::V2017_08_01_preview::Models::ConnectionToIpNotAllowed
      LocalUserNotAllowed = Azure::Security::Mgmt::V2017_08_01_preview::Models::LocalUserNotAllowed
      ProcessNotAllowed = Azure::Security::Mgmt::V2017_08_01_preview::Models::ProcessNotAllowed
      ActiveConnectionsNotInAllowedRange = Azure::Security::Mgmt::V2017_08_01_preview::Models::ActiveConnectionsNotInAllowedRange
      AmqpC2DMessagesNotInAllowedRange = Azure::Security::Mgmt::V2017_08_01_preview::Models::AmqpC2DMessagesNotInAllowedRange
      MqttC2DMessagesNotInAllowedRange = Azure::Security::Mgmt::V2017_08_01_preview::Models::MqttC2DMessagesNotInAllowedRange
      HttpC2DMessagesNotInAllowedRange = Azure::Security::Mgmt::V2017_08_01_preview::Models::HttpC2DMessagesNotInAllowedRange
      AmqpC2DRejectedMessagesNotInAllowedRange = Azure::Security::Mgmt::V2017_08_01_preview::Models::AmqpC2DRejectedMessagesNotInAllowedRange
      MqttC2DRejectedMessagesNotInAllowedRange = Azure::Security::Mgmt::V2017_08_01_preview::Models::MqttC2DRejectedMessagesNotInAllowedRange
      HttpC2DRejectedMessagesNotInAllowedRange = Azure::Security::Mgmt::V2017_08_01_preview::Models::HttpC2DRejectedMessagesNotInAllowedRange
      AmqpD2CMessagesNotInAllowedRange = Azure::Security::Mgmt::V2017_08_01_preview::Models::AmqpD2CMessagesNotInAllowedRange
      MqttD2CMessagesNotInAllowedRange = Azure::Security::Mgmt::V2017_08_01_preview::Models::MqttD2CMessagesNotInAllowedRange
      HttpD2CMessagesNotInAllowedRange = Azure::Security::Mgmt::V2017_08_01_preview::Models::HttpD2CMessagesNotInAllowedRange
      DirectMethodInvokesNotInAllowedRange = Azure::Security::Mgmt::V2017_08_01_preview::Models::DirectMethodInvokesNotInAllowedRange
      FailedLocalLoginsNotInAllowedRange = Azure::Security::Mgmt::V2017_08_01_preview::Models::FailedLocalLoginsNotInAllowedRange
      FileUploadsNotInAllowedRange = Azure::Security::Mgmt::V2017_08_01_preview::Models::FileUploadsNotInAllowedRange
      QueuePurgesNotInAllowedRange = Azure::Security::Mgmt::V2017_08_01_preview::Models::QueuePurgesNotInAllowedRange
      TwinUpdatesNotInAllowedRange = Azure::Security::Mgmt::V2017_08_01_preview::Models::TwinUpdatesNotInAllowedRange
      UnauthorizedOperationsNotInAllowedRange = Azure::Security::Mgmt::V2017_08_01_preview::Models::UnauthorizedOperationsNotInAllowedRange
      InformationProtectionPolicy = Azure::Security::Mgmt::V2017_08_01_preview::Models::InformationProtectionPolicy
      SecurityContact = Azure::Security::Mgmt::V2017_08_01_preview::Models::SecurityContact
      DataExportSetting = Azure::Security::Mgmt::V2017_08_01_preview::Models::DataExportSetting
      WorkspaceSetting = Azure::Security::Mgmt::V2017_08_01_preview::Models::WorkspaceSetting
      ValueType = Azure::Security::Mgmt::V2017_08_01_preview::Models::ValueType
      Rank = Azure::Security::Mgmt::V2017_08_01_preview::Models::Rank
      AlertNotifications = Azure::Security::Mgmt::V2017_08_01_preview::Models::AlertNotifications
      AlertsToAdmins = Azure::Security::Mgmt::V2017_08_01_preview::Models::AlertsToAdmins
      SettingKind = Azure::Security::Mgmt::V2017_08_01_preview::Models::SettingKind
      ComplianceResultList = Azure::Security::Mgmt::V2017_08_01::Models::ComplianceResultList
      ComplianceResult = Azure::Security::Mgmt::V2017_08_01::Models::ComplianceResult
      ResourceStatus = Azure::Security::Mgmt::V2017_08_01::Models::ResourceStatus
      PricingList = Azure::Security::Mgmt::V2018_06_01::Models::PricingList
      Pricing = Azure::Security::Mgmt::V2018_06_01::Models::Pricing
      PricingTier = Azure::Security::Mgmt::V2018_06_01::Models::PricingTier
      ScopeElement = Azure::Security::Mgmt::V2019_01_01_preview::Models::ScopeElement
      RegulatoryComplianceStandardList = Azure::Security::Mgmt::V2019_01_01_preview::Models::RegulatoryComplianceStandardList
      SuppressionAlertsScope = Azure::Security::Mgmt::V2019_01_01_preview::Models::SuppressionAlertsScope
      RegulatoryComplianceControlList = Azure::Security::Mgmt::V2019_01_01_preview::Models::RegulatoryComplianceControlList
      RegulatoryComplianceAssessmentList = Azure::Security::Mgmt::V2019_01_01_preview::Models::RegulatoryComplianceAssessmentList
      AlertsSuppressionRulesList = Azure::Security::Mgmt::V2019_01_01_preview::Models::AlertsSuppressionRulesList
      RegulatoryComplianceStandard = Azure::Security::Mgmt::V2019_01_01_preview::Models::RegulatoryComplianceStandard
      RegulatoryComplianceControl = Azure::Security::Mgmt::V2019_01_01_preview::Models::RegulatoryComplianceControl
      RegulatoryComplianceAssessment = Azure::Security::Mgmt::V2019_01_01_preview::Models::RegulatoryComplianceAssessment
      AlertsSuppressionRule = Azure::Security::Mgmt::V2019_01_01_preview::Models::AlertsSuppressionRule
      State = Azure::Security::Mgmt::V2019_01_01_preview::Models::State
      RuleState = Azure::Security::Mgmt::V2019_01_01_preview::Models::RuleState
      AlertConfidenceReason = Azure::Security::Mgmt::V2019_01_01::Models::AlertConfidenceReason
      AlertList = Azure::Security::Mgmt::V2019_01_01::Models::AlertList
      AlertEntity = Azure::Security::Mgmt::V2019_01_01::Models::AlertEntity
      SettingsList = Azure::Security::Mgmt::V2019_01_01::Models::SettingsList
      Alert = Azure::Security::Mgmt::V2019_01_01::Models::Alert
      SettingResource = Azure::Security::Mgmt::V2019_01_01::Models::SettingResource
      Setting = Azure::Security::Mgmt::V2019_01_01::Models::Setting
      DataExportSettings = Azure::Security::Mgmt::V2019_01_01::Models::DataExportSettings
      IoTSecuritySolutionAnalyticsModelPropertiesDevicesMetricsItem = Azure::Security::Mgmt::V2019_08_01::Models::IoTSecuritySolutionAnalyticsModelPropertiesDevicesMetricsItem
      IoTSecurityDeviceAlert = Azure::Security::Mgmt::V2019_08_01::Models::IoTSecurityDeviceAlert
      IoTSeverityMetrics = Azure::Security::Mgmt::V2019_08_01::Models::IoTSeverityMetrics
      IoTSecurityAlertedDevice = Azure::Security::Mgmt::V2019_08_01::Models::IoTSecurityAlertedDevice
      IoTSecurityAggregatedAlertPropertiesTopDevicesListItem = Azure::Security::Mgmt::V2019_08_01::Models::IoTSecurityAggregatedAlertPropertiesTopDevicesListItem
      IoTSecurityDeviceRecommendation = Azure::Security::Mgmt::V2019_08_01::Models::IoTSecurityDeviceRecommendation
      IoTSecurityAggregatedAlertList = Azure::Security::Mgmt::V2019_08_01::Models::IoTSecurityAggregatedAlertList
      IoTSecurityAggregatedRecommendationList = Azure::Security::Mgmt::V2019_08_01::Models::IoTSecurityAggregatedRecommendationList
      IotRecommendationList = Azure::Security::Mgmt::V2019_08_01::Models::IotRecommendationList
      UserDefinedResourcesProperties = Azure::Security::Mgmt::V2019_08_01::Models::UserDefinedResourcesProperties
      RecommendationConfigurationProperties = Azure::Security::Mgmt::V2019_08_01::Models::RecommendationConfigurationProperties
      IoTSecurityAggregatedAlert = Azure::Security::Mgmt::V2019_08_01::Models::IoTSecurityAggregatedAlert
      IoTSecuritySolutionModel = Azure::Security::Mgmt::V2019_08_01::Models::IoTSecuritySolutionModel
      TagsResource = Azure::Security::Mgmt::V2019_08_01::Models::TagsResource
      IoTSecuritySolutionsList = Azure::Security::Mgmt::V2019_08_01::Models::IoTSecuritySolutionsList
      IoTSecuritySolutionAnalyticsModelList = Azure::Security::Mgmt::V2019_08_01::Models::IoTSecuritySolutionAnalyticsModelList
      IotAlertList = Azure::Security::Mgmt::V2019_08_01::Models::IotAlertList
      IotAlert = Azure::Security::Mgmt::V2019_08_01::Models::IotAlert
      IoTSecurityAggregatedRecommendation = Azure::Security::Mgmt::V2019_08_01::Models::IoTSecurityAggregatedRecommendation
      IoTSecuritySolutionAnalyticsModel = Azure::Security::Mgmt::V2019_08_01::Models::IoTSecuritySolutionAnalyticsModel
      UpdateIotSecuritySolutionData = Azure::Security::Mgmt::V2019_08_01::Models::UpdateIotSecuritySolutionData
      IotRecommendation = Azure::Security::Mgmt::V2019_08_01::Models::IotRecommendation
      ReportedSeverity = Azure::Security::Mgmt::V2019_08_01::Models::ReportedSeverity
      SecuritySolutionStatus = Azure::Security::Mgmt::V2019_08_01::Models::SecuritySolutionStatus
      ExportData = Azure::Security::Mgmt::V2019_08_01::Models::ExportData
      DataSource = Azure::Security::Mgmt::V2019_08_01::Models::DataSource
      RecommendationType = Azure::Security::Mgmt::V2019_08_01::Models::RecommendationType
      RecommendationConfigStatus = Azure::Security::Mgmt::V2019_08_01::Models::RecommendationConfigStatus
      UnmaskedIpLoggingStatus = Azure::Security::Mgmt::V2019_08_01::Models::UnmaskedIpLoggingStatus
      ServicePrincipalProperties = Azure::Security::Mgmt::V2020_01_01_preview::Models::ServicePrincipalProperties
      AuthenticationDetailsProperties = Azure::Security::Mgmt::V2020_01_01_preview::Models::AuthenticationDetailsProperties
      ConnectorSettingList = Azure::Security::Mgmt::V2020_01_01_preview::Models::ConnectorSettingList
      HybridComputeSettingsProperties = Azure::Security::Mgmt::V2020_01_01_preview::Models::HybridComputeSettingsProperties
      ProxyServerProperties = Azure::Security::Mgmt::V2020_01_01_preview::Models::ProxyServerProperties
      ConnectorSetting = Azure::Security::Mgmt::V2020_01_01_preview::Models::ConnectorSetting
      AwsCredsAuthenticationDetailsProperties = Azure::Security::Mgmt::V2020_01_01_preview::Models::AwsCredsAuthenticationDetailsProperties
      AwAssumeRoleAuthenticationDetailsProperties = Azure::Security::Mgmt::V2020_01_01_preview::Models::AwAssumeRoleAuthenticationDetailsProperties
      GcpCredentialsDetailsProperties = Azure::Security::Mgmt::V2020_01_01_preview::Models::GcpCredentialsDetailsProperties
      HybridComputeProvisioningState = Azure::Security::Mgmt::V2020_01_01_preview::Models::HybridComputeProvisioningState
      AutoProvision = Azure::Security::Mgmt::V2020_01_01_preview::Models::AutoProvision
      AuthenticationProvisioningState = Azure::Security::Mgmt::V2020_01_01_preview::Models::AuthenticationProvisioningState
      PermissionProperty = Azure::Security::Mgmt::V2020_01_01_preview::Models::PermissionProperty
      SecuritySolution = Azure::Security::Mgmt::V2020_01_01::Models::SecuritySolution
      Rule = Azure::Security::Mgmt::V2020_01_01::Models::Rule
      SecuritySolutionList = Azure::Security::Mgmt::V2020_01_01::Models::SecuritySolutionList
      AzureResourceLink = Azure::Security::Mgmt::V2020_01_01::Models::AzureResourceLink
      SecurityAssessmentList = Azure::Security::Mgmt::V2020_01_01::Models::SecurityAssessmentList
      AdaptiveNetworkHardeningEnforceRequest = Azure::Security::Mgmt::V2020_01_01::Models::AdaptiveNetworkHardeningEnforceRequest
      SecureScoreControlDefinitionSource = Azure::Security::Mgmt::V2020_01_01::Models::SecureScoreControlDefinitionSource
      SecureScoreControlScore = Azure::Security::Mgmt::V2020_01_01::Models::SecureScoreControlScore
      SecureScoresList = Azure::Security::Mgmt::V2020_01_01::Models::SecureScoresList
      DiscoveredSecuritySolution = Azure::Security::Mgmt::V2020_01_01::Models::DiscoveredSecuritySolution
      DiscoveredSecuritySolutionList = Azure::Security::Mgmt::V2020_01_01::Models::DiscoveredSecuritySolutionList
      ConnectableResource = Azure::Security::Mgmt::V2020_01_01::Models::ConnectableResource
      EffectiveNetworkSecurityGroups = Azure::Security::Mgmt::V2020_01_01::Models::EffectiveNetworkSecurityGroups
      AllowedConnectionsList = Azure::Security::Mgmt::V2020_01_01::Models::AllowedConnectionsList
      TopologyList = Azure::Security::Mgmt::V2020_01_01::Models::TopologyList
      ProtectionMode = Azure::Security::Mgmt::V2020_01_01::Models::ProtectionMode
      SecuritySolutionsReferenceData = Azure::Security::Mgmt::V2020_01_01::Models::SecuritySolutionsReferenceData
      VmRecommendation = Azure::Security::Mgmt::V2020_01_01::Models::VmRecommendation
      SecuritySolutionsReferenceDataList = Azure::Security::Mgmt::V2020_01_01::Models::SecuritySolutionsReferenceDataList
      UserRecommendation = Azure::Security::Mgmt::V2020_01_01::Models::UserRecommendation
      ExternalSecuritySolution = Azure::Security::Mgmt::V2020_01_01::Models::ExternalSecuritySolution
      AdaptiveApplicationControlGroup = Azure::Security::Mgmt::V2020_01_01::Models::AdaptiveApplicationControlGroup
      ExternalSecuritySolutionList = Azure::Security::Mgmt::V2020_01_01::Models::ExternalSecuritySolutionList
      SecurityAssessmentMetadataPartnerData = Azure::Security::Mgmt::V2020_01_01::Models::SecurityAssessmentMetadataPartnerData
      TopologyResource = Azure::Security::Mgmt::V2020_01_01::Models::TopologyResource
      SecureScoreControlList = Azure::Security::Mgmt::V2020_01_01::Models::SecureScoreControlList
      TopologySingleResource = Azure::Security::Mgmt::V2020_01_01::Models::TopologySingleResource
      ResourceDetails = Azure::Security::Mgmt::V2020_01_01::Models::ResourceDetails
      TopologySingleResourceChild = Azure::Security::Mgmt::V2020_01_01::Models::TopologySingleResourceChild
      AssessmentLinks = Azure::Security::Mgmt::V2020_01_01::Models::AssessmentLinks
      TopologySingleResourceParent = Azure::Security::Mgmt::V2020_01_01::Models::TopologySingleResourceParent
      AdaptiveNetworkHardeningsList = Azure::Security::Mgmt::V2020_01_01::Models::AdaptiveNetworkHardeningsList
      ConnectedWorkspace = Azure::Security::Mgmt::V2020_01_01::Models::ConnectedWorkspace
      AadSolutionProperties = Azure::Security::Mgmt::V2020_01_01::Models::AadSolutionProperties
      ServerVulnerabilityAssessmentsList = Azure::Security::Mgmt::V2020_01_01::Models::ServerVulnerabilityAssessmentsList
      AllowedConnectionsResource = Azure::Security::Mgmt::V2020_01_01::Models::AllowedConnectionsResource
      ExternalSecuritySolutionKind1 = Azure::Security::Mgmt::V2020_01_01::Models::ExternalSecuritySolutionKind1
      AdaptiveApplicationControlIssueSummary = Azure::Security::Mgmt::V2020_01_01::Models::AdaptiveApplicationControlIssueSummary
      ExternalSecuritySolutionProperties = Azure::Security::Mgmt::V2020_01_01::Models::ExternalSecuritySolutionProperties
      PathRecommendation = Azure::Security::Mgmt::V2020_01_01::Models::PathRecommendation
      AadConnectivityState1 = Azure::Security::Mgmt::V2020_01_01::Models::AadConnectivityState1
      SecurityAssessmentMetadataProperties = Azure::Security::Mgmt::V2020_01_01::Models::SecurityAssessmentMetadataProperties
      JitNetworkAccessPortRule = Azure::Security::Mgmt::V2020_01_01::Models::JitNetworkAccessPortRule
      AssessmentStatus = Azure::Security::Mgmt::V2020_01_01::Models::AssessmentStatus
      JitNetworkAccessPolicyVirtualMachine = Azure::Security::Mgmt::V2020_01_01::Models::JitNetworkAccessPolicyVirtualMachine
      SecureScoreControlDefinitionList = Azure::Security::Mgmt::V2020_01_01::Models::SecureScoreControlDefinitionList
      JitNetworkAccessRequestPort = Azure::Security::Mgmt::V2020_01_01::Models::JitNetworkAccessRequestPort
      ConnectedResource = Azure::Security::Mgmt::V2020_01_01::Models::ConnectedResource
      JitNetworkAccessRequestVirtualMachine = Azure::Security::Mgmt::V2020_01_01::Models::JitNetworkAccessRequestVirtualMachine
      PublisherInfo = Azure::Security::Mgmt::V2020_01_01::Models::PublisherInfo
      JitNetworkAccessRequest = Azure::Security::Mgmt::V2020_01_01::Models::JitNetworkAccessRequest
      SecurityAssessmentMetadataList = Azure::Security::Mgmt::V2020_01_01::Models::SecurityAssessmentMetadataList
      JitNetworkAccessPolicy = Azure::Security::Mgmt::V2020_01_01::Models::JitNetworkAccessPolicy
      JitNetworkAccessPoliciesList = Azure::Security::Mgmt::V2020_01_01::Models::JitNetworkAccessPoliciesList
      AdaptiveApplicationControlGroups = Azure::Security::Mgmt::V2020_01_01::Models::AdaptiveApplicationControlGroups
      JitNetworkAccessPolicyInitiatePort = Azure::Security::Mgmt::V2020_01_01::Models::JitNetworkAccessPolicyInitiatePort
      Location = Azure::Security::Mgmt::V2020_01_01::Models::Location
      JitNetworkAccessPolicyInitiateVirtualMachine = Azure::Security::Mgmt::V2020_01_01::Models::JitNetworkAccessPolicyInitiateVirtualMachine
      SecurityAssessmentPartnerData = Azure::Security::Mgmt::V2020_01_01::Models::SecurityAssessmentPartnerData
      JitNetworkAccessPolicyInitiateRequest = Azure::Security::Mgmt::V2020_01_01::Models::JitNetworkAccessPolicyInitiateRequest
      AdaptiveNetworkHardening = Azure::Security::Mgmt::V2020_01_01::Models::AdaptiveNetworkHardening
      SecurityAssessmentMetadata = Azure::Security::Mgmt::V2020_01_01::Models::SecurityAssessmentMetadata
      SecurityAssessment = Azure::Security::Mgmt::V2020_01_01::Models::SecurityAssessment
      OnPremiseResourceDetails = Azure::Security::Mgmt::V2020_01_01::Models::OnPremiseResourceDetails
      OnPremiseSqlResourceDetails = Azure::Security::Mgmt::V2020_01_01::Models::OnPremiseSqlResourceDetails
      AzureResourceDetails = Azure::Security::Mgmt::V2020_01_01::Models::AzureResourceDetails
      CefSolutionProperties = Azure::Security::Mgmt::V2020_01_01::Models::CefSolutionProperties
      CefExternalSecuritySolution = Azure::Security::Mgmt::V2020_01_01::Models::CefExternalSecuritySolution
      AtaSolutionProperties = Azure::Security::Mgmt::V2020_01_01::Models::AtaSolutionProperties
      AtaExternalSecuritySolution = Azure::Security::Mgmt::V2020_01_01::Models::AtaExternalSecuritySolution
      AadExternalSecuritySolution = Azure::Security::Mgmt::V2020_01_01::Models::AadExternalSecuritySolution
      ServerVulnerabilityAssessment = Azure::Security::Mgmt::V2020_01_01::Models::ServerVulnerabilityAssessment
      SecureScoreItem = Azure::Security::Mgmt::V2020_01_01::Models::SecureScoreItem
      SecureScoreControlDefinitionItem = Azure::Security::Mgmt::V2020_01_01::Models::SecureScoreControlDefinitionItem
      SecureScoreControlDetails = Azure::Security::Mgmt::V2020_01_01::Models::SecureScoreControlDetails
      Direction = Azure::Security::Mgmt::V2020_01_01::Models::Direction
      TransportProtocol = Azure::Security::Mgmt::V2020_01_01::Models::TransportProtocol
      Category = Azure::Security::Mgmt::V2020_01_01::Models::Category
      Severity = Azure::Security::Mgmt::V2020_01_01::Models::Severity
      UserImpact = Azure::Security::Mgmt::V2020_01_01::Models::UserImpact
      ImplementationEffort = Azure::Security::Mgmt::V2020_01_01::Models::ImplementationEffort
      Threats = Azure::Security::Mgmt::V2020_01_01::Models::Threats
      AssessmentType = Azure::Security::Mgmt::V2020_01_01::Models::AssessmentType
      AssessmentStatusCode = Azure::Security::Mgmt::V2020_01_01::Models::AssessmentStatusCode
      SecurityFamily = Azure::Security::Mgmt::V2020_01_01::Models::SecurityFamily
      ProvisioningState = Azure::Security::Mgmt::V2020_01_01::Models::ProvisioningState
      AadConnectivityState = Azure::Security::Mgmt::V2020_01_01::Models::AadConnectivityState
      ExternalSecuritySolutionKind = Azure::Security::Mgmt::V2020_01_01::Models::ExternalSecuritySolutionKind
      Status = Azure::Security::Mgmt::V2020_01_01::Models::Status
      StatusReason = Azure::Security::Mgmt::V2020_01_01::Models::StatusReason
      ControlType = Azure::Security::Mgmt::V2020_01_01::Models::ControlType
      ConnectionType = Azure::Security::Mgmt::V2020_01_01::Models::ConnectionType
      ExpandEnum = Azure::Security::Mgmt::V2020_01_01::Models::ExpandEnum
      ExpandControlsEnum = Azure::Security::Mgmt::V2020_01_01::Models::ExpandControlsEnum
      Baseline = Azure::Security::Mgmt::V2020_07_01_preview::Models::Baseline
      ScanProperties = Azure::Security::Mgmt::V2020_07_01_preview::Models::ScanProperties
      BaselineAdjustedResult = Azure::Security::Mgmt::V2020_07_01_preview::Models::BaselineAdjustedResult
      Scans = Azure::Security::Mgmt::V2020_07_01_preview::Models::Scans
      QueryCheck = Azure::Security::Mgmt::V2020_07_01_preview::Models::QueryCheck
      BenchmarkReference = Azure::Security::Mgmt::V2020_07_01_preview::Models::BenchmarkReference
      VaRule = Azure::Security::Mgmt::V2020_07_01_preview::Models::VaRule
      ScanResultProperties = Azure::Security::Mgmt::V2020_07_01_preview::Models::ScanResultProperties
      Remediation = Azure::Security::Mgmt::V2020_07_01_preview::Models::Remediation
      RuleResultsProperties = Azure::Security::Mgmt::V2020_07_01_preview::Models::RuleResultsProperties
      RulesResultsInput = Azure::Security::Mgmt::V2020_07_01_preview::Models::RulesResultsInput
      RulesResults = Azure::Security::Mgmt::V2020_07_01_preview::Models::RulesResults
      ScanResults = Azure::Security::Mgmt::V2020_07_01_preview::Models::ScanResults
      RuleResultsInput = Azure::Security::Mgmt::V2020_07_01_preview::Models::RuleResultsInput
      Scan = Azure::Security::Mgmt::V2020_07_01_preview::Models::Scan
      ScanResult = Azure::Security::Mgmt::V2020_07_01_preview::Models::ScanResult
      RuleResults = Azure::Security::Mgmt::V2020_07_01_preview::Models::RuleResults
      ScanTriggerType = Azure::Security::Mgmt::V2020_07_01_preview::Models::ScanTriggerType
      ScanState = Azure::Security::Mgmt::V2020_07_01_preview::Models::ScanState
      RuleStatus = Azure::Security::Mgmt::V2020_07_01_preview::Models::RuleStatus
      RuleSeverity = Azure::Security::Mgmt::V2020_07_01_preview::Models::RuleSeverity
      RuleType = Azure::Security::Mgmt::V2020_07_01_preview::Models::RuleType
      Tags = Azure::Security::Mgmt::V2020_08_06_preview::Models::Tags
      Resource = Azure::Security::Mgmt::V2020_08_06_preview::Models::Resource
      IotDefenderSettingsList = Azure::Security::Mgmt::V2020_08_06_preview::Models::IotDefenderSettingsList
      PackageDownloadsSensorFullOvf = Azure::Security::Mgmt::V2020_08_06_preview::Models::PackageDownloadsSensorFullOvf
      IotRecommendationTypeList = Azure::Security::Mgmt::V2020_08_06_preview::Models::IotRecommendationTypeList
      PackageDownloadsSensor = Azure::Security::Mgmt::V2020_08_06_preview::Models::PackageDownloadsSensor
      IotSensorsList = Azure::Security::Mgmt::V2020_08_06_preview::Models::IotSensorsList
      PackageDownloadsCentralManagerFull = Azure::Security::Mgmt::V2020_08_06_preview::Models::PackageDownloadsCentralManagerFull
      IpAddress = Azure::Security::Mgmt::V2020_08_06_preview::Models::IpAddress
      PackageDownloadsThreatIntelligence = Azure::Security::Mgmt::V2020_08_06_preview::Models::PackageDownloadsThreatIntelligence
      MacAddress = Azure::Security::Mgmt::V2020_08_06_preview::Models::MacAddress
      IotAlertListModel = Azure::Security::Mgmt::V2020_08_06_preview::Models::IotAlertListModel
      TrackedResource = Azure::Security::Mgmt::V2020_08_06_preview::Models::TrackedResource
      NetworkInterface = Azure::Security::Mgmt::V2020_08_06_preview::Models::NetworkInterface
      Kind = Azure::Security::Mgmt::V2020_08_06_preview::Models::Kind
      Protocol = Azure::Security::Mgmt::V2020_08_06_preview::Models::Protocol
      IotAlertModel = Azure::Security::Mgmt::V2020_08_06_preview::Models::IotAlertModel
      PackageDownloadInfo = Azure::Security::Mgmt::V2020_08_06_preview::Models::PackageDownloadInfo
      Firmware = Azure::Security::Mgmt::V2020_08_06_preview::Models::Firmware
      PackageDownloadsCentralManagerFullOvf = Azure::Security::Mgmt::V2020_08_06_preview::Models::PackageDownloadsCentralManagerFullOvf
      Sensor = Azure::Security::Mgmt::V2020_08_06_preview::Models::Sensor
      PackageDownloads = Azure::Security::Mgmt::V2020_08_06_preview::Models::PackageDownloads
      Site = Azure::Security::Mgmt::V2020_08_06_preview::Models::Site
      ETag = Azure::Security::Mgmt::V2020_08_06_preview::Models::ETag
      IotRecommendationListModel = Azure::Security::Mgmt::V2020_08_06_preview::Models::IotRecommendationListModel
      PackageDownloadsCentralManager = Azure::Security::Mgmt::V2020_08_06_preview::Models::PackageDownloadsCentralManager
      DeviceList = Azure::Security::Mgmt::V2020_08_06_preview::Models::DeviceList
      PackageDownloadsSensorFull = Azure::Security::Mgmt::V2020_08_06_preview::Models::PackageDownloadsSensorFull
      IotAlertTypeList = Azure::Security::Mgmt::V2020_08_06_preview::Models::IotAlertTypeList
      AzureTrackedResourceLocation = Azure::Security::Mgmt::V2020_08_06_preview::Models::AzureTrackedResourceLocation
      OnPremiseIotSensorsList = Azure::Security::Mgmt::V2020_08_06_preview::Models::OnPremiseIotSensorsList
      IotDefenderSettingsModel = Azure::Security::Mgmt::V2020_08_06_preview::Models::IotDefenderSettingsModel
      AscLocation = Azure::Security::Mgmt::V2020_08_06_preview::Models::AscLocation
      IotSensor = Azure::Security::Mgmt::V2020_08_06_preview::Models::IotSensor
      Device = Azure::Security::Mgmt::V2020_08_06_preview::Models::Device
      OnPremiseIotSensor = Azure::Security::Mgmt::V2020_08_06_preview::Models::OnPremiseIotSensor
      IotAlertType = Azure::Security::Mgmt::V2020_08_06_preview::Models::IotAlertType
      IotRecommendationModel = Azure::Security::Mgmt::V2020_08_06_preview::Models::IotRecommendationModel
      IotRecommendationType = Azure::Security::Mgmt::V2020_08_06_preview::Models::IotRecommendationType
      VersionKind = Azure::Security::Mgmt::V2020_08_06_preview::Models::VersionKind
      MacSignificance = Azure::Security::Mgmt::V2020_08_06_preview::Models::MacSignificance
      RelationToIpStatus = Azure::Security::Mgmt::V2020_08_06_preview::Models::RelationToIpStatus
      ManagementState = Azure::Security::Mgmt::V2020_08_06_preview::Models::ManagementState
      AuthorizationState = Azure::Security::Mgmt::V2020_08_06_preview::Models::AuthorizationState
      DeviceCriticality = Azure::Security::Mgmt::V2020_08_06_preview::Models::DeviceCriticality
      PurdueLevel = Azure::Security::Mgmt::V2020_08_06_preview::Models::PurdueLevel
      ProgrammingState = Azure::Security::Mgmt::V2020_08_06_preview::Models::ProgrammingState
      ScanningFunctionality = Azure::Security::Mgmt::V2020_08_06_preview::Models::ScanningFunctionality
      DeviceStatus = Azure::Security::Mgmt::V2020_08_06_preview::Models::DeviceStatus
      AlertSeverity = Azure::Security::Mgmt::V2020_08_06_preview::Models::AlertSeverity
      AlertIntent = Azure::Security::Mgmt::V2020_08_06_preview::Models::AlertIntent
      RecommendationSeverity = Azure::Security::Mgmt::V2020_08_06_preview::Models::RecommendationSeverity
    end

    #
    # SecurityManagementClass
    #
    class SecurityManagementClass
      attr_reader :locations, :operations, :tasks, :advanced_threat_protection, :auto_provisioning_settings, :compliances, :device_security_groups, :information_protection_policies, :io_tsecurity_solutions_analytics, :io_tsecurity_solutions_analytics_aggregated_alerts, :io_tsecurity_solutions_analytics_aggregated_alert, :io_tsecurity_solutions_analytics_recommendation, :io_tsecurity_solutions_analytics_recommendations, :io_tsecurity_solutions, :io_tsecurity_solutions_resource_group, :security_contacts, :workspace_settings, :compliance_results, :pricings, :regulatory_compliance_standards, :regulatory_compliance_controls, :regulatory_compliance_assessments, :alerts_suppression_rules, :assessments_metadata_subscription, :alerts, :settings, :iot_security_solution_analytics, :iot_security_solutions_analytics_aggregated_alert, :iot_security_solutions_analytics_recommendation, :iot_security_solution, :connectors, :adaptive_network_hardenings, :allowed_connections, :adaptive_application_controls, :assessments_metadata, :assessments, :discovered_security_solutions, :security_solutions, :security_solutions_reference_data_operations, :external_security_solutions, :jit_network_access_policies, :server_vulnerability_assessment_operations, :topology, :secure_scores, :secure_score_controls, :secure_score_control_definitions, :sql_vulnerability_assessment_scans, :sql_vulnerability_assessment_scan_results, :sql_vulnerability_assessment_baseline_rules, :iot_defender_settings, :iot_sensors, :devices_for_subscription, :devices_for_hub, :device_operations, :on_premise_iot_sensors, :iot_alerts, :iot_alert_types, :iot_recommendations, :iot_recommendation_types, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::Security::Mgmt::V2015_06_01_preview::SecurityCenter.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @locations = @client_0.locations
        @operations = @client_0.operations
        @tasks = @client_0.tasks

        @client_1 = Azure::Security::Mgmt::V2017_08_01_preview::SecurityCenter.new(configurable.credentials, base_url, options)
        if(@client_1.respond_to?(:subscription_id))
          @client_1.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_1)
        @advanced_threat_protection = @client_1.advanced_threat_protection
        @auto_provisioning_settings = @client_1.auto_provisioning_settings
        @compliances = @client_1.compliances
        @device_security_groups = @client_1.device_security_groups
        @information_protection_policies = @client_1.information_protection_policies
        @io_tsecurity_solutions_analytics = @client_1.io_tsecurity_solutions_analytics
        @io_tsecurity_solutions_analytics_aggregated_alerts = @client_1.io_tsecurity_solutions_analytics_aggregated_alerts
        @io_tsecurity_solutions_analytics_aggregated_alert = @client_1.io_tsecurity_solutions_analytics_aggregated_alert
        @io_tsecurity_solutions_analytics_recommendation = @client_1.io_tsecurity_solutions_analytics_recommendation
        @io_tsecurity_solutions_analytics_recommendations = @client_1.io_tsecurity_solutions_analytics_recommendations
        @io_tsecurity_solutions = @client_1.io_tsecurity_solutions
        @io_tsecurity_solutions_resource_group = @client_1.io_tsecurity_solutions_resource_group
        @security_contacts = @client_1.security_contacts
        @workspace_settings = @client_1.workspace_settings

        @client_2 = Azure::Security::Mgmt::V2017_08_01::SecurityCenter.new(configurable.credentials, base_url, options)
        if(@client_2.respond_to?(:subscription_id))
          @client_2.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_2)
        @compliance_results = @client_2.compliance_results

        @client_3 = Azure::Security::Mgmt::V2018_06_01::SecurityCenter.new(configurable.credentials, base_url, options)
        if(@client_3.respond_to?(:subscription_id))
          @client_3.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_3)
        @pricings = @client_3.pricings

        @client_4 = Azure::Security::Mgmt::V2019_01_01_preview::SecurityCenter.new(configurable.credentials, base_url, options)
        if(@client_4.respond_to?(:subscription_id))
          @client_4.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_4)
        @regulatory_compliance_standards = @client_4.regulatory_compliance_standards
        @regulatory_compliance_controls = @client_4.regulatory_compliance_controls
        @regulatory_compliance_assessments = @client_4.regulatory_compliance_assessments
        @alerts_suppression_rules = @client_4.alerts_suppression_rules
        @assessments_metadata_subscription = @client_4.assessments_metadata_subscription

        @client_5 = Azure::Security::Mgmt::V2019_01_01::SecurityCenter.new(configurable.credentials, base_url, options)
        if(@client_5.respond_to?(:subscription_id))
          @client_5.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_5)
        @alerts = @client_5.alerts
        @settings = @client_5.settings

        @client_6 = Azure::Security::Mgmt::V2019_08_01::SecurityCenter.new(configurable.credentials, base_url, options)
        if(@client_6.respond_to?(:subscription_id))
          @client_6.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_6)
        @iot_security_solution_analytics = @client_6.iot_security_solution_analytics
        @iot_security_solutions_analytics_aggregated_alert = @client_6.iot_security_solutions_analytics_aggregated_alert
        @iot_security_solutions_analytics_recommendation = @client_6.iot_security_solutions_analytics_recommendation
        @iot_security_solution = @client_6.iot_security_solution

        @client_7 = Azure::Security::Mgmt::V2020_01_01_preview::SecurityCenter.new(configurable.credentials, base_url, options)
        if(@client_7.respond_to?(:subscription_id))
          @client_7.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_7)
        @connectors = @client_7.connectors

        @client_8 = Azure::Security::Mgmt::V2020_01_01::SecurityCenter.new(configurable.credentials, base_url, options)
        if(@client_8.respond_to?(:subscription_id))
          @client_8.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_8)
        @adaptive_network_hardenings = @client_8.adaptive_network_hardenings
        @allowed_connections = @client_8.allowed_connections
        @adaptive_application_controls = @client_8.adaptive_application_controls
        @assessments_metadata = @client_8.assessments_metadata
        @assessments = @client_8.assessments
        @discovered_security_solutions = @client_8.discovered_security_solutions
        @security_solutions = @client_8.security_solutions
        @security_solutions_reference_data_operations = @client_8.security_solutions_reference_data_operations
        @external_security_solutions = @client_8.external_security_solutions
        @jit_network_access_policies = @client_8.jit_network_access_policies
        @server_vulnerability_assessment_operations = @client_8.server_vulnerability_assessment_operations
        @topology = @client_8.topology
        @secure_scores = @client_8.secure_scores
        @secure_score_controls = @client_8.secure_score_controls
        @secure_score_control_definitions = @client_8.secure_score_control_definitions

        @client_9 = Azure::Security::Mgmt::V2020_07_01_preview::SecurityCenter.new(configurable.credentials, base_url, options)
        if(@client_9.respond_to?(:subscription_id))
          @client_9.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_9)
        @sql_vulnerability_assessment_scans = @client_9.sql_vulnerability_assessment_scans
        @sql_vulnerability_assessment_scan_results = @client_9.sql_vulnerability_assessment_scan_results
        @sql_vulnerability_assessment_baseline_rules = @client_9.sql_vulnerability_assessment_baseline_rules

        @client_10 = Azure::Security::Mgmt::V2020_08_06_preview::SecurityCenter.new(configurable.credentials, base_url, options)
        if(@client_10.respond_to?(:subscription_id))
          @client_10.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_10)
        @iot_defender_settings = @client_10.iot_defender_settings
        @iot_sensors = @client_10.iot_sensors
        @devices_for_subscription = @client_10.devices_for_subscription
        @devices_for_hub = @client_10.devices_for_hub
        @device_operations = @client_10.device_operations
        @on_premise_iot_sensors = @client_10.on_premise_iot_sensors
        @iot_alerts = @client_10.iot_alerts
        @iot_alert_types = @client_10.iot_alert_types
        @iot_recommendations = @client_10.iot_recommendations
        @iot_recommendation_types = @client_10.iot_recommendation_types

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/Security/Mgmt'
        client.add_user_agent_information(profile_information)
      end

      def method_missing(method, *args)
        if @client_10.respond_to?method
          @client_10.send(method, *args)
        elsif @client_9.respond_to?method
          @client_9.send(method, *args)
        elsif @client_8.respond_to?method
          @client_8.send(method, *args)
        elsif @client_7.respond_to?method
          @client_7.send(method, *args)
        elsif @client_6.respond_to?method
          @client_6.send(method, *args)
        elsif @client_5.respond_to?method
          @client_5.send(method, *args)
        elsif @client_4.respond_to?method
          @client_4.send(method, *args)
        elsif @client_3.respond_to?method
          @client_3.send(method, *args)
        elsif @client_2.respond_to?method
          @client_2.send(method, *args)
        elsif @client_1.respond_to?method
          @client_1.send(method, *args)
        elsif @client_0.respond_to?method
          @client_0.send(method, *args)
        else
          super
        end
      end

    end

    class ModelClasses
      def app_whitelisting_put_group_data
        Azure::Security::Mgmt::V2015_06_01_preview::Models::AppWhitelistingPutGroupData
      end
      def security_task_list
        Azure::Security::Mgmt::V2015_06_01_preview::Models::SecurityTaskList
      end
      def security_task_parameters
        Azure::Security::Mgmt::V2015_06_01_preview::Models::SecurityTaskParameters
      end
      def app_whitelisting_issue_summary
        Azure::Security::Mgmt::V2015_06_01_preview::Models::AppWhitelistingIssueSummary
      end
      def operation_list
        Azure::Security::Mgmt::V2015_06_01_preview::Models::OperationList
      end
      def app_whitelisting_groups
        Azure::Security::Mgmt::V2015_06_01_preview::Models::AppWhitelistingGroups
      end
      def app_whitelisting_group
        Azure::Security::Mgmt::V2015_06_01_preview::Models::AppWhitelistingGroup
      end
      def asc_location_list
        Azure::Security::Mgmt::V2015_06_01_preview::Models::AscLocationList
      end
      def operation_display
        Azure::Security::Mgmt::V2015_06_01_preview::Models::OperationDisplay
      end
      def operation
        Azure::Security::Mgmt::V2015_06_01_preview::Models::Operation
      end
      def security_task
        Azure::Security::Mgmt::V2015_06_01_preview::Models::SecurityTask
      end
      def io_tsecurity_device_alerts_list
        Azure::Security::Mgmt::V2017_08_01_preview::Models::IoTSecurityDeviceAlertsList
      end
      def device_security_group_list
        Azure::Security::Mgmt::V2017_08_01_preview::Models::DeviceSecurityGroupList
      end
      def custom_alert_rule
        Azure::Security::Mgmt::V2017_08_01_preview::Models::CustomAlertRule
      end
      def information_protection_keyword
        Azure::Security::Mgmt::V2017_08_01_preview::Models::InformationProtectionKeyword
      end
      def sensitivity_label
        Azure::Security::Mgmt::V2017_08_01_preview::Models::SensitivityLabel
      end
      def io_tsecurity_alerted_devices_list
        Azure::Security::Mgmt::V2017_08_01_preview::Models::IoTSecurityAlertedDevicesList
      end
      def security_contact_list
        Azure::Security::Mgmt::V2017_08_01_preview::Models::SecurityContactList
      end
      def compliance_segment
        Azure::Security::Mgmt::V2017_08_01_preview::Models::ComplianceSegment
      end
      def compliance_list
        Azure::Security::Mgmt::V2017_08_01_preview::Models::ComplianceList
      end
      def io_tsecurity_device_recommendations_list
        Azure::Security::Mgmt::V2017_08_01_preview::Models::IoTSecurityDeviceRecommendationsList
      end
      def auto_provisioning_setting_list
        Azure::Security::Mgmt::V2017_08_01_preview::Models::AutoProvisioningSettingList
      end
      def information_type
        Azure::Security::Mgmt::V2017_08_01_preview::Models::InformationType
      end
      def information_protection_policy_list
        Azure::Security::Mgmt::V2017_08_01_preview::Models::InformationProtectionPolicyList
      end
      def workspace_setting_list
        Azure::Security::Mgmt::V2017_08_01_preview::Models::WorkspaceSettingList
      end
      def advanced_threat_protection_setting
        Azure::Security::Mgmt::V2017_08_01_preview::Models::AdvancedThreatProtectionSetting
      end
      def auto_provisioning_setting
        Azure::Security::Mgmt::V2017_08_01_preview::Models::AutoProvisioningSetting
      end
      def compliance
        Azure::Security::Mgmt::V2017_08_01_preview::Models::Compliance
      end
      def threshold_custom_alert_rule
        Azure::Security::Mgmt::V2017_08_01_preview::Models::ThresholdCustomAlertRule
      end
      def time_window_custom_alert_rule
        Azure::Security::Mgmt::V2017_08_01_preview::Models::TimeWindowCustomAlertRule
      end
      def list_custom_alert_rule
        Azure::Security::Mgmt::V2017_08_01_preview::Models::ListCustomAlertRule
      end
      def allowlist_custom_alert_rule
        Azure::Security::Mgmt::V2017_08_01_preview::Models::AllowlistCustomAlertRule
      end
      def denylist_custom_alert_rule
        Azure::Security::Mgmt::V2017_08_01_preview::Models::DenylistCustomAlertRule
      end
      def device_security_group
        Azure::Security::Mgmt::V2017_08_01_preview::Models::DeviceSecurityGroup
      end
      def connection_to_ip_not_allowed
        Azure::Security::Mgmt::V2017_08_01_preview::Models::ConnectionToIpNotAllowed
      end
      def local_user_not_allowed
        Azure::Security::Mgmt::V2017_08_01_preview::Models::LocalUserNotAllowed
      end
      def process_not_allowed
        Azure::Security::Mgmt::V2017_08_01_preview::Models::ProcessNotAllowed
      end
      def active_connections_not_in_allowed_range
        Azure::Security::Mgmt::V2017_08_01_preview::Models::ActiveConnectionsNotInAllowedRange
      end
      def amqp_c2_dmessages_not_in_allowed_range
        Azure::Security::Mgmt::V2017_08_01_preview::Models::AmqpC2DMessagesNotInAllowedRange
      end
      def mqtt_c2_dmessages_not_in_allowed_range
        Azure::Security::Mgmt::V2017_08_01_preview::Models::MqttC2DMessagesNotInAllowedRange
      end
      def http_c2_dmessages_not_in_allowed_range
        Azure::Security::Mgmt::V2017_08_01_preview::Models::HttpC2DMessagesNotInAllowedRange
      end
      def amqp_c2_drejected_messages_not_in_allowed_range
        Azure::Security::Mgmt::V2017_08_01_preview::Models::AmqpC2DRejectedMessagesNotInAllowedRange
      end
      def mqtt_c2_drejected_messages_not_in_allowed_range
        Azure::Security::Mgmt::V2017_08_01_preview::Models::MqttC2DRejectedMessagesNotInAllowedRange
      end
      def http_c2_drejected_messages_not_in_allowed_range
        Azure::Security::Mgmt::V2017_08_01_preview::Models::HttpC2DRejectedMessagesNotInAllowedRange
      end
      def amqp_d2_cmessages_not_in_allowed_range
        Azure::Security::Mgmt::V2017_08_01_preview::Models::AmqpD2CMessagesNotInAllowedRange
      end
      def mqtt_d2_cmessages_not_in_allowed_range
        Azure::Security::Mgmt::V2017_08_01_preview::Models::MqttD2CMessagesNotInAllowedRange
      end
      def http_d2_cmessages_not_in_allowed_range
        Azure::Security::Mgmt::V2017_08_01_preview::Models::HttpD2CMessagesNotInAllowedRange
      end
      def direct_method_invokes_not_in_allowed_range
        Azure::Security::Mgmt::V2017_08_01_preview::Models::DirectMethodInvokesNotInAllowedRange
      end
      def failed_local_logins_not_in_allowed_range
        Azure::Security::Mgmt::V2017_08_01_preview::Models::FailedLocalLoginsNotInAllowedRange
      end
      def file_uploads_not_in_allowed_range
        Azure::Security::Mgmt::V2017_08_01_preview::Models::FileUploadsNotInAllowedRange
      end
      def queue_purges_not_in_allowed_range
        Azure::Security::Mgmt::V2017_08_01_preview::Models::QueuePurgesNotInAllowedRange
      end
      def twin_updates_not_in_allowed_range
        Azure::Security::Mgmt::V2017_08_01_preview::Models::TwinUpdatesNotInAllowedRange
      end
      def unauthorized_operations_not_in_allowed_range
        Azure::Security::Mgmt::V2017_08_01_preview::Models::UnauthorizedOperationsNotInAllowedRange
      end
      def information_protection_policy
        Azure::Security::Mgmt::V2017_08_01_preview::Models::InformationProtectionPolicy
      end
      def security_contact
        Azure::Security::Mgmt::V2017_08_01_preview::Models::SecurityContact
      end
      def data_export_setting
        Azure::Security::Mgmt::V2017_08_01_preview::Models::DataExportSetting
      end
      def workspace_setting
        Azure::Security::Mgmt::V2017_08_01_preview::Models::WorkspaceSetting
      end
      def value_type
        Azure::Security::Mgmt::V2017_08_01_preview::Models::ValueType
      end
      def rank
        Azure::Security::Mgmt::V2017_08_01_preview::Models::Rank
      end
      def alert_notifications
        Azure::Security::Mgmt::V2017_08_01_preview::Models::AlertNotifications
      end
      def alerts_to_admins
        Azure::Security::Mgmt::V2017_08_01_preview::Models::AlertsToAdmins
      end
      def setting_kind
        Azure::Security::Mgmt::V2017_08_01_preview::Models::SettingKind
      end
      def compliance_result_list
        Azure::Security::Mgmt::V2017_08_01::Models::ComplianceResultList
      end
      def compliance_result
        Azure::Security::Mgmt::V2017_08_01::Models::ComplianceResult
      end
      def resource_status
        Azure::Security::Mgmt::V2017_08_01::Models::ResourceStatus
      end
      def pricing_list
        Azure::Security::Mgmt::V2018_06_01::Models::PricingList
      end
      def pricing
        Azure::Security::Mgmt::V2018_06_01::Models::Pricing
      end
      def pricing_tier
        Azure::Security::Mgmt::V2018_06_01::Models::PricingTier
      end
      def scope_element
        Azure::Security::Mgmt::V2019_01_01_preview::Models::ScopeElement
      end
      def regulatory_compliance_standard_list
        Azure::Security::Mgmt::V2019_01_01_preview::Models::RegulatoryComplianceStandardList
      end
      def suppression_alerts_scope
        Azure::Security::Mgmt::V2019_01_01_preview::Models::SuppressionAlertsScope
      end
      def regulatory_compliance_control_list
        Azure::Security::Mgmt::V2019_01_01_preview::Models::RegulatoryComplianceControlList
      end
      def regulatory_compliance_assessment_list
        Azure::Security::Mgmt::V2019_01_01_preview::Models::RegulatoryComplianceAssessmentList
      end
      def alerts_suppression_rules_list
        Azure::Security::Mgmt::V2019_01_01_preview::Models::AlertsSuppressionRulesList
      end
      def regulatory_compliance_standard
        Azure::Security::Mgmt::V2019_01_01_preview::Models::RegulatoryComplianceStandard
      end
      def regulatory_compliance_control
        Azure::Security::Mgmt::V2019_01_01_preview::Models::RegulatoryComplianceControl
      end
      def regulatory_compliance_assessment
        Azure::Security::Mgmt::V2019_01_01_preview::Models::RegulatoryComplianceAssessment
      end
      def alerts_suppression_rule
        Azure::Security::Mgmt::V2019_01_01_preview::Models::AlertsSuppressionRule
      end
      def state
        Azure::Security::Mgmt::V2019_01_01_preview::Models::State
      end
      def rule_state
        Azure::Security::Mgmt::V2019_01_01_preview::Models::RuleState
      end
      def alert_confidence_reason
        Azure::Security::Mgmt::V2019_01_01::Models::AlertConfidenceReason
      end
      def alert_list
        Azure::Security::Mgmt::V2019_01_01::Models::AlertList
      end
      def alert_entity
        Azure::Security::Mgmt::V2019_01_01::Models::AlertEntity
      end
      def settings_list
        Azure::Security::Mgmt::V2019_01_01::Models::SettingsList
      end
      def alert
        Azure::Security::Mgmt::V2019_01_01::Models::Alert
      end
      def setting_resource
        Azure::Security::Mgmt::V2019_01_01::Models::SettingResource
      end
      def setting
        Azure::Security::Mgmt::V2019_01_01::Models::Setting
      end
      def data_export_settings
        Azure::Security::Mgmt::V2019_01_01::Models::DataExportSettings
      end
      def io_tsecurity_solution_analytics_model_properties_devices_metrics_item
        Azure::Security::Mgmt::V2019_08_01::Models::IoTSecuritySolutionAnalyticsModelPropertiesDevicesMetricsItem
      end
      def io_tsecurity_device_alert
        Azure::Security::Mgmt::V2019_08_01::Models::IoTSecurityDeviceAlert
      end
      def io_tseverity_metrics
        Azure::Security::Mgmt::V2019_08_01::Models::IoTSeverityMetrics
      end
      def io_tsecurity_alerted_device
        Azure::Security::Mgmt::V2019_08_01::Models::IoTSecurityAlertedDevice
      end
      def io_tsecurity_aggregated_alert_properties_top_devices_list_item
        Azure::Security::Mgmt::V2019_08_01::Models::IoTSecurityAggregatedAlertPropertiesTopDevicesListItem
      end
      def io_tsecurity_device_recommendation
        Azure::Security::Mgmt::V2019_08_01::Models::IoTSecurityDeviceRecommendation
      end
      def io_tsecurity_aggregated_alert_list
        Azure::Security::Mgmt::V2019_08_01::Models::IoTSecurityAggregatedAlertList
      end
      def io_tsecurity_aggregated_recommendation_list
        Azure::Security::Mgmt::V2019_08_01::Models::IoTSecurityAggregatedRecommendationList
      end
      def iot_recommendation_list
        Azure::Security::Mgmt::V2019_08_01::Models::IotRecommendationList
      end
      def user_defined_resources_properties
        Azure::Security::Mgmt::V2019_08_01::Models::UserDefinedResourcesProperties
      end
      def recommendation_configuration_properties
        Azure::Security::Mgmt::V2019_08_01::Models::RecommendationConfigurationProperties
      end
      def io_tsecurity_aggregated_alert
        Azure::Security::Mgmt::V2019_08_01::Models::IoTSecurityAggregatedAlert
      end
      def io_tsecurity_solution_model
        Azure::Security::Mgmt::V2019_08_01::Models::IoTSecuritySolutionModel
      end
      def tags_resource
        Azure::Security::Mgmt::V2019_08_01::Models::TagsResource
      end
      def io_tsecurity_solutions_list
        Azure::Security::Mgmt::V2019_08_01::Models::IoTSecuritySolutionsList
      end
      def io_tsecurity_solution_analytics_model_list
        Azure::Security::Mgmt::V2019_08_01::Models::IoTSecuritySolutionAnalyticsModelList
      end
      def iot_alert_list
        Azure::Security::Mgmt::V2019_08_01::Models::IotAlertList
      end
      def iot_alert
        Azure::Security::Mgmt::V2019_08_01::Models::IotAlert
      end
      def io_tsecurity_aggregated_recommendation
        Azure::Security::Mgmt::V2019_08_01::Models::IoTSecurityAggregatedRecommendation
      end
      def io_tsecurity_solution_analytics_model
        Azure::Security::Mgmt::V2019_08_01::Models::IoTSecuritySolutionAnalyticsModel
      end
      def update_iot_security_solution_data
        Azure::Security::Mgmt::V2019_08_01::Models::UpdateIotSecuritySolutionData
      end
      def iot_recommendation
        Azure::Security::Mgmt::V2019_08_01::Models::IotRecommendation
      end
      def reported_severity
        Azure::Security::Mgmt::V2019_08_01::Models::ReportedSeverity
      end
      def security_solution_status
        Azure::Security::Mgmt::V2019_08_01::Models::SecuritySolutionStatus
      end
      def export_data
        Azure::Security::Mgmt::V2019_08_01::Models::ExportData
      end
      def data_source
        Azure::Security::Mgmt::V2019_08_01::Models::DataSource
      end
      def recommendation_type
        Azure::Security::Mgmt::V2019_08_01::Models::RecommendationType
      end
      def recommendation_config_status
        Azure::Security::Mgmt::V2019_08_01::Models::RecommendationConfigStatus
      end
      def unmasked_ip_logging_status
        Azure::Security::Mgmt::V2019_08_01::Models::UnmaskedIpLoggingStatus
      end
      def service_principal_properties
        Azure::Security::Mgmt::V2020_01_01_preview::Models::ServicePrincipalProperties
      end
      def authentication_details_properties
        Azure::Security::Mgmt::V2020_01_01_preview::Models::AuthenticationDetailsProperties
      end
      def connector_setting_list
        Azure::Security::Mgmt::V2020_01_01_preview::Models::ConnectorSettingList
      end
      def hybrid_compute_settings_properties
        Azure::Security::Mgmt::V2020_01_01_preview::Models::HybridComputeSettingsProperties
      end
      def proxy_server_properties
        Azure::Security::Mgmt::V2020_01_01_preview::Models::ProxyServerProperties
      end
      def connector_setting
        Azure::Security::Mgmt::V2020_01_01_preview::Models::ConnectorSetting
      end
      def aws_creds_authentication_details_properties
        Azure::Security::Mgmt::V2020_01_01_preview::Models::AwsCredsAuthenticationDetailsProperties
      end
      def aw_assume_role_authentication_details_properties
        Azure::Security::Mgmt::V2020_01_01_preview::Models::AwAssumeRoleAuthenticationDetailsProperties
      end
      def gcp_credentials_details_properties
        Azure::Security::Mgmt::V2020_01_01_preview::Models::GcpCredentialsDetailsProperties
      end
      def hybrid_compute_provisioning_state
        Azure::Security::Mgmt::V2020_01_01_preview::Models::HybridComputeProvisioningState
      end
      def auto_provision
        Azure::Security::Mgmt::V2020_01_01_preview::Models::AutoProvision
      end
      def authentication_provisioning_state
        Azure::Security::Mgmt::V2020_01_01_preview::Models::AuthenticationProvisioningState
      end
      def permission_property
        Azure::Security::Mgmt::V2020_01_01_preview::Models::PermissionProperty
      end
      def security_solution
        Azure::Security::Mgmt::V2020_01_01::Models::SecuritySolution
      end
      def rule
        Azure::Security::Mgmt::V2020_01_01::Models::Rule
      end
      def security_solution_list
        Azure::Security::Mgmt::V2020_01_01::Models::SecuritySolutionList
      end
      def azure_resource_link
        Azure::Security::Mgmt::V2020_01_01::Models::AzureResourceLink
      end
      def security_assessment_list
        Azure::Security::Mgmt::V2020_01_01::Models::SecurityAssessmentList
      end
      def adaptive_network_hardening_enforce_request
        Azure::Security::Mgmt::V2020_01_01::Models::AdaptiveNetworkHardeningEnforceRequest
      end
      def secure_score_control_definition_source
        Azure::Security::Mgmt::V2020_01_01::Models::SecureScoreControlDefinitionSource
      end
      def secure_score_control_score
        Azure::Security::Mgmt::V2020_01_01::Models::SecureScoreControlScore
      end
      def secure_scores_list
        Azure::Security::Mgmt::V2020_01_01::Models::SecureScoresList
      end
      def discovered_security_solution
        Azure::Security::Mgmt::V2020_01_01::Models::DiscoveredSecuritySolution
      end
      def discovered_security_solution_list
        Azure::Security::Mgmt::V2020_01_01::Models::DiscoveredSecuritySolutionList
      end
      def connectable_resource
        Azure::Security::Mgmt::V2020_01_01::Models::ConnectableResource
      end
      def effective_network_security_groups
        Azure::Security::Mgmt::V2020_01_01::Models::EffectiveNetworkSecurityGroups
      end
      def allowed_connections_list
        Azure::Security::Mgmt::V2020_01_01::Models::AllowedConnectionsList
      end
      def topology_list
        Azure::Security::Mgmt::V2020_01_01::Models::TopologyList
      end
      def protection_mode
        Azure::Security::Mgmt::V2020_01_01::Models::ProtectionMode
      end
      def security_solutions_reference_data
        Azure::Security::Mgmt::V2020_01_01::Models::SecuritySolutionsReferenceData
      end
      def vm_recommendation
        Azure::Security::Mgmt::V2020_01_01::Models::VmRecommendation
      end
      def security_solutions_reference_data_list
        Azure::Security::Mgmt::V2020_01_01::Models::SecuritySolutionsReferenceDataList
      end
      def user_recommendation
        Azure::Security::Mgmt::V2020_01_01::Models::UserRecommendation
      end
      def external_security_solution
        Azure::Security::Mgmt::V2020_01_01::Models::ExternalSecuritySolution
      end
      def adaptive_application_control_group
        Azure::Security::Mgmt::V2020_01_01::Models::AdaptiveApplicationControlGroup
      end
      def external_security_solution_list
        Azure::Security::Mgmt::V2020_01_01::Models::ExternalSecuritySolutionList
      end
      def security_assessment_metadata_partner_data
        Azure::Security::Mgmt::V2020_01_01::Models::SecurityAssessmentMetadataPartnerData
      end
      def topology_resource
        Azure::Security::Mgmt::V2020_01_01::Models::TopologyResource
      end
      def secure_score_control_list
        Azure::Security::Mgmt::V2020_01_01::Models::SecureScoreControlList
      end
      def topology_single_resource
        Azure::Security::Mgmt::V2020_01_01::Models::TopologySingleResource
      end
      def resource_details
        Azure::Security::Mgmt::V2020_01_01::Models::ResourceDetails
      end
      def topology_single_resource_child
        Azure::Security::Mgmt::V2020_01_01::Models::TopologySingleResourceChild
      end
      def assessment_links
        Azure::Security::Mgmt::V2020_01_01::Models::AssessmentLinks
      end
      def topology_single_resource_parent
        Azure::Security::Mgmt::V2020_01_01::Models::TopologySingleResourceParent
      end
      def adaptive_network_hardenings_list
        Azure::Security::Mgmt::V2020_01_01::Models::AdaptiveNetworkHardeningsList
      end
      def connected_workspace
        Azure::Security::Mgmt::V2020_01_01::Models::ConnectedWorkspace
      end
      def aad_solution_properties
        Azure::Security::Mgmt::V2020_01_01::Models::AadSolutionProperties
      end
      def server_vulnerability_assessments_list
        Azure::Security::Mgmt::V2020_01_01::Models::ServerVulnerabilityAssessmentsList
      end
      def allowed_connections_resource
        Azure::Security::Mgmt::V2020_01_01::Models::AllowedConnectionsResource
      end
      def external_security_solution_kind1
        Azure::Security::Mgmt::V2020_01_01::Models::ExternalSecuritySolutionKind1
      end
      def adaptive_application_control_issue_summary
        Azure::Security::Mgmt::V2020_01_01::Models::AdaptiveApplicationControlIssueSummary
      end
      def external_security_solution_properties
        Azure::Security::Mgmt::V2020_01_01::Models::ExternalSecuritySolutionProperties
      end
      def path_recommendation
        Azure::Security::Mgmt::V2020_01_01::Models::PathRecommendation
      end
      def aad_connectivity_state1
        Azure::Security::Mgmt::V2020_01_01::Models::AadConnectivityState1
      end
      def security_assessment_metadata_properties
        Azure::Security::Mgmt::V2020_01_01::Models::SecurityAssessmentMetadataProperties
      end
      def jit_network_access_port_rule
        Azure::Security::Mgmt::V2020_01_01::Models::JitNetworkAccessPortRule
      end
      def assessment_status
        Azure::Security::Mgmt::V2020_01_01::Models::AssessmentStatus
      end
      def jit_network_access_policy_virtual_machine
        Azure::Security::Mgmt::V2020_01_01::Models::JitNetworkAccessPolicyVirtualMachine
      end
      def secure_score_control_definition_list
        Azure::Security::Mgmt::V2020_01_01::Models::SecureScoreControlDefinitionList
      end
      def jit_network_access_request_port
        Azure::Security::Mgmt::V2020_01_01::Models::JitNetworkAccessRequestPort
      end
      def connected_resource
        Azure::Security::Mgmt::V2020_01_01::Models::ConnectedResource
      end
      def jit_network_access_request_virtual_machine
        Azure::Security::Mgmt::V2020_01_01::Models::JitNetworkAccessRequestVirtualMachine
      end
      def publisher_info
        Azure::Security::Mgmt::V2020_01_01::Models::PublisherInfo
      end
      def jit_network_access_request
        Azure::Security::Mgmt::V2020_01_01::Models::JitNetworkAccessRequest
      end
      def security_assessment_metadata_list
        Azure::Security::Mgmt::V2020_01_01::Models::SecurityAssessmentMetadataList
      end
      def jit_network_access_policy
        Azure::Security::Mgmt::V2020_01_01::Models::JitNetworkAccessPolicy
      end
      def jit_network_access_policies_list
        Azure::Security::Mgmt::V2020_01_01::Models::JitNetworkAccessPoliciesList
      end
      def adaptive_application_control_groups
        Azure::Security::Mgmt::V2020_01_01::Models::AdaptiveApplicationControlGroups
      end
      def jit_network_access_policy_initiate_port
        Azure::Security::Mgmt::V2020_01_01::Models::JitNetworkAccessPolicyInitiatePort
      end
      def location
        Azure::Security::Mgmt::V2020_01_01::Models::Location
      end
      def jit_network_access_policy_initiate_virtual_machine
        Azure::Security::Mgmt::V2020_01_01::Models::JitNetworkAccessPolicyInitiateVirtualMachine
      end
      def security_assessment_partner_data
        Azure::Security::Mgmt::V2020_01_01::Models::SecurityAssessmentPartnerData
      end
      def jit_network_access_policy_initiate_request
        Azure::Security::Mgmt::V2020_01_01::Models::JitNetworkAccessPolicyInitiateRequest
      end
      def adaptive_network_hardening
        Azure::Security::Mgmt::V2020_01_01::Models::AdaptiveNetworkHardening
      end
      def security_assessment_metadata
        Azure::Security::Mgmt::V2020_01_01::Models::SecurityAssessmentMetadata
      end
      def security_assessment
        Azure::Security::Mgmt::V2020_01_01::Models::SecurityAssessment
      end
      def on_premise_resource_details
        Azure::Security::Mgmt::V2020_01_01::Models::OnPremiseResourceDetails
      end
      def on_premise_sql_resource_details
        Azure::Security::Mgmt::V2020_01_01::Models::OnPremiseSqlResourceDetails
      end
      def azure_resource_details
        Azure::Security::Mgmt::V2020_01_01::Models::AzureResourceDetails
      end
      def cef_solution_properties
        Azure::Security::Mgmt::V2020_01_01::Models::CefSolutionProperties
      end
      def cef_external_security_solution
        Azure::Security::Mgmt::V2020_01_01::Models::CefExternalSecuritySolution
      end
      def ata_solution_properties
        Azure::Security::Mgmt::V2020_01_01::Models::AtaSolutionProperties
      end
      def ata_external_security_solution
        Azure::Security::Mgmt::V2020_01_01::Models::AtaExternalSecuritySolution
      end
      def aad_external_security_solution
        Azure::Security::Mgmt::V2020_01_01::Models::AadExternalSecuritySolution
      end
      def server_vulnerability_assessment
        Azure::Security::Mgmt::V2020_01_01::Models::ServerVulnerabilityAssessment
      end
      def secure_score_item
        Azure::Security::Mgmt::V2020_01_01::Models::SecureScoreItem
      end
      def secure_score_control_definition_item
        Azure::Security::Mgmt::V2020_01_01::Models::SecureScoreControlDefinitionItem
      end
      def secure_score_control_details
        Azure::Security::Mgmt::V2020_01_01::Models::SecureScoreControlDetails
      end
      def direction
        Azure::Security::Mgmt::V2020_01_01::Models::Direction
      end
      def transport_protocol
        Azure::Security::Mgmt::V2020_01_01::Models::TransportProtocol
      end
      def category
        Azure::Security::Mgmt::V2020_01_01::Models::Category
      end
      def severity
        Azure::Security::Mgmt::V2020_01_01::Models::Severity
      end
      def user_impact
        Azure::Security::Mgmt::V2020_01_01::Models::UserImpact
      end
      def implementation_effort
        Azure::Security::Mgmt::V2020_01_01::Models::ImplementationEffort
      end
      def threats
        Azure::Security::Mgmt::V2020_01_01::Models::Threats
      end
      def assessment_type
        Azure::Security::Mgmt::V2020_01_01::Models::AssessmentType
      end
      def assessment_status_code
        Azure::Security::Mgmt::V2020_01_01::Models::AssessmentStatusCode
      end
      def security_family
        Azure::Security::Mgmt::V2020_01_01::Models::SecurityFamily
      end
      def provisioning_state
        Azure::Security::Mgmt::V2020_01_01::Models::ProvisioningState
      end
      def aad_connectivity_state
        Azure::Security::Mgmt::V2020_01_01::Models::AadConnectivityState
      end
      def external_security_solution_kind
        Azure::Security::Mgmt::V2020_01_01::Models::ExternalSecuritySolutionKind
      end
      def status
        Azure::Security::Mgmt::V2020_01_01::Models::Status
      end
      def status_reason
        Azure::Security::Mgmt::V2020_01_01::Models::StatusReason
      end
      def control_type
        Azure::Security::Mgmt::V2020_01_01::Models::ControlType
      end
      def connection_type
        Azure::Security::Mgmt::V2020_01_01::Models::ConnectionType
      end
      def expand_enum
        Azure::Security::Mgmt::V2020_01_01::Models::ExpandEnum
      end
      def expand_controls_enum
        Azure::Security::Mgmt::V2020_01_01::Models::ExpandControlsEnum
      end
      def baseline
        Azure::Security::Mgmt::V2020_07_01_preview::Models::Baseline
      end
      def scan_properties
        Azure::Security::Mgmt::V2020_07_01_preview::Models::ScanProperties
      end
      def baseline_adjusted_result
        Azure::Security::Mgmt::V2020_07_01_preview::Models::BaselineAdjustedResult
      end
      def scans
        Azure::Security::Mgmt::V2020_07_01_preview::Models::Scans
      end
      def query_check
        Azure::Security::Mgmt::V2020_07_01_preview::Models::QueryCheck
      end
      def benchmark_reference
        Azure::Security::Mgmt::V2020_07_01_preview::Models::BenchmarkReference
      end
      def va_rule
        Azure::Security::Mgmt::V2020_07_01_preview::Models::VaRule
      end
      def scan_result_properties
        Azure::Security::Mgmt::V2020_07_01_preview::Models::ScanResultProperties
      end
      def remediation
        Azure::Security::Mgmt::V2020_07_01_preview::Models::Remediation
      end
      def rule_results_properties
        Azure::Security::Mgmt::V2020_07_01_preview::Models::RuleResultsProperties
      end
      def rules_results_input
        Azure::Security::Mgmt::V2020_07_01_preview::Models::RulesResultsInput
      end
      def rules_results
        Azure::Security::Mgmt::V2020_07_01_preview::Models::RulesResults
      end
      def scan_results
        Azure::Security::Mgmt::V2020_07_01_preview::Models::ScanResults
      end
      def rule_results_input
        Azure::Security::Mgmt::V2020_07_01_preview::Models::RuleResultsInput
      end
      def scan
        Azure::Security::Mgmt::V2020_07_01_preview::Models::Scan
      end
      def scan_result
        Azure::Security::Mgmt::V2020_07_01_preview::Models::ScanResult
      end
      def rule_results
        Azure::Security::Mgmt::V2020_07_01_preview::Models::RuleResults
      end
      def scan_trigger_type
        Azure::Security::Mgmt::V2020_07_01_preview::Models::ScanTriggerType
      end
      def scan_state
        Azure::Security::Mgmt::V2020_07_01_preview::Models::ScanState
      end
      def rule_status
        Azure::Security::Mgmt::V2020_07_01_preview::Models::RuleStatus
      end
      def rule_severity
        Azure::Security::Mgmt::V2020_07_01_preview::Models::RuleSeverity
      end
      def rule_type
        Azure::Security::Mgmt::V2020_07_01_preview::Models::RuleType
      end
      def tags
        Azure::Security::Mgmt::V2020_08_06_preview::Models::Tags
      end
      def resource
        Azure::Security::Mgmt::V2020_08_06_preview::Models::Resource
      end
      def iot_defender_settings_list
        Azure::Security::Mgmt::V2020_08_06_preview::Models::IotDefenderSettingsList
      end
      def package_downloads_sensor_full_ovf
        Azure::Security::Mgmt::V2020_08_06_preview::Models::PackageDownloadsSensorFullOvf
      end
      def iot_recommendation_type_list
        Azure::Security::Mgmt::V2020_08_06_preview::Models::IotRecommendationTypeList
      end
      def package_downloads_sensor
        Azure::Security::Mgmt::V2020_08_06_preview::Models::PackageDownloadsSensor
      end
      def iot_sensors_list
        Azure::Security::Mgmt::V2020_08_06_preview::Models::IotSensorsList
      end
      def package_downloads_central_manager_full
        Azure::Security::Mgmt::V2020_08_06_preview::Models::PackageDownloadsCentralManagerFull
      end
      def ip_address
        Azure::Security::Mgmt::V2020_08_06_preview::Models::IpAddress
      end
      def package_downloads_threat_intelligence
        Azure::Security::Mgmt::V2020_08_06_preview::Models::PackageDownloadsThreatIntelligence
      end
      def mac_address
        Azure::Security::Mgmt::V2020_08_06_preview::Models::MacAddress
      end
      def iot_alert_list_model
        Azure::Security::Mgmt::V2020_08_06_preview::Models::IotAlertListModel
      end
      def tracked_resource
        Azure::Security::Mgmt::V2020_08_06_preview::Models::TrackedResource
      end
      def network_interface
        Azure::Security::Mgmt::V2020_08_06_preview::Models::NetworkInterface
      end
      def kind
        Azure::Security::Mgmt::V2020_08_06_preview::Models::Kind
      end
      def protocol
        Azure::Security::Mgmt::V2020_08_06_preview::Models::Protocol
      end
      def iot_alert_model
        Azure::Security::Mgmt::V2020_08_06_preview::Models::IotAlertModel
      end
      def package_download_info
        Azure::Security::Mgmt::V2020_08_06_preview::Models::PackageDownloadInfo
      end
      def firmware
        Azure::Security::Mgmt::V2020_08_06_preview::Models::Firmware
      end
      def package_downloads_central_manager_full_ovf
        Azure::Security::Mgmt::V2020_08_06_preview::Models::PackageDownloadsCentralManagerFullOvf
      end
      def sensor
        Azure::Security::Mgmt::V2020_08_06_preview::Models::Sensor
      end
      def package_downloads
        Azure::Security::Mgmt::V2020_08_06_preview::Models::PackageDownloads
      end
      def site
        Azure::Security::Mgmt::V2020_08_06_preview::Models::Site
      end
      def etag
        Azure::Security::Mgmt::V2020_08_06_preview::Models::ETag
      end
      def iot_recommendation_list_model
        Azure::Security::Mgmt::V2020_08_06_preview::Models::IotRecommendationListModel
      end
      def package_downloads_central_manager
        Azure::Security::Mgmt::V2020_08_06_preview::Models::PackageDownloadsCentralManager
      end
      def device_list
        Azure::Security::Mgmt::V2020_08_06_preview::Models::DeviceList
      end
      def package_downloads_sensor_full
        Azure::Security::Mgmt::V2020_08_06_preview::Models::PackageDownloadsSensorFull
      end
      def iot_alert_type_list
        Azure::Security::Mgmt::V2020_08_06_preview::Models::IotAlertTypeList
      end
      def azure_tracked_resource_location
        Azure::Security::Mgmt::V2020_08_06_preview::Models::AzureTrackedResourceLocation
      end
      def on_premise_iot_sensors_list
        Azure::Security::Mgmt::V2020_08_06_preview::Models::OnPremiseIotSensorsList
      end
      def iot_defender_settings_model
        Azure::Security::Mgmt::V2020_08_06_preview::Models::IotDefenderSettingsModel
      end
      def asc_location
        Azure::Security::Mgmt::V2020_08_06_preview::Models::AscLocation
      end
      def iot_sensor
        Azure::Security::Mgmt::V2020_08_06_preview::Models::IotSensor
      end
      def device
        Azure::Security::Mgmt::V2020_08_06_preview::Models::Device
      end
      def on_premise_iot_sensor
        Azure::Security::Mgmt::V2020_08_06_preview::Models::OnPremiseIotSensor
      end
      def iot_alert_type
        Azure::Security::Mgmt::V2020_08_06_preview::Models::IotAlertType
      end
      def iot_recommendation_model
        Azure::Security::Mgmt::V2020_08_06_preview::Models::IotRecommendationModel
      end
      def iot_recommendation_type
        Azure::Security::Mgmt::V2020_08_06_preview::Models::IotRecommendationType
      end
      def version_kind
        Azure::Security::Mgmt::V2020_08_06_preview::Models::VersionKind
      end
      def mac_significance
        Azure::Security::Mgmt::V2020_08_06_preview::Models::MacSignificance
      end
      def relation_to_ip_status
        Azure::Security::Mgmt::V2020_08_06_preview::Models::RelationToIpStatus
      end
      def management_state
        Azure::Security::Mgmt::V2020_08_06_preview::Models::ManagementState
      end
      def authorization_state
        Azure::Security::Mgmt::V2020_08_06_preview::Models::AuthorizationState
      end
      def device_criticality
        Azure::Security::Mgmt::V2020_08_06_preview::Models::DeviceCriticality
      end
      def purdue_level
        Azure::Security::Mgmt::V2020_08_06_preview::Models::PurdueLevel
      end
      def programming_state
        Azure::Security::Mgmt::V2020_08_06_preview::Models::ProgrammingState
      end
      def scanning_functionality
        Azure::Security::Mgmt::V2020_08_06_preview::Models::ScanningFunctionality
      end
      def device_status
        Azure::Security::Mgmt::V2020_08_06_preview::Models::DeviceStatus
      end
      def alert_severity
        Azure::Security::Mgmt::V2020_08_06_preview::Models::AlertSeverity
      end
      def alert_intent
        Azure::Security::Mgmt::V2020_08_06_preview::Models::AlertIntent
      end
      def recommendation_severity
        Azure::Security::Mgmt::V2020_08_06_preview::Models::RecommendationSeverity
      end
    end
  end
end
