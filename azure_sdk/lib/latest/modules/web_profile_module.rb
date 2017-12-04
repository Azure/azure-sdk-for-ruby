# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_web'

module Azure::Profiles::Latest
  module Web
    module Mgmt
      Domains = Azure::Web::Mgmt::V2015_04_01::Domains
      TopLevelDomains = Azure::Web::Mgmt::V2015_04_01::TopLevelDomains
      AppServiceCertificateOrders = Azure::Web::Mgmt::V2015_08_01::AppServiceCertificateOrders
      Certificates = Azure::Web::Mgmt::V2016_03_01::Certificates
      DeletedWebApps = Azure::Web::Mgmt::V2016_03_01::DeletedWebApps
      Provider = Azure::Web::Mgmt::V2016_03_01::Provider
      Recommendations = Azure::Web::Mgmt::V2016_03_01::Recommendations
      WebApps = Azure::Web::Mgmt::V2016_08_01::WebApps
      AppServiceEnvironments = Azure::Web::Mgmt::V2016_09_01::AppServiceEnvironments
      AppServicePlans = Azure::Web::Mgmt::V2016_09_01::AppServicePlans

      module Models
        Contact = Azure::Web::Mgmt::V2015_04_01::Models::Contact
        DomainPurchaseConsent = Azure::Web::Mgmt::V2015_04_01::Models::DomainPurchaseConsent
        DomainAvailablilityCheckResult = Azure::Web::Mgmt::V2015_04_01::Models::DomainAvailablilityCheckResult
        DomainControlCenterSsoRequest = Azure::Web::Mgmt::V2015_04_01::Models::DomainControlCenterSsoRequest
        DomainOwnershipIdentifierCollection = Azure::Web::Mgmt::V2015_04_01::Models::DomainOwnershipIdentifierCollection
        DomainRecommendationSearchParameters = Azure::Web::Mgmt::V2015_04_01::Models::DomainRecommendationSearchParameters
        NameIdentifierCollection = Azure::Web::Mgmt::V2015_04_01::Models::NameIdentifierCollection
        DomainCollection = Azure::Web::Mgmt::V2015_04_01::Models::DomainCollection
        TopLevelDomainCollection = Azure::Web::Mgmt::V2015_04_01::Models::TopLevelDomainCollection
        TldLegalAgreementCollection = Azure::Web::Mgmt::V2015_04_01::Models::TldLegalAgreementCollection
        HostName = Azure::Web::Mgmt::V2015_04_01::Models::HostName
        TopLevelDomainAgreementOption = Azure::Web::Mgmt::V2015_04_01::Models::TopLevelDomainAgreementOption
        TldLegalAgreement = Azure::Web::Mgmt::V2015_04_01::Models::TldLegalAgreement
        Address = Azure::Web::Mgmt::V2015_04_01::Models::Address
        Domain = Azure::Web::Mgmt::V2015_04_01::Models::Domain
        DomainOwnershipIdentifier = Azure::Web::Mgmt::V2015_04_01::Models::DomainOwnershipIdentifier
        DomainPatchResource = Azure::Web::Mgmt::V2015_04_01::Models::DomainPatchResource
        TopLevelDomain = Azure::Web::Mgmt::V2015_04_01::Models::TopLevelDomain
        DomainStatus = Azure::Web::Mgmt::V2015_04_01::Models::DomainStatus
        DnsType = Azure::Web::Mgmt::V2015_04_01::Models::DnsType
        DomainType = Azure::Web::Mgmt::V2015_04_01::Models::DomainType
        AppServiceCertificateCollection = Azure::Web::Mgmt::V2015_08_01::Models::AppServiceCertificateCollection
        NameIdentifier = Azure::Web::Mgmt::V2015_08_01::Models::NameIdentifier
        SiteSeal = Azure::Web::Mgmt::V2015_08_01::Models::SiteSeal
        AppServiceCertificate = Azure::Web::Mgmt::V2015_08_01::Models::AppServiceCertificate
        AppServiceCertificateOrderCollection = Azure::Web::Mgmt::V2015_08_01::Models::AppServiceCertificateOrderCollection
        SiteSealRequest = Azure::Web::Mgmt::V2015_08_01::Models::SiteSealRequest
        CertificateDetails = Azure::Web::Mgmt::V2015_08_01::Models::CertificateDetails
        AppServiceCertificateResource = Azure::Web::Mgmt::V2015_08_01::Models::AppServiceCertificateResource
        AppServiceCertificateOrder = Azure::Web::Mgmt::V2015_08_01::Models::AppServiceCertificateOrder
        AppServiceCertificateOrderPatchResource = Azure::Web::Mgmt::V2015_08_01::Models::AppServiceCertificateOrderPatchResource
        AppServiceCertificatePatchResource = Azure::Web::Mgmt::V2015_08_01::Models::AppServiceCertificatePatchResource
        CertificateEmail = Azure::Web::Mgmt::V2015_08_01::Models::CertificateEmail
        CertificateOrderAction = Azure::Web::Mgmt::V2015_08_01::Models::CertificateOrderAction
        ReissueCertificateOrderRequest = Azure::Web::Mgmt::V2015_08_01::Models::ReissueCertificateOrderRequest
        RenewCertificateOrderRequest = Azure::Web::Mgmt::V2015_08_01::Models::RenewCertificateOrderRequest
        CertificateProductType = Azure::Web::Mgmt::V2015_08_01::Models::CertificateProductType
        CertificateOrderStatus = Azure::Web::Mgmt::V2015_08_01::Models::CertificateOrderStatus
        CertificateOrderActionType = Azure::Web::Mgmt::V2015_08_01::Models::CertificateOrderActionType
        CertificateCollection = Azure::Web::Mgmt::V2016_03_01::Models::CertificateCollection
        ValidateResponseError = Azure::Web::Mgmt::V2016_03_01::Models::ValidateResponseError
        ValidateRequest = Azure::Web::Mgmt::V2016_03_01::Models::ValidateRequest
        SkuInfos = Azure::Web::Mgmt::V2016_03_01::Models::SkuInfos
        PremierAddOnOfferCollection = Azure::Web::Mgmt::V2016_03_01::Models::PremierAddOnOfferCollection
        ResourceNameAvailability = Azure::Web::Mgmt::V2016_03_01::Models::ResourceNameAvailability
        HostingEnvironmentDeploymentInfo = Azure::Web::Mgmt::V2016_03_01::Models::HostingEnvironmentDeploymentInfo
        AppServiceEnvironment = Azure::Web::Mgmt::V2016_03_01::Models::AppServiceEnvironment
        GlobalCsmSkuDescription = Azure::Web::Mgmt::V2016_03_01::Models::GlobalCsmSkuDescription
        GeoRegionCollection = Azure::Web::Mgmt::V2016_03_01::Models::GeoRegionCollection
        DeletedSite = Azure::Web::Mgmt::V2016_03_01::Models::DeletedSite
        DeletedWebAppCollection = Azure::Web::Mgmt::V2016_03_01::Models::DeletedWebAppCollection
        MetricAvailability = Azure::Web::Mgmt::V2016_03_01::Models::MetricAvailability
        Dimension = Azure::Web::Mgmt::V2016_03_01::Models::Dimension
        MetricSpecification = Azure::Web::Mgmt::V2016_03_01::Models::MetricSpecification
        ServiceSpecification = Azure::Web::Mgmt::V2016_03_01::Models::ServiceSpecification
        SourceControlCollection = Azure::Web::Mgmt::V2016_03_01::Models::SourceControlCollection
        CsmOperationDescriptionProperties = Azure::Web::Mgmt::V2016_03_01::Models::CsmOperationDescriptionProperties
        CsmOperationDisplay = Azure::Web::Mgmt::V2016_03_01::Models::CsmOperationDisplay
        CsmOperationDescription = Azure::Web::Mgmt::V2016_03_01::Models::CsmOperationDescription
        CsmOperationCollection = Azure::Web::Mgmt::V2016_03_01::Models::CsmOperationCollection
        Recommendation = Azure::Web::Mgmt::V2016_03_01::Models::Recommendation
        RecommendationRule = Azure::Web::Mgmt::V2016_03_01::Models::RecommendationRule
        CsmMoveResourceEnvelope = Azure::Web::Mgmt::V2016_03_01::Models::CsmMoveResourceEnvelope
        DeploymentLocations = Azure::Web::Mgmt::V2016_03_01::Models::DeploymentLocations
        ValidateResponse = Azure::Web::Mgmt::V2016_03_01::Models::ValidateResponse
        ResourceNameAvailabilityRequest = Azure::Web::Mgmt::V2016_03_01::Models::ResourceNameAvailabilityRequest
        Certificate = Azure::Web::Mgmt::V2016_03_01::Models::Certificate
        CertificatePatchResource = Azure::Web::Mgmt::V2016_03_01::Models::CertificatePatchResource
        GeoRegion = Azure::Web::Mgmt::V2016_03_01::Models::GeoRegion
        PremierAddOnOffer = Azure::Web::Mgmt::V2016_03_01::Models::PremierAddOnOffer
        SourceControl = Azure::Web::Mgmt::V2016_03_01::Models::SourceControl
        VnetParameters = Azure::Web::Mgmt::V2016_03_01::Models::VnetParameters
        VnetValidationTestFailure = Azure::Web::Mgmt::V2016_03_01::Models::VnetValidationTestFailure
        VnetValidationFailureDetails = Azure::Web::Mgmt::V2016_03_01::Models::VnetValidationFailureDetails
        KeyVaultSecretStatus = Azure::Web::Mgmt::V2016_03_01::Models::KeyVaultSecretStatus
        ResourceScopeType = Azure::Web::Mgmt::V2016_03_01::Models::ResourceScopeType
        NotificationLevel = Azure::Web::Mgmt::V2016_03_01::Models::NotificationLevel
        Channels = Azure::Web::Mgmt::V2016_03_01::Models::Channels
        AppServicePlanRestrictions = Azure::Web::Mgmt::V2016_03_01::Models::AppServicePlanRestrictions
        InAvailabilityReasonType = Azure::Web::Mgmt::V2016_03_01::Models::InAvailabilityReasonType
        CheckNameResourceTypes = Azure::Web::Mgmt::V2016_03_01::Models::CheckNameResourceTypes
        ValidateResourceTypes = Azure::Web::Mgmt::V2016_03_01::Models::ValidateResourceTypes
        SkuName = Azure::Web::Mgmt::V2016_03_01::Models::SkuName
        AzureTableStorageApplicationLogsConfig = Azure::Web::Mgmt::V2016_08_01::Models::AzureTableStorageApplicationLogsConfig
        ApplicationLogsConfig = Azure::Web::Mgmt::V2016_08_01::Models::ApplicationLogsConfig
        DatabaseBackupSetting = Azure::Web::Mgmt::V2016_08_01::Models::DatabaseBackupSetting
        BackupItemCollection = Azure::Web::Mgmt::V2016_08_01::Models::BackupItemCollection
        WebAppInstanceCollection = Azure::Web::Mgmt::V2016_08_01::Models::WebAppInstanceCollection
        ConnStringValueTypePair = Azure::Web::Mgmt::V2016_08_01::Models::ConnStringValueTypePair
        TriggeredWebJobCollection = Azure::Web::Mgmt::V2016_08_01::Models::TriggeredWebJobCollection
        ProcessInfoCollection = Azure::Web::Mgmt::V2016_08_01::Models::ProcessInfoCollection
        CsmPublishingProfileOptions = Azure::Web::Mgmt::V2016_08_01::Models::CsmPublishingProfileOptions
        ProcessModuleInfoCollection = Azure::Web::Mgmt::V2016_08_01::Models::ProcessModuleInfoCollection
        ProcessThreadInfoCollection = Azure::Web::Mgmt::V2016_08_01::Models::ProcessThreadInfoCollection
        TriggeredJobHistoryCollection = Azure::Web::Mgmt::V2016_08_01::Models::TriggeredJobHistoryCollection
        EnabledConfig = Azure::Web::Mgmt::V2016_08_01::Models::EnabledConfig
        PublicCertificateCollection = Azure::Web::Mgmt::V2016_08_01::Models::PublicCertificateCollection
        SnapshotCollection = Azure::Web::Mgmt::V2016_08_01::Models::SnapshotCollection
        SlotDifferenceCollection = Azure::Web::Mgmt::V2016_08_01::Models::SlotDifferenceCollection
        HostNameBindingCollection = Azure::Web::Mgmt::V2016_08_01::Models::HostNameBindingCollection
        SiteCloneabilityCriterion = Azure::Web::Mgmt::V2016_08_01::Models::SiteCloneabilityCriterion
        SiteCloneability = Azure::Web::Mgmt::V2016_08_01::Models::SiteCloneability
        PerfMonSet = Azure::Web::Mgmt::V2016_08_01::Models::PerfMonSet
        PerfMonCounterCollection = Azure::Web::Mgmt::V2016_08_01::Models::PerfMonCounterCollection
        WebJobCollection = Azure::Web::Mgmt::V2016_08_01::Models::WebJobCollection
        ContinuousWebJobCollection = Azure::Web::Mgmt::V2016_08_01::Models::ContinuousWebJobCollection
        FileSystemApplicationLogsConfig = Azure::Web::Mgmt::V2016_08_01::Models::FileSystemApplicationLogsConfig
        FileSystemHttpLogsConfig = Azure::Web::Mgmt::V2016_08_01::Models::FileSystemHttpLogsConfig
        AzureBlobStorageApplicationLogsConfig = Azure::Web::Mgmt::V2016_08_01::Models::AzureBlobStorageApplicationLogsConfig
        AzureBlobStorageHttpLogsConfig = Azure::Web::Mgmt::V2016_08_01::Models::AzureBlobStorageHttpLogsConfig
        IdentifierCollection = Azure::Web::Mgmt::V2016_08_01::Models::IdentifierCollection
        MSDeployLogEntry = Azure::Web::Mgmt::V2016_08_01::Models::MSDeployLogEntry
        SiteExtensionInfoCollection = Azure::Web::Mgmt::V2016_08_01::Models::SiteExtensionInfoCollection
        BackupSchedule = Azure::Web::Mgmt::V2016_08_01::Models::BackupSchedule
        PerfMonResponse = Azure::Web::Mgmt::V2016_08_01::Models::PerfMonResponse
        DeploymentCollection = Azure::Web::Mgmt::V2016_08_01::Models::DeploymentCollection
        HttpLogsConfig = Azure::Web::Mgmt::V2016_08_01::Models::HttpLogsConfig
        FunctionEnvelopeCollection = Azure::Web::Mgmt::V2016_08_01::Models::FunctionEnvelopeCollection
        PerfMonSample = Azure::Web::Mgmt::V2016_08_01::Models::PerfMonSample
        SiteConfigResourceCollection = Azure::Web::Mgmt::V2016_08_01::Models::SiteConfigResourceCollection
        CsmSlotEntity = Azure::Web::Mgmt::V2016_08_01::Models::CsmSlotEntity
        SiteConfigurationSnapshotInfoCollection = Azure::Web::Mgmt::V2016_08_01::Models::SiteConfigurationSnapshotInfoCollection
        BackupItem = Azure::Web::Mgmt::V2016_08_01::Models::BackupItem
        BackupRequest = Azure::Web::Mgmt::V2016_08_01::Models::BackupRequest
        ConnectionStringDictionary = Azure::Web::Mgmt::V2016_08_01::Models::ConnectionStringDictionary
        ContinuousWebJob = Azure::Web::Mgmt::V2016_08_01::Models::ContinuousWebJob
        CustomHostnameAnalysisResult = Azure::Web::Mgmt::V2016_08_01::Models::CustomHostnameAnalysisResult
        Deployment = Azure::Web::Mgmt::V2016_08_01::Models::Deployment
        FunctionEnvelope = Azure::Web::Mgmt::V2016_08_01::Models::FunctionEnvelope
        FunctionSecrets = Azure::Web::Mgmt::V2016_08_01::Models::FunctionSecrets
        HostNameBinding = Azure::Web::Mgmt::V2016_08_01::Models::HostNameBinding
        Identifier = Azure::Web::Mgmt::V2016_08_01::Models::Identifier
        MSDeploy = Azure::Web::Mgmt::V2016_08_01::Models::MSDeploy
        MSDeployLog = Azure::Web::Mgmt::V2016_08_01::Models::MSDeployLog
        MSDeployStatus = Azure::Web::Mgmt::V2016_08_01::Models::MSDeployStatus
        MigrateMySqlRequest = Azure::Web::Mgmt::V2016_08_01::Models::MigrateMySqlRequest
        MigrateMySqlStatus = Azure::Web::Mgmt::V2016_08_01::Models::MigrateMySqlStatus
        RelayServiceConnectionEntity = Azure::Web::Mgmt::V2016_08_01::Models::RelayServiceConnectionEntity
        NetworkFeatures = Azure::Web::Mgmt::V2016_08_01::Models::NetworkFeatures
        PremierAddOn = Azure::Web::Mgmt::V2016_08_01::Models::PremierAddOn
        ProcessThreadInfo = Azure::Web::Mgmt::V2016_08_01::Models::ProcessThreadInfo
        ProcessModuleInfo = Azure::Web::Mgmt::V2016_08_01::Models::ProcessModuleInfo
        ProcessInfo = Azure::Web::Mgmt::V2016_08_01::Models::ProcessInfo
        PublicCertificate = Azure::Web::Mgmt::V2016_08_01::Models::PublicCertificate
        RestoreRequest = Azure::Web::Mgmt::V2016_08_01::Models::RestoreRequest
        RestoreResponse = Azure::Web::Mgmt::V2016_08_01::Models::RestoreResponse
        SiteAuthSettings = Azure::Web::Mgmt::V2016_08_01::Models::SiteAuthSettings
        SiteConfigResource = Azure::Web::Mgmt::V2016_08_01::Models::SiteConfigResource
        SiteConfigurationSnapshotInfo = Azure::Web::Mgmt::V2016_08_01::Models::SiteConfigurationSnapshotInfo
        SiteExtensionInfo = Azure::Web::Mgmt::V2016_08_01::Models::SiteExtensionInfo
        SiteInstance = Azure::Web::Mgmt::V2016_08_01::Models::SiteInstance
        SiteLogsConfig = Azure::Web::Mgmt::V2016_08_01::Models::SiteLogsConfig
        SitePatchResource = Azure::Web::Mgmt::V2016_08_01::Models::SitePatchResource
        SitePhpErrorLogFlag = Azure::Web::Mgmt::V2016_08_01::Models::SitePhpErrorLogFlag
        SiteSourceControl = Azure::Web::Mgmt::V2016_08_01::Models::SiteSourceControl
        SlotConfigNamesResource = Azure::Web::Mgmt::V2016_08_01::Models::SlotConfigNamesResource
        SlotDifference = Azure::Web::Mgmt::V2016_08_01::Models::SlotDifference
        Snapshot = Azure::Web::Mgmt::V2016_08_01::Models::Snapshot
        StorageMigrationOptions = Azure::Web::Mgmt::V2016_08_01::Models::StorageMigrationOptions
        StorageMigrationResponse = Azure::Web::Mgmt::V2016_08_01::Models::StorageMigrationResponse
        StringDictionary = Azure::Web::Mgmt::V2016_08_01::Models::StringDictionary
        TriggeredJobRun = Azure::Web::Mgmt::V2016_08_01::Models::TriggeredJobRun
        TriggeredJobHistory = Azure::Web::Mgmt::V2016_08_01::Models::TriggeredJobHistory
        TriggeredWebJob = Azure::Web::Mgmt::V2016_08_01::Models::TriggeredWebJob
        WebJob = Azure::Web::Mgmt::V2016_08_01::Models::WebJob
        LogLevel = Azure::Web::Mgmt::V2016_08_01::Models::LogLevel
        BackupItemStatus = Azure::Web::Mgmt::V2016_08_01::Models::BackupItemStatus
        DatabaseType = Azure::Web::Mgmt::V2016_08_01::Models::DatabaseType
        FrequencyUnit = Azure::Web::Mgmt::V2016_08_01::Models::FrequencyUnit
        BackupRestoreOperationType = Azure::Web::Mgmt::V2016_08_01::Models::BackupRestoreOperationType
        ContinuousWebJobStatus = Azure::Web::Mgmt::V2016_08_01::Models::ContinuousWebJobStatus
        WebJobType = Azure::Web::Mgmt::V2016_08_01::Models::WebJobType
        PublishingProfileFormat = Azure::Web::Mgmt::V2016_08_01::Models::PublishingProfileFormat
        DnsVerificationTestResult = Azure::Web::Mgmt::V2016_08_01::Models::DnsVerificationTestResult
        AzureResourceType = Azure::Web::Mgmt::V2016_08_01::Models::AzureResourceType
        CustomHostNameDnsRecordType = Azure::Web::Mgmt::V2016_08_01::Models::CustomHostNameDnsRecordType
        HostNameType = Azure::Web::Mgmt::V2016_08_01::Models::HostNameType
        MSDeployLogEntryType = Azure::Web::Mgmt::V2016_08_01::Models::MSDeployLogEntryType
        MSDeployProvisioningState = Azure::Web::Mgmt::V2016_08_01::Models::MSDeployProvisioningState
        MySqlMigrationType = Azure::Web::Mgmt::V2016_08_01::Models::MySqlMigrationType
        PublicCertificateLocation = Azure::Web::Mgmt::V2016_08_01::Models::PublicCertificateLocation
        UnauthenticatedClientAction = Azure::Web::Mgmt::V2016_08_01::Models::UnauthenticatedClientAction
        BuiltInAuthenticationProvider = Azure::Web::Mgmt::V2016_08_01::Models::BuiltInAuthenticationProvider
        CloneAbilityResult = Azure::Web::Mgmt::V2016_08_01::Models::CloneAbilityResult
        SiteExtensionType = Azure::Web::Mgmt::V2016_08_01::Models::SiteExtensionType
        TriggeredWebJobStatus = Azure::Web::Mgmt::V2016_08_01::Models::TriggeredWebJobStatus
        HostingEnvironmentProfile = Azure::Web::Mgmt::V2016_09_01::Models::HostingEnvironmentProfile
        IpSecurityRestriction = Azure::Web::Mgmt::V2016_09_01::Models::IpSecurityRestriction
        AddressResponse = Azure::Web::Mgmt::V2016_09_01::Models::AddressResponse
        ApiDefinitionInfo = Azure::Web::Mgmt::V2016_09_01::Models::ApiDefinitionInfo
        WorkerPool = Azure::Web::Mgmt::V2016_09_01::Models::WorkerPool
        CorsSettings = Azure::Web::Mgmt::V2016_09_01::Models::CorsSettings
        NetworkAccessControlEntry = Azure::Web::Mgmt::V2016_09_01::Models::NetworkAccessControlEntry
        AutoHealCustomAction = Azure::Web::Mgmt::V2016_09_01::Models::AutoHealCustomAction
        ResourceMetric = Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetric
        ProxyOnlyResource = Azure::Web::Mgmt::V2016_09_01::Models::ProxyOnlyResource
        ManagedServiceIdentity = Azure::Web::Mgmt::V2016_09_01::Models::ManagedServiceIdentity
        MetricAvailabilily = Azure::Web::Mgmt::V2016_09_01::Models::MetricAvailabilily
        SlotSwapStatus = Azure::Web::Mgmt::V2016_09_01::Models::SlotSwapStatus
        SkuCapacity = Azure::Web::Mgmt::V2016_09_01::Models::SkuCapacity
        CloningInfo = Azure::Web::Mgmt::V2016_09_01::Models::CloningInfo
        SkuDescription = Azure::Web::Mgmt::V2016_09_01::Models::SkuDescription
        VirtualIPMapping = Azure::Web::Mgmt::V2016_09_01::Models::VirtualIPMapping
        SkuInfoCollection = Azure::Web::Mgmt::V2016_09_01::Models::SkuInfoCollection
        VirtualNetworkProfile = Azure::Web::Mgmt::V2016_09_01::Models::VirtualNetworkProfile
        HybridConnectionCollection = Azure::Web::Mgmt::V2016_09_01::Models::HybridConnectionCollection
        StampCapacity = Azure::Web::Mgmt::V2016_09_01::Models::StampCapacity
        Operation = Azure::Web::Mgmt::V2016_09_01::Models::Operation
        NameValuePair = Azure::Web::Mgmt::V2016_09_01::Models::NameValuePair
        ErrorEntity = Azure::Web::Mgmt::V2016_09_01::Models::ErrorEntity
        ResourceMetricValue = Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetricValue
        WebAppCollection = Azure::Web::Mgmt::V2016_09_01::Models::WebAppCollection
        AutoHealActions = Azure::Web::Mgmt::V2016_09_01::Models::AutoHealActions
        SnapshotRecoveryTarget = Azure::Web::Mgmt::V2016_09_01::Models::SnapshotRecoveryTarget
        SlowRequestsBasedTrigger = Azure::Web::Mgmt::V2016_09_01::Models::SlowRequestsBasedTrigger
        ResourceMetricAvailability = Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetricAvailability
        StatusCodesBasedTrigger = Azure::Web::Mgmt::V2016_09_01::Models::StatusCodesBasedTrigger
        LocalizableString = Azure::Web::Mgmt::V2016_09_01::Models::LocalizableString
        RequestsBasedTrigger = Azure::Web::Mgmt::V2016_09_01::Models::RequestsBasedTrigger
        ResourceMetricCollection = Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetricCollection
        AutoHealTriggers = Azure::Web::Mgmt::V2016_09_01::Models::AutoHealTriggers
        HostingEnvironmentDiagnostics = Azure::Web::Mgmt::V2016_09_01::Models::HostingEnvironmentDiagnostics
        AutoHealRules = Azure::Web::Mgmt::V2016_09_01::Models::AutoHealRules
        Capability = Azure::Web::Mgmt::V2016_09_01::Models::Capability
        SiteLimits = Azure::Web::Mgmt::V2016_09_01::Models::SiteLimits
        StampCapacityCollection = Azure::Web::Mgmt::V2016_09_01::Models::StampCapacityCollection
        RampUpRule = Azure::Web::Mgmt::V2016_09_01::Models::RampUpRule
        WorkerPoolCollection = Azure::Web::Mgmt::V2016_09_01::Models::WorkerPoolCollection
        Experiments = Azure::Web::Mgmt::V2016_09_01::Models::Experiments
        CsmUsageQuotaCollection = Azure::Web::Mgmt::V2016_09_01::Models::CsmUsageQuotaCollection
        VirtualDirectory = Azure::Web::Mgmt::V2016_09_01::Models::VirtualDirectory
        ResourceMetricName = Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetricName
        VirtualApplication = Azure::Web::Mgmt::V2016_09_01::Models::VirtualApplication
        AppServiceEnvironmentCollection = Azure::Web::Mgmt::V2016_09_01::Models::AppServiceEnvironmentCollection
        HandlerMapping = Azure::Web::Mgmt::V2016_09_01::Models::HandlerMapping
        SkuInfo = Azure::Web::Mgmt::V2016_09_01::Models::SkuInfo
        SiteMachineKey = Azure::Web::Mgmt::V2016_09_01::Models::SiteMachineKey
        AppServicePlanCollection = Azure::Web::Mgmt::V2016_09_01::Models::AppServicePlanCollection
        ConnStringInfo = Azure::Web::Mgmt::V2016_09_01::Models::ConnStringInfo
        ResourceMetricDefinitionCollection = Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetricDefinitionCollection
        SiteConfig = Azure::Web::Mgmt::V2016_09_01::Models::SiteConfig
        UsageCollection = Azure::Web::Mgmt::V2016_09_01::Models::UsageCollection
        HostNameSslState = Azure::Web::Mgmt::V2016_09_01::Models::HostNameSslState
        ResourceCollection = Azure::Web::Mgmt::V2016_09_01::Models::ResourceCollection
        ResourceMetricProperty = Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetricProperty
        CsmUsageQuota = Azure::Web::Mgmt::V2016_09_01::Models::CsmUsageQuota
        Resource = Azure::Web::Mgmt::V2016_09_01::Models::Resource
        AppServiceEnvironmentResource = Azure::Web::Mgmt::V2016_09_01::Models::AppServiceEnvironmentResource
        AppServiceEnvironmentPatchResource = Azure::Web::Mgmt::V2016_09_01::Models::AppServiceEnvironmentPatchResource
        MetricDefinition = Azure::Web::Mgmt::V2016_09_01::Models::MetricDefinition
        Usage = Azure::Web::Mgmt::V2016_09_01::Models::Usage
        WorkerPoolResource = Azure::Web::Mgmt::V2016_09_01::Models::WorkerPoolResource
        VnetRoute = Azure::Web::Mgmt::V2016_09_01::Models::VnetRoute
        VnetInfo = Azure::Web::Mgmt::V2016_09_01::Models::VnetInfo
        VnetGateway = Azure::Web::Mgmt::V2016_09_01::Models::VnetGateway
        User = Azure::Web::Mgmt::V2016_09_01::Models::User
        SnapshotRecoveryRequest = Azure::Web::Mgmt::V2016_09_01::Models::SnapshotRecoveryRequest
        ResourceMetricDefinition = Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetricDefinition
        PushSettings = Azure::Web::Mgmt::V2016_09_01::Models::PushSettings
        HybridConnectionKey = Azure::Web::Mgmt::V2016_09_01::Models::HybridConnectionKey
        HybridConnection = Azure::Web::Mgmt::V2016_09_01::Models::HybridConnection
        Site = Azure::Web::Mgmt::V2016_09_01::Models::Site
        AppServicePlan = Azure::Web::Mgmt::V2016_09_01::Models::AppServicePlan
        AppServicePlanPatchResource = Azure::Web::Mgmt::V2016_09_01::Models::AppServicePlanPatchResource
        HybridConnectionLimits = Azure::Web::Mgmt::V2016_09_01::Models::HybridConnectionLimits
        ProvisioningState = Azure::Web::Mgmt::V2016_09_01::Models::ProvisioningState
        HostingEnvironmentStatus = Azure::Web::Mgmt::V2016_09_01::Models::HostingEnvironmentStatus
        InternalLoadBalancingMode = Azure::Web::Mgmt::V2016_09_01::Models::InternalLoadBalancingMode
        ComputeModeOptions = Azure::Web::Mgmt::V2016_09_01::Models::ComputeModeOptions
        WorkerSizeOptions = Azure::Web::Mgmt::V2016_09_01::Models::WorkerSizeOptions
        AccessControlEntryAction = Azure::Web::Mgmt::V2016_09_01::Models::AccessControlEntryAction
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
      end

      class WebManagementClass
        attr_reader :domains, :top_level_domains, :app_service_certificate_orders, :certificates, :deleted_web_apps, :provider, :recommendations, :web_apps, :app_service_environments, :app_service_plans, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          client_0 = Azure::Web::Mgmt::V2015_04_01::WebSiteManagementClient.new(configurable.credentials, base_url, options)
          if(client_0.respond_to?(:subscription_id))
            client_0.subscription_id = configurable.subscription_id
          end

          @domains = client_0.domains
          @top_level_domains = client_0.top_level_domains

          client_1 = Azure::Web::Mgmt::V2015_08_01::WebSiteManagementClient.new(configurable.credentials, base_url, options)
          if(client_1.respond_to?(:subscription_id))
            client_1.subscription_id = configurable.subscription_id
          end

          @app_service_certificate_orders = client_1.app_service_certificate_orders

          client_2 = Azure::Web::Mgmt::V2016_03_01::WebSiteManagementClient.new(configurable.credentials, base_url, options)
          if(client_2.respond_to?(:subscription_id))
            client_2.subscription_id = configurable.subscription_id
          end

          @certificates = client_2.certificates
          @deleted_web_apps = client_2.deleted_web_apps
          @provider = client_2.provider
          @recommendations = client_2.recommendations

          client_3 = Azure::Web::Mgmt::V2016_08_01::WebSiteManagementClient.new(configurable.credentials, base_url, options)
          if(client_3.respond_to?(:subscription_id))
            client_3.subscription_id = configurable.subscription_id
          end

          @web_apps = client_3.web_apps

          client_4 = Azure::Web::Mgmt::V2016_09_01::WebSiteManagementClient.new(configurable.credentials, base_url, options)
          if(client_4.respond_to?(:subscription_id))
            client_4.subscription_id = configurable.subscription_id
          end

          @app_service_environments = client_4.app_service_environments
          @app_service_plans = client_4.app_service_plans

          @model_classes = ModelClasses.new
        end

        class ModelClasses
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
          def domain_collection
            Azure::Web::Mgmt::V2015_04_01::Models::DomainCollection
          end
          def top_level_domain_collection
            Azure::Web::Mgmt::V2015_04_01::Models::TopLevelDomainCollection
          end
          def tld_legal_agreement_collection
            Azure::Web::Mgmt::V2015_04_01::Models::TldLegalAgreementCollection
          end
          def host_name
            Azure::Web::Mgmt::V2015_04_01::Models::HostName
          end
          def top_level_domain_agreement_option
            Azure::Web::Mgmt::V2015_04_01::Models::TopLevelDomainAgreementOption
          end
          def tld_legal_agreement
            Azure::Web::Mgmt::V2015_04_01::Models::TldLegalAgreement
          end
          def address
            Azure::Web::Mgmt::V2015_04_01::Models::Address
          end
          def domain
            Azure::Web::Mgmt::V2015_04_01::Models::Domain
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
          def app_service_certificate_collection
            Azure::Web::Mgmt::V2015_08_01::Models::AppServiceCertificateCollection
          end
          def name_identifier
            Azure::Web::Mgmt::V2015_08_01::Models::NameIdentifier
          end
          def site_seal
            Azure::Web::Mgmt::V2015_08_01::Models::SiteSeal
          end
          def app_service_certificate
            Azure::Web::Mgmt::V2015_08_01::Models::AppServiceCertificate
          end
          def app_service_certificate_order_collection
            Azure::Web::Mgmt::V2015_08_01::Models::AppServiceCertificateOrderCollection
          end
          def site_seal_request
            Azure::Web::Mgmt::V2015_08_01::Models::SiteSealRequest
          end
          def certificate_details
            Azure::Web::Mgmt::V2015_08_01::Models::CertificateDetails
          end
          def app_service_certificate_resource
            Azure::Web::Mgmt::V2015_08_01::Models::AppServiceCertificateResource
          end
          def app_service_certificate_order
            Azure::Web::Mgmt::V2015_08_01::Models::AppServiceCertificateOrder
          end
          def app_service_certificate_order_patch_resource
            Azure::Web::Mgmt::V2015_08_01::Models::AppServiceCertificateOrderPatchResource
          end
          def app_service_certificate_patch_resource
            Azure::Web::Mgmt::V2015_08_01::Models::AppServiceCertificatePatchResource
          end
          def certificate_email
            Azure::Web::Mgmt::V2015_08_01::Models::CertificateEmail
          end
          def certificate_order_action
            Azure::Web::Mgmt::V2015_08_01::Models::CertificateOrderAction
          end
          def reissue_certificate_order_request
            Azure::Web::Mgmt::V2015_08_01::Models::ReissueCertificateOrderRequest
          end
          def renew_certificate_order_request
            Azure::Web::Mgmt::V2015_08_01::Models::RenewCertificateOrderRequest
          end
          def certificate_product_type
            Azure::Web::Mgmt::V2015_08_01::Models::CertificateProductType
          end
          def certificate_order_status
            Azure::Web::Mgmt::V2015_08_01::Models::CertificateOrderStatus
          end
          def certificate_order_action_type
            Azure::Web::Mgmt::V2015_08_01::Models::CertificateOrderActionType
          end
          def certificate_collection
            Azure::Web::Mgmt::V2016_03_01::Models::CertificateCollection
          end
          def validate_response_error
            Azure::Web::Mgmt::V2016_03_01::Models::ValidateResponseError
          end
          def validate_request
            Azure::Web::Mgmt::V2016_03_01::Models::ValidateRequest
          end
          def sku_infos
            Azure::Web::Mgmt::V2016_03_01::Models::SkuInfos
          end
          def premier_add_on_offer_collection
            Azure::Web::Mgmt::V2016_03_01::Models::PremierAddOnOfferCollection
          end
          def resource_name_availability
            Azure::Web::Mgmt::V2016_03_01::Models::ResourceNameAvailability
          end
          def hosting_environment_deployment_info
            Azure::Web::Mgmt::V2016_03_01::Models::HostingEnvironmentDeploymentInfo
          end
          def app_service_environment
            Azure::Web::Mgmt::V2016_03_01::Models::AppServiceEnvironment
          end
          def global_csm_sku_description
            Azure::Web::Mgmt::V2016_03_01::Models::GlobalCsmSkuDescription
          end
          def geo_region_collection
            Azure::Web::Mgmt::V2016_03_01::Models::GeoRegionCollection
          end
          def deleted_site
            Azure::Web::Mgmt::V2016_03_01::Models::DeletedSite
          end
          def deleted_web_app_collection
            Azure::Web::Mgmt::V2016_03_01::Models::DeletedWebAppCollection
          end
          def metric_availability
            Azure::Web::Mgmt::V2016_03_01::Models::MetricAvailability
          end
          def dimension
            Azure::Web::Mgmt::V2016_03_01::Models::Dimension
          end
          def metric_specification
            Azure::Web::Mgmt::V2016_03_01::Models::MetricSpecification
          end
          def service_specification
            Azure::Web::Mgmt::V2016_03_01::Models::ServiceSpecification
          end
          def source_control_collection
            Azure::Web::Mgmt::V2016_03_01::Models::SourceControlCollection
          end
          def csm_operation_description_properties
            Azure::Web::Mgmt::V2016_03_01::Models::CsmOperationDescriptionProperties
          end
          def csm_operation_display
            Azure::Web::Mgmt::V2016_03_01::Models::CsmOperationDisplay
          end
          def csm_operation_description
            Azure::Web::Mgmt::V2016_03_01::Models::CsmOperationDescription
          end
          def csm_operation_collection
            Azure::Web::Mgmt::V2016_03_01::Models::CsmOperationCollection
          end
          def recommendation
            Azure::Web::Mgmt::V2016_03_01::Models::Recommendation
          end
          def recommendation_rule
            Azure::Web::Mgmt::V2016_03_01::Models::RecommendationRule
          end
          def csm_move_resource_envelope
            Azure::Web::Mgmt::V2016_03_01::Models::CsmMoveResourceEnvelope
          end
          def deployment_locations
            Azure::Web::Mgmt::V2016_03_01::Models::DeploymentLocations
          end
          def validate_response
            Azure::Web::Mgmt::V2016_03_01::Models::ValidateResponse
          end
          def resource_name_availability_request
            Azure::Web::Mgmt::V2016_03_01::Models::ResourceNameAvailabilityRequest
          end
          def certificate
            Azure::Web::Mgmt::V2016_03_01::Models::Certificate
          end
          def certificate_patch_resource
            Azure::Web::Mgmt::V2016_03_01::Models::CertificatePatchResource
          end
          def geo_region
            Azure::Web::Mgmt::V2016_03_01::Models::GeoRegion
          end
          def premier_add_on_offer
            Azure::Web::Mgmt::V2016_03_01::Models::PremierAddOnOffer
          end
          def source_control
            Azure::Web::Mgmt::V2016_03_01::Models::SourceControl
          end
          def vnet_parameters
            Azure::Web::Mgmt::V2016_03_01::Models::VnetParameters
          end
          def vnet_validation_test_failure
            Azure::Web::Mgmt::V2016_03_01::Models::VnetValidationTestFailure
          end
          def vnet_validation_failure_details
            Azure::Web::Mgmt::V2016_03_01::Models::VnetValidationFailureDetails
          end
          def key_vault_secret_status
            Azure::Web::Mgmt::V2016_03_01::Models::KeyVaultSecretStatus
          end
          def resource_scope_type
            Azure::Web::Mgmt::V2016_03_01::Models::ResourceScopeType
          end
          def notification_level
            Azure::Web::Mgmt::V2016_03_01::Models::NotificationLevel
          end
          def channels
            Azure::Web::Mgmt::V2016_03_01::Models::Channels
          end
          def app_service_plan_restrictions
            Azure::Web::Mgmt::V2016_03_01::Models::AppServicePlanRestrictions
          end
          def in_availability_reason_type
            Azure::Web::Mgmt::V2016_03_01::Models::InAvailabilityReasonType
          end
          def check_name_resource_types
            Azure::Web::Mgmt::V2016_03_01::Models::CheckNameResourceTypes
          end
          def validate_resource_types
            Azure::Web::Mgmt::V2016_03_01::Models::ValidateResourceTypes
          end
          def sku_name
            Azure::Web::Mgmt::V2016_03_01::Models::SkuName
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
          def web_app_instance_collection
            Azure::Web::Mgmt::V2016_08_01::Models::WebAppInstanceCollection
          end
          def conn_string_value_type_pair
            Azure::Web::Mgmt::V2016_08_01::Models::ConnStringValueTypePair
          end
          def triggered_web_job_collection
            Azure::Web::Mgmt::V2016_08_01::Models::TriggeredWebJobCollection
          end
          def process_info_collection
            Azure::Web::Mgmt::V2016_08_01::Models::ProcessInfoCollection
          end
          def csm_publishing_profile_options
            Azure::Web::Mgmt::V2016_08_01::Models::CsmPublishingProfileOptions
          end
          def process_module_info_collection
            Azure::Web::Mgmt::V2016_08_01::Models::ProcessModuleInfoCollection
          end
          def process_thread_info_collection
            Azure::Web::Mgmt::V2016_08_01::Models::ProcessThreadInfoCollection
          end
          def triggered_job_history_collection
            Azure::Web::Mgmt::V2016_08_01::Models::TriggeredJobHistoryCollection
          end
          def enabled_config
            Azure::Web::Mgmt::V2016_08_01::Models::EnabledConfig
          end
          def public_certificate_collection
            Azure::Web::Mgmt::V2016_08_01::Models::PublicCertificateCollection
          end
          def snapshot_collection
            Azure::Web::Mgmt::V2016_08_01::Models::SnapshotCollection
          end
          def slot_difference_collection
            Azure::Web::Mgmt::V2016_08_01::Models::SlotDifferenceCollection
          end
          def host_name_binding_collection
            Azure::Web::Mgmt::V2016_08_01::Models::HostNameBindingCollection
          end
          def site_cloneability_criterion
            Azure::Web::Mgmt::V2016_08_01::Models::SiteCloneabilityCriterion
          end
          def site_cloneability
            Azure::Web::Mgmt::V2016_08_01::Models::SiteCloneability
          end
          def perf_mon_set
            Azure::Web::Mgmt::V2016_08_01::Models::PerfMonSet
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
          def file_system_application_logs_config
            Azure::Web::Mgmt::V2016_08_01::Models::FileSystemApplicationLogsConfig
          end
          def file_system_http_logs_config
            Azure::Web::Mgmt::V2016_08_01::Models::FileSystemHttpLogsConfig
          end
          def azure_blob_storage_application_logs_config
            Azure::Web::Mgmt::V2016_08_01::Models::AzureBlobStorageApplicationLogsConfig
          end
          def azure_blob_storage_http_logs_config
            Azure::Web::Mgmt::V2016_08_01::Models::AzureBlobStorageHttpLogsConfig
          end
          def identifier_collection
            Azure::Web::Mgmt::V2016_08_01::Models::IdentifierCollection
          end
          def msdeploy_log_entry
            Azure::Web::Mgmt::V2016_08_01::Models::MSDeployLogEntry
          end
          def site_extension_info_collection
            Azure::Web::Mgmt::V2016_08_01::Models::SiteExtensionInfoCollection
          end
          def backup_schedule
            Azure::Web::Mgmt::V2016_08_01::Models::BackupSchedule
          end
          def perf_mon_response
            Azure::Web::Mgmt::V2016_08_01::Models::PerfMonResponse
          end
          def deployment_collection
            Azure::Web::Mgmt::V2016_08_01::Models::DeploymentCollection
          end
          def http_logs_config
            Azure::Web::Mgmt::V2016_08_01::Models::HttpLogsConfig
          end
          def function_envelope_collection
            Azure::Web::Mgmt::V2016_08_01::Models::FunctionEnvelopeCollection
          end
          def perf_mon_sample
            Azure::Web::Mgmt::V2016_08_01::Models::PerfMonSample
          end
          def site_config_resource_collection
            Azure::Web::Mgmt::V2016_08_01::Models::SiteConfigResourceCollection
          end
          def csm_slot_entity
            Azure::Web::Mgmt::V2016_08_01::Models::CsmSlotEntity
          end
          def site_configuration_snapshot_info_collection
            Azure::Web::Mgmt::V2016_08_01::Models::SiteConfigurationSnapshotInfoCollection
          end
          def backup_item
            Azure::Web::Mgmt::V2016_08_01::Models::BackupItem
          end
          def backup_request
            Azure::Web::Mgmt::V2016_08_01::Models::BackupRequest
          end
          def connection_string_dictionary
            Azure::Web::Mgmt::V2016_08_01::Models::ConnectionStringDictionary
          end
          def continuous_web_job
            Azure::Web::Mgmt::V2016_08_01::Models::ContinuousWebJob
          end
          def custom_hostname_analysis_result
            Azure::Web::Mgmt::V2016_08_01::Models::CustomHostnameAnalysisResult
          end
          def deployment
            Azure::Web::Mgmt::V2016_08_01::Models::Deployment
          end
          def function_envelope
            Azure::Web::Mgmt::V2016_08_01::Models::FunctionEnvelope
          end
          def function_secrets
            Azure::Web::Mgmt::V2016_08_01::Models::FunctionSecrets
          end
          def host_name_binding
            Azure::Web::Mgmt::V2016_08_01::Models::HostNameBinding
          end
          def identifier
            Azure::Web::Mgmt::V2016_08_01::Models::Identifier
          end
          def msdeploy
            Azure::Web::Mgmt::V2016_08_01::Models::MSDeploy
          end
          def msdeploy_log
            Azure::Web::Mgmt::V2016_08_01::Models::MSDeployLog
          end
          def msdeploy_status
            Azure::Web::Mgmt::V2016_08_01::Models::MSDeployStatus
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
          def network_features
            Azure::Web::Mgmt::V2016_08_01::Models::NetworkFeatures
          end
          def premier_add_on
            Azure::Web::Mgmt::V2016_08_01::Models::PremierAddOn
          end
          def process_thread_info
            Azure::Web::Mgmt::V2016_08_01::Models::ProcessThreadInfo
          end
          def process_module_info
            Azure::Web::Mgmt::V2016_08_01::Models::ProcessModuleInfo
          end
          def process_info
            Azure::Web::Mgmt::V2016_08_01::Models::ProcessInfo
          end
          def public_certificate
            Azure::Web::Mgmt::V2016_08_01::Models::PublicCertificate
          end
          def restore_request
            Azure::Web::Mgmt::V2016_08_01::Models::RestoreRequest
          end
          def restore_response
            Azure::Web::Mgmt::V2016_08_01::Models::RestoreResponse
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
          def site_extension_info
            Azure::Web::Mgmt::V2016_08_01::Models::SiteExtensionInfo
          end
          def site_instance
            Azure::Web::Mgmt::V2016_08_01::Models::SiteInstance
          end
          def site_logs_config
            Azure::Web::Mgmt::V2016_08_01::Models::SiteLogsConfig
          end
          def site_patch_resource
            Azure::Web::Mgmt::V2016_08_01::Models::SitePatchResource
          end
          def site_php_error_log_flag
            Azure::Web::Mgmt::V2016_08_01::Models::SitePhpErrorLogFlag
          end
          def site_source_control
            Azure::Web::Mgmt::V2016_08_01::Models::SiteSourceControl
          end
          def slot_config_names_resource
            Azure::Web::Mgmt::V2016_08_01::Models::SlotConfigNamesResource
          end
          def slot_difference
            Azure::Web::Mgmt::V2016_08_01::Models::SlotDifference
          end
          def snapshot
            Azure::Web::Mgmt::V2016_08_01::Models::Snapshot
          end
          def storage_migration_options
            Azure::Web::Mgmt::V2016_08_01::Models::StorageMigrationOptions
          end
          def storage_migration_response
            Azure::Web::Mgmt::V2016_08_01::Models::StorageMigrationResponse
          end
          def string_dictionary
            Azure::Web::Mgmt::V2016_08_01::Models::StringDictionary
          end
          def triggered_job_run
            Azure::Web::Mgmt::V2016_08_01::Models::TriggeredJobRun
          end
          def triggered_job_history
            Azure::Web::Mgmt::V2016_08_01::Models::TriggeredJobHistory
          end
          def triggered_web_job
            Azure::Web::Mgmt::V2016_08_01::Models::TriggeredWebJob
          end
          def web_job
            Azure::Web::Mgmt::V2016_08_01::Models::WebJob
          end
          def log_level
            Azure::Web::Mgmt::V2016_08_01::Models::LogLevel
          end
          def backup_item_status
            Azure::Web::Mgmt::V2016_08_01::Models::BackupItemStatus
          end
          def database_type
            Azure::Web::Mgmt::V2016_08_01::Models::DatabaseType
          end
          def frequency_unit
            Azure::Web::Mgmt::V2016_08_01::Models::FrequencyUnit
          end
          def backup_restore_operation_type
            Azure::Web::Mgmt::V2016_08_01::Models::BackupRestoreOperationType
          end
          def continuous_web_job_status
            Azure::Web::Mgmt::V2016_08_01::Models::ContinuousWebJobStatus
          end
          def web_job_type
            Azure::Web::Mgmt::V2016_08_01::Models::WebJobType
          end
          def publishing_profile_format
            Azure::Web::Mgmt::V2016_08_01::Models::PublishingProfileFormat
          end
          def dns_verification_test_result
            Azure::Web::Mgmt::V2016_08_01::Models::DnsVerificationTestResult
          end
          def azure_resource_type
            Azure::Web::Mgmt::V2016_08_01::Models::AzureResourceType
          end
          def custom_host_name_dns_record_type
            Azure::Web::Mgmt::V2016_08_01::Models::CustomHostNameDnsRecordType
          end
          def host_name_type
            Azure::Web::Mgmt::V2016_08_01::Models::HostNameType
          end
          def msdeploy_log_entry_type
            Azure::Web::Mgmt::V2016_08_01::Models::MSDeployLogEntryType
          end
          def msdeploy_provisioning_state
            Azure::Web::Mgmt::V2016_08_01::Models::MSDeployProvisioningState
          end
          def my_sql_migration_type
            Azure::Web::Mgmt::V2016_08_01::Models::MySqlMigrationType
          end
          def public_certificate_location
            Azure::Web::Mgmt::V2016_08_01::Models::PublicCertificateLocation
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
          def hosting_environment_profile
            Azure::Web::Mgmt::V2016_09_01::Models::HostingEnvironmentProfile
          end
          def ip_security_restriction
            Azure::Web::Mgmt::V2016_09_01::Models::IpSecurityRestriction
          end
          def address_response
            Azure::Web::Mgmt::V2016_09_01::Models::AddressResponse
          end
          def api_definition_info
            Azure::Web::Mgmt::V2016_09_01::Models::ApiDefinitionInfo
          end
          def worker_pool
            Azure::Web::Mgmt::V2016_09_01::Models::WorkerPool
          end
          def cors_settings
            Azure::Web::Mgmt::V2016_09_01::Models::CorsSettings
          end
          def network_access_control_entry
            Azure::Web::Mgmt::V2016_09_01::Models::NetworkAccessControlEntry
          end
          def auto_heal_custom_action
            Azure::Web::Mgmt::V2016_09_01::Models::AutoHealCustomAction
          end
          def resource_metric
            Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetric
          end
          def proxy_only_resource
            Azure::Web::Mgmt::V2016_09_01::Models::ProxyOnlyResource
          end
          def managed_service_identity
            Azure::Web::Mgmt::V2016_09_01::Models::ManagedServiceIdentity
          end
          def metric_availabilily
            Azure::Web::Mgmt::V2016_09_01::Models::MetricAvailabilily
          end
          def slot_swap_status
            Azure::Web::Mgmt::V2016_09_01::Models::SlotSwapStatus
          end
          def sku_capacity
            Azure::Web::Mgmt::V2016_09_01::Models::SkuCapacity
          end
          def cloning_info
            Azure::Web::Mgmt::V2016_09_01::Models::CloningInfo
          end
          def sku_description
            Azure::Web::Mgmt::V2016_09_01::Models::SkuDescription
          end
          def virtual_ipmapping
            Azure::Web::Mgmt::V2016_09_01::Models::VirtualIPMapping
          end
          def sku_info_collection
            Azure::Web::Mgmt::V2016_09_01::Models::SkuInfoCollection
          end
          def virtual_network_profile
            Azure::Web::Mgmt::V2016_09_01::Models::VirtualNetworkProfile
          end
          def hybrid_connection_collection
            Azure::Web::Mgmt::V2016_09_01::Models::HybridConnectionCollection
          end
          def stamp_capacity
            Azure::Web::Mgmt::V2016_09_01::Models::StampCapacity
          end
          def operation
            Azure::Web::Mgmt::V2016_09_01::Models::Operation
          end
          def name_value_pair
            Azure::Web::Mgmt::V2016_09_01::Models::NameValuePair
          end
          def error_entity
            Azure::Web::Mgmt::V2016_09_01::Models::ErrorEntity
          end
          def resource_metric_value
            Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetricValue
          end
          def web_app_collection
            Azure::Web::Mgmt::V2016_09_01::Models::WebAppCollection
          end
          def auto_heal_actions
            Azure::Web::Mgmt::V2016_09_01::Models::AutoHealActions
          end
          def snapshot_recovery_target
            Azure::Web::Mgmt::V2016_09_01::Models::SnapshotRecoveryTarget
          end
          def slow_requests_based_trigger
            Azure::Web::Mgmt::V2016_09_01::Models::SlowRequestsBasedTrigger
          end
          def resource_metric_availability
            Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetricAvailability
          end
          def status_codes_based_trigger
            Azure::Web::Mgmt::V2016_09_01::Models::StatusCodesBasedTrigger
          end
          def localizable_string
            Azure::Web::Mgmt::V2016_09_01::Models::LocalizableString
          end
          def requests_based_trigger
            Azure::Web::Mgmt::V2016_09_01::Models::RequestsBasedTrigger
          end
          def resource_metric_collection
            Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetricCollection
          end
          def auto_heal_triggers
            Azure::Web::Mgmt::V2016_09_01::Models::AutoHealTriggers
          end
          def hosting_environment_diagnostics
            Azure::Web::Mgmt::V2016_09_01::Models::HostingEnvironmentDiagnostics
          end
          def auto_heal_rules
            Azure::Web::Mgmt::V2016_09_01::Models::AutoHealRules
          end
          def capability
            Azure::Web::Mgmt::V2016_09_01::Models::Capability
          end
          def site_limits
            Azure::Web::Mgmt::V2016_09_01::Models::SiteLimits
          end
          def stamp_capacity_collection
            Azure::Web::Mgmt::V2016_09_01::Models::StampCapacityCollection
          end
          def ramp_up_rule
            Azure::Web::Mgmt::V2016_09_01::Models::RampUpRule
          end
          def worker_pool_collection
            Azure::Web::Mgmt::V2016_09_01::Models::WorkerPoolCollection
          end
          def experiments
            Azure::Web::Mgmt::V2016_09_01::Models::Experiments
          end
          def csm_usage_quota_collection
            Azure::Web::Mgmt::V2016_09_01::Models::CsmUsageQuotaCollection
          end
          def virtual_directory
            Azure::Web::Mgmt::V2016_09_01::Models::VirtualDirectory
          end
          def resource_metric_name
            Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetricName
          end
          def virtual_application
            Azure::Web::Mgmt::V2016_09_01::Models::VirtualApplication
          end
          def app_service_environment_collection
            Azure::Web::Mgmt::V2016_09_01::Models::AppServiceEnvironmentCollection
          end
          def handler_mapping
            Azure::Web::Mgmt::V2016_09_01::Models::HandlerMapping
          end
          def sku_info
            Azure::Web::Mgmt::V2016_09_01::Models::SkuInfo
          end
          def site_machine_key
            Azure::Web::Mgmt::V2016_09_01::Models::SiteMachineKey
          end
          def app_service_plan_collection
            Azure::Web::Mgmt::V2016_09_01::Models::AppServicePlanCollection
          end
          def conn_string_info
            Azure::Web::Mgmt::V2016_09_01::Models::ConnStringInfo
          end
          def resource_metric_definition_collection
            Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetricDefinitionCollection
          end
          def site_config
            Azure::Web::Mgmt::V2016_09_01::Models::SiteConfig
          end
          def usage_collection
            Azure::Web::Mgmt::V2016_09_01::Models::UsageCollection
          end
          def host_name_ssl_state
            Azure::Web::Mgmt::V2016_09_01::Models::HostNameSslState
          end
          def resource_collection
            Azure::Web::Mgmt::V2016_09_01::Models::ResourceCollection
          end
          def resource_metric_property
            Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetricProperty
          end
          def csm_usage_quota
            Azure::Web::Mgmt::V2016_09_01::Models::CsmUsageQuota
          end
          def resource
            Azure::Web::Mgmt::V2016_09_01::Models::Resource
          end
          def app_service_environment_resource
            Azure::Web::Mgmt::V2016_09_01::Models::AppServiceEnvironmentResource
          end
          def app_service_environment_patch_resource
            Azure::Web::Mgmt::V2016_09_01::Models::AppServiceEnvironmentPatchResource
          end
          def metric_definition
            Azure::Web::Mgmt::V2016_09_01::Models::MetricDefinition
          end
          def usage
            Azure::Web::Mgmt::V2016_09_01::Models::Usage
          end
          def worker_pool_resource
            Azure::Web::Mgmt::V2016_09_01::Models::WorkerPoolResource
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
          def user
            Azure::Web::Mgmt::V2016_09_01::Models::User
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
          def hybrid_connection
            Azure::Web::Mgmt::V2016_09_01::Models::HybridConnection
          end
          def site
            Azure::Web::Mgmt::V2016_09_01::Models::Site
          end
          def app_service_plan
            Azure::Web::Mgmt::V2016_09_01::Models::AppServicePlan
          end
          def app_service_plan_patch_resource
            Azure::Web::Mgmt::V2016_09_01::Models::AppServicePlanPatchResource
          end
          def hybrid_connection_limits
            Azure::Web::Mgmt::V2016_09_01::Models::HybridConnectionLimits
          end
          def provisioning_state
            Azure::Web::Mgmt::V2016_09_01::Models::ProvisioningState
          end
          def hosting_environment_status
            Azure::Web::Mgmt::V2016_09_01::Models::HostingEnvironmentStatus
          end
          def internal_load_balancing_mode
            Azure::Web::Mgmt::V2016_09_01::Models::InternalLoadBalancingMode
          end
          def compute_mode_options
            Azure::Web::Mgmt::V2016_09_01::Models::ComputeModeOptions
          end
          def worker_size_options
            Azure::Web::Mgmt::V2016_09_01::Models::WorkerSizeOptions
          end
          def access_control_entry_action
            Azure::Web::Mgmt::V2016_09_01::Models::AccessControlEntryAction
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
        end
      end
    end
  end
end
