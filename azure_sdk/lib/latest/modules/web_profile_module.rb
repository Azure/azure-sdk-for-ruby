# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_web'

module Azure::Profiles::Latest
  module Web
    module Mgmt
      Domains = Azure::Web::Mgmt::V2015_04_01::Domains
      DomainRegistrationProvider = Azure::Web::Mgmt::V2015_04_01::DomainRegistrationProvider
      TopLevelDomains = Azure::Web::Mgmt::V2015_04_01::TopLevelDomains
      AppServiceCertificateOrders = Azure::Web::Mgmt::V2015_08_01::AppServiceCertificateOrders
      CertificateRegistrationProvider = Azure::Web::Mgmt::V2015_08_01::CertificateRegistrationProvider
      Recommendations = Azure::Web::Mgmt::V2016_03_01::Recommendations
      DeletedWebApps = Azure::Web::Mgmt::V2016_03_01::DeletedWebApps
      Diagnostics = Azure::Web::Mgmt::V2016_03_01::Diagnostics
      Certificates = Azure::Web::Mgmt::V2016_03_01::Certificates
      Provider = Azure::Web::Mgmt::V2016_03_01::Provider
      WebApps = Azure::Web::Mgmt::V2016_08_01::WebApps
      AppServiceEnvironments = Azure::Web::Mgmt::V2016_09_01::AppServiceEnvironments
      AppServicePlans = Azure::Web::Mgmt::V2016_09_01::AppServicePlans

      module Models
        TldLegalAgreementCollection = Azure::Web::Mgmt::V2015_04_01::Models::TldLegalAgreementCollection
        DomainOwnershipIdentifier = Azure::Web::Mgmt::V2015_04_01::Models::DomainOwnershipIdentifier
        DomainPatchResource = Azure::Web::Mgmt::V2015_04_01::Models::DomainPatchResource
        TopLevelDomain = Azure::Web::Mgmt::V2015_04_01::Models::TopLevelDomain
        DomainStatus = Azure::Web::Mgmt::V2015_04_01::Models::DomainStatus
        DnsType = Azure::Web::Mgmt::V2015_04_01::Models::DnsType
        DomainType = Azure::Web::Mgmt::V2015_04_01::Models::DomainType
        ErrorResponse = Azure::Web::Mgmt::V2015_04_01::Models::ErrorResponse
        Domain = Azure::Web::Mgmt::V2015_04_01::Models::Domain
        Contact = Azure::Web::Mgmt::V2015_04_01::Models::Contact
        DomainPurchaseConsent = Azure::Web::Mgmt::V2015_04_01::Models::DomainPurchaseConsent
        DomainAvailablilityCheckResult = Azure::Web::Mgmt::V2015_04_01::Models::DomainAvailablilityCheckResult
        DomainControlCenterSsoRequest = Azure::Web::Mgmt::V2015_04_01::Models::DomainControlCenterSsoRequest
        DomainRecommendationSearchParameters = Azure::Web::Mgmt::V2015_04_01::Models::DomainRecommendationSearchParameters
        DomainOwnershipIdentifierCollection = Azure::Web::Mgmt::V2015_04_01::Models::DomainOwnershipIdentifierCollection
        Address = Azure::Web::Mgmt::V2015_04_01::Models::Address
        NameIdentifierCollection = Azure::Web::Mgmt::V2015_04_01::Models::NameIdentifierCollection
        HostName = Azure::Web::Mgmt::V2015_04_01::Models::HostName
        TopLevelDomainCollection = Azure::Web::Mgmt::V2015_04_01::Models::TopLevelDomainCollection
        DomainCollection = Azure::Web::Mgmt::V2015_04_01::Models::DomainCollection
        TldLegalAgreement = Azure::Web::Mgmt::V2015_04_01::Models::TldLegalAgreement
        TopLevelDomainAgreementOption = Azure::Web::Mgmt::V2015_04_01::Models::TopLevelDomainAgreementOption
        CertificateOrderActionType = Azure::Web::Mgmt::V2015_08_01::Models::CertificateOrderActionType
        CertificateEmail = Azure::Web::Mgmt::V2015_08_01::Models::CertificateEmail
        RenewCertificateOrderRequest = Azure::Web::Mgmt::V2015_08_01::Models::RenewCertificateOrderRequest
        AppServiceCertificateResource = Azure::Web::Mgmt::V2015_08_01::Models::AppServiceCertificateResource
        CertificateProductType = Azure::Web::Mgmt::V2015_08_01::Models::CertificateProductType
        CertificateOrderStatus = Azure::Web::Mgmt::V2015_08_01::Models::CertificateOrderStatus
        AppServiceCertificate = Azure::Web::Mgmt::V2015_08_01::Models::AppServiceCertificate
        AppServiceCertificateCollection = Azure::Web::Mgmt::V2015_08_01::Models::AppServiceCertificateCollection
        AppServiceCertificateOrderCollection = Azure::Web::Mgmt::V2015_08_01::Models::AppServiceCertificateOrderCollection
        SiteSealRequest = Azure::Web::Mgmt::V2015_08_01::Models::SiteSealRequest
        AppServiceCertificateOrder = Azure::Web::Mgmt::V2015_08_01::Models::AppServiceCertificateOrder
        CertificateOrderAction = Azure::Web::Mgmt::V2015_08_01::Models::CertificateOrderAction
        CertificateDetails = Azure::Web::Mgmt::V2015_08_01::Models::CertificateDetails
        ReissueCertificateOrderRequest = Azure::Web::Mgmt::V2015_08_01::Models::ReissueCertificateOrderRequest
        AppServiceCertificateOrderPatchResource = Azure::Web::Mgmt::V2015_08_01::Models::AppServiceCertificateOrderPatchResource
        SiteSeal = Azure::Web::Mgmt::V2015_08_01::Models::SiteSeal
        AppServiceCertificatePatchResource = Azure::Web::Mgmt::V2015_08_01::Models::AppServiceCertificatePatchResource
        ValidateResourceTypes = Azure::Web::Mgmt::V2016_03_01::Models::ValidateResourceTypes
        AppServicePlanRestrictions = Azure::Web::Mgmt::V2016_03_01::Models::AppServicePlanRestrictions
        SolutionType = Azure::Web::Mgmt::V2016_03_01::Models::SolutionType
        NotificationLevel = Azure::Web::Mgmt::V2016_03_01::Models::NotificationLevel
        VnetValidationTestFailure = Azure::Web::Mgmt::V2016_03_01::Models::VnetValidationTestFailure
        MetricAvailability = Azure::Web::Mgmt::V2016_03_01::Models::MetricAvailability
        CheckNameResourceTypes = Azure::Web::Mgmt::V2016_03_01::Models::CheckNameResourceTypes
        ServiceSpecification = Azure::Web::Mgmt::V2016_03_01::Models::ServiceSpecification
        Channels = Azure::Web::Mgmt::V2016_03_01::Models::Channels
        InAvailabilityReasonType = Azure::Web::Mgmt::V2016_03_01::Models::InAvailabilityReasonType
        IssueType = Azure::Web::Mgmt::V2016_03_01::Models::IssueType
        SkuName = Azure::Web::Mgmt::V2016_03_01::Models::SkuName
        KeyVaultSecretStatus = Azure::Web::Mgmt::V2016_03_01::Models::KeyVaultSecretStatus
        Certificate = Azure::Web::Mgmt::V2016_03_01::Models::Certificate
        HostingEnvironmentDeploymentInfo = Azure::Web::Mgmt::V2016_03_01::Models::HostingEnvironmentDeploymentInfo
        ValidateResponse = Azure::Web::Mgmt::V2016_03_01::Models::ValidateResponse
        ValidateRequest = Azure::Web::Mgmt::V2016_03_01::Models::ValidateRequest
        ResourceNameAvailabilityRequest = Azure::Web::Mgmt::V2016_03_01::Models::ResourceNameAvailabilityRequest
        PremierAddOnOfferCollection = Azure::Web::Mgmt::V2016_03_01::Models::PremierAddOnOfferCollection
        AppServiceEnvironment = Azure::Web::Mgmt::V2016_03_01::Models::AppServiceEnvironment
        GeoRegionCollection = Azure::Web::Mgmt::V2016_03_01::Models::GeoRegionCollection
        CsmMoveResourceEnvelope = Azure::Web::Mgmt::V2016_03_01::Models::CsmMoveResourceEnvelope
        DeploymentLocations = Azure::Web::Mgmt::V2016_03_01::Models::DeploymentLocations
        SourceControlCollection = Azure::Web::Mgmt::V2016_03_01::Models::SourceControlCollection
        GlobalCsmSkuDescription = Azure::Web::Mgmt::V2016_03_01::Models::GlobalCsmSkuDescription
        DeletedWebAppCollection = Azure::Web::Mgmt::V2016_03_01::Models::DeletedWebAppCollection
        Solution = Azure::Web::Mgmt::V2016_03_01::Models::Solution
        DeletedSite = Azure::Web::Mgmt::V2016_03_01::Models::DeletedSite
        ValidateResponseError = Azure::Web::Mgmt::V2016_03_01::Models::ValidateResponseError
        AbnormalTimePeriod = Azure::Web::Mgmt::V2016_03_01::Models::AbnormalTimePeriod
        DetectorAbnormalTimePeriod = Azure::Web::Mgmt::V2016_03_01::Models::DetectorAbnormalTimePeriod
        RecommendationRule = Azure::Web::Mgmt::V2016_03_01::Models::RecommendationRule
        DiagnosticMetricSample = Azure::Web::Mgmt::V2016_03_01::Models::DiagnosticMetricSample
        ResourceNameAvailability = Azure::Web::Mgmt::V2016_03_01::Models::ResourceNameAvailability
        ResponseMetaData = Azure::Web::Mgmt::V2016_03_01::Models::ResponseMetaData
        AnalysisData = Azure::Web::Mgmt::V2016_03_01::Models::AnalysisData
        DiagnosticMetricSet = Azure::Web::Mgmt::V2016_03_01::Models::DiagnosticMetricSet
        SkuInfos = Azure::Web::Mgmt::V2016_03_01::Models::SkuInfos
        DiagnosticDetectorCollection = Azure::Web::Mgmt::V2016_03_01::Models::DiagnosticDetectorCollection
        Recommendation = Azure::Web::Mgmt::V2016_03_01::Models::Recommendation
        DataSource = Azure::Web::Mgmt::V2016_03_01::Models::DataSource
        DiagnosticCategoryCollection = Azure::Web::Mgmt::V2016_03_01::Models::DiagnosticCategoryCollection
        CertificateCollection = Azure::Web::Mgmt::V2016_03_01::Models::CertificateCollection
        DetectorDefinition = Azure::Web::Mgmt::V2016_03_01::Models::DetectorDefinition
        CertificatePatchResource = Azure::Web::Mgmt::V2016_03_01::Models::CertificatePatchResource
        DiagnosticAnalysisCollection = Azure::Web::Mgmt::V2016_03_01::Models::DiagnosticAnalysisCollection
        AnalysisDefinition = Azure::Web::Mgmt::V2016_03_01::Models::AnalysisDefinition
        DiagnosticAnalysis = Azure::Web::Mgmt::V2016_03_01::Models::DiagnosticAnalysis
        DiagnosticCategory = Azure::Web::Mgmt::V2016_03_01::Models::DiagnosticCategory
        CsmOperationDisplay = Azure::Web::Mgmt::V2016_03_01::Models::CsmOperationDisplay
        CsmOperationCollection = Azure::Web::Mgmt::V2016_03_01::Models::CsmOperationCollection
        SourceControl = Azure::Web::Mgmt::V2016_03_01::Models::SourceControl
        GeoRegion = Azure::Web::Mgmt::V2016_03_01::Models::GeoRegion
        DiagnosticDetectorResponse = Azure::Web::Mgmt::V2016_03_01::Models::DiagnosticDetectorResponse
        Dimension = Azure::Web::Mgmt::V2016_03_01::Models::Dimension
        MetricSpecification = Azure::Web::Mgmt::V2016_03_01::Models::MetricSpecification
        VnetValidationFailureDetails = Azure::Web::Mgmt::V2016_03_01::Models::VnetValidationFailureDetails
        PremierAddOnOffer = Azure::Web::Mgmt::V2016_03_01::Models::PremierAddOnOffer
        VnetParameters = Azure::Web::Mgmt::V2016_03_01::Models::VnetParameters
        ResourceScopeType = Azure::Web::Mgmt::V2016_03_01::Models::ResourceScopeType
        NameIdentifier = Azure::Web::Mgmt::V2016_03_01::Models::NameIdentifier
        CsmOperationDescription = Azure::Web::Mgmt::V2016_03_01::Models::CsmOperationDescription
        CsmOperationDescriptionProperties = Azure::Web::Mgmt::V2016_03_01::Models::CsmOperationDescriptionProperties
        BackupRequest = Azure::Web::Mgmt::V2016_08_01::Models::BackupRequest
        BackupSchedule = Azure::Web::Mgmt::V2016_08_01::Models::BackupSchedule
        Deployment = Azure::Web::Mgmt::V2016_08_01::Models::Deployment
        FunctionSecrets = Azure::Web::Mgmt::V2016_08_01::Models::FunctionSecrets
        PublicCertificate = Azure::Web::Mgmt::V2016_08_01::Models::PublicCertificate
        RestoreResponse = Azure::Web::Mgmt::V2016_08_01::Models::RestoreResponse
        SiteAuthSettings = Azure::Web::Mgmt::V2016_08_01::Models::SiteAuthSettings
        MigrateMySqlStatus = Azure::Web::Mgmt::V2016_08_01::Models::MigrateMySqlStatus
        SiteConfigurationSnapshotInfo = Azure::Web::Mgmt::V2016_08_01::Models::SiteConfigurationSnapshotInfo
        RestoreRequest = Azure::Web::Mgmt::V2016_08_01::Models::RestoreRequest
        SiteInstance = Azure::Web::Mgmt::V2016_08_01::Models::SiteInstance
        SiteLogsConfig = Azure::Web::Mgmt::V2016_08_01::Models::SiteLogsConfig
        SitePhpErrorLogFlag = Azure::Web::Mgmt::V2016_08_01::Models::SitePhpErrorLogFlag
        SlotConfigNamesResource = Azure::Web::Mgmt::V2016_08_01::Models::SlotConfigNamesResource
        SlotDifference = Azure::Web::Mgmt::V2016_08_01::Models::SlotDifference
        SiteConfigResource = Azure::Web::Mgmt::V2016_08_01::Models::SiteConfigResource
        StorageMigrationResponse = Azure::Web::Mgmt::V2016_08_01::Models::StorageMigrationResponse
        SiteExtensionInfo = Azure::Web::Mgmt::V2016_08_01::Models::SiteExtensionInfo
        TriggeredJobRun = Azure::Web::Mgmt::V2016_08_01::Models::TriggeredJobRun
        TriggeredJobHistory = Azure::Web::Mgmt::V2016_08_01::Models::TriggeredJobHistory
        SitePatchResource = Azure::Web::Mgmt::V2016_08_01::Models::SitePatchResource
        WebJob = Azure::Web::Mgmt::V2016_08_01::Models::WebJob
        SiteSourceControl = Azure::Web::Mgmt::V2016_08_01::Models::SiteSourceControl
        BackupItemStatus = Azure::Web::Mgmt::V2016_08_01::Models::BackupItemStatus
        StorageMigrationOptions = Azure::Web::Mgmt::V2016_08_01::Models::StorageMigrationOptions
        StringDictionary = Azure::Web::Mgmt::V2016_08_01::Models::StringDictionary
        TriggeredWebJob = Azure::Web::Mgmt::V2016_08_01::Models::TriggeredWebJob
        AzureResourceType = Azure::Web::Mgmt::V2016_08_01::Models::AzureResourceType
        LogLevel = Azure::Web::Mgmt::V2016_08_01::Models::LogLevel
        Snapshot = Azure::Web::Mgmt::V2016_08_01::Models::Snapshot
        BackupRestoreOperationType = Azure::Web::Mgmt::V2016_08_01::Models::BackupRestoreOperationType
        ContinuousWebJobStatus = Azure::Web::Mgmt::V2016_08_01::Models::ContinuousWebJobStatus
        PublishingProfileFormat = Azure::Web::Mgmt::V2016_08_01::Models::PublishingProfileFormat
        DnsVerificationTestResult = Azure::Web::Mgmt::V2016_08_01::Models::DnsVerificationTestResult
        MSDeployLogEntryType = Azure::Web::Mgmt::V2016_08_01::Models::MSDeployLogEntryType
        MySqlMigrationType = Azure::Web::Mgmt::V2016_08_01::Models::MySqlMigrationType
        PublicCertificateLocation = Azure::Web::Mgmt::V2016_08_01::Models::PublicCertificateLocation
        DatabaseType = Azure::Web::Mgmt::V2016_08_01::Models::DatabaseType
        FrequencyUnit = Azure::Web::Mgmt::V2016_08_01::Models::FrequencyUnit
        CustomHostNameDnsRecordType = Azure::Web::Mgmt::V2016_08_01::Models::CustomHostNameDnsRecordType
        HostNameType = Azure::Web::Mgmt::V2016_08_01::Models::HostNameType
        WebJobType = Azure::Web::Mgmt::V2016_08_01::Models::WebJobType
        MSDeployProvisioningState = Azure::Web::Mgmt::V2016_08_01::Models::MSDeployProvisioningState
        UnauthenticatedClientAction = Azure::Web::Mgmt::V2016_08_01::Models::UnauthenticatedClientAction
        CloneAbilityResult = Azure::Web::Mgmt::V2016_08_01::Models::CloneAbilityResult
        SiteExtensionType = Azure::Web::Mgmt::V2016_08_01::Models::SiteExtensionType
        BuiltInAuthenticationProvider = Azure::Web::Mgmt::V2016_08_01::Models::BuiltInAuthenticationProvider
        TriggeredWebJobStatus = Azure::Web::Mgmt::V2016_08_01::Models::TriggeredWebJobStatus
        AzureTableStorageApplicationLogsConfig = Azure::Web::Mgmt::V2016_08_01::Models::AzureTableStorageApplicationLogsConfig
        ApplicationLogsConfig = Azure::Web::Mgmt::V2016_08_01::Models::ApplicationLogsConfig
        DatabaseBackupSetting = Azure::Web::Mgmt::V2016_08_01::Models::DatabaseBackupSetting
        BackupItemCollection = Azure::Web::Mgmt::V2016_08_01::Models::BackupItemCollection
        ProcessInfoCollection = Azure::Web::Mgmt::V2016_08_01::Models::ProcessInfoCollection
        ConnStringValueTypePair = Azure::Web::Mgmt::V2016_08_01::Models::ConnStringValueTypePair
        ProcessModuleInfoCollection = Azure::Web::Mgmt::V2016_08_01::Models::ProcessModuleInfoCollection
        ProcessThreadInfoCollection = Azure::Web::Mgmt::V2016_08_01::Models::ProcessThreadInfoCollection
        CsmPublishingProfileOptions = Azure::Web::Mgmt::V2016_08_01::Models::CsmPublishingProfileOptions
        WebAppInstanceCollection = Azure::Web::Mgmt::V2016_08_01::Models::WebAppInstanceCollection
        TriggeredWebJobCollection = Azure::Web::Mgmt::V2016_08_01::Models::TriggeredWebJobCollection
        PublicCertificateCollection = Azure::Web::Mgmt::V2016_08_01::Models::PublicCertificateCollection
        SiteCloneability = Azure::Web::Mgmt::V2016_08_01::Models::SiteCloneability
        PerfMonSet = Azure::Web::Mgmt::V2016_08_01::Models::PerfMonSet
        TriggeredJobHistoryCollection = Azure::Web::Mgmt::V2016_08_01::Models::TriggeredJobHistoryCollection
        IdentifierCollection = Azure::Web::Mgmt::V2016_08_01::Models::IdentifierCollection
        FileSystemApplicationLogsConfig = Azure::Web::Mgmt::V2016_08_01::Models::FileSystemApplicationLogsConfig
        SnapshotCollection = Azure::Web::Mgmt::V2016_08_01::Models::SnapshotCollection
        SiteCloneabilityCriterion = Azure::Web::Mgmt::V2016_08_01::Models::SiteCloneabilityCriterion
        HostNameBindingCollection = Azure::Web::Mgmt::V2016_08_01::Models::HostNameBindingCollection
        EnabledConfig = Azure::Web::Mgmt::V2016_08_01::Models::EnabledConfig
        SlotDifferenceCollection = Azure::Web::Mgmt::V2016_08_01::Models::SlotDifferenceCollection
        PerfMonCounterCollection = Azure::Web::Mgmt::V2016_08_01::Models::PerfMonCounterCollection
        WebJobCollection = Azure::Web::Mgmt::V2016_08_01::Models::WebJobCollection
        ContinuousWebJobCollection = Azure::Web::Mgmt::V2016_08_01::Models::ContinuousWebJobCollection
        FileSystemHttpLogsConfig = Azure::Web::Mgmt::V2016_08_01::Models::FileSystemHttpLogsConfig
        AzureBlobStorageApplicationLogsConfig = Azure::Web::Mgmt::V2016_08_01::Models::AzureBlobStorageApplicationLogsConfig
        MSDeployLogEntry = Azure::Web::Mgmt::V2016_08_01::Models::MSDeployLogEntry
        FunctionEnvelopeCollection = Azure::Web::Mgmt::V2016_08_01::Models::FunctionEnvelopeCollection
        DeploymentCollection = Azure::Web::Mgmt::V2016_08_01::Models::DeploymentCollection
        AzureBlobStorageHttpLogsConfig = Azure::Web::Mgmt::V2016_08_01::Models::AzureBlobStorageHttpLogsConfig
        SiteConfigResourceCollection = Azure::Web::Mgmt::V2016_08_01::Models::SiteConfigResourceCollection
        PerfMonSample = Azure::Web::Mgmt::V2016_08_01::Models::PerfMonSample
        PerfMonResponse = Azure::Web::Mgmt::V2016_08_01::Models::PerfMonResponse
        SiteConfigurationSnapshotInfoCollection = Azure::Web::Mgmt::V2016_08_01::Models::SiteConfigurationSnapshotInfoCollection
        HttpLogsConfig = Azure::Web::Mgmt::V2016_08_01::Models::HttpLogsConfig
        ConnectionStringDictionary = Azure::Web::Mgmt::V2016_08_01::Models::ConnectionStringDictionary
        CsmSlotEntity = Azure::Web::Mgmt::V2016_08_01::Models::CsmSlotEntity
        BackupItem = Azure::Web::Mgmt::V2016_08_01::Models::BackupItem
        ContinuousWebJob = Azure::Web::Mgmt::V2016_08_01::Models::ContinuousWebJob
        FunctionEnvelope = Azure::Web::Mgmt::V2016_08_01::Models::FunctionEnvelope
        HostNameBinding = Azure::Web::Mgmt::V2016_08_01::Models::HostNameBinding
        MSDeployLog = Azure::Web::Mgmt::V2016_08_01::Models::MSDeployLog
        MigrateMySqlRequest = Azure::Web::Mgmt::V2016_08_01::Models::MigrateMySqlRequest
        SiteExtensionInfoCollection = Azure::Web::Mgmt::V2016_08_01::Models::SiteExtensionInfoCollection
        PremierAddOn = Azure::Web::Mgmt::V2016_08_01::Models::PremierAddOn
        MSDeployStatus = Azure::Web::Mgmt::V2016_08_01::Models::MSDeployStatus
        CustomHostnameAnalysisResult = Azure::Web::Mgmt::V2016_08_01::Models::CustomHostnameAnalysisResult
        NetworkFeatures = Azure::Web::Mgmt::V2016_08_01::Models::NetworkFeatures
        ProcessModuleInfo = Azure::Web::Mgmt::V2016_08_01::Models::ProcessModuleInfo
        RelayServiceConnectionEntity = Azure::Web::Mgmt::V2016_08_01::Models::RelayServiceConnectionEntity
        MSDeploy = Azure::Web::Mgmt::V2016_08_01::Models::MSDeploy
        ProcessInfo = Azure::Web::Mgmt::V2016_08_01::Models::ProcessInfo
        ProcessThreadInfo = Azure::Web::Mgmt::V2016_08_01::Models::ProcessThreadInfo
        Experiments = Azure::Web::Mgmt::V2016_09_01::Models::Experiments
        VirtualDirectory = Azure::Web::Mgmt::V2016_09_01::Models::VirtualDirectory
        VirtualApplication = Azure::Web::Mgmt::V2016_09_01::Models::VirtualApplication
        HandlerMapping = Azure::Web::Mgmt::V2016_09_01::Models::HandlerMapping
        SiteMachineKey = Azure::Web::Mgmt::V2016_09_01::Models::SiteMachineKey
        VnetRoute = Azure::Web::Mgmt::V2016_09_01::Models::VnetRoute
        VnetInfo = Azure::Web::Mgmt::V2016_09_01::Models::VnetInfo
        VnetGateway = Azure::Web::Mgmt::V2016_09_01::Models::VnetGateway
        SnapshotRecoveryRequest = Azure::Web::Mgmt::V2016_09_01::Models::SnapshotRecoveryRequest
        ResourceMetricDefinition = Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetricDefinition
        PushSettings = Azure::Web::Mgmt::V2016_09_01::Models::PushSettings
        HybridConnectionKey = Azure::Web::Mgmt::V2016_09_01::Models::HybridConnectionKey
        Site = Azure::Web::Mgmt::V2016_09_01::Models::Site
        AppServicePlan = Azure::Web::Mgmt::V2016_09_01::Models::AppServicePlan
        RouteType = Azure::Web::Mgmt::V2016_09_01::Models::RouteType
        AutoHealActionType = Azure::Web::Mgmt::V2016_09_01::Models::AutoHealActionType
        ConnectionStringType = Azure::Web::Mgmt::V2016_09_01::Models::ConnectionStringType
        ScmType = Azure::Web::Mgmt::V2016_09_01::Models::ScmType
        ManagedPipelineMode = Azure::Web::Mgmt::V2016_09_01::Models::ManagedPipelineMode
        SiteLoadBalancing = Azure::Web::Mgmt::V2016_09_01::Models::SiteLoadBalancing
        SslState = Azure::Web::Mgmt::V2016_09_01::Models::SslState
        HostType = Azure::Web::Mgmt::V2016_09_01::Models::HostType
        UsageState = Azure::Web::Mgmt::V2016_09_01::Models::UsageState
        SiteAvailabilityState = Azure::Web::Mgmt::V2016_09_01::Models::SiteAvailabilityState
        StatusOptions = Azure::Web::Mgmt::V2016_09_01::Models::StatusOptions
        MetricDefinition = Azure::Web::Mgmt::V2016_09_01::Models::MetricDefinition
        OperationStatus = Azure::Web::Mgmt::V2016_09_01::Models::OperationStatus
        Operation = Azure::Web::Mgmt::V2016_09_01::Models::Operation
        Usage = Azure::Web::Mgmt::V2016_09_01::Models::Usage
        Resource = Azure::Web::Mgmt::V2016_09_01::Models::Resource
        HybridConnection = Azure::Web::Mgmt::V2016_09_01::Models::HybridConnection
        ProvisioningState = Azure::Web::Mgmt::V2016_09_01::Models::ProvisioningState
        ProxyOnlyResource = Azure::Web::Mgmt::V2016_09_01::Models::ProxyOnlyResource
        User = Azure::Web::Mgmt::V2016_09_01::Models::User
        LocalizableString = Azure::Web::Mgmt::V2016_09_01::Models::LocalizableString
        VirtualNetworkProfile = Azure::Web::Mgmt::V2016_09_01::Models::VirtualNetworkProfile
        WorkerPool = Azure::Web::Mgmt::V2016_09_01::Models::WorkerPool
        VirtualIPMapping = Azure::Web::Mgmt::V2016_09_01::Models::VirtualIPMapping
        StampCapacity = Azure::Web::Mgmt::V2016_09_01::Models::StampCapacity
        AppServiceEnvironmentCollection = Azure::Web::Mgmt::V2016_09_01::Models::AppServiceEnvironmentCollection
        HostingEnvironmentDiagnostics = Azure::Web::Mgmt::V2016_09_01::Models::HostingEnvironmentDiagnostics
        AddressResponse = Azure::Web::Mgmt::V2016_09_01::Models::AddressResponse
        SkuInfoCollection = Azure::Web::Mgmt::V2016_09_01::Models::SkuInfoCollection
        NetworkAccessControlEntry = Azure::Web::Mgmt::V2016_09_01::Models::NetworkAccessControlEntry
        ResourceCollection = Azure::Web::Mgmt::V2016_09_01::Models::ResourceCollection
        WorkerPoolCollection = Azure::Web::Mgmt::V2016_09_01::Models::WorkerPoolCollection
        HybridConnectionCollection = Azure::Web::Mgmt::V2016_09_01::Models::HybridConnectionCollection
        MetricAvailabilily = Azure::Web::Mgmt::V2016_09_01::Models::MetricAvailabilily
        ErrorEntity = Azure::Web::Mgmt::V2016_09_01::Models::ErrorEntity
        UsageCollection = Azure::Web::Mgmt::V2016_09_01::Models::UsageCollection
        CsmUsageQuotaCollection = Azure::Web::Mgmt::V2016_09_01::Models::CsmUsageQuotaCollection
        AppServiceEnvironmentResource = Azure::Web::Mgmt::V2016_09_01::Models::AppServiceEnvironmentResource
        ResourceMetricProperty = Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetricProperty
        ManagedServiceIdentity = Azure::Web::Mgmt::V2016_09_01::Models::ManagedServiceIdentity
        AppServicePlanCollection = Azure::Web::Mgmt::V2016_09_01::Models::AppServicePlanCollection
        ResourceMetric = Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetric
        ResourceMetricCollection = Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetricCollection
        SkuInfo = Azure::Web::Mgmt::V2016_09_01::Models::SkuInfo
        ResourceMetricDefinitionCollection = Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetricDefinitionCollection
        StampCapacityCollection = Azure::Web::Mgmt::V2016_09_01::Models::StampCapacityCollection
        HybridConnectionLimits = Azure::Web::Mgmt::V2016_09_01::Models::HybridConnectionLimits
        CsmUsageQuota = Azure::Web::Mgmt::V2016_09_01::Models::CsmUsageQuota
        WorkerPoolResource = Azure::Web::Mgmt::V2016_09_01::Models::WorkerPoolResource
        ResourceMetricValue = Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetricValue
        WebAppCollection = Azure::Web::Mgmt::V2016_09_01::Models::WebAppCollection
        AppServiceEnvironmentPatchResource = Azure::Web::Mgmt::V2016_09_01::Models::AppServiceEnvironmentPatchResource
        AppServicePlanPatchResource = Azure::Web::Mgmt::V2016_09_01::Models::AppServicePlanPatchResource
        SlotSwapStatus = Azure::Web::Mgmt::V2016_09_01::Models::SlotSwapStatus
        CloningInfo = Azure::Web::Mgmt::V2016_09_01::Models::CloningInfo
        HostingEnvironmentProfile = Azure::Web::Mgmt::V2016_09_01::Models::HostingEnvironmentProfile
        HostingEnvironmentStatus = Azure::Web::Mgmt::V2016_09_01::Models::HostingEnvironmentStatus
        IpSecurityRestriction = Azure::Web::Mgmt::V2016_09_01::Models::IpSecurityRestriction
        InternalLoadBalancingMode = Azure::Web::Mgmt::V2016_09_01::Models::InternalLoadBalancingMode
        ApiDefinitionInfo = Azure::Web::Mgmt::V2016_09_01::Models::ApiDefinitionInfo
        AccessControlEntryAction = Azure::Web::Mgmt::V2016_09_01::Models::AccessControlEntryAction
        CorsSettings = Azure::Web::Mgmt::V2016_09_01::Models::CorsSettings
        WorkerSizeOptions = Azure::Web::Mgmt::V2016_09_01::Models::WorkerSizeOptions
        AutoHealCustomAction = Azure::Web::Mgmt::V2016_09_01::Models::AutoHealCustomAction
        ComputeModeOptions = Azure::Web::Mgmt::V2016_09_01::Models::ComputeModeOptions
        AutoHealActions = Azure::Web::Mgmt::V2016_09_01::Models::AutoHealActions
        SlowRequestsBasedTrigger = Azure::Web::Mgmt::V2016_09_01::Models::SlowRequestsBasedTrigger
        StatusCodesBasedTrigger = Azure::Web::Mgmt::V2016_09_01::Models::StatusCodesBasedTrigger
        RequestsBasedTrigger = Azure::Web::Mgmt::V2016_09_01::Models::RequestsBasedTrigger
        SiteConfig = Azure::Web::Mgmt::V2016_09_01::Models::SiteConfig
        SnapshotRecoveryTarget = Azure::Web::Mgmt::V2016_09_01::Models::SnapshotRecoveryTarget
        ResourceMetricAvailability = Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetricAvailability
        NameValuePair = Azure::Web::Mgmt::V2016_09_01::Models::NameValuePair
        ConnStringInfo = Azure::Web::Mgmt::V2016_09_01::Models::ConnStringInfo
        SkuDescription = Azure::Web::Mgmt::V2016_09_01::Models::SkuDescription
        Capability = Azure::Web::Mgmt::V2016_09_01::Models::Capability
        HostNameSslState = Azure::Web::Mgmt::V2016_09_01::Models::HostNameSslState
        AutoHealTriggers = Azure::Web::Mgmt::V2016_09_01::Models::AutoHealTriggers
        AutoHealRules = Azure::Web::Mgmt::V2016_09_01::Models::AutoHealRules
        ResourceMetricName = Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetricName
        SiteLimits = Azure::Web::Mgmt::V2016_09_01::Models::SiteLimits
        SkuCapacity = Azure::Web::Mgmt::V2016_09_01::Models::SkuCapacity
        RampUpRule = Azure::Web::Mgmt::V2016_09_01::Models::RampUpRule
        Identifier = Azure::Web::Mgmt::V2016_09_01::Models::Identifier
      end

      class WebManagementClass
        attr_reader :domains, :domain_registration_provider, :top_level_domains, :app_service_certificate_orders, :certificate_registration_provider, :recommendations, :deleted_web_apps, :diagnostics, :certificates, :provider, :web_apps, :app_service_environments, :app_service_plans, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Web::Mgmt::V2015_04_01::WebSiteManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @domains = @client_0.domains
          @domain_registration_provider = @client_0.domain_registration_provider
          @top_level_domains = @client_0.top_level_domains

          @client_1 = Azure::Web::Mgmt::V2015_08_01::WebSiteManagementClient.new(configurable.credentials, base_url, options)
          if(@client_1.respond_to?(:subscription_id))
            @client_1.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_1)
          @app_service_certificate_orders = @client_1.app_service_certificate_orders
          @certificate_registration_provider = @client_1.certificate_registration_provider

          @client_2 = Azure::Web::Mgmt::V2016_03_01::WebSiteManagementClient.new(configurable.credentials, base_url, options)
          if(@client_2.respond_to?(:subscription_id))
            @client_2.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_2)
          @recommendations = @client_2.recommendations
          @deleted_web_apps = @client_2.deleted_web_apps
          @diagnostics = @client_2.diagnostics
          @certificates = @client_2.certificates
          @provider = @client_2.provider

          @client_3 = Azure::Web::Mgmt::V2016_08_01::WebSiteManagementClient.new(configurable.credentials, base_url, options)
          if(@client_3.respond_to?(:subscription_id))
            @client_3.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_3)
          @web_apps = @client_3.web_apps

          @client_4 = Azure::Web::Mgmt::V2016_09_01::WebSiteManagementClient.new(configurable.credentials, base_url, options)
          if(@client_4.respond_to?(:subscription_id))
            @client_4.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_4)
          @app_service_environments = @client_4.app_service_environments
          @app_service_plans = @client_4.app_service_plans

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Web/Mgmt"
          client.add_user_agent_information(profile_information)
        end

        def method_missing(method, *args)
          if @client_4.respond_to?method
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

        class ModelClasses
          def tld_legal_agreement_collection
            Azure::Web::Mgmt::V2015_04_01::Models::TldLegalAgreementCollection
          end
          def domain_ownership_identifier
            Azure::Web::Mgmt::V2015_04_01::Models::DomainOwnershipIdentifier
          end
          def domain_patch_resource
            Azure::Web::Mgmt::V2015_04_01::Models::DomainPatchResource
          end
          def top_level_domain
            Azure::Web::Mgmt::V2015_04_01::Models::TopLevelDomain
          end
          def domain_status
            Azure::Web::Mgmt::V2015_04_01::Models::DomainStatus
          end
          def dns_type
            Azure::Web::Mgmt::V2015_04_01::Models::DnsType
          end
          def domain_type
            Azure::Web::Mgmt::V2015_04_01::Models::DomainType
          end
          def error_response
            Azure::Web::Mgmt::V2015_04_01::Models::ErrorResponse
          end
          def domain
            Azure::Web::Mgmt::V2015_04_01::Models::Domain
          end
          def contact
            Azure::Web::Mgmt::V2015_04_01::Models::Contact
          end
          def domain_purchase_consent
            Azure::Web::Mgmt::V2015_04_01::Models::DomainPurchaseConsent
          end
          def domain_availablility_check_result
            Azure::Web::Mgmt::V2015_04_01::Models::DomainAvailablilityCheckResult
          end
          def domain_control_center_sso_request
            Azure::Web::Mgmt::V2015_04_01::Models::DomainControlCenterSsoRequest
          end
          def domain_recommendation_search_parameters
            Azure::Web::Mgmt::V2015_04_01::Models::DomainRecommendationSearchParameters
          end
          def domain_ownership_identifier_collection
            Azure::Web::Mgmt::V2015_04_01::Models::DomainOwnershipIdentifierCollection
          end
          def address
            Azure::Web::Mgmt::V2015_04_01::Models::Address
          end
          def name_identifier_collection
            Azure::Web::Mgmt::V2015_04_01::Models::NameIdentifierCollection
          end
          def host_name
            Azure::Web::Mgmt::V2015_04_01::Models::HostName
          end
          def top_level_domain_collection
            Azure::Web::Mgmt::V2015_04_01::Models::TopLevelDomainCollection
          end
          def domain_collection
            Azure::Web::Mgmt::V2015_04_01::Models::DomainCollection
          end
          def tld_legal_agreement
            Azure::Web::Mgmt::V2015_04_01::Models::TldLegalAgreement
          end
          def top_level_domain_agreement_option
            Azure::Web::Mgmt::V2015_04_01::Models::TopLevelDomainAgreementOption
          end
          def certificate_order_action_type
            Azure::Web::Mgmt::V2015_08_01::Models::CertificateOrderActionType
          end
          def certificate_email
            Azure::Web::Mgmt::V2015_08_01::Models::CertificateEmail
          end
          def renew_certificate_order_request
            Azure::Web::Mgmt::V2015_08_01::Models::RenewCertificateOrderRequest
          end
          def app_service_certificate_resource
            Azure::Web::Mgmt::V2015_08_01::Models::AppServiceCertificateResource
          end
          def certificate_product_type
            Azure::Web::Mgmt::V2015_08_01::Models::CertificateProductType
          end
          def certificate_order_status
            Azure::Web::Mgmt::V2015_08_01::Models::CertificateOrderStatus
          end
          def app_service_certificate
            Azure::Web::Mgmt::V2015_08_01::Models::AppServiceCertificate
          end
          def app_service_certificate_collection
            Azure::Web::Mgmt::V2015_08_01::Models::AppServiceCertificateCollection
          end
          def app_service_certificate_order_collection
            Azure::Web::Mgmt::V2015_08_01::Models::AppServiceCertificateOrderCollection
          end
          def site_seal_request
            Azure::Web::Mgmt::V2015_08_01::Models::SiteSealRequest
          end
          def app_service_certificate_order
            Azure::Web::Mgmt::V2015_08_01::Models::AppServiceCertificateOrder
          end
          def certificate_order_action
            Azure::Web::Mgmt::V2015_08_01::Models::CertificateOrderAction
          end
          def certificate_details
            Azure::Web::Mgmt::V2015_08_01::Models::CertificateDetails
          end
          def reissue_certificate_order_request
            Azure::Web::Mgmt::V2015_08_01::Models::ReissueCertificateOrderRequest
          end
          def app_service_certificate_order_patch_resource
            Azure::Web::Mgmt::V2015_08_01::Models::AppServiceCertificateOrderPatchResource
          end
          def site_seal
            Azure::Web::Mgmt::V2015_08_01::Models::SiteSeal
          end
          def app_service_certificate_patch_resource
            Azure::Web::Mgmt::V2015_08_01::Models::AppServiceCertificatePatchResource
          end
          def validate_resource_types
            Azure::Web::Mgmt::V2016_03_01::Models::ValidateResourceTypes
          end
          def app_service_plan_restrictions
            Azure::Web::Mgmt::V2016_03_01::Models::AppServicePlanRestrictions
          end
          def solution_type
            Azure::Web::Mgmt::V2016_03_01::Models::SolutionType
          end
          def notification_level
            Azure::Web::Mgmt::V2016_03_01::Models::NotificationLevel
          end
          def vnet_validation_test_failure
            Azure::Web::Mgmt::V2016_03_01::Models::VnetValidationTestFailure
          end
          def metric_availability
            Azure::Web::Mgmt::V2016_03_01::Models::MetricAvailability
          end
          def check_name_resource_types
            Azure::Web::Mgmt::V2016_03_01::Models::CheckNameResourceTypes
          end
          def service_specification
            Azure::Web::Mgmt::V2016_03_01::Models::ServiceSpecification
          end
          def channels
            Azure::Web::Mgmt::V2016_03_01::Models::Channels
          end
          def in_availability_reason_type
            Azure::Web::Mgmt::V2016_03_01::Models::InAvailabilityReasonType
          end
          def issue_type
            Azure::Web::Mgmt::V2016_03_01::Models::IssueType
          end
          def sku_name
            Azure::Web::Mgmt::V2016_03_01::Models::SkuName
          end
          def key_vault_secret_status
            Azure::Web::Mgmt::V2016_03_01::Models::KeyVaultSecretStatus
          end
          def certificate
            Azure::Web::Mgmt::V2016_03_01::Models::Certificate
          end
          def hosting_environment_deployment_info
            Azure::Web::Mgmt::V2016_03_01::Models::HostingEnvironmentDeploymentInfo
          end
          def validate_response
            Azure::Web::Mgmt::V2016_03_01::Models::ValidateResponse
          end
          def validate_request
            Azure::Web::Mgmt::V2016_03_01::Models::ValidateRequest
          end
          def resource_name_availability_request
            Azure::Web::Mgmt::V2016_03_01::Models::ResourceNameAvailabilityRequest
          end
          def premier_add_on_offer_collection
            Azure::Web::Mgmt::V2016_03_01::Models::PremierAddOnOfferCollection
          end
          def app_service_environment
            Azure::Web::Mgmt::V2016_03_01::Models::AppServiceEnvironment
          end
          def geo_region_collection
            Azure::Web::Mgmt::V2016_03_01::Models::GeoRegionCollection
          end
          def csm_move_resource_envelope
            Azure::Web::Mgmt::V2016_03_01::Models::CsmMoveResourceEnvelope
          end
          def deployment_locations
            Azure::Web::Mgmt::V2016_03_01::Models::DeploymentLocations
          end
          def source_control_collection
            Azure::Web::Mgmt::V2016_03_01::Models::SourceControlCollection
          end
          def global_csm_sku_description
            Azure::Web::Mgmt::V2016_03_01::Models::GlobalCsmSkuDescription
          end
          def deleted_web_app_collection
            Azure::Web::Mgmt::V2016_03_01::Models::DeletedWebAppCollection
          end
          def solution
            Azure::Web::Mgmt::V2016_03_01::Models::Solution
          end
          def deleted_site
            Azure::Web::Mgmt::V2016_03_01::Models::DeletedSite
          end
          def validate_response_error
            Azure::Web::Mgmt::V2016_03_01::Models::ValidateResponseError
          end
          def abnormal_time_period
            Azure::Web::Mgmt::V2016_03_01::Models::AbnormalTimePeriod
          end
          def detector_abnormal_time_period
            Azure::Web::Mgmt::V2016_03_01::Models::DetectorAbnormalTimePeriod
          end
          def recommendation_rule
            Azure::Web::Mgmt::V2016_03_01::Models::RecommendationRule
          end
          def diagnostic_metric_sample
            Azure::Web::Mgmt::V2016_03_01::Models::DiagnosticMetricSample
          end
          def resource_name_availability
            Azure::Web::Mgmt::V2016_03_01::Models::ResourceNameAvailability
          end
          def response_meta_data
            Azure::Web::Mgmt::V2016_03_01::Models::ResponseMetaData
          end
          def analysis_data
            Azure::Web::Mgmt::V2016_03_01::Models::AnalysisData
          end
          def diagnostic_metric_set
            Azure::Web::Mgmt::V2016_03_01::Models::DiagnosticMetricSet
          end
          def sku_infos
            Azure::Web::Mgmt::V2016_03_01::Models::SkuInfos
          end
          def diagnostic_detector_collection
            Azure::Web::Mgmt::V2016_03_01::Models::DiagnosticDetectorCollection
          end
          def recommendation
            Azure::Web::Mgmt::V2016_03_01::Models::Recommendation
          end
          def data_source
            Azure::Web::Mgmt::V2016_03_01::Models::DataSource
          end
          def diagnostic_category_collection
            Azure::Web::Mgmt::V2016_03_01::Models::DiagnosticCategoryCollection
          end
          def certificate_collection
            Azure::Web::Mgmt::V2016_03_01::Models::CertificateCollection
          end
          def detector_definition
            Azure::Web::Mgmt::V2016_03_01::Models::DetectorDefinition
          end
          def certificate_patch_resource
            Azure::Web::Mgmt::V2016_03_01::Models::CertificatePatchResource
          end
          def diagnostic_analysis_collection
            Azure::Web::Mgmt::V2016_03_01::Models::DiagnosticAnalysisCollection
          end
          def analysis_definition
            Azure::Web::Mgmt::V2016_03_01::Models::AnalysisDefinition
          end
          def diagnostic_analysis
            Azure::Web::Mgmt::V2016_03_01::Models::DiagnosticAnalysis
          end
          def diagnostic_category
            Azure::Web::Mgmt::V2016_03_01::Models::DiagnosticCategory
          end
          def csm_operation_display
            Azure::Web::Mgmt::V2016_03_01::Models::CsmOperationDisplay
          end
          def csm_operation_collection
            Azure::Web::Mgmt::V2016_03_01::Models::CsmOperationCollection
          end
          def source_control
            Azure::Web::Mgmt::V2016_03_01::Models::SourceControl
          end
          def geo_region
            Azure::Web::Mgmt::V2016_03_01::Models::GeoRegion
          end
          def diagnostic_detector_response
            Azure::Web::Mgmt::V2016_03_01::Models::DiagnosticDetectorResponse
          end
          def dimension
            Azure::Web::Mgmt::V2016_03_01::Models::Dimension
          end
          def metric_specification
            Azure::Web::Mgmt::V2016_03_01::Models::MetricSpecification
          end
          def vnet_validation_failure_details
            Azure::Web::Mgmt::V2016_03_01::Models::VnetValidationFailureDetails
          end
          def premier_add_on_offer
            Azure::Web::Mgmt::V2016_03_01::Models::PremierAddOnOffer
          end
          def vnet_parameters
            Azure::Web::Mgmt::V2016_03_01::Models::VnetParameters
          end
          def resource_scope_type
            Azure::Web::Mgmt::V2016_03_01::Models::ResourceScopeType
          end
          def name_identifier
            Azure::Web::Mgmt::V2016_03_01::Models::NameIdentifier
          end
          def csm_operation_description
            Azure::Web::Mgmt::V2016_03_01::Models::CsmOperationDescription
          end
          def csm_operation_description_properties
            Azure::Web::Mgmt::V2016_03_01::Models::CsmOperationDescriptionProperties
          end
          def backup_request
            Azure::Web::Mgmt::V2016_08_01::Models::BackupRequest
          end
          def backup_schedule
            Azure::Web::Mgmt::V2016_08_01::Models::BackupSchedule
          end
          def deployment
            Azure::Web::Mgmt::V2016_08_01::Models::Deployment
          end
          def function_secrets
            Azure::Web::Mgmt::V2016_08_01::Models::FunctionSecrets
          end
          def public_certificate
            Azure::Web::Mgmt::V2016_08_01::Models::PublicCertificate
          end
          def restore_response
            Azure::Web::Mgmt::V2016_08_01::Models::RestoreResponse
          end
          def site_auth_settings
            Azure::Web::Mgmt::V2016_08_01::Models::SiteAuthSettings
          end
          def migrate_my_sql_status
            Azure::Web::Mgmt::V2016_08_01::Models::MigrateMySqlStatus
          end
          def site_configuration_snapshot_info
            Azure::Web::Mgmt::V2016_08_01::Models::SiteConfigurationSnapshotInfo
          end
          def restore_request
            Azure::Web::Mgmt::V2016_08_01::Models::RestoreRequest
          end
          def site_instance
            Azure::Web::Mgmt::V2016_08_01::Models::SiteInstance
          end
          def site_logs_config
            Azure::Web::Mgmt::V2016_08_01::Models::SiteLogsConfig
          end
          def site_php_error_log_flag
            Azure::Web::Mgmt::V2016_08_01::Models::SitePhpErrorLogFlag
          end
          def slot_config_names_resource
            Azure::Web::Mgmt::V2016_08_01::Models::SlotConfigNamesResource
          end
          def slot_difference
            Azure::Web::Mgmt::V2016_08_01::Models::SlotDifference
          end
          def site_config_resource
            Azure::Web::Mgmt::V2016_08_01::Models::SiteConfigResource
          end
          def storage_migration_response
            Azure::Web::Mgmt::V2016_08_01::Models::StorageMigrationResponse
          end
          def site_extension_info
            Azure::Web::Mgmt::V2016_08_01::Models::SiteExtensionInfo
          end
          def triggered_job_run
            Azure::Web::Mgmt::V2016_08_01::Models::TriggeredJobRun
          end
          def triggered_job_history
            Azure::Web::Mgmt::V2016_08_01::Models::TriggeredJobHistory
          end
          def site_patch_resource
            Azure::Web::Mgmt::V2016_08_01::Models::SitePatchResource
          end
          def web_job
            Azure::Web::Mgmt::V2016_08_01::Models::WebJob
          end
          def site_source_control
            Azure::Web::Mgmt::V2016_08_01::Models::SiteSourceControl
          end
          def backup_item_status
            Azure::Web::Mgmt::V2016_08_01::Models::BackupItemStatus
          end
          def storage_migration_options
            Azure::Web::Mgmt::V2016_08_01::Models::StorageMigrationOptions
          end
          def string_dictionary
            Azure::Web::Mgmt::V2016_08_01::Models::StringDictionary
          end
          def triggered_web_job
            Azure::Web::Mgmt::V2016_08_01::Models::TriggeredWebJob
          end
          def azure_resource_type
            Azure::Web::Mgmt::V2016_08_01::Models::AzureResourceType
          end
          def log_level
            Azure::Web::Mgmt::V2016_08_01::Models::LogLevel
          end
          def snapshot
            Azure::Web::Mgmt::V2016_08_01::Models::Snapshot
          end
          def backup_restore_operation_type
            Azure::Web::Mgmt::V2016_08_01::Models::BackupRestoreOperationType
          end
          def continuous_web_job_status
            Azure::Web::Mgmt::V2016_08_01::Models::ContinuousWebJobStatus
          end
          def publishing_profile_format
            Azure::Web::Mgmt::V2016_08_01::Models::PublishingProfileFormat
          end
          def dns_verification_test_result
            Azure::Web::Mgmt::V2016_08_01::Models::DnsVerificationTestResult
          end
          def msdeploy_log_entry_type
            Azure::Web::Mgmt::V2016_08_01::Models::MSDeployLogEntryType
          end
          def my_sql_migration_type
            Azure::Web::Mgmt::V2016_08_01::Models::MySqlMigrationType
          end
          def public_certificate_location
            Azure::Web::Mgmt::V2016_08_01::Models::PublicCertificateLocation
          end
          def database_type
            Azure::Web::Mgmt::V2016_08_01::Models::DatabaseType
          end
          def frequency_unit
            Azure::Web::Mgmt::V2016_08_01::Models::FrequencyUnit
          end
          def custom_host_name_dns_record_type
            Azure::Web::Mgmt::V2016_08_01::Models::CustomHostNameDnsRecordType
          end
          def host_name_type
            Azure::Web::Mgmt::V2016_08_01::Models::HostNameType
          end
          def web_job_type
            Azure::Web::Mgmt::V2016_08_01::Models::WebJobType
          end
          def msdeploy_provisioning_state
            Azure::Web::Mgmt::V2016_08_01::Models::MSDeployProvisioningState
          end
          def unauthenticated_client_action
            Azure::Web::Mgmt::V2016_08_01::Models::UnauthenticatedClientAction
          end
          def clone_ability_result
            Azure::Web::Mgmt::V2016_08_01::Models::CloneAbilityResult
          end
          def site_extension_type
            Azure::Web::Mgmt::V2016_08_01::Models::SiteExtensionType
          end
          def built_in_authentication_provider
            Azure::Web::Mgmt::V2016_08_01::Models::BuiltInAuthenticationProvider
          end
          def triggered_web_job_status
            Azure::Web::Mgmt::V2016_08_01::Models::TriggeredWebJobStatus
          end
          def azure_table_storage_application_logs_config
            Azure::Web::Mgmt::V2016_08_01::Models::AzureTableStorageApplicationLogsConfig
          end
          def application_logs_config
            Azure::Web::Mgmt::V2016_08_01::Models::ApplicationLogsConfig
          end
          def database_backup_setting
            Azure::Web::Mgmt::V2016_08_01::Models::DatabaseBackupSetting
          end
          def backup_item_collection
            Azure::Web::Mgmt::V2016_08_01::Models::BackupItemCollection
          end
          def process_info_collection
            Azure::Web::Mgmt::V2016_08_01::Models::ProcessInfoCollection
          end
          def conn_string_value_type_pair
            Azure::Web::Mgmt::V2016_08_01::Models::ConnStringValueTypePair
          end
          def process_module_info_collection
            Azure::Web::Mgmt::V2016_08_01::Models::ProcessModuleInfoCollection
          end
          def process_thread_info_collection
            Azure::Web::Mgmt::V2016_08_01::Models::ProcessThreadInfoCollection
          end
          def csm_publishing_profile_options
            Azure::Web::Mgmt::V2016_08_01::Models::CsmPublishingProfileOptions
          end
          def web_app_instance_collection
            Azure::Web::Mgmt::V2016_08_01::Models::WebAppInstanceCollection
          end
          def triggered_web_job_collection
            Azure::Web::Mgmt::V2016_08_01::Models::TriggeredWebJobCollection
          end
          def public_certificate_collection
            Azure::Web::Mgmt::V2016_08_01::Models::PublicCertificateCollection
          end
          def site_cloneability
            Azure::Web::Mgmt::V2016_08_01::Models::SiteCloneability
          end
          def perf_mon_set
            Azure::Web::Mgmt::V2016_08_01::Models::PerfMonSet
          end
          def triggered_job_history_collection
            Azure::Web::Mgmt::V2016_08_01::Models::TriggeredJobHistoryCollection
          end
          def identifier_collection
            Azure::Web::Mgmt::V2016_08_01::Models::IdentifierCollection
          end
          def file_system_application_logs_config
            Azure::Web::Mgmt::V2016_08_01::Models::FileSystemApplicationLogsConfig
          end
          def snapshot_collection
            Azure::Web::Mgmt::V2016_08_01::Models::SnapshotCollection
          end
          def site_cloneability_criterion
            Azure::Web::Mgmt::V2016_08_01::Models::SiteCloneabilityCriterion
          end
          def host_name_binding_collection
            Azure::Web::Mgmt::V2016_08_01::Models::HostNameBindingCollection
          end
          def enabled_config
            Azure::Web::Mgmt::V2016_08_01::Models::EnabledConfig
          end
          def slot_difference_collection
            Azure::Web::Mgmt::V2016_08_01::Models::SlotDifferenceCollection
          end
          def perf_mon_counter_collection
            Azure::Web::Mgmt::V2016_08_01::Models::PerfMonCounterCollection
          end
          def web_job_collection
            Azure::Web::Mgmt::V2016_08_01::Models::WebJobCollection
          end
          def continuous_web_job_collection
            Azure::Web::Mgmt::V2016_08_01::Models::ContinuousWebJobCollection
          end
          def file_system_http_logs_config
            Azure::Web::Mgmt::V2016_08_01::Models::FileSystemHttpLogsConfig
          end
          def azure_blob_storage_application_logs_config
            Azure::Web::Mgmt::V2016_08_01::Models::AzureBlobStorageApplicationLogsConfig
          end
          def msdeploy_log_entry
            Azure::Web::Mgmt::V2016_08_01::Models::MSDeployLogEntry
          end
          def function_envelope_collection
            Azure::Web::Mgmt::V2016_08_01::Models::FunctionEnvelopeCollection
          end
          def deployment_collection
            Azure::Web::Mgmt::V2016_08_01::Models::DeploymentCollection
          end
          def azure_blob_storage_http_logs_config
            Azure::Web::Mgmt::V2016_08_01::Models::AzureBlobStorageHttpLogsConfig
          end
          def site_config_resource_collection
            Azure::Web::Mgmt::V2016_08_01::Models::SiteConfigResourceCollection
          end
          def perf_mon_sample
            Azure::Web::Mgmt::V2016_08_01::Models::PerfMonSample
          end
          def perf_mon_response
            Azure::Web::Mgmt::V2016_08_01::Models::PerfMonResponse
          end
          def site_configuration_snapshot_info_collection
            Azure::Web::Mgmt::V2016_08_01::Models::SiteConfigurationSnapshotInfoCollection
          end
          def http_logs_config
            Azure::Web::Mgmt::V2016_08_01::Models::HttpLogsConfig
          end
          def connection_string_dictionary
            Azure::Web::Mgmt::V2016_08_01::Models::ConnectionStringDictionary
          end
          def csm_slot_entity
            Azure::Web::Mgmt::V2016_08_01::Models::CsmSlotEntity
          end
          def backup_item
            Azure::Web::Mgmt::V2016_08_01::Models::BackupItem
          end
          def continuous_web_job
            Azure::Web::Mgmt::V2016_08_01::Models::ContinuousWebJob
          end
          def function_envelope
            Azure::Web::Mgmt::V2016_08_01::Models::FunctionEnvelope
          end
          def host_name_binding
            Azure::Web::Mgmt::V2016_08_01::Models::HostNameBinding
          end
          def msdeploy_log
            Azure::Web::Mgmt::V2016_08_01::Models::MSDeployLog
          end
          def migrate_my_sql_request
            Azure::Web::Mgmt::V2016_08_01::Models::MigrateMySqlRequest
          end
          def site_extension_info_collection
            Azure::Web::Mgmt::V2016_08_01::Models::SiteExtensionInfoCollection
          end
          def premier_add_on
            Azure::Web::Mgmt::V2016_08_01::Models::PremierAddOn
          end
          def msdeploy_status
            Azure::Web::Mgmt::V2016_08_01::Models::MSDeployStatus
          end
          def custom_hostname_analysis_result
            Azure::Web::Mgmt::V2016_08_01::Models::CustomHostnameAnalysisResult
          end
          def network_features
            Azure::Web::Mgmt::V2016_08_01::Models::NetworkFeatures
          end
          def process_module_info
            Azure::Web::Mgmt::V2016_08_01::Models::ProcessModuleInfo
          end
          def relay_service_connection_entity
            Azure::Web::Mgmt::V2016_08_01::Models::RelayServiceConnectionEntity
          end
          def msdeploy
            Azure::Web::Mgmt::V2016_08_01::Models::MSDeploy
          end
          def process_info
            Azure::Web::Mgmt::V2016_08_01::Models::ProcessInfo
          end
          def process_thread_info
            Azure::Web::Mgmt::V2016_08_01::Models::ProcessThreadInfo
          end
          def experiments
            Azure::Web::Mgmt::V2016_09_01::Models::Experiments
          end
          def virtual_directory
            Azure::Web::Mgmt::V2016_09_01::Models::VirtualDirectory
          end
          def virtual_application
            Azure::Web::Mgmt::V2016_09_01::Models::VirtualApplication
          end
          def handler_mapping
            Azure::Web::Mgmt::V2016_09_01::Models::HandlerMapping
          end
          def site_machine_key
            Azure::Web::Mgmt::V2016_09_01::Models::SiteMachineKey
          end
          def vnet_route
            Azure::Web::Mgmt::V2016_09_01::Models::VnetRoute
          end
          def vnet_info
            Azure::Web::Mgmt::V2016_09_01::Models::VnetInfo
          end
          def vnet_gateway
            Azure::Web::Mgmt::V2016_09_01::Models::VnetGateway
          end
          def snapshot_recovery_request
            Azure::Web::Mgmt::V2016_09_01::Models::SnapshotRecoveryRequest
          end
          def resource_metric_definition
            Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetricDefinition
          end
          def push_settings
            Azure::Web::Mgmt::V2016_09_01::Models::PushSettings
          end
          def hybrid_connection_key
            Azure::Web::Mgmt::V2016_09_01::Models::HybridConnectionKey
          end
          def site
            Azure::Web::Mgmt::V2016_09_01::Models::Site
          end
          def app_service_plan
            Azure::Web::Mgmt::V2016_09_01::Models::AppServicePlan
          end
          def route_type
            Azure::Web::Mgmt::V2016_09_01::Models::RouteType
          end
          def auto_heal_action_type
            Azure::Web::Mgmt::V2016_09_01::Models::AutoHealActionType
          end
          def connection_string_type
            Azure::Web::Mgmt::V2016_09_01::Models::ConnectionStringType
          end
          def scm_type
            Azure::Web::Mgmt::V2016_09_01::Models::ScmType
          end
          def managed_pipeline_mode
            Azure::Web::Mgmt::V2016_09_01::Models::ManagedPipelineMode
          end
          def site_load_balancing
            Azure::Web::Mgmt::V2016_09_01::Models::SiteLoadBalancing
          end
          def ssl_state
            Azure::Web::Mgmt::V2016_09_01::Models::SslState
          end
          def host_type
            Azure::Web::Mgmt::V2016_09_01::Models::HostType
          end
          def usage_state
            Azure::Web::Mgmt::V2016_09_01::Models::UsageState
          end
          def site_availability_state
            Azure::Web::Mgmt::V2016_09_01::Models::SiteAvailabilityState
          end
          def status_options
            Azure::Web::Mgmt::V2016_09_01::Models::StatusOptions
          end
          def metric_definition
            Azure::Web::Mgmt::V2016_09_01::Models::MetricDefinition
          end
          def operation_status
            Azure::Web::Mgmt::V2016_09_01::Models::OperationStatus
          end
          def operation
            Azure::Web::Mgmt::V2016_09_01::Models::Operation
          end
          def usage
            Azure::Web::Mgmt::V2016_09_01::Models::Usage
          end
          def resource
            Azure::Web::Mgmt::V2016_09_01::Models::Resource
          end
          def hybrid_connection
            Azure::Web::Mgmt::V2016_09_01::Models::HybridConnection
          end
          def provisioning_state
            Azure::Web::Mgmt::V2016_09_01::Models::ProvisioningState
          end
          def proxy_only_resource
            Azure::Web::Mgmt::V2016_09_01::Models::ProxyOnlyResource
          end
          def user
            Azure::Web::Mgmt::V2016_09_01::Models::User
          end
          def localizable_string
            Azure::Web::Mgmt::V2016_09_01::Models::LocalizableString
          end
          def virtual_network_profile
            Azure::Web::Mgmt::V2016_09_01::Models::VirtualNetworkProfile
          end
          def worker_pool
            Azure::Web::Mgmt::V2016_09_01::Models::WorkerPool
          end
          def virtual_ipmapping
            Azure::Web::Mgmt::V2016_09_01::Models::VirtualIPMapping
          end
          def stamp_capacity
            Azure::Web::Mgmt::V2016_09_01::Models::StampCapacity
          end
          def app_service_environment_collection
            Azure::Web::Mgmt::V2016_09_01::Models::AppServiceEnvironmentCollection
          end
          def hosting_environment_diagnostics
            Azure::Web::Mgmt::V2016_09_01::Models::HostingEnvironmentDiagnostics
          end
          def address_response
            Azure::Web::Mgmt::V2016_09_01::Models::AddressResponse
          end
          def sku_info_collection
            Azure::Web::Mgmt::V2016_09_01::Models::SkuInfoCollection
          end
          def network_access_control_entry
            Azure::Web::Mgmt::V2016_09_01::Models::NetworkAccessControlEntry
          end
          def resource_collection
            Azure::Web::Mgmt::V2016_09_01::Models::ResourceCollection
          end
          def worker_pool_collection
            Azure::Web::Mgmt::V2016_09_01::Models::WorkerPoolCollection
          end
          def hybrid_connection_collection
            Azure::Web::Mgmt::V2016_09_01::Models::HybridConnectionCollection
          end
          def metric_availabilily
            Azure::Web::Mgmt::V2016_09_01::Models::MetricAvailabilily
          end
          def error_entity
            Azure::Web::Mgmt::V2016_09_01::Models::ErrorEntity
          end
          def usage_collection
            Azure::Web::Mgmt::V2016_09_01::Models::UsageCollection
          end
          def csm_usage_quota_collection
            Azure::Web::Mgmt::V2016_09_01::Models::CsmUsageQuotaCollection
          end
          def app_service_environment_resource
            Azure::Web::Mgmt::V2016_09_01::Models::AppServiceEnvironmentResource
          end
          def resource_metric_property
            Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetricProperty
          end
          def managed_service_identity
            Azure::Web::Mgmt::V2016_09_01::Models::ManagedServiceIdentity
          end
          def app_service_plan_collection
            Azure::Web::Mgmt::V2016_09_01::Models::AppServicePlanCollection
          end
          def resource_metric
            Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetric
          end
          def resource_metric_collection
            Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetricCollection
          end
          def sku_info
            Azure::Web::Mgmt::V2016_09_01::Models::SkuInfo
          end
          def resource_metric_definition_collection
            Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetricDefinitionCollection
          end
          def stamp_capacity_collection
            Azure::Web::Mgmt::V2016_09_01::Models::StampCapacityCollection
          end
          def hybrid_connection_limits
            Azure::Web::Mgmt::V2016_09_01::Models::HybridConnectionLimits
          end
          def csm_usage_quota
            Azure::Web::Mgmt::V2016_09_01::Models::CsmUsageQuota
          end
          def worker_pool_resource
            Azure::Web::Mgmt::V2016_09_01::Models::WorkerPoolResource
          end
          def resource_metric_value
            Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetricValue
          end
          def web_app_collection
            Azure::Web::Mgmt::V2016_09_01::Models::WebAppCollection
          end
          def app_service_environment_patch_resource
            Azure::Web::Mgmt::V2016_09_01::Models::AppServiceEnvironmentPatchResource
          end
          def app_service_plan_patch_resource
            Azure::Web::Mgmt::V2016_09_01::Models::AppServicePlanPatchResource
          end
          def slot_swap_status
            Azure::Web::Mgmt::V2016_09_01::Models::SlotSwapStatus
          end
          def cloning_info
            Azure::Web::Mgmt::V2016_09_01::Models::CloningInfo
          end
          def hosting_environment_profile
            Azure::Web::Mgmt::V2016_09_01::Models::HostingEnvironmentProfile
          end
          def hosting_environment_status
            Azure::Web::Mgmt::V2016_09_01::Models::HostingEnvironmentStatus
          end
          def ip_security_restriction
            Azure::Web::Mgmt::V2016_09_01::Models::IpSecurityRestriction
          end
          def internal_load_balancing_mode
            Azure::Web::Mgmt::V2016_09_01::Models::InternalLoadBalancingMode
          end
          def api_definition_info
            Azure::Web::Mgmt::V2016_09_01::Models::ApiDefinitionInfo
          end
          def access_control_entry_action
            Azure::Web::Mgmt::V2016_09_01::Models::AccessControlEntryAction
          end
          def cors_settings
            Azure::Web::Mgmt::V2016_09_01::Models::CorsSettings
          end
          def worker_size_options
            Azure::Web::Mgmt::V2016_09_01::Models::WorkerSizeOptions
          end
          def auto_heal_custom_action
            Azure::Web::Mgmt::V2016_09_01::Models::AutoHealCustomAction
          end
          def compute_mode_options
            Azure::Web::Mgmt::V2016_09_01::Models::ComputeModeOptions
          end
          def auto_heal_actions
            Azure::Web::Mgmt::V2016_09_01::Models::AutoHealActions
          end
          def slow_requests_based_trigger
            Azure::Web::Mgmt::V2016_09_01::Models::SlowRequestsBasedTrigger
          end
          def status_codes_based_trigger
            Azure::Web::Mgmt::V2016_09_01::Models::StatusCodesBasedTrigger
          end
          def requests_based_trigger
            Azure::Web::Mgmt::V2016_09_01::Models::RequestsBasedTrigger
          end
          def site_config
            Azure::Web::Mgmt::V2016_09_01::Models::SiteConfig
          end
          def snapshot_recovery_target
            Azure::Web::Mgmt::V2016_09_01::Models::SnapshotRecoveryTarget
          end
          def resource_metric_availability
            Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetricAvailability
          end
          def name_value_pair
            Azure::Web::Mgmt::V2016_09_01::Models::NameValuePair
          end
          def conn_string_info
            Azure::Web::Mgmt::V2016_09_01::Models::ConnStringInfo
          end
          def sku_description
            Azure::Web::Mgmt::V2016_09_01::Models::SkuDescription
          end
          def capability
            Azure::Web::Mgmt::V2016_09_01::Models::Capability
          end
          def host_name_ssl_state
            Azure::Web::Mgmt::V2016_09_01::Models::HostNameSslState
          end
          def auto_heal_triggers
            Azure::Web::Mgmt::V2016_09_01::Models::AutoHealTriggers
          end
          def auto_heal_rules
            Azure::Web::Mgmt::V2016_09_01::Models::AutoHealRules
          end
          def resource_metric_name
            Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetricName
          end
          def site_limits
            Azure::Web::Mgmt::V2016_09_01::Models::SiteLimits
          end
          def sku_capacity
            Azure::Web::Mgmt::V2016_09_01::Models::SkuCapacity
          end
          def ramp_up_rule
            Azure::Web::Mgmt::V2016_09_01::Models::RampUpRule
          end
          def identifier
            Azure::Web::Mgmt::V2016_09_01::Models::Identifier
          end
        end
      end
    end
  end
end
