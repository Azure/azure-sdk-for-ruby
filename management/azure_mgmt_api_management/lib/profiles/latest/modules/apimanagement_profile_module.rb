# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_api_management'

module Azure::ApiManagement::Profiles::Latest
  module Mgmt
    Api = Azure::ApiManagement::Mgmt::V2019_01_01::Api
    ApiRevision = Azure::ApiManagement::Mgmt::V2019_01_01::ApiRevision
    ApiRelease = Azure::ApiManagement::Mgmt::V2019_01_01::ApiRelease
    ApiOperation = Azure::ApiManagement::Mgmt::V2019_01_01::ApiOperation
    ApiOperationPolicy = Azure::ApiManagement::Mgmt::V2019_01_01::ApiOperationPolicy
    Tag = Azure::ApiManagement::Mgmt::V2019_01_01::Tag
    ApiProduct = Azure::ApiManagement::Mgmt::V2019_01_01::ApiProduct
    ApiPolicy = Azure::ApiManagement::Mgmt::V2019_01_01::ApiPolicy
    ApiSchema = Azure::ApiManagement::Mgmt::V2019_01_01::ApiSchema
    ApiDiagnostic = Azure::ApiManagement::Mgmt::V2019_01_01::ApiDiagnostic
    ApiIssue = Azure::ApiManagement::Mgmt::V2019_01_01::ApiIssue
    ApiIssueComment = Azure::ApiManagement::Mgmt::V2019_01_01::ApiIssueComment
    ApiIssueAttachment = Azure::ApiManagement::Mgmt::V2019_01_01::ApiIssueAttachment
    ApiTagDescription = Azure::ApiManagement::Mgmt::V2019_01_01::ApiTagDescription
    OperationOperations = Azure::ApiManagement::Mgmt::V2019_01_01::OperationOperations
    ApiVersionSet = Azure::ApiManagement::Mgmt::V2019_01_01::ApiVersionSet
    AuthorizationServer = Azure::ApiManagement::Mgmt::V2019_01_01::AuthorizationServer
    Backend = Azure::ApiManagement::Mgmt::V2019_01_01::Backend
    Cache = Azure::ApiManagement::Mgmt::V2019_01_01::Cache
    Certificate = Azure::ApiManagement::Mgmt::V2019_01_01::Certificate
    ApiManagementOperations = Azure::ApiManagement::Mgmt::V2019_01_01::ApiManagementOperations
    ApiManagementServiceSkus = Azure::ApiManagement::Mgmt::V2019_01_01::ApiManagementServiceSkus
    ApiManagementService = Azure::ApiManagement::Mgmt::V2019_01_01::ApiManagementService
    Diagnostic = Azure::ApiManagement::Mgmt::V2019_01_01::Diagnostic
    EmailTemplate = Azure::ApiManagement::Mgmt::V2019_01_01::EmailTemplate
    Group = Azure::ApiManagement::Mgmt::V2019_01_01::Group
    GroupUser = Azure::ApiManagement::Mgmt::V2019_01_01::GroupUser
    IdentityProvider = Azure::ApiManagement::Mgmt::V2019_01_01::IdentityProvider
    Issue = Azure::ApiManagement::Mgmt::V2019_01_01::Issue
    Logger = Azure::ApiManagement::Mgmt::V2019_01_01::Logger
    NetworkStatus = Azure::ApiManagement::Mgmt::V2019_01_01::NetworkStatus
    Notification = Azure::ApiManagement::Mgmt::V2019_01_01::Notification
    NotificationRecipientUser = Azure::ApiManagement::Mgmt::V2019_01_01::NotificationRecipientUser
    NotificationRecipientEmail = Azure::ApiManagement::Mgmt::V2019_01_01::NotificationRecipientEmail
    OpenIdConnectProvider = Azure::ApiManagement::Mgmt::V2019_01_01::OpenIdConnectProvider
    Policy = Azure::ApiManagement::Mgmt::V2019_01_01::Policy
    PolicySnippet = Azure::ApiManagement::Mgmt::V2019_01_01::PolicySnippet
    SignInSettings = Azure::ApiManagement::Mgmt::V2019_01_01::SignInSettings
    SignUpSettings = Azure::ApiManagement::Mgmt::V2019_01_01::SignUpSettings
    DelegationSettings = Azure::ApiManagement::Mgmt::V2019_01_01::DelegationSettings
    Product = Azure::ApiManagement::Mgmt::V2019_01_01::Product
    ProductApi = Azure::ApiManagement::Mgmt::V2019_01_01::ProductApi
    ProductGroup = Azure::ApiManagement::Mgmt::V2019_01_01::ProductGroup
    ProductSubscriptions = Azure::ApiManagement::Mgmt::V2019_01_01::ProductSubscriptions
    ProductPolicy = Azure::ApiManagement::Mgmt::V2019_01_01::ProductPolicy
    Property = Azure::ApiManagement::Mgmt::V2019_01_01::Property
    QuotaByCounterKeys = Azure::ApiManagement::Mgmt::V2019_01_01::QuotaByCounterKeys
    QuotaByPeriodKeys = Azure::ApiManagement::Mgmt::V2019_01_01::QuotaByPeriodKeys
    Region = Azure::ApiManagement::Mgmt::V2019_01_01::Region
    Reports = Azure::ApiManagement::Mgmt::V2019_01_01::Reports
    Subscription = Azure::ApiManagement::Mgmt::V2019_01_01::Subscription
    TagResource = Azure::ApiManagement::Mgmt::V2019_01_01::TagResource
    TenantAccess = Azure::ApiManagement::Mgmt::V2019_01_01::TenantAccess
    TenantAccessGit = Azure::ApiManagement::Mgmt::V2019_01_01::TenantAccessGit
    TenantConfiguration = Azure::ApiManagement::Mgmt::V2019_01_01::TenantConfiguration
    User = Azure::ApiManagement::Mgmt::V2019_01_01::User
    UserGroup = Azure::ApiManagement::Mgmt::V2019_01_01::UserGroup
    UserSubscription = Azure::ApiManagement::Mgmt::V2019_01_01::UserSubscription
    UserIdentities = Azure::ApiManagement::Mgmt::V2019_01_01::UserIdentities
    UserConfirmationPassword = Azure::ApiManagement::Mgmt::V2019_01_01::UserConfirmationPassword
    ApiExport = Azure::ApiManagement::Mgmt::V2019_01_01::ApiExport

    module Models
      ResourceSkuResult = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ResourceSkuResult
      ResourceSkuResults = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ResourceSkuResults
      ErrorResponseBody = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ErrorResponseBody
      CertificateInformation = Azure::ApiManagement::Mgmt::V2019_01_01::Models::CertificateInformation
      RegionContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::RegionContract
      CertificateConfiguration = Azure::ApiManagement::Mgmt::V2019_01_01::Models::CertificateConfiguration
      Resource = Azure::ApiManagement::Mgmt::V2019_01_01::Models::Resource
      HostnameConfiguration = Azure::ApiManagement::Mgmt::V2019_01_01::Models::HostnameConfiguration
      ApiExportResult = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiExportResult
      VirtualNetworkConfiguration = Azure::ApiManagement::Mgmt::V2019_01_01::Models::VirtualNetworkConfiguration
      BackendServiceFabricClusterProperties = Azure::ApiManagement::Mgmt::V2019_01_01::Models::BackendServiceFabricClusterProperties
      OperationTagResourceContractProperties = Azure::ApiManagement::Mgmt::V2019_01_01::Models::OperationTagResourceContractProperties
      BackendProperties = Azure::ApiManagement::Mgmt::V2019_01_01::Models::BackendProperties
      OpenIdAuthenticationSettingsContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::OpenIdAuthenticationSettingsContract
      BackendBaseParameters = Azure::ApiManagement::Mgmt::V2019_01_01::Models::BackendBaseParameters
      AuthenticationSettingsContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::AuthenticationSettingsContract
      BackendUpdateParameters = Azure::ApiManagement::Mgmt::V2019_01_01::Models::BackendUpdateParameters
      ApiCreateOrUpdatePropertiesWsdlSelector = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiCreateOrUpdatePropertiesWsdlSelector
      ReportCollection = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ReportCollection
      ApiEntityBaseContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiEntityBaseContract
      BackendCollection = Azure::ApiManagement::Mgmt::V2019_01_01::Models::BackendCollection
      TagTagResourceContractProperties = Azure::ApiManagement::Mgmt::V2019_01_01::Models::TagTagResourceContractProperties
      CacheUpdateParameters = Azure::ApiManagement::Mgmt::V2019_01_01::Models::CacheUpdateParameters
      TagResourceCollection = Azure::ApiManagement::Mgmt::V2019_01_01::Models::TagResourceCollection
      ReportRecordContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ReportRecordContract
      TagCollection = Azure::ApiManagement::Mgmt::V2019_01_01::Models::TagCollection
      CacheCollection = Azure::ApiManagement::Mgmt::V2019_01_01::Models::CacheCollection
      TagDescriptionCreateParameters = Azure::ApiManagement::Mgmt::V2019_01_01::Models::TagDescriptionCreateParameters
      RequestReportCollection = Azure::ApiManagement::Mgmt::V2019_01_01::Models::RequestReportCollection
      UserUpdateParameters = Azure::ApiManagement::Mgmt::V2019_01_01::Models::UserUpdateParameters
      CertificateCreateOrUpdateParameters = Azure::ApiManagement::Mgmt::V2019_01_01::Models::CertificateCreateOrUpdateParameters
      GenerateSsoUrlResult = Azure::ApiManagement::Mgmt::V2019_01_01::Models::GenerateSsoUrlResult
      CertificateCollection = Azure::ApiManagement::Mgmt::V2019_01_01::Models::CertificateCollection
      IssueContractBaseProperties = Azure::ApiManagement::Mgmt::V2019_01_01::Models::IssueContractBaseProperties
      ResourceSku = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ResourceSku
      UserIdentityCollection = Azure::ApiManagement::Mgmt::V2019_01_01::Models::UserIdentityCollection
      ResourceSkuCapacity = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ResourceSkuCapacity
      BodyDiagnosticSettings = Azure::ApiManagement::Mgmt::V2019_01_01::Models::BodyDiagnosticSettings
      ErrorFieldContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ErrorFieldContract
      PipelineDiagnosticSettings = Azure::ApiManagement::Mgmt::V2019_01_01::Models::PipelineDiagnosticSettings
      ErrorResponse = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ErrorResponse
      UserTokenParameters = Azure::ApiManagement::Mgmt::V2019_01_01::Models::UserTokenParameters
      RegionListResult = Azure::ApiManagement::Mgmt::V2019_01_01::Models::RegionListResult
      UserTokenResult = Azure::ApiManagement::Mgmt::V2019_01_01::Models::UserTokenResult
      ApiExportResultValue = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiExportResultValue
      SchemaCollection = Azure::ApiManagement::Mgmt::V2019_01_01::Models::SchemaCollection
      ProductEntityBaseParameters = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ProductEntityBaseParameters
      PolicyCollection = Azure::ApiManagement::Mgmt::V2019_01_01::Models::PolicyCollection
      RequestReportRecordContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::RequestReportRecordContract
      ProductCollection = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ProductCollection
      ApiManagementServiceSkuProperties = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiManagementServiceSkuProperties
      RepresentationContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::RepresentationContract
      AdditionalLocation = Azure::ApiManagement::Mgmt::V2019_01_01::Models::AdditionalLocation
      RequestContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::RequestContract
      ApiManagementServiceBackupRestoreParameters = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiManagementServiceBackupRestoreParameters
      OperationUpdateContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::OperationUpdateContract
      ApiManagementServiceBaseProperties = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiManagementServiceBaseProperties
      OperationCollection = Azure::ApiManagement::Mgmt::V2019_01_01::Models::OperationCollection
      ApiManagementServiceIdentity = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiManagementServiceIdentity
      ApiReleaseCollection = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiReleaseCollection
      QuotaCounterCollection = Azure::ApiManagement::Mgmt::V2019_01_01::Models::QuotaCounterCollection
      ApiRevisionCollection = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiRevisionCollection
      ApimResource = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApimResource
      OperationResultLogItemContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::OperationResultLogItemContract
      QuotaCounterContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::QuotaCounterContract
      ApiCollection = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiCollection
      ApiManagementServiceListResult = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiManagementServiceListResult
      ApiVersionSetUpdateParameters = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiVersionSetUpdateParameters
      ApiManagementServiceGetSsoTokenResult = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiManagementServiceGetSsoTokenResult
      ApiVersionSetCollection = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiVersionSetCollection
      ApiManagementServiceCheckNameAvailabilityParameters = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiManagementServiceCheckNameAvailabilityParameters
      AuthorizationServerContractBaseProperties = Azure::ApiManagement::Mgmt::V2019_01_01::Models::AuthorizationServerContractBaseProperties
      ApiManagementServiceNameAvailabilityResult = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiManagementServiceNameAvailabilityResult
      SubscriptionCreateParameters = Azure::ApiManagement::Mgmt::V2019_01_01::Models::SubscriptionCreateParameters
      ApiManagementServiceApplyNetworkConfigurationParameters = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiManagementServiceApplyNetworkConfigurationParameters
      SubscriptionUpdateParameters = Azure::ApiManagement::Mgmt::V2019_01_01::Models::SubscriptionUpdateParameters
      OperationDisplay = Azure::ApiManagement::Mgmt::V2019_01_01::Models::OperationDisplay
      BackendProxyContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::BackendProxyContract
      Operation = Azure::ApiManagement::Mgmt::V2019_01_01::Models::Operation
      BackendCredentialsContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::BackendCredentialsContract
      OperationListResult = Azure::ApiManagement::Mgmt::V2019_01_01::Models::OperationListResult
      SubscriptionKeyParameterNamesContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::SubscriptionKeyParameterNamesContract
      EmailTemplateParametersContractProperties = Azure::ApiManagement::Mgmt::V2019_01_01::Models::EmailTemplateParametersContractProperties
      ApiVersionSetContractDetails = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiVersionSetContractDetails
      EmailTemplateUpdateParameters = Azure::ApiManagement::Mgmt::V2019_01_01::Models::EmailTemplateUpdateParameters
      QuotaCounterValueContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::QuotaCounterValueContract
      QuotaCounterValueContractProperties = Azure::ApiManagement::Mgmt::V2019_01_01::Models::QuotaCounterValueContractProperties
      ApiRevisionInfoContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiRevisionInfoContract
      EmailTemplateCollection = Azure::ApiManagement::Mgmt::V2019_01_01::Models::EmailTemplateCollection
      TagDescriptionCollection = Azure::ApiManagement::Mgmt::V2019_01_01::Models::TagDescriptionCollection
      UserIdentityContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::UserIdentityContract
      IssueCommentCollection = Azure::ApiManagement::Mgmt::V2019_01_01::Models::IssueCommentCollection
      UserEntityBaseParameters = Azure::ApiManagement::Mgmt::V2019_01_01::Models::UserEntityBaseParameters
      IssueCollection = Azure::ApiManagement::Mgmt::V2019_01_01::Models::IssueCollection
      GroupContractProperties = Azure::ApiManagement::Mgmt::V2019_01_01::Models::GroupContractProperties
      SamplingSettings = Azure::ApiManagement::Mgmt::V2019_01_01::Models::SamplingSettings
      PropertyCollection = Azure::ApiManagement::Mgmt::V2019_01_01::Models::PropertyCollection
      AccessInformationUpdateParameters = Azure::ApiManagement::Mgmt::V2019_01_01::Models::AccessInformationUpdateParameters
      UserCollection = Azure::ApiManagement::Mgmt::V2019_01_01::Models::UserCollection
      SaveConfigurationParameter = Azure::ApiManagement::Mgmt::V2019_01_01::Models::SaveConfigurationParameter
      GroupUpdateParameters = Azure::ApiManagement::Mgmt::V2019_01_01::Models::GroupUpdateParameters
      ResponseContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ResponseContract
      PropertyUpdateParameters = Azure::ApiManagement::Mgmt::V2019_01_01::Models::PropertyUpdateParameters
      DeployConfigurationParameters = Azure::ApiManagement::Mgmt::V2019_01_01::Models::DeployConfigurationParameters
      GroupCreateParameters = Azure::ApiManagement::Mgmt::V2019_01_01::Models::GroupCreateParameters
      ApiRevisionContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiRevisionContract
      GroupCollection = Azure::ApiManagement::Mgmt::V2019_01_01::Models::GroupCollection
      ApiCreateOrUpdateParameter = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiCreateOrUpdateParameter
      IdentityProviderBaseParameters = Azure::ApiManagement::Mgmt::V2019_01_01::Models::IdentityProviderBaseParameters
      TenantConfigurationSyncStateContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::TenantConfigurationSyncStateContract
      IdentityProviderUpdateParameters = Azure::ApiManagement::Mgmt::V2019_01_01::Models::IdentityProviderUpdateParameters
      TagCreateUpdateParameters = Azure::ApiManagement::Mgmt::V2019_01_01::Models::TagCreateUpdateParameters
      PropertyEntityBaseParameters = Azure::ApiManagement::Mgmt::V2019_01_01::Models::PropertyEntityBaseParameters
      BackendTlsProperties = Azure::ApiManagement::Mgmt::V2019_01_01::Models::BackendTlsProperties
      IdentityProviderList = Azure::ApiManagement::Mgmt::V2019_01_01::Models::IdentityProviderList
      X509CertificateName = Azure::ApiManagement::Mgmt::V2019_01_01::Models::X509CertificateName
      LoggerUpdateContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::LoggerUpdateContract
      ProductUpdateParameters = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ProductUpdateParameters
      UserCreateParameters = Azure::ApiManagement::Mgmt::V2019_01_01::Models::UserCreateParameters
      LoggerCollection = Azure::ApiManagement::Mgmt::V2019_01_01::Models::LoggerCollection
      IssueUpdateContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::IssueUpdateContract
      ConnectivityStatusContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ConnectivityStatusContract
      DiagnosticCollection = Azure::ApiManagement::Mgmt::V2019_01_01::Models::DiagnosticCollection
      NetworkStatusContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::NetworkStatusContract
      ParameterContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ParameterContract
      NetworkStatusContractByLocation = Azure::ApiManagement::Mgmt::V2019_01_01::Models::NetworkStatusContractByLocation
      OperationResultContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::OperationResultContract
      SubscriptionCollection = Azure::ApiManagement::Mgmt::V2019_01_01::Models::SubscriptionCollection
      ApiVersionSetEntityBase = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiVersionSetEntityBase
      RecipientEmailCollection = Azure::ApiManagement::Mgmt::V2019_01_01::Models::RecipientEmailCollection
      AuthorizationServerCollection = Azure::ApiManagement::Mgmt::V2019_01_01::Models::AuthorizationServerCollection
      TermsOfServiceProperties = Azure::ApiManagement::Mgmt::V2019_01_01::Models::TermsOfServiceProperties
      OAuth2AuthenticationSettingsContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::OAuth2AuthenticationSettingsContract
      RecipientUserCollection = Azure::ApiManagement::Mgmt::V2019_01_01::Models::RecipientUserCollection
      IssueAttachmentCollection = Azure::ApiManagement::Mgmt::V2019_01_01::Models::IssueAttachmentCollection
      RecipientsContractProperties = Azure::ApiManagement::Mgmt::V2019_01_01::Models::RecipientsContractProperties
      AccessInformationContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::AccessInformationContract
      SubscriptionsDelegationSettingsProperties = Azure::ApiManagement::Mgmt::V2019_01_01::Models::SubscriptionsDelegationSettingsProperties
      ApiUpdateContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiUpdateContract
      NotificationCollection = Azure::ApiManagement::Mgmt::V2019_01_01::Models::NotificationCollection
      BackendAuthorizationHeaderCredentials = Azure::ApiManagement::Mgmt::V2019_01_01::Models::BackendAuthorizationHeaderCredentials
      OpenidConnectProviderUpdateContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::OpenidConnectProviderUpdateContract
      HttpMessageDiagnostic = Azure::ApiManagement::Mgmt::V2019_01_01::Models::HttpMessageDiagnostic
      RegistrationDelegationSettingsProperties = Azure::ApiManagement::Mgmt::V2019_01_01::Models::RegistrationDelegationSettingsProperties
      TokenBodyParameterContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::TokenBodyParameterContract
      OpenIdConnectProviderCollection = Azure::ApiManagement::Mgmt::V2019_01_01::Models::OpenIdConnectProviderCollection
      OperationEntityBaseContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::OperationEntityBaseContract
      PolicySnippetContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::PolicySnippetContract
      TagResourceContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::TagResourceContract
      PolicySnippetsCollection = Azure::ApiManagement::Mgmt::V2019_01_01::Models::PolicySnippetsCollection
      ProductTagResourceContractProperties = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ProductTagResourceContractProperties
      ApiContractProperties = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiContractProperties
      ApiTagResourceContractProperties = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiTagResourceContractProperties
      TagContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::TagContract
      TagDescriptionContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::TagDescriptionContract
      IssueAttachmentContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::IssueAttachmentContract
      IssueCommentContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::IssueCommentContract
      IssueContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::IssueContract
      DiagnosticContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::DiagnosticContract
      SchemaContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::SchemaContract
      SchemaCreateOrUpdateContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::SchemaCreateOrUpdateContract
      PolicyContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::PolicyContract
      ProductContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ProductContract
      OperationContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::OperationContract
      ApiReleaseContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiReleaseContract
      ApiContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiContract
      ApiVersionSetContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiVersionSetContract
      AuthorizationServerUpdateContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::AuthorizationServerUpdateContract
      AuthorizationServerContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::AuthorizationServerContract
      BackendReconnectContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::BackendReconnectContract
      BackendContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::BackendContract
      CacheContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::CacheContract
      CertificateContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::CertificateContract
      ApiManagementServiceResource = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiManagementServiceResource
      ApiManagementServiceUpdateParameters = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiManagementServiceUpdateParameters
      EmailTemplateContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::EmailTemplateContract
      UserContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::UserContract
      GroupContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::GroupContract
      IdentityProviderContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::IdentityProviderContract
      LoggerContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::LoggerContract
      RecipientEmailContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::RecipientEmailContract
      RecipientUserContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::RecipientUserContract
      NotificationContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::NotificationContract
      OpenidConnectProviderContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::OpenidConnectProviderContract
      PortalDelegationSettings = Azure::ApiManagement::Mgmt::V2019_01_01::Models::PortalDelegationSettings
      PortalSignupSettings = Azure::ApiManagement::Mgmt::V2019_01_01::Models::PortalSignupSettings
      PortalSigninSettings = Azure::ApiManagement::Mgmt::V2019_01_01::Models::PortalSigninSettings
      SubscriptionContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::SubscriptionContract
      PropertyContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::PropertyContract
      ExportResultFormat = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ExportResultFormat
      ProductState = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ProductState
      BearerTokenSendingMethods = Azure::ApiManagement::Mgmt::V2019_01_01::Models::BearerTokenSendingMethods
      Protocol = Azure::ApiManagement::Mgmt::V2019_01_01::Models::Protocol
      ContentFormat = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ContentFormat
      SoapApiType = Azure::ApiManagement::Mgmt::V2019_01_01::Models::SoapApiType
      ApiType = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiType
      State = Azure::ApiManagement::Mgmt::V2019_01_01::Models::State
      SamplingType = Azure::ApiManagement::Mgmt::V2019_01_01::Models::SamplingType
      AlwaysLog = Azure::ApiManagement::Mgmt::V2019_01_01::Models::AlwaysLog
      PolicyContentFormat = Azure::ApiManagement::Mgmt::V2019_01_01::Models::PolicyContentFormat
      VersioningScheme = Azure::ApiManagement::Mgmt::V2019_01_01::Models::VersioningScheme
      GrantType = Azure::ApiManagement::Mgmt::V2019_01_01::Models::GrantType
      AuthorizationMethod = Azure::ApiManagement::Mgmt::V2019_01_01::Models::AuthorizationMethod
      ClientAuthenticationMethod = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ClientAuthenticationMethod
      BearerTokenSendingMethod = Azure::ApiManagement::Mgmt::V2019_01_01::Models::BearerTokenSendingMethod
      BackendProtocol = Azure::ApiManagement::Mgmt::V2019_01_01::Models::BackendProtocol
      SkuType = Azure::ApiManagement::Mgmt::V2019_01_01::Models::SkuType
      ResourceSkuCapacityScaleType = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ResourceSkuCapacityScaleType
      HostnameType = Azure::ApiManagement::Mgmt::V2019_01_01::Models::HostnameType
      VirtualNetworkType = Azure::ApiManagement::Mgmt::V2019_01_01::Models::VirtualNetworkType
      NameAvailabilityReason = Azure::ApiManagement::Mgmt::V2019_01_01::Models::NameAvailabilityReason
      Confirmation = Azure::ApiManagement::Mgmt::V2019_01_01::Models::Confirmation
      UserState = Azure::ApiManagement::Mgmt::V2019_01_01::Models::UserState
      GroupType = Azure::ApiManagement::Mgmt::V2019_01_01::Models::GroupType
      IdentityProviderType = Azure::ApiManagement::Mgmt::V2019_01_01::Models::IdentityProviderType
      LoggerType = Azure::ApiManagement::Mgmt::V2019_01_01::Models::LoggerType
      ConnectivityStatusType = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ConnectivityStatusType
      SubscriptionState = Azure::ApiManagement::Mgmt::V2019_01_01::Models::SubscriptionState
      AsyncOperationStatus = Azure::ApiManagement::Mgmt::V2019_01_01::Models::AsyncOperationStatus
      KeyType = Azure::ApiManagement::Mgmt::V2019_01_01::Models::KeyType
      NotificationName = Azure::ApiManagement::Mgmt::V2019_01_01::Models::NotificationName
      PolicyExportFormat = Azure::ApiManagement::Mgmt::V2019_01_01::Models::PolicyExportFormat
      TemplateName = Azure::ApiManagement::Mgmt::V2019_01_01::Models::TemplateName
      PolicyScopeContract = Azure::ApiManagement::Mgmt::V2019_01_01::Models::PolicyScopeContract
      ExportFormat = Azure::ApiManagement::Mgmt::V2019_01_01::Models::ExportFormat
    end

    #
    # ApiManagementManagementClass
    #
    class ApiManagementManagementClass
      attr_reader :api, :api_revision, :api_release, :api_operation, :api_operation_policy, :tag, :api_product, :api_policy, :api_schema, :api_diagnostic, :api_issue, :api_issue_comment, :api_issue_attachment, :api_tag_description, :operation_operations, :api_version_set, :authorization_server, :backend, :cache, :certificate, :api_management_operations, :api_management_service_skus, :api_management_service, :diagnostic, :email_template, :group, :group_user, :identity_provider, :issue, :logger, :network_status, :notification, :notification_recipient_user, :notification_recipient_email, :open_id_connect_provider, :policy, :policy_snippet, :sign_in_settings, :sign_up_settings, :delegation_settings, :product, :product_api, :product_group, :product_subscriptions, :product_policy, :property, :quota_by_counter_keys, :quota_by_period_keys, :region, :reports, :subscription, :tag_resource, :tenant_access, :tenant_access_git, :tenant_configuration, :user, :user_group, :user_subscription, :user_identities, :user_confirmation_password, :api_export, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::ApiManagement::Mgmt::V2019_01_01::ApiManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @api = @client_0.api
        @api_revision = @client_0.api_revision
        @api_release = @client_0.api_release
        @api_operation = @client_0.api_operation
        @api_operation_policy = @client_0.api_operation_policy
        @tag = @client_0.tag
        @api_product = @client_0.api_product
        @api_policy = @client_0.api_policy
        @api_schema = @client_0.api_schema
        @api_diagnostic = @client_0.api_diagnostic
        @api_issue = @client_0.api_issue
        @api_issue_comment = @client_0.api_issue_comment
        @api_issue_attachment = @client_0.api_issue_attachment
        @api_tag_description = @client_0.api_tag_description
        @operation_operations = @client_0.operation_operations
        @api_version_set = @client_0.api_version_set
        @authorization_server = @client_0.authorization_server
        @backend = @client_0.backend
        @cache = @client_0.cache
        @certificate = @client_0.certificate
        @api_management_operations = @client_0.api_management_operations
        @api_management_service_skus = @client_0.api_management_service_skus
        @api_management_service = @client_0.api_management_service
        @diagnostic = @client_0.diagnostic
        @email_template = @client_0.email_template
        @group = @client_0.group
        @group_user = @client_0.group_user
        @identity_provider = @client_0.identity_provider
        @issue = @client_0.issue
        @logger = @client_0.logger
        @network_status = @client_0.network_status
        @notification = @client_0.notification
        @notification_recipient_user = @client_0.notification_recipient_user
        @notification_recipient_email = @client_0.notification_recipient_email
        @open_id_connect_provider = @client_0.open_id_connect_provider
        @policy = @client_0.policy
        @policy_snippet = @client_0.policy_snippet
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
        @region = @client_0.region
        @reports = @client_0.reports
        @subscription = @client_0.subscription
        @tag_resource = @client_0.tag_resource
        @tenant_access = @client_0.tenant_access
        @tenant_access_git = @client_0.tenant_access_git
        @tenant_configuration = @client_0.tenant_configuration
        @user = @client_0.user
        @user_group = @client_0.user_group
        @user_subscription = @client_0.user_subscription
        @user_identities = @client_0.user_identities
        @user_confirmation_password = @client_0.user_confirmation_password
        @api_export = @client_0.api_export

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/ApiManagement/Mgmt'
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
      def resource_sku_result
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ResourceSkuResult
      end
      def resource_sku_results
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ResourceSkuResults
      end
      def error_response_body
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ErrorResponseBody
      end
      def certificate_information
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::CertificateInformation
      end
      def region_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::RegionContract
      end
      def certificate_configuration
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::CertificateConfiguration
      end
      def resource
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::Resource
      end
      def hostname_configuration
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::HostnameConfiguration
      end
      def api_export_result
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiExportResult
      end
      def virtual_network_configuration
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::VirtualNetworkConfiguration
      end
      def backend_service_fabric_cluster_properties
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::BackendServiceFabricClusterProperties
      end
      def operation_tag_resource_contract_properties
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::OperationTagResourceContractProperties
      end
      def backend_properties
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::BackendProperties
      end
      def open_id_authentication_settings_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::OpenIdAuthenticationSettingsContract
      end
      def backend_base_parameters
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::BackendBaseParameters
      end
      def authentication_settings_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::AuthenticationSettingsContract
      end
      def backend_update_parameters
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::BackendUpdateParameters
      end
      def api_create_or_update_properties_wsdl_selector
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiCreateOrUpdatePropertiesWsdlSelector
      end
      def report_collection
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ReportCollection
      end
      def api_entity_base_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiEntityBaseContract
      end
      def backend_collection
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::BackendCollection
      end
      def tag_tag_resource_contract_properties
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::TagTagResourceContractProperties
      end
      def cache_update_parameters
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::CacheUpdateParameters
      end
      def tag_resource_collection
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::TagResourceCollection
      end
      def report_record_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ReportRecordContract
      end
      def tag_collection
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::TagCollection
      end
      def cache_collection
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::CacheCollection
      end
      def tag_description_create_parameters
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::TagDescriptionCreateParameters
      end
      def request_report_collection
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::RequestReportCollection
      end
      def user_update_parameters
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::UserUpdateParameters
      end
      def certificate_create_or_update_parameters
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::CertificateCreateOrUpdateParameters
      end
      def generate_sso_url_result
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::GenerateSsoUrlResult
      end
      def certificate_collection
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::CertificateCollection
      end
      def issue_contract_base_properties
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::IssueContractBaseProperties
      end
      def resource_sku
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ResourceSku
      end
      def user_identity_collection
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::UserIdentityCollection
      end
      def resource_sku_capacity
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ResourceSkuCapacity
      end
      def body_diagnostic_settings
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::BodyDiagnosticSettings
      end
      def error_field_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ErrorFieldContract
      end
      def pipeline_diagnostic_settings
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::PipelineDiagnosticSettings
      end
      def error_response
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ErrorResponse
      end
      def user_token_parameters
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::UserTokenParameters
      end
      def region_list_result
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::RegionListResult
      end
      def user_token_result
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::UserTokenResult
      end
      def api_export_result_value
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiExportResultValue
      end
      def schema_collection
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::SchemaCollection
      end
      def product_entity_base_parameters
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ProductEntityBaseParameters
      end
      def policy_collection
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::PolicyCollection
      end
      def request_report_record_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::RequestReportRecordContract
      end
      def product_collection
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ProductCollection
      end
      def api_management_service_sku_properties
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiManagementServiceSkuProperties
      end
      def representation_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::RepresentationContract
      end
      def additional_location
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::AdditionalLocation
      end
      def request_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::RequestContract
      end
      def api_management_service_backup_restore_parameters
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiManagementServiceBackupRestoreParameters
      end
      def operation_update_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::OperationUpdateContract
      end
      def api_management_service_base_properties
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiManagementServiceBaseProperties
      end
      def operation_collection
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::OperationCollection
      end
      def api_management_service_identity
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiManagementServiceIdentity
      end
      def api_release_collection
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiReleaseCollection
      end
      def quota_counter_collection
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::QuotaCounterCollection
      end
      def api_revision_collection
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiRevisionCollection
      end
      def apim_resource
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApimResource
      end
      def operation_result_log_item_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::OperationResultLogItemContract
      end
      def quota_counter_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::QuotaCounterContract
      end
      def api_collection
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiCollection
      end
      def api_management_service_list_result
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiManagementServiceListResult
      end
      def api_version_set_update_parameters
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiVersionSetUpdateParameters
      end
      def api_management_service_get_sso_token_result
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiManagementServiceGetSsoTokenResult
      end
      def api_version_set_collection
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiVersionSetCollection
      end
      def api_management_service_check_name_availability_parameters
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiManagementServiceCheckNameAvailabilityParameters
      end
      def authorization_server_contract_base_properties
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::AuthorizationServerContractBaseProperties
      end
      def api_management_service_name_availability_result
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiManagementServiceNameAvailabilityResult
      end
      def subscription_create_parameters
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::SubscriptionCreateParameters
      end
      def api_management_service_apply_network_configuration_parameters
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiManagementServiceApplyNetworkConfigurationParameters
      end
      def subscription_update_parameters
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::SubscriptionUpdateParameters
      end
      def operation_display
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::OperationDisplay
      end
      def backend_proxy_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::BackendProxyContract
      end
      def operation
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::Operation
      end
      def backend_credentials_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::BackendCredentialsContract
      end
      def operation_list_result
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::OperationListResult
      end
      def subscription_key_parameter_names_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::SubscriptionKeyParameterNamesContract
      end
      def email_template_parameters_contract_properties
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::EmailTemplateParametersContractProperties
      end
      def api_version_set_contract_details
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiVersionSetContractDetails
      end
      def email_template_update_parameters
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::EmailTemplateUpdateParameters
      end
      def quota_counter_value_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::QuotaCounterValueContract
      end
      def quota_counter_value_contract_properties
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::QuotaCounterValueContractProperties
      end
      def api_revision_info_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiRevisionInfoContract
      end
      def email_template_collection
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::EmailTemplateCollection
      end
      def tag_description_collection
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::TagDescriptionCollection
      end
      def user_identity_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::UserIdentityContract
      end
      def issue_comment_collection
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::IssueCommentCollection
      end
      def user_entity_base_parameters
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::UserEntityBaseParameters
      end
      def issue_collection
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::IssueCollection
      end
      def group_contract_properties
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::GroupContractProperties
      end
      def sampling_settings
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::SamplingSettings
      end
      def property_collection
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::PropertyCollection
      end
      def access_information_update_parameters
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::AccessInformationUpdateParameters
      end
      def user_collection
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::UserCollection
      end
      def save_configuration_parameter
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::SaveConfigurationParameter
      end
      def group_update_parameters
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::GroupUpdateParameters
      end
      def response_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ResponseContract
      end
      def property_update_parameters
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::PropertyUpdateParameters
      end
      def deploy_configuration_parameters
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::DeployConfigurationParameters
      end
      def group_create_parameters
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::GroupCreateParameters
      end
      def api_revision_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiRevisionContract
      end
      def group_collection
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::GroupCollection
      end
      def api_create_or_update_parameter
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiCreateOrUpdateParameter
      end
      def identity_provider_base_parameters
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::IdentityProviderBaseParameters
      end
      def tenant_configuration_sync_state_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::TenantConfigurationSyncStateContract
      end
      def identity_provider_update_parameters
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::IdentityProviderUpdateParameters
      end
      def tag_create_update_parameters
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::TagCreateUpdateParameters
      end
      def property_entity_base_parameters
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::PropertyEntityBaseParameters
      end
      def backend_tls_properties
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::BackendTlsProperties
      end
      def identity_provider_list
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::IdentityProviderList
      end
      def x509_certificate_name
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::X509CertificateName
      end
      def logger_update_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::LoggerUpdateContract
      end
      def product_update_parameters
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ProductUpdateParameters
      end
      def user_create_parameters
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::UserCreateParameters
      end
      def logger_collection
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::LoggerCollection
      end
      def issue_update_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::IssueUpdateContract
      end
      def connectivity_status_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ConnectivityStatusContract
      end
      def diagnostic_collection
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::DiagnosticCollection
      end
      def network_status_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::NetworkStatusContract
      end
      def parameter_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ParameterContract
      end
      def network_status_contract_by_location
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::NetworkStatusContractByLocation
      end
      def operation_result_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::OperationResultContract
      end
      def subscription_collection
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::SubscriptionCollection
      end
      def api_version_set_entity_base
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiVersionSetEntityBase
      end
      def recipient_email_collection
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::RecipientEmailCollection
      end
      def authorization_server_collection
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::AuthorizationServerCollection
      end
      def terms_of_service_properties
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::TermsOfServiceProperties
      end
      def oauth2_authentication_settings_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::OAuth2AuthenticationSettingsContract
      end
      def recipient_user_collection
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::RecipientUserCollection
      end
      def issue_attachment_collection
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::IssueAttachmentCollection
      end
      def recipients_contract_properties
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::RecipientsContractProperties
      end
      def access_information_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::AccessInformationContract
      end
      def subscriptions_delegation_settings_properties
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::SubscriptionsDelegationSettingsProperties
      end
      def api_update_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiUpdateContract
      end
      def notification_collection
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::NotificationCollection
      end
      def backend_authorization_header_credentials
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::BackendAuthorizationHeaderCredentials
      end
      def openid_connect_provider_update_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::OpenidConnectProviderUpdateContract
      end
      def http_message_diagnostic
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::HttpMessageDiagnostic
      end
      def registration_delegation_settings_properties
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::RegistrationDelegationSettingsProperties
      end
      def token_body_parameter_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::TokenBodyParameterContract
      end
      def open_id_connect_provider_collection
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::OpenIdConnectProviderCollection
      end
      def operation_entity_base_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::OperationEntityBaseContract
      end
      def policy_snippet_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::PolicySnippetContract
      end
      def tag_resource_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::TagResourceContract
      end
      def policy_snippets_collection
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::PolicySnippetsCollection
      end
      def product_tag_resource_contract_properties
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ProductTagResourceContractProperties
      end
      def api_contract_properties
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiContractProperties
      end
      def api_tag_resource_contract_properties
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiTagResourceContractProperties
      end
      def tag_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::TagContract
      end
      def tag_description_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::TagDescriptionContract
      end
      def issue_attachment_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::IssueAttachmentContract
      end
      def issue_comment_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::IssueCommentContract
      end
      def issue_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::IssueContract
      end
      def diagnostic_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::DiagnosticContract
      end
      def schema_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::SchemaContract
      end
      def schema_create_or_update_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::SchemaCreateOrUpdateContract
      end
      def policy_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::PolicyContract
      end
      def product_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ProductContract
      end
      def operation_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::OperationContract
      end
      def api_release_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiReleaseContract
      end
      def api_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiContract
      end
      def api_version_set_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiVersionSetContract
      end
      def authorization_server_update_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::AuthorizationServerUpdateContract
      end
      def authorization_server_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::AuthorizationServerContract
      end
      def backend_reconnect_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::BackendReconnectContract
      end
      def backend_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::BackendContract
      end
      def cache_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::CacheContract
      end
      def certificate_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::CertificateContract
      end
      def api_management_service_resource
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiManagementServiceResource
      end
      def api_management_service_update_parameters
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiManagementServiceUpdateParameters
      end
      def email_template_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::EmailTemplateContract
      end
      def user_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::UserContract
      end
      def group_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::GroupContract
      end
      def identity_provider_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::IdentityProviderContract
      end
      def logger_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::LoggerContract
      end
      def recipient_email_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::RecipientEmailContract
      end
      def recipient_user_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::RecipientUserContract
      end
      def notification_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::NotificationContract
      end
      def openid_connect_provider_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::OpenidConnectProviderContract
      end
      def portal_delegation_settings
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::PortalDelegationSettings
      end
      def portal_signup_settings
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::PortalSignupSettings
      end
      def portal_signin_settings
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::PortalSigninSettings
      end
      def subscription_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::SubscriptionContract
      end
      def property_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::PropertyContract
      end
      def export_result_format
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ExportResultFormat
      end
      def product_state
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ProductState
      end
      def bearer_token_sending_methods
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::BearerTokenSendingMethods
      end
      def protocol
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::Protocol
      end
      def content_format
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ContentFormat
      end
      def soap_api_type
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::SoapApiType
      end
      def api_type
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ApiType
      end
      def state
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::State
      end
      def sampling_type
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::SamplingType
      end
      def always_log
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::AlwaysLog
      end
      def policy_content_format
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::PolicyContentFormat
      end
      def versioning_scheme
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::VersioningScheme
      end
      def grant_type
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::GrantType
      end
      def authorization_method
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::AuthorizationMethod
      end
      def client_authentication_method
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ClientAuthenticationMethod
      end
      def bearer_token_sending_method
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::BearerTokenSendingMethod
      end
      def backend_protocol
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::BackendProtocol
      end
      def sku_type
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::SkuType
      end
      def resource_sku_capacity_scale_type
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ResourceSkuCapacityScaleType
      end
      def hostname_type
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::HostnameType
      end
      def virtual_network_type
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::VirtualNetworkType
      end
      def name_availability_reason
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::NameAvailabilityReason
      end
      def confirmation
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::Confirmation
      end
      def user_state
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::UserState
      end
      def group_type
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::GroupType
      end
      def identity_provider_type
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::IdentityProviderType
      end
      def logger_type
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::LoggerType
      end
      def connectivity_status_type
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ConnectivityStatusType
      end
      def subscription_state
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::SubscriptionState
      end
      def async_operation_status
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::AsyncOperationStatus
      end
      def key_type
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::KeyType
      end
      def notification_name
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::NotificationName
      end
      def policy_export_format
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::PolicyExportFormat
      end
      def template_name
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::TemplateName
      end
      def policy_scope_contract
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::PolicyScopeContract
      end
      def export_format
        Azure::ApiManagement::Mgmt::V2019_01_01::Models::ExportFormat
      end
    end
  end
end
