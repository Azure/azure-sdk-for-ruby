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
    SecurityContacts = Azure::Security::Mgmt::V2017_08_01_preview::SecurityContacts
    WorkspaceSettings = Azure::Security::Mgmt::V2017_08_01_preview::WorkspaceSettings
    ComplianceResults = Azure::Security::Mgmt::V2017_08_01::ComplianceResults
    Pricings = Azure::Security::Mgmt::V2018_06_01::Pricings
    RegulatoryComplianceStandards = Azure::Security::Mgmt::V2019_01_01_preview::RegulatoryComplianceStandards
    RegulatoryComplianceControls = Azure::Security::Mgmt::V2019_01_01_preview::RegulatoryComplianceControls
    RegulatoryComplianceAssessments = Azure::Security::Mgmt::V2019_01_01_preview::RegulatoryComplianceAssessments
    Alerts = Azure::Security::Mgmt::V2019_01_01::Alerts
    Settings = Azure::Security::Mgmt::V2019_01_01::Settings
    IoTSecuritySolutionsAnalytics = Azure::Security::Mgmt::V2019_08_01::IoTSecuritySolutionsAnalytics
    IoTSecuritySolutionsAnalyticsAggregatedAlerts = Azure::Security::Mgmt::V2019_08_01::IoTSecuritySolutionsAnalyticsAggregatedAlerts
    IoTSecuritySolutionsAnalyticsAggregatedAlert = Azure::Security::Mgmt::V2019_08_01::IoTSecuritySolutionsAnalyticsAggregatedAlert
    IoTSecuritySolutionsAnalyticsRecommendation = Azure::Security::Mgmt::V2019_08_01::IoTSecuritySolutionsAnalyticsRecommendation
    IoTSecuritySolutionsAnalyticsRecommendations = Azure::Security::Mgmt::V2019_08_01::IoTSecuritySolutionsAnalyticsRecommendations
    IoTSecuritySolutions = Azure::Security::Mgmt::V2019_08_01::IoTSecuritySolutions
    IoTSecuritySolutionsResourceGroup = Azure::Security::Mgmt::V2019_08_01::IoTSecuritySolutionsResourceGroup
    IotSecuritySolution = Azure::Security::Mgmt::V2019_08_01::IotSecuritySolution
    AdaptiveNetworkHardenings = Azure::Security::Mgmt::V2020_01_01::AdaptiveNetworkHardenings
    AllowedConnections = Azure::Security::Mgmt::V2020_01_01::AllowedConnections
    AdaptiveApplicationControls = Azure::Security::Mgmt::V2020_01_01::AdaptiveApplicationControls
    AssessmentsMetadata = Azure::Security::Mgmt::V2020_01_01::AssessmentsMetadata
    Assessments = Azure::Security::Mgmt::V2020_01_01::Assessments
    DiscoveredSecuritySolutions = Azure::Security::Mgmt::V2020_01_01::DiscoveredSecuritySolutions
    ExternalSecuritySolutions = Azure::Security::Mgmt::V2020_01_01::ExternalSecuritySolutions
    JitNetworkAccessPolicies = Azure::Security::Mgmt::V2020_01_01::JitNetworkAccessPolicies
    ServerVulnerabilityAssessmentOperations = Azure::Security::Mgmt::V2020_01_01::ServerVulnerabilityAssessmentOperations
    Topology = Azure::Security::Mgmt::V2020_01_01::Topology

    module Models
      SecurityTaskList = Azure::Security::Mgmt::V2015_06_01_preview::Models::SecurityTaskList
      SecurityTaskParameters = Azure::Security::Mgmt::V2015_06_01_preview::Models::SecurityTaskParameters
      AppWhitelistingPutGroupData = Azure::Security::Mgmt::V2015_06_01_preview::Models::AppWhitelistingPutGroupData
      AscLocationList = Azure::Security::Mgmt::V2015_06_01_preview::Models::AscLocationList
      OperationDisplay = Azure::Security::Mgmt::V2015_06_01_preview::Models::OperationDisplay
      OperationList = Azure::Security::Mgmt::V2015_06_01_preview::Models::OperationList
      Operation = Azure::Security::Mgmt::V2015_06_01_preview::Models::Operation
      SecurityTask = Azure::Security::Mgmt::V2015_06_01_preview::Models::SecurityTask
      InformationProtectionKeyword = Azure::Security::Mgmt::V2017_08_01_preview::Models::InformationProtectionKeyword
      InformationType = Azure::Security::Mgmt::V2017_08_01_preview::Models::InformationType
      WorkspaceSettingList = Azure::Security::Mgmt::V2017_08_01_preview::Models::WorkspaceSettingList
      ComplianceSegment = Azure::Security::Mgmt::V2017_08_01_preview::Models::ComplianceSegment
      InformationProtectionPolicyList = Azure::Security::Mgmt::V2017_08_01_preview::Models::InformationProtectionPolicyList
      ComplianceList = Azure::Security::Mgmt::V2017_08_01_preview::Models::ComplianceList
      TimeWindowCustomAlertRule = Azure::Security::Mgmt::V2017_08_01_preview::Models::TimeWindowCustomAlertRule
      DeviceSecurityGroupList = Azure::Security::Mgmt::V2017_08_01_preview::Models::DeviceSecurityGroupList
      CustomAlertRule = Azure::Security::Mgmt::V2017_08_01_preview::Models::CustomAlertRule
      SensitivityLabel = Azure::Security::Mgmt::V2017_08_01_preview::Models::SensitivityLabel
      AutoProvisioningSettingList = Azure::Security::Mgmt::V2017_08_01_preview::Models::AutoProvisioningSettingList
      SecurityContactList = Azure::Security::Mgmt::V2017_08_01_preview::Models::SecurityContactList
      AdvancedThreatProtectionSetting = Azure::Security::Mgmt::V2017_08_01_preview::Models::AdvancedThreatProtectionSetting
      AutoProvisioningSetting = Azure::Security::Mgmt::V2017_08_01_preview::Models::AutoProvisioningSetting
      Compliance = Azure::Security::Mgmt::V2017_08_01_preview::Models::Compliance
      ThresholdCustomAlertRule = Azure::Security::Mgmt::V2017_08_01_preview::Models::ThresholdCustomAlertRule
      ListCustomAlertRule = Azure::Security::Mgmt::V2017_08_01_preview::Models::ListCustomAlertRule
      AllowlistCustomAlertRule = Azure::Security::Mgmt::V2017_08_01_preview::Models::AllowlistCustomAlertRule
      DenylistCustomAlertRule = Azure::Security::Mgmt::V2017_08_01_preview::Models::DenylistCustomAlertRule
      DeviceSecurityGroup = Azure::Security::Mgmt::V2017_08_01_preview::Models::DeviceSecurityGroup
      InformationProtectionPolicy = Azure::Security::Mgmt::V2017_08_01_preview::Models::InformationProtectionPolicy
      SecurityContact = Azure::Security::Mgmt::V2017_08_01_preview::Models::SecurityContact
      WorkspaceSetting = Azure::Security::Mgmt::V2017_08_01_preview::Models::WorkspaceSetting
      AutoProvision = Azure::Security::Mgmt::V2017_08_01_preview::Models::AutoProvision
      ValueType = Azure::Security::Mgmt::V2017_08_01_preview::Models::ValueType
      AlertNotifications = Azure::Security::Mgmt::V2017_08_01_preview::Models::AlertNotifications
      AlertsToAdmins = Azure::Security::Mgmt::V2017_08_01_preview::Models::AlertsToAdmins
      ComplianceResultList = Azure::Security::Mgmt::V2017_08_01::Models::ComplianceResultList
      ComplianceResult = Azure::Security::Mgmt::V2017_08_01::Models::ComplianceResult
      ResourceStatus = Azure::Security::Mgmt::V2017_08_01::Models::ResourceStatus
      PricingList = Azure::Security::Mgmt::V2018_06_01::Models::PricingList
      Pricing = Azure::Security::Mgmt::V2018_06_01::Models::Pricing
      PricingTier = Azure::Security::Mgmt::V2018_06_01::Models::PricingTier
      RegulatoryComplianceAssessmentList = Azure::Security::Mgmt::V2019_01_01_preview::Models::RegulatoryComplianceAssessmentList
      RegulatoryComplianceControlList = Azure::Security::Mgmt::V2019_01_01_preview::Models::RegulatoryComplianceControlList
      RegulatoryComplianceStandardList = Azure::Security::Mgmt::V2019_01_01_preview::Models::RegulatoryComplianceStandardList
      RegulatoryComplianceStandard = Azure::Security::Mgmt::V2019_01_01_preview::Models::RegulatoryComplianceStandard
      RegulatoryComplianceControl = Azure::Security::Mgmt::V2019_01_01_preview::Models::RegulatoryComplianceControl
      RegulatoryComplianceAssessment = Azure::Security::Mgmt::V2019_01_01_preview::Models::RegulatoryComplianceAssessment
      State = Azure::Security::Mgmt::V2019_01_01_preview::Models::State
      AlertEntity = Azure::Security::Mgmt::V2019_01_01::Models::AlertEntity
      SettingsList = Azure::Security::Mgmt::V2019_01_01::Models::SettingsList
      AlertList = Azure::Security::Mgmt::V2019_01_01::Models::AlertList
      AlertConfidenceReason = Azure::Security::Mgmt::V2019_01_01::Models::AlertConfidenceReason
      Alert = Azure::Security::Mgmt::V2019_01_01::Models::Alert
      Setting = Azure::Security::Mgmt::V2019_01_01::Models::Setting
      DataExportSetting = Azure::Security::Mgmt::V2019_01_01::Models::DataExportSetting
      SettingResource = Azure::Security::Mgmt::V2019_01_01::Models::SettingResource
      SettingKind = Azure::Security::Mgmt::V2019_01_01::Models::SettingKind
      IoTSecurityAggregatedAlertList = Azure::Security::Mgmt::V2019_08_01::Models::IoTSecurityAggregatedAlertList
      IoTSeverityMetrics = Azure::Security::Mgmt::V2019_08_01::Models::IoTSeverityMetrics
      IoTSecurityAggregatedRecommendation = Azure::Security::Mgmt::V2019_08_01::Models::IoTSecurityAggregatedRecommendation
      IoTSecurityAlertedDevice = Azure::Security::Mgmt::V2019_08_01::Models::IoTSecurityAlertedDevice
      IoTSecurityAggregatedRecommendationList = Azure::Security::Mgmt::V2019_08_01::Models::IoTSecurityAggregatedRecommendationList
      IoTSecurityDeviceAlert = Azure::Security::Mgmt::V2019_08_01::Models::IoTSecurityDeviceAlert
      TagsResource = Azure::Security::Mgmt::V2019_08_01::Models::TagsResource
      IoTSecurityDeviceRecommendation = Azure::Security::Mgmt::V2019_08_01::Models::IoTSecurityDeviceRecommendation
      IoTSecurityDeviceRecommendationsList = Azure::Security::Mgmt::V2019_08_01::Models::IoTSecurityDeviceRecommendationsList
      IoTSecuritySolutionModel = Azure::Security::Mgmt::V2019_08_01::Models::IoTSecuritySolutionModel
      IoTSecuritySolutionAnalyticsModelList = Azure::Security::Mgmt::V2019_08_01::Models::IoTSecuritySolutionAnalyticsModelList
      IoTSecuritySolutionsList = Azure::Security::Mgmt::V2019_08_01::Models::IoTSecuritySolutionsList
      IoTSecuritySolutionAnalyticsModelPropertiesDevicesMetricsItem = Azure::Security::Mgmt::V2019_08_01::Models::IoTSecuritySolutionAnalyticsModelPropertiesDevicesMetricsItem
      IoTSecurityDeviceAlertsList = Azure::Security::Mgmt::V2019_08_01::Models::IoTSecurityDeviceAlertsList
      IoTSecurityAlertedDevicesList = Azure::Security::Mgmt::V2019_08_01::Models::IoTSecurityAlertedDevicesList
      UserDefinedResourcesProperties = Azure::Security::Mgmt::V2019_08_01::Models::UserDefinedResourcesProperties
      IoTSecurityAggregatedAlert = Azure::Security::Mgmt::V2019_08_01::Models::IoTSecurityAggregatedAlert
      RecommendationConfigurationProperties = Azure::Security::Mgmt::V2019_08_01::Models::RecommendationConfigurationProperties
      IoTSecuritySolutionAnalyticsModel = Azure::Security::Mgmt::V2019_08_01::Models::IoTSecuritySolutionAnalyticsModel
      UpdateIotSecuritySolutionData = Azure::Security::Mgmt::V2019_08_01::Models::UpdateIotSecuritySolutionData
      ReportedSeverity = Azure::Security::Mgmt::V2019_08_01::Models::ReportedSeverity
      SecuritySolutionStatus = Azure::Security::Mgmt::V2019_08_01::Models::SecuritySolutionStatus
      ExportData = Azure::Security::Mgmt::V2019_08_01::Models::ExportData
      DataSource = Azure::Security::Mgmt::V2019_08_01::Models::DataSource
      RecommendationType = Azure::Security::Mgmt::V2019_08_01::Models::RecommendationType
      RecommendationConfigStatus = Azure::Security::Mgmt::V2019_08_01::Models::RecommendationConfigStatus
      ResourceDetails = Azure::Security::Mgmt::V2020_01_01::Models::ResourceDetails
      Rule = Azure::Security::Mgmt::V2020_01_01::Models::Rule
      AssessmentStatus = Azure::Security::Mgmt::V2020_01_01::Models::AssessmentStatus
      EffectiveNetworkSecurityGroups = Azure::Security::Mgmt::V2020_01_01::Models::EffectiveNetworkSecurityGroups
      AdaptiveNetworkHardeningsList = Azure::Security::Mgmt::V2020_01_01::Models::AdaptiveNetworkHardeningsList
      JitNetworkAccessPolicy = Azure::Security::Mgmt::V2020_01_01::Models::JitNetworkAccessPolicy
      JitNetworkAccessPolicyInitiatePort = Azure::Security::Mgmt::V2020_01_01::Models::JitNetworkAccessPolicyInitiatePort
      AssessmentLinks = Azure::Security::Mgmt::V2020_01_01::Models::AssessmentLinks
      Location = Azure::Security::Mgmt::V2020_01_01::Models::Location
      SecurityAssessmentPartnerData = Azure::Security::Mgmt::V2020_01_01::Models::SecurityAssessmentPartnerData
      ETag = Azure::Security::Mgmt::V2020_01_01::Models::ETag
      TopologyList = Azure::Security::Mgmt::V2020_01_01::Models::TopologyList
      Resource = Azure::Security::Mgmt::V2020_01_01::Models::Resource
      SecurityAssessmentList = Azure::Security::Mgmt::V2020_01_01::Models::SecurityAssessmentList
      ConnectedResource = Azure::Security::Mgmt::V2020_01_01::Models::ConnectedResource
      TopologyResource = Azure::Security::Mgmt::V2020_01_01::Models::TopologyResource
      AllowedConnectionsResource = Azure::Security::Mgmt::V2020_01_01::Models::AllowedConnectionsResource
      TopologySingleResource = Azure::Security::Mgmt::V2020_01_01::Models::TopologySingleResource
      ProtectionMode = Azure::Security::Mgmt::V2020_01_01::Models::ProtectionMode
      DiscoveredSecuritySolution = Azure::Security::Mgmt::V2020_01_01::Models::DiscoveredSecuritySolution
      VmRecommendation = Azure::Security::Mgmt::V2020_01_01::Models::VmRecommendation
      DiscoveredSecuritySolutionList = Azure::Security::Mgmt::V2020_01_01::Models::DiscoveredSecuritySolutionList
      UserRecommendation = Azure::Security::Mgmt::V2020_01_01::Models::UserRecommendation
      ExternalSecuritySolution = Azure::Security::Mgmt::V2020_01_01::Models::ExternalSecuritySolution
      AppWhitelistingGroup = Azure::Security::Mgmt::V2020_01_01::Models::AppWhitelistingGroup
      ExternalSecuritySolutionList = Azure::Security::Mgmt::V2020_01_01::Models::ExternalSecuritySolutionList
      SecurityAssessmentMetadataPartnerData = Azure::Security::Mgmt::V2020_01_01::Models::SecurityAssessmentMetadataPartnerData
      TopologySingleResourceChild = Azure::Security::Mgmt::V2020_01_01::Models::TopologySingleResourceChild
      JitNetworkAccessPoliciesList = Azure::Security::Mgmt::V2020_01_01::Models::JitNetworkAccessPoliciesList
      TopologySingleResourceParent = Azure::Security::Mgmt::V2020_01_01::Models::TopologySingleResourceParent
      AdaptiveNetworkHardeningEnforceRequest = Azure::Security::Mgmt::V2020_01_01::Models::AdaptiveNetworkHardeningEnforceRequest
      ServerVulnerabilityAssessmentsList = Azure::Security::Mgmt::V2020_01_01::Models::ServerVulnerabilityAssessmentsList
      Kind = Azure::Security::Mgmt::V2020_01_01::Models::Kind
      JitNetworkAccessPolicyInitiateRequest = Azure::Security::Mgmt::V2020_01_01::Models::JitNetworkAccessPolicyInitiateRequest
      ConnectedWorkspace = Azure::Security::Mgmt::V2020_01_01::Models::ConnectedWorkspace
      AllowedConnectionsList = Azure::Security::Mgmt::V2020_01_01::Models::AllowedConnectionsList
      AadSolutionProperties = Azure::Security::Mgmt::V2020_01_01::Models::AadSolutionProperties
      PublisherInfo = Azure::Security::Mgmt::V2020_01_01::Models::PublisherInfo
      JitNetworkAccessPolicyInitiateVirtualMachine = Azure::Security::Mgmt::V2020_01_01::Models::JitNetworkAccessPolicyInitiateVirtualMachine
      AppWhitelistingGroups = Azure::Security::Mgmt::V2020_01_01::Models::AppWhitelistingGroups
      ExternalSecuritySolutionKind1 = Azure::Security::Mgmt::V2020_01_01::Models::ExternalSecuritySolutionKind1
      SecurityAssessmentMetadataList = Azure::Security::Mgmt::V2020_01_01::Models::SecurityAssessmentMetadataList
      ExternalSecuritySolutionProperties = Azure::Security::Mgmt::V2020_01_01::Models::ExternalSecuritySolutionProperties
      Tags = Azure::Security::Mgmt::V2020_01_01::Models::Tags
      AadConnectivityState1 = Azure::Security::Mgmt::V2020_01_01::Models::AadConnectivityState1
      AppWhitelistingIssueSummary = Azure::Security::Mgmt::V2020_01_01::Models::AppWhitelistingIssueSummary
      JitNetworkAccessPortRule = Azure::Security::Mgmt::V2020_01_01::Models::JitNetworkAccessPortRule
      SecurityAssessmentMetadataProperties = Azure::Security::Mgmt::V2020_01_01::Models::SecurityAssessmentMetadataProperties
      JitNetworkAccessPolicyVirtualMachine = Azure::Security::Mgmt::V2020_01_01::Models::JitNetworkAccessPolicyVirtualMachine
      ConnectableResource = Azure::Security::Mgmt::V2020_01_01::Models::ConnectableResource
      JitNetworkAccessRequestPort = Azure::Security::Mgmt::V2020_01_01::Models::JitNetworkAccessRequestPort
      TrackedResource = Azure::Security::Mgmt::V2020_01_01::Models::TrackedResource
      JitNetworkAccessRequestVirtualMachine = Azure::Security::Mgmt::V2020_01_01::Models::JitNetworkAccessRequestVirtualMachine
      PathRecommendation = Azure::Security::Mgmt::V2020_01_01::Models::PathRecommendation
      JitNetworkAccessRequest = Azure::Security::Mgmt::V2020_01_01::Models::JitNetworkAccessRequest
      AdaptiveNetworkHardening = Azure::Security::Mgmt::V2020_01_01::Models::AdaptiveNetworkHardening
      AscLocation = Azure::Security::Mgmt::V2020_01_01::Models::AscLocation
      SecurityAssessmentMetadata = Azure::Security::Mgmt::V2020_01_01::Models::SecurityAssessmentMetadata
      SecurityAssessment = Azure::Security::Mgmt::V2020_01_01::Models::SecurityAssessment
      OnPremiseResourceDetails = Azure::Security::Mgmt::V2020_01_01::Models::OnPremiseResourceDetails
      AzureResourceDetails = Azure::Security::Mgmt::V2020_01_01::Models::AzureResourceDetails
      CefSolutionProperties = Azure::Security::Mgmt::V2020_01_01::Models::CefSolutionProperties
      CefExternalSecuritySolution = Azure::Security::Mgmt::V2020_01_01::Models::CefExternalSecuritySolution
      AtaSolutionProperties = Azure::Security::Mgmt::V2020_01_01::Models::AtaSolutionProperties
      AtaExternalSecuritySolution = Azure::Security::Mgmt::V2020_01_01::Models::AtaExternalSecuritySolution
      AadExternalSecuritySolution = Azure::Security::Mgmt::V2020_01_01::Models::AadExternalSecuritySolution
      ServerVulnerabilityAssessment = Azure::Security::Mgmt::V2020_01_01::Models::ServerVulnerabilityAssessment
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
      AadConnectivityState = Azure::Security::Mgmt::V2020_01_01::Models::AadConnectivityState
      ExternalSecuritySolutionKind = Azure::Security::Mgmt::V2020_01_01::Models::ExternalSecuritySolutionKind
      Protocol = Azure::Security::Mgmt::V2020_01_01::Models::Protocol
      Status = Azure::Security::Mgmt::V2020_01_01::Models::Status
      StatusReason = Azure::Security::Mgmt::V2020_01_01::Models::StatusReason
      ConnectionType = Azure::Security::Mgmt::V2020_01_01::Models::ConnectionType
      ExpandEnum = Azure::Security::Mgmt::V2020_01_01::Models::ExpandEnum
    end

    #
    # SecurityManagementClass
    #
    class SecurityManagementClass
      attr_reader :locations, :operations, :tasks, :advanced_threat_protection, :auto_provisioning_settings, :compliances, :device_security_groups, :information_protection_policies, :security_contacts, :workspace_settings, :compliance_results, :pricings, :regulatory_compliance_standards, :regulatory_compliance_controls, :regulatory_compliance_assessments, :alerts, :settings, :io_tsecurity_solutions_analytics, :io_tsecurity_solutions_analytics_aggregated_alerts, :io_tsecurity_solutions_analytics_aggregated_alert, :io_tsecurity_solutions_analytics_recommendation, :io_tsecurity_solutions_analytics_recommendations, :io_tsecurity_solutions, :io_tsecurity_solutions_resource_group, :iot_security_solution, :adaptive_network_hardenings, :allowed_connections, :adaptive_application_controls, :assessments_metadata, :assessments, :discovered_security_solutions, :external_security_solutions, :jit_network_access_policies, :server_vulnerability_assessment_operations, :topology, :configurable, :base_url, :options, :model_classes

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
        @io_tsecurity_solutions_analytics = @client_6.io_tsecurity_solutions_analytics
        @io_tsecurity_solutions_analytics_aggregated_alerts = @client_6.io_tsecurity_solutions_analytics_aggregated_alerts
        @io_tsecurity_solutions_analytics_aggregated_alert = @client_6.io_tsecurity_solutions_analytics_aggregated_alert
        @io_tsecurity_solutions_analytics_recommendation = @client_6.io_tsecurity_solutions_analytics_recommendation
        @io_tsecurity_solutions_analytics_recommendations = @client_6.io_tsecurity_solutions_analytics_recommendations
        @io_tsecurity_solutions = @client_6.io_tsecurity_solutions
        @io_tsecurity_solutions_resource_group = @client_6.io_tsecurity_solutions_resource_group
        @iot_security_solution = @client_6.iot_security_solution

        @client_7 = Azure::Security::Mgmt::V2020_01_01::SecurityCenter.new(configurable.credentials, base_url, options)
        if(@client_7.respond_to?(:subscription_id))
          @client_7.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_7)
        @adaptive_network_hardenings = @client_7.adaptive_network_hardenings
        @allowed_connections = @client_7.allowed_connections
        @adaptive_application_controls = @client_7.adaptive_application_controls
        @assessments_metadata = @client_7.assessments_metadata
        @assessments = @client_7.assessments
        @discovered_security_solutions = @client_7.discovered_security_solutions
        @external_security_solutions = @client_7.external_security_solutions
        @jit_network_access_policies = @client_7.jit_network_access_policies
        @server_vulnerability_assessment_operations = @client_7.server_vulnerability_assessment_operations
        @topology = @client_7.topology

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/Security/Mgmt'
        client.add_user_agent_information(profile_information)
      end

      def method_missing(method, *args)
        if @client_7.respond_to?method
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
      def security_task_list
        Azure::Security::Mgmt::V2015_06_01_preview::Models::SecurityTaskList
      end
      def security_task_parameters
        Azure::Security::Mgmt::V2015_06_01_preview::Models::SecurityTaskParameters
      end
      def app_whitelisting_put_group_data
        Azure::Security::Mgmt::V2015_06_01_preview::Models::AppWhitelistingPutGroupData
      end
      def asc_location_list
        Azure::Security::Mgmt::V2015_06_01_preview::Models::AscLocationList
      end
      def operation_display
        Azure::Security::Mgmt::V2015_06_01_preview::Models::OperationDisplay
      end
      def operation_list
        Azure::Security::Mgmt::V2015_06_01_preview::Models::OperationList
      end
      def operation
        Azure::Security::Mgmt::V2015_06_01_preview::Models::Operation
      end
      def security_task
        Azure::Security::Mgmt::V2015_06_01_preview::Models::SecurityTask
      end
      def information_protection_keyword
        Azure::Security::Mgmt::V2017_08_01_preview::Models::InformationProtectionKeyword
      end
      def information_type
        Azure::Security::Mgmt::V2017_08_01_preview::Models::InformationType
      end
      def workspace_setting_list
        Azure::Security::Mgmt::V2017_08_01_preview::Models::WorkspaceSettingList
      end
      def compliance_segment
        Azure::Security::Mgmt::V2017_08_01_preview::Models::ComplianceSegment
      end
      def information_protection_policy_list
        Azure::Security::Mgmt::V2017_08_01_preview::Models::InformationProtectionPolicyList
      end
      def compliance_list
        Azure::Security::Mgmt::V2017_08_01_preview::Models::ComplianceList
      end
      def time_window_custom_alert_rule
        Azure::Security::Mgmt::V2017_08_01_preview::Models::TimeWindowCustomAlertRule
      end
      def device_security_group_list
        Azure::Security::Mgmt::V2017_08_01_preview::Models::DeviceSecurityGroupList
      end
      def custom_alert_rule
        Azure::Security::Mgmt::V2017_08_01_preview::Models::CustomAlertRule
      end
      def sensitivity_label
        Azure::Security::Mgmt::V2017_08_01_preview::Models::SensitivityLabel
      end
      def auto_provisioning_setting_list
        Azure::Security::Mgmt::V2017_08_01_preview::Models::AutoProvisioningSettingList
      end
      def security_contact_list
        Azure::Security::Mgmt::V2017_08_01_preview::Models::SecurityContactList
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
      def information_protection_policy
        Azure::Security::Mgmt::V2017_08_01_preview::Models::InformationProtectionPolicy
      end
      def security_contact
        Azure::Security::Mgmt::V2017_08_01_preview::Models::SecurityContact
      end
      def workspace_setting
        Azure::Security::Mgmt::V2017_08_01_preview::Models::WorkspaceSetting
      end
      def auto_provision
        Azure::Security::Mgmt::V2017_08_01_preview::Models::AutoProvision
      end
      def value_type
        Azure::Security::Mgmt::V2017_08_01_preview::Models::ValueType
      end
      def alert_notifications
        Azure::Security::Mgmt::V2017_08_01_preview::Models::AlertNotifications
      end
      def alerts_to_admins
        Azure::Security::Mgmt::V2017_08_01_preview::Models::AlertsToAdmins
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
      def regulatory_compliance_assessment_list
        Azure::Security::Mgmt::V2019_01_01_preview::Models::RegulatoryComplianceAssessmentList
      end
      def regulatory_compliance_control_list
        Azure::Security::Mgmt::V2019_01_01_preview::Models::RegulatoryComplianceControlList
      end
      def regulatory_compliance_standard_list
        Azure::Security::Mgmt::V2019_01_01_preview::Models::RegulatoryComplianceStandardList
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
      def state
        Azure::Security::Mgmt::V2019_01_01_preview::Models::State
      end
      def alert_entity
        Azure::Security::Mgmt::V2019_01_01::Models::AlertEntity
      end
      def settings_list
        Azure::Security::Mgmt::V2019_01_01::Models::SettingsList
      end
      def alert_list
        Azure::Security::Mgmt::V2019_01_01::Models::AlertList
      end
      def alert_confidence_reason
        Azure::Security::Mgmt::V2019_01_01::Models::AlertConfidenceReason
      end
      def alert
        Azure::Security::Mgmt::V2019_01_01::Models::Alert
      end
      def setting
        Azure::Security::Mgmt::V2019_01_01::Models::Setting
      end
      def data_export_setting
        Azure::Security::Mgmt::V2019_01_01::Models::DataExportSetting
      end
      def setting_resource
        Azure::Security::Mgmt::V2019_01_01::Models::SettingResource
      end
      def setting_kind
        Azure::Security::Mgmt::V2019_01_01::Models::SettingKind
      end
      def io_tsecurity_aggregated_alert_list
        Azure::Security::Mgmt::V2019_08_01::Models::IoTSecurityAggregatedAlertList
      end
      def io_tseverity_metrics
        Azure::Security::Mgmt::V2019_08_01::Models::IoTSeverityMetrics
      end
      def io_tsecurity_aggregated_recommendation
        Azure::Security::Mgmt::V2019_08_01::Models::IoTSecurityAggregatedRecommendation
      end
      def io_tsecurity_alerted_device
        Azure::Security::Mgmt::V2019_08_01::Models::IoTSecurityAlertedDevice
      end
      def io_tsecurity_aggregated_recommendation_list
        Azure::Security::Mgmt::V2019_08_01::Models::IoTSecurityAggregatedRecommendationList
      end
      def io_tsecurity_device_alert
        Azure::Security::Mgmt::V2019_08_01::Models::IoTSecurityDeviceAlert
      end
      def tags_resource
        Azure::Security::Mgmt::V2019_08_01::Models::TagsResource
      end
      def io_tsecurity_device_recommendation
        Azure::Security::Mgmt::V2019_08_01::Models::IoTSecurityDeviceRecommendation
      end
      def io_tsecurity_device_recommendations_list
        Azure::Security::Mgmt::V2019_08_01::Models::IoTSecurityDeviceRecommendationsList
      end
      def io_tsecurity_solution_model
        Azure::Security::Mgmt::V2019_08_01::Models::IoTSecuritySolutionModel
      end
      def io_tsecurity_solution_analytics_model_list
        Azure::Security::Mgmt::V2019_08_01::Models::IoTSecuritySolutionAnalyticsModelList
      end
      def io_tsecurity_solutions_list
        Azure::Security::Mgmt::V2019_08_01::Models::IoTSecuritySolutionsList
      end
      def io_tsecurity_solution_analytics_model_properties_devices_metrics_item
        Azure::Security::Mgmt::V2019_08_01::Models::IoTSecuritySolutionAnalyticsModelPropertiesDevicesMetricsItem
      end
      def io_tsecurity_device_alerts_list
        Azure::Security::Mgmt::V2019_08_01::Models::IoTSecurityDeviceAlertsList
      end
      def io_tsecurity_alerted_devices_list
        Azure::Security::Mgmt::V2019_08_01::Models::IoTSecurityAlertedDevicesList
      end
      def user_defined_resources_properties
        Azure::Security::Mgmt::V2019_08_01::Models::UserDefinedResourcesProperties
      end
      def io_tsecurity_aggregated_alert
        Azure::Security::Mgmt::V2019_08_01::Models::IoTSecurityAggregatedAlert
      end
      def recommendation_configuration_properties
        Azure::Security::Mgmt::V2019_08_01::Models::RecommendationConfigurationProperties
      end
      def io_tsecurity_solution_analytics_model
        Azure::Security::Mgmt::V2019_08_01::Models::IoTSecuritySolutionAnalyticsModel
      end
      def update_iot_security_solution_data
        Azure::Security::Mgmt::V2019_08_01::Models::UpdateIotSecuritySolutionData
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
      def resource_details
        Azure::Security::Mgmt::V2020_01_01::Models::ResourceDetails
      end
      def rule
        Azure::Security::Mgmt::V2020_01_01::Models::Rule
      end
      def assessment_status
        Azure::Security::Mgmt::V2020_01_01::Models::AssessmentStatus
      end
      def effective_network_security_groups
        Azure::Security::Mgmt::V2020_01_01::Models::EffectiveNetworkSecurityGroups
      end
      def adaptive_network_hardenings_list
        Azure::Security::Mgmt::V2020_01_01::Models::AdaptiveNetworkHardeningsList
      end
      def jit_network_access_policy
        Azure::Security::Mgmt::V2020_01_01::Models::JitNetworkAccessPolicy
      end
      def jit_network_access_policy_initiate_port
        Azure::Security::Mgmt::V2020_01_01::Models::JitNetworkAccessPolicyInitiatePort
      end
      def assessment_links
        Azure::Security::Mgmt::V2020_01_01::Models::AssessmentLinks
      end
      def location
        Azure::Security::Mgmt::V2020_01_01::Models::Location
      end
      def security_assessment_partner_data
        Azure::Security::Mgmt::V2020_01_01::Models::SecurityAssessmentPartnerData
      end
      def etag
        Azure::Security::Mgmt::V2020_01_01::Models::ETag
      end
      def topology_list
        Azure::Security::Mgmt::V2020_01_01::Models::TopologyList
      end
      def resource
        Azure::Security::Mgmt::V2020_01_01::Models::Resource
      end
      def security_assessment_list
        Azure::Security::Mgmt::V2020_01_01::Models::SecurityAssessmentList
      end
      def connected_resource
        Azure::Security::Mgmt::V2020_01_01::Models::ConnectedResource
      end
      def topology_resource
        Azure::Security::Mgmt::V2020_01_01::Models::TopologyResource
      end
      def allowed_connections_resource
        Azure::Security::Mgmt::V2020_01_01::Models::AllowedConnectionsResource
      end
      def topology_single_resource
        Azure::Security::Mgmt::V2020_01_01::Models::TopologySingleResource
      end
      def protection_mode
        Azure::Security::Mgmt::V2020_01_01::Models::ProtectionMode
      end
      def discovered_security_solution
        Azure::Security::Mgmt::V2020_01_01::Models::DiscoveredSecuritySolution
      end
      def vm_recommendation
        Azure::Security::Mgmt::V2020_01_01::Models::VmRecommendation
      end
      def discovered_security_solution_list
        Azure::Security::Mgmt::V2020_01_01::Models::DiscoveredSecuritySolutionList
      end
      def user_recommendation
        Azure::Security::Mgmt::V2020_01_01::Models::UserRecommendation
      end
      def external_security_solution
        Azure::Security::Mgmt::V2020_01_01::Models::ExternalSecuritySolution
      end
      def app_whitelisting_group
        Azure::Security::Mgmt::V2020_01_01::Models::AppWhitelistingGroup
      end
      def external_security_solution_list
        Azure::Security::Mgmt::V2020_01_01::Models::ExternalSecuritySolutionList
      end
      def security_assessment_metadata_partner_data
        Azure::Security::Mgmt::V2020_01_01::Models::SecurityAssessmentMetadataPartnerData
      end
      def topology_single_resource_child
        Azure::Security::Mgmt::V2020_01_01::Models::TopologySingleResourceChild
      end
      def jit_network_access_policies_list
        Azure::Security::Mgmt::V2020_01_01::Models::JitNetworkAccessPoliciesList
      end
      def topology_single_resource_parent
        Azure::Security::Mgmt::V2020_01_01::Models::TopologySingleResourceParent
      end
      def adaptive_network_hardening_enforce_request
        Azure::Security::Mgmt::V2020_01_01::Models::AdaptiveNetworkHardeningEnforceRequest
      end
      def server_vulnerability_assessments_list
        Azure::Security::Mgmt::V2020_01_01::Models::ServerVulnerabilityAssessmentsList
      end
      def kind
        Azure::Security::Mgmt::V2020_01_01::Models::Kind
      end
      def jit_network_access_policy_initiate_request
        Azure::Security::Mgmt::V2020_01_01::Models::JitNetworkAccessPolicyInitiateRequest
      end
      def connected_workspace
        Azure::Security::Mgmt::V2020_01_01::Models::ConnectedWorkspace
      end
      def allowed_connections_list
        Azure::Security::Mgmt::V2020_01_01::Models::AllowedConnectionsList
      end
      def aad_solution_properties
        Azure::Security::Mgmt::V2020_01_01::Models::AadSolutionProperties
      end
      def publisher_info
        Azure::Security::Mgmt::V2020_01_01::Models::PublisherInfo
      end
      def jit_network_access_policy_initiate_virtual_machine
        Azure::Security::Mgmt::V2020_01_01::Models::JitNetworkAccessPolicyInitiateVirtualMachine
      end
      def app_whitelisting_groups
        Azure::Security::Mgmt::V2020_01_01::Models::AppWhitelistingGroups
      end
      def external_security_solution_kind1
        Azure::Security::Mgmt::V2020_01_01::Models::ExternalSecuritySolutionKind1
      end
      def security_assessment_metadata_list
        Azure::Security::Mgmt::V2020_01_01::Models::SecurityAssessmentMetadataList
      end
      def external_security_solution_properties
        Azure::Security::Mgmt::V2020_01_01::Models::ExternalSecuritySolutionProperties
      end
      def tags
        Azure::Security::Mgmt::V2020_01_01::Models::Tags
      end
      def aad_connectivity_state1
        Azure::Security::Mgmt::V2020_01_01::Models::AadConnectivityState1
      end
      def app_whitelisting_issue_summary
        Azure::Security::Mgmt::V2020_01_01::Models::AppWhitelistingIssueSummary
      end
      def jit_network_access_port_rule
        Azure::Security::Mgmt::V2020_01_01::Models::JitNetworkAccessPortRule
      end
      def security_assessment_metadata_properties
        Azure::Security::Mgmt::V2020_01_01::Models::SecurityAssessmentMetadataProperties
      end
      def jit_network_access_policy_virtual_machine
        Azure::Security::Mgmt::V2020_01_01::Models::JitNetworkAccessPolicyVirtualMachine
      end
      def connectable_resource
        Azure::Security::Mgmt::V2020_01_01::Models::ConnectableResource
      end
      def jit_network_access_request_port
        Azure::Security::Mgmt::V2020_01_01::Models::JitNetworkAccessRequestPort
      end
      def tracked_resource
        Azure::Security::Mgmt::V2020_01_01::Models::TrackedResource
      end
      def jit_network_access_request_virtual_machine
        Azure::Security::Mgmt::V2020_01_01::Models::JitNetworkAccessRequestVirtualMachine
      end
      def path_recommendation
        Azure::Security::Mgmt::V2020_01_01::Models::PathRecommendation
      end
      def jit_network_access_request
        Azure::Security::Mgmt::V2020_01_01::Models::JitNetworkAccessRequest
      end
      def adaptive_network_hardening
        Azure::Security::Mgmt::V2020_01_01::Models::AdaptiveNetworkHardening
      end
      def asc_location
        Azure::Security::Mgmt::V2020_01_01::Models::AscLocation
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
      def aad_connectivity_state
        Azure::Security::Mgmt::V2020_01_01::Models::AadConnectivityState
      end
      def external_security_solution_kind
        Azure::Security::Mgmt::V2020_01_01::Models::ExternalSecuritySolutionKind
      end
      def protocol
        Azure::Security::Mgmt::V2020_01_01::Models::Protocol
      end
      def status
        Azure::Security::Mgmt::V2020_01_01::Models::Status
      end
      def status_reason
        Azure::Security::Mgmt::V2020_01_01::Models::StatusReason
      end
      def connection_type
        Azure::Security::Mgmt::V2020_01_01::Models::ConnectionType
      end
      def expand_enum
        Azure::Security::Mgmt::V2020_01_01::Models::ExpandEnum
      end
    end
  end
end
