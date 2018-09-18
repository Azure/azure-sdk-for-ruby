# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_web'

module Azure::Web::Profiles::Latest
  module Mgmt
    AppServiceCertificateOrders = Azure::Web::Mgmt::V2018_02_01::AppServiceCertificateOrders
    CertificateRegistrationProvider = Azure::Web::Mgmt::V2018_02_01::CertificateRegistrationProvider
    Domains = Azure::Web::Mgmt::V2018_02_01::Domains
    TopLevelDomains = Azure::Web::Mgmt::V2018_02_01::TopLevelDomains
    DomainRegistrationProvider = Azure::Web::Mgmt::V2018_02_01::DomainRegistrationProvider
    Certificates = Azure::Web::Mgmt::V2018_02_01::Certificates
    DeletedWebApps = Azure::Web::Mgmt::V2018_02_01::DeletedWebApps
    Diagnostics = Azure::Web::Mgmt::V2018_02_01::Diagnostics
    Provider = Azure::Web::Mgmt::V2018_02_01::Provider
    Recommendations = Azure::Web::Mgmt::V2018_02_01::Recommendations
    WebApps = Azure::Web::Mgmt::V2018_02_01::WebApps
    AppServiceEnvironments = Azure::Web::Mgmt::V2018_02_01::AppServiceEnvironments
    AppServicePlans = Azure::Web::Mgmt::V2018_02_01::AppServicePlans

    module Models
      HandlerMapping = Azure::Web::Mgmt::V2018_02_01::Models::HandlerMapping
      WebJobCollection = Azure::Web::Mgmt::V2018_02_01::Models::WebJobCollection
      AppServiceCertificateResource = Azure::Web::Mgmt::V2018_02_01::Models::AppServiceCertificateResource
      AppServiceCertificateOrder = Azure::Web::Mgmt::V2018_02_01::Models::AppServiceCertificateOrder
      AppServiceCertificateOrderPatchResource = Azure::Web::Mgmt::V2018_02_01::Models::AppServiceCertificateOrderPatchResource
      AppServiceCertificatePatchResource = Azure::Web::Mgmt::V2018_02_01::Models::AppServiceCertificatePatchResource
      CertificateEmail = Azure::Web::Mgmt::V2018_02_01::Models::CertificateEmail
      CertificateOrderAction = Azure::Web::Mgmt::V2018_02_01::Models::CertificateOrderAction
      ReissueCertificateOrderRequest = Azure::Web::Mgmt::V2018_02_01::Models::ReissueCertificateOrderRequest
      RenewCertificateOrderRequest = Azure::Web::Mgmt::V2018_02_01::Models::RenewCertificateOrderRequest
      VnetRoute = Azure::Web::Mgmt::V2018_02_01::Models::VnetRoute
      VnetInfo = Azure::Web::Mgmt::V2018_02_01::Models::VnetInfo
      VnetGateway = Azure::Web::Mgmt::V2018_02_01::Models::VnetGateway
      User = Azure::Web::Mgmt::V2018_02_01::Models::User
      Snapshot = Azure::Web::Mgmt::V2018_02_01::Models::Snapshot
      ResourceMetricDefinition = Azure::Web::Mgmt::V2018_02_01::Models::ResourceMetricDefinition
      PushSettings = Azure::Web::Mgmt::V2018_02_01::Models::PushSettings
      HybridConnectionKey = Azure::Web::Mgmt::V2018_02_01::Models::HybridConnectionKey
      HybridConnection = Azure::Web::Mgmt::V2018_02_01::Models::HybridConnection
      Site = Azure::Web::Mgmt::V2018_02_01::Models::Site
      Identifier = Azure::Web::Mgmt::V2018_02_01::Models::Identifier
      Domain = Azure::Web::Mgmt::V2018_02_01::Models::Domain
      AppServicePlan = Azure::Web::Mgmt::V2018_02_01::Models::AppServicePlan
      DomainPatchResource = Azure::Web::Mgmt::V2018_02_01::Models::DomainPatchResource
      DomainOwnershipIdentifier = Azure::Web::Mgmt::V2018_02_01::Models::DomainOwnershipIdentifier
      Certificate = Azure::Web::Mgmt::V2018_02_01::Models::Certificate
      TopLevelDomain = Azure::Web::Mgmt::V2018_02_01::Models::TopLevelDomain
      DetectorDefinition = Azure::Web::Mgmt::V2018_02_01::Models::DetectorDefinition
      CertificatePatchResource = Azure::Web::Mgmt::V2018_02_01::Models::CertificatePatchResource
      DetectorResponse = Azure::Web::Mgmt::V2018_02_01::Models::DetectorResponse
      AnalysisDefinition = Azure::Web::Mgmt::V2018_02_01::Models::AnalysisDefinition
      DiagnosticCategory = Azure::Web::Mgmt::V2018_02_01::Models::DiagnosticCategory
      DiagnosticAnalysis = Azure::Web::Mgmt::V2018_02_01::Models::DiagnosticAnalysis
      Recommendation = Azure::Web::Mgmt::V2018_02_01::Models::Recommendation
      DiagnosticDetectorResponse = Azure::Web::Mgmt::V2018_02_01::Models::DiagnosticDetectorResponse
      BillingMeter = Azure::Web::Mgmt::V2018_02_01::Models::BillingMeter
      RecommendationRule = Azure::Web::Mgmt::V2018_02_01::Models::RecommendationRule
      PremierAddOnOffer = Azure::Web::Mgmt::V2018_02_01::Models::PremierAddOnOffer
      GeoRegion = Azure::Web::Mgmt::V2018_02_01::Models::GeoRegion
      VnetParameters = Azure::Web::Mgmt::V2018_02_01::Models::VnetParameters
      SourceControl = Azure::Web::Mgmt::V2018_02_01::Models::SourceControl
      VnetValidationFailureDetails = Azure::Web::Mgmt::V2018_02_01::Models::VnetValidationFailureDetails
      VnetValidationTestFailure = Azure::Web::Mgmt::V2018_02_01::Models::VnetValidationTestFailure
      BackupRequest = Azure::Web::Mgmt::V2018_02_01::Models::BackupRequest
      BackupItem = Azure::Web::Mgmt::V2018_02_01::Models::BackupItem
      ContinuousWebJob = Azure::Web::Mgmt::V2018_02_01::Models::ContinuousWebJob
      ConnectionStringDictionary = Azure::Web::Mgmt::V2018_02_01::Models::ConnectionStringDictionary
      DeletedAppRestoreRequest = Azure::Web::Mgmt::V2018_02_01::Models::DeletedAppRestoreRequest
      CustomHostnameAnalysisResult = Azure::Web::Mgmt::V2018_02_01::Models::CustomHostnameAnalysisResult
      FunctionEnvelope = Azure::Web::Mgmt::V2018_02_01::Models::FunctionEnvelope
      Deployment = Azure::Web::Mgmt::V2018_02_01::Models::Deployment
      HostNameBinding = Azure::Web::Mgmt::V2018_02_01::Models::HostNameBinding
      FunctionSecrets = Azure::Web::Mgmt::V2018_02_01::Models::FunctionSecrets
      MSDeployLog = Azure::Web::Mgmt::V2018_02_01::Models::MSDeployLog
      MSDeploy = Azure::Web::Mgmt::V2018_02_01::Models::MSDeploy
      MigrateMySqlRequest = Azure::Web::Mgmt::V2018_02_01::Models::MigrateMySqlRequest
      MSDeployStatus = Azure::Web::Mgmt::V2018_02_01::Models::MSDeployStatus
      RelayServiceConnectionEntity = Azure::Web::Mgmt::V2018_02_01::Models::RelayServiceConnectionEntity
      MigrateMySqlStatus = Azure::Web::Mgmt::V2018_02_01::Models::MigrateMySqlStatus
      PremierAddOn = Azure::Web::Mgmt::V2018_02_01::Models::PremierAddOn
      NetworkFeatures = Azure::Web::Mgmt::V2018_02_01::Models::NetworkFeatures
      PrivateAccess = Azure::Web::Mgmt::V2018_02_01::Models::PrivateAccess
      PremierAddOnPatchResource = Azure::Web::Mgmt::V2018_02_01::Models::PremierAddOnPatchResource
      ProcessModuleInfo = Azure::Web::Mgmt::V2018_02_01::Models::ProcessModuleInfo
      ProcessThreadInfo = Azure::Web::Mgmt::V2018_02_01::Models::ProcessThreadInfo
      PublicCertificate = Azure::Web::Mgmt::V2018_02_01::Models::PublicCertificate
      ProcessInfo = Azure::Web::Mgmt::V2018_02_01::Models::ProcessInfo
      SiteAuthSettings = Azure::Web::Mgmt::V2018_02_01::Models::SiteAuthSettings
      RestoreRequest = Azure::Web::Mgmt::V2018_02_01::Models::RestoreRequest
      SiteConfigurationSnapshotInfo = Azure::Web::Mgmt::V2018_02_01::Models::SiteConfigurationSnapshotInfo
      SiteConfigResource = Azure::Web::Mgmt::V2018_02_01::Models::SiteConfigResource
      SiteInstance = Azure::Web::Mgmt::V2018_02_01::Models::SiteInstance
      SiteExtensionInfo = Azure::Web::Mgmt::V2018_02_01::Models::SiteExtensionInfo
      SitePatchResource = Azure::Web::Mgmt::V2018_02_01::Models::SitePatchResource
      SiteLogsConfig = Azure::Web::Mgmt::V2018_02_01::Models::SiteLogsConfig
      SiteSourceControl = Azure::Web::Mgmt::V2018_02_01::Models::SiteSourceControl
      SitePhpErrorLogFlag = Azure::Web::Mgmt::V2018_02_01::Models::SitePhpErrorLogFlag
      SlotDifference = Azure::Web::Mgmt::V2018_02_01::Models::SlotDifference
      SlotConfigNamesResource = Azure::Web::Mgmt::V2018_02_01::Models::SlotConfigNamesResource
      StorageMigrationOptions = Azure::Web::Mgmt::V2018_02_01::Models::StorageMigrationOptions
      SnapshotRestoreRequest = Azure::Web::Mgmt::V2018_02_01::Models::SnapshotRestoreRequest
      StringDictionary = Azure::Web::Mgmt::V2018_02_01::Models::StringDictionary
      StorageMigrationResponse = Azure::Web::Mgmt::V2018_02_01::Models::StorageMigrationResponse
      TriggeredJobRun = Azure::Web::Mgmt::V2018_02_01::Models::TriggeredJobRun
      SwiftVirtualNetwork = Azure::Web::Mgmt::V2018_02_01::Models::SwiftVirtualNetwork
      TriggeredWebJob = Azure::Web::Mgmt::V2018_02_01::Models::TriggeredWebJob
      TriggeredJobHistory = Azure::Web::Mgmt::V2018_02_01::Models::TriggeredJobHistory
      AppServiceEnvironmentResource = Azure::Web::Mgmt::V2018_02_01::Models::AppServiceEnvironmentResource
      WebJob = Azure::Web::Mgmt::V2018_02_01::Models::WebJob
      MetricDefinition = Azure::Web::Mgmt::V2018_02_01::Models::MetricDefinition
      AppServiceEnvironmentPatchResource = Azure::Web::Mgmt::V2018_02_01::Models::AppServiceEnvironmentPatchResource
      WorkerPoolResource = Azure::Web::Mgmt::V2018_02_01::Models::WorkerPoolResource
      Usage = Azure::Web::Mgmt::V2018_02_01::Models::Usage
      HybridConnectionLimits = Azure::Web::Mgmt::V2018_02_01::Models::HybridConnectionLimits
      AppServicePlanPatchResource = Azure::Web::Mgmt::V2018_02_01::Models::AppServicePlanPatchResource
      CertificateProductType = Azure::Web::Mgmt::V2018_02_01::Models::CertificateProductType
      KeyVaultSecretStatus = Azure::Web::Mgmt::V2018_02_01::Models::KeyVaultSecretStatus
      CertificateOrderStatus = Azure::Web::Mgmt::V2018_02_01::Models::CertificateOrderStatus
      ProvisioningState = Azure::Web::Mgmt::V2018_02_01::Models::ProvisioningState
      RouteType = Azure::Web::Mgmt::V2018_02_01::Models::RouteType
      CertificateOrderActionType = Azure::Web::Mgmt::V2018_02_01::Models::CertificateOrderActionType
      IpFilterTag = Azure::Web::Mgmt::V2018_02_01::Models::IpFilterTag
      ManagedServiceIdentityType = Azure::Web::Mgmt::V2018_02_01::Models::ManagedServiceIdentityType
      ConnectionStringType = Azure::Web::Mgmt::V2018_02_01::Models::ConnectionStringType
      AutoHealActionType = Azure::Web::Mgmt::V2018_02_01::Models::AutoHealActionType
      ManagedPipelineMode = Azure::Web::Mgmt::V2018_02_01::Models::ManagedPipelineMode
      ScmType = Azure::Web::Mgmt::V2018_02_01::Models::ScmType
      SupportedTlsVersions = Azure::Web::Mgmt::V2018_02_01::Models::SupportedTlsVersions
      SiteLoadBalancing = Azure::Web::Mgmt::V2018_02_01::Models::SiteLoadBalancing
      SslState = Azure::Web::Mgmt::V2018_02_01::Models::SslState
      FtpsState = Azure::Web::Mgmt::V2018_02_01::Models::FtpsState
      UsageState = Azure::Web::Mgmt::V2018_02_01::Models::UsageState
      HostType = Azure::Web::Mgmt::V2018_02_01::Models::HostType
      StatusOptions = Azure::Web::Mgmt::V2018_02_01::Models::StatusOptions
      SiteAvailabilityState = Azure::Web::Mgmt::V2018_02_01::Models::SiteAvailabilityState
      AzureResourceType = Azure::Web::Mgmt::V2018_02_01::Models::AzureResourceType
      DomainStatus = Azure::Web::Mgmt::V2018_02_01::Models::DomainStatus
      HostNameType = Azure::Web::Mgmt::V2018_02_01::Models::HostNameType
      CustomHostNameDnsRecordType = Azure::Web::Mgmt::V2018_02_01::Models::CustomHostNameDnsRecordType
      DomainType = Azure::Web::Mgmt::V2018_02_01::Models::DomainType
      DnsType = Azure::Web::Mgmt::V2018_02_01::Models::DnsType
      InternalLoadBalancingMode = Azure::Web::Mgmt::V2018_02_01::Models::InternalLoadBalancingMode
      HostingEnvironmentStatus = Azure::Web::Mgmt::V2018_02_01::Models::HostingEnvironmentStatus
      WorkerSizeOptions = Azure::Web::Mgmt::V2018_02_01::Models::WorkerSizeOptions
      ComputeModeOptions = Azure::Web::Mgmt::V2018_02_01::Models::ComputeModeOptions
      OperationStatus = Azure::Web::Mgmt::V2018_02_01::Models::OperationStatus
      AccessControlEntryAction = Azure::Web::Mgmt::V2018_02_01::Models::AccessControlEntryAction
      SolutionType = Azure::Web::Mgmt::V2018_02_01::Models::SolutionType
      IssueType = Azure::Web::Mgmt::V2018_02_01::Models::IssueType
      ResourceScopeType = Azure::Web::Mgmt::V2018_02_01::Models::ResourceScopeType
      RenderingType = Azure::Web::Mgmt::V2018_02_01::Models::RenderingType
      Channels = Azure::Web::Mgmt::V2018_02_01::Models::Channels
      NotificationLevel = Azure::Web::Mgmt::V2018_02_01::Models::NotificationLevel
      InAvailabilityReasonType = Azure::Web::Mgmt::V2018_02_01::Models::InAvailabilityReasonType
      AppServicePlanRestrictions = Azure::Web::Mgmt::V2018_02_01::Models::AppServicePlanRestrictions
      ValidateResourceTypes = Azure::Web::Mgmt::V2018_02_01::Models::ValidateResourceTypes
      CheckNameResourceTypes = Azure::Web::Mgmt::V2018_02_01::Models::CheckNameResourceTypes
      BackupItemStatus = Azure::Web::Mgmt::V2018_02_01::Models::BackupItemStatus
      LogLevel = Azure::Web::Mgmt::V2018_02_01::Models::LogLevel
      FrequencyUnit = Azure::Web::Mgmt::V2018_02_01::Models::FrequencyUnit
      DatabaseType = Azure::Web::Mgmt::V2018_02_01::Models::DatabaseType
      WebJobType = Azure::Web::Mgmt::V2018_02_01::Models::WebJobType
      ContinuousWebJobStatus = Azure::Web::Mgmt::V2018_02_01::Models::ContinuousWebJobStatus
      DnsVerificationTestResult = Azure::Web::Mgmt::V2018_02_01::Models::DnsVerificationTestResult
      PublishingProfileFormat = Azure::Web::Mgmt::V2018_02_01::Models::PublishingProfileFormat
      MSDeployProvisioningState = Azure::Web::Mgmt::V2018_02_01::Models::MSDeployProvisioningState
      MSDeployLogEntryType = Azure::Web::Mgmt::V2018_02_01::Models::MSDeployLogEntryType
      PublicCertificateLocation = Azure::Web::Mgmt::V2018_02_01::Models::PublicCertificateLocation
      MySqlMigrationType = Azure::Web::Mgmt::V2018_02_01::Models::MySqlMigrationType
      UnauthenticatedClientAction = Azure::Web::Mgmt::V2018_02_01::Models::UnauthenticatedClientAction
      BackupRestoreOperationType = Azure::Web::Mgmt::V2018_02_01::Models::BackupRestoreOperationType
      CloneAbilityResult = Azure::Web::Mgmt::V2018_02_01::Models::CloneAbilityResult
      BuiltInAuthenticationProvider = Azure::Web::Mgmt::V2018_02_01::Models::BuiltInAuthenticationProvider
      TriggeredWebJobStatus = Azure::Web::Mgmt::V2018_02_01::Models::TriggeredWebJobStatus
      SiteExtensionType = Azure::Web::Mgmt::V2018_02_01::Models::SiteExtensionType
      SkuName = Azure::Web::Mgmt::V2018_02_01::Models::SkuName
      DiagnosticDetectorCollection = Azure::Web::Mgmt::V2018_02_01::Models::DiagnosticDetectorCollection
      AppServiceCertificate = Azure::Web::Mgmt::V2018_02_01::Models::AppServiceCertificate
      Operation = Azure::Web::Mgmt::V2018_02_01::Models::Operation
      AppServiceCertificateCollection = Azure::Web::Mgmt::V2018_02_01::Models::AppServiceCertificateCollection
      ResourceMetricName = Azure::Web::Mgmt::V2018_02_01::Models::ResourceMetricName
      DeploymentCollection = Azure::Web::Mgmt::V2018_02_01::Models::DeploymentCollection
      VirtualNetworkProfile = Azure::Web::Mgmt::V2018_02_01::Models::VirtualNetworkProfile
      PrivateAccessSubnet = Azure::Web::Mgmt::V2018_02_01::Models::PrivateAccessSubnet
      WorkerPool = Azure::Web::Mgmt::V2018_02_01::Models::WorkerPool
      ProcessInfoCollection = Azure::Web::Mgmt::V2018_02_01::Models::ProcessInfoCollection
      VirtualIPMapping = Azure::Web::Mgmt::V2018_02_01::Models::VirtualIPMapping
      PerfMonResponse = Azure::Web::Mgmt::V2018_02_01::Models::PerfMonResponse
      StampCapacity = Azure::Web::Mgmt::V2018_02_01::Models::StampCapacity
      SiteSeal = Azure::Web::Mgmt::V2018_02_01::Models::SiteSeal
      NetworkAccessControlEntry = Azure::Web::Mgmt::V2018_02_01::Models::NetworkAccessControlEntry
      PerfMonSample = Azure::Web::Mgmt::V2018_02_01::Models::PerfMonSample
      AppServiceEnvironment = Azure::Web::Mgmt::V2018_02_01::Models::AppServiceEnvironment
      ProcessThreadInfoCollection = Azure::Web::Mgmt::V2018_02_01::Models::ProcessThreadInfoCollection
      AppServicePlanCollection = Azure::Web::Mgmt::V2018_02_01::Models::AppServicePlanCollection
      SiteCloneabilityCriterion = Azure::Web::Mgmt::V2018_02_01::Models::SiteCloneabilityCriterion
      LocalizableString = Azure::Web::Mgmt::V2018_02_01::Models::LocalizableString
      SiteCloneability = Azure::Web::Mgmt::V2018_02_01::Models::SiteCloneability
      CsmUsageQuota = Azure::Web::Mgmt::V2018_02_01::Models::CsmUsageQuota
      MSDeployLogEntry = Azure::Web::Mgmt::V2018_02_01::Models::MSDeployLogEntry
      CsmUsageQuotaCollection = Azure::Web::Mgmt::V2018_02_01::Models::CsmUsageQuotaCollection
      HttpLogsConfig = Azure::Web::Mgmt::V2018_02_01::Models::HttpLogsConfig
      DeletedSite = Azure::Web::Mgmt::V2018_02_01::Models::DeletedSite
      ErrorEntity = Azure::Web::Mgmt::V2018_02_01::Models::ErrorEntity
      CloningInfo = Azure::Web::Mgmt::V2018_02_01::Models::CloningInfo
      IdentifierCollection = Azure::Web::Mgmt::V2018_02_01::Models::IdentifierCollection
      IpSecurityRestriction = Azure::Web::Mgmt::V2018_02_01::Models::IpSecurityRestriction
      CertificateDetails = Azure::Web::Mgmt::V2018_02_01::Models::CertificateDetails
      CorsSettings = Azure::Web::Mgmt::V2018_02_01::Models::CorsSettings
      SnapshotRecoverySource = Azure::Web::Mgmt::V2018_02_01::Models::SnapshotRecoverySource
      AutoHealActions = Azure::Web::Mgmt::V2018_02_01::Models::AutoHealActions
      ResourceMetricProperty = Azure::Web::Mgmt::V2018_02_01::Models::ResourceMetricProperty
      StatusCodesBasedTrigger = Azure::Web::Mgmt::V2018_02_01::Models::StatusCodesBasedTrigger
      ResourceMetricValue = Azure::Web::Mgmt::V2018_02_01::Models::ResourceMetricValue
      AutoHealTriggers = Azure::Web::Mgmt::V2018_02_01::Models::AutoHealTriggers
      ResourceMetric = Azure::Web::Mgmt::V2018_02_01::Models::ResourceMetric
      SiteLimits = Azure::Web::Mgmt::V2018_02_01::Models::SiteLimits
      ResourceMetricCollection = Azure::Web::Mgmt::V2018_02_01::Models::ResourceMetricCollection
      Experiments = Azure::Web::Mgmt::V2018_02_01::Models::Experiments
      ResourceMetricDefinitionCollection = Azure::Web::Mgmt::V2018_02_01::Models::ResourceMetricDefinitionCollection
      VirtualApplication = Azure::Web::Mgmt::V2018_02_01::Models::VirtualApplication
      WebAppCollection = Azure::Web::Mgmt::V2018_02_01::Models::WebAppCollection
      SiteMachineKey = Azure::Web::Mgmt::V2018_02_01::Models::SiteMachineKey
      DeletedWebAppCollection = Azure::Web::Mgmt::V2018_02_01::Models::DeletedWebAppCollection
      NameValuePair = Azure::Web::Mgmt::V2018_02_01::Models::NameValuePair
      Solution = Azure::Web::Mgmt::V2018_02_01::Models::Solution
      HostNameSslState = Azure::Web::Mgmt::V2018_02_01::Models::HostNameSslState
      DetectorAbnormalTimePeriod = Azure::Web::Mgmt::V2018_02_01::Models::DetectorAbnormalTimePeriod
      Capability = Azure::Web::Mgmt::V2018_02_01::Models::Capability
      AbnormalTimePeriod = Azure::Web::Mgmt::V2018_02_01::Models::AbnormalTimePeriod
      SkuDescription = Azure::Web::Mgmt::V2018_02_01::Models::SkuDescription
      TriggeredJobHistoryCollection = Azure::Web::Mgmt::V2018_02_01::Models::TriggeredJobHistoryCollection
      Resource = Azure::Web::Mgmt::V2018_02_01::Models::Resource
      DiagnosticMetricSample = Azure::Web::Mgmt::V2018_02_01::Models::DiagnosticMetricSample
      DefaultErrorResponseError = Azure::Web::Mgmt::V2018_02_01::Models::DefaultErrorResponseError
      DiagnosticMetricSet = Azure::Web::Mgmt::V2018_02_01::Models::DiagnosticMetricSet
      NameIdentifier = Azure::Web::Mgmt::V2018_02_01::Models::NameIdentifier
      DataSource = Azure::Web::Mgmt::V2018_02_01::Models::DataSource
      MetricAvailability = Azure::Web::Mgmt::V2018_02_01::Models::MetricAvailability
      ResponseMetaData = Azure::Web::Mgmt::V2018_02_01::Models::ResponseMetaData
      MetricSpecification = Azure::Web::Mgmt::V2018_02_01::Models::MetricSpecification
      AnalysisData = Azure::Web::Mgmt::V2018_02_01::Models::AnalysisData
      CsmOperationDescriptionProperties = Azure::Web::Mgmt::V2018_02_01::Models::CsmOperationDescriptionProperties
      TriggeredWebJobCollection = Azure::Web::Mgmt::V2018_02_01::Models::TriggeredWebJobCollection
      CsmOperationDescription = Azure::Web::Mgmt::V2018_02_01::Models::CsmOperationDescription
      DataTableResponseColumn = Azure::Web::Mgmt::V2018_02_01::Models::DataTableResponseColumn
      Address = Azure::Web::Mgmt::V2018_02_01::Models::Address
      DataTableResponseObject = Azure::Web::Mgmt::V2018_02_01::Models::DataTableResponseObject
      HostName = Azure::Web::Mgmt::V2018_02_01::Models::HostName
      DetectorInfo = Azure::Web::Mgmt::V2018_02_01::Models::DetectorInfo
      SlotDifferenceCollection = Azure::Web::Mgmt::V2018_02_01::Models::SlotDifferenceCollection
      Rendering = Azure::Web::Mgmt::V2018_02_01::Models::Rendering
      DomainCollection = Azure::Web::Mgmt::V2018_02_01::Models::DomainCollection
      DiagnosticData = Azure::Web::Mgmt::V2018_02_01::Models::DiagnosticData
      FunctionEnvelopeCollection = Azure::Web::Mgmt::V2018_02_01::Models::FunctionEnvelopeCollection
      CsmSlotEntity = Azure::Web::Mgmt::V2018_02_01::Models::CsmSlotEntity
      SnapshotCollection = Azure::Web::Mgmt::V2018_02_01::Models::SnapshotCollection
      DetectorResponseCollection = Azure::Web::Mgmt::V2018_02_01::Models::DetectorResponseCollection
      NameIdentifierCollection = Azure::Web::Mgmt::V2018_02_01::Models::NameIdentifierCollection
      CsmPublishingProfileOptions = Azure::Web::Mgmt::V2018_02_01::Models::CsmPublishingProfileOptions
      TldLegalAgreementCollection = Azure::Web::Mgmt::V2018_02_01::Models::TldLegalAgreementCollection
      DiagnosticAnalysisCollection = Azure::Web::Mgmt::V2018_02_01::Models::DiagnosticAnalysisCollection
      TopLevelDomainAgreementOption = Azure::Web::Mgmt::V2018_02_01::Models::TopLevelDomainAgreementOption
      ContinuousWebJobCollection = Azure::Web::Mgmt::V2018_02_01::Models::ContinuousWebJobCollection
      EnabledConfig = Azure::Web::Mgmt::V2018_02_01::Models::EnabledConfig
      DiagnosticCategoryCollection = Azure::Web::Mgmt::V2018_02_01::Models::DiagnosticCategoryCollection
      AppServiceCertificateOrderCollection = Azure::Web::Mgmt::V2018_02_01::Models::AppServiceCertificateOrderCollection
      PrivateAccessVirtualNetwork = Azure::Web::Mgmt::V2018_02_01::Models::PrivateAccessVirtualNetwork
      WebAppInstanceCollection = Azure::Web::Mgmt::V2018_02_01::Models::WebAppInstanceCollection
      PerfMonSet = Azure::Web::Mgmt::V2018_02_01::Models::PerfMonSet
      ProcessModuleInfoCollection = Azure::Web::Mgmt::V2018_02_01::Models::ProcessModuleInfoCollection
      StackMinorVersion = Azure::Web::Mgmt::V2018_02_01::Models::StackMinorVersion
      ResourceMetricAvailability = Azure::Web::Mgmt::V2018_02_01::Models::ResourceMetricAvailability
      StackMajorVersion = Azure::Web::Mgmt::V2018_02_01::Models::StackMajorVersion
      SiteConfigurationSnapshotInfoCollection = Azure::Web::Mgmt::V2018_02_01::Models::SiteConfigurationSnapshotInfoCollection
      ManagedServiceIdentity = Azure::Web::Mgmt::V2018_02_01::Models::ManagedServiceIdentity
      ApplicationStack = Azure::Web::Mgmt::V2018_02_01::Models::ApplicationStack
      SlotSwapStatus = Azure::Web::Mgmt::V2018_02_01::Models::SlotSwapStatus
      ApplicationStackCollection = Azure::Web::Mgmt::V2018_02_01::Models::ApplicationStackCollection
      ApiDefinitionInfo = Azure::Web::Mgmt::V2018_02_01::Models::ApiDefinitionInfo
      ResourceCollection = Azure::Web::Mgmt::V2018_02_01::Models::ResourceCollection
      SlowRequestsBasedTrigger = Azure::Web::Mgmt::V2018_02_01::Models::SlowRequestsBasedTrigger
      RecommendationCollection = Azure::Web::Mgmt::V2018_02_01::Models::RecommendationCollection
      AutoHealRules = Azure::Web::Mgmt::V2018_02_01::Models::AutoHealRules
      HybridConnectionCollection = Azure::Web::Mgmt::V2018_02_01::Models::HybridConnectionCollection
      VirtualDirectory = Azure::Web::Mgmt::V2018_02_01::Models::VirtualDirectory
      WorkerPoolCollection = Azure::Web::Mgmt::V2018_02_01::Models::WorkerPoolCollection
      ConnStringInfo = Azure::Web::Mgmt::V2018_02_01::Models::ConnStringInfo
      BillingMeterCollection = Azure::Web::Mgmt::V2018_02_01::Models::BillingMeterCollection
      HostNameBindingCollection = Azure::Web::Mgmt::V2018_02_01::Models::HostNameBindingCollection
      CsmMoveResourceEnvelope = Azure::Web::Mgmt::V2018_02_01::Models::CsmMoveResourceEnvelope
      SiteExtensionInfoCollection = Azure::Web::Mgmt::V2018_02_01::Models::SiteExtensionInfoCollection
      UsageCollection = Azure::Web::Mgmt::V2018_02_01::Models::UsageCollection
      DefaultErrorResponse = Azure::Web::Mgmt::V2018_02_01::Models::DefaultErrorResponse
      HostingEnvironmentDeploymentInfo = Azure::Web::Mgmt::V2018_02_01::Models::HostingEnvironmentDeploymentInfo
      Dimension = Azure::Web::Mgmt::V2018_02_01::Models::Dimension
      DeploymentLocations = Azure::Web::Mgmt::V2018_02_01::Models::DeploymentLocations
      CsmOperationDisplay = Azure::Web::Mgmt::V2018_02_01::Models::CsmOperationDisplay
      GeoRegionCollection = Azure::Web::Mgmt::V2018_02_01::Models::GeoRegionCollection
      Contact = Azure::Web::Mgmt::V2018_02_01::Models::Contact
      GlobalCsmSkuDescription = Azure::Web::Mgmt::V2018_02_01::Models::GlobalCsmSkuDescription
      DomainAvailablilityCheckResult = Azure::Web::Mgmt::V2018_02_01::Models::DomainAvailablilityCheckResult
      StampCapacityCollection = Azure::Web::Mgmt::V2018_02_01::Models::StampCapacityCollection
      DomainOwnershipIdentifierCollection = Azure::Web::Mgmt::V2018_02_01::Models::DomainOwnershipIdentifierCollection
      PremierAddOnOfferCollection = Azure::Web::Mgmt::V2018_02_01::Models::PremierAddOnOfferCollection
      TldLegalAgreement = Azure::Web::Mgmt::V2018_02_01::Models::TldLegalAgreement
      ResourceNameAvailability = Azure::Web::Mgmt::V2018_02_01::Models::ResourceNameAvailability
      TopLevelDomainCollection = Azure::Web::Mgmt::V2018_02_01::Models::TopLevelDomainCollection
      ResourceNameAvailabilityRequest = Azure::Web::Mgmt::V2018_02_01::Models::ResourceNameAvailabilityRequest
      PerfMonCounterCollection = Azure::Web::Mgmt::V2018_02_01::Models::PerfMonCounterCollection
      SkuInfos = Azure::Web::Mgmt::V2018_02_01::Models::SkuInfos
      PublicCertificateCollection = Azure::Web::Mgmt::V2018_02_01::Models::PublicCertificateCollection
      SkuInfoCollection = Azure::Web::Mgmt::V2018_02_01::Models::SkuInfoCollection
      ProxyOnlyResource = Azure::Web::Mgmt::V2018_02_01::Models::ProxyOnlyResource
      SourceControlCollection = Azure::Web::Mgmt::V2018_02_01::Models::SourceControlCollection
      AutoHealCustomAction = Azure::Web::Mgmt::V2018_02_01::Models::AutoHealCustomAction
      ValidateRequest = Azure::Web::Mgmt::V2018_02_01::Models::ValidateRequest
      RampUpRule = Azure::Web::Mgmt::V2018_02_01::Models::RampUpRule
      ValidateResponseError = Azure::Web::Mgmt::V2018_02_01::Models::ValidateResponseError
      SiteConfig = Azure::Web::Mgmt::V2018_02_01::Models::SiteConfig
      ValidateResponse = Azure::Web::Mgmt::V2018_02_01::Models::ValidateResponse
      DefaultErrorResponseErrorDetailsItem = Azure::Web::Mgmt::V2018_02_01::Models::DefaultErrorResponseErrorDetailsItem
      SkuInfo = Azure::Web::Mgmt::V2018_02_01::Models::SkuInfo
      ServiceSpecification = Azure::Web::Mgmt::V2018_02_01::Models::ServiceSpecification
      MetricAvailabilily = Azure::Web::Mgmt::V2018_02_01::Models::MetricAvailabilily
      DomainPurchaseConsent = Azure::Web::Mgmt::V2018_02_01::Models::DomainPurchaseConsent
      HostingEnvironmentDiagnostics = Azure::Web::Mgmt::V2018_02_01::Models::HostingEnvironmentDiagnostics
      DomainRecommendationSearchParameters = Azure::Web::Mgmt::V2018_02_01::Models::DomainRecommendationSearchParameters
      FileSystemApplicationLogsConfig = Azure::Web::Mgmt::V2018_02_01::Models::FileSystemApplicationLogsConfig
      CertificateCollection = Azure::Web::Mgmt::V2018_02_01::Models::CertificateCollection
      AzureTableStorageApplicationLogsConfig = Azure::Web::Mgmt::V2018_02_01::Models::AzureTableStorageApplicationLogsConfig
      SiteConfigResourceCollection = Azure::Web::Mgmt::V2018_02_01::Models::SiteConfigResourceCollection
      AzureBlobStorageApplicationLogsConfig = Azure::Web::Mgmt::V2018_02_01::Models::AzureBlobStorageApplicationLogsConfig
      RequestsBasedTrigger = Azure::Web::Mgmt::V2018_02_01::Models::RequestsBasedTrigger
      ApplicationLogsConfig = Azure::Web::Mgmt::V2018_02_01::Models::ApplicationLogsConfig
      SkuCapacity = Azure::Web::Mgmt::V2018_02_01::Models::SkuCapacity
      AzureBlobStorageHttpLogsConfig = Azure::Web::Mgmt::V2018_02_01::Models::AzureBlobStorageHttpLogsConfig
      CsmOperationCollection = Azure::Web::Mgmt::V2018_02_01::Models::CsmOperationCollection
      DatabaseBackupSetting = Azure::Web::Mgmt::V2018_02_01::Models::DatabaseBackupSetting
      FileSystemHttpLogsConfig = Azure::Web::Mgmt::V2018_02_01::Models::FileSystemHttpLogsConfig
      AppServiceEnvironmentCollection = Azure::Web::Mgmt::V2018_02_01::Models::AppServiceEnvironmentCollection
      HostingEnvironmentProfile = Azure::Web::Mgmt::V2018_02_01::Models::HostingEnvironmentProfile
      BackupItemCollection = Azure::Web::Mgmt::V2018_02_01::Models::BackupItemCollection
      LogSpecification = Azure::Web::Mgmt::V2018_02_01::Models::LogSpecification
      BackupSchedule = Azure::Web::Mgmt::V2018_02_01::Models::BackupSchedule
      SiteSealRequest = Azure::Web::Mgmt::V2018_02_01::Models::SiteSealRequest
      AddressResponse = Azure::Web::Mgmt::V2018_02_01::Models::AddressResponse
      DomainControlCenterSsoRequest = Azure::Web::Mgmt::V2018_02_01::Models::DomainControlCenterSsoRequest
      ConnStringValueTypePair = Azure::Web::Mgmt::V2018_02_01::Models::ConnStringValueTypePair
    end

    #
    # WebManagementClass
    #
    class WebManagementClass
      attr_reader :app_service_certificate_orders, :certificate_registration_provider, :domains, :top_level_domains, :domain_registration_provider, :certificates, :deleted_web_apps, :diagnostics, :provider, :recommendations, :web_apps, :app_service_environments, :app_service_plans, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::Web::Mgmt::V2018_02_01::WebSiteManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @app_service_certificate_orders = @client_0.app_service_certificate_orders
        @certificate_registration_provider = @client_0.certificate_registration_provider
        @domains = @client_0.domains
        @top_level_domains = @client_0.top_level_domains
        @domain_registration_provider = @client_0.domain_registration_provider
        @certificates = @client_0.certificates
        @deleted_web_apps = @client_0.deleted_web_apps
        @diagnostics = @client_0.diagnostics
        @provider = @client_0.provider
        @recommendations = @client_0.recommendations
        @web_apps = @client_0.web_apps
        @app_service_environments = @client_0.app_service_environments
        @app_service_plans = @client_0.app_service_plans

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/Web/Mgmt'
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
      def handler_mapping
        Azure::Web::Mgmt::V2018_02_01::Models::HandlerMapping
      end
      def web_job_collection
        Azure::Web::Mgmt::V2018_02_01::Models::WebJobCollection
      end
      def app_service_certificate_resource
        Azure::Web::Mgmt::V2018_02_01::Models::AppServiceCertificateResource
      end
      def app_service_certificate_order
        Azure::Web::Mgmt::V2018_02_01::Models::AppServiceCertificateOrder
      end
      def app_service_certificate_order_patch_resource
        Azure::Web::Mgmt::V2018_02_01::Models::AppServiceCertificateOrderPatchResource
      end
      def app_service_certificate_patch_resource
        Azure::Web::Mgmt::V2018_02_01::Models::AppServiceCertificatePatchResource
      end
      def certificate_email
        Azure::Web::Mgmt::V2018_02_01::Models::CertificateEmail
      end
      def certificate_order_action
        Azure::Web::Mgmt::V2018_02_01::Models::CertificateOrderAction
      end
      def reissue_certificate_order_request
        Azure::Web::Mgmt::V2018_02_01::Models::ReissueCertificateOrderRequest
      end
      def renew_certificate_order_request
        Azure::Web::Mgmt::V2018_02_01::Models::RenewCertificateOrderRequest
      end
      def vnet_route
        Azure::Web::Mgmt::V2018_02_01::Models::VnetRoute
      end
      def vnet_info
        Azure::Web::Mgmt::V2018_02_01::Models::VnetInfo
      end
      def vnet_gateway
        Azure::Web::Mgmt::V2018_02_01::Models::VnetGateway
      end
      def user
        Azure::Web::Mgmt::V2018_02_01::Models::User
      end
      def snapshot
        Azure::Web::Mgmt::V2018_02_01::Models::Snapshot
      end
      def resource_metric_definition
        Azure::Web::Mgmt::V2018_02_01::Models::ResourceMetricDefinition
      end
      def push_settings
        Azure::Web::Mgmt::V2018_02_01::Models::PushSettings
      end
      def hybrid_connection_key
        Azure::Web::Mgmt::V2018_02_01::Models::HybridConnectionKey
      end
      def hybrid_connection
        Azure::Web::Mgmt::V2018_02_01::Models::HybridConnection
      end
      def site
        Azure::Web::Mgmt::V2018_02_01::Models::Site
      end
      def identifier
        Azure::Web::Mgmt::V2018_02_01::Models::Identifier
      end
      def domain
        Azure::Web::Mgmt::V2018_02_01::Models::Domain
      end
      def app_service_plan
        Azure::Web::Mgmt::V2018_02_01::Models::AppServicePlan
      end
      def domain_patch_resource
        Azure::Web::Mgmt::V2018_02_01::Models::DomainPatchResource
      end
      def domain_ownership_identifier
        Azure::Web::Mgmt::V2018_02_01::Models::DomainOwnershipIdentifier
      end
      def certificate
        Azure::Web::Mgmt::V2018_02_01::Models::Certificate
      end
      def top_level_domain
        Azure::Web::Mgmt::V2018_02_01::Models::TopLevelDomain
      end
      def detector_definition
        Azure::Web::Mgmt::V2018_02_01::Models::DetectorDefinition
      end
      def certificate_patch_resource
        Azure::Web::Mgmt::V2018_02_01::Models::CertificatePatchResource
      end
      def detector_response
        Azure::Web::Mgmt::V2018_02_01::Models::DetectorResponse
      end
      def analysis_definition
        Azure::Web::Mgmt::V2018_02_01::Models::AnalysisDefinition
      end
      def diagnostic_category
        Azure::Web::Mgmt::V2018_02_01::Models::DiagnosticCategory
      end
      def diagnostic_analysis
        Azure::Web::Mgmt::V2018_02_01::Models::DiagnosticAnalysis
      end
      def recommendation
        Azure::Web::Mgmt::V2018_02_01::Models::Recommendation
      end
      def diagnostic_detector_response
        Azure::Web::Mgmt::V2018_02_01::Models::DiagnosticDetectorResponse
      end
      def billing_meter
        Azure::Web::Mgmt::V2018_02_01::Models::BillingMeter
      end
      def recommendation_rule
        Azure::Web::Mgmt::V2018_02_01::Models::RecommendationRule
      end
      def premier_add_on_offer
        Azure::Web::Mgmt::V2018_02_01::Models::PremierAddOnOffer
      end
      def geo_region
        Azure::Web::Mgmt::V2018_02_01::Models::GeoRegion
      end
      def vnet_parameters
        Azure::Web::Mgmt::V2018_02_01::Models::VnetParameters
      end
      def source_control
        Azure::Web::Mgmt::V2018_02_01::Models::SourceControl
      end
      def vnet_validation_failure_details
        Azure::Web::Mgmt::V2018_02_01::Models::VnetValidationFailureDetails
      end
      def vnet_validation_test_failure
        Azure::Web::Mgmt::V2018_02_01::Models::VnetValidationTestFailure
      end
      def backup_request
        Azure::Web::Mgmt::V2018_02_01::Models::BackupRequest
      end
      def backup_item
        Azure::Web::Mgmt::V2018_02_01::Models::BackupItem
      end
      def continuous_web_job
        Azure::Web::Mgmt::V2018_02_01::Models::ContinuousWebJob
      end
      def connection_string_dictionary
        Azure::Web::Mgmt::V2018_02_01::Models::ConnectionStringDictionary
      end
      def deleted_app_restore_request
        Azure::Web::Mgmt::V2018_02_01::Models::DeletedAppRestoreRequest
      end
      def custom_hostname_analysis_result
        Azure::Web::Mgmt::V2018_02_01::Models::CustomHostnameAnalysisResult
      end
      def function_envelope
        Azure::Web::Mgmt::V2018_02_01::Models::FunctionEnvelope
      end
      def deployment
        Azure::Web::Mgmt::V2018_02_01::Models::Deployment
      end
      def host_name_binding
        Azure::Web::Mgmt::V2018_02_01::Models::HostNameBinding
      end
      def function_secrets
        Azure::Web::Mgmt::V2018_02_01::Models::FunctionSecrets
      end
      def msdeploy_log
        Azure::Web::Mgmt::V2018_02_01::Models::MSDeployLog
      end
      def msdeploy
        Azure::Web::Mgmt::V2018_02_01::Models::MSDeploy
      end
      def migrate_my_sql_request
        Azure::Web::Mgmt::V2018_02_01::Models::MigrateMySqlRequest
      end
      def msdeploy_status
        Azure::Web::Mgmt::V2018_02_01::Models::MSDeployStatus
      end
      def relay_service_connection_entity
        Azure::Web::Mgmt::V2018_02_01::Models::RelayServiceConnectionEntity
      end
      def migrate_my_sql_status
        Azure::Web::Mgmt::V2018_02_01::Models::MigrateMySqlStatus
      end
      def premier_add_on
        Azure::Web::Mgmt::V2018_02_01::Models::PremierAddOn
      end
      def network_features
        Azure::Web::Mgmt::V2018_02_01::Models::NetworkFeatures
      end
      def private_access
        Azure::Web::Mgmt::V2018_02_01::Models::PrivateAccess
      end
      def premier_add_on_patch_resource
        Azure::Web::Mgmt::V2018_02_01::Models::PremierAddOnPatchResource
      end
      def process_module_info
        Azure::Web::Mgmt::V2018_02_01::Models::ProcessModuleInfo
      end
      def process_thread_info
        Azure::Web::Mgmt::V2018_02_01::Models::ProcessThreadInfo
      end
      def public_certificate
        Azure::Web::Mgmt::V2018_02_01::Models::PublicCertificate
      end
      def process_info
        Azure::Web::Mgmt::V2018_02_01::Models::ProcessInfo
      end
      def site_auth_settings
        Azure::Web::Mgmt::V2018_02_01::Models::SiteAuthSettings
      end
      def restore_request
        Azure::Web::Mgmt::V2018_02_01::Models::RestoreRequest
      end
      def site_configuration_snapshot_info
        Azure::Web::Mgmt::V2018_02_01::Models::SiteConfigurationSnapshotInfo
      end
      def site_config_resource
        Azure::Web::Mgmt::V2018_02_01::Models::SiteConfigResource
      end
      def site_instance
        Azure::Web::Mgmt::V2018_02_01::Models::SiteInstance
      end
      def site_extension_info
        Azure::Web::Mgmt::V2018_02_01::Models::SiteExtensionInfo
      end
      def site_patch_resource
        Azure::Web::Mgmt::V2018_02_01::Models::SitePatchResource
      end
      def site_logs_config
        Azure::Web::Mgmt::V2018_02_01::Models::SiteLogsConfig
      end
      def site_source_control
        Azure::Web::Mgmt::V2018_02_01::Models::SiteSourceControl
      end
      def site_php_error_log_flag
        Azure::Web::Mgmt::V2018_02_01::Models::SitePhpErrorLogFlag
      end
      def slot_difference
        Azure::Web::Mgmt::V2018_02_01::Models::SlotDifference
      end
      def slot_config_names_resource
        Azure::Web::Mgmt::V2018_02_01::Models::SlotConfigNamesResource
      end
      def storage_migration_options
        Azure::Web::Mgmt::V2018_02_01::Models::StorageMigrationOptions
      end
      def snapshot_restore_request
        Azure::Web::Mgmt::V2018_02_01::Models::SnapshotRestoreRequest
      end
      def string_dictionary
        Azure::Web::Mgmt::V2018_02_01::Models::StringDictionary
      end
      def storage_migration_response
        Azure::Web::Mgmt::V2018_02_01::Models::StorageMigrationResponse
      end
      def triggered_job_run
        Azure::Web::Mgmt::V2018_02_01::Models::TriggeredJobRun
      end
      def swift_virtual_network
        Azure::Web::Mgmt::V2018_02_01::Models::SwiftVirtualNetwork
      end
      def triggered_web_job
        Azure::Web::Mgmt::V2018_02_01::Models::TriggeredWebJob
      end
      def triggered_job_history
        Azure::Web::Mgmt::V2018_02_01::Models::TriggeredJobHistory
      end
      def app_service_environment_resource
        Azure::Web::Mgmt::V2018_02_01::Models::AppServiceEnvironmentResource
      end
      def web_job
        Azure::Web::Mgmt::V2018_02_01::Models::WebJob
      end
      def metric_definition
        Azure::Web::Mgmt::V2018_02_01::Models::MetricDefinition
      end
      def app_service_environment_patch_resource
        Azure::Web::Mgmt::V2018_02_01::Models::AppServiceEnvironmentPatchResource
      end
      def worker_pool_resource
        Azure::Web::Mgmt::V2018_02_01::Models::WorkerPoolResource
      end
      def usage
        Azure::Web::Mgmt::V2018_02_01::Models::Usage
      end
      def hybrid_connection_limits
        Azure::Web::Mgmt::V2018_02_01::Models::HybridConnectionLimits
      end
      def app_service_plan_patch_resource
        Azure::Web::Mgmt::V2018_02_01::Models::AppServicePlanPatchResource
      end
      def certificate_product_type
        Azure::Web::Mgmt::V2018_02_01::Models::CertificateProductType
      end
      def key_vault_secret_status
        Azure::Web::Mgmt::V2018_02_01::Models::KeyVaultSecretStatus
      end
      def certificate_order_status
        Azure::Web::Mgmt::V2018_02_01::Models::CertificateOrderStatus
      end
      def provisioning_state
        Azure::Web::Mgmt::V2018_02_01::Models::ProvisioningState
      end
      def route_type
        Azure::Web::Mgmt::V2018_02_01::Models::RouteType
      end
      def certificate_order_action_type
        Azure::Web::Mgmt::V2018_02_01::Models::CertificateOrderActionType
      end
      def ip_filter_tag
        Azure::Web::Mgmt::V2018_02_01::Models::IpFilterTag
      end
      def managed_service_identity_type
        Azure::Web::Mgmt::V2018_02_01::Models::ManagedServiceIdentityType
      end
      def connection_string_type
        Azure::Web::Mgmt::V2018_02_01::Models::ConnectionStringType
      end
      def auto_heal_action_type
        Azure::Web::Mgmt::V2018_02_01::Models::AutoHealActionType
      end
      def managed_pipeline_mode
        Azure::Web::Mgmt::V2018_02_01::Models::ManagedPipelineMode
      end
      def scm_type
        Azure::Web::Mgmt::V2018_02_01::Models::ScmType
      end
      def supported_tls_versions
        Azure::Web::Mgmt::V2018_02_01::Models::SupportedTlsVersions
      end
      def site_load_balancing
        Azure::Web::Mgmt::V2018_02_01::Models::SiteLoadBalancing
      end
      def ssl_state
        Azure::Web::Mgmt::V2018_02_01::Models::SslState
      end
      def ftps_state
        Azure::Web::Mgmt::V2018_02_01::Models::FtpsState
      end
      def usage_state
        Azure::Web::Mgmt::V2018_02_01::Models::UsageState
      end
      def host_type
        Azure::Web::Mgmt::V2018_02_01::Models::HostType
      end
      def status_options
        Azure::Web::Mgmt::V2018_02_01::Models::StatusOptions
      end
      def site_availability_state
        Azure::Web::Mgmt::V2018_02_01::Models::SiteAvailabilityState
      end
      def azure_resource_type
        Azure::Web::Mgmt::V2018_02_01::Models::AzureResourceType
      end
      def domain_status
        Azure::Web::Mgmt::V2018_02_01::Models::DomainStatus
      end
      def host_name_type
        Azure::Web::Mgmt::V2018_02_01::Models::HostNameType
      end
      def custom_host_name_dns_record_type
        Azure::Web::Mgmt::V2018_02_01::Models::CustomHostNameDnsRecordType
      end
      def domain_type
        Azure::Web::Mgmt::V2018_02_01::Models::DomainType
      end
      def dns_type
        Azure::Web::Mgmt::V2018_02_01::Models::DnsType
      end
      def internal_load_balancing_mode
        Azure::Web::Mgmt::V2018_02_01::Models::InternalLoadBalancingMode
      end
      def hosting_environment_status
        Azure::Web::Mgmt::V2018_02_01::Models::HostingEnvironmentStatus
      end
      def worker_size_options
        Azure::Web::Mgmt::V2018_02_01::Models::WorkerSizeOptions
      end
      def compute_mode_options
        Azure::Web::Mgmt::V2018_02_01::Models::ComputeModeOptions
      end
      def operation_status
        Azure::Web::Mgmt::V2018_02_01::Models::OperationStatus
      end
      def access_control_entry_action
        Azure::Web::Mgmt::V2018_02_01::Models::AccessControlEntryAction
      end
      def solution_type
        Azure::Web::Mgmt::V2018_02_01::Models::SolutionType
      end
      def issue_type
        Azure::Web::Mgmt::V2018_02_01::Models::IssueType
      end
      def resource_scope_type
        Azure::Web::Mgmt::V2018_02_01::Models::ResourceScopeType
      end
      def rendering_type
        Azure::Web::Mgmt::V2018_02_01::Models::RenderingType
      end
      def channels
        Azure::Web::Mgmt::V2018_02_01::Models::Channels
      end
      def notification_level
        Azure::Web::Mgmt::V2018_02_01::Models::NotificationLevel
      end
      def in_availability_reason_type
        Azure::Web::Mgmt::V2018_02_01::Models::InAvailabilityReasonType
      end
      def app_service_plan_restrictions
        Azure::Web::Mgmt::V2018_02_01::Models::AppServicePlanRestrictions
      end
      def validate_resource_types
        Azure::Web::Mgmt::V2018_02_01::Models::ValidateResourceTypes
      end
      def check_name_resource_types
        Azure::Web::Mgmt::V2018_02_01::Models::CheckNameResourceTypes
      end
      def backup_item_status
        Azure::Web::Mgmt::V2018_02_01::Models::BackupItemStatus
      end
      def log_level
        Azure::Web::Mgmt::V2018_02_01::Models::LogLevel
      end
      def frequency_unit
        Azure::Web::Mgmt::V2018_02_01::Models::FrequencyUnit
      end
      def database_type
        Azure::Web::Mgmt::V2018_02_01::Models::DatabaseType
      end
      def web_job_type
        Azure::Web::Mgmt::V2018_02_01::Models::WebJobType
      end
      def continuous_web_job_status
        Azure::Web::Mgmt::V2018_02_01::Models::ContinuousWebJobStatus
      end
      def dns_verification_test_result
        Azure::Web::Mgmt::V2018_02_01::Models::DnsVerificationTestResult
      end
      def publishing_profile_format
        Azure::Web::Mgmt::V2018_02_01::Models::PublishingProfileFormat
      end
      def msdeploy_provisioning_state
        Azure::Web::Mgmt::V2018_02_01::Models::MSDeployProvisioningState
      end
      def msdeploy_log_entry_type
        Azure::Web::Mgmt::V2018_02_01::Models::MSDeployLogEntryType
      end
      def public_certificate_location
        Azure::Web::Mgmt::V2018_02_01::Models::PublicCertificateLocation
      end
      def my_sql_migration_type
        Azure::Web::Mgmt::V2018_02_01::Models::MySqlMigrationType
      end
      def unauthenticated_client_action
        Azure::Web::Mgmt::V2018_02_01::Models::UnauthenticatedClientAction
      end
      def backup_restore_operation_type
        Azure::Web::Mgmt::V2018_02_01::Models::BackupRestoreOperationType
      end
      def clone_ability_result
        Azure::Web::Mgmt::V2018_02_01::Models::CloneAbilityResult
      end
      def built_in_authentication_provider
        Azure::Web::Mgmt::V2018_02_01::Models::BuiltInAuthenticationProvider
      end
      def triggered_web_job_status
        Azure::Web::Mgmt::V2018_02_01::Models::TriggeredWebJobStatus
      end
      def site_extension_type
        Azure::Web::Mgmt::V2018_02_01::Models::SiteExtensionType
      end
      def sku_name
        Azure::Web::Mgmt::V2018_02_01::Models::SkuName
      end
      def diagnostic_detector_collection
        Azure::Web::Mgmt::V2018_02_01::Models::DiagnosticDetectorCollection
      end
      def app_service_certificate
        Azure::Web::Mgmt::V2018_02_01::Models::AppServiceCertificate
      end
      def operation
        Azure::Web::Mgmt::V2018_02_01::Models::Operation
      end
      def app_service_certificate_collection
        Azure::Web::Mgmt::V2018_02_01::Models::AppServiceCertificateCollection
      end
      def resource_metric_name
        Azure::Web::Mgmt::V2018_02_01::Models::ResourceMetricName
      end
      def deployment_collection
        Azure::Web::Mgmt::V2018_02_01::Models::DeploymentCollection
      end
      def virtual_network_profile
        Azure::Web::Mgmt::V2018_02_01::Models::VirtualNetworkProfile
      end
      def private_access_subnet
        Azure::Web::Mgmt::V2018_02_01::Models::PrivateAccessSubnet
      end
      def worker_pool
        Azure::Web::Mgmt::V2018_02_01::Models::WorkerPool
      end
      def process_info_collection
        Azure::Web::Mgmt::V2018_02_01::Models::ProcessInfoCollection
      end
      def virtual_ipmapping
        Azure::Web::Mgmt::V2018_02_01::Models::VirtualIPMapping
      end
      def perf_mon_response
        Azure::Web::Mgmt::V2018_02_01::Models::PerfMonResponse
      end
      def stamp_capacity
        Azure::Web::Mgmt::V2018_02_01::Models::StampCapacity
      end
      def site_seal
        Azure::Web::Mgmt::V2018_02_01::Models::SiteSeal
      end
      def network_access_control_entry
        Azure::Web::Mgmt::V2018_02_01::Models::NetworkAccessControlEntry
      end
      def perf_mon_sample
        Azure::Web::Mgmt::V2018_02_01::Models::PerfMonSample
      end
      def app_service_environment
        Azure::Web::Mgmt::V2018_02_01::Models::AppServiceEnvironment
      end
      def process_thread_info_collection
        Azure::Web::Mgmt::V2018_02_01::Models::ProcessThreadInfoCollection
      end
      def app_service_plan_collection
        Azure::Web::Mgmt::V2018_02_01::Models::AppServicePlanCollection
      end
      def site_cloneability_criterion
        Azure::Web::Mgmt::V2018_02_01::Models::SiteCloneabilityCriterion
      end
      def localizable_string
        Azure::Web::Mgmt::V2018_02_01::Models::LocalizableString
      end
      def site_cloneability
        Azure::Web::Mgmt::V2018_02_01::Models::SiteCloneability
      end
      def csm_usage_quota
        Azure::Web::Mgmt::V2018_02_01::Models::CsmUsageQuota
      end
      def msdeploy_log_entry
        Azure::Web::Mgmt::V2018_02_01::Models::MSDeployLogEntry
      end
      def csm_usage_quota_collection
        Azure::Web::Mgmt::V2018_02_01::Models::CsmUsageQuotaCollection
      end
      def http_logs_config
        Azure::Web::Mgmt::V2018_02_01::Models::HttpLogsConfig
      end
      def deleted_site
        Azure::Web::Mgmt::V2018_02_01::Models::DeletedSite
      end
      def error_entity
        Azure::Web::Mgmt::V2018_02_01::Models::ErrorEntity
      end
      def cloning_info
        Azure::Web::Mgmt::V2018_02_01::Models::CloningInfo
      end
      def identifier_collection
        Azure::Web::Mgmt::V2018_02_01::Models::IdentifierCollection
      end
      def ip_security_restriction
        Azure::Web::Mgmt::V2018_02_01::Models::IpSecurityRestriction
      end
      def certificate_details
        Azure::Web::Mgmt::V2018_02_01::Models::CertificateDetails
      end
      def cors_settings
        Azure::Web::Mgmt::V2018_02_01::Models::CorsSettings
      end
      def snapshot_recovery_source
        Azure::Web::Mgmt::V2018_02_01::Models::SnapshotRecoverySource
      end
      def auto_heal_actions
        Azure::Web::Mgmt::V2018_02_01::Models::AutoHealActions
      end
      def resource_metric_property
        Azure::Web::Mgmt::V2018_02_01::Models::ResourceMetricProperty
      end
      def status_codes_based_trigger
        Azure::Web::Mgmt::V2018_02_01::Models::StatusCodesBasedTrigger
      end
      def resource_metric_value
        Azure::Web::Mgmt::V2018_02_01::Models::ResourceMetricValue
      end
      def auto_heal_triggers
        Azure::Web::Mgmt::V2018_02_01::Models::AutoHealTriggers
      end
      def resource_metric
        Azure::Web::Mgmt::V2018_02_01::Models::ResourceMetric
      end
      def site_limits
        Azure::Web::Mgmt::V2018_02_01::Models::SiteLimits
      end
      def resource_metric_collection
        Azure::Web::Mgmt::V2018_02_01::Models::ResourceMetricCollection
      end
      def experiments
        Azure::Web::Mgmt::V2018_02_01::Models::Experiments
      end
      def resource_metric_definition_collection
        Azure::Web::Mgmt::V2018_02_01::Models::ResourceMetricDefinitionCollection
      end
      def virtual_application
        Azure::Web::Mgmt::V2018_02_01::Models::VirtualApplication
      end
      def web_app_collection
        Azure::Web::Mgmt::V2018_02_01::Models::WebAppCollection
      end
      def site_machine_key
        Azure::Web::Mgmt::V2018_02_01::Models::SiteMachineKey
      end
      def deleted_web_app_collection
        Azure::Web::Mgmt::V2018_02_01::Models::DeletedWebAppCollection
      end
      def name_value_pair
        Azure::Web::Mgmt::V2018_02_01::Models::NameValuePair
      end
      def solution
        Azure::Web::Mgmt::V2018_02_01::Models::Solution
      end
      def host_name_ssl_state
        Azure::Web::Mgmt::V2018_02_01::Models::HostNameSslState
      end
      def detector_abnormal_time_period
        Azure::Web::Mgmt::V2018_02_01::Models::DetectorAbnormalTimePeriod
      end
      def capability
        Azure::Web::Mgmt::V2018_02_01::Models::Capability
      end
      def abnormal_time_period
        Azure::Web::Mgmt::V2018_02_01::Models::AbnormalTimePeriod
      end
      def sku_description
        Azure::Web::Mgmt::V2018_02_01::Models::SkuDescription
      end
      def triggered_job_history_collection
        Azure::Web::Mgmt::V2018_02_01::Models::TriggeredJobHistoryCollection
      end
      def resource
        Azure::Web::Mgmt::V2018_02_01::Models::Resource
      end
      def diagnostic_metric_sample
        Azure::Web::Mgmt::V2018_02_01::Models::DiagnosticMetricSample
      end
      def default_error_response_error
        Azure::Web::Mgmt::V2018_02_01::Models::DefaultErrorResponseError
      end
      def diagnostic_metric_set
        Azure::Web::Mgmt::V2018_02_01::Models::DiagnosticMetricSet
      end
      def name_identifier
        Azure::Web::Mgmt::V2018_02_01::Models::NameIdentifier
      end
      def data_source
        Azure::Web::Mgmt::V2018_02_01::Models::DataSource
      end
      def metric_availability
        Azure::Web::Mgmt::V2018_02_01::Models::MetricAvailability
      end
      def response_meta_data
        Azure::Web::Mgmt::V2018_02_01::Models::ResponseMetaData
      end
      def metric_specification
        Azure::Web::Mgmt::V2018_02_01::Models::MetricSpecification
      end
      def analysis_data
        Azure::Web::Mgmt::V2018_02_01::Models::AnalysisData
      end
      def csm_operation_description_properties
        Azure::Web::Mgmt::V2018_02_01::Models::CsmOperationDescriptionProperties
      end
      def triggered_web_job_collection
        Azure::Web::Mgmt::V2018_02_01::Models::TriggeredWebJobCollection
      end
      def csm_operation_description
        Azure::Web::Mgmt::V2018_02_01::Models::CsmOperationDescription
      end
      def data_table_response_column
        Azure::Web::Mgmt::V2018_02_01::Models::DataTableResponseColumn
      end
      def address
        Azure::Web::Mgmt::V2018_02_01::Models::Address
      end
      def data_table_response_object
        Azure::Web::Mgmt::V2018_02_01::Models::DataTableResponseObject
      end
      def host_name
        Azure::Web::Mgmt::V2018_02_01::Models::HostName
      end
      def detector_info
        Azure::Web::Mgmt::V2018_02_01::Models::DetectorInfo
      end
      def slot_difference_collection
        Azure::Web::Mgmt::V2018_02_01::Models::SlotDifferenceCollection
      end
      def rendering
        Azure::Web::Mgmt::V2018_02_01::Models::Rendering
      end
      def domain_collection
        Azure::Web::Mgmt::V2018_02_01::Models::DomainCollection
      end
      def diagnostic_data
        Azure::Web::Mgmt::V2018_02_01::Models::DiagnosticData
      end
      def function_envelope_collection
        Azure::Web::Mgmt::V2018_02_01::Models::FunctionEnvelopeCollection
      end
      def csm_slot_entity
        Azure::Web::Mgmt::V2018_02_01::Models::CsmSlotEntity
      end
      def snapshot_collection
        Azure::Web::Mgmt::V2018_02_01::Models::SnapshotCollection
      end
      def detector_response_collection
        Azure::Web::Mgmt::V2018_02_01::Models::DetectorResponseCollection
      end
      def name_identifier_collection
        Azure::Web::Mgmt::V2018_02_01::Models::NameIdentifierCollection
      end
      def csm_publishing_profile_options
        Azure::Web::Mgmt::V2018_02_01::Models::CsmPublishingProfileOptions
      end
      def tld_legal_agreement_collection
        Azure::Web::Mgmt::V2018_02_01::Models::TldLegalAgreementCollection
      end
      def diagnostic_analysis_collection
        Azure::Web::Mgmt::V2018_02_01::Models::DiagnosticAnalysisCollection
      end
      def top_level_domain_agreement_option
        Azure::Web::Mgmt::V2018_02_01::Models::TopLevelDomainAgreementOption
      end
      def continuous_web_job_collection
        Azure::Web::Mgmt::V2018_02_01::Models::ContinuousWebJobCollection
      end
      def enabled_config
        Azure::Web::Mgmt::V2018_02_01::Models::EnabledConfig
      end
      def diagnostic_category_collection
        Azure::Web::Mgmt::V2018_02_01::Models::DiagnosticCategoryCollection
      end
      def app_service_certificate_order_collection
        Azure::Web::Mgmt::V2018_02_01::Models::AppServiceCertificateOrderCollection
      end
      def private_access_virtual_network
        Azure::Web::Mgmt::V2018_02_01::Models::PrivateAccessVirtualNetwork
      end
      def web_app_instance_collection
        Azure::Web::Mgmt::V2018_02_01::Models::WebAppInstanceCollection
      end
      def perf_mon_set
        Azure::Web::Mgmt::V2018_02_01::Models::PerfMonSet
      end
      def process_module_info_collection
        Azure::Web::Mgmt::V2018_02_01::Models::ProcessModuleInfoCollection
      end
      def stack_minor_version
        Azure::Web::Mgmt::V2018_02_01::Models::StackMinorVersion
      end
      def resource_metric_availability
        Azure::Web::Mgmt::V2018_02_01::Models::ResourceMetricAvailability
      end
      def stack_major_version
        Azure::Web::Mgmt::V2018_02_01::Models::StackMajorVersion
      end
      def site_configuration_snapshot_info_collection
        Azure::Web::Mgmt::V2018_02_01::Models::SiteConfigurationSnapshotInfoCollection
      end
      def managed_service_identity
        Azure::Web::Mgmt::V2018_02_01::Models::ManagedServiceIdentity
      end
      def application_stack
        Azure::Web::Mgmt::V2018_02_01::Models::ApplicationStack
      end
      def slot_swap_status
        Azure::Web::Mgmt::V2018_02_01::Models::SlotSwapStatus
      end
      def application_stack_collection
        Azure::Web::Mgmt::V2018_02_01::Models::ApplicationStackCollection
      end
      def api_definition_info
        Azure::Web::Mgmt::V2018_02_01::Models::ApiDefinitionInfo
      end
      def resource_collection
        Azure::Web::Mgmt::V2018_02_01::Models::ResourceCollection
      end
      def slow_requests_based_trigger
        Azure::Web::Mgmt::V2018_02_01::Models::SlowRequestsBasedTrigger
      end
      def recommendation_collection
        Azure::Web::Mgmt::V2018_02_01::Models::RecommendationCollection
      end
      def auto_heal_rules
        Azure::Web::Mgmt::V2018_02_01::Models::AutoHealRules
      end
      def hybrid_connection_collection
        Azure::Web::Mgmt::V2018_02_01::Models::HybridConnectionCollection
      end
      def virtual_directory
        Azure::Web::Mgmt::V2018_02_01::Models::VirtualDirectory
      end
      def worker_pool_collection
        Azure::Web::Mgmt::V2018_02_01::Models::WorkerPoolCollection
      end
      def conn_string_info
        Azure::Web::Mgmt::V2018_02_01::Models::ConnStringInfo
      end
      def billing_meter_collection
        Azure::Web::Mgmt::V2018_02_01::Models::BillingMeterCollection
      end
      def host_name_binding_collection
        Azure::Web::Mgmt::V2018_02_01::Models::HostNameBindingCollection
      end
      def csm_move_resource_envelope
        Azure::Web::Mgmt::V2018_02_01::Models::CsmMoveResourceEnvelope
      end
      def site_extension_info_collection
        Azure::Web::Mgmt::V2018_02_01::Models::SiteExtensionInfoCollection
      end
      def usage_collection
        Azure::Web::Mgmt::V2018_02_01::Models::UsageCollection
      end
      def default_error_response
        Azure::Web::Mgmt::V2018_02_01::Models::DefaultErrorResponse
      end
      def hosting_environment_deployment_info
        Azure::Web::Mgmt::V2018_02_01::Models::HostingEnvironmentDeploymentInfo
      end
      def dimension
        Azure::Web::Mgmt::V2018_02_01::Models::Dimension
      end
      def deployment_locations
        Azure::Web::Mgmt::V2018_02_01::Models::DeploymentLocations
      end
      def csm_operation_display
        Azure::Web::Mgmt::V2018_02_01::Models::CsmOperationDisplay
      end
      def geo_region_collection
        Azure::Web::Mgmt::V2018_02_01::Models::GeoRegionCollection
      end
      def contact
        Azure::Web::Mgmt::V2018_02_01::Models::Contact
      end
      def global_csm_sku_description
        Azure::Web::Mgmt::V2018_02_01::Models::GlobalCsmSkuDescription
      end
      def domain_availablility_check_result
        Azure::Web::Mgmt::V2018_02_01::Models::DomainAvailablilityCheckResult
      end
      def stamp_capacity_collection
        Azure::Web::Mgmt::V2018_02_01::Models::StampCapacityCollection
      end
      def domain_ownership_identifier_collection
        Azure::Web::Mgmt::V2018_02_01::Models::DomainOwnershipIdentifierCollection
      end
      def premier_add_on_offer_collection
        Azure::Web::Mgmt::V2018_02_01::Models::PremierAddOnOfferCollection
      end
      def tld_legal_agreement
        Azure::Web::Mgmt::V2018_02_01::Models::TldLegalAgreement
      end
      def resource_name_availability
        Azure::Web::Mgmt::V2018_02_01::Models::ResourceNameAvailability
      end
      def top_level_domain_collection
        Azure::Web::Mgmt::V2018_02_01::Models::TopLevelDomainCollection
      end
      def resource_name_availability_request
        Azure::Web::Mgmt::V2018_02_01::Models::ResourceNameAvailabilityRequest
      end
      def perf_mon_counter_collection
        Azure::Web::Mgmt::V2018_02_01::Models::PerfMonCounterCollection
      end
      def sku_infos
        Azure::Web::Mgmt::V2018_02_01::Models::SkuInfos
      end
      def public_certificate_collection
        Azure::Web::Mgmt::V2018_02_01::Models::PublicCertificateCollection
      end
      def sku_info_collection
        Azure::Web::Mgmt::V2018_02_01::Models::SkuInfoCollection
      end
      def proxy_only_resource
        Azure::Web::Mgmt::V2018_02_01::Models::ProxyOnlyResource
      end
      def source_control_collection
        Azure::Web::Mgmt::V2018_02_01::Models::SourceControlCollection
      end
      def auto_heal_custom_action
        Azure::Web::Mgmt::V2018_02_01::Models::AutoHealCustomAction
      end
      def validate_request
        Azure::Web::Mgmt::V2018_02_01::Models::ValidateRequest
      end
      def ramp_up_rule
        Azure::Web::Mgmt::V2018_02_01::Models::RampUpRule
      end
      def validate_response_error
        Azure::Web::Mgmt::V2018_02_01::Models::ValidateResponseError
      end
      def site_config
        Azure::Web::Mgmt::V2018_02_01::Models::SiteConfig
      end
      def validate_response
        Azure::Web::Mgmt::V2018_02_01::Models::ValidateResponse
      end
      def default_error_response_error_details_item
        Azure::Web::Mgmt::V2018_02_01::Models::DefaultErrorResponseErrorDetailsItem
      end
      def sku_info
        Azure::Web::Mgmt::V2018_02_01::Models::SkuInfo
      end
      def service_specification
        Azure::Web::Mgmt::V2018_02_01::Models::ServiceSpecification
      end
      def metric_availabilily
        Azure::Web::Mgmt::V2018_02_01::Models::MetricAvailabilily
      end
      def domain_purchase_consent
        Azure::Web::Mgmt::V2018_02_01::Models::DomainPurchaseConsent
      end
      def hosting_environment_diagnostics
        Azure::Web::Mgmt::V2018_02_01::Models::HostingEnvironmentDiagnostics
      end
      def domain_recommendation_search_parameters
        Azure::Web::Mgmt::V2018_02_01::Models::DomainRecommendationSearchParameters
      end
      def file_system_application_logs_config
        Azure::Web::Mgmt::V2018_02_01::Models::FileSystemApplicationLogsConfig
      end
      def certificate_collection
        Azure::Web::Mgmt::V2018_02_01::Models::CertificateCollection
      end
      def azure_table_storage_application_logs_config
        Azure::Web::Mgmt::V2018_02_01::Models::AzureTableStorageApplicationLogsConfig
      end
      def site_config_resource_collection
        Azure::Web::Mgmt::V2018_02_01::Models::SiteConfigResourceCollection
      end
      def azure_blob_storage_application_logs_config
        Azure::Web::Mgmt::V2018_02_01::Models::AzureBlobStorageApplicationLogsConfig
      end
      def requests_based_trigger
        Azure::Web::Mgmt::V2018_02_01::Models::RequestsBasedTrigger
      end
      def application_logs_config
        Azure::Web::Mgmt::V2018_02_01::Models::ApplicationLogsConfig
      end
      def sku_capacity
        Azure::Web::Mgmt::V2018_02_01::Models::SkuCapacity
      end
      def azure_blob_storage_http_logs_config
        Azure::Web::Mgmt::V2018_02_01::Models::AzureBlobStorageHttpLogsConfig
      end
      def csm_operation_collection
        Azure::Web::Mgmt::V2018_02_01::Models::CsmOperationCollection
      end
      def database_backup_setting
        Azure::Web::Mgmt::V2018_02_01::Models::DatabaseBackupSetting
      end
      def file_system_http_logs_config
        Azure::Web::Mgmt::V2018_02_01::Models::FileSystemHttpLogsConfig
      end
      def app_service_environment_collection
        Azure::Web::Mgmt::V2018_02_01::Models::AppServiceEnvironmentCollection
      end
      def hosting_environment_profile
        Azure::Web::Mgmt::V2018_02_01::Models::HostingEnvironmentProfile
      end
      def backup_item_collection
        Azure::Web::Mgmt::V2018_02_01::Models::BackupItemCollection
      end
      def log_specification
        Azure::Web::Mgmt::V2018_02_01::Models::LogSpecification
      end
      def backup_schedule
        Azure::Web::Mgmt::V2018_02_01::Models::BackupSchedule
      end
      def site_seal_request
        Azure::Web::Mgmt::V2018_02_01::Models::SiteSealRequest
      end
      def address_response
        Azure::Web::Mgmt::V2018_02_01::Models::AddressResponse
      end
      def domain_control_center_sso_request
        Azure::Web::Mgmt::V2018_02_01::Models::DomainControlCenterSsoRequest
      end
      def conn_string_value_type_pair
        Azure::Web::Mgmt::V2018_02_01::Models::ConnStringValueTypePair
      end
    end
  end
end
