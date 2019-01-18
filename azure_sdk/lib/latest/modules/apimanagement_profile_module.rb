# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_api_management'

module Azure::Profiles::Latest
  module ApiManagement
    module Mgmt
      Certificate = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Certificate
      Group = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Group
      Subscription = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Subscription
      PolicySnippets = Azure::ApiManagement::Mgmt::V2018_06_01_preview::PolicySnippets
      Regions = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Regions
      Api = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Api
      ApiRevisions = Azure::ApiManagement::Mgmt::V2018_06_01_preview::ApiRevisions
      ApiRelease = Azure::ApiManagement::Mgmt::V2018_06_01_preview::ApiRelease
      ApiOperation = Azure::ApiManagement::Mgmt::V2018_06_01_preview::ApiOperation
      ApiOperationPolicy = Azure::ApiManagement::Mgmt::V2018_06_01_preview::ApiOperationPolicy
      ApiProduct = Azure::ApiManagement::Mgmt::V2018_06_01_preview::ApiProduct
      ApiPolicy = Azure::ApiManagement::Mgmt::V2018_06_01_preview::ApiPolicy
      ApiSchema = Azure::ApiManagement::Mgmt::V2018_06_01_preview::ApiSchema
      ApiDiagnostic = Azure::ApiManagement::Mgmt::V2018_06_01_preview::ApiDiagnostic
      ApiIssue = Azure::ApiManagement::Mgmt::V2018_06_01_preview::ApiIssue
      ApiIssueComment = Azure::ApiManagement::Mgmt::V2018_06_01_preview::ApiIssueComment
      ApiIssueAttachment = Azure::ApiManagement::Mgmt::V2018_06_01_preview::ApiIssueAttachment
      AuthorizationServer = Azure::ApiManagement::Mgmt::V2018_06_01_preview::AuthorizationServer
      Backend = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Backend
      ApiManagementOperations = Azure::ApiManagement::Mgmt::V2018_06_01_preview::ApiManagementOperations
      ApiManagementService = Azure::ApiManagement::Mgmt::V2018_06_01_preview::ApiManagementService
      Diagnostic = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Diagnostic
      EmailTemplate = Azure::ApiManagement::Mgmt::V2018_06_01_preview::EmailTemplate
      GroupUser = Azure::ApiManagement::Mgmt::V2018_06_01_preview::GroupUser
      IdentityProvider = Azure::ApiManagement::Mgmt::V2018_06_01_preview::IdentityProvider
      Policy = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Policy
      Notification = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Notification
      NotificationRecipientUser = Azure::ApiManagement::Mgmt::V2018_06_01_preview::NotificationRecipientUser
      NotificationRecipientEmail = Azure::ApiManagement::Mgmt::V2018_06_01_preview::NotificationRecipientEmail
      NetworkStatus = Azure::ApiManagement::Mgmt::V2018_06_01_preview::NetworkStatus
      SignInSettings = Azure::ApiManagement::Mgmt::V2018_06_01_preview::SignInSettings
      SignUpSettings = Azure::ApiManagement::Mgmt::V2018_06_01_preview::SignUpSettings
      DelegationSettings = Azure::ApiManagement::Mgmt::V2018_06_01_preview::DelegationSettings
      Product = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Product
      ProductApi = Azure::ApiManagement::Mgmt::V2018_06_01_preview::ProductApi
      ProductGroup = Azure::ApiManagement::Mgmt::V2018_06_01_preview::ProductGroup
      ProductSubscriptions = Azure::ApiManagement::Mgmt::V2018_06_01_preview::ProductSubscriptions
      ProductPolicy = Azure::ApiManagement::Mgmt::V2018_06_01_preview::ProductPolicy
      Property = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Property
      QuotaByCounterKeys = Azure::ApiManagement::Mgmt::V2018_06_01_preview::QuotaByCounterKeys
      QuotaByPeriodKeys = Azure::ApiManagement::Mgmt::V2018_06_01_preview::QuotaByPeriodKeys
      Reports = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Reports
      TagResource = Azure::ApiManagement::Mgmt::V2018_06_01_preview::TagResource
      TagDescription = Azure::ApiManagement::Mgmt::V2018_06_01_preview::TagDescription
      OpenIdConnectProvider = Azure::ApiManagement::Mgmt::V2018_06_01_preview::OpenIdConnectProvider
      OperationOperations = Azure::ApiManagement::Mgmt::V2018_06_01_preview::OperationOperations
      TenantAccess = Azure::ApiManagement::Mgmt::V2018_06_01_preview::TenantAccess
      TenantAccessGit = Azure::ApiManagement::Mgmt::V2018_06_01_preview::TenantAccessGit
      TenantConfiguration = Azure::ApiManagement::Mgmt::V2018_06_01_preview::TenantConfiguration
      User = Azure::ApiManagement::Mgmt::V2018_06_01_preview::User
      UserSubscription = Azure::ApiManagement::Mgmt::V2018_06_01_preview::UserSubscription
      UserGroup = Azure::ApiManagement::Mgmt::V2018_06_01_preview::UserGroup
      ApiVersionSet = Azure::ApiManagement::Mgmt::V2018_06_01_preview::ApiVersionSet
      UserIdentities = Azure::ApiManagement::Mgmt::V2018_06_01_preview::UserIdentities
      ApiExport = Azure::ApiManagement::Mgmt::V2018_06_01_preview::ApiExport
      Tag = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Tag
      Logger = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Logger

      module Models
        ErrorResponse = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ErrorResponse
        OperationDisplay = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::OperationDisplay
        ApiManagementServiceListResult = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiManagementServiceListResult
        Operation = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::Operation
        ErrorFieldContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ErrorFieldContract
        OperationListResult = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::OperationListResult
        ApiManagementServiceCheckNameAvailabilityParameters = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiManagementServiceCheckNameAvailabilityParameters
        ApiManagementServiceGetSsoTokenResult = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiManagementServiceGetSsoTokenResult
        ApiManagementServiceNameAvailabilityResult = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiManagementServiceNameAvailabilityResult
        PolicyCollection = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::PolicyCollection
        ApiManagementServiceApplyNetworkConfigurationParameters = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiManagementServiceApplyNetworkConfigurationParameters
        PolicySnippetsCollection = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::PolicySnippetsCollection
        ApiManagementServiceUploadCertificateParameters = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiManagementServiceUploadCertificateParameters
        RegionListResult = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::RegionListResult
        HostnameConfigurationOld = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::HostnameConfigurationOld
        ApiExportResult = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiExportResult
        CertificateConfiguration = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::CertificateConfiguration
        CertificateInformation = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::CertificateInformation
        HostnameConfiguration = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::HostnameConfiguration
        ApiCollection = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiCollection
        VirtualNetworkConfiguration = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::VirtualNetworkConfiguration
        ApiCreateOrUpdateParameter = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiCreateOrUpdateParameter
        ApiManagementServiceSkuProperties = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiManagementServiceSkuProperties
        OAuth2AuthenticationSettingsContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::OAuth2AuthenticationSettingsContract
        AdditionalLocation = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::AdditionalLocation
        SubscriptionKeyParameterNamesContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::SubscriptionKeyParameterNamesContract
        ApiManagementServiceBackupRestoreParameters = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiManagementServiceBackupRestoreParameters
        ApiRevisionContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiRevisionContract
        ApiManagementServiceBaseProperties = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiManagementServiceBaseProperties
        ApiRevisionInfoContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiRevisionInfoContract
        ApiManagementServiceIdentity = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiManagementServiceIdentity
        ApiReleaseCollection = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiReleaseCollection
        AccessInformationContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::AccessInformationContract
        OperationCollection = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::OperationCollection
        ApimResource = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApimResource
        RepresentationContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::RepresentationContract
        TagDescriptionCreateParameters = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::TagDescriptionCreateParameters
        ResponseContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ResponseContract
        ErrorResponseBody = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ErrorResponseBody
        OperationUpdateContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::OperationUpdateContract
        UserUpdateParameters = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::UserUpdateParameters
        SchemaCollection = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::SchemaCollection
        UserTokenResult = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::UserTokenResult
        UserTokenParameters = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::UserTokenParameters
        RegionContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::RegionContract
        BodyDiagnosticSettings = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::BodyDiagnosticSettings
        PipelineDiagnosticSettings = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::PipelineDiagnosticSettings
        ApiVersionSetContractDetails = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiVersionSetContractDetails
        UserIdentityCollection = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::UserIdentityCollection
        TagDescriptionCollection = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::TagDescriptionCollection
        ProductEntityBaseParameters = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ProductEntityBaseParameters
        ApiManagementServiceUpdateHostnameParameters = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiManagementServiceUpdateHostnameParameters
        OperationTagResourceContractProperties = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::OperationTagResourceContractProperties
        TagTagResourceContractProperties = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::TagTagResourceContractProperties
        TagResourceCollection = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::TagResourceCollection
        ProductCollection = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ProductCollection
        EmailTemplateParametersContractProperties = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::EmailTemplateParametersContractProperties
        AuthorizationServerCollection = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::AuthorizationServerCollection
        TagCreateUpdateParameters = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::TagCreateUpdateParameters
        TokenBodyParameterContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::TokenBodyParameterContract
        EmailTemplateCollection = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::EmailTemplateCollection
        BackendAuthorizationHeaderCredentials = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::BackendAuthorizationHeaderCredentials
        EmailTemplateUpdateParameters = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::EmailTemplateUpdateParameters
        BackendServiceFabricClusterProperties = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::BackendServiceFabricClusterProperties
        GroupContractProperties = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::GroupContractProperties
        BackendCredentialsContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::BackendCredentialsContract
        TagCollection = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::TagCollection
        BackendTlsProperties = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::BackendTlsProperties
        GroupCollection = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::GroupCollection
        OperationResultLogItemContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::OperationResultLogItemContract
        GroupCreateParameters = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::GroupCreateParameters
        BackendUpdateParameters = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::BackendUpdateParameters
        GroupUpdateParameters = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::GroupUpdateParameters
        AccessInformationUpdateParameters = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::AccessInformationUpdateParameters
        UserIdentityContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::UserIdentityContract
        CertificateCreateOrUpdateParameters = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::CertificateCreateOrUpdateParameters
        UserEntityBaseParameters = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::UserEntityBaseParameters
        ApiCreateOrUpdatePropertiesWsdlSelector = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiCreateOrUpdatePropertiesWsdlSelector
        SubscriptionUpdateParameters = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::SubscriptionUpdateParameters
        AuthenticationSettingsContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::AuthenticationSettingsContract
        UserCollection = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::UserCollection
        ApiRevisionCollection = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiRevisionCollection
        SubscriptionCreateParameters = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::SubscriptionCreateParameters
        ApiVersionSetEntityBase = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiVersionSetEntityBase
        IdentityProviderList = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::IdentityProviderList
        PropertyCollection = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::PropertyCollection
        RequestContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::RequestContract
        PolicySnippetContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::PolicySnippetContract
        ApiVersionSetCollection = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiVersionSetCollection
        IdentityProviderUpdateParameters = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::IdentityProviderUpdateParameters
        IssueCommentCollection = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::IssueCommentCollection
        IdentityProviderBaseParameters = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::IdentityProviderBaseParameters
        HttpMessageDiagnostic = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::HttpMessageDiagnostic
        RequestReportCollection = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::RequestReportCollection
        DiagnosticCollection = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::DiagnosticCollection
        LoggerCollection = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::LoggerCollection
        GenerateSsoUrlResult = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::GenerateSsoUrlResult
        LoggerUpdateContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::LoggerUpdateContract
        TenantConfigurationSyncStateContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::TenantConfigurationSyncStateContract
        RecipientsContractProperties = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::RecipientsContractProperties
        OperationResultContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::OperationResultContract
        RequestReportRecordContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::RequestReportRecordContract
        X509CertificateName = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::X509CertificateName
        NotificationCollection = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::NotificationCollection
        BackendProxyContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::BackendProxyContract
        ReportCollection = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ReportCollection
        BackendCollection = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::BackendCollection
        RecipientUserCollection = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::RecipientUserCollection
        RecipientEmailCollection = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::RecipientEmailCollection
        ReportRecordContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ReportRecordContract
        ConnectivityStatusContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ConnectivityStatusContract
        ApiUpdateContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiUpdateContract
        NetworkStatusContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::NetworkStatusContract
        ApiVersionSetUpdateParameters = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiVersionSetUpdateParameters
        NetworkStatusContractByLocation = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::NetworkStatusContractByLocation
        OperationEntityBaseContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::OperationEntityBaseContract
        QuotaCounterValueContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::QuotaCounterValueContract
        IssueAttachmentCollection = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::IssueAttachmentCollection
        OpenIdConnectProviderCollection = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::OpenIdConnectProviderCollection
        UserCreateParameters = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::UserCreateParameters
        OpenidConnectProviderUpdateContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::OpenidConnectProviderUpdateContract
        SaveConfigurationParameter = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::SaveConfigurationParameter
        QuotaCounterCollection = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::QuotaCounterCollection
        BackendProperties = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::BackendProperties
        TermsOfServiceProperties = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::TermsOfServiceProperties
        DeployConfigurationParameters = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::DeployConfigurationParameters
        QuotaCounterContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::QuotaCounterContract
        ApiEntityBaseContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiEntityBaseContract
        SubscriptionsDelegationSettingsProperties = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::SubscriptionsDelegationSettingsProperties
        IssueCollection = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::IssueCollection
        RegistrationDelegationSettingsProperties = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::RegistrationDelegationSettingsProperties
        TagResourceContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::TagResourceContract
        QuotaCounterValueContractProperties = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::QuotaCounterValueContractProperties
        BackendBaseParameters = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::BackendBaseParameters
        ProductUpdateParameters = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ProductUpdateParameters
        ParameterContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ParameterContract
        PropertyEntityBaseParameters = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::PropertyEntityBaseParameters
        AuthorizationServerContractBaseProperties = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::AuthorizationServerContractBaseProperties
        SubscriptionCollection = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::SubscriptionCollection
        SamplingSettings = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::SamplingSettings
        PolicyContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::PolicyContract
        PropertyUpdateParameters = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::PropertyUpdateParameters
        ApiContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiContract
        ApiContractProperties = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiContractProperties
        OperationContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::OperationContract
        ApiReleaseContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiReleaseContract
        IssueContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::IssueContract
        SchemaContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::SchemaContract
        IssueAttachmentContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::IssueAttachmentContract
        IssueCommentContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::IssueCommentContract
        ProductTagResourceContractProperties = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ProductTagResourceContractProperties
        DiagnosticContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::DiagnosticContract
        ProductContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ProductContract
        ApiTagResourceContractProperties = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiTagResourceContractProperties
        AuthorizationServerUpdateContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::AuthorizationServerUpdateContract
        AuthorizationServerContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::AuthorizationServerContract
        BackendReconnectContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::BackendReconnectContract
        BackendContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::BackendContract
        ApiManagementServiceResource = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiManagementServiceResource
        CertificateContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::CertificateContract
        EmailTemplateContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::EmailTemplateContract
        ApiManagementServiceUpdateParameters = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiManagementServiceUpdateParameters
        UserContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::UserContract
        GroupContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::GroupContract
        LoggerContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::LoggerContract
        IdentityProviderContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::IdentityProviderContract
        RecipientUserContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::RecipientUserContract
        NotificationContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::NotificationContract
        OpenidConnectProviderContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::OpenidConnectProviderContract
        RecipientEmailContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::RecipientEmailContract
        PortalSignupSettings = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::PortalSignupSettings
        PortalSigninSettings = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::PortalSigninSettings
        SubscriptionContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::SubscriptionContract
        PortalDelegationSettings = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::PortalDelegationSettings
        TagContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::TagContract
        PropertyContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::PropertyContract
        ApiVersionSetContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiVersionSetContract
        TagDescriptionContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::TagDescriptionContract
        ContentFormat = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ContentFormat
        PolicyContentFormat = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::PolicyContentFormat
        ApiType = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiType
        SoapApiType = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::SoapApiType
        AlwaysLog = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::AlwaysLog
        SamplingType = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::SamplingType
        GrantType = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::GrantType
        ProductState = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ProductState
        ClientAuthenticationMethod = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ClientAuthenticationMethod
        AuthorizationMethod = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::AuthorizationMethod
        BackendProtocol = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::BackendProtocol
        BearerTokenSendingMethod = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::BearerTokenSendingMethod
        SkuType = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::SkuType
        HostnameType = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::HostnameType
        NameAvailabilityReason = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::NameAvailabilityReason
        VirtualNetworkType = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::VirtualNetworkType
        Confirmation = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::Confirmation
        GroupType = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::GroupType
        IdentityProviderType = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::IdentityProviderType
        UserState = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::UserState
        ConnectivityStatusType = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ConnectivityStatusType
        LoggerType = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::LoggerType
        State = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::State
        KeyType = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::KeyType
        VersioningScheme = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::VersioningScheme
        TemplateName = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::TemplateName
        NotificationName = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::NotificationName
        PolicyScopeContract = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::PolicyScopeContract
        ExportFormat = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ExportFormat
        AsyncOperationStatus = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::AsyncOperationStatus
        Resource = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::Resource
        Protocol = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::Protocol
        SubscriptionState = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::SubscriptionState
        CertificateCollection = Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::CertificateCollection
      end

      class ApiManagementManagementClass
        attr_reader :certificate, :group, :subscription, :policy_snippets, :regions, :api, :api_revisions, :api_release, :api_operation, :api_operation_policy, :api_product, :api_policy, :api_schema, :api_diagnostic, :api_issue, :api_issue_comment, :api_issue_attachment, :authorization_server, :backend, :api_management_operations, :api_management_service, :diagnostic, :email_template, :group_user, :identity_provider, :policy, :notification, :notification_recipient_user, :notification_recipient_email, :network_status, :sign_in_settings, :sign_up_settings, :delegation_settings, :product, :product_api, :product_group, :product_subscriptions, :product_policy, :property, :quota_by_counter_keys, :quota_by_period_keys, :reports, :tag_resource, :tag_description, :open_id_connect_provider, :operation_operations, :tenant_access, :tenant_access_git, :tenant_configuration, :user, :user_subscription, :user_group, :api_version_set, :user_identities, :api_export, :tag, :logger, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::ApiManagement::Mgmt::V2018_06_01_preview::ApiManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @certificate = @client_0.certificate
          @group = @client_0.group
          @subscription = @client_0.subscription
          @policy_snippets = @client_0.policy_snippets
          @regions = @client_0.regions
          @api = @client_0.api
          @api_revisions = @client_0.api_revisions
          @api_release = @client_0.api_release
          @api_operation = @client_0.api_operation
          @api_operation_policy = @client_0.api_operation_policy
          @api_product = @client_0.api_product
          @api_policy = @client_0.api_policy
          @api_schema = @client_0.api_schema
          @api_diagnostic = @client_0.api_diagnostic
          @api_issue = @client_0.api_issue
          @api_issue_comment = @client_0.api_issue_comment
          @api_issue_attachment = @client_0.api_issue_attachment
          @authorization_server = @client_0.authorization_server
          @backend = @client_0.backend
          @api_management_operations = @client_0.api_management_operations
          @api_management_service = @client_0.api_management_service
          @diagnostic = @client_0.diagnostic
          @email_template = @client_0.email_template
          @group_user = @client_0.group_user
          @identity_provider = @client_0.identity_provider
          @policy = @client_0.policy
          @notification = @client_0.notification
          @notification_recipient_user = @client_0.notification_recipient_user
          @notification_recipient_email = @client_0.notification_recipient_email
          @network_status = @client_0.network_status
          @sign_in_settings = @client_0.sign_in_settings
          @sign_up_settings = @client_0.sign_up_settings
          @delegation_settings = @client_0.delegation_settings
          @product = @client_0.product
          @product_api = @client_0.product_api
          @product_group = @client_0.product_group
          @product_subscriptions = @client_0.product_subscriptions
          @product_policy = @client_0.product_policy
          @property = @client_0.property
          @quota_by_counter_keys = @client_0.quota_by_counter_keys
          @quota_by_period_keys = @client_0.quota_by_period_keys
          @reports = @client_0.reports
          @tag_resource = @client_0.tag_resource
          @tag_description = @client_0.tag_description
          @open_id_connect_provider = @client_0.open_id_connect_provider
          @operation_operations = @client_0.operation_operations
          @tenant_access = @client_0.tenant_access
          @tenant_access_git = @client_0.tenant_access_git
          @tenant_configuration = @client_0.tenant_configuration
          @user = @client_0.user
          @user_subscription = @client_0.user_subscription
          @user_group = @client_0.user_group
          @api_version_set = @client_0.api_version_set
          @user_identities = @client_0.user_identities
          @api_export = @client_0.api_export
          @tag = @client_0.tag
          @logger = @client_0.logger

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/ApiManagement/Mgmt"
          client.add_user_agent_information(profile_information)
        end

        def method_missing(method, *args)
          if @client_0.respond_to?method
            @client_0.send(method, *args)
          else
            super
          end
        end

        class ModelClasses
          def error_response
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ErrorResponse
          end
          def operation_display
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::OperationDisplay
          end
          def api_management_service_list_result
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiManagementServiceListResult
          end
          def operation
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::Operation
          end
          def error_field_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ErrorFieldContract
          end
          def operation_list_result
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::OperationListResult
          end
          def api_management_service_check_name_availability_parameters
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiManagementServiceCheckNameAvailabilityParameters
          end
          def api_management_service_get_sso_token_result
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiManagementServiceGetSsoTokenResult
          end
          def api_management_service_name_availability_result
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiManagementServiceNameAvailabilityResult
          end
          def policy_collection
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::PolicyCollection
          end
          def api_management_service_apply_network_configuration_parameters
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiManagementServiceApplyNetworkConfigurationParameters
          end
          def policy_snippets_collection
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::PolicySnippetsCollection
          end
          def api_management_service_upload_certificate_parameters
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiManagementServiceUploadCertificateParameters
          end
          def region_list_result
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::RegionListResult
          end
          def hostname_configuration_old
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::HostnameConfigurationOld
          end
          def api_export_result
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiExportResult
          end
          def certificate_configuration
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::CertificateConfiguration
          end
          def certificate_information
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::CertificateInformation
          end
          def hostname_configuration
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::HostnameConfiguration
          end
          def api_collection
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiCollection
          end
          def virtual_network_configuration
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::VirtualNetworkConfiguration
          end
          def api_create_or_update_parameter
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiCreateOrUpdateParameter
          end
          def api_management_service_sku_properties
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiManagementServiceSkuProperties
          end
          def oauth2_authentication_settings_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::OAuth2AuthenticationSettingsContract
          end
          def additional_location
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::AdditionalLocation
          end
          def subscription_key_parameter_names_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::SubscriptionKeyParameterNamesContract
          end
          def api_management_service_backup_restore_parameters
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiManagementServiceBackupRestoreParameters
          end
          def api_revision_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiRevisionContract
          end
          def api_management_service_base_properties
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiManagementServiceBaseProperties
          end
          def api_revision_info_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiRevisionInfoContract
          end
          def api_management_service_identity
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiManagementServiceIdentity
          end
          def api_release_collection
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiReleaseCollection
          end
          def access_information_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::AccessInformationContract
          end
          def operation_collection
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::OperationCollection
          end
          def apim_resource
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApimResource
          end
          def representation_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::RepresentationContract
          end
          def tag_description_create_parameters
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::TagDescriptionCreateParameters
          end
          def response_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ResponseContract
          end
          def error_response_body
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ErrorResponseBody
          end
          def operation_update_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::OperationUpdateContract
          end
          def user_update_parameters
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::UserUpdateParameters
          end
          def schema_collection
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::SchemaCollection
          end
          def user_token_result
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::UserTokenResult
          end
          def user_token_parameters
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::UserTokenParameters
          end
          def region_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::RegionContract
          end
          def body_diagnostic_settings
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::BodyDiagnosticSettings
          end
          def pipeline_diagnostic_settings
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::PipelineDiagnosticSettings
          end
          def api_version_set_contract_details
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiVersionSetContractDetails
          end
          def user_identity_collection
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::UserIdentityCollection
          end
          def tag_description_collection
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::TagDescriptionCollection
          end
          def product_entity_base_parameters
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ProductEntityBaseParameters
          end
          def api_management_service_update_hostname_parameters
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiManagementServiceUpdateHostnameParameters
          end
          def operation_tag_resource_contract_properties
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::OperationTagResourceContractProperties
          end
          def tag_tag_resource_contract_properties
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::TagTagResourceContractProperties
          end
          def tag_resource_collection
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::TagResourceCollection
          end
          def product_collection
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ProductCollection
          end
          def email_template_parameters_contract_properties
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::EmailTemplateParametersContractProperties
          end
          def authorization_server_collection
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::AuthorizationServerCollection
          end
          def tag_create_update_parameters
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::TagCreateUpdateParameters
          end
          def token_body_parameter_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::TokenBodyParameterContract
          end
          def email_template_collection
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::EmailTemplateCollection
          end
          def backend_authorization_header_credentials
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::BackendAuthorizationHeaderCredentials
          end
          def email_template_update_parameters
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::EmailTemplateUpdateParameters
          end
          def backend_service_fabric_cluster_properties
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::BackendServiceFabricClusterProperties
          end
          def group_contract_properties
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::GroupContractProperties
          end
          def backend_credentials_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::BackendCredentialsContract
          end
          def tag_collection
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::TagCollection
          end
          def backend_tls_properties
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::BackendTlsProperties
          end
          def group_collection
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::GroupCollection
          end
          def operation_result_log_item_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::OperationResultLogItemContract
          end
          def group_create_parameters
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::GroupCreateParameters
          end
          def backend_update_parameters
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::BackendUpdateParameters
          end
          def group_update_parameters
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::GroupUpdateParameters
          end
          def access_information_update_parameters
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::AccessInformationUpdateParameters
          end
          def user_identity_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::UserIdentityContract
          end
          def certificate_create_or_update_parameters
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::CertificateCreateOrUpdateParameters
          end
          def user_entity_base_parameters
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::UserEntityBaseParameters
          end
          def api_create_or_update_properties_wsdl_selector
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiCreateOrUpdatePropertiesWsdlSelector
          end
          def subscription_update_parameters
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::SubscriptionUpdateParameters
          end
          def authentication_settings_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::AuthenticationSettingsContract
          end
          def user_collection
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::UserCollection
          end
          def api_revision_collection
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiRevisionCollection
          end
          def subscription_create_parameters
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::SubscriptionCreateParameters
          end
          def api_version_set_entity_base
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiVersionSetEntityBase
          end
          def identity_provider_list
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::IdentityProviderList
          end
          def property_collection
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::PropertyCollection
          end
          def request_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::RequestContract
          end
          def policy_snippet_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::PolicySnippetContract
          end
          def api_version_set_collection
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiVersionSetCollection
          end
          def identity_provider_update_parameters
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::IdentityProviderUpdateParameters
          end
          def issue_comment_collection
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::IssueCommentCollection
          end
          def identity_provider_base_parameters
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::IdentityProviderBaseParameters
          end
          def http_message_diagnostic
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::HttpMessageDiagnostic
          end
          def request_report_collection
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::RequestReportCollection
          end
          def diagnostic_collection
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::DiagnosticCollection
          end
          def logger_collection
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::LoggerCollection
          end
          def generate_sso_url_result
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::GenerateSsoUrlResult
          end
          def logger_update_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::LoggerUpdateContract
          end
          def tenant_configuration_sync_state_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::TenantConfigurationSyncStateContract
          end
          def recipients_contract_properties
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::RecipientsContractProperties
          end
          def operation_result_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::OperationResultContract
          end
          def request_report_record_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::RequestReportRecordContract
          end
          def x509_certificate_name
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::X509CertificateName
          end
          def notification_collection
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::NotificationCollection
          end
          def backend_proxy_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::BackendProxyContract
          end
          def report_collection
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ReportCollection
          end
          def backend_collection
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::BackendCollection
          end
          def recipient_user_collection
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::RecipientUserCollection
          end
          def recipient_email_collection
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::RecipientEmailCollection
          end
          def report_record_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ReportRecordContract
          end
          def connectivity_status_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ConnectivityStatusContract
          end
          def api_update_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiUpdateContract
          end
          def network_status_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::NetworkStatusContract
          end
          def api_version_set_update_parameters
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiVersionSetUpdateParameters
          end
          def network_status_contract_by_location
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::NetworkStatusContractByLocation
          end
          def operation_entity_base_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::OperationEntityBaseContract
          end
          def quota_counter_value_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::QuotaCounterValueContract
          end
          def issue_attachment_collection
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::IssueAttachmentCollection
          end
          def open_id_connect_provider_collection
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::OpenIdConnectProviderCollection
          end
          def user_create_parameters
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::UserCreateParameters
          end
          def openid_connect_provider_update_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::OpenidConnectProviderUpdateContract
          end
          def save_configuration_parameter
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::SaveConfigurationParameter
          end
          def quota_counter_collection
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::QuotaCounterCollection
          end
          def backend_properties
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::BackendProperties
          end
          def terms_of_service_properties
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::TermsOfServiceProperties
          end
          def deploy_configuration_parameters
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::DeployConfigurationParameters
          end
          def quota_counter_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::QuotaCounterContract
          end
          def api_entity_base_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiEntityBaseContract
          end
          def subscriptions_delegation_settings_properties
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::SubscriptionsDelegationSettingsProperties
          end
          def issue_collection
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::IssueCollection
          end
          def registration_delegation_settings_properties
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::RegistrationDelegationSettingsProperties
          end
          def tag_resource_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::TagResourceContract
          end
          def quota_counter_value_contract_properties
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::QuotaCounterValueContractProperties
          end
          def backend_base_parameters
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::BackendBaseParameters
          end
          def product_update_parameters
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ProductUpdateParameters
          end
          def parameter_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ParameterContract
          end
          def property_entity_base_parameters
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::PropertyEntityBaseParameters
          end
          def authorization_server_contract_base_properties
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::AuthorizationServerContractBaseProperties
          end
          def subscription_collection
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::SubscriptionCollection
          end
          def sampling_settings
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::SamplingSettings
          end
          def policy_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::PolicyContract
          end
          def property_update_parameters
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::PropertyUpdateParameters
          end
          def api_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiContract
          end
          def api_contract_properties
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiContractProperties
          end
          def operation_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::OperationContract
          end
          def api_release_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiReleaseContract
          end
          def issue_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::IssueContract
          end
          def schema_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::SchemaContract
          end
          def issue_attachment_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::IssueAttachmentContract
          end
          def issue_comment_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::IssueCommentContract
          end
          def product_tag_resource_contract_properties
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ProductTagResourceContractProperties
          end
          def diagnostic_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::DiagnosticContract
          end
          def product_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ProductContract
          end
          def api_tag_resource_contract_properties
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiTagResourceContractProperties
          end
          def authorization_server_update_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::AuthorizationServerUpdateContract
          end
          def authorization_server_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::AuthorizationServerContract
          end
          def backend_reconnect_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::BackendReconnectContract
          end
          def backend_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::BackendContract
          end
          def api_management_service_resource
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiManagementServiceResource
          end
          def certificate_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::CertificateContract
          end
          def email_template_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::EmailTemplateContract
          end
          def api_management_service_update_parameters
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiManagementServiceUpdateParameters
          end
          def user_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::UserContract
          end
          def group_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::GroupContract
          end
          def logger_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::LoggerContract
          end
          def identity_provider_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::IdentityProviderContract
          end
          def recipient_user_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::RecipientUserContract
          end
          def notification_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::NotificationContract
          end
          def openid_connect_provider_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::OpenidConnectProviderContract
          end
          def recipient_email_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::RecipientEmailContract
          end
          def portal_signup_settings
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::PortalSignupSettings
          end
          def portal_signin_settings
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::PortalSigninSettings
          end
          def subscription_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::SubscriptionContract
          end
          def portal_delegation_settings
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::PortalDelegationSettings
          end
          def tag_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::TagContract
          end
          def property_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::PropertyContract
          end
          def api_version_set_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiVersionSetContract
          end
          def tag_description_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::TagDescriptionContract
          end
          def content_format
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ContentFormat
          end
          def policy_content_format
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::PolicyContentFormat
          end
          def api_type
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ApiType
          end
          def soap_api_type
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::SoapApiType
          end
          def always_log
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::AlwaysLog
          end
          def sampling_type
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::SamplingType
          end
          def grant_type
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::GrantType
          end
          def product_state
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ProductState
          end
          def client_authentication_method
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ClientAuthenticationMethod
          end
          def authorization_method
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::AuthorizationMethod
          end
          def backend_protocol
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::BackendProtocol
          end
          def bearer_token_sending_method
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::BearerTokenSendingMethod
          end
          def sku_type
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::SkuType
          end
          def hostname_type
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::HostnameType
          end
          def name_availability_reason
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::NameAvailabilityReason
          end
          def virtual_network_type
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::VirtualNetworkType
          end
          def confirmation
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::Confirmation
          end
          def group_type
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::GroupType
          end
          def identity_provider_type
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::IdentityProviderType
          end
          def user_state
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::UserState
          end
          def connectivity_status_type
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ConnectivityStatusType
          end
          def logger_type
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::LoggerType
          end
          def state
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::State
          end
          def key_type
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::KeyType
          end
          def versioning_scheme
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::VersioningScheme
          end
          def template_name
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::TemplateName
          end
          def notification_name
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::NotificationName
          end
          def policy_scope_contract
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::PolicyScopeContract
          end
          def export_format
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::ExportFormat
          end
          def async_operation_status
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::AsyncOperationStatus
          end
          def resource
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::Resource
          end
          def protocol
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::Protocol
          end
          def subscription_state
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::SubscriptionState
          end
          def certificate_collection
            Azure::ApiManagement::Mgmt::V2018_06_01_preview::Models::CertificateCollection
          end
        end
      end
    end
  end
end
