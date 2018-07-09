# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_web'

module Azure::Profiles::Latest
  module Web
    module Mgmt
      DomainRegistrationProvider = Azure::Web::Mgmt::V2015_04_01::DomainRegistrationProvider
      Domains = Azure::Web::Mgmt::V2015_04_01::Domains
      TopLevelDomains = Azure::Web::Mgmt::V2015_04_01::TopLevelDomains
      AppServiceCertificateOrders = Azure::Web::Mgmt::V2015_08_01::AppServiceCertificateOrders
      CertificateRegistrationProvider = Azure::Web::Mgmt::V2015_08_01::CertificateRegistrationProvider
      Diagnostics = Azure::Web::Mgmt::V2016_03_01::Diagnostics
      Certificates = Azure::Web::Mgmt::V2016_03_01::Certificates
      DeletedWebApps = Azure::Web::Mgmt::V2016_03_01::DeletedWebApps
      Recommendations = Azure::Web::Mgmt::V2016_03_01::Recommendations
      Provider = Azure::Web::Mgmt::V2016_03_01::Provider
      WebApps = Azure::Web::Mgmt::V2016_08_01::WebApps
      AppServiceEnvironments = Azure::Web::Mgmt::V2016_09_01::AppServiceEnvironments
      AppServicePlans = Azure::Web::Mgmt::V2016_09_01::AppServicePlans

      module Models
        TopLevelDomain = Azure::Web::Mgmt::V2015_04_01::Models::TopLevelDomain
        DomainStatus = Azure::Web::Mgmt::V2015_04_01::Models::DomainStatus
        DnsType = Azure::Web::Mgmt::V2015_04_01::Models::DnsType
        DomainType = Azure::Web::Mgmt::V2015_04_01::Models::DomainType
        DomainOwnershipIdentifier = Azure::Web::Mgmt::V2015_04_01::Models::DomainOwnershipIdentifier
        ErrorResponse = Azure::Web::Mgmt::V2015_04_01::Models::ErrorResponse
        Domain = Azure::Web::Mgmt::V2015_04_01::Models::Domain
        Contact = Azure::Web::Mgmt::V2015_04_01::Models::Contact
        DomainPurchaseConsent = Azure::Web::Mgmt::V2015_04_01::Models::DomainPurchaseConsent
        DomainAvailablilityCheckResult = Azure::Web::Mgmt::V2015_04_01::Models::DomainAvailablilityCheckResult
        DomainControlCenterSsoRequest = Azure::Web::Mgmt::V2015_04_01::Models::DomainControlCenterSsoRequest
        DomainOwnershipIdentifierCollection = Azure::Web::Mgmt::V2015_04_01::Models::DomainOwnershipIdentifierCollection
        DomainRecommendationSearchParameters = Azure::Web::Mgmt::V2015_04_01::Models::DomainRecommendationSearchParameters
        NameIdentifierCollection = Azure::Web::Mgmt::V2015_04_01::Models::NameIdentifierCollection
        Address = Azure::Web::Mgmt::V2015_04_01::Models::Address
        HostName = Azure::Web::Mgmt::V2015_04_01::Models::HostName
        TopLevelDomainCollection = Azure::Web::Mgmt::V2015_04_01::Models::TopLevelDomainCollection
        DomainCollection = Azure::Web::Mgmt::V2015_04_01::Models::DomainCollection
        TldLegalAgreement = Azure::Web::Mgmt::V2015_04_01::Models::TldLegalAgreement
        TopLevelDomainAgreementOption = Azure::Web::Mgmt::V2015_04_01::Models::TopLevelDomainAgreementOption
        TldLegalAgreementCollection = Azure::Web::Mgmt::V2015_04_01::Models::TldLegalAgreementCollection
        DomainPatchResource = Azure::Web::Mgmt::V2015_04_01::Models::DomainPatchResource
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
        SiteSeal = Azure::Web::Mgmt::V2015_08_01::Models::SiteSeal
        ReissueCertificateOrderRequest = Azure::Web::Mgmt::V2015_08_01::Models::ReissueCertificateOrderRequest
        AppServiceCertificateOrderPatchResource = Azure::Web::Mgmt::V2015_08_01::Models::AppServiceCertificateOrderPatchResource
        CertificateOrderAction = Azure::Web::Mgmt::V2015_08_01::Models::CertificateOrderAction
        AppServiceCertificatePatchResource = Azure::Web::Mgmt::V2015_08_01::Models::AppServiceCertificatePatchResource
        CertificateDetails = Azure::Web::Mgmt::V2015_08_01::Models::CertificateDetails
        CertificateOrderActionType = Azure::Web::Mgmt::V2015_08_01::Models::CertificateOrderActionType
        GeoRegion = Azure::Web::Mgmt::V2016_03_01::Models::GeoRegion
        MetricAvailability = Azure::Web::Mgmt::V2016_03_01::Models::MetricAvailability
        NotificationLevel = Azure::Web::Mgmt::V2016_03_01::Models::NotificationLevel
        ServiceSpecification = Azure::Web::Mgmt::V2016_03_01::Models::ServiceSpecification
        CheckNameResourceTypes = Azure::Web::Mgmt::V2016_03_01::Models::CheckNameResourceTypes
        SolutionType = Azure::Web::Mgmt::V2016_03_01::Models::SolutionType
        ResourceScopeType = Azure::Web::Mgmt::V2016_03_01::Models::ResourceScopeType
        Channels = Azure::Web::Mgmt::V2016_03_01::Models::Channels
        IssueType = Azure::Web::Mgmt::V2016_03_01::Models::IssueType
        KeyVaultSecretStatus = Azure::Web::Mgmt::V2016_03_01::Models::KeyVaultSecretStatus
        SkuName = Azure::Web::Mgmt::V2016_03_01::Models::SkuName
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
        DeletedSite = Azure::Web::Mgmt::V2016_03_01::Models::DeletedSite
        DeletedWebAppCollection = Azure::Web::Mgmt::V2016_03_01::Models::DeletedWebAppCollection
        Solution = Azure::Web::Mgmt::V2016_03_01::Models::Solution
        DetectorAbnormalTimePeriod = Azure::Web::Mgmt::V2016_03_01::Models::DetectorAbnormalTimePeriod
        ValidateResponseError = Azure::Web::Mgmt::V2016_03_01::Models::ValidateResponseError
        ResourceNameAvailability = Azure::Web::Mgmt::V2016_03_01::Models::ResourceNameAvailability
        RecommendationRule = Azure::Web::Mgmt::V2016_03_01::Models::RecommendationRule
        AbnormalTimePeriod = Azure::Web::Mgmt::V2016_03_01::Models::AbnormalTimePeriod
        DiagnosticMetricSample = Azure::Web::Mgmt::V2016_03_01::Models::DiagnosticMetricSample
        ResponseMetaData = Azure::Web::Mgmt::V2016_03_01::Models::ResponseMetaData
        AnalysisData = Azure::Web::Mgmt::V2016_03_01::Models::AnalysisData
        DiagnosticMetricSet = Azure::Web::Mgmt::V2016_03_01::Models::DiagnosticMetricSet
        Recommendation = Azure::Web::Mgmt::V2016_03_01::Models::Recommendation
        DataSource = Azure::Web::Mgmt::V2016_03_01::Models::DataSource
        DiagnosticDetectorCollection = Azure::Web::Mgmt::V2016_03_01::Models::DiagnosticDetectorCollection
        SkuInfos = Azure::Web::Mgmt::V2016_03_01::Models::SkuInfos
        DiagnosticCategoryCollection = Azure::Web::Mgmt::V2016_03_01::Models::DiagnosticCategoryCollection
        DiagnosticAnalysisCollection = Azure::Web::Mgmt::V2016_03_01::Models::DiagnosticAnalysisCollection
        DetectorDefinition = Azure::Web::Mgmt::V2016_03_01::Models::DetectorDefinition
        CertificatePatchResource = Azure::Web::Mgmt::V2016_03_01::Models::CertificatePatchResource
        DiagnosticAnalysis = Azure::Web::Mgmt::V2016_03_01::Models::DiagnosticAnalysis
        AnalysisDefinition = Azure::Web::Mgmt::V2016_03_01::Models::AnalysisDefinition
        DiagnosticDetectorResponse = Azure::Web::Mgmt::V2016_03_01::Models::DiagnosticDetectorResponse
        DiagnosticCategory = Azure::Web::Mgmt::V2016_03_01::Models::DiagnosticCategory
        Dimension = Azure::Web::Mgmt::V2016_03_01::Models::Dimension
        MetricSpecification = Azure::Web::Mgmt::V2016_03_01::Models::MetricSpecification
        CertificateCollection = Azure::Web::Mgmt::V2016_03_01::Models::CertificateCollection
        CsmOperationDisplay = Azure::Web::Mgmt::V2016_03_01::Models::CsmOperationDisplay
        CsmOperationCollection = Azure::Web::Mgmt::V2016_03_01::Models::CsmOperationCollection
        VnetValidationTestFailure = Azure::Web::Mgmt::V2016_03_01::Models::VnetValidationTestFailure
        PremierAddOnOffer = Azure::Web::Mgmt::V2016_03_01::Models::PremierAddOnOffer
        VnetParameters = Azure::Web::Mgmt::V2016_03_01::Models::VnetParameters
        VnetValidationFailureDetails = Azure::Web::Mgmt::V2016_03_01::Models::VnetValidationFailureDetails
        SourceControl = Azure::Web::Mgmt::V2016_03_01::Models::SourceControl
        AppServicePlanRestrictions = Azure::Web::Mgmt::V2016_03_01::Models::AppServicePlanRestrictions
        NameIdentifier = Azure::Web::Mgmt::V2016_03_01::Models::NameIdentifier
        CsmOperationDescription = Azure::Web::Mgmt::V2016_03_01::Models::CsmOperationDescription
        CsmOperationDescriptionProperties = Azure::Web::Mgmt::V2016_03_01::Models::CsmOperationDescriptionProperties
        ValidateResourceTypes = Azure::Web::Mgmt::V2016_03_01::Models::ValidateResourceTypes
        InAvailabilityReasonType = Azure::Web::Mgmt::V2016_03_01::Models::InAvailabilityReasonType
        PublicCertificate = Azure::Web::Mgmt::V2016_08_01::Models::PublicCertificate
        RestoreResponse = Azure::Web::Mgmt::V2016_08_01::Models::RestoreResponse
        MigrateMySqlRequest = Azure::Web::Mgmt::V2016_08_01::Models::MigrateMySqlRequest
        MigrateMySqlStatus = Azure::Web::Mgmt::V2016_08_01::Models::MigrateMySqlStatus
        RelayServiceConnectionEntity = Azure::Web::Mgmt::V2016_08_01::Models::RelayServiceConnectionEntity
        RestoreRequest = Azure::Web::Mgmt::V2016_08_01::Models::RestoreRequest
        SiteInstance = Azure::Web::Mgmt::V2016_08_01::Models::SiteInstance
        TriggeredJobRun = Azure::Web::Mgmt::V2016_08_01::Models::TriggeredJobRun
        SitePhpErrorLogFlag = Azure::Web::Mgmt::V2016_08_01::Models::SitePhpErrorLogFlag
        SlotConfigNamesResource = Azure::Web::Mgmt::V2016_08_01::Models::SlotConfigNamesResource
        SiteAuthSettings = Azure::Web::Mgmt::V2016_08_01::Models::SiteAuthSettings
        SiteConfigResource = Azure::Web::Mgmt::V2016_08_01::Models::SiteConfigResource
        SiteConfigurationSnapshotInfo = Azure::Web::Mgmt::V2016_08_01::Models::SiteConfigurationSnapshotInfo
        StringDictionary = Azure::Web::Mgmt::V2016_08_01::Models::StringDictionary
        TriggeredJobHistory = Azure::Web::Mgmt::V2016_08_01::Models::TriggeredJobHistory
        SitePatchResource = Azure::Web::Mgmt::V2016_08_01::Models::SitePatchResource
        WebJob = Azure::Web::Mgmt::V2016_08_01::Models::WebJob
        SiteSourceControl = Azure::Web::Mgmt::V2016_08_01::Models::SiteSourceControl
        BackupItemStatus = Azure::Web::Mgmt::V2016_08_01::Models::BackupItemStatus
        SlotDifference = Azure::Web::Mgmt::V2016_08_01::Models::SlotDifference
        StorageMigrationOptions = Azure::Web::Mgmt::V2016_08_01::Models::StorageMigrationOptions
        StorageMigrationResponse = Azure::Web::Mgmt::V2016_08_01::Models::StorageMigrationResponse
        TriggeredWebJob = Azure::Web::Mgmt::V2016_08_01::Models::TriggeredWebJob
        AzureResourceType = Azure::Web::Mgmt::V2016_08_01::Models::AzureResourceType
        LogLevel = Azure::Web::Mgmt::V2016_08_01::Models::LogLevel
        DatabaseType = Azure::Web::Mgmt::V2016_08_01::Models::DatabaseType
        BackupRestoreOperationType = Azure::Web::Mgmt::V2016_08_01::Models::BackupRestoreOperationType
        ContinuousWebJobStatus = Azure::Web::Mgmt::V2016_08_01::Models::ContinuousWebJobStatus
        PublishingProfileFormat = Azure::Web::Mgmt::V2016_08_01::Models::PublishingProfileFormat
        DnsVerificationTestResult = Azure::Web::Mgmt::V2016_08_01::Models::DnsVerificationTestResult
        MSDeployLogEntryType = Azure::Web::Mgmt::V2016_08_01::Models::MSDeployLogEntryType
        MySqlMigrationType = Azure::Web::Mgmt::V2016_08_01::Models::MySqlMigrationType
        PublicCertificateLocation = Azure::Web::Mgmt::V2016_08_01::Models::PublicCertificateLocation
        Snapshot = Azure::Web::Mgmt::V2016_08_01::Models::Snapshot
        FrequencyUnit = Azure::Web::Mgmt::V2016_08_01::Models::FrequencyUnit
        CustomHostNameDnsRecordType = Azure::Web::Mgmt::V2016_08_01::Models::CustomHostNameDnsRecordType
        HostNameType = Azure::Web::Mgmt::V2016_08_01::Models::HostNameType
        WebJobType = Azure::Web::Mgmt::V2016_08_01::Models::WebJobType
        MSDeployProvisioningState = Azure::Web::Mgmt::V2016_08_01::Models::MSDeployProvisioningState
        UnauthenticatedClientAction = Azure::Web::Mgmt::V2016_08_01::Models::UnauthenticatedClientAction
        BuiltInAuthenticationProvider = Azure::Web::Mgmt::V2016_08_01::Models::BuiltInAuthenticationProvider
        CloneAbilityResult = Azure::Web::Mgmt::V2016_08_01::Models::CloneAbilityResult
        SiteExtensionType = Azure::Web::Mgmt::V2016_08_01::Models::SiteExtensionType
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
        IdentifierCollection = Azure::Web::Mgmt::V2016_08_01::Models::IdentifierCollection
        PublicCertificateCollection = Azure::Web::Mgmt::V2016_08_01::Models::PublicCertificateCollection
        TriggeredWebJobCollection = Azure::Web::Mgmt::V2016_08_01::Models::TriggeredWebJobCollection
        EnabledConfig = Azure::Web::Mgmt::V2016_08_01::Models::EnabledConfig
        TriggeredJobHistoryCollection = Azure::Web::Mgmt::V2016_08_01::Models::TriggeredJobHistoryCollection
        SnapshotCollection = Azure::Web::Mgmt::V2016_08_01::Models::SnapshotCollection
        SiteCloneability = Azure::Web::Mgmt::V2016_08_01::Models::SiteCloneability
        SiteCloneabilityCriterion = Azure::Web::Mgmt::V2016_08_01::Models::SiteCloneabilityCriterion
        HostNameBindingCollection = Azure::Web::Mgmt::V2016_08_01::Models::HostNameBindingCollection
        WebJobCollection = Azure::Web::Mgmt::V2016_08_01::Models::WebJobCollection
        ContinuousWebJobCollection = Azure::Web::Mgmt::V2016_08_01::Models::ContinuousWebJobCollection
        AzureBlobStorageHttpLogsConfig = Azure::Web::Mgmt::V2016_08_01::Models::AzureBlobStorageHttpLogsConfig
        PerfMonCounterCollection = Azure::Web::Mgmt::V2016_08_01::Models::PerfMonCounterCollection
        HttpLogsConfig = Azure::Web::Mgmt::V2016_08_01::Models::HttpLogsConfig
        FileSystemApplicationLogsConfig = Azure::Web::Mgmt::V2016_08_01::Models::FileSystemApplicationLogsConfig
        PerfMonSet = Azure::Web::Mgmt::V2016_08_01::Models::PerfMonSet
        AzureBlobStorageApplicationLogsConfig = Azure::Web::Mgmt::V2016_08_01::Models::AzureBlobStorageApplicationLogsConfig
        DeploymentCollection = Azure::Web::Mgmt::V2016_08_01::Models::DeploymentCollection
        MSDeployLogEntry = Azure::Web::Mgmt::V2016_08_01::Models::MSDeployLogEntry
        FileSystemHttpLogsConfig = Azure::Web::Mgmt::V2016_08_01::Models::FileSystemHttpLogsConfig
        PerfMonResponse = Azure::Web::Mgmt::V2016_08_01::Models::PerfMonResponse
        SiteConfigurationSnapshotInfoCollection = Azure::Web::Mgmt::V2016_08_01::Models::SiteConfigurationSnapshotInfoCollection
        SiteConfigResourceCollection = Azure::Web::Mgmt::V2016_08_01::Models::SiteConfigResourceCollection
        PerfMonSample = Azure::Web::Mgmt::V2016_08_01::Models::PerfMonSample
        SlotDifferenceCollection = Azure::Web::Mgmt::V2016_08_01::Models::SlotDifferenceCollection
        ConnectionStringDictionary = Azure::Web::Mgmt::V2016_08_01::Models::ConnectionStringDictionary
        FunctionEnvelopeCollection = Azure::Web::Mgmt::V2016_08_01::Models::FunctionEnvelopeCollection
        CsmSlotEntity = Azure::Web::Mgmt::V2016_08_01::Models::CsmSlotEntity
        BackupItem = Azure::Web::Mgmt::V2016_08_01::Models::BackupItem
        ContinuousWebJob = Azure::Web::Mgmt::V2016_08_01::Models::ContinuousWebJob
        Deployment = Azure::Web::Mgmt::V2016_08_01::Models::Deployment
        HostNameBinding = Azure::Web::Mgmt::V2016_08_01::Models::HostNameBinding
        MSDeployLog = Azure::Web::Mgmt::V2016_08_01::Models::MSDeployLog
        FunctionEnvelope = Azure::Web::Mgmt::V2016_08_01::Models::FunctionEnvelope
        SiteExtensionInfoCollection = Azure::Web::Mgmt::V2016_08_01::Models::SiteExtensionInfoCollection
        PremierAddOn = Azure::Web::Mgmt::V2016_08_01::Models::PremierAddOn
        MSDeployStatus = Azure::Web::Mgmt::V2016_08_01::Models::MSDeployStatus
        CustomHostnameAnalysisResult = Azure::Web::Mgmt::V2016_08_01::Models::CustomHostnameAnalysisResult
        NetworkFeatures = Azure::Web::Mgmt::V2016_08_01::Models::NetworkFeatures
        ProcessModuleInfo = Azure::Web::Mgmt::V2016_08_01::Models::ProcessModuleInfo
        BackupRequest = Azure::Web::Mgmt::V2016_08_01::Models::BackupRequest
        MSDeploy = Azure::Web::Mgmt::V2016_08_01::Models::MSDeploy
        ProcessInfo = Azure::Web::Mgmt::V2016_08_01::Models::ProcessInfo
        ProcessThreadInfo = Azure::Web::Mgmt::V2016_08_01::Models::ProcessThreadInfo
        SiteLogsConfig = Azure::Web::Mgmt::V2016_08_01::Models::SiteLogsConfig
        BackupSchedule = Azure::Web::Mgmt::V2016_08_01::Models::BackupSchedule
        SiteExtensionInfo = Azure::Web::Mgmt::V2016_08_01::Models::SiteExtensionInfo
        FunctionSecrets = Azure::Web::Mgmt::V2016_08_01::Models::FunctionSecrets
        VnetGateway = Azure::Web::Mgmt::V2016_09_01::Models::VnetGateway
        SnapshotRecoveryRequest = Azure::Web::Mgmt::V2016_09_01::Models::SnapshotRecoveryRequest
        ResourceMetricDefinition = Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetricDefinition
        PushSettings = Azure::Web::Mgmt::V2016_09_01::Models::PushSettings
        HybridConnectionKey = Azure::Web::Mgmt::V2016_09_01::Models::HybridConnectionKey
        Site = Azure::Web::Mgmt::V2016_09_01::Models::Site
        AppServicePlan = Azure::Web::Mgmt::V2016_09_01::Models::AppServicePlan
        Identifier = Azure::Web::Mgmt::V2016_09_01::Models::Identifier
        MetricDefinition = Azure::Web::Mgmt::V2016_09_01::Models::MetricDefinition
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
        OperationStatus = Azure::Web::Mgmt::V2016_09_01::Models::OperationStatus
        Operation = Azure::Web::Mgmt::V2016_09_01::Models::Operation
        HybridConnection = Azure::Web::Mgmt::V2016_09_01::Models::HybridConnection
        Usage = Azure::Web::Mgmt::V2016_09_01::Models::Usage
        Resource = Azure::Web::Mgmt::V2016_09_01::Models::Resource
        ProvisioningState = Azure::Web::Mgmt::V2016_09_01::Models::ProvisioningState
        ProxyOnlyResource = Azure::Web::Mgmt::V2016_09_01::Models::ProxyOnlyResource
        LocalizableString = Azure::Web::Mgmt::V2016_09_01::Models::LocalizableString
        User = Azure::Web::Mgmt::V2016_09_01::Models::User
        VirtualNetworkProfile = Azure::Web::Mgmt::V2016_09_01::Models::VirtualNetworkProfile
        WorkerPool = Azure::Web::Mgmt::V2016_09_01::Models::WorkerPool
        VirtualIPMapping = Azure::Web::Mgmt::V2016_09_01::Models::VirtualIPMapping
        StampCapacity = Azure::Web::Mgmt::V2016_09_01::Models::StampCapacity
        AppServiceEnvironmentCollection = Azure::Web::Mgmt::V2016_09_01::Models::AppServiceEnvironmentCollection
        NetworkAccessControlEntry = Azure::Web::Mgmt::V2016_09_01::Models::NetworkAccessControlEntry
        AddressResponse = Azure::Web::Mgmt::V2016_09_01::Models::AddressResponse
        SkuInfoCollection = Azure::Web::Mgmt::V2016_09_01::Models::SkuInfoCollection
        ResourceCollection = Azure::Web::Mgmt::V2016_09_01::Models::ResourceCollection
        WorkerPoolCollection = Azure::Web::Mgmt::V2016_09_01::Models::WorkerPoolCollection
        HybridConnectionCollection = Azure::Web::Mgmt::V2016_09_01::Models::HybridConnectionCollection
        HostingEnvironmentDiagnostics = Azure::Web::Mgmt::V2016_09_01::Models::HostingEnvironmentDiagnostics
        CsmUsageQuotaCollection = Azure::Web::Mgmt::V2016_09_01::Models::CsmUsageQuotaCollection
        ErrorEntity = Azure::Web::Mgmt::V2016_09_01::Models::ErrorEntity
        UsageCollection = Azure::Web::Mgmt::V2016_09_01::Models::UsageCollection
        SkuInfo = Azure::Web::Mgmt::V2016_09_01::Models::SkuInfo
        AppServiceEnvironmentResource = Azure::Web::Mgmt::V2016_09_01::Models::AppServiceEnvironmentResource
        ResourceMetricProperty = Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetricProperty
        ResourceMetricValue = Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetricValue
        AppServicePlanCollection = Azure::Web::Mgmt::V2016_09_01::Models::AppServicePlanCollection
        ResourceMetric = Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetric
        MetricAvailabilily = Azure::Web::Mgmt::V2016_09_01::Models::MetricAvailabilily
        ResourceMetricCollection = Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetricCollection
        ResourceMetricDefinitionCollection = Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetricDefinitionCollection
        StampCapacityCollection = Azure::Web::Mgmt::V2016_09_01::Models::StampCapacityCollection
        HybridConnectionLimits = Azure::Web::Mgmt::V2016_09_01::Models::HybridConnectionLimits
        CsmUsageQuota = Azure::Web::Mgmt::V2016_09_01::Models::CsmUsageQuota
        WorkerPoolResource = Azure::Web::Mgmt::V2016_09_01::Models::WorkerPoolResource
        ManagedServiceIdentity = Azure::Web::Mgmt::V2016_09_01::Models::ManagedServiceIdentity
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
        WorkerSizeOptions = Azure::Web::Mgmt::V2016_09_01::Models::WorkerSizeOptions
        CorsSettings = Azure::Web::Mgmt::V2016_09_01::Models::CorsSettings
        AutoHealCustomAction = Azure::Web::Mgmt::V2016_09_01::Models::AutoHealCustomAction
        ComputeModeOptions = Azure::Web::Mgmt::V2016_09_01::Models::ComputeModeOptions
        AutoHealActions = Azure::Web::Mgmt::V2016_09_01::Models::AutoHealActions
        AccessControlEntryAction = Azure::Web::Mgmt::V2016_09_01::Models::AccessControlEntryAction
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
        Experiments = Azure::Web::Mgmt::V2016_09_01::Models::Experiments
        VirtualDirectory = Azure::Web::Mgmt::V2016_09_01::Models::VirtualDirectory
        VirtualApplication = Azure::Web::Mgmt::V2016_09_01::Models::VirtualApplication
        HandlerMapping = Azure::Web::Mgmt::V2016_09_01::Models::HandlerMapping
        SiteMachineKey = Azure::Web::Mgmt::V2016_09_01::Models::SiteMachineKey
        VnetRoute = Azure::Web::Mgmt::V2016_09_01::Models::VnetRoute
        VnetInfo = Azure::Web::Mgmt::V2016_09_01::Models::VnetInfo
      end

      class WebManagementClass
        attr_reader :domain_registration_provider, :domains, :top_level_domains, :app_service_certificate_orders, :certificate_registration_provider, :diagnostics, :certificates, :deleted_web_apps, :recommendations, :provider, :web_apps, :app_service_environments, :app_service_plans, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Web::Mgmt::V2015_04_01::WebSiteManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @domain_registration_provider = @client_0.domain_registration_provider
          @domains = @client_0.domains
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
          @diagnostics = @client_2.diagnostics
          @certificates = @client_2.certificates
          @deleted_web_apps = @client_2.deleted_web_apps
          @recommendations = @client_2.recommendations
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
          def domain_ownership_identifier
            Azure::Web::Mgmt::V2015_04_01::Models::DomainOwnershipIdentifier
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
          def domain_ownership_identifier_collection
            Azure::Web::Mgmt::V2015_04_01::Models::DomainOwnershipIdentifierCollection
          end
          def domain_recommendation_search_parameters
            Azure::Web::Mgmt::V2015_04_01::Models::DomainRecommendationSearchParameters
          end
          def name_identifier_collection
            Azure::Web::Mgmt::V2015_04_01::Models::NameIdentifierCollection
          end
          def address
            Azure::Web::Mgmt::V2015_04_01::Models::Address
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
          def tld_legal_agreement_collection
            Azure::Web::Mgmt::V2015_04_01::Models::TldLegalAgreementCollection
          end
          def domain_patch_resource
            Azure::Web::Mgmt::V2015_04_01::Models::DomainPatchResource
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
          def site_seal
            Azure::Web::Mgmt::V2015_08_01::Models::SiteSeal
          end
          def reissue_certificate_order_request
            Azure::Web::Mgmt::V2015_08_01::Models::ReissueCertificateOrderRequest
          end
          def app_service_certificate_order_patch_resource
            Azure::Web::Mgmt::V2015_08_01::Models::AppServiceCertificateOrderPatchResource
          end
          def certificate_order_action
            Azure::Web::Mgmt::V2015_08_01::Models::CertificateOrderAction
          end
          def app_service_certificate_patch_resource
            Azure::Web::Mgmt::V2015_08_01::Models::AppServiceCertificatePatchResource
          end
          def certificate_details
            Azure::Web::Mgmt::V2015_08_01::Models::CertificateDetails
          end
          def certificate_order_action_type
            Azure::Web::Mgmt::V2015_08_01::Models::CertificateOrderActionType
          end
          def geo_region
            Azure::Web::Mgmt::V2016_03_01::Models::GeoRegion
          end
          def metric_availability
            Azure::Web::Mgmt::V2016_03_01::Models::MetricAvailability
          end
          def notification_level
            Azure::Web::Mgmt::V2016_03_01::Models::NotificationLevel
          end
          def service_specification
            Azure::Web::Mgmt::V2016_03_01::Models::ServiceSpecification
          end
          def check_name_resource_types
            Azure::Web::Mgmt::V2016_03_01::Models::CheckNameResourceTypes
          end
          def solution_type
            Azure::Web::Mgmt::V2016_03_01::Models::SolutionType
          end
          def resource_scope_type
            Azure::Web::Mgmt::V2016_03_01::Models::ResourceScopeType
          end
          def channels
            Azure::Web::Mgmt::V2016_03_01::Models::Channels
          end
          def issue_type
            Azure::Web::Mgmt::V2016_03_01::Models::IssueType
          end
          def key_vault_secret_status
            Azure::Web::Mgmt::V2016_03_01::Models::KeyVaultSecretStatus
          end
          def sku_name
            Azure::Web::Mgmt::V2016_03_01::Models::SkuName
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
          def deleted_site
            Azure::Web::Mgmt::V2016_03_01::Models::DeletedSite
          end
          def deleted_web_app_collection
            Azure::Web::Mgmt::V2016_03_01::Models::DeletedWebAppCollection
          end
          def solution
            Azure::Web::Mgmt::V2016_03_01::Models::Solution
          end
          def detector_abnormal_time_period
            Azure::Web::Mgmt::V2016_03_01::Models::DetectorAbnormalTimePeriod
          end
          def validate_response_error
            Azure::Web::Mgmt::V2016_03_01::Models::ValidateResponseError
          end
          def resource_name_availability
            Azure::Web::Mgmt::V2016_03_01::Models::ResourceNameAvailability
          end
          def recommendation_rule
            Azure::Web::Mgmt::V2016_03_01::Models::RecommendationRule
          end
          def abnormal_time_period
            Azure::Web::Mgmt::V2016_03_01::Models::AbnormalTimePeriod
          end
          def diagnostic_metric_sample
            Azure::Web::Mgmt::V2016_03_01::Models::DiagnosticMetricSample
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
          def recommendation
            Azure::Web::Mgmt::V2016_03_01::Models::Recommendation
          end
          def data_source
            Azure::Web::Mgmt::V2016_03_01::Models::DataSource
          end
          def diagnostic_detector_collection
            Azure::Web::Mgmt::V2016_03_01::Models::DiagnosticDetectorCollection
          end
          def sku_infos
            Azure::Web::Mgmt::V2016_03_01::Models::SkuInfos
          end
          def diagnostic_category_collection
            Azure::Web::Mgmt::V2016_03_01::Models::DiagnosticCategoryCollection
          end
          def diagnostic_analysis_collection
            Azure::Web::Mgmt::V2016_03_01::Models::DiagnosticAnalysisCollection
          end
          def detector_definition
            Azure::Web::Mgmt::V2016_03_01::Models::DetectorDefinition
          end
          def certificate_patch_resource
            Azure::Web::Mgmt::V2016_03_01::Models::CertificatePatchResource
          end
          def diagnostic_analysis
            Azure::Web::Mgmt::V2016_03_01::Models::DiagnosticAnalysis
          end
          def analysis_definition
            Azure::Web::Mgmt::V2016_03_01::Models::AnalysisDefinition
          end
          def diagnostic_detector_response
            Azure::Web::Mgmt::V2016_03_01::Models::DiagnosticDetectorResponse
          end
          def diagnostic_category
            Azure::Web::Mgmt::V2016_03_01::Models::DiagnosticCategory
          end
          def dimension
            Azure::Web::Mgmt::V2016_03_01::Models::Dimension
          end
          def metric_specification
            Azure::Web::Mgmt::V2016_03_01::Models::MetricSpecification
          end
          def certificate_collection
            Azure::Web::Mgmt::V2016_03_01::Models::CertificateCollection
          end
          def csm_operation_display
            Azure::Web::Mgmt::V2016_03_01::Models::CsmOperationDisplay
          end
          def csm_operation_collection
            Azure::Web::Mgmt::V2016_03_01::Models::CsmOperationCollection
          end
          def vnet_validation_test_failure
            Azure::Web::Mgmt::V2016_03_01::Models::VnetValidationTestFailure
          end
          def premier_add_on_offer
            Azure::Web::Mgmt::V2016_03_01::Models::PremierAddOnOffer
          end
          def vnet_parameters
            Azure::Web::Mgmt::V2016_03_01::Models::VnetParameters
          end
          def vnet_validation_failure_details
            Azure::Web::Mgmt::V2016_03_01::Models::VnetValidationFailureDetails
          end
          def source_control
            Azure::Web::Mgmt::V2016_03_01::Models::SourceControl
          end
          def app_service_plan_restrictions
            Azure::Web::Mgmt::V2016_03_01::Models::AppServicePlanRestrictions
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
          def validate_resource_types
            Azure::Web::Mgmt::V2016_03_01::Models::ValidateResourceTypes
          end
          def in_availability_reason_type
            Azure::Web::Mgmt::V2016_03_01::Models::InAvailabilityReasonType
          end
          def public_certificate
            Azure::Web::Mgmt::V2016_08_01::Models::PublicCertificate
          end
          def restore_response
            Azure::Web::Mgmt::V2016_08_01::Models::RestoreResponse
          end
          def migrate_my_sql_request
            Azure::Web::Mgmt::V2016_08_01::Models::MigrateMySqlRequest
          end
          def migrate_my_sql_status
            Azure::Web::Mgmt::V2016_08_01::Models::MigrateMySqlStatus
          end
          def relay_service_connection_entity
            Azure::Web::Mgmt::V2016_08_01::Models::RelayServiceConnectionEntity
          end
          def restore_request
            Azure::Web::Mgmt::V2016_08_01::Models::RestoreRequest
          end
          def site_instance
            Azure::Web::Mgmt::V2016_08_01::Models::SiteInstance
          end
          def triggered_job_run
            Azure::Web::Mgmt::V2016_08_01::Models::TriggeredJobRun
          end
          def site_php_error_log_flag
            Azure::Web::Mgmt::V2016_08_01::Models::SitePhpErrorLogFlag
          end
          def slot_config_names_resource
            Azure::Web::Mgmt::V2016_08_01::Models::SlotConfigNamesResource
          end
          def site_auth_settings
            Azure::Web::Mgmt::V2016_08_01::Models::SiteAuthSettings
          end
          def site_config_resource
            Azure::Web::Mgmt::V2016_08_01::Models::SiteConfigResource
          end
          def site_configuration_snapshot_info
            Azure::Web::Mgmt::V2016_08_01::Models::SiteConfigurationSnapshotInfo
          end
          def string_dictionary
            Azure::Web::Mgmt::V2016_08_01::Models::StringDictionary
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
          def slot_difference
            Azure::Web::Mgmt::V2016_08_01::Models::SlotDifference
          end
          def storage_migration_options
            Azure::Web::Mgmt::V2016_08_01::Models::StorageMigrationOptions
          end
          def storage_migration_response
            Azure::Web::Mgmt::V2016_08_01::Models::StorageMigrationResponse
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
          def database_type
            Azure::Web::Mgmt::V2016_08_01::Models::DatabaseType
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
          def snapshot
            Azure::Web::Mgmt::V2016_08_01::Models::Snapshot
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
          def built_in_authentication_provider
            Azure::Web::Mgmt::V2016_08_01::Models::BuiltInAuthenticationProvider
          end
          def clone_ability_result
            Azure::Web::Mgmt::V2016_08_01::Models::CloneAbilityResult
          end
          def site_extension_type
            Azure::Web::Mgmt::V2016_08_01::Models::SiteExtensionType
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
          def identifier_collection
            Azure::Web::Mgmt::V2016_08_01::Models::IdentifierCollection
          end
          def public_certificate_collection
            Azure::Web::Mgmt::V2016_08_01::Models::PublicCertificateCollection
          end
          def triggered_web_job_collection
            Azure::Web::Mgmt::V2016_08_01::Models::TriggeredWebJobCollection
          end
          def enabled_config
            Azure::Web::Mgmt::V2016_08_01::Models::EnabledConfig
          end
          def triggered_job_history_collection
            Azure::Web::Mgmt::V2016_08_01::Models::TriggeredJobHistoryCollection
          end
          def snapshot_collection
            Azure::Web::Mgmt::V2016_08_01::Models::SnapshotCollection
          end
          def site_cloneability
            Azure::Web::Mgmt::V2016_08_01::Models::SiteCloneability
          end
          def site_cloneability_criterion
            Azure::Web::Mgmt::V2016_08_01::Models::SiteCloneabilityCriterion
          end
          def host_name_binding_collection
            Azure::Web::Mgmt::V2016_08_01::Models::HostNameBindingCollection
          end
          def web_job_collection
            Azure::Web::Mgmt::V2016_08_01::Models::WebJobCollection
          end
          def continuous_web_job_collection
            Azure::Web::Mgmt::V2016_08_01::Models::ContinuousWebJobCollection
          end
          def azure_blob_storage_http_logs_config
            Azure::Web::Mgmt::V2016_08_01::Models::AzureBlobStorageHttpLogsConfig
          end
          def perf_mon_counter_collection
            Azure::Web::Mgmt::V2016_08_01::Models::PerfMonCounterCollection
          end
          def http_logs_config
            Azure::Web::Mgmt::V2016_08_01::Models::HttpLogsConfig
          end
          def file_system_application_logs_config
            Azure::Web::Mgmt::V2016_08_01::Models::FileSystemApplicationLogsConfig
          end
          def perf_mon_set
            Azure::Web::Mgmt::V2016_08_01::Models::PerfMonSet
          end
          def azure_blob_storage_application_logs_config
            Azure::Web::Mgmt::V2016_08_01::Models::AzureBlobStorageApplicationLogsConfig
          end
          def deployment_collection
            Azure::Web::Mgmt::V2016_08_01::Models::DeploymentCollection
          end
          def msdeploy_log_entry
            Azure::Web::Mgmt::V2016_08_01::Models::MSDeployLogEntry
          end
          def file_system_http_logs_config
            Azure::Web::Mgmt::V2016_08_01::Models::FileSystemHttpLogsConfig
          end
          def perf_mon_response
            Azure::Web::Mgmt::V2016_08_01::Models::PerfMonResponse
          end
          def site_configuration_snapshot_info_collection
            Azure::Web::Mgmt::V2016_08_01::Models::SiteConfigurationSnapshotInfoCollection
          end
          def site_config_resource_collection
            Azure::Web::Mgmt::V2016_08_01::Models::SiteConfigResourceCollection
          end
          def perf_mon_sample
            Azure::Web::Mgmt::V2016_08_01::Models::PerfMonSample
          end
          def slot_difference_collection
            Azure::Web::Mgmt::V2016_08_01::Models::SlotDifferenceCollection
          end
          def connection_string_dictionary
            Azure::Web::Mgmt::V2016_08_01::Models::ConnectionStringDictionary
          end
          def function_envelope_collection
            Azure::Web::Mgmt::V2016_08_01::Models::FunctionEnvelopeCollection
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
          def deployment
            Azure::Web::Mgmt::V2016_08_01::Models::Deployment
          end
          def host_name_binding
            Azure::Web::Mgmt::V2016_08_01::Models::HostNameBinding
          end
          def msdeploy_log
            Azure::Web::Mgmt::V2016_08_01::Models::MSDeployLog
          end
          def function_envelope
            Azure::Web::Mgmt::V2016_08_01::Models::FunctionEnvelope
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
          def backup_request
            Azure::Web::Mgmt::V2016_08_01::Models::BackupRequest
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
          def site_logs_config
            Azure::Web::Mgmt::V2016_08_01::Models::SiteLogsConfig
          end
          def backup_schedule
            Azure::Web::Mgmt::V2016_08_01::Models::BackupSchedule
          end
          def site_extension_info
            Azure::Web::Mgmt::V2016_08_01::Models::SiteExtensionInfo
          end
          def function_secrets
            Azure::Web::Mgmt::V2016_08_01::Models::FunctionSecrets
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
          def identifier
            Azure::Web::Mgmt::V2016_09_01::Models::Identifier
          end
          def metric_definition
            Azure::Web::Mgmt::V2016_09_01::Models::MetricDefinition
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
          def operation_status
            Azure::Web::Mgmt::V2016_09_01::Models::OperationStatus
          end
          def operation
            Azure::Web::Mgmt::V2016_09_01::Models::Operation
          end
          def hybrid_connection
            Azure::Web::Mgmt::V2016_09_01::Models::HybridConnection
          end
          def usage
            Azure::Web::Mgmt::V2016_09_01::Models::Usage
          end
          def resource
            Azure::Web::Mgmt::V2016_09_01::Models::Resource
          end
          def provisioning_state
            Azure::Web::Mgmt::V2016_09_01::Models::ProvisioningState
          end
          def proxy_only_resource
            Azure::Web::Mgmt::V2016_09_01::Models::ProxyOnlyResource
          end
          def localizable_string
            Azure::Web::Mgmt::V2016_09_01::Models::LocalizableString
          end
          def user
            Azure::Web::Mgmt::V2016_09_01::Models::User
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
          def network_access_control_entry
            Azure::Web::Mgmt::V2016_09_01::Models::NetworkAccessControlEntry
          end
          def address_response
            Azure::Web::Mgmt::V2016_09_01::Models::AddressResponse
          end
          def sku_info_collection
            Azure::Web::Mgmt::V2016_09_01::Models::SkuInfoCollection
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
          def hosting_environment_diagnostics
            Azure::Web::Mgmt::V2016_09_01::Models::HostingEnvironmentDiagnostics
          end
          def csm_usage_quota_collection
            Azure::Web::Mgmt::V2016_09_01::Models::CsmUsageQuotaCollection
          end
          def error_entity
            Azure::Web::Mgmt::V2016_09_01::Models::ErrorEntity
          end
          def usage_collection
            Azure::Web::Mgmt::V2016_09_01::Models::UsageCollection
          end
          def sku_info
            Azure::Web::Mgmt::V2016_09_01::Models::SkuInfo
          end
          def app_service_environment_resource
            Azure::Web::Mgmt::V2016_09_01::Models::AppServiceEnvironmentResource
          end
          def resource_metric_property
            Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetricProperty
          end
          def resource_metric_value
            Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetricValue
          end
          def app_service_plan_collection
            Azure::Web::Mgmt::V2016_09_01::Models::AppServicePlanCollection
          end
          def resource_metric
            Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetric
          end
          def metric_availabilily
            Azure::Web::Mgmt::V2016_09_01::Models::MetricAvailabilily
          end
          def resource_metric_collection
            Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetricCollection
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
          def managed_service_identity
            Azure::Web::Mgmt::V2016_09_01::Models::ManagedServiceIdentity
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
          def worker_size_options
            Azure::Web::Mgmt::V2016_09_01::Models::WorkerSizeOptions
          end
          def cors_settings
            Azure::Web::Mgmt::V2016_09_01::Models::CorsSettings
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
          def access_control_entry_action
            Azure::Web::Mgmt::V2016_09_01::Models::AccessControlEntryAction
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
        end
      end
    end
  end
end
