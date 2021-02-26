# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_web'

module Azure::Web::Profiles::Latest
  module Mgmt
    AppServiceCertificateOrders = Azure::Web::Mgmt::V2020_09_01::AppServiceCertificateOrders
    CertificateRegistrationProvider = Azure::Web::Mgmt::V2020_09_01::CertificateRegistrationProvider
    Domains = Azure::Web::Mgmt::V2020_09_01::Domains
    TopLevelDomains = Azure::Web::Mgmt::V2020_09_01::TopLevelDomains
    DomainRegistrationProvider = Azure::Web::Mgmt::V2020_09_01::DomainRegistrationProvider
    Certificates = Azure::Web::Mgmt::V2020_09_01::Certificates
    DeletedWebApps = Azure::Web::Mgmt::V2020_09_01::DeletedWebApps
    Diagnostics = Azure::Web::Mgmt::V2020_09_01::Diagnostics
    Provider = Azure::Web::Mgmt::V2020_09_01::Provider
    Recommendations = Azure::Web::Mgmt::V2020_09_01::Recommendations
    WebApps = Azure::Web::Mgmt::V2020_09_01::WebApps
    StaticSites = Azure::Web::Mgmt::V2020_09_01::StaticSites
    AppServiceEnvironments = Azure::Web::Mgmt::V2020_09_01::AppServiceEnvironments
    AppServicePlans = Azure::Web::Mgmt::V2020_09_01::AppServicePlans
    ResourceHealthMetadataOperations = Azure::Web::Mgmt::V2020_09_01::ResourceHealthMetadataOperations

    module Models
      ResponseMetaData = Azure::Web::Mgmt::V2020_09_01::Models::ResponseMetaData
      AnalysisData = Azure::Web::Mgmt::V2020_09_01::Models::AnalysisData
      CsmUsageQuotaCollection = Azure::Web::Mgmt::V2020_09_01::Models::CsmUsageQuotaCollection
      AppServiceCertificateCollection = Azure::Web::Mgmt::V2020_09_01::Models::AppServiceCertificateCollection
      ErrorEntity = Azure::Web::Mgmt::V2020_09_01::Models::ErrorEntity
      KeyInfo = Azure::Web::Mgmt::V2020_09_01::Models::KeyInfo
      IdentifierCollection = Azure::Web::Mgmt::V2020_09_01::Models::IdentifierCollection
      SiteExtensionInfoCollection = Azure::Web::Mgmt::V2020_09_01::Models::SiteExtensionInfoCollection
      Operation = Azure::Web::Mgmt::V2020_09_01::Models::Operation
      SnapshotCollection = Azure::Web::Mgmt::V2020_09_01::Models::SnapshotCollection
      WebAppCollection = Azure::Web::Mgmt::V2020_09_01::Models::WebAppCollection
      TriggeredJobHistoryCollection = Azure::Web::Mgmt::V2020_09_01::Models::TriggeredJobHistoryCollection
      DeletedWebAppCollection = Azure::Web::Mgmt::V2020_09_01::Models::DeletedWebAppCollection
      SiteSeal = Azure::Web::Mgmt::V2020_09_01::Models::SiteSeal
      Solution = Azure::Web::Mgmt::V2020_09_01::Models::Solution
      SystemData = Azure::Web::Mgmt::V2020_09_01::Models::SystemData
      DetectorAbnormalTimePeriod = Azure::Web::Mgmt::V2020_09_01::Models::DetectorAbnormalTimePeriod
      TriggeredWebJobCollection = Azure::Web::Mgmt::V2020_09_01::Models::TriggeredWebJobCollection
      AbnormalTimePeriod = Azure::Web::Mgmt::V2020_09_01::Models::AbnormalTimePeriod
      WebAppInstanceStatusCollection = Azure::Web::Mgmt::V2020_09_01::Models::WebAppInstanceStatusCollection
      EndpointDependency = Azure::Web::Mgmt::V2020_09_01::Models::EndpointDependency
      StaticSiteBuildProperties = Azure::Web::Mgmt::V2020_09_01::Models::StaticSiteBuildProperties
      DiagnosticMetricSample = Azure::Web::Mgmt::V2020_09_01::Models::DiagnosticMetricSample
      FunctionEnvelopeCollection = Azure::Web::Mgmt::V2020_09_01::Models::FunctionEnvelopeCollection
      DiagnosticMetricSet = Azure::Web::Mgmt::V2020_09_01::Models::DiagnosticMetricSet
      StaticSiteCollection = Azure::Web::Mgmt::V2020_09_01::Models::StaticSiteCollection
      DataSource = Azure::Web::Mgmt::V2020_09_01::Models::DataSource
      ManagedServiceIdentityUserAssignedIdentitiesValue = Azure::Web::Mgmt::V2020_09_01::Models::ManagedServiceIdentityUserAssignedIdentitiesValue
      AppServiceCertificate = Azure::Web::Mgmt::V2020_09_01::Models::AppServiceCertificate
      SlotSwapStatus = Azure::Web::Mgmt::V2020_09_01::Models::SlotSwapStatus
      HostingEnvironmentDiagnostics = Azure::Web::Mgmt::V2020_09_01::Models::HostingEnvironmentDiagnostics
      HostingEnvironmentProfile = Azure::Web::Mgmt::V2020_09_01::Models::HostingEnvironmentProfile
      InboundEnvironmentEndpoint = Azure::Web::Mgmt::V2020_09_01::Models::InboundEnvironmentEndpoint
      ApiManagementConfig = Azure::Web::Mgmt::V2020_09_01::Models::ApiManagementConfig
      DataTableResponseColumn = Azure::Web::Mgmt::V2020_09_01::Models::DataTableResponseColumn
      CorsSettings = Azure::Web::Mgmt::V2020_09_01::Models::CorsSettings
      DataTableResponseObject = Azure::Web::Mgmt::V2020_09_01::Models::DataTableResponseObject
      AutoHealActions = Azure::Web::Mgmt::V2020_09_01::Models::AutoHealActions
      DetectorInfo = Azure::Web::Mgmt::V2020_09_01::Models::DetectorInfo
      StatusCodesBasedTrigger = Azure::Web::Mgmt::V2020_09_01::Models::StatusCodesBasedTrigger
      Rendering = Azure::Web::Mgmt::V2020_09_01::Models::Rendering
      AutoHealTriggers = Azure::Web::Mgmt::V2020_09_01::Models::AutoHealTriggers
      DiagnosticData = Azure::Web::Mgmt::V2020_09_01::Models::DiagnosticData
      SiteLimits = Azure::Web::Mgmt::V2020_09_01::Models::SiteLimits
      InboundEnvironmentEndpointCollection = Azure::Web::Mgmt::V2020_09_01::Models::InboundEnvironmentEndpointCollection
      Experiments = Azure::Web::Mgmt::V2020_09_01::Models::Experiments
      DetectorResponseCollection = Azure::Web::Mgmt::V2020_09_01::Models::DetectorResponseCollection
      VirtualApplication = Azure::Web::Mgmt::V2020_09_01::Models::VirtualApplication
      PrivateAccessSubnet = Azure::Web::Mgmt::V2020_09_01::Models::PrivateAccessSubnet
      SiteMachineKey = Azure::Web::Mgmt::V2020_09_01::Models::SiteMachineKey
      DiagnosticAnalysisCollection = Azure::Web::Mgmt::V2020_09_01::Models::DiagnosticAnalysisCollection
      NameValuePair = Azure::Web::Mgmt::V2020_09_01::Models::NameValuePair
      PrivateAccessVirtualNetwork = Azure::Web::Mgmt::V2020_09_01::Models::PrivateAccessVirtualNetwork
      HostNameSslState = Azure::Web::Mgmt::V2020_09_01::Models::HostNameSslState
      DiagnosticCategoryCollection = Azure::Web::Mgmt::V2020_09_01::Models::DiagnosticCategoryCollection
      Capability = Azure::Web::Mgmt::V2020_09_01::Models::Capability
      DiagnosticDetectorCollection = Azure::Web::Mgmt::V2020_09_01::Models::DiagnosticDetectorCollection
      SkuDescription = Azure::Web::Mgmt::V2020_09_01::Models::SkuDescription
      PrivateLinkConnectionState = Azure::Web::Mgmt::V2020_09_01::Models::PrivateLinkConnectionState
      Resource = Azure::Web::Mgmt::V2020_09_01::Models::Resource
      StackMinorVersion = Azure::Web::Mgmt::V2020_09_01::Models::StackMinorVersion
      DefaultErrorResponseError = Azure::Web::Mgmt::V2020_09_01::Models::DefaultErrorResponseError
      StackMajorVersion = Azure::Web::Mgmt::V2020_09_01::Models::StackMajorVersion
      NameIdentifier = Azure::Web::Mgmt::V2020_09_01::Models::NameIdentifier
      ApplicationStack = Azure::Web::Mgmt::V2020_09_01::Models::ApplicationStack
      MetricAvailability = Azure::Web::Mgmt::V2020_09_01::Models::MetricAvailability
      PerfMonCounterCollection = Azure::Web::Mgmt::V2020_09_01::Models::PerfMonCounterCollection
      MetricSpecification = Azure::Web::Mgmt::V2020_09_01::Models::MetricSpecification
      ApplicationStackCollection = Azure::Web::Mgmt::V2020_09_01::Models::ApplicationStackCollection
      CsmOperationDescriptionProperties = Azure::Web::Mgmt::V2020_09_01::Models::CsmOperationDescriptionProperties
      PerfMonResponse = Azure::Web::Mgmt::V2020_09_01::Models::PerfMonResponse
      CsmOperationDescription = Azure::Web::Mgmt::V2020_09_01::Models::CsmOperationDescription
      RecommendationCollection = Azure::Web::Mgmt::V2020_09_01::Models::RecommendationCollection
      Address = Azure::Web::Mgmt::V2020_09_01::Models::Address
      PerfMonSet = Azure::Web::Mgmt::V2020_09_01::Models::PerfMonSet
      HostName = Azure::Web::Mgmt::V2020_09_01::Models::HostName
      AppserviceGithubToken = Azure::Web::Mgmt::V2020_09_01::Models::AppserviceGithubToken
      StaticSiteFunctionOverviewCollection = Azure::Web::Mgmt::V2020_09_01::Models::StaticSiteFunctionOverviewCollection
      AppserviceGithubTokenRequest = Azure::Web::Mgmt::V2020_09_01::Models::AppserviceGithubTokenRequest
      DomainCollection = Azure::Web::Mgmt::V2020_09_01::Models::DomainCollection
      PerfMonSample = Azure::Web::Mgmt::V2020_09_01::Models::PerfMonSample
      StaticSiteUserCollection = Azure::Web::Mgmt::V2020_09_01::Models::StaticSiteUserCollection
      BillingMeterCollection = Azure::Web::Mgmt::V2020_09_01::Models::BillingMeterCollection
      EnabledConfig = Azure::Web::Mgmt::V2020_09_01::Models::EnabledConfig
      CsmMoveResourceEnvelope = Azure::Web::Mgmt::V2020_09_01::Models::CsmMoveResourceEnvelope
      NameIdentifierCollection = Azure::Web::Mgmt::V2020_09_01::Models::NameIdentifierCollection
      NetworkTrace = Azure::Web::Mgmt::V2020_09_01::Models::NetworkTrace
      TldLegalAgreementCollection = Azure::Web::Mgmt::V2020_09_01::Models::TldLegalAgreementCollection
      HostingEnvironmentDeploymentInfo = Azure::Web::Mgmt::V2020_09_01::Models::HostingEnvironmentDeploymentInfo
      TopLevelDomainAgreementOption = Azure::Web::Mgmt::V2020_09_01::Models::TopLevelDomainAgreementOption
      DeploymentLocations = Azure::Web::Mgmt::V2020_09_01::Models::DeploymentLocations
      AppServiceEnvironmentCollection = Azure::Web::Mgmt::V2020_09_01::Models::AppServiceEnvironmentCollection
      GeoRegionCollection = Azure::Web::Mgmt::V2020_09_01::Models::GeoRegionCollection
      EndpointDetail = Azure::Web::Mgmt::V2020_09_01::Models::EndpointDetail
      GlobalCsmSkuDescription = Azure::Web::Mgmt::V2020_09_01::Models::GlobalCsmSkuDescription
      WorkerPool = Azure::Web::Mgmt::V2020_09_01::Models::WorkerPool
      PrivateLinkResourceProperties = Azure::Web::Mgmt::V2020_09_01::Models::PrivateLinkResourceProperties
      StampCapacity = Azure::Web::Mgmt::V2020_09_01::Models::StampCapacity
      PremierAddOnOfferCollection = Azure::Web::Mgmt::V2020_09_01::Models::PremierAddOnOfferCollection
      AppServiceEnvironment = Azure::Web::Mgmt::V2020_09_01::Models::AppServiceEnvironment
      ResourceNameAvailability = Azure::Web::Mgmt::V2020_09_01::Models::ResourceNameAvailability
      LocalizableString = Azure::Web::Mgmt::V2020_09_01::Models::LocalizableString
      ResourceNameAvailabilityRequest = Azure::Web::Mgmt::V2020_09_01::Models::ResourceNameAvailabilityRequest
      CertificateDetails = Azure::Web::Mgmt::V2020_09_01::Models::CertificateDetails
      SkuInfos = Azure::Web::Mgmt::V2020_09_01::Models::SkuInfos
      SlotDifferenceCollection = Azure::Web::Mgmt::V2020_09_01::Models::SlotDifferenceCollection
      PrivateLinkResource = Azure::Web::Mgmt::V2020_09_01::Models::PrivateLinkResource
      HttpLogsConfig = Azure::Web::Mgmt::V2020_09_01::Models::HttpLogsConfig
      SourceControlCollection = Azure::Web::Mgmt::V2020_09_01::Models::SourceControlCollection
      HostNameBindingCollection = Azure::Web::Mgmt::V2020_09_01::Models::HostNameBindingCollection
      ValidateRequest = Azure::Web::Mgmt::V2020_09_01::Models::ValidateRequest
      WebJobCollection = Azure::Web::Mgmt::V2020_09_01::Models::WebJobCollection
      ValidateResponseError = Azure::Web::Mgmt::V2020_09_01::Models::ValidateResponseError
      StaticSiteBuildCollection = Azure::Web::Mgmt::V2020_09_01::Models::StaticSiteBuildCollection
      ValidateResponse = Azure::Web::Mgmt::V2020_09_01::Models::ValidateResponse
      ManagedServiceIdentity = Azure::Web::Mgmt::V2020_09_01::Models::ManagedServiceIdentity
      PrivateLinkResourcesWrapper = Azure::Web::Mgmt::V2020_09_01::Models::PrivateLinkResourcesWrapper
      IpSecurityRestriction = Azure::Web::Mgmt::V2020_09_01::Models::IpSecurityRestriction
      ProcessInfoCollection = Azure::Web::Mgmt::V2020_09_01::Models::ProcessInfoCollection
      AutoHealCustomAction = Azure::Web::Mgmt::V2020_09_01::Models::AutoHealCustomAction
      ProcessModuleInfoCollection = Azure::Web::Mgmt::V2020_09_01::Models::ProcessModuleInfoCollection
      RequestsBasedTrigger = Azure::Web::Mgmt::V2020_09_01::Models::RequestsBasedTrigger
      ProcessThreadInfoCollection = Azure::Web::Mgmt::V2020_09_01::Models::ProcessThreadInfoCollection
      RampUpRule = Azure::Web::Mgmt::V2020_09_01::Models::RampUpRule
      MSDeployLogEntry = Azure::Web::Mgmt::V2020_09_01::Models::MSDeployLogEntry
      HandlerMapping = Azure::Web::Mgmt::V2020_09_01::Models::HandlerMapping
      FileSystemApplicationLogsConfig = Azure::Web::Mgmt::V2020_09_01::Models::FileSystemApplicationLogsConfig
      SiteConfig = Azure::Web::Mgmt::V2020_09_01::Models::SiteConfig
      AzureTableStorageApplicationLogsConfig = Azure::Web::Mgmt::V2020_09_01::Models::AzureTableStorageApplicationLogsConfig
      SkuCapacity = Azure::Web::Mgmt::V2020_09_01::Models::SkuCapacity
      AzureBlobStorageApplicationLogsConfig = Azure::Web::Mgmt::V2020_09_01::Models::AzureBlobStorageApplicationLogsConfig
      DefaultErrorResponseErrorDetailsItem = Azure::Web::Mgmt::V2020_09_01::Models::DefaultErrorResponseErrorDetailsItem
      ApplicationLogsConfig = Azure::Web::Mgmt::V2020_09_01::Models::ApplicationLogsConfig
      LogSpecification = Azure::Web::Mgmt::V2020_09_01::Models::LogSpecification
      PublicCertificateCollection = Azure::Web::Mgmt::V2020_09_01::Models::PublicCertificateCollection
      ServiceSpecification = Azure::Web::Mgmt::V2020_09_01::Models::ServiceSpecification
      SiteCloneabilityCriterion = Azure::Web::Mgmt::V2020_09_01::Models::SiteCloneabilityCriterion
      CsmOperationCollection = Azure::Web::Mgmt::V2020_09_01::Models::CsmOperationCollection
      SiteCloneability = Azure::Web::Mgmt::V2020_09_01::Models::SiteCloneability
      DomainPurchaseConsent = Azure::Web::Mgmt::V2020_09_01::Models::DomainPurchaseConsent
      SiteConfigResourceCollection = Azure::Web::Mgmt::V2020_09_01::Models::SiteConfigResourceCollection
      DomainControlCenterSsoRequest = Azure::Web::Mgmt::V2020_09_01::Models::DomainControlCenterSsoRequest
      SiteConfigurationSnapshotInfoCollection = Azure::Web::Mgmt::V2020_09_01::Models::SiteConfigurationSnapshotInfoCollection
      DomainRecommendationSearchParameters = Azure::Web::Mgmt::V2020_09_01::Models::DomainRecommendationSearchParameters
      DeploymentCollection = Azure::Web::Mgmt::V2020_09_01::Models::DeploymentCollection
      ArmIdWrapper = Azure::Web::Mgmt::V2020_09_01::Models::ArmIdWrapper
      CertificateCollection = Azure::Web::Mgmt::V2020_09_01::Models::CertificateCollection
      AzureBlobStorageHttpLogsConfig = Azure::Web::Mgmt::V2020_09_01::Models::AzureBlobStorageHttpLogsConfig
      VirtualIPMapping = Azure::Web::Mgmt::V2020_09_01::Models::VirtualIPMapping
      AzureStorageInfoValue = Azure::Web::Mgmt::V2020_09_01::Models::AzureStorageInfoValue
      AppServicePlanCollection = Azure::Web::Mgmt::V2020_09_01::Models::AppServicePlanCollection
      ResourceHealthMetadataCollection = Azure::Web::Mgmt::V2020_09_01::Models::ResourceHealthMetadataCollection
      AppServiceCertificateOrderCollection = Azure::Web::Mgmt::V2020_09_01::Models::AppServiceCertificateOrderCollection
      DatabaseBackupSetting = Azure::Web::Mgmt::V2020_09_01::Models::DatabaseBackupSetting
      SiteSealRequest = Azure::Web::Mgmt::V2020_09_01::Models::SiteSealRequest
      ResourceCollection = Azure::Web::Mgmt::V2020_09_01::Models::ResourceCollection
      FunctionSecrets = Azure::Web::Mgmt::V2020_09_01::Models::FunctionSecrets
      BackupItemCollection = Azure::Web::Mgmt::V2020_09_01::Models::BackupItemCollection
      CloningInfo = Azure::Web::Mgmt::V2020_09_01::Models::CloningInfo
      BackupSchedule = Azure::Web::Mgmt::V2020_09_01::Models::BackupSchedule
      SlowRequestsBasedTrigger = Azure::Web::Mgmt::V2020_09_01::Models::SlowRequestsBasedTrigger
      HybridConnectionCollection = Azure::Web::Mgmt::V2020_09_01::Models::HybridConnectionCollection
      VirtualDirectory = Azure::Web::Mgmt::V2020_09_01::Models::VirtualDirectory
      WorkerPoolCollection = Azure::Web::Mgmt::V2020_09_01::Models::WorkerPoolCollection
      StaticSiteCustomDomainOverviewCollection = Azure::Web::Mgmt::V2020_09_01::Models::StaticSiteCustomDomainOverviewCollection
      UsageCollection = Azure::Web::Mgmt::V2020_09_01::Models::UsageCollection
      DefaultErrorResponse = Azure::Web::Mgmt::V2020_09_01::Models::DefaultErrorResponse
      ConnStringValueTypePair = Azure::Web::Mgmt::V2020_09_01::Models::ConnStringValueTypePair
      CsmOperationDisplay = Azure::Web::Mgmt::V2020_09_01::Models::CsmOperationDisplay
      StampCapacityCollection = Azure::Web::Mgmt::V2020_09_01::Models::StampCapacityCollection
      DomainAvailabilityCheckResult = Azure::Web::Mgmt::V2020_09_01::Models::DomainAvailabilityCheckResult
      ContainerCpuUsage = Azure::Web::Mgmt::V2020_09_01::Models::ContainerCpuUsage
      TldLegalAgreement = Azure::Web::Mgmt::V2020_09_01::Models::TldLegalAgreement
      ContainerThrottlingData = Azure::Web::Mgmt::V2020_09_01::Models::ContainerThrottlingData
      VirtualNetworkProfile = Azure::Web::Mgmt::V2020_09_01::Models::VirtualNetworkProfile
      ContainerCpuStatistics = Azure::Web::Mgmt::V2020_09_01::Models::ContainerCpuStatistics
      CsmUsageQuota = Azure::Web::Mgmt::V2020_09_01::Models::CsmUsageQuota
      ContainerMemoryStatistics = Azure::Web::Mgmt::V2020_09_01::Models::ContainerMemoryStatistics
      HostKeys = Azure::Web::Mgmt::V2020_09_01::Models::HostKeys
      ContainerNetworkInterfaceStatistics = Azure::Web::Mgmt::V2020_09_01::Models::ContainerNetworkInterfaceStatistics
      ApiDefinitionInfo = Azure::Web::Mgmt::V2020_09_01::Models::ApiDefinitionInfo
      ContainerInfo = Azure::Web::Mgmt::V2020_09_01::Models::ContainerInfo
      ConnStringInfo = Azure::Web::Mgmt::V2020_09_01::Models::ConnStringInfo
      SkuInfoCollection = Azure::Web::Mgmt::V2020_09_01::Models::SkuInfoCollection
      Dimension = Azure::Web::Mgmt::V2020_09_01::Models::Dimension
      ContinuousWebJobCollection = Azure::Web::Mgmt::V2020_09_01::Models::ContinuousWebJobCollection
      DomainOwnershipIdentifierCollection = Azure::Web::Mgmt::V2020_09_01::Models::DomainOwnershipIdentifierCollection
      SkuInfo = Azure::Web::Mgmt::V2020_09_01::Models::SkuInfo
      NetworkAccessControlEntry = Azure::Web::Mgmt::V2020_09_01::Models::NetworkAccessControlEntry
      CsmCopySlotEntity = Azure::Web::Mgmt::V2020_09_01::Models::CsmCopySlotEntity
      ProxyOnlyResource = Azure::Web::Mgmt::V2020_09_01::Models::ProxyOnlyResource
      ResourceMetricDefinitionCollection = Azure::Web::Mgmt::V2020_09_01::Models::ResourceMetricDefinitionCollection
      FileSystemHttpLogsConfig = Azure::Web::Mgmt::V2020_09_01::Models::FileSystemHttpLogsConfig
      ResourceMetricAvailability = Azure::Web::Mgmt::V2020_09_01::Models::ResourceMetricAvailability
      TopLevelDomainCollection = Azure::Web::Mgmt::V2020_09_01::Models::TopLevelDomainCollection
      CsmPublishingProfileOptions = Azure::Web::Mgmt::V2020_09_01::Models::CsmPublishingProfileOptions
      AutoHealRules = Azure::Web::Mgmt::V2020_09_01::Models::AutoHealRules
      CsmSlotEntity = Azure::Web::Mgmt::V2020_09_01::Models::CsmSlotEntity
      SnapshotRecoverySource = Azure::Web::Mgmt::V2020_09_01::Models::SnapshotRecoverySource
      OutboundEnvironmentEndpointCollection = Azure::Web::Mgmt::V2020_09_01::Models::OutboundEnvironmentEndpointCollection
      Contact = Azure::Web::Mgmt::V2020_09_01::Models::Contact
      OutboundEnvironmentEndpoint = Azure::Web::Mgmt::V2020_09_01::Models::OutboundEnvironmentEndpoint
      AppServiceCertificateResource = Azure::Web::Mgmt::V2020_09_01::Models::AppServiceCertificateResource
      AppServiceCertificateOrder = Azure::Web::Mgmt::V2020_09_01::Models::AppServiceCertificateOrder
      AppServiceCertificateOrderPatchResource = Azure::Web::Mgmt::V2020_09_01::Models::AppServiceCertificateOrderPatchResource
      AppServiceCertificatePatchResource = Azure::Web::Mgmt::V2020_09_01::Models::AppServiceCertificatePatchResource
      CertificateEmail = Azure::Web::Mgmt::V2020_09_01::Models::CertificateEmail
      CertificateOrderAction = Azure::Web::Mgmt::V2020_09_01::Models::CertificateOrderAction
      ReissueCertificateOrderRequest = Azure::Web::Mgmt::V2020_09_01::Models::ReissueCertificateOrderRequest
      RenewCertificateOrderRequest = Azure::Web::Mgmt::V2020_09_01::Models::RenewCertificateOrderRequest
      VnetRoute = Azure::Web::Mgmt::V2020_09_01::Models::VnetRoute
      VnetInfo = Azure::Web::Mgmt::V2020_09_01::Models::VnetInfo
      VnetGateway = Azure::Web::Mgmt::V2020_09_01::Models::VnetGateway
      User = Azure::Web::Mgmt::V2020_09_01::Models::User
      StringDictionary = Azure::Web::Mgmt::V2020_09_01::Models::StringDictionary
      Snapshot = Azure::Web::Mgmt::V2020_09_01::Models::Snapshot
      PushSettings = Azure::Web::Mgmt::V2020_09_01::Models::PushSettings
      Identifier = Azure::Web::Mgmt::V2020_09_01::Models::Identifier
      HybridConnection = Azure::Web::Mgmt::V2020_09_01::Models::HybridConnection
      DeletedSite = Azure::Web::Mgmt::V2020_09_01::Models::DeletedSite
      Site = Azure::Web::Mgmt::V2020_09_01::Models::Site
      AppServicePlan = Azure::Web::Mgmt::V2020_09_01::Models::AppServicePlan
      Domain = Azure::Web::Mgmt::V2020_09_01::Models::Domain
      DomainOwnershipIdentifier = Azure::Web::Mgmt::V2020_09_01::Models::DomainOwnershipIdentifier
      DomainPatchResource = Azure::Web::Mgmt::V2020_09_01::Models::DomainPatchResource
      TopLevelDomain = Azure::Web::Mgmt::V2020_09_01::Models::TopLevelDomain
      Certificate = Azure::Web::Mgmt::V2020_09_01::Models::Certificate
      CertificatePatchResource = Azure::Web::Mgmt::V2020_09_01::Models::CertificatePatchResource
      DetectorDefinition = Azure::Web::Mgmt::V2020_09_01::Models::DetectorDefinition
      AnalysisDefinition = Azure::Web::Mgmt::V2020_09_01::Models::AnalysisDefinition
      DetectorResponse = Azure::Web::Mgmt::V2020_09_01::Models::DetectorResponse
      DiagnosticAnalysis = Azure::Web::Mgmt::V2020_09_01::Models::DiagnosticAnalysis
      DiagnosticCategory = Azure::Web::Mgmt::V2020_09_01::Models::DiagnosticCategory
      DiagnosticDetectorResponse = Azure::Web::Mgmt::V2020_09_01::Models::DiagnosticDetectorResponse
      ApplicationStackResource = Azure::Web::Mgmt::V2020_09_01::Models::ApplicationStackResource
      Recommendation = Azure::Web::Mgmt::V2020_09_01::Models::Recommendation
      RecommendationRule = Azure::Web::Mgmt::V2020_09_01::Models::RecommendationRule
      BillingMeter = Azure::Web::Mgmt::V2020_09_01::Models::BillingMeter
      GeoRegion = Azure::Web::Mgmt::V2020_09_01::Models::GeoRegion
      PremierAddOnOffer = Azure::Web::Mgmt::V2020_09_01::Models::PremierAddOnOffer
      SourceControl = Azure::Web::Mgmt::V2020_09_01::Models::SourceControl
      VnetParameters = Azure::Web::Mgmt::V2020_09_01::Models::VnetParameters
      VnetValidationTestFailure = Azure::Web::Mgmt::V2020_09_01::Models::VnetValidationTestFailure
      VnetValidationFailureDetails = Azure::Web::Mgmt::V2020_09_01::Models::VnetValidationFailureDetails
      AllowedAudiencesValidation = Azure::Web::Mgmt::V2020_09_01::Models::AllowedAudiencesValidation
      AppRegistration = Azure::Web::Mgmt::V2020_09_01::Models::AppRegistration
      AuthPlatform = Azure::Web::Mgmt::V2020_09_01::Models::AuthPlatform
      AzureActiveDirectoryRegistration = Azure::Web::Mgmt::V2020_09_01::Models::AzureActiveDirectoryRegistration
      AzureActiveDirectoryLogin = Azure::Web::Mgmt::V2020_09_01::Models::AzureActiveDirectoryLogin
      JwtClaimChecks = Azure::Web::Mgmt::V2020_09_01::Models::JwtClaimChecks
      AzureActiveDirectoryValidation = Azure::Web::Mgmt::V2020_09_01::Models::AzureActiveDirectoryValidation
      AzureActiveDirectory = Azure::Web::Mgmt::V2020_09_01::Models::AzureActiveDirectory
      AzureStoragePropertyDictionaryResource = Azure::Web::Mgmt::V2020_09_01::Models::AzureStoragePropertyDictionaryResource
      BackupItem = Azure::Web::Mgmt::V2020_09_01::Models::BackupItem
      BackupRequest = Azure::Web::Mgmt::V2020_09_01::Models::BackupRequest
      BlobStorageTokenStore = Azure::Web::Mgmt::V2020_09_01::Models::BlobStorageTokenStore
      ClientRegistration = Azure::Web::Mgmt::V2020_09_01::Models::ClientRegistration
      ConnectionStringDictionary = Azure::Web::Mgmt::V2020_09_01::Models::ConnectionStringDictionary
      ContinuousWebJob = Azure::Web::Mgmt::V2020_09_01::Models::ContinuousWebJob
      CookieExpiration = Azure::Web::Mgmt::V2020_09_01::Models::CookieExpiration
      CsmPublishingCredentialsPoliciesEntity = Azure::Web::Mgmt::V2020_09_01::Models::CsmPublishingCredentialsPoliciesEntity
      CsmPublishingCredentialsPoliciesCollection = Azure::Web::Mgmt::V2020_09_01::Models::CsmPublishingCredentialsPoliciesCollection
      CustomHostnameAnalysisResult = Azure::Web::Mgmt::V2020_09_01::Models::CustomHostnameAnalysisResult
      OpenIdConnectClientCredential = Azure::Web::Mgmt::V2020_09_01::Models::OpenIdConnectClientCredential
      OpenIdConnectConfig = Azure::Web::Mgmt::V2020_09_01::Models::OpenIdConnectConfig
      OpenIdConnectRegistration = Azure::Web::Mgmt::V2020_09_01::Models::OpenIdConnectRegistration
      OpenIdConnectLogin = Azure::Web::Mgmt::V2020_09_01::Models::OpenIdConnectLogin
      CustomOpenIdConnectProvider = Azure::Web::Mgmt::V2020_09_01::Models::CustomOpenIdConnectProvider
      DeletedAppRestoreRequest = Azure::Web::Mgmt::V2020_09_01::Models::DeletedAppRestoreRequest
      Deployment = Azure::Web::Mgmt::V2020_09_01::Models::Deployment
      LoginScopes = Azure::Web::Mgmt::V2020_09_01::Models::LoginScopes
      Facebook = Azure::Web::Mgmt::V2020_09_01::Models::Facebook
      FileSystemTokenStore = Azure::Web::Mgmt::V2020_09_01::Models::FileSystemTokenStore
      ForwardProxy = Azure::Web::Mgmt::V2020_09_01::Models::ForwardProxy
      FunctionEnvelope = Azure::Web::Mgmt::V2020_09_01::Models::FunctionEnvelope
      GitHub = Azure::Web::Mgmt::V2020_09_01::Models::GitHub
      GlobalValidation = Azure::Web::Mgmt::V2020_09_01::Models::GlobalValidation
      Google = Azure::Web::Mgmt::V2020_09_01::Models::Google
      HostNameBinding = Azure::Web::Mgmt::V2020_09_01::Models::HostNameBinding
      HttpSettingsRoutes = Azure::Web::Mgmt::V2020_09_01::Models::HttpSettingsRoutes
      HttpSettings = Azure::Web::Mgmt::V2020_09_01::Models::HttpSettings
      TwitterRegistration = Azure::Web::Mgmt::V2020_09_01::Models::TwitterRegistration
      Twitter = Azure::Web::Mgmt::V2020_09_01::Models::Twitter
      IdentityProviders = Azure::Web::Mgmt::V2020_09_01::Models::IdentityProviders
      LoginRoutes = Azure::Web::Mgmt::V2020_09_01::Models::LoginRoutes
      TokenStore = Azure::Web::Mgmt::V2020_09_01::Models::TokenStore
      Nonce = Azure::Web::Mgmt::V2020_09_01::Models::Nonce
      Login = Azure::Web::Mgmt::V2020_09_01::Models::Login
      MSDeploy = Azure::Web::Mgmt::V2020_09_01::Models::MSDeploy
      MSDeployLog = Azure::Web::Mgmt::V2020_09_01::Models::MSDeployLog
      MSDeployStatus = Azure::Web::Mgmt::V2020_09_01::Models::MSDeployStatus
      MigrateMySqlRequest = Azure::Web::Mgmt::V2020_09_01::Models::MigrateMySqlRequest
      MigrateMySqlStatus = Azure::Web::Mgmt::V2020_09_01::Models::MigrateMySqlStatus
      RelayServiceConnectionEntity = Azure::Web::Mgmt::V2020_09_01::Models::RelayServiceConnectionEntity
      NetworkFeatures = Azure::Web::Mgmt::V2020_09_01::Models::NetworkFeatures
      PremierAddOn = Azure::Web::Mgmt::V2020_09_01::Models::PremierAddOn
      PremierAddOnPatchResource = Azure::Web::Mgmt::V2020_09_01::Models::PremierAddOnPatchResource
      PrivateAccess = Azure::Web::Mgmt::V2020_09_01::Models::PrivateAccess
      PrivateEndpointConnectionResource = Azure::Web::Mgmt::V2020_09_01::Models::PrivateEndpointConnectionResource
      PrivateLinkConnectionApprovalRequestResource = Azure::Web::Mgmt::V2020_09_01::Models::PrivateLinkConnectionApprovalRequestResource
      ProcessThreadInfo = Azure::Web::Mgmt::V2020_09_01::Models::ProcessThreadInfo
      ProcessModuleInfo = Azure::Web::Mgmt::V2020_09_01::Models::ProcessModuleInfo
      ProcessInfo = Azure::Web::Mgmt::V2020_09_01::Models::ProcessInfo
      PublicCertificate = Azure::Web::Mgmt::V2020_09_01::Models::PublicCertificate
      RestoreRequest = Azure::Web::Mgmt::V2020_09_01::Models::RestoreRequest
      SiteAuthSettings = Azure::Web::Mgmt::V2020_09_01::Models::SiteAuthSettings
      SiteAuthSettingsV2 = Azure::Web::Mgmt::V2020_09_01::Models::SiteAuthSettingsV2
      SiteConfigResource = Azure::Web::Mgmt::V2020_09_01::Models::SiteConfigResource
      SiteConfigurationSnapshotInfo = Azure::Web::Mgmt::V2020_09_01::Models::SiteConfigurationSnapshotInfo
      SiteExtensionInfo = Azure::Web::Mgmt::V2020_09_01::Models::SiteExtensionInfo
      SiteLogsConfig = Azure::Web::Mgmt::V2020_09_01::Models::SiteLogsConfig
      SitePatchResource = Azure::Web::Mgmt::V2020_09_01::Models::SitePatchResource
      SitePhpErrorLogFlag = Azure::Web::Mgmt::V2020_09_01::Models::SitePhpErrorLogFlag
      SiteSourceControl = Azure::Web::Mgmt::V2020_09_01::Models::SiteSourceControl
      SlotConfigNamesResource = Azure::Web::Mgmt::V2020_09_01::Models::SlotConfigNamesResource
      SlotDifference = Azure::Web::Mgmt::V2020_09_01::Models::SlotDifference
      SnapshotRestoreRequest = Azure::Web::Mgmt::V2020_09_01::Models::SnapshotRestoreRequest
      StorageMigrationOptions = Azure::Web::Mgmt::V2020_09_01::Models::StorageMigrationOptions
      StorageMigrationResponse = Azure::Web::Mgmt::V2020_09_01::Models::StorageMigrationResponse
      SwiftVirtualNetwork = Azure::Web::Mgmt::V2020_09_01::Models::SwiftVirtualNetwork
      TriggeredJobRun = Azure::Web::Mgmt::V2020_09_01::Models::TriggeredJobRun
      TriggeredJobHistory = Azure::Web::Mgmt::V2020_09_01::Models::TriggeredJobHistory
      TriggeredWebJob = Azure::Web::Mgmt::V2020_09_01::Models::TriggeredWebJob
      WebSiteInstanceStatus = Azure::Web::Mgmt::V2020_09_01::Models::WebSiteInstanceStatus
      WebJob = Azure::Web::Mgmt::V2020_09_01::Models::WebJob
      StaticSiteARMResource = Azure::Web::Mgmt::V2020_09_01::Models::StaticSiteARMResource
      StaticSiteBuildARMResource = Azure::Web::Mgmt::V2020_09_01::Models::StaticSiteBuildARMResource
      StaticSiteCustomDomainOverviewARMResource = Azure::Web::Mgmt::V2020_09_01::Models::StaticSiteCustomDomainOverviewARMResource
      StaticSiteFunctionOverviewARMResource = Azure::Web::Mgmt::V2020_09_01::Models::StaticSiteFunctionOverviewARMResource
      StaticSitePatchResource = Azure::Web::Mgmt::V2020_09_01::Models::StaticSitePatchResource
      StaticSiteResetPropertiesARMResource = Azure::Web::Mgmt::V2020_09_01::Models::StaticSiteResetPropertiesARMResource
      StaticSiteUserARMResource = Azure::Web::Mgmt::V2020_09_01::Models::StaticSiteUserARMResource
      StaticSiteUserInvitationRequestResource = Azure::Web::Mgmt::V2020_09_01::Models::StaticSiteUserInvitationRequestResource
      StaticSiteUserInvitationResponseResource = Azure::Web::Mgmt::V2020_09_01::Models::StaticSiteUserInvitationResponseResource
      StaticSitesWorkflowPreview = Azure::Web::Mgmt::V2020_09_01::Models::StaticSitesWorkflowPreview
      StaticSitesWorkflowPreviewRequest = Azure::Web::Mgmt::V2020_09_01::Models::StaticSitesWorkflowPreviewRequest
      AddressResponse = Azure::Web::Mgmt::V2020_09_01::Models::AddressResponse
      AppServiceEnvironmentResource = Azure::Web::Mgmt::V2020_09_01::Models::AppServiceEnvironmentResource
      AppServiceEnvironmentPatchResource = Azure::Web::Mgmt::V2020_09_01::Models::AppServiceEnvironmentPatchResource
      ResourceMetricDefinition = Azure::Web::Mgmt::V2020_09_01::Models::ResourceMetricDefinition
      Usage = Azure::Web::Mgmt::V2020_09_01::Models::Usage
      WorkerPoolResource = Azure::Web::Mgmt::V2020_09_01::Models::WorkerPoolResource
      AppServicePlanPatchResource = Azure::Web::Mgmt::V2020_09_01::Models::AppServicePlanPatchResource
      HybridConnectionKey = Azure::Web::Mgmt::V2020_09_01::Models::HybridConnectionKey
      HybridConnectionLimits = Azure::Web::Mgmt::V2020_09_01::Models::HybridConnectionLimits
      ResourceHealthMetadata = Azure::Web::Mgmt::V2020_09_01::Models::ResourceHealthMetadata
      KeyVaultSecretStatus = Azure::Web::Mgmt::V2020_09_01::Models::KeyVaultSecretStatus
      CertificateProductType = Azure::Web::Mgmt::V2020_09_01::Models::CertificateProductType
      ProvisioningState = Azure::Web::Mgmt::V2020_09_01::Models::ProvisioningState
      CertificateOrderStatus = Azure::Web::Mgmt::V2020_09_01::Models::CertificateOrderStatus
      CertificateOrderActionType = Azure::Web::Mgmt::V2020_09_01::Models::CertificateOrderActionType
      CreatedByType = Azure::Web::Mgmt::V2020_09_01::Models::CreatedByType
      RouteType = Azure::Web::Mgmt::V2020_09_01::Models::RouteType
      ManagedServiceIdentityType = Azure::Web::Mgmt::V2020_09_01::Models::ManagedServiceIdentityType
      IpFilterTag = Azure::Web::Mgmt::V2020_09_01::Models::IpFilterTag
      AutoHealActionType = Azure::Web::Mgmt::V2020_09_01::Models::AutoHealActionType
      ConnectionStringType = Azure::Web::Mgmt::V2020_09_01::Models::ConnectionStringType
      ScmType = Azure::Web::Mgmt::V2020_09_01::Models::ScmType
      ManagedPipelineMode = Azure::Web::Mgmt::V2020_09_01::Models::ManagedPipelineMode
      SiteLoadBalancing = Azure::Web::Mgmt::V2020_09_01::Models::SiteLoadBalancing
      SupportedTlsVersions = Azure::Web::Mgmt::V2020_09_01::Models::SupportedTlsVersions
      FtpsState = Azure::Web::Mgmt::V2020_09_01::Models::FtpsState
      SslState = Azure::Web::Mgmt::V2020_09_01::Models::SslState
      HostType = Azure::Web::Mgmt::V2020_09_01::Models::HostType
      UsageState = Azure::Web::Mgmt::V2020_09_01::Models::UsageState
      SiteAvailabilityState = Azure::Web::Mgmt::V2020_09_01::Models::SiteAvailabilityState
      ClientCertMode = Azure::Web::Mgmt::V2020_09_01::Models::ClientCertMode
      RedundancyMode = Azure::Web::Mgmt::V2020_09_01::Models::RedundancyMode
      StatusOptions = Azure::Web::Mgmt::V2020_09_01::Models::StatusOptions
      DomainStatus = Azure::Web::Mgmt::V2020_09_01::Models::DomainStatus
      AzureResourceType = Azure::Web::Mgmt::V2020_09_01::Models::AzureResourceType
      CustomHostNameDnsRecordType = Azure::Web::Mgmt::V2020_09_01::Models::CustomHostNameDnsRecordType
      HostNameType = Azure::Web::Mgmt::V2020_09_01::Models::HostNameType
      DnsType = Azure::Web::Mgmt::V2020_09_01::Models::DnsType
      DomainType = Azure::Web::Mgmt::V2020_09_01::Models::DomainType
      HostingEnvironmentStatus = Azure::Web::Mgmt::V2020_09_01::Models::HostingEnvironmentStatus
      LoadBalancingMode = Azure::Web::Mgmt::V2020_09_01::Models::LoadBalancingMode
      ComputeModeOptions = Azure::Web::Mgmt::V2020_09_01::Models::ComputeModeOptions
      WorkerSizeOptions = Azure::Web::Mgmt::V2020_09_01::Models::WorkerSizeOptions
      AccessControlEntryAction = Azure::Web::Mgmt::V2020_09_01::Models::AccessControlEntryAction
      OperationStatus = Azure::Web::Mgmt::V2020_09_01::Models::OperationStatus
      IssueType = Azure::Web::Mgmt::V2020_09_01::Models::IssueType
      SolutionType = Azure::Web::Mgmt::V2020_09_01::Models::SolutionType
      RenderingType = Azure::Web::Mgmt::V2020_09_01::Models::RenderingType
      ResourceScopeType = Azure::Web::Mgmt::V2020_09_01::Models::ResourceScopeType
      NotificationLevel = Azure::Web::Mgmt::V2020_09_01::Models::NotificationLevel
      Channels = Azure::Web::Mgmt::V2020_09_01::Models::Channels
      AppServicePlanRestrictions = Azure::Web::Mgmt::V2020_09_01::Models::AppServicePlanRestrictions
      InAvailabilityReasonType = Azure::Web::Mgmt::V2020_09_01::Models::InAvailabilityReasonType
      CheckNameResourceTypes = Azure::Web::Mgmt::V2020_09_01::Models::CheckNameResourceTypes
      ValidateResourceTypes = Azure::Web::Mgmt::V2020_09_01::Models::ValidateResourceTypes
      LogLevel = Azure::Web::Mgmt::V2020_09_01::Models::LogLevel
      AzureStorageType = Azure::Web::Mgmt::V2020_09_01::Models::AzureStorageType
      AzureStorageState = Azure::Web::Mgmt::V2020_09_01::Models::AzureStorageState
      BackupItemStatus = Azure::Web::Mgmt::V2020_09_01::Models::BackupItemStatus
      DatabaseType = Azure::Web::Mgmt::V2020_09_01::Models::DatabaseType
      FrequencyUnit = Azure::Web::Mgmt::V2020_09_01::Models::FrequencyUnit
      ContinuousWebJobStatus = Azure::Web::Mgmt::V2020_09_01::Models::ContinuousWebJobStatus
      WebJobType = Azure::Web::Mgmt::V2020_09_01::Models::WebJobType
      CookieExpirationConvention = Azure::Web::Mgmt::V2020_09_01::Models::CookieExpirationConvention
      PublishingProfileFormat = Azure::Web::Mgmt::V2020_09_01::Models::PublishingProfileFormat
      DnsVerificationTestResult = Azure::Web::Mgmt::V2020_09_01::Models::DnsVerificationTestResult
      ClientCredentialMethod = Azure::Web::Mgmt::V2020_09_01::Models::ClientCredentialMethod
      ForwardProxyConvention = Azure::Web::Mgmt::V2020_09_01::Models::ForwardProxyConvention
      UnauthenticatedClientActionV2 = Azure::Web::Mgmt::V2020_09_01::Models::UnauthenticatedClientActionV2
      MSDeployLogEntryType = Azure::Web::Mgmt::V2020_09_01::Models::MSDeployLogEntryType
      MSDeployProvisioningState = Azure::Web::Mgmt::V2020_09_01::Models::MSDeployProvisioningState
      MySqlMigrationType = Azure::Web::Mgmt::V2020_09_01::Models::MySqlMigrationType
      PublicCertificateLocation = Azure::Web::Mgmt::V2020_09_01::Models::PublicCertificateLocation
      BackupRestoreOperationType = Azure::Web::Mgmt::V2020_09_01::Models::BackupRestoreOperationType
      UnauthenticatedClientAction = Azure::Web::Mgmt::V2020_09_01::Models::UnauthenticatedClientAction
      BuiltInAuthenticationProvider = Azure::Web::Mgmt::V2020_09_01::Models::BuiltInAuthenticationProvider
      CloneAbilityResult = Azure::Web::Mgmt::V2020_09_01::Models::CloneAbilityResult
      SiteExtensionType = Azure::Web::Mgmt::V2020_09_01::Models::SiteExtensionType
      TriggeredWebJobStatus = Azure::Web::Mgmt::V2020_09_01::Models::TriggeredWebJobStatus
      SiteRuntimeState = Azure::Web::Mgmt::V2020_09_01::Models::SiteRuntimeState
      BuildStatus = Azure::Web::Mgmt::V2020_09_01::Models::BuildStatus
      TriggerTypes = Azure::Web::Mgmt::V2020_09_01::Models::TriggerTypes
      SkuName = Azure::Web::Mgmt::V2020_09_01::Models::SkuName
    end

    #
    # WebManagementClass
    #
    class WebManagementClass
      attr_reader :app_service_certificate_orders, :certificate_registration_provider, :domains, :top_level_domains, :domain_registration_provider, :certificates, :deleted_web_apps, :diagnostics, :provider, :recommendations, :web_apps, :static_sites, :app_service_environments, :app_service_plans, :resource_health_metadata_operations, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::Web::Mgmt::V2020_09_01::WebSiteManagementClient.new(configurable.credentials, base_url, options)
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
        @static_sites = @client_0.static_sites
        @app_service_environments = @client_0.app_service_environments
        @app_service_plans = @client_0.app_service_plans
        @resource_health_metadata_operations = @client_0.resource_health_metadata_operations

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
      def response_meta_data
        Azure::Web::Mgmt::V2020_09_01::Models::ResponseMetaData
      end
      def analysis_data
        Azure::Web::Mgmt::V2020_09_01::Models::AnalysisData
      end
      def csm_usage_quota_collection
        Azure::Web::Mgmt::V2020_09_01::Models::CsmUsageQuotaCollection
      end
      def app_service_certificate_collection
        Azure::Web::Mgmt::V2020_09_01::Models::AppServiceCertificateCollection
      end
      def error_entity
        Azure::Web::Mgmt::V2020_09_01::Models::ErrorEntity
      end
      def key_info
        Azure::Web::Mgmt::V2020_09_01::Models::KeyInfo
      end
      def identifier_collection
        Azure::Web::Mgmt::V2020_09_01::Models::IdentifierCollection
      end
      def site_extension_info_collection
        Azure::Web::Mgmt::V2020_09_01::Models::SiteExtensionInfoCollection
      end
      def operation
        Azure::Web::Mgmt::V2020_09_01::Models::Operation
      end
      def snapshot_collection
        Azure::Web::Mgmt::V2020_09_01::Models::SnapshotCollection
      end
      def web_app_collection
        Azure::Web::Mgmt::V2020_09_01::Models::WebAppCollection
      end
      def triggered_job_history_collection
        Azure::Web::Mgmt::V2020_09_01::Models::TriggeredJobHistoryCollection
      end
      def deleted_web_app_collection
        Azure::Web::Mgmt::V2020_09_01::Models::DeletedWebAppCollection
      end
      def site_seal
        Azure::Web::Mgmt::V2020_09_01::Models::SiteSeal
      end
      def solution
        Azure::Web::Mgmt::V2020_09_01::Models::Solution
      end
      def system_data
        Azure::Web::Mgmt::V2020_09_01::Models::SystemData
      end
      def detector_abnormal_time_period
        Azure::Web::Mgmt::V2020_09_01::Models::DetectorAbnormalTimePeriod
      end
      def triggered_web_job_collection
        Azure::Web::Mgmt::V2020_09_01::Models::TriggeredWebJobCollection
      end
      def abnormal_time_period
        Azure::Web::Mgmt::V2020_09_01::Models::AbnormalTimePeriod
      end
      def web_app_instance_status_collection
        Azure::Web::Mgmt::V2020_09_01::Models::WebAppInstanceStatusCollection
      end
      def endpoint_dependency
        Azure::Web::Mgmt::V2020_09_01::Models::EndpointDependency
      end
      def static_site_build_properties
        Azure::Web::Mgmt::V2020_09_01::Models::StaticSiteBuildProperties
      end
      def diagnostic_metric_sample
        Azure::Web::Mgmt::V2020_09_01::Models::DiagnosticMetricSample
      end
      def function_envelope_collection
        Azure::Web::Mgmt::V2020_09_01::Models::FunctionEnvelopeCollection
      end
      def diagnostic_metric_set
        Azure::Web::Mgmt::V2020_09_01::Models::DiagnosticMetricSet
      end
      def static_site_collection
        Azure::Web::Mgmt::V2020_09_01::Models::StaticSiteCollection
      end
      def data_source
        Azure::Web::Mgmt::V2020_09_01::Models::DataSource
      end
      def managed_service_identity_user_assigned_identities_value
        Azure::Web::Mgmt::V2020_09_01::Models::ManagedServiceIdentityUserAssignedIdentitiesValue
      end
      def app_service_certificate
        Azure::Web::Mgmt::V2020_09_01::Models::AppServiceCertificate
      end
      def slot_swap_status
        Azure::Web::Mgmt::V2020_09_01::Models::SlotSwapStatus
      end
      def hosting_environment_diagnostics
        Azure::Web::Mgmt::V2020_09_01::Models::HostingEnvironmentDiagnostics
      end
      def hosting_environment_profile
        Azure::Web::Mgmt::V2020_09_01::Models::HostingEnvironmentProfile
      end
      def inbound_environment_endpoint
        Azure::Web::Mgmt::V2020_09_01::Models::InboundEnvironmentEndpoint
      end
      def api_management_config
        Azure::Web::Mgmt::V2020_09_01::Models::ApiManagementConfig
      end
      def data_table_response_column
        Azure::Web::Mgmt::V2020_09_01::Models::DataTableResponseColumn
      end
      def cors_settings
        Azure::Web::Mgmt::V2020_09_01::Models::CorsSettings
      end
      def data_table_response_object
        Azure::Web::Mgmt::V2020_09_01::Models::DataTableResponseObject
      end
      def auto_heal_actions
        Azure::Web::Mgmt::V2020_09_01::Models::AutoHealActions
      end
      def detector_info
        Azure::Web::Mgmt::V2020_09_01::Models::DetectorInfo
      end
      def status_codes_based_trigger
        Azure::Web::Mgmt::V2020_09_01::Models::StatusCodesBasedTrigger
      end
      def rendering
        Azure::Web::Mgmt::V2020_09_01::Models::Rendering
      end
      def auto_heal_triggers
        Azure::Web::Mgmt::V2020_09_01::Models::AutoHealTriggers
      end
      def diagnostic_data
        Azure::Web::Mgmt::V2020_09_01::Models::DiagnosticData
      end
      def site_limits
        Azure::Web::Mgmt::V2020_09_01::Models::SiteLimits
      end
      def inbound_environment_endpoint_collection
        Azure::Web::Mgmt::V2020_09_01::Models::InboundEnvironmentEndpointCollection
      end
      def experiments
        Azure::Web::Mgmt::V2020_09_01::Models::Experiments
      end
      def detector_response_collection
        Azure::Web::Mgmt::V2020_09_01::Models::DetectorResponseCollection
      end
      def virtual_application
        Azure::Web::Mgmt::V2020_09_01::Models::VirtualApplication
      end
      def private_access_subnet
        Azure::Web::Mgmt::V2020_09_01::Models::PrivateAccessSubnet
      end
      def site_machine_key
        Azure::Web::Mgmt::V2020_09_01::Models::SiteMachineKey
      end
      def diagnostic_analysis_collection
        Azure::Web::Mgmt::V2020_09_01::Models::DiagnosticAnalysisCollection
      end
      def name_value_pair
        Azure::Web::Mgmt::V2020_09_01::Models::NameValuePair
      end
      def private_access_virtual_network
        Azure::Web::Mgmt::V2020_09_01::Models::PrivateAccessVirtualNetwork
      end
      def host_name_ssl_state
        Azure::Web::Mgmt::V2020_09_01::Models::HostNameSslState
      end
      def diagnostic_category_collection
        Azure::Web::Mgmt::V2020_09_01::Models::DiagnosticCategoryCollection
      end
      def capability
        Azure::Web::Mgmt::V2020_09_01::Models::Capability
      end
      def diagnostic_detector_collection
        Azure::Web::Mgmt::V2020_09_01::Models::DiagnosticDetectorCollection
      end
      def sku_description
        Azure::Web::Mgmt::V2020_09_01::Models::SkuDescription
      end
      def private_link_connection_state
        Azure::Web::Mgmt::V2020_09_01::Models::PrivateLinkConnectionState
      end
      def resource
        Azure::Web::Mgmt::V2020_09_01::Models::Resource
      end
      def stack_minor_version
        Azure::Web::Mgmt::V2020_09_01::Models::StackMinorVersion
      end
      def default_error_response_error
        Azure::Web::Mgmt::V2020_09_01::Models::DefaultErrorResponseError
      end
      def stack_major_version
        Azure::Web::Mgmt::V2020_09_01::Models::StackMajorVersion
      end
      def name_identifier
        Azure::Web::Mgmt::V2020_09_01::Models::NameIdentifier
      end
      def application_stack
        Azure::Web::Mgmt::V2020_09_01::Models::ApplicationStack
      end
      def metric_availability
        Azure::Web::Mgmt::V2020_09_01::Models::MetricAvailability
      end
      def perf_mon_counter_collection
        Azure::Web::Mgmt::V2020_09_01::Models::PerfMonCounterCollection
      end
      def metric_specification
        Azure::Web::Mgmt::V2020_09_01::Models::MetricSpecification
      end
      def application_stack_collection
        Azure::Web::Mgmt::V2020_09_01::Models::ApplicationStackCollection
      end
      def csm_operation_description_properties
        Azure::Web::Mgmt::V2020_09_01::Models::CsmOperationDescriptionProperties
      end
      def perf_mon_response
        Azure::Web::Mgmt::V2020_09_01::Models::PerfMonResponse
      end
      def csm_operation_description
        Azure::Web::Mgmt::V2020_09_01::Models::CsmOperationDescription
      end
      def recommendation_collection
        Azure::Web::Mgmt::V2020_09_01::Models::RecommendationCollection
      end
      def address
        Azure::Web::Mgmt::V2020_09_01::Models::Address
      end
      def perf_mon_set
        Azure::Web::Mgmt::V2020_09_01::Models::PerfMonSet
      end
      def host_name
        Azure::Web::Mgmt::V2020_09_01::Models::HostName
      end
      def appservice_github_token
        Azure::Web::Mgmt::V2020_09_01::Models::AppserviceGithubToken
      end
      def static_site_function_overview_collection
        Azure::Web::Mgmt::V2020_09_01::Models::StaticSiteFunctionOverviewCollection
      end
      def appservice_github_token_request
        Azure::Web::Mgmt::V2020_09_01::Models::AppserviceGithubTokenRequest
      end
      def domain_collection
        Azure::Web::Mgmt::V2020_09_01::Models::DomainCollection
      end
      def perf_mon_sample
        Azure::Web::Mgmt::V2020_09_01::Models::PerfMonSample
      end
      def static_site_user_collection
        Azure::Web::Mgmt::V2020_09_01::Models::StaticSiteUserCollection
      end
      def billing_meter_collection
        Azure::Web::Mgmt::V2020_09_01::Models::BillingMeterCollection
      end
      def enabled_config
        Azure::Web::Mgmt::V2020_09_01::Models::EnabledConfig
      end
      def csm_move_resource_envelope
        Azure::Web::Mgmt::V2020_09_01::Models::CsmMoveResourceEnvelope
      end
      def name_identifier_collection
        Azure::Web::Mgmt::V2020_09_01::Models::NameIdentifierCollection
      end
      def network_trace
        Azure::Web::Mgmt::V2020_09_01::Models::NetworkTrace
      end
      def tld_legal_agreement_collection
        Azure::Web::Mgmt::V2020_09_01::Models::TldLegalAgreementCollection
      end
      def hosting_environment_deployment_info
        Azure::Web::Mgmt::V2020_09_01::Models::HostingEnvironmentDeploymentInfo
      end
      def top_level_domain_agreement_option
        Azure::Web::Mgmt::V2020_09_01::Models::TopLevelDomainAgreementOption
      end
      def deployment_locations
        Azure::Web::Mgmt::V2020_09_01::Models::DeploymentLocations
      end
      def app_service_environment_collection
        Azure::Web::Mgmt::V2020_09_01::Models::AppServiceEnvironmentCollection
      end
      def geo_region_collection
        Azure::Web::Mgmt::V2020_09_01::Models::GeoRegionCollection
      end
      def endpoint_detail
        Azure::Web::Mgmt::V2020_09_01::Models::EndpointDetail
      end
      def global_csm_sku_description
        Azure::Web::Mgmt::V2020_09_01::Models::GlobalCsmSkuDescription
      end
      def worker_pool
        Azure::Web::Mgmt::V2020_09_01::Models::WorkerPool
      end
      def private_link_resource_properties
        Azure::Web::Mgmt::V2020_09_01::Models::PrivateLinkResourceProperties
      end
      def stamp_capacity
        Azure::Web::Mgmt::V2020_09_01::Models::StampCapacity
      end
      def premier_add_on_offer_collection
        Azure::Web::Mgmt::V2020_09_01::Models::PremierAddOnOfferCollection
      end
      def app_service_environment
        Azure::Web::Mgmt::V2020_09_01::Models::AppServiceEnvironment
      end
      def resource_name_availability
        Azure::Web::Mgmt::V2020_09_01::Models::ResourceNameAvailability
      end
      def localizable_string
        Azure::Web::Mgmt::V2020_09_01::Models::LocalizableString
      end
      def resource_name_availability_request
        Azure::Web::Mgmt::V2020_09_01::Models::ResourceNameAvailabilityRequest
      end
      def certificate_details
        Azure::Web::Mgmt::V2020_09_01::Models::CertificateDetails
      end
      def sku_infos
        Azure::Web::Mgmt::V2020_09_01::Models::SkuInfos
      end
      def slot_difference_collection
        Azure::Web::Mgmt::V2020_09_01::Models::SlotDifferenceCollection
      end
      def private_link_resource
        Azure::Web::Mgmt::V2020_09_01::Models::PrivateLinkResource
      end
      def http_logs_config
        Azure::Web::Mgmt::V2020_09_01::Models::HttpLogsConfig
      end
      def source_control_collection
        Azure::Web::Mgmt::V2020_09_01::Models::SourceControlCollection
      end
      def host_name_binding_collection
        Azure::Web::Mgmt::V2020_09_01::Models::HostNameBindingCollection
      end
      def validate_request
        Azure::Web::Mgmt::V2020_09_01::Models::ValidateRequest
      end
      def web_job_collection
        Azure::Web::Mgmt::V2020_09_01::Models::WebJobCollection
      end
      def validate_response_error
        Azure::Web::Mgmt::V2020_09_01::Models::ValidateResponseError
      end
      def static_site_build_collection
        Azure::Web::Mgmt::V2020_09_01::Models::StaticSiteBuildCollection
      end
      def validate_response
        Azure::Web::Mgmt::V2020_09_01::Models::ValidateResponse
      end
      def managed_service_identity
        Azure::Web::Mgmt::V2020_09_01::Models::ManagedServiceIdentity
      end
      def private_link_resources_wrapper
        Azure::Web::Mgmt::V2020_09_01::Models::PrivateLinkResourcesWrapper
      end
      def ip_security_restriction
        Azure::Web::Mgmt::V2020_09_01::Models::IpSecurityRestriction
      end
      def process_info_collection
        Azure::Web::Mgmt::V2020_09_01::Models::ProcessInfoCollection
      end
      def auto_heal_custom_action
        Azure::Web::Mgmt::V2020_09_01::Models::AutoHealCustomAction
      end
      def process_module_info_collection
        Azure::Web::Mgmt::V2020_09_01::Models::ProcessModuleInfoCollection
      end
      def requests_based_trigger
        Azure::Web::Mgmt::V2020_09_01::Models::RequestsBasedTrigger
      end
      def process_thread_info_collection
        Azure::Web::Mgmt::V2020_09_01::Models::ProcessThreadInfoCollection
      end
      def ramp_up_rule
        Azure::Web::Mgmt::V2020_09_01::Models::RampUpRule
      end
      def msdeploy_log_entry
        Azure::Web::Mgmt::V2020_09_01::Models::MSDeployLogEntry
      end
      def handler_mapping
        Azure::Web::Mgmt::V2020_09_01::Models::HandlerMapping
      end
      def file_system_application_logs_config
        Azure::Web::Mgmt::V2020_09_01::Models::FileSystemApplicationLogsConfig
      end
      def site_config
        Azure::Web::Mgmt::V2020_09_01::Models::SiteConfig
      end
      def azure_table_storage_application_logs_config
        Azure::Web::Mgmt::V2020_09_01::Models::AzureTableStorageApplicationLogsConfig
      end
      def sku_capacity
        Azure::Web::Mgmt::V2020_09_01::Models::SkuCapacity
      end
      def azure_blob_storage_application_logs_config
        Azure::Web::Mgmt::V2020_09_01::Models::AzureBlobStorageApplicationLogsConfig
      end
      def default_error_response_error_details_item
        Azure::Web::Mgmt::V2020_09_01::Models::DefaultErrorResponseErrorDetailsItem
      end
      def application_logs_config
        Azure::Web::Mgmt::V2020_09_01::Models::ApplicationLogsConfig
      end
      def log_specification
        Azure::Web::Mgmt::V2020_09_01::Models::LogSpecification
      end
      def public_certificate_collection
        Azure::Web::Mgmt::V2020_09_01::Models::PublicCertificateCollection
      end
      def service_specification
        Azure::Web::Mgmt::V2020_09_01::Models::ServiceSpecification
      end
      def site_cloneability_criterion
        Azure::Web::Mgmt::V2020_09_01::Models::SiteCloneabilityCriterion
      end
      def csm_operation_collection
        Azure::Web::Mgmt::V2020_09_01::Models::CsmOperationCollection
      end
      def site_cloneability
        Azure::Web::Mgmt::V2020_09_01::Models::SiteCloneability
      end
      def domain_purchase_consent
        Azure::Web::Mgmt::V2020_09_01::Models::DomainPurchaseConsent
      end
      def site_config_resource_collection
        Azure::Web::Mgmt::V2020_09_01::Models::SiteConfigResourceCollection
      end
      def domain_control_center_sso_request
        Azure::Web::Mgmt::V2020_09_01::Models::DomainControlCenterSsoRequest
      end
      def site_configuration_snapshot_info_collection
        Azure::Web::Mgmt::V2020_09_01::Models::SiteConfigurationSnapshotInfoCollection
      end
      def domain_recommendation_search_parameters
        Azure::Web::Mgmt::V2020_09_01::Models::DomainRecommendationSearchParameters
      end
      def deployment_collection
        Azure::Web::Mgmt::V2020_09_01::Models::DeploymentCollection
      end
      def arm_id_wrapper
        Azure::Web::Mgmt::V2020_09_01::Models::ArmIdWrapper
      end
      def certificate_collection
        Azure::Web::Mgmt::V2020_09_01::Models::CertificateCollection
      end
      def azure_blob_storage_http_logs_config
        Azure::Web::Mgmt::V2020_09_01::Models::AzureBlobStorageHttpLogsConfig
      end
      def virtual_ipmapping
        Azure::Web::Mgmt::V2020_09_01::Models::VirtualIPMapping
      end
      def azure_storage_info_value
        Azure::Web::Mgmt::V2020_09_01::Models::AzureStorageInfoValue
      end
      def app_service_plan_collection
        Azure::Web::Mgmt::V2020_09_01::Models::AppServicePlanCollection
      end
      def resource_health_metadata_collection
        Azure::Web::Mgmt::V2020_09_01::Models::ResourceHealthMetadataCollection
      end
      def app_service_certificate_order_collection
        Azure::Web::Mgmt::V2020_09_01::Models::AppServiceCertificateOrderCollection
      end
      def database_backup_setting
        Azure::Web::Mgmt::V2020_09_01::Models::DatabaseBackupSetting
      end
      def site_seal_request
        Azure::Web::Mgmt::V2020_09_01::Models::SiteSealRequest
      end
      def resource_collection
        Azure::Web::Mgmt::V2020_09_01::Models::ResourceCollection
      end
      def function_secrets
        Azure::Web::Mgmt::V2020_09_01::Models::FunctionSecrets
      end
      def backup_item_collection
        Azure::Web::Mgmt::V2020_09_01::Models::BackupItemCollection
      end
      def cloning_info
        Azure::Web::Mgmt::V2020_09_01::Models::CloningInfo
      end
      def backup_schedule
        Azure::Web::Mgmt::V2020_09_01::Models::BackupSchedule
      end
      def slow_requests_based_trigger
        Azure::Web::Mgmt::V2020_09_01::Models::SlowRequestsBasedTrigger
      end
      def hybrid_connection_collection
        Azure::Web::Mgmt::V2020_09_01::Models::HybridConnectionCollection
      end
      def virtual_directory
        Azure::Web::Mgmt::V2020_09_01::Models::VirtualDirectory
      end
      def worker_pool_collection
        Azure::Web::Mgmt::V2020_09_01::Models::WorkerPoolCollection
      end
      def static_site_custom_domain_overview_collection
        Azure::Web::Mgmt::V2020_09_01::Models::StaticSiteCustomDomainOverviewCollection
      end
      def usage_collection
        Azure::Web::Mgmt::V2020_09_01::Models::UsageCollection
      end
      def default_error_response
        Azure::Web::Mgmt::V2020_09_01::Models::DefaultErrorResponse
      end
      def conn_string_value_type_pair
        Azure::Web::Mgmt::V2020_09_01::Models::ConnStringValueTypePair
      end
      def csm_operation_display
        Azure::Web::Mgmt::V2020_09_01::Models::CsmOperationDisplay
      end
      def stamp_capacity_collection
        Azure::Web::Mgmt::V2020_09_01::Models::StampCapacityCollection
      end
      def domain_availability_check_result
        Azure::Web::Mgmt::V2020_09_01::Models::DomainAvailabilityCheckResult
      end
      def container_cpu_usage
        Azure::Web::Mgmt::V2020_09_01::Models::ContainerCpuUsage
      end
      def tld_legal_agreement
        Azure::Web::Mgmt::V2020_09_01::Models::TldLegalAgreement
      end
      def container_throttling_data
        Azure::Web::Mgmt::V2020_09_01::Models::ContainerThrottlingData
      end
      def virtual_network_profile
        Azure::Web::Mgmt::V2020_09_01::Models::VirtualNetworkProfile
      end
      def container_cpu_statistics
        Azure::Web::Mgmt::V2020_09_01::Models::ContainerCpuStatistics
      end
      def csm_usage_quota
        Azure::Web::Mgmt::V2020_09_01::Models::CsmUsageQuota
      end
      def container_memory_statistics
        Azure::Web::Mgmt::V2020_09_01::Models::ContainerMemoryStatistics
      end
      def host_keys
        Azure::Web::Mgmt::V2020_09_01::Models::HostKeys
      end
      def container_network_interface_statistics
        Azure::Web::Mgmt::V2020_09_01::Models::ContainerNetworkInterfaceStatistics
      end
      def api_definition_info
        Azure::Web::Mgmt::V2020_09_01::Models::ApiDefinitionInfo
      end
      def container_info
        Azure::Web::Mgmt::V2020_09_01::Models::ContainerInfo
      end
      def conn_string_info
        Azure::Web::Mgmt::V2020_09_01::Models::ConnStringInfo
      end
      def sku_info_collection
        Azure::Web::Mgmt::V2020_09_01::Models::SkuInfoCollection
      end
      def dimension
        Azure::Web::Mgmt::V2020_09_01::Models::Dimension
      end
      def continuous_web_job_collection
        Azure::Web::Mgmt::V2020_09_01::Models::ContinuousWebJobCollection
      end
      def domain_ownership_identifier_collection
        Azure::Web::Mgmt::V2020_09_01::Models::DomainOwnershipIdentifierCollection
      end
      def sku_info
        Azure::Web::Mgmt::V2020_09_01::Models::SkuInfo
      end
      def network_access_control_entry
        Azure::Web::Mgmt::V2020_09_01::Models::NetworkAccessControlEntry
      end
      def csm_copy_slot_entity
        Azure::Web::Mgmt::V2020_09_01::Models::CsmCopySlotEntity
      end
      def proxy_only_resource
        Azure::Web::Mgmt::V2020_09_01::Models::ProxyOnlyResource
      end
      def resource_metric_definition_collection
        Azure::Web::Mgmt::V2020_09_01::Models::ResourceMetricDefinitionCollection
      end
      def file_system_http_logs_config
        Azure::Web::Mgmt::V2020_09_01::Models::FileSystemHttpLogsConfig
      end
      def resource_metric_availability
        Azure::Web::Mgmt::V2020_09_01::Models::ResourceMetricAvailability
      end
      def top_level_domain_collection
        Azure::Web::Mgmt::V2020_09_01::Models::TopLevelDomainCollection
      end
      def csm_publishing_profile_options
        Azure::Web::Mgmt::V2020_09_01::Models::CsmPublishingProfileOptions
      end
      def auto_heal_rules
        Azure::Web::Mgmt::V2020_09_01::Models::AutoHealRules
      end
      def csm_slot_entity
        Azure::Web::Mgmt::V2020_09_01::Models::CsmSlotEntity
      end
      def snapshot_recovery_source
        Azure::Web::Mgmt::V2020_09_01::Models::SnapshotRecoverySource
      end
      def outbound_environment_endpoint_collection
        Azure::Web::Mgmt::V2020_09_01::Models::OutboundEnvironmentEndpointCollection
      end
      def contact
        Azure::Web::Mgmt::V2020_09_01::Models::Contact
      end
      def outbound_environment_endpoint
        Azure::Web::Mgmt::V2020_09_01::Models::OutboundEnvironmentEndpoint
      end
      def app_service_certificate_resource
        Azure::Web::Mgmt::V2020_09_01::Models::AppServiceCertificateResource
      end
      def app_service_certificate_order
        Azure::Web::Mgmt::V2020_09_01::Models::AppServiceCertificateOrder
      end
      def app_service_certificate_order_patch_resource
        Azure::Web::Mgmt::V2020_09_01::Models::AppServiceCertificateOrderPatchResource
      end
      def app_service_certificate_patch_resource
        Azure::Web::Mgmt::V2020_09_01::Models::AppServiceCertificatePatchResource
      end
      def certificate_email
        Azure::Web::Mgmt::V2020_09_01::Models::CertificateEmail
      end
      def certificate_order_action
        Azure::Web::Mgmt::V2020_09_01::Models::CertificateOrderAction
      end
      def reissue_certificate_order_request
        Azure::Web::Mgmt::V2020_09_01::Models::ReissueCertificateOrderRequest
      end
      def renew_certificate_order_request
        Azure::Web::Mgmt::V2020_09_01::Models::RenewCertificateOrderRequest
      end
      def vnet_route
        Azure::Web::Mgmt::V2020_09_01::Models::VnetRoute
      end
      def vnet_info
        Azure::Web::Mgmt::V2020_09_01::Models::VnetInfo
      end
      def vnet_gateway
        Azure::Web::Mgmt::V2020_09_01::Models::VnetGateway
      end
      def user
        Azure::Web::Mgmt::V2020_09_01::Models::User
      end
      def string_dictionary
        Azure::Web::Mgmt::V2020_09_01::Models::StringDictionary
      end
      def snapshot
        Azure::Web::Mgmt::V2020_09_01::Models::Snapshot
      end
      def push_settings
        Azure::Web::Mgmt::V2020_09_01::Models::PushSettings
      end
      def identifier
        Azure::Web::Mgmt::V2020_09_01::Models::Identifier
      end
      def hybrid_connection
        Azure::Web::Mgmt::V2020_09_01::Models::HybridConnection
      end
      def deleted_site
        Azure::Web::Mgmt::V2020_09_01::Models::DeletedSite
      end
      def site
        Azure::Web::Mgmt::V2020_09_01::Models::Site
      end
      def app_service_plan
        Azure::Web::Mgmt::V2020_09_01::Models::AppServicePlan
      end
      def domain
        Azure::Web::Mgmt::V2020_09_01::Models::Domain
      end
      def domain_ownership_identifier
        Azure::Web::Mgmt::V2020_09_01::Models::DomainOwnershipIdentifier
      end
      def domain_patch_resource
        Azure::Web::Mgmt::V2020_09_01::Models::DomainPatchResource
      end
      def top_level_domain
        Azure::Web::Mgmt::V2020_09_01::Models::TopLevelDomain
      end
      def certificate
        Azure::Web::Mgmt::V2020_09_01::Models::Certificate
      end
      def certificate_patch_resource
        Azure::Web::Mgmt::V2020_09_01::Models::CertificatePatchResource
      end
      def detector_definition
        Azure::Web::Mgmt::V2020_09_01::Models::DetectorDefinition
      end
      def analysis_definition
        Azure::Web::Mgmt::V2020_09_01::Models::AnalysisDefinition
      end
      def detector_response
        Azure::Web::Mgmt::V2020_09_01::Models::DetectorResponse
      end
      def diagnostic_analysis
        Azure::Web::Mgmt::V2020_09_01::Models::DiagnosticAnalysis
      end
      def diagnostic_category
        Azure::Web::Mgmt::V2020_09_01::Models::DiagnosticCategory
      end
      def diagnostic_detector_response
        Azure::Web::Mgmt::V2020_09_01::Models::DiagnosticDetectorResponse
      end
      def application_stack_resource
        Azure::Web::Mgmt::V2020_09_01::Models::ApplicationStackResource
      end
      def recommendation
        Azure::Web::Mgmt::V2020_09_01::Models::Recommendation
      end
      def recommendation_rule
        Azure::Web::Mgmt::V2020_09_01::Models::RecommendationRule
      end
      def billing_meter
        Azure::Web::Mgmt::V2020_09_01::Models::BillingMeter
      end
      def geo_region
        Azure::Web::Mgmt::V2020_09_01::Models::GeoRegion
      end
      def premier_add_on_offer
        Azure::Web::Mgmt::V2020_09_01::Models::PremierAddOnOffer
      end
      def source_control
        Azure::Web::Mgmt::V2020_09_01::Models::SourceControl
      end
      def vnet_parameters
        Azure::Web::Mgmt::V2020_09_01::Models::VnetParameters
      end
      def vnet_validation_test_failure
        Azure::Web::Mgmt::V2020_09_01::Models::VnetValidationTestFailure
      end
      def vnet_validation_failure_details
        Azure::Web::Mgmt::V2020_09_01::Models::VnetValidationFailureDetails
      end
      def allowed_audiences_validation
        Azure::Web::Mgmt::V2020_09_01::Models::AllowedAudiencesValidation
      end
      def app_registration
        Azure::Web::Mgmt::V2020_09_01::Models::AppRegistration
      end
      def auth_platform
        Azure::Web::Mgmt::V2020_09_01::Models::AuthPlatform
      end
      def azure_active_directory_registration
        Azure::Web::Mgmt::V2020_09_01::Models::AzureActiveDirectoryRegistration
      end
      def azure_active_directory_login
        Azure::Web::Mgmt::V2020_09_01::Models::AzureActiveDirectoryLogin
      end
      def jwt_claim_checks
        Azure::Web::Mgmt::V2020_09_01::Models::JwtClaimChecks
      end
      def azure_active_directory_validation
        Azure::Web::Mgmt::V2020_09_01::Models::AzureActiveDirectoryValidation
      end
      def azure_active_directory
        Azure::Web::Mgmt::V2020_09_01::Models::AzureActiveDirectory
      end
      def azure_storage_property_dictionary_resource
        Azure::Web::Mgmt::V2020_09_01::Models::AzureStoragePropertyDictionaryResource
      end
      def backup_item
        Azure::Web::Mgmt::V2020_09_01::Models::BackupItem
      end
      def backup_request
        Azure::Web::Mgmt::V2020_09_01::Models::BackupRequest
      end
      def blob_storage_token_store
        Azure::Web::Mgmt::V2020_09_01::Models::BlobStorageTokenStore
      end
      def client_registration
        Azure::Web::Mgmt::V2020_09_01::Models::ClientRegistration
      end
      def connection_string_dictionary
        Azure::Web::Mgmt::V2020_09_01::Models::ConnectionStringDictionary
      end
      def continuous_web_job
        Azure::Web::Mgmt::V2020_09_01::Models::ContinuousWebJob
      end
      def cookie_expiration
        Azure::Web::Mgmt::V2020_09_01::Models::CookieExpiration
      end
      def csm_publishing_credentials_policies_entity
        Azure::Web::Mgmt::V2020_09_01::Models::CsmPublishingCredentialsPoliciesEntity
      end
      def csm_publishing_credentials_policies_collection
        Azure::Web::Mgmt::V2020_09_01::Models::CsmPublishingCredentialsPoliciesCollection
      end
      def custom_hostname_analysis_result
        Azure::Web::Mgmt::V2020_09_01::Models::CustomHostnameAnalysisResult
      end
      def open_id_connect_client_credential
        Azure::Web::Mgmt::V2020_09_01::Models::OpenIdConnectClientCredential
      end
      def open_id_connect_config
        Azure::Web::Mgmt::V2020_09_01::Models::OpenIdConnectConfig
      end
      def open_id_connect_registration
        Azure::Web::Mgmt::V2020_09_01::Models::OpenIdConnectRegistration
      end
      def open_id_connect_login
        Azure::Web::Mgmt::V2020_09_01::Models::OpenIdConnectLogin
      end
      def custom_open_id_connect_provider
        Azure::Web::Mgmt::V2020_09_01::Models::CustomOpenIdConnectProvider
      end
      def deleted_app_restore_request
        Azure::Web::Mgmt::V2020_09_01::Models::DeletedAppRestoreRequest
      end
      def deployment
        Azure::Web::Mgmt::V2020_09_01::Models::Deployment
      end
      def login_scopes
        Azure::Web::Mgmt::V2020_09_01::Models::LoginScopes
      end
      def facebook
        Azure::Web::Mgmt::V2020_09_01::Models::Facebook
      end
      def file_system_token_store
        Azure::Web::Mgmt::V2020_09_01::Models::FileSystemTokenStore
      end
      def forward_proxy
        Azure::Web::Mgmt::V2020_09_01::Models::ForwardProxy
      end
      def function_envelope
        Azure::Web::Mgmt::V2020_09_01::Models::FunctionEnvelope
      end
      def git_hub
        Azure::Web::Mgmt::V2020_09_01::Models::GitHub
      end
      def global_validation
        Azure::Web::Mgmt::V2020_09_01::Models::GlobalValidation
      end
      def google
        Azure::Web::Mgmt::V2020_09_01::Models::Google
      end
      def host_name_binding
        Azure::Web::Mgmt::V2020_09_01::Models::HostNameBinding
      end
      def http_settings_routes
        Azure::Web::Mgmt::V2020_09_01::Models::HttpSettingsRoutes
      end
      def http_settings
        Azure::Web::Mgmt::V2020_09_01::Models::HttpSettings
      end
      def twitter_registration
        Azure::Web::Mgmt::V2020_09_01::Models::TwitterRegistration
      end
      def twitter
        Azure::Web::Mgmt::V2020_09_01::Models::Twitter
      end
      def identity_providers
        Azure::Web::Mgmt::V2020_09_01::Models::IdentityProviders
      end
      def login_routes
        Azure::Web::Mgmt::V2020_09_01::Models::LoginRoutes
      end
      def token_store
        Azure::Web::Mgmt::V2020_09_01::Models::TokenStore
      end
      def nonce
        Azure::Web::Mgmt::V2020_09_01::Models::Nonce
      end
      def login
        Azure::Web::Mgmt::V2020_09_01::Models::Login
      end
      def msdeploy
        Azure::Web::Mgmt::V2020_09_01::Models::MSDeploy
      end
      def msdeploy_log
        Azure::Web::Mgmt::V2020_09_01::Models::MSDeployLog
      end
      def msdeploy_status
        Azure::Web::Mgmt::V2020_09_01::Models::MSDeployStatus
      end
      def migrate_my_sql_request
        Azure::Web::Mgmt::V2020_09_01::Models::MigrateMySqlRequest
      end
      def migrate_my_sql_status
        Azure::Web::Mgmt::V2020_09_01::Models::MigrateMySqlStatus
      end
      def relay_service_connection_entity
        Azure::Web::Mgmt::V2020_09_01::Models::RelayServiceConnectionEntity
      end
      def network_features
        Azure::Web::Mgmt::V2020_09_01::Models::NetworkFeatures
      end
      def premier_add_on
        Azure::Web::Mgmt::V2020_09_01::Models::PremierAddOn
      end
      def premier_add_on_patch_resource
        Azure::Web::Mgmt::V2020_09_01::Models::PremierAddOnPatchResource
      end
      def private_access
        Azure::Web::Mgmt::V2020_09_01::Models::PrivateAccess
      end
      def private_endpoint_connection_resource
        Azure::Web::Mgmt::V2020_09_01::Models::PrivateEndpointConnectionResource
      end
      def private_link_connection_approval_request_resource
        Azure::Web::Mgmt::V2020_09_01::Models::PrivateLinkConnectionApprovalRequestResource
      end
      def process_thread_info
        Azure::Web::Mgmt::V2020_09_01::Models::ProcessThreadInfo
      end
      def process_module_info
        Azure::Web::Mgmt::V2020_09_01::Models::ProcessModuleInfo
      end
      def process_info
        Azure::Web::Mgmt::V2020_09_01::Models::ProcessInfo
      end
      def public_certificate
        Azure::Web::Mgmt::V2020_09_01::Models::PublicCertificate
      end
      def restore_request
        Azure::Web::Mgmt::V2020_09_01::Models::RestoreRequest
      end
      def site_auth_settings
        Azure::Web::Mgmt::V2020_09_01::Models::SiteAuthSettings
      end
      def site_auth_settings_v2
        Azure::Web::Mgmt::V2020_09_01::Models::SiteAuthSettingsV2
      end
      def site_config_resource
        Azure::Web::Mgmt::V2020_09_01::Models::SiteConfigResource
      end
      def site_configuration_snapshot_info
        Azure::Web::Mgmt::V2020_09_01::Models::SiteConfigurationSnapshotInfo
      end
      def site_extension_info
        Azure::Web::Mgmt::V2020_09_01::Models::SiteExtensionInfo
      end
      def site_logs_config
        Azure::Web::Mgmt::V2020_09_01::Models::SiteLogsConfig
      end
      def site_patch_resource
        Azure::Web::Mgmt::V2020_09_01::Models::SitePatchResource
      end
      def site_php_error_log_flag
        Azure::Web::Mgmt::V2020_09_01::Models::SitePhpErrorLogFlag
      end
      def site_source_control
        Azure::Web::Mgmt::V2020_09_01::Models::SiteSourceControl
      end
      def slot_config_names_resource
        Azure::Web::Mgmt::V2020_09_01::Models::SlotConfigNamesResource
      end
      def slot_difference
        Azure::Web::Mgmt::V2020_09_01::Models::SlotDifference
      end
      def snapshot_restore_request
        Azure::Web::Mgmt::V2020_09_01::Models::SnapshotRestoreRequest
      end
      def storage_migration_options
        Azure::Web::Mgmt::V2020_09_01::Models::StorageMigrationOptions
      end
      def storage_migration_response
        Azure::Web::Mgmt::V2020_09_01::Models::StorageMigrationResponse
      end
      def swift_virtual_network
        Azure::Web::Mgmt::V2020_09_01::Models::SwiftVirtualNetwork
      end
      def triggered_job_run
        Azure::Web::Mgmt::V2020_09_01::Models::TriggeredJobRun
      end
      def triggered_job_history
        Azure::Web::Mgmt::V2020_09_01::Models::TriggeredJobHistory
      end
      def triggered_web_job
        Azure::Web::Mgmt::V2020_09_01::Models::TriggeredWebJob
      end
      def web_site_instance_status
        Azure::Web::Mgmt::V2020_09_01::Models::WebSiteInstanceStatus
      end
      def web_job
        Azure::Web::Mgmt::V2020_09_01::Models::WebJob
      end
      def static_site_armresource
        Azure::Web::Mgmt::V2020_09_01::Models::StaticSiteARMResource
      end
      def static_site_build_armresource
        Azure::Web::Mgmt::V2020_09_01::Models::StaticSiteBuildARMResource
      end
      def static_site_custom_domain_overview_armresource
        Azure::Web::Mgmt::V2020_09_01::Models::StaticSiteCustomDomainOverviewARMResource
      end
      def static_site_function_overview_armresource
        Azure::Web::Mgmt::V2020_09_01::Models::StaticSiteFunctionOverviewARMResource
      end
      def static_site_patch_resource
        Azure::Web::Mgmt::V2020_09_01::Models::StaticSitePatchResource
      end
      def static_site_reset_properties_armresource
        Azure::Web::Mgmt::V2020_09_01::Models::StaticSiteResetPropertiesARMResource
      end
      def static_site_user_armresource
        Azure::Web::Mgmt::V2020_09_01::Models::StaticSiteUserARMResource
      end
      def static_site_user_invitation_request_resource
        Azure::Web::Mgmt::V2020_09_01::Models::StaticSiteUserInvitationRequestResource
      end
      def static_site_user_invitation_response_resource
        Azure::Web::Mgmt::V2020_09_01::Models::StaticSiteUserInvitationResponseResource
      end
      def static_sites_workflow_preview
        Azure::Web::Mgmt::V2020_09_01::Models::StaticSitesWorkflowPreview
      end
      def static_sites_workflow_preview_request
        Azure::Web::Mgmt::V2020_09_01::Models::StaticSitesWorkflowPreviewRequest
      end
      def address_response
        Azure::Web::Mgmt::V2020_09_01::Models::AddressResponse
      end
      def app_service_environment_resource
        Azure::Web::Mgmt::V2020_09_01::Models::AppServiceEnvironmentResource
      end
      def app_service_environment_patch_resource
        Azure::Web::Mgmt::V2020_09_01::Models::AppServiceEnvironmentPatchResource
      end
      def resource_metric_definition
        Azure::Web::Mgmt::V2020_09_01::Models::ResourceMetricDefinition
      end
      def usage
        Azure::Web::Mgmt::V2020_09_01::Models::Usage
      end
      def worker_pool_resource
        Azure::Web::Mgmt::V2020_09_01::Models::WorkerPoolResource
      end
      def app_service_plan_patch_resource
        Azure::Web::Mgmt::V2020_09_01::Models::AppServicePlanPatchResource
      end
      def hybrid_connection_key
        Azure::Web::Mgmt::V2020_09_01::Models::HybridConnectionKey
      end
      def hybrid_connection_limits
        Azure::Web::Mgmt::V2020_09_01::Models::HybridConnectionLimits
      end
      def resource_health_metadata
        Azure::Web::Mgmt::V2020_09_01::Models::ResourceHealthMetadata
      end
      def key_vault_secret_status
        Azure::Web::Mgmt::V2020_09_01::Models::KeyVaultSecretStatus
      end
      def certificate_product_type
        Azure::Web::Mgmt::V2020_09_01::Models::CertificateProductType
      end
      def provisioning_state
        Azure::Web::Mgmt::V2020_09_01::Models::ProvisioningState
      end
      def certificate_order_status
        Azure::Web::Mgmt::V2020_09_01::Models::CertificateOrderStatus
      end
      def certificate_order_action_type
        Azure::Web::Mgmt::V2020_09_01::Models::CertificateOrderActionType
      end
      def created_by_type
        Azure::Web::Mgmt::V2020_09_01::Models::CreatedByType
      end
      def route_type
        Azure::Web::Mgmt::V2020_09_01::Models::RouteType
      end
      def managed_service_identity_type
        Azure::Web::Mgmt::V2020_09_01::Models::ManagedServiceIdentityType
      end
      def ip_filter_tag
        Azure::Web::Mgmt::V2020_09_01::Models::IpFilterTag
      end
      def auto_heal_action_type
        Azure::Web::Mgmt::V2020_09_01::Models::AutoHealActionType
      end
      def connection_string_type
        Azure::Web::Mgmt::V2020_09_01::Models::ConnectionStringType
      end
      def scm_type
        Azure::Web::Mgmt::V2020_09_01::Models::ScmType
      end
      def managed_pipeline_mode
        Azure::Web::Mgmt::V2020_09_01::Models::ManagedPipelineMode
      end
      def site_load_balancing
        Azure::Web::Mgmt::V2020_09_01::Models::SiteLoadBalancing
      end
      def supported_tls_versions
        Azure::Web::Mgmt::V2020_09_01::Models::SupportedTlsVersions
      end
      def ftps_state
        Azure::Web::Mgmt::V2020_09_01::Models::FtpsState
      end
      def ssl_state
        Azure::Web::Mgmt::V2020_09_01::Models::SslState
      end
      def host_type
        Azure::Web::Mgmt::V2020_09_01::Models::HostType
      end
      def usage_state
        Azure::Web::Mgmt::V2020_09_01::Models::UsageState
      end
      def site_availability_state
        Azure::Web::Mgmt::V2020_09_01::Models::SiteAvailabilityState
      end
      def client_cert_mode
        Azure::Web::Mgmt::V2020_09_01::Models::ClientCertMode
      end
      def redundancy_mode
        Azure::Web::Mgmt::V2020_09_01::Models::RedundancyMode
      end
      def status_options
        Azure::Web::Mgmt::V2020_09_01::Models::StatusOptions
      end
      def domain_status
        Azure::Web::Mgmt::V2020_09_01::Models::DomainStatus
      end
      def azure_resource_type
        Azure::Web::Mgmt::V2020_09_01::Models::AzureResourceType
      end
      def custom_host_name_dns_record_type
        Azure::Web::Mgmt::V2020_09_01::Models::CustomHostNameDnsRecordType
      end
      def host_name_type
        Azure::Web::Mgmt::V2020_09_01::Models::HostNameType
      end
      def dns_type
        Azure::Web::Mgmt::V2020_09_01::Models::DnsType
      end
      def domain_type
        Azure::Web::Mgmt::V2020_09_01::Models::DomainType
      end
      def hosting_environment_status
        Azure::Web::Mgmt::V2020_09_01::Models::HostingEnvironmentStatus
      end
      def load_balancing_mode
        Azure::Web::Mgmt::V2020_09_01::Models::LoadBalancingMode
      end
      def compute_mode_options
        Azure::Web::Mgmt::V2020_09_01::Models::ComputeModeOptions
      end
      def worker_size_options
        Azure::Web::Mgmt::V2020_09_01::Models::WorkerSizeOptions
      end
      def access_control_entry_action
        Azure::Web::Mgmt::V2020_09_01::Models::AccessControlEntryAction
      end
      def operation_status
        Azure::Web::Mgmt::V2020_09_01::Models::OperationStatus
      end
      def issue_type
        Azure::Web::Mgmt::V2020_09_01::Models::IssueType
      end
      def solution_type
        Azure::Web::Mgmt::V2020_09_01::Models::SolutionType
      end
      def rendering_type
        Azure::Web::Mgmt::V2020_09_01::Models::RenderingType
      end
      def resource_scope_type
        Azure::Web::Mgmt::V2020_09_01::Models::ResourceScopeType
      end
      def notification_level
        Azure::Web::Mgmt::V2020_09_01::Models::NotificationLevel
      end
      def channels
        Azure::Web::Mgmt::V2020_09_01::Models::Channels
      end
      def app_service_plan_restrictions
        Azure::Web::Mgmt::V2020_09_01::Models::AppServicePlanRestrictions
      end
      def in_availability_reason_type
        Azure::Web::Mgmt::V2020_09_01::Models::InAvailabilityReasonType
      end
      def check_name_resource_types
        Azure::Web::Mgmt::V2020_09_01::Models::CheckNameResourceTypes
      end
      def validate_resource_types
        Azure::Web::Mgmt::V2020_09_01::Models::ValidateResourceTypes
      end
      def log_level
        Azure::Web::Mgmt::V2020_09_01::Models::LogLevel
      end
      def azure_storage_type
        Azure::Web::Mgmt::V2020_09_01::Models::AzureStorageType
      end
      def azure_storage_state
        Azure::Web::Mgmt::V2020_09_01::Models::AzureStorageState
      end
      def backup_item_status
        Azure::Web::Mgmt::V2020_09_01::Models::BackupItemStatus
      end
      def database_type
        Azure::Web::Mgmt::V2020_09_01::Models::DatabaseType
      end
      def frequency_unit
        Azure::Web::Mgmt::V2020_09_01::Models::FrequencyUnit
      end
      def continuous_web_job_status
        Azure::Web::Mgmt::V2020_09_01::Models::ContinuousWebJobStatus
      end
      def web_job_type
        Azure::Web::Mgmt::V2020_09_01::Models::WebJobType
      end
      def cookie_expiration_convention
        Azure::Web::Mgmt::V2020_09_01::Models::CookieExpirationConvention
      end
      def publishing_profile_format
        Azure::Web::Mgmt::V2020_09_01::Models::PublishingProfileFormat
      end
      def dns_verification_test_result
        Azure::Web::Mgmt::V2020_09_01::Models::DnsVerificationTestResult
      end
      def client_credential_method
        Azure::Web::Mgmt::V2020_09_01::Models::ClientCredentialMethod
      end
      def forward_proxy_convention
        Azure::Web::Mgmt::V2020_09_01::Models::ForwardProxyConvention
      end
      def unauthenticated_client_action_v2
        Azure::Web::Mgmt::V2020_09_01::Models::UnauthenticatedClientActionV2
      end
      def msdeploy_log_entry_type
        Azure::Web::Mgmt::V2020_09_01::Models::MSDeployLogEntryType
      end
      def msdeploy_provisioning_state
        Azure::Web::Mgmt::V2020_09_01::Models::MSDeployProvisioningState
      end
      def my_sql_migration_type
        Azure::Web::Mgmt::V2020_09_01::Models::MySqlMigrationType
      end
      def public_certificate_location
        Azure::Web::Mgmt::V2020_09_01::Models::PublicCertificateLocation
      end
      def backup_restore_operation_type
        Azure::Web::Mgmt::V2020_09_01::Models::BackupRestoreOperationType
      end
      def unauthenticated_client_action
        Azure::Web::Mgmt::V2020_09_01::Models::UnauthenticatedClientAction
      end
      def built_in_authentication_provider
        Azure::Web::Mgmt::V2020_09_01::Models::BuiltInAuthenticationProvider
      end
      def clone_ability_result
        Azure::Web::Mgmt::V2020_09_01::Models::CloneAbilityResult
      end
      def site_extension_type
        Azure::Web::Mgmt::V2020_09_01::Models::SiteExtensionType
      end
      def triggered_web_job_status
        Azure::Web::Mgmt::V2020_09_01::Models::TriggeredWebJobStatus
      end
      def site_runtime_state
        Azure::Web::Mgmt::V2020_09_01::Models::SiteRuntimeState
      end
      def build_status
        Azure::Web::Mgmt::V2020_09_01::Models::BuildStatus
      end
      def trigger_types
        Azure::Web::Mgmt::V2020_09_01::Models::TriggerTypes
      end
      def sku_name
        Azure::Web::Mgmt::V2020_09_01::Models::SkuName
      end
    end
  end
end
