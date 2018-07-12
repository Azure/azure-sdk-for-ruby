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
      DeletedWebApps = Azure::Web::Mgmt::V2016_03_01::DeletedWebApps
      Recommendations = Azure::Web::Mgmt::V2016_03_01::Recommendations
      ResourceHealthMetadataOperations = Azure::Web::Mgmt::V2016_03_01::ResourceHealthMetadataOperations
      BillingMeters = Azure::Web::Mgmt::V2016_03_01::BillingMeters
      Certificates = Azure::Web::Mgmt::V2016_03_01::Certificates
      Diagnostics = Azure::Web::Mgmt::V2016_03_01::Diagnostics
      Provider = Azure::Web::Mgmt::V2016_03_01::Provider
      WebApps = Azure::Web::Mgmt::V2016_08_01::WebApps
      AppServiceEnvironments = Azure::Web::Mgmt::V2016_09_01::AppServiceEnvironments
      AppServicePlans = Azure::Web::Mgmt::V2016_09_01::AppServicePlans

      module Models
        TopLevelDomain = Azure::Web::Mgmt::V2015_04_01::Models::TopLevelDomain
        DomainStatus = Azure::Web::Mgmt::V2015_04_01::Models::DomainStatus
        DnsType = Azure::Web::Mgmt::V2015_04_01::Models::DnsType
        DomainType = Azure::Web::Mgmt::V2015_04_01::Models::DomainType
        TopLevelDomainAgreementOption = Azure::Web::Mgmt::V2015_04_01::Models::TopLevelDomainAgreementOption
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
        TldLegalAgreement = Azure::Web::Mgmt::V2015_04_01::Models::TldLegalAgreement
        DomainCollection = Azure::Web::Mgmt::V2015_04_01::Models::DomainCollection
        TldLegalAgreementCollection = Azure::Web::Mgmt::V2015_04_01::Models::TldLegalAgreementCollection
        TopLevelDomainCollection = Azure::Web::Mgmt::V2015_04_01::Models::TopLevelDomainCollection
        DomainOwnershipIdentifier = Azure::Web::Mgmt::V2015_04_01::Models::DomainOwnershipIdentifier
        DomainPatchResource = Azure::Web::Mgmt::V2015_04_01::Models::DomainPatchResource
        CertificateOrderAction = Azure::Web::Mgmt::V2015_08_01::Models::CertificateOrderAction
        CertificateOrderStatus = Azure::Web::Mgmt::V2015_08_01::Models::CertificateOrderStatus
        AppServiceCertificatePatchResource = Azure::Web::Mgmt::V2015_08_01::Models::AppServiceCertificatePatchResource
        CertificateOrderActionType = Azure::Web::Mgmt::V2015_08_01::Models::CertificateOrderActionType
        AppServiceCertificate = Azure::Web::Mgmt::V2015_08_01::Models::AppServiceCertificate
        AppServiceCertificateCollection = Azure::Web::Mgmt::V2015_08_01::Models::AppServiceCertificateCollection
        AppServiceCertificateOrderCollection = Azure::Web::Mgmt::V2015_08_01::Models::AppServiceCertificateOrderCollection
        SiteSealRequest = Azure::Web::Mgmt::V2015_08_01::Models::SiteSealRequest
        CertificateDetails = Azure::Web::Mgmt::V2015_08_01::Models::CertificateDetails
        SiteSeal = Azure::Web::Mgmt::V2015_08_01::Models::SiteSeal
        AppServiceCertificateResource = Azure::Web::Mgmt::V2015_08_01::Models::AppServiceCertificateResource
        AppServiceCertificateOrderPatchResource = Azure::Web::Mgmt::V2015_08_01::Models::AppServiceCertificateOrderPatchResource
        CertificateEmail = Azure::Web::Mgmt::V2015_08_01::Models::CertificateEmail
        RenewCertificateOrderRequest = Azure::Web::Mgmt::V2015_08_01::Models::RenewCertificateOrderRequest
        CertificateProductType = Azure::Web::Mgmt::V2015_08_01::Models::CertificateProductType
        AppServiceCertificateOrder = Azure::Web::Mgmt::V2015_08_01::Models::AppServiceCertificateOrder
        ReissueCertificateOrderRequest = Azure::Web::Mgmt::V2015_08_01::Models::ReissueCertificateOrderRequest
        CertificatePatchResource = Azure::Web::Mgmt::V2016_03_01::Models::CertificatePatchResource
        Recommendation = Azure::Web::Mgmt::V2016_03_01::Models::Recommendation
        ResourceHealthMetadata = Azure::Web::Mgmt::V2016_03_01::Models::ResourceHealthMetadata
        BillingMeter = Azure::Web::Mgmt::V2016_03_01::Models::BillingMeter
        DetectorDefinition = Azure::Web::Mgmt::V2016_03_01::Models::DetectorDefinition
        AnalysisDefinition = Azure::Web::Mgmt::V2016_03_01::Models::AnalysisDefinition
        SourceControl = Azure::Web::Mgmt::V2016_03_01::Models::SourceControl
        VnetParameters = Azure::Web::Mgmt::V2016_03_01::Models::VnetParameters
        DiagnosticCategory = Azure::Web::Mgmt::V2016_03_01::Models::DiagnosticCategory
        DiagnosticDetectorResponse = Azure::Web::Mgmt::V2016_03_01::Models::DiagnosticDetectorResponse
        RecommendationRule = Azure::Web::Mgmt::V2016_03_01::Models::RecommendationRule
        MetricAvailability = Azure::Web::Mgmt::V2016_03_01::Models::MetricAvailability
        GeoRegion = Azure::Web::Mgmt::V2016_03_01::Models::GeoRegion
        PremierAddOnOffer = Azure::Web::Mgmt::V2016_03_01::Models::PremierAddOnOffer
        ServiceSpecification = Azure::Web::Mgmt::V2016_03_01::Models::ServiceSpecification
        VnetValidationTestFailure = Azure::Web::Mgmt::V2016_03_01::Models::VnetValidationTestFailure
        VnetValidationFailureDetails = Azure::Web::Mgmt::V2016_03_01::Models::VnetValidationFailureDetails
        AppServicePlanRestrictions = Azure::Web::Mgmt::V2016_03_01::Models::AppServicePlanRestrictions
        SolutionType = Azure::Web::Mgmt::V2016_03_01::Models::SolutionType
        RenderingType = Azure::Web::Mgmt::V2016_03_01::Models::RenderingType
        ResourceScopeType = Azure::Web::Mgmt::V2016_03_01::Models::ResourceScopeType
        NotificationLevel = Azure::Web::Mgmt::V2016_03_01::Models::NotificationLevel
        InAvailabilityReasonType = Azure::Web::Mgmt::V2016_03_01::Models::InAvailabilityReasonType
        ValidateResourceTypes = Azure::Web::Mgmt::V2016_03_01::Models::ValidateResourceTypes
        Channels = Azure::Web::Mgmt::V2016_03_01::Models::Channels
        CheckNameResourceTypes = Azure::Web::Mgmt::V2016_03_01::Models::CheckNameResourceTypes
        IssueType = Azure::Web::Mgmt::V2016_03_01::Models::IssueType
        KeyVaultSecretStatus = Azure::Web::Mgmt::V2016_03_01::Models::KeyVaultSecretStatus
        SkuName = Azure::Web::Mgmt::V2016_03_01::Models::SkuName
        Certificate = Azure::Web::Mgmt::V2016_03_01::Models::Certificate
        DefaultErrorResponseErrorDetailsItem = Azure::Web::Mgmt::V2016_03_01::Models::DefaultErrorResponseErrorDetailsItem
        DefaultErrorResponseError = Azure::Web::Mgmt::V2016_03_01::Models::DefaultErrorResponseError
        DefaultErrorResponse = Azure::Web::Mgmt::V2016_03_01::Models::DefaultErrorResponse
        ValidateResponse = Azure::Web::Mgmt::V2016_03_01::Models::ValidateResponse
        SourceControlCollection = Azure::Web::Mgmt::V2016_03_01::Models::SourceControlCollection
        ResourceNameAvailabilityRequest = Azure::Web::Mgmt::V2016_03_01::Models::ResourceNameAvailabilityRequest
        PremierAddOnOfferCollection = Azure::Web::Mgmt::V2016_03_01::Models::PremierAddOnOfferCollection
        ApplicationStack = Azure::Web::Mgmt::V2016_03_01::Models::ApplicationStack
        StackMajorVersion = Azure::Web::Mgmt::V2016_03_01::Models::StackMajorVersion
        DeploymentLocations = Azure::Web::Mgmt::V2016_03_01::Models::DeploymentLocations
        GlobalCsmSkuDescription = Azure::Web::Mgmt::V2016_03_01::Models::GlobalCsmSkuDescription
        GeoRegionCollection = Azure::Web::Mgmt::V2016_03_01::Models::GeoRegionCollection
        DeletedSite = Azure::Web::Mgmt::V2016_03_01::Models::DeletedSite
        DeletedWebAppCollection = Azure::Web::Mgmt::V2016_03_01::Models::DeletedWebAppCollection
        ValidateResponseError = Azure::Web::Mgmt::V2016_03_01::Models::ValidateResponseError
        DetectorAbnormalTimePeriod = Azure::Web::Mgmt::V2016_03_01::Models::DetectorAbnormalTimePeriod
        ResourceNameAvailability = Azure::Web::Mgmt::V2016_03_01::Models::ResourceNameAvailability
        Solution = Azure::Web::Mgmt::V2016_03_01::Models::Solution
        AbnormalTimePeriod = Azure::Web::Mgmt::V2016_03_01::Models::AbnormalTimePeriod
        DiagnosticMetricSample = Azure::Web::Mgmt::V2016_03_01::Models::DiagnosticMetricSample
        DiagnosticMetricSet = Azure::Web::Mgmt::V2016_03_01::Models::DiagnosticMetricSet
        HostingEnvironmentDeploymentInfo = Azure::Web::Mgmt::V2016_03_01::Models::HostingEnvironmentDeploymentInfo
        ResponseMetaData = Azure::Web::Mgmt::V2016_03_01::Models::ResponseMetaData
        CsmMoveResourceEnvelope = Azure::Web::Mgmt::V2016_03_01::Models::CsmMoveResourceEnvelope
        DataSource = Azure::Web::Mgmt::V2016_03_01::Models::DataSource
        DataTableResponseColumn = Azure::Web::Mgmt::V2016_03_01::Models::DataTableResponseColumn
        AppServiceEnvironment = Azure::Web::Mgmt::V2016_03_01::Models::AppServiceEnvironment
        AnalysisData = Azure::Web::Mgmt::V2016_03_01::Models::AnalysisData
        ValidateRequest = Azure::Web::Mgmt::V2016_03_01::Models::ValidateRequest
        DataTableResponseObject = Azure::Web::Mgmt::V2016_03_01::Models::DataTableResponseObject
        Rendering = Azure::Web::Mgmt::V2016_03_01::Models::Rendering
        DetectorInfo = Azure::Web::Mgmt::V2016_03_01::Models::DetectorInfo
        BillingMeterCollection = Azure::Web::Mgmt::V2016_03_01::Models::BillingMeterCollection
        CertificateCollection = Azure::Web::Mgmt::V2016_03_01::Models::CertificateCollection
        DetectorResponseCollection = Azure::Web::Mgmt::V2016_03_01::Models::DetectorResponseCollection
        DiagnosticData = Azure::Web::Mgmt::V2016_03_01::Models::DiagnosticData
        Dimension = Azure::Web::Mgmt::V2016_03_01::Models::Dimension
        MetricSpecification = Azure::Web::Mgmt::V2016_03_01::Models::MetricSpecification
        SkuInfos = Azure::Web::Mgmt::V2016_03_01::Models::SkuInfos
        DiagnosticAnalysisCollection = Azure::Web::Mgmt::V2016_03_01::Models::DiagnosticAnalysisCollection
        ResourceHealthMetadataCollection = Azure::Web::Mgmt::V2016_03_01::Models::ResourceHealthMetadataCollection
        CsmOperationCollection = Azure::Web::Mgmt::V2016_03_01::Models::CsmOperationCollection
        DiagnosticCategoryCollection = Azure::Web::Mgmt::V2016_03_01::Models::DiagnosticCategoryCollection
        CsmOperationDescriptionProperties = Azure::Web::Mgmt::V2016_03_01::Models::CsmOperationDescriptionProperties
        StackMinorVersion = Azure::Web::Mgmt::V2016_03_01::Models::StackMinorVersion
        NameIdentifier = Azure::Web::Mgmt::V2016_03_01::Models::NameIdentifier
        RecommendationCollection = Azure::Web::Mgmt::V2016_03_01::Models::RecommendationCollection
        CsmOperationDescription = Azure::Web::Mgmt::V2016_03_01::Models::CsmOperationDescription
        CsmOperationDisplay = Azure::Web::Mgmt::V2016_03_01::Models::CsmOperationDisplay
        ApplicationStackCollection = Azure::Web::Mgmt::V2016_03_01::Models::ApplicationStackCollection
        DetectorResponse = Azure::Web::Mgmt::V2016_03_01::Models::DetectorResponse
        DiagnosticAnalysis = Azure::Web::Mgmt::V2016_03_01::Models::DiagnosticAnalysis
        DiagnosticDetectorCollection = Azure::Web::Mgmt::V2016_03_01::Models::DiagnosticDetectorCollection
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
        PublicCertificateCollection = Azure::Web::Mgmt::V2016_08_01::Models::PublicCertificateCollection
        TriggeredWebJobCollection = Azure::Web::Mgmt::V2016_08_01::Models::TriggeredWebJobCollection
        EnabledConfig = Azure::Web::Mgmt::V2016_08_01::Models::EnabledConfig
        TriggeredJobHistoryCollection = Azure::Web::Mgmt::V2016_08_01::Models::TriggeredJobHistoryCollection
        SnapshotCollection = Azure::Web::Mgmt::V2016_08_01::Models::SnapshotCollection
        SiteCloneabilityCriterion = Azure::Web::Mgmt::V2016_08_01::Models::SiteCloneabilityCriterion
        HostNameBindingCollection = Azure::Web::Mgmt::V2016_08_01::Models::HostNameBindingCollection
        SiteCloneability = Azure::Web::Mgmt::V2016_08_01::Models::SiteCloneability
        PerfMonSet = Azure::Web::Mgmt::V2016_08_01::Models::PerfMonSet
        PerfMonCounterCollection = Azure::Web::Mgmt::V2016_08_01::Models::PerfMonCounterCollection
        WebJobCollection = Azure::Web::Mgmt::V2016_08_01::Models::WebJobCollection
        ContinuousWebJobCollection = Azure::Web::Mgmt::V2016_08_01::Models::ContinuousWebJobCollection
        FileSystemApplicationLogsConfig = Azure::Web::Mgmt::V2016_08_01::Models::FileSystemApplicationLogsConfig
        FileSystemHttpLogsConfig = Azure::Web::Mgmt::V2016_08_01::Models::FileSystemHttpLogsConfig
        AzureBlobStorageApplicationLogsConfig = Azure::Web::Mgmt::V2016_08_01::Models::AzureBlobStorageApplicationLogsConfig
        AzureBlobStorageHttpLogsConfig = Azure::Web::Mgmt::V2016_08_01::Models::AzureBlobStorageHttpLogsConfig
        MSDeployLogEntry = Azure::Web::Mgmt::V2016_08_01::Models::MSDeployLogEntry
        PerfMonSample = Azure::Web::Mgmt::V2016_08_01::Models::PerfMonSample
        SlotDifferenceCollection = Azure::Web::Mgmt::V2016_08_01::Models::SlotDifferenceCollection
        DeploymentCollection = Azure::Web::Mgmt::V2016_08_01::Models::DeploymentCollection
        HttpLogsConfig = Azure::Web::Mgmt::V2016_08_01::Models::HttpLogsConfig
        SiteConfigResourceCollection = Azure::Web::Mgmt::V2016_08_01::Models::SiteConfigResourceCollection
        FunctionEnvelopeCollection = Azure::Web::Mgmt::V2016_08_01::Models::FunctionEnvelopeCollection
        PerfMonResponse = Azure::Web::Mgmt::V2016_08_01::Models::PerfMonResponse
        SiteConfigurationSnapshotInfoCollection = Azure::Web::Mgmt::V2016_08_01::Models::SiteConfigurationSnapshotInfoCollection
        CsmSlotEntity = Azure::Web::Mgmt::V2016_08_01::Models::CsmSlotEntity
        SiteExtensionInfoCollection = Azure::Web::Mgmt::V2016_08_01::Models::SiteExtensionInfoCollection
        BackupItem = Azure::Web::Mgmt::V2016_08_01::Models::BackupItem
        ConnectionStringDictionary = Azure::Web::Mgmt::V2016_08_01::Models::ConnectionStringDictionary
        ContinuousWebJob = Azure::Web::Mgmt::V2016_08_01::Models::ContinuousWebJob
        CustomHostnameAnalysisResult = Azure::Web::Mgmt::V2016_08_01::Models::CustomHostnameAnalysisResult
        FunctionEnvelope = Azure::Web::Mgmt::V2016_08_01::Models::FunctionEnvelope
        FunctionSecrets = Azure::Web::Mgmt::V2016_08_01::Models::FunctionSecrets
        HostNameBinding = Azure::Web::Mgmt::V2016_08_01::Models::HostNameBinding
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
        StorageMigrationResponse = Azure::Web::Mgmt::V2016_08_01::Models::StorageMigrationResponse
        StringDictionary = Azure::Web::Mgmt::V2016_08_01::Models::StringDictionary
        TriggeredJobRun = Azure::Web::Mgmt::V2016_08_01::Models::TriggeredJobRun
        TriggeredJobHistory = Azure::Web::Mgmt::V2016_08_01::Models::TriggeredJobHistory
        TriggeredWebJob = Azure::Web::Mgmt::V2016_08_01::Models::TriggeredWebJob
        StorageMigrationOptions = Azure::Web::Mgmt::V2016_08_01::Models::StorageMigrationOptions
        WebJob = Azure::Web::Mgmt::V2016_08_01::Models::WebJob
        LogLevel = Azure::Web::Mgmt::V2016_08_01::Models::LogLevel
        BackupItemStatus = Azure::Web::Mgmt::V2016_08_01::Models::BackupItemStatus
        FrequencyUnit = Azure::Web::Mgmt::V2016_08_01::Models::FrequencyUnit
        BackupRestoreOperationType = Azure::Web::Mgmt::V2016_08_01::Models::BackupRestoreOperationType
        DatabaseType = Azure::Web::Mgmt::V2016_08_01::Models::DatabaseType
        DnsVerificationTestResult = Azure::Web::Mgmt::V2016_08_01::Models::DnsVerificationTestResult
        PublishingProfileFormat = Azure::Web::Mgmt::V2016_08_01::Models::PublishingProfileFormat
        ContinuousWebJobStatus = Azure::Web::Mgmt::V2016_08_01::Models::ContinuousWebJobStatus
        MySqlMigrationType = Azure::Web::Mgmt::V2016_08_01::Models::MySqlMigrationType
        PublicCertificateLocation = Azure::Web::Mgmt::V2016_08_01::Models::PublicCertificateLocation
        BuiltInAuthenticationProvider = Azure::Web::Mgmt::V2016_08_01::Models::BuiltInAuthenticationProvider
        MSDeployLogEntryType = Azure::Web::Mgmt::V2016_08_01::Models::MSDeployLogEntryType
        TriggeredWebJobStatus = Azure::Web::Mgmt::V2016_08_01::Models::TriggeredWebJobStatus
        CloneAbilityResult = Azure::Web::Mgmt::V2016_08_01::Models::CloneAbilityResult
        UnauthenticatedClientAction = Azure::Web::Mgmt::V2016_08_01::Models::UnauthenticatedClientAction
        MSDeployProvisioningState = Azure::Web::Mgmt::V2016_08_01::Models::MSDeployProvisioningState
        WebJobType = Azure::Web::Mgmt::V2016_08_01::Models::WebJobType
        CustomHostNameDnsRecordType = Azure::Web::Mgmt::V2016_08_01::Models::CustomHostNameDnsRecordType
        HostNameType = Azure::Web::Mgmt::V2016_08_01::Models::HostNameType
        AzureResourceType = Azure::Web::Mgmt::V2016_08_01::Models::AzureResourceType
        SiteExtensionType = Azure::Web::Mgmt::V2016_08_01::Models::SiteExtensionType
        IdentifierCollection = Azure::Web::Mgmt::V2016_08_01::Models::IdentifierCollection
        Snapshot = Azure::Web::Mgmt::V2016_08_01::Models::Snapshot
        Deployment = Azure::Web::Mgmt::V2016_08_01::Models::Deployment
        BackupRequest = Azure::Web::Mgmt::V2016_08_01::Models::BackupRequest
        BackupSchedule = Azure::Web::Mgmt::V2016_08_01::Models::BackupSchedule
        RestoreRequest = Azure::Web::Mgmt::V2016_08_01::Models::RestoreRequest
        SnapshotRecoveryRequest = Azure::Web::Mgmt::V2016_09_01::Models::SnapshotRecoveryRequest
        ResourceMetricDefinition = Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetricDefinition
        PushSettings = Azure::Web::Mgmt::V2016_09_01::Models::PushSettings
        HybridConnectionKey = Azure::Web::Mgmt::V2016_09_01::Models::HybridConnectionKey
        AppServiceEnvironmentCollection = Azure::Web::Mgmt::V2016_09_01::Models::AppServiceEnvironmentCollection
        HostingEnvironmentDiagnostics = Azure::Web::Mgmt::V2016_09_01::Models::HostingEnvironmentDiagnostics
        AddressResponse = Azure::Web::Mgmt::V2016_09_01::Models::AddressResponse
        SkuInfoCollection = Azure::Web::Mgmt::V2016_09_01::Models::SkuInfoCollection
        ResourceCollection = Azure::Web::Mgmt::V2016_09_01::Models::ResourceCollection
        WorkerPoolCollection = Azure::Web::Mgmt::V2016_09_01::Models::WorkerPoolCollection
        HybridConnectionCollection = Azure::Web::Mgmt::V2016_09_01::Models::HybridConnectionCollection
        MetricAvailabilily = Azure::Web::Mgmt::V2016_09_01::Models::MetricAvailabilily
        SkuInfo = Azure::Web::Mgmt::V2016_09_01::Models::SkuInfo
        UsageCollection = Azure::Web::Mgmt::V2016_09_01::Models::UsageCollection
        StampCapacityCollection = Azure::Web::Mgmt::V2016_09_01::Models::StampCapacityCollection
        AppServiceEnvironmentResource = Azure::Web::Mgmt::V2016_09_01::Models::AppServiceEnvironmentResource
        AppServiceEnvironmentPatchResource = Azure::Web::Mgmt::V2016_09_01::Models::AppServiceEnvironmentPatchResource
        WorkerPoolResource = Azure::Web::Mgmt::V2016_09_01::Models::WorkerPoolResource
        AppServicePlanPatchResource = Azure::Web::Mgmt::V2016_09_01::Models::AppServicePlanPatchResource
        Site = Azure::Web::Mgmt::V2016_09_01::Models::Site
        AppServicePlan = Azure::Web::Mgmt::V2016_09_01::Models::AppServicePlan
        AutoHealActionType = Azure::Web::Mgmt::V2016_09_01::Models::AutoHealActionType
        MetricDefinition = Azure::Web::Mgmt::V2016_09_01::Models::MetricDefinition
        RouteType = Azure::Web::Mgmt::V2016_09_01::Models::RouteType
        ManagedServiceIdentityType = Azure::Web::Mgmt::V2016_09_01::Models::ManagedServiceIdentityType
        HybridConnectionLimits = Azure::Web::Mgmt::V2016_09_01::Models::HybridConnectionLimits
        ConnectionStringType = Azure::Web::Mgmt::V2016_09_01::Models::ConnectionStringType
        VnetGateway = Azure::Web::Mgmt::V2016_09_01::Models::VnetGateway
        ManagedPipelineMode = Azure::Web::Mgmt::V2016_09_01::Models::ManagedPipelineMode
        SiteLoadBalancing = Azure::Web::Mgmt::V2016_09_01::Models::SiteLoadBalancing
        SupportedTlsVersions = Azure::Web::Mgmt::V2016_09_01::Models::SupportedTlsVersions
        SslState = Azure::Web::Mgmt::V2016_09_01::Models::SslState
        ScmType = Azure::Web::Mgmt::V2016_09_01::Models::ScmType
        UsageState = Azure::Web::Mgmt::V2016_09_01::Models::UsageState
        SiteAvailabilityState = Azure::Web::Mgmt::V2016_09_01::Models::SiteAvailabilityState
        StatusOptions = Azure::Web::Mgmt::V2016_09_01::Models::StatusOptions
        HostType = Azure::Web::Mgmt::V2016_09_01::Models::HostType
        OperationStatus = Azure::Web::Mgmt::V2016_09_01::Models::OperationStatus
        Operation = Azure::Web::Mgmt::V2016_09_01::Models::Operation
        HybridConnection = Azure::Web::Mgmt::V2016_09_01::Models::HybridConnection
        Usage = Azure::Web::Mgmt::V2016_09_01::Models::Usage
        Resource = Azure::Web::Mgmt::V2016_09_01::Models::Resource
        ProvisioningState = Azure::Web::Mgmt::V2016_09_01::Models::ProvisioningState
        ProxyOnlyResource = Azure::Web::Mgmt::V2016_09_01::Models::ProxyOnlyResource
        LocalizableString = Azure::Web::Mgmt::V2016_09_01::Models::LocalizableString
        User = Azure::Web::Mgmt::V2016_09_01::Models::User
        CsmUsageQuota = Azure::Web::Mgmt::V2016_09_01::Models::CsmUsageQuota
        CsmUsageQuotaCollection = Azure::Web::Mgmt::V2016_09_01::Models::CsmUsageQuotaCollection
        ErrorEntity = Azure::Web::Mgmt::V2016_09_01::Models::ErrorEntity
        ResourceMetricProperty = Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetricProperty
        ResourceMetricValue = Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetricValue
        ResourceMetric = Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetric
        ResourceMetricCollection = Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetricCollection
        VirtualNetworkProfile = Azure::Web::Mgmt::V2016_09_01::Models::VirtualNetworkProfile
        ResourceMetricDefinitionCollection = Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetricDefinitionCollection
        VirtualIPMapping = Azure::Web::Mgmt::V2016_09_01::Models::VirtualIPMapping
        WebAppCollection = Azure::Web::Mgmt::V2016_09_01::Models::WebAppCollection
        NetworkAccessControlEntry = Azure::Web::Mgmt::V2016_09_01::Models::NetworkAccessControlEntry
        AppServicePlanCollection = Azure::Web::Mgmt::V2016_09_01::Models::AppServicePlanCollection
        ManagedServiceIdentity = Azure::Web::Mgmt::V2016_09_01::Models::ManagedServiceIdentity
        WorkerPool = Azure::Web::Mgmt::V2016_09_01::Models::WorkerPool
        AutoHealCustomAction = Azure::Web::Mgmt::V2016_09_01::Models::AutoHealCustomAction
        StampCapacity = Azure::Web::Mgmt::V2016_09_01::Models::StampCapacity
        AutoHealActions = Azure::Web::Mgmt::V2016_09_01::Models::AutoHealActions
        SlowRequestsBasedTrigger = Azure::Web::Mgmt::V2016_09_01::Models::SlowRequestsBasedTrigger
        StatusCodesBasedTrigger = Azure::Web::Mgmt::V2016_09_01::Models::StatusCodesBasedTrigger
        RequestsBasedTrigger = Azure::Web::Mgmt::V2016_09_01::Models::RequestsBasedTrigger
        AutoHealTriggers = Azure::Web::Mgmt::V2016_09_01::Models::AutoHealTriggers
        AutoHealRules = Azure::Web::Mgmt::V2016_09_01::Models::AutoHealRules
        SiteLimits = Azure::Web::Mgmt::V2016_09_01::Models::SiteLimits
        RampUpRule = Azure::Web::Mgmt::V2016_09_01::Models::RampUpRule
        SnapshotRecoveryTarget = Azure::Web::Mgmt::V2016_09_01::Models::SnapshotRecoveryTarget
        ResourceMetricAvailability = Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetricAvailability
        CloningInfo = Azure::Web::Mgmt::V2016_09_01::Models::CloningInfo
        InternalLoadBalancingMode = Azure::Web::Mgmt::V2016_09_01::Models::InternalLoadBalancingMode
        Experiments = Azure::Web::Mgmt::V2016_09_01::Models::Experiments
        WorkerSizeOptions = Azure::Web::Mgmt::V2016_09_01::Models::WorkerSizeOptions
        AccessControlEntryAction = Azure::Web::Mgmt::V2016_09_01::Models::AccessControlEntryAction
        IpSecurityRestriction = Azure::Web::Mgmt::V2016_09_01::Models::IpSecurityRestriction
        VirtualDirectory = Azure::Web::Mgmt::V2016_09_01::Models::VirtualDirectory
        CorsSettings = Azure::Web::Mgmt::V2016_09_01::Models::CorsSettings
        VirtualApplication = Azure::Web::Mgmt::V2016_09_01::Models::VirtualApplication
        ResourceMetricName = Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetricName
        HostingEnvironmentStatus = Azure::Web::Mgmt::V2016_09_01::Models::HostingEnvironmentStatus
        ConnStringInfo = Azure::Web::Mgmt::V2016_09_01::Models::ConnStringInfo
        SiteMachineKey = Azure::Web::Mgmt::V2016_09_01::Models::SiteMachineKey
        HandlerMapping = Azure::Web::Mgmt::V2016_09_01::Models::HandlerMapping
        SlotSwapStatus = Azure::Web::Mgmt::V2016_09_01::Models::SlotSwapStatus
        NameValuePair = Azure::Web::Mgmt::V2016_09_01::Models::NameValuePair
        ApiDefinitionInfo = Azure::Web::Mgmt::V2016_09_01::Models::ApiDefinitionInfo
        SiteConfig = Azure::Web::Mgmt::V2016_09_01::Models::SiteConfig
        Capability = Azure::Web::Mgmt::V2016_09_01::Models::Capability
        HostNameSslState = Azure::Web::Mgmt::V2016_09_01::Models::HostNameSslState
        HostingEnvironmentProfile = Azure::Web::Mgmt::V2016_09_01::Models::HostingEnvironmentProfile
        SkuCapacity = Azure::Web::Mgmt::V2016_09_01::Models::SkuCapacity
        SkuDescription = Azure::Web::Mgmt::V2016_09_01::Models::SkuDescription
        ComputeModeOptions = Azure::Web::Mgmt::V2016_09_01::Models::ComputeModeOptions
        VnetRoute = Azure::Web::Mgmt::V2016_09_01::Models::VnetRoute
        VnetInfo = Azure::Web::Mgmt::V2016_09_01::Models::VnetInfo
        Identifier = Azure::Web::Mgmt::V2016_09_01::Models::Identifier
      end

      class WebManagementClass
        attr_reader :domain_registration_provider, :domains, :top_level_domains, :app_service_certificate_orders, :certificate_registration_provider, :deleted_web_apps, :recommendations, :resource_health_metadata_operations, :billing_meters, :certificates, :diagnostics, :provider, :web_apps, :app_service_environments, :app_service_plans, :configurable, :base_url, :options, :model_classes

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
          @deleted_web_apps = @client_2.deleted_web_apps
          @recommendations = @client_2.recommendations
          @resource_health_metadata_operations = @client_2.resource_health_metadata_operations
          @billing_meters = @client_2.billing_meters
          @certificates = @client_2.certificates
          @diagnostics = @client_2.diagnostics
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
          def top_level_domain_agreement_option
            Azure::Web::Mgmt::V2015_04_01::Models::TopLevelDomainAgreementOption
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
          def tld_legal_agreement
            Azure::Web::Mgmt::V2015_04_01::Models::TldLegalAgreement
          end
          def domain_collection
            Azure::Web::Mgmt::V2015_04_01::Models::DomainCollection
          end
          def tld_legal_agreement_collection
            Azure::Web::Mgmt::V2015_04_01::Models::TldLegalAgreementCollection
          end
          def top_level_domain_collection
            Azure::Web::Mgmt::V2015_04_01::Models::TopLevelDomainCollection
          end
          def domain_ownership_identifier
            Azure::Web::Mgmt::V2015_04_01::Models::DomainOwnershipIdentifier
          end
          def domain_patch_resource
            Azure::Web::Mgmt::V2015_04_01::Models::DomainPatchResource
          end
          def certificate_order_action
            Azure::Web::Mgmt::V2015_08_01::Models::CertificateOrderAction
          end
          def certificate_order_status
            Azure::Web::Mgmt::V2015_08_01::Models::CertificateOrderStatus
          end
          def app_service_certificate_patch_resource
            Azure::Web::Mgmt::V2015_08_01::Models::AppServiceCertificatePatchResource
          end
          def certificate_order_action_type
            Azure::Web::Mgmt::V2015_08_01::Models::CertificateOrderActionType
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
          def certificate_details
            Azure::Web::Mgmt::V2015_08_01::Models::CertificateDetails
          end
          def site_seal
            Azure::Web::Mgmt::V2015_08_01::Models::SiteSeal
          end
          def app_service_certificate_resource
            Azure::Web::Mgmt::V2015_08_01::Models::AppServiceCertificateResource
          end
          def app_service_certificate_order_patch_resource
            Azure::Web::Mgmt::V2015_08_01::Models::AppServiceCertificateOrderPatchResource
          end
          def certificate_email
            Azure::Web::Mgmt::V2015_08_01::Models::CertificateEmail
          end
          def renew_certificate_order_request
            Azure::Web::Mgmt::V2015_08_01::Models::RenewCertificateOrderRequest
          end
          def certificate_product_type
            Azure::Web::Mgmt::V2015_08_01::Models::CertificateProductType
          end
          def app_service_certificate_order
            Azure::Web::Mgmt::V2015_08_01::Models::AppServiceCertificateOrder
          end
          def reissue_certificate_order_request
            Azure::Web::Mgmt::V2015_08_01::Models::ReissueCertificateOrderRequest
          end
          def certificate_patch_resource
            Azure::Web::Mgmt::V2016_03_01::Models::CertificatePatchResource
          end
          def recommendation
            Azure::Web::Mgmt::V2016_03_01::Models::Recommendation
          end
          def resource_health_metadata
            Azure::Web::Mgmt::V2016_03_01::Models::ResourceHealthMetadata
          end
          def billing_meter
            Azure::Web::Mgmt::V2016_03_01::Models::BillingMeter
          end
          def detector_definition
            Azure::Web::Mgmt::V2016_03_01::Models::DetectorDefinition
          end
          def analysis_definition
            Azure::Web::Mgmt::V2016_03_01::Models::AnalysisDefinition
          end
          def source_control
            Azure::Web::Mgmt::V2016_03_01::Models::SourceControl
          end
          def vnet_parameters
            Azure::Web::Mgmt::V2016_03_01::Models::VnetParameters
          end
          def diagnostic_category
            Azure::Web::Mgmt::V2016_03_01::Models::DiagnosticCategory
          end
          def diagnostic_detector_response
            Azure::Web::Mgmt::V2016_03_01::Models::DiagnosticDetectorResponse
          end
          def recommendation_rule
            Azure::Web::Mgmt::V2016_03_01::Models::RecommendationRule
          end
          def metric_availability
            Azure::Web::Mgmt::V2016_03_01::Models::MetricAvailability
          end
          def geo_region
            Azure::Web::Mgmt::V2016_03_01::Models::GeoRegion
          end
          def premier_add_on_offer
            Azure::Web::Mgmt::V2016_03_01::Models::PremierAddOnOffer
          end
          def service_specification
            Azure::Web::Mgmt::V2016_03_01::Models::ServiceSpecification
          end
          def vnet_validation_test_failure
            Azure::Web::Mgmt::V2016_03_01::Models::VnetValidationTestFailure
          end
          def vnet_validation_failure_details
            Azure::Web::Mgmt::V2016_03_01::Models::VnetValidationFailureDetails
          end
          def app_service_plan_restrictions
            Azure::Web::Mgmt::V2016_03_01::Models::AppServicePlanRestrictions
          end
          def solution_type
            Azure::Web::Mgmt::V2016_03_01::Models::SolutionType
          end
          def rendering_type
            Azure::Web::Mgmt::V2016_03_01::Models::RenderingType
          end
          def resource_scope_type
            Azure::Web::Mgmt::V2016_03_01::Models::ResourceScopeType
          end
          def notification_level
            Azure::Web::Mgmt::V2016_03_01::Models::NotificationLevel
          end
          def in_availability_reason_type
            Azure::Web::Mgmt::V2016_03_01::Models::InAvailabilityReasonType
          end
          def validate_resource_types
            Azure::Web::Mgmt::V2016_03_01::Models::ValidateResourceTypes
          end
          def channels
            Azure::Web::Mgmt::V2016_03_01::Models::Channels
          end
          def check_name_resource_types
            Azure::Web::Mgmt::V2016_03_01::Models::CheckNameResourceTypes
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
          def default_error_response_error_details_item
            Azure::Web::Mgmt::V2016_03_01::Models::DefaultErrorResponseErrorDetailsItem
          end
          def default_error_response_error
            Azure::Web::Mgmt::V2016_03_01::Models::DefaultErrorResponseError
          end
          def default_error_response
            Azure::Web::Mgmt::V2016_03_01::Models::DefaultErrorResponse
          end
          def validate_response
            Azure::Web::Mgmt::V2016_03_01::Models::ValidateResponse
          end
          def source_control_collection
            Azure::Web::Mgmt::V2016_03_01::Models::SourceControlCollection
          end
          def resource_name_availability_request
            Azure::Web::Mgmt::V2016_03_01::Models::ResourceNameAvailabilityRequest
          end
          def premier_add_on_offer_collection
            Azure::Web::Mgmt::V2016_03_01::Models::PremierAddOnOfferCollection
          end
          def application_stack
            Azure::Web::Mgmt::V2016_03_01::Models::ApplicationStack
          end
          def stack_major_version
            Azure::Web::Mgmt::V2016_03_01::Models::StackMajorVersion
          end
          def deployment_locations
            Azure::Web::Mgmt::V2016_03_01::Models::DeploymentLocations
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
          def validate_response_error
            Azure::Web::Mgmt::V2016_03_01::Models::ValidateResponseError
          end
          def detector_abnormal_time_period
            Azure::Web::Mgmt::V2016_03_01::Models::DetectorAbnormalTimePeriod
          end
          def resource_name_availability
            Azure::Web::Mgmt::V2016_03_01::Models::ResourceNameAvailability
          end
          def solution
            Azure::Web::Mgmt::V2016_03_01::Models::Solution
          end
          def abnormal_time_period
            Azure::Web::Mgmt::V2016_03_01::Models::AbnormalTimePeriod
          end
          def diagnostic_metric_sample
            Azure::Web::Mgmt::V2016_03_01::Models::DiagnosticMetricSample
          end
          def diagnostic_metric_set
            Azure::Web::Mgmt::V2016_03_01::Models::DiagnosticMetricSet
          end
          def hosting_environment_deployment_info
            Azure::Web::Mgmt::V2016_03_01::Models::HostingEnvironmentDeploymentInfo
          end
          def response_meta_data
            Azure::Web::Mgmt::V2016_03_01::Models::ResponseMetaData
          end
          def csm_move_resource_envelope
            Azure::Web::Mgmt::V2016_03_01::Models::CsmMoveResourceEnvelope
          end
          def data_source
            Azure::Web::Mgmt::V2016_03_01::Models::DataSource
          end
          def data_table_response_column
            Azure::Web::Mgmt::V2016_03_01::Models::DataTableResponseColumn
          end
          def app_service_environment
            Azure::Web::Mgmt::V2016_03_01::Models::AppServiceEnvironment
          end
          def analysis_data
            Azure::Web::Mgmt::V2016_03_01::Models::AnalysisData
          end
          def validate_request
            Azure::Web::Mgmt::V2016_03_01::Models::ValidateRequest
          end
          def data_table_response_object
            Azure::Web::Mgmt::V2016_03_01::Models::DataTableResponseObject
          end
          def rendering
            Azure::Web::Mgmt::V2016_03_01::Models::Rendering
          end
          def detector_info
            Azure::Web::Mgmt::V2016_03_01::Models::DetectorInfo
          end
          def billing_meter_collection
            Azure::Web::Mgmt::V2016_03_01::Models::BillingMeterCollection
          end
          def certificate_collection
            Azure::Web::Mgmt::V2016_03_01::Models::CertificateCollection
          end
          def detector_response_collection
            Azure::Web::Mgmt::V2016_03_01::Models::DetectorResponseCollection
          end
          def diagnostic_data
            Azure::Web::Mgmt::V2016_03_01::Models::DiagnosticData
          end
          def dimension
            Azure::Web::Mgmt::V2016_03_01::Models::Dimension
          end
          def metric_specification
            Azure::Web::Mgmt::V2016_03_01::Models::MetricSpecification
          end
          def sku_infos
            Azure::Web::Mgmt::V2016_03_01::Models::SkuInfos
          end
          def diagnostic_analysis_collection
            Azure::Web::Mgmt::V2016_03_01::Models::DiagnosticAnalysisCollection
          end
          def resource_health_metadata_collection
            Azure::Web::Mgmt::V2016_03_01::Models::ResourceHealthMetadataCollection
          end
          def csm_operation_collection
            Azure::Web::Mgmt::V2016_03_01::Models::CsmOperationCollection
          end
          def diagnostic_category_collection
            Azure::Web::Mgmt::V2016_03_01::Models::DiagnosticCategoryCollection
          end
          def csm_operation_description_properties
            Azure::Web::Mgmt::V2016_03_01::Models::CsmOperationDescriptionProperties
          end
          def stack_minor_version
            Azure::Web::Mgmt::V2016_03_01::Models::StackMinorVersion
          end
          def name_identifier
            Azure::Web::Mgmt::V2016_03_01::Models::NameIdentifier
          end
          def recommendation_collection
            Azure::Web::Mgmt::V2016_03_01::Models::RecommendationCollection
          end
          def csm_operation_description
            Azure::Web::Mgmt::V2016_03_01::Models::CsmOperationDescription
          end
          def csm_operation_display
            Azure::Web::Mgmt::V2016_03_01::Models::CsmOperationDisplay
          end
          def application_stack_collection
            Azure::Web::Mgmt::V2016_03_01::Models::ApplicationStackCollection
          end
          def detector_response
            Azure::Web::Mgmt::V2016_03_01::Models::DetectorResponse
          end
          def diagnostic_analysis
            Azure::Web::Mgmt::V2016_03_01::Models::DiagnosticAnalysis
          end
          def diagnostic_detector_collection
            Azure::Web::Mgmt::V2016_03_01::Models::DiagnosticDetectorCollection
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
          def site_cloneability_criterion
            Azure::Web::Mgmt::V2016_08_01::Models::SiteCloneabilityCriterion
          end
          def host_name_binding_collection
            Azure::Web::Mgmt::V2016_08_01::Models::HostNameBindingCollection
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
          def msdeploy_log_entry
            Azure::Web::Mgmt::V2016_08_01::Models::MSDeployLogEntry
          end
          def perf_mon_sample
            Azure::Web::Mgmt::V2016_08_01::Models::PerfMonSample
          end
          def slot_difference_collection
            Azure::Web::Mgmt::V2016_08_01::Models::SlotDifferenceCollection
          end
          def deployment_collection
            Azure::Web::Mgmt::V2016_08_01::Models::DeploymentCollection
          end
          def http_logs_config
            Azure::Web::Mgmt::V2016_08_01::Models::HttpLogsConfig
          end
          def site_config_resource_collection
            Azure::Web::Mgmt::V2016_08_01::Models::SiteConfigResourceCollection
          end
          def function_envelope_collection
            Azure::Web::Mgmt::V2016_08_01::Models::FunctionEnvelopeCollection
          end
          def perf_mon_response
            Azure::Web::Mgmt::V2016_08_01::Models::PerfMonResponse
          end
          def site_configuration_snapshot_info_collection
            Azure::Web::Mgmt::V2016_08_01::Models::SiteConfigurationSnapshotInfoCollection
          end
          def csm_slot_entity
            Azure::Web::Mgmt::V2016_08_01::Models::CsmSlotEntity
          end
          def site_extension_info_collection
            Azure::Web::Mgmt::V2016_08_01::Models::SiteExtensionInfoCollection
          end
          def backup_item
            Azure::Web::Mgmt::V2016_08_01::Models::BackupItem
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
          def function_envelope
            Azure::Web::Mgmt::V2016_08_01::Models::FunctionEnvelope
          end
          def function_secrets
            Azure::Web::Mgmt::V2016_08_01::Models::FunctionSecrets
          end
          def host_name_binding
            Azure::Web::Mgmt::V2016_08_01::Models::HostNameBinding
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
          def storage_migration_options
            Azure::Web::Mgmt::V2016_08_01::Models::StorageMigrationOptions
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
          def frequency_unit
            Azure::Web::Mgmt::V2016_08_01::Models::FrequencyUnit
          end
          def backup_restore_operation_type
            Azure::Web::Mgmt::V2016_08_01::Models::BackupRestoreOperationType
          end
          def database_type
            Azure::Web::Mgmt::V2016_08_01::Models::DatabaseType
          end
          def dns_verification_test_result
            Azure::Web::Mgmt::V2016_08_01::Models::DnsVerificationTestResult
          end
          def publishing_profile_format
            Azure::Web::Mgmt::V2016_08_01::Models::PublishingProfileFormat
          end
          def continuous_web_job_status
            Azure::Web::Mgmt::V2016_08_01::Models::ContinuousWebJobStatus
          end
          def my_sql_migration_type
            Azure::Web::Mgmt::V2016_08_01::Models::MySqlMigrationType
          end
          def public_certificate_location
            Azure::Web::Mgmt::V2016_08_01::Models::PublicCertificateLocation
          end
          def built_in_authentication_provider
            Azure::Web::Mgmt::V2016_08_01::Models::BuiltInAuthenticationProvider
          end
          def msdeploy_log_entry_type
            Azure::Web::Mgmt::V2016_08_01::Models::MSDeployLogEntryType
          end
          def triggered_web_job_status
            Azure::Web::Mgmt::V2016_08_01::Models::TriggeredWebJobStatus
          end
          def clone_ability_result
            Azure::Web::Mgmt::V2016_08_01::Models::CloneAbilityResult
          end
          def unauthenticated_client_action
            Azure::Web::Mgmt::V2016_08_01::Models::UnauthenticatedClientAction
          end
          def msdeploy_provisioning_state
            Azure::Web::Mgmt::V2016_08_01::Models::MSDeployProvisioningState
          end
          def web_job_type
            Azure::Web::Mgmt::V2016_08_01::Models::WebJobType
          end
          def custom_host_name_dns_record_type
            Azure::Web::Mgmt::V2016_08_01::Models::CustomHostNameDnsRecordType
          end
          def host_name_type
            Azure::Web::Mgmt::V2016_08_01::Models::HostNameType
          end
          def azure_resource_type
            Azure::Web::Mgmt::V2016_08_01::Models::AzureResourceType
          end
          def site_extension_type
            Azure::Web::Mgmt::V2016_08_01::Models::SiteExtensionType
          end
          def identifier_collection
            Azure::Web::Mgmt::V2016_08_01::Models::IdentifierCollection
          end
          def snapshot
            Azure::Web::Mgmt::V2016_08_01::Models::Snapshot
          end
          def deployment
            Azure::Web::Mgmt::V2016_08_01::Models::Deployment
          end
          def backup_request
            Azure::Web::Mgmt::V2016_08_01::Models::BackupRequest
          end
          def backup_schedule
            Azure::Web::Mgmt::V2016_08_01::Models::BackupSchedule
          end
          def restore_request
            Azure::Web::Mgmt::V2016_08_01::Models::RestoreRequest
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
          def sku_info
            Azure::Web::Mgmt::V2016_09_01::Models::SkuInfo
          end
          def usage_collection
            Azure::Web::Mgmt::V2016_09_01::Models::UsageCollection
          end
          def stamp_capacity_collection
            Azure::Web::Mgmt::V2016_09_01::Models::StampCapacityCollection
          end
          def app_service_environment_resource
            Azure::Web::Mgmt::V2016_09_01::Models::AppServiceEnvironmentResource
          end
          def app_service_environment_patch_resource
            Azure::Web::Mgmt::V2016_09_01::Models::AppServiceEnvironmentPatchResource
          end
          def worker_pool_resource
            Azure::Web::Mgmt::V2016_09_01::Models::WorkerPoolResource
          end
          def app_service_plan_patch_resource
            Azure::Web::Mgmt::V2016_09_01::Models::AppServicePlanPatchResource
          end
          def site
            Azure::Web::Mgmt::V2016_09_01::Models::Site
          end
          def app_service_plan
            Azure::Web::Mgmt::V2016_09_01::Models::AppServicePlan
          end
          def auto_heal_action_type
            Azure::Web::Mgmt::V2016_09_01::Models::AutoHealActionType
          end
          def metric_definition
            Azure::Web::Mgmt::V2016_09_01::Models::MetricDefinition
          end
          def route_type
            Azure::Web::Mgmt::V2016_09_01::Models::RouteType
          end
          def managed_service_identity_type
            Azure::Web::Mgmt::V2016_09_01::Models::ManagedServiceIdentityType
          end
          def hybrid_connection_limits
            Azure::Web::Mgmt::V2016_09_01::Models::HybridConnectionLimits
          end
          def connection_string_type
            Azure::Web::Mgmt::V2016_09_01::Models::ConnectionStringType
          end
          def vnet_gateway
            Azure::Web::Mgmt::V2016_09_01::Models::VnetGateway
          end
          def managed_pipeline_mode
            Azure::Web::Mgmt::V2016_09_01::Models::ManagedPipelineMode
          end
          def site_load_balancing
            Azure::Web::Mgmt::V2016_09_01::Models::SiteLoadBalancing
          end
          def supported_tls_versions
            Azure::Web::Mgmt::V2016_09_01::Models::SupportedTlsVersions
          end
          def ssl_state
            Azure::Web::Mgmt::V2016_09_01::Models::SslState
          end
          def scm_type
            Azure::Web::Mgmt::V2016_09_01::Models::ScmType
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
          def host_type
            Azure::Web::Mgmt::V2016_09_01::Models::HostType
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
          def csm_usage_quota
            Azure::Web::Mgmt::V2016_09_01::Models::CsmUsageQuota
          end
          def csm_usage_quota_collection
            Azure::Web::Mgmt::V2016_09_01::Models::CsmUsageQuotaCollection
          end
          def error_entity
            Azure::Web::Mgmt::V2016_09_01::Models::ErrorEntity
          end
          def resource_metric_property
            Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetricProperty
          end
          def resource_metric_value
            Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetricValue
          end
          def resource_metric
            Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetric
          end
          def resource_metric_collection
            Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetricCollection
          end
          def virtual_network_profile
            Azure::Web::Mgmt::V2016_09_01::Models::VirtualNetworkProfile
          end
          def resource_metric_definition_collection
            Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetricDefinitionCollection
          end
          def virtual_ipmapping
            Azure::Web::Mgmt::V2016_09_01::Models::VirtualIPMapping
          end
          def web_app_collection
            Azure::Web::Mgmt::V2016_09_01::Models::WebAppCollection
          end
          def network_access_control_entry
            Azure::Web::Mgmt::V2016_09_01::Models::NetworkAccessControlEntry
          end
          def app_service_plan_collection
            Azure::Web::Mgmt::V2016_09_01::Models::AppServicePlanCollection
          end
          def managed_service_identity
            Azure::Web::Mgmt::V2016_09_01::Models::ManagedServiceIdentity
          end
          def worker_pool
            Azure::Web::Mgmt::V2016_09_01::Models::WorkerPool
          end
          def auto_heal_custom_action
            Azure::Web::Mgmt::V2016_09_01::Models::AutoHealCustomAction
          end
          def stamp_capacity
            Azure::Web::Mgmt::V2016_09_01::Models::StampCapacity
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
          def auto_heal_triggers
            Azure::Web::Mgmt::V2016_09_01::Models::AutoHealTriggers
          end
          def auto_heal_rules
            Azure::Web::Mgmt::V2016_09_01::Models::AutoHealRules
          end
          def site_limits
            Azure::Web::Mgmt::V2016_09_01::Models::SiteLimits
          end
          def ramp_up_rule
            Azure::Web::Mgmt::V2016_09_01::Models::RampUpRule
          end
          def snapshot_recovery_target
            Azure::Web::Mgmt::V2016_09_01::Models::SnapshotRecoveryTarget
          end
          def resource_metric_availability
            Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetricAvailability
          end
          def cloning_info
            Azure::Web::Mgmt::V2016_09_01::Models::CloningInfo
          end
          def internal_load_balancing_mode
            Azure::Web::Mgmt::V2016_09_01::Models::InternalLoadBalancingMode
          end
          def experiments
            Azure::Web::Mgmt::V2016_09_01::Models::Experiments
          end
          def worker_size_options
            Azure::Web::Mgmt::V2016_09_01::Models::WorkerSizeOptions
          end
          def access_control_entry_action
            Azure::Web::Mgmt::V2016_09_01::Models::AccessControlEntryAction
          end
          def ip_security_restriction
            Azure::Web::Mgmt::V2016_09_01::Models::IpSecurityRestriction
          end
          def virtual_directory
            Azure::Web::Mgmt::V2016_09_01::Models::VirtualDirectory
          end
          def cors_settings
            Azure::Web::Mgmt::V2016_09_01::Models::CorsSettings
          end
          def virtual_application
            Azure::Web::Mgmt::V2016_09_01::Models::VirtualApplication
          end
          def resource_metric_name
            Azure::Web::Mgmt::V2016_09_01::Models::ResourceMetricName
          end
          def hosting_environment_status
            Azure::Web::Mgmt::V2016_09_01::Models::HostingEnvironmentStatus
          end
          def conn_string_info
            Azure::Web::Mgmt::V2016_09_01::Models::ConnStringInfo
          end
          def site_machine_key
            Azure::Web::Mgmt::V2016_09_01::Models::SiteMachineKey
          end
          def handler_mapping
            Azure::Web::Mgmt::V2016_09_01::Models::HandlerMapping
          end
          def slot_swap_status
            Azure::Web::Mgmt::V2016_09_01::Models::SlotSwapStatus
          end
          def name_value_pair
            Azure::Web::Mgmt::V2016_09_01::Models::NameValuePair
          end
          def api_definition_info
            Azure::Web::Mgmt::V2016_09_01::Models::ApiDefinitionInfo
          end
          def site_config
            Azure::Web::Mgmt::V2016_09_01::Models::SiteConfig
          end
          def capability
            Azure::Web::Mgmt::V2016_09_01::Models::Capability
          end
          def host_name_ssl_state
            Azure::Web::Mgmt::V2016_09_01::Models::HostNameSslState
          end
          def hosting_environment_profile
            Azure::Web::Mgmt::V2016_09_01::Models::HostingEnvironmentProfile
          end
          def sku_capacity
            Azure::Web::Mgmt::V2016_09_01::Models::SkuCapacity
          end
          def sku_description
            Azure::Web::Mgmt::V2016_09_01::Models::SkuDescription
          end
          def compute_mode_options
            Azure::Web::Mgmt::V2016_09_01::Models::ComputeModeOptions
          end
          def vnet_route
            Azure::Web::Mgmt::V2016_09_01::Models::VnetRoute
          end
          def vnet_info
            Azure::Web::Mgmt::V2016_09_01::Models::VnetInfo
          end
          def identifier
            Azure::Web::Mgmt::V2016_09_01::Models::Identifier
          end
        end
      end
    end
  end
end
