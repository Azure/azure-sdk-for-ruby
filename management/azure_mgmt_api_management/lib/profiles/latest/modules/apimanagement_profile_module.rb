# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_api_management'

module Azure::ApiManagement::Profiles::Latest
  module Mgmt
    Api = Azure::ApiManagement::Mgmt::V2019_12_01::Api
    ApiRevision = Azure::ApiManagement::Mgmt::V2019_12_01::ApiRevision
    ApiRelease = Azure::ApiManagement::Mgmt::V2019_12_01::ApiRelease
    ApiOperation = Azure::ApiManagement::Mgmt::V2019_12_01::ApiOperation
    ApiOperationPolicy = Azure::ApiManagement::Mgmt::V2019_12_01::ApiOperationPolicy
    Tag = Azure::ApiManagement::Mgmt::V2019_12_01::Tag
    ApiProduct = Azure::ApiManagement::Mgmt::V2019_12_01::ApiProduct
    ApiPolicy = Azure::ApiManagement::Mgmt::V2019_12_01::ApiPolicy
    ApiSchema = Azure::ApiManagement::Mgmt::V2019_12_01::ApiSchema
    ApiDiagnostic = Azure::ApiManagement::Mgmt::V2019_12_01::ApiDiagnostic
    ApiIssue = Azure::ApiManagement::Mgmt::V2019_12_01::ApiIssue
    ApiIssueComment = Azure::ApiManagement::Mgmt::V2019_12_01::ApiIssueComment
    ApiIssueAttachment = Azure::ApiManagement::Mgmt::V2019_12_01::ApiIssueAttachment
    ApiTagDescription = Azure::ApiManagement::Mgmt::V2019_12_01::ApiTagDescription
    OperationOperations = Azure::ApiManagement::Mgmt::V2019_12_01::OperationOperations
    ApiVersionSet = Azure::ApiManagement::Mgmt::V2019_12_01::ApiVersionSet
    AuthorizationServer = Azure::ApiManagement::Mgmt::V2019_12_01::AuthorizationServer
    Backend = Azure::ApiManagement::Mgmt::V2019_12_01::Backend
    Cache = Azure::ApiManagement::Mgmt::V2019_12_01::Cache
    Certificate = Azure::ApiManagement::Mgmt::V2019_12_01::Certificate
    ApiManagementOperations = Azure::ApiManagement::Mgmt::V2019_12_01::ApiManagementOperations
    ApiManagementServiceSkus = Azure::ApiManagement::Mgmt::V2019_12_01::ApiManagementServiceSkus
    ApiManagementService = Azure::ApiManagement::Mgmt::V2019_12_01::ApiManagementService
    Diagnostic = Azure::ApiManagement::Mgmt::V2019_12_01::Diagnostic
    EmailTemplate = Azure::ApiManagement::Mgmt::V2019_12_01::EmailTemplate
    Gateway = Azure::ApiManagement::Mgmt::V2019_12_01::Gateway
    GatewayHostnameConfiguration = Azure::ApiManagement::Mgmt::V2019_12_01::GatewayHostnameConfiguration
    GatewayApi = Azure::ApiManagement::Mgmt::V2019_12_01::GatewayApi
    Group = Azure::ApiManagement::Mgmt::V2019_12_01::Group
    GroupUser = Azure::ApiManagement::Mgmt::V2019_12_01::GroupUser
    IdentityProvider = Azure::ApiManagement::Mgmt::V2019_12_01::IdentityProvider
    Issue = Azure::ApiManagement::Mgmt::V2019_12_01::Issue
    Logger = Azure::ApiManagement::Mgmt::V2019_12_01::Logger
    NamedValue = Azure::ApiManagement::Mgmt::V2019_12_01::NamedValue
    NetworkStatus = Azure::ApiManagement::Mgmt::V2019_12_01::NetworkStatus
    Notification = Azure::ApiManagement::Mgmt::V2019_12_01::Notification
    NotificationRecipientUser = Azure::ApiManagement::Mgmt::V2019_12_01::NotificationRecipientUser
    NotificationRecipientEmail = Azure::ApiManagement::Mgmt::V2019_12_01::NotificationRecipientEmail
    OpenIdConnectProvider = Azure::ApiManagement::Mgmt::V2019_12_01::OpenIdConnectProvider
    Policy = Azure::ApiManagement::Mgmt::V2019_12_01::Policy
    PolicyDescription = Azure::ApiManagement::Mgmt::V2019_12_01::PolicyDescription
    SignInSettings = Azure::ApiManagement::Mgmt::V2019_12_01::SignInSettings
    SignUpSettings = Azure::ApiManagement::Mgmt::V2019_12_01::SignUpSettings
    DelegationSettings = Azure::ApiManagement::Mgmt::V2019_12_01::DelegationSettings
    Product = Azure::ApiManagement::Mgmt::V2019_12_01::Product
    ProductApi = Azure::ApiManagement::Mgmt::V2019_12_01::ProductApi
    ProductGroup = Azure::ApiManagement::Mgmt::V2019_12_01::ProductGroup
    ProductSubscriptions = Azure::ApiManagement::Mgmt::V2019_12_01::ProductSubscriptions
    ProductPolicy = Azure::ApiManagement::Mgmt::V2019_12_01::ProductPolicy
    QuotaByCounterKeys = Azure::ApiManagement::Mgmt::V2019_12_01::QuotaByCounterKeys
    QuotaByPeriodKeys = Azure::ApiManagement::Mgmt::V2019_12_01::QuotaByPeriodKeys
    Region = Azure::ApiManagement::Mgmt::V2019_12_01::Region
    Reports = Azure::ApiManagement::Mgmt::V2019_12_01::Reports
    Subscription = Azure::ApiManagement::Mgmt::V2019_12_01::Subscription
    TagResource = Azure::ApiManagement::Mgmt::V2019_12_01::TagResource
    TenantAccess = Azure::ApiManagement::Mgmt::V2019_12_01::TenantAccess
    TenantAccessGit = Azure::ApiManagement::Mgmt::V2019_12_01::TenantAccessGit
    TenantConfiguration = Azure::ApiManagement::Mgmt::V2019_12_01::TenantConfiguration
    User = Azure::ApiManagement::Mgmt::V2019_12_01::User
    UserGroup = Azure::ApiManagement::Mgmt::V2019_12_01::UserGroup
    UserSubscription = Azure::ApiManagement::Mgmt::V2019_12_01::UserSubscription
    UserIdentities = Azure::ApiManagement::Mgmt::V2019_12_01::UserIdentities
    UserConfirmationPassword = Azure::ApiManagement::Mgmt::V2019_12_01::UserConfirmationPassword
    ApiExport = Azure::ApiManagement::Mgmt::V2019_12_01::ApiExport

    module Models
      ApiVersionConstraint = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiVersionConstraint
      ErrorFieldContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ErrorFieldContract
      ApiManagementServiceBaseProperties = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiManagementServiceBaseProperties
      ErrorResponse = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ErrorResponse
      UserIdentityProperties = Azure::ApiManagement::Mgmt::V2019_12_01::Models::UserIdentityProperties
      RegionListResult = Azure::ApiManagement::Mgmt::V2019_12_01::Models::RegionListResult
      ApiManagementServiceIdentity = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiManagementServiceIdentity
      ApiExportResultValue = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiExportResultValue
      CertificateInformation = Azure::ApiManagement::Mgmt::V2019_12_01::Models::CertificateInformation
      ProductEntityBaseParameters = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ProductEntityBaseParameters
      CertificateConfiguration = Azure::ApiManagement::Mgmt::V2019_12_01::Models::CertificateConfiguration
      OperationTagResourceContractProperties = Azure::ApiManagement::Mgmt::V2019_12_01::Models::OperationTagResourceContractProperties
      HostnameConfiguration = Azure::ApiManagement::Mgmt::V2019_12_01::Models::HostnameConfiguration
      OpenIdAuthenticationSettingsContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::OpenIdAuthenticationSettingsContract
      VirtualNetworkConfiguration = Azure::ApiManagement::Mgmt::V2019_12_01::Models::VirtualNetworkConfiguration
      AuthenticationSettingsContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::AuthenticationSettingsContract
      ApiManagementServiceSkuProperties = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiManagementServiceSkuProperties
      ApiCreateOrUpdatePropertiesWsdlSelector = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiCreateOrUpdatePropertiesWsdlSelector
      AdditionalLocation = Azure::ApiManagement::Mgmt::V2019_12_01::Models::AdditionalLocation
      ApiEntityBaseContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiEntityBaseContract
      ApiManagementServiceBackupRestoreParameters = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiManagementServiceBackupRestoreParameters
      TagTagResourceContractProperties = Azure::ApiManagement::Mgmt::V2019_12_01::Models::TagTagResourceContractProperties
      ErrorResponseBody = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ErrorResponseBody
      TagResourceCollection = Azure::ApiManagement::Mgmt::V2019_12_01::Models::TagResourceCollection
      RegionContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::RegionContract
      TagCollection = Azure::ApiManagement::Mgmt::V2019_12_01::Models::TagCollection
      Resource = Azure::ApiManagement::Mgmt::V2019_12_01::Models::Resource
      TagDescriptionCreateParameters = Azure::ApiManagement::Mgmt::V2019_12_01::Models::TagDescriptionCreateParameters
      ApiExportResult = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiExportResult
      OAuth2AuthenticationSettingsContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::OAuth2AuthenticationSettingsContract
      IssueAttachmentCollection = Azure::ApiManagement::Mgmt::V2019_12_01::Models::IssueAttachmentCollection
      ApiVersionSetContractDetails = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiVersionSetContractDetails
      IssueCommentCollection = Azure::ApiManagement::Mgmt::V2019_12_01::Models::IssueCommentCollection
      RequestReportCollection = Azure::ApiManagement::Mgmt::V2019_12_01::Models::RequestReportCollection
      IssueUpdateContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::IssueUpdateContract
      IssueContractBaseProperties = Azure::ApiManagement::Mgmt::V2019_12_01::Models::IssueContractBaseProperties
      IssueCollection = Azure::ApiManagement::Mgmt::V2019_12_01::Models::IssueCollection
      OpenIdConnectProviderCollection = Azure::ApiManagement::Mgmt::V2019_12_01::Models::OpenIdConnectProviderCollection
      HttpMessageDiagnostic = Azure::ApiManagement::Mgmt::V2019_12_01::Models::HttpMessageDiagnostic
      TagCreateUpdateParameters = Azure::ApiManagement::Mgmt::V2019_12_01::Models::TagCreateUpdateParameters
      SamplingSettings = Azure::ApiManagement::Mgmt::V2019_12_01::Models::SamplingSettings
      TagResourceContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::TagResourceContract
      DiagnosticCollection = Azure::ApiManagement::Mgmt::V2019_12_01::Models::DiagnosticCollection
      OpenidConnectProviderUpdateContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::OpenidConnectProviderUpdateContract
      SchemaCollection = Azure::ApiManagement::Mgmt::V2019_12_01::Models::SchemaCollection
      NotificationCollection = Azure::ApiManagement::Mgmt::V2019_12_01::Models::NotificationCollection
      PolicyCollection = Azure::ApiManagement::Mgmt::V2019_12_01::Models::PolicyCollection
      TagDescriptionCollection = Azure::ApiManagement::Mgmt::V2019_12_01::Models::TagDescriptionCollection
      ProductCollection = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ProductCollection
      SubscriptionCreateParameters = Azure::ApiManagement::Mgmt::V2019_12_01::Models::SubscriptionCreateParameters
      RepresentationContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::RepresentationContract
      RequestContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::RequestContract
      ApimResource = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApimResource
      OperationUpdateContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::OperationUpdateContract
      QuotaCounterValueContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::QuotaCounterValueContract
      OperationCollection = Azure::ApiManagement::Mgmt::V2019_12_01::Models::OperationCollection
      ApiManagementServiceListResult = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiManagementServiceListResult
      ApiReleaseCollection = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiReleaseCollection
      ApiManagementServiceGetSsoTokenResult = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiManagementServiceGetSsoTokenResult
      ApiRevisionCollection = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiRevisionCollection
      ApiManagementServiceCheckNameAvailabilityParameters = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiManagementServiceCheckNameAvailabilityParameters
      ReportCollection = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ReportCollection
      ApiManagementServiceNameAvailabilityResult = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiManagementServiceNameAvailabilityResult
      ApiCollection = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiCollection
      ApiManagementServiceApplyNetworkConfigurationParameters = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiManagementServiceApplyNetworkConfigurationParameters
      ApiVersionSetUpdateParameters = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiVersionSetUpdateParameters
      OperationDisplay = Azure::ApiManagement::Mgmt::V2019_12_01::Models::OperationDisplay
      ApiVersionSetCollection = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiVersionSetCollection
      Operation = Azure::ApiManagement::Mgmt::V2019_12_01::Models::Operation
      TokenBodyParameterContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::TokenBodyParameterContract
      OperationListResult = Azure::ApiManagement::Mgmt::V2019_12_01::Models::OperationListResult
      TermsOfServiceProperties = Azure::ApiManagement::Mgmt::V2019_12_01::Models::TermsOfServiceProperties
      EmailTemplateParametersContractProperties = Azure::ApiManagement::Mgmt::V2019_12_01::Models::EmailTemplateParametersContractProperties
      AuthorizationServerCollection = Azure::ApiManagement::Mgmt::V2019_12_01::Models::AuthorizationServerCollection
      EmailTemplateUpdateParameters = Azure::ApiManagement::Mgmt::V2019_12_01::Models::EmailTemplateUpdateParameters
      BackendTlsProperties = Azure::ApiManagement::Mgmt::V2019_12_01::Models::BackendTlsProperties
      ApiRevisionInfoContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiRevisionInfoContract
      BackendAuthorizationHeaderCredentials = Azure::ApiManagement::Mgmt::V2019_12_01::Models::BackendAuthorizationHeaderCredentials
      EmailTemplateCollection = Azure::ApiManagement::Mgmt::V2019_12_01::Models::EmailTemplateCollection
      X509CertificateName = Azure::ApiManagement::Mgmt::V2019_12_01::Models::X509CertificateName
      UserCreateParameters = Azure::ApiManagement::Mgmt::V2019_12_01::Models::UserCreateParameters
      BackendProperties = Azure::ApiManagement::Mgmt::V2019_12_01::Models::BackendProperties
      UserUpdateParameters = Azure::ApiManagement::Mgmt::V2019_12_01::Models::UserUpdateParameters
      BackendUpdateParameters = Azure::ApiManagement::Mgmt::V2019_12_01::Models::BackendUpdateParameters
      GatewayHostnameConfigurationCollection = Azure::ApiManagement::Mgmt::V2019_12_01::Models::GatewayHostnameConfigurationCollection
      BackendCollection = Azure::ApiManagement::Mgmt::V2019_12_01::Models::BackendCollection
      GatewayTokenContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::GatewayTokenContract
      PortalSettingValidationKeyContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::PortalSettingValidationKeyContract
      GatewayTokenRequestContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::GatewayTokenRequestContract
      PolicyDescriptionCollection = Azure::ApiManagement::Mgmt::V2019_12_01::Models::PolicyDescriptionCollection
      GatewayKeyRegenerationRequestContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::GatewayKeyRegenerationRequestContract
      CertificateCollection = Azure::ApiManagement::Mgmt::V2019_12_01::Models::CertificateCollection
      GatewayKeysContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::GatewayKeysContract
      ResourceSkuCapacity = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ResourceSkuCapacity
      ResourceLocationDataContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ResourceLocationDataContract
      ResourceSkuResults = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ResourceSkuResults
      GenerateSsoUrlResult = Azure::ApiManagement::Mgmt::V2019_12_01::Models::GenerateSsoUrlResult
      SubscriptionKeyParameterNamesContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::SubscriptionKeyParameterNamesContract
      GatewayCollection = Azure::ApiManagement::Mgmt::V2019_12_01::Models::GatewayCollection
      BodyDiagnosticSettings = Azure::ApiManagement::Mgmt::V2019_12_01::Models::BodyDiagnosticSettings
      UserIdentityContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::UserIdentityContract
      QuotaCounterCollection = Azure::ApiManagement::Mgmt::V2019_12_01::Models::QuotaCounterCollection
      UserEntityBaseParameters = Azure::ApiManagement::Mgmt::V2019_12_01::Models::UserEntityBaseParameters
      QuotaCounterValueContractProperties = Azure::ApiManagement::Mgmt::V2019_12_01::Models::QuotaCounterValueContractProperties
      GroupContractProperties = Azure::ApiManagement::Mgmt::V2019_12_01::Models::GroupContractProperties
      ParameterContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ParameterContract
      UserIdentityCollection = Azure::ApiManagement::Mgmt::V2019_12_01::Models::UserIdentityCollection
      OperationEntityBaseContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::OperationEntityBaseContract
      UserCollection = Azure::ApiManagement::Mgmt::V2019_12_01::Models::UserCollection
      ReportRecordContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ReportRecordContract
      GroupUpdateParameters = Azure::ApiManagement::Mgmt::V2019_12_01::Models::GroupUpdateParameters
      ApiUpdateContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiUpdateContract
      UserTokenParameters = Azure::ApiManagement::Mgmt::V2019_12_01::Models::UserTokenParameters
      ApiVersionSetEntityBase = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiVersionSetEntityBase
      GroupCreateParameters = Azure::ApiManagement::Mgmt::V2019_12_01::Models::GroupCreateParameters
      ClientSecretContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ClientSecretContract
      GroupCollection = Azure::ApiManagement::Mgmt::V2019_12_01::Models::GroupCollection
      SubscriptionUpdateParameters = Azure::ApiManagement::Mgmt::V2019_12_01::Models::SubscriptionUpdateParameters
      IdentityProviderBaseParameters = Azure::ApiManagement::Mgmt::V2019_12_01::Models::IdentityProviderBaseParameters
      BackendProxyContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::BackendProxyContract
      IdentityProviderUpdateParameters = Azure::ApiManagement::Mgmt::V2019_12_01::Models::IdentityProviderUpdateParameters
      BackendServiceFabricClusterProperties = Azure::ApiManagement::Mgmt::V2019_12_01::Models::BackendServiceFabricClusterProperties
      UserTokenResult = Azure::ApiManagement::Mgmt::V2019_12_01::Models::UserTokenResult
      RegistrationDelegationSettingsProperties = Azure::ApiManagement::Mgmt::V2019_12_01::Models::RegistrationDelegationSettingsProperties
      AccessInformationUpdateParameters = Azure::ApiManagement::Mgmt::V2019_12_01::Models::AccessInformationUpdateParameters
      CacheCollection = Azure::ApiManagement::Mgmt::V2019_12_01::Models::CacheCollection
      IdentityProviderList = Azure::ApiManagement::Mgmt::V2019_12_01::Models::IdentityProviderList
      ResourceSku = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ResourceSku
      LoggerUpdateContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::LoggerUpdateContract
      TenantConfigurationSyncStateContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::TenantConfigurationSyncStateContract
      RequestReportRecordContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::RequestReportRecordContract
      AccessInformationContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::AccessInformationContract
      QuotaCounterContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::QuotaCounterContract
      LoggerCollection = Azure::ApiManagement::Mgmt::V2019_12_01::Models::LoggerCollection
      ResponseContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ResponseContract
      PropertyValueContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::PropertyValueContract
      ApiRevisionContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiRevisionContract
      NamedValueEntityBaseParameters = Azure::ApiManagement::Mgmt::V2019_12_01::Models::NamedValueEntityBaseParameters
      SubscriptionKeysContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::SubscriptionKeysContract
      SaveConfigurationParameter = Azure::ApiManagement::Mgmt::V2019_12_01::Models::SaveConfigurationParameter
      SubscriptionsDelegationSettingsProperties = Azure::ApiManagement::Mgmt::V2019_12_01::Models::SubscriptionsDelegationSettingsProperties
      NamedValueUpdateParameters = Azure::ApiManagement::Mgmt::V2019_12_01::Models::NamedValueUpdateParameters
      BackendBaseParameters = Azure::ApiManagement::Mgmt::V2019_12_01::Models::BackendBaseParameters
      DeployConfigurationParameters = Azure::ApiManagement::Mgmt::V2019_12_01::Models::DeployConfigurationParameters
      CertificateCreateOrUpdateParameters = Azure::ApiManagement::Mgmt::V2019_12_01::Models::CertificateCreateOrUpdateParameters
      NamedValueCollection = Azure::ApiManagement::Mgmt::V2019_12_01::Models::NamedValueCollection
      PipelineDiagnosticSettings = Azure::ApiManagement::Mgmt::V2019_12_01::Models::PipelineDiagnosticSettings
      ConnectivityStatusContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ConnectivityStatusContract
      SubscriptionCollection = Azure::ApiManagement::Mgmt::V2019_12_01::Models::SubscriptionCollection
      NetworkStatusContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::NetworkStatusContract
      AuthorizationServerContractBaseProperties = Azure::ApiManagement::Mgmt::V2019_12_01::Models::AuthorizationServerContractBaseProperties
      NetworkStatusContractByLocation = Azure::ApiManagement::Mgmt::V2019_12_01::Models::NetworkStatusContractByLocation
      CacheUpdateParameters = Azure::ApiManagement::Mgmt::V2019_12_01::Models::CacheUpdateParameters
      OperationResultContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::OperationResultContract
      ProductUpdateParameters = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ProductUpdateParameters
      RecipientEmailCollection = Azure::ApiManagement::Mgmt::V2019_12_01::Models::RecipientEmailCollection
      BackendCredentialsContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::BackendCredentialsContract
      OperationResultLogItemContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::OperationResultLogItemContract
      ApiCreateOrUpdateParameter = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiCreateOrUpdateParameter
      RecipientUserCollection = Azure::ApiManagement::Mgmt::V2019_12_01::Models::RecipientUserCollection
      ResourceSkuResult = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ResourceSkuResult
      RecipientsContractProperties = Azure::ApiManagement::Mgmt::V2019_12_01::Models::RecipientsContractProperties
      ProductTagResourceContractProperties = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ProductTagResourceContractProperties
      ApiContractProperties = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiContractProperties
      ApiTagResourceContractProperties = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiTagResourceContractProperties
      TagContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::TagContract
      TagDescriptionContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::TagDescriptionContract
      IssueAttachmentContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::IssueAttachmentContract
      IssueCommentContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::IssueCommentContract
      IssueContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::IssueContract
      DiagnosticContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::DiagnosticContract
      SchemaContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::SchemaContract
      PolicyContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::PolicyContract
      ProductContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ProductContract
      OperationContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::OperationContract
      ApiReleaseContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiReleaseContract
      ApiContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiContract
      ApiVersionSetContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiVersionSetContract
      AuthorizationServerUpdateContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::AuthorizationServerUpdateContract
      AuthorizationServerContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::AuthorizationServerContract
      BackendReconnectContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::BackendReconnectContract
      BackendContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::BackendContract
      CacheContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::CacheContract
      CertificateContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::CertificateContract
      ApiManagementServiceResource = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiManagementServiceResource
      ApiManagementServiceUpdateParameters = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiManagementServiceUpdateParameters
      EmailTemplateContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::EmailTemplateContract
      AssociationContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::AssociationContract
      GatewayHostnameConfigurationContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::GatewayHostnameConfigurationContract
      GatewayContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::GatewayContract
      UserContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::UserContract
      GroupContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::GroupContract
      IdentityProviderContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::IdentityProviderContract
      IdentityProviderCreateContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::IdentityProviderCreateContract
      LoggerContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::LoggerContract
      NamedValueContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::NamedValueContract
      NamedValueCreateContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::NamedValueCreateContract
      RecipientEmailContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::RecipientEmailContract
      RecipientUserContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::RecipientUserContract
      NotificationContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::NotificationContract
      OpenidConnectProviderContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::OpenidConnectProviderContract
      PolicyDescriptionContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::PolicyDescriptionContract
      PortalDelegationSettings = Azure::ApiManagement::Mgmt::V2019_12_01::Models::PortalDelegationSettings
      PortalSignupSettings = Azure::ApiManagement::Mgmt::V2019_12_01::Models::PortalSignupSettings
      PortalSigninSettings = Azure::ApiManagement::Mgmt::V2019_12_01::Models::PortalSigninSettings
      SubscriptionContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::SubscriptionContract
      ExportResultFormat = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ExportResultFormat
      ProductState = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ProductState
      BearerTokenSendingMethods = Azure::ApiManagement::Mgmt::V2019_12_01::Models::BearerTokenSendingMethods
      Protocol = Azure::ApiManagement::Mgmt::V2019_12_01::Models::Protocol
      ContentFormat = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ContentFormat
      SoapApiType = Azure::ApiManagement::Mgmt::V2019_12_01::Models::SoapApiType
      ApiType = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiType
      State = Azure::ApiManagement::Mgmt::V2019_12_01::Models::State
      SamplingType = Azure::ApiManagement::Mgmt::V2019_12_01::Models::SamplingType
      AlwaysLog = Azure::ApiManagement::Mgmt::V2019_12_01::Models::AlwaysLog
      HttpCorrelationProtocol = Azure::ApiManagement::Mgmt::V2019_12_01::Models::HttpCorrelationProtocol
      Verbosity = Azure::ApiManagement::Mgmt::V2019_12_01::Models::Verbosity
      PolicyContentFormat = Azure::ApiManagement::Mgmt::V2019_12_01::Models::PolicyContentFormat
      VersioningScheme = Azure::ApiManagement::Mgmt::V2019_12_01::Models::VersioningScheme
      GrantType = Azure::ApiManagement::Mgmt::V2019_12_01::Models::GrantType
      AuthorizationMethod = Azure::ApiManagement::Mgmt::V2019_12_01::Models::AuthorizationMethod
      ClientAuthenticationMethod = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ClientAuthenticationMethod
      BearerTokenSendingMethod = Azure::ApiManagement::Mgmt::V2019_12_01::Models::BearerTokenSendingMethod
      BackendProtocol = Azure::ApiManagement::Mgmt::V2019_12_01::Models::BackendProtocol
      SkuType = Azure::ApiManagement::Mgmt::V2019_12_01::Models::SkuType
      ResourceSkuCapacityScaleType = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ResourceSkuCapacityScaleType
      HostnameType = Azure::ApiManagement::Mgmt::V2019_12_01::Models::HostnameType
      VirtualNetworkType = Azure::ApiManagement::Mgmt::V2019_12_01::Models::VirtualNetworkType
      ApimIdentityType = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApimIdentityType
      NameAvailabilityReason = Azure::ApiManagement::Mgmt::V2019_12_01::Models::NameAvailabilityReason
      ProvisioningState = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ProvisioningState
      KeyType = Azure::ApiManagement::Mgmt::V2019_12_01::Models::KeyType
      AppType = Azure::ApiManagement::Mgmt::V2019_12_01::Models::AppType
      Confirmation = Azure::ApiManagement::Mgmt::V2019_12_01::Models::Confirmation
      UserState = Azure::ApiManagement::Mgmt::V2019_12_01::Models::UserState
      GroupType = Azure::ApiManagement::Mgmt::V2019_12_01::Models::GroupType
      IdentityProviderType = Azure::ApiManagement::Mgmt::V2019_12_01::Models::IdentityProviderType
      LoggerType = Azure::ApiManagement::Mgmt::V2019_12_01::Models::LoggerType
      ConnectivityStatusType = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ConnectivityStatusType
      SubscriptionState = Azure::ApiManagement::Mgmt::V2019_12_01::Models::SubscriptionState
      AsyncOperationStatus = Azure::ApiManagement::Mgmt::V2019_12_01::Models::AsyncOperationStatus
      NotificationName = Azure::ApiManagement::Mgmt::V2019_12_01::Models::NotificationName
      PolicyExportFormat = Azure::ApiManagement::Mgmt::V2019_12_01::Models::PolicyExportFormat
      TemplateName = Azure::ApiManagement::Mgmt::V2019_12_01::Models::TemplateName
      PolicyScopeContract = Azure::ApiManagement::Mgmt::V2019_12_01::Models::PolicyScopeContract
      ExportFormat = Azure::ApiManagement::Mgmt::V2019_12_01::Models::ExportFormat
    end

    #
    # ApiManagementManagementClass
    #
    class ApiManagementManagementClass
      attr_reader :api, :api_revision, :api_release, :api_operation, :api_operation_policy, :tag, :api_product, :api_policy, :api_schema, :api_diagnostic, :api_issue, :api_issue_comment, :api_issue_attachment, :api_tag_description, :operation_operations, :api_version_set, :authorization_server, :backend, :cache, :certificate, :api_management_operations, :api_management_service_skus, :api_management_service, :diagnostic, :email_template, :gateway, :gateway_hostname_configuration, :gateway_api, :group, :group_user, :identity_provider, :issue, :logger, :named_value, :network_status, :notification, :notification_recipient_user, :notification_recipient_email, :open_id_connect_provider, :policy, :policy_description, :sign_in_settings, :sign_up_settings, :delegation_settings, :product, :product_api, :product_group, :product_subscriptions, :product_policy, :quota_by_counter_keys, :quota_by_period_keys, :region, :reports, :subscription, :tag_resource, :tenant_access, :tenant_access_git, :tenant_configuration, :user, :user_group, :user_subscription, :user_identities, :user_confirmation_password, :api_export, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::ApiManagement::Mgmt::V2019_12_01::ApiManagementClient.new(configurable.credentials, base_url, options)
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
        @gateway = @client_0.gateway
        @gateway_hostname_configuration = @client_0.gateway_hostname_configuration
        @gateway_api = @client_0.gateway_api
        @group = @client_0.group
        @group_user = @client_0.group_user
        @identity_provider = @client_0.identity_provider
        @issue = @client_0.issue
        @logger = @client_0.logger
        @named_value = @client_0.named_value
        @network_status = @client_0.network_status
        @notification = @client_0.notification
        @notification_recipient_user = @client_0.notification_recipient_user
        @notification_recipient_email = @client_0.notification_recipient_email
        @open_id_connect_provider = @client_0.open_id_connect_provider
        @policy = @client_0.policy
        @policy_description = @client_0.policy_description
        @sign_in_settings = @client_0.sign_in_settings
        @sign_up_settings = @client_0.sign_up_settings
        @delegation_settings = @client_0.delegation_settings
        @product = @client_0.product
        @product_api = @client_0.product_api
        @product_group = @client_0.product_group
        @product_subscriptions = @client_0.product_subscriptions
        @product_policy = @client_0.product_policy
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
      def api_version_constraint
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiVersionConstraint
      end
      def error_field_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ErrorFieldContract
      end
      def api_management_service_base_properties
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiManagementServiceBaseProperties
      end
      def error_response
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ErrorResponse
      end
      def user_identity_properties
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::UserIdentityProperties
      end
      def region_list_result
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::RegionListResult
      end
      def api_management_service_identity
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiManagementServiceIdentity
      end
      def api_export_result_value
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiExportResultValue
      end
      def certificate_information
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::CertificateInformation
      end
      def product_entity_base_parameters
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ProductEntityBaseParameters
      end
      def certificate_configuration
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::CertificateConfiguration
      end
      def operation_tag_resource_contract_properties
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::OperationTagResourceContractProperties
      end
      def hostname_configuration
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::HostnameConfiguration
      end
      def open_id_authentication_settings_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::OpenIdAuthenticationSettingsContract
      end
      def virtual_network_configuration
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::VirtualNetworkConfiguration
      end
      def authentication_settings_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::AuthenticationSettingsContract
      end
      def api_management_service_sku_properties
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiManagementServiceSkuProperties
      end
      def api_create_or_update_properties_wsdl_selector
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiCreateOrUpdatePropertiesWsdlSelector
      end
      def additional_location
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::AdditionalLocation
      end
      def api_entity_base_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiEntityBaseContract
      end
      def api_management_service_backup_restore_parameters
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiManagementServiceBackupRestoreParameters
      end
      def tag_tag_resource_contract_properties
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::TagTagResourceContractProperties
      end
      def error_response_body
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ErrorResponseBody
      end
      def tag_resource_collection
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::TagResourceCollection
      end
      def region_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::RegionContract
      end
      def tag_collection
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::TagCollection
      end
      def resource
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::Resource
      end
      def tag_description_create_parameters
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::TagDescriptionCreateParameters
      end
      def api_export_result
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiExportResult
      end
      def oauth2_authentication_settings_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::OAuth2AuthenticationSettingsContract
      end
      def issue_attachment_collection
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::IssueAttachmentCollection
      end
      def api_version_set_contract_details
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiVersionSetContractDetails
      end
      def issue_comment_collection
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::IssueCommentCollection
      end
      def request_report_collection
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::RequestReportCollection
      end
      def issue_update_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::IssueUpdateContract
      end
      def issue_contract_base_properties
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::IssueContractBaseProperties
      end
      def issue_collection
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::IssueCollection
      end
      def open_id_connect_provider_collection
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::OpenIdConnectProviderCollection
      end
      def http_message_diagnostic
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::HttpMessageDiagnostic
      end
      def tag_create_update_parameters
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::TagCreateUpdateParameters
      end
      def sampling_settings
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::SamplingSettings
      end
      def tag_resource_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::TagResourceContract
      end
      def diagnostic_collection
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::DiagnosticCollection
      end
      def openid_connect_provider_update_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::OpenidConnectProviderUpdateContract
      end
      def schema_collection
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::SchemaCollection
      end
      def notification_collection
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::NotificationCollection
      end
      def policy_collection
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::PolicyCollection
      end
      def tag_description_collection
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::TagDescriptionCollection
      end
      def product_collection
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ProductCollection
      end
      def subscription_create_parameters
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::SubscriptionCreateParameters
      end
      def representation_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::RepresentationContract
      end
      def request_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::RequestContract
      end
      def apim_resource
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApimResource
      end
      def operation_update_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::OperationUpdateContract
      end
      def quota_counter_value_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::QuotaCounterValueContract
      end
      def operation_collection
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::OperationCollection
      end
      def api_management_service_list_result
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiManagementServiceListResult
      end
      def api_release_collection
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiReleaseCollection
      end
      def api_management_service_get_sso_token_result
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiManagementServiceGetSsoTokenResult
      end
      def api_revision_collection
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiRevisionCollection
      end
      def api_management_service_check_name_availability_parameters
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiManagementServiceCheckNameAvailabilityParameters
      end
      def report_collection
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ReportCollection
      end
      def api_management_service_name_availability_result
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiManagementServiceNameAvailabilityResult
      end
      def api_collection
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiCollection
      end
      def api_management_service_apply_network_configuration_parameters
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiManagementServiceApplyNetworkConfigurationParameters
      end
      def api_version_set_update_parameters
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiVersionSetUpdateParameters
      end
      def operation_display
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::OperationDisplay
      end
      def api_version_set_collection
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiVersionSetCollection
      end
      def operation
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::Operation
      end
      def token_body_parameter_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::TokenBodyParameterContract
      end
      def operation_list_result
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::OperationListResult
      end
      def terms_of_service_properties
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::TermsOfServiceProperties
      end
      def email_template_parameters_contract_properties
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::EmailTemplateParametersContractProperties
      end
      def authorization_server_collection
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::AuthorizationServerCollection
      end
      def email_template_update_parameters
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::EmailTemplateUpdateParameters
      end
      def backend_tls_properties
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::BackendTlsProperties
      end
      def api_revision_info_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiRevisionInfoContract
      end
      def backend_authorization_header_credentials
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::BackendAuthorizationHeaderCredentials
      end
      def email_template_collection
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::EmailTemplateCollection
      end
      def x509_certificate_name
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::X509CertificateName
      end
      def user_create_parameters
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::UserCreateParameters
      end
      def backend_properties
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::BackendProperties
      end
      def user_update_parameters
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::UserUpdateParameters
      end
      def backend_update_parameters
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::BackendUpdateParameters
      end
      def gateway_hostname_configuration_collection
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::GatewayHostnameConfigurationCollection
      end
      def backend_collection
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::BackendCollection
      end
      def gateway_token_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::GatewayTokenContract
      end
      def portal_setting_validation_key_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::PortalSettingValidationKeyContract
      end
      def gateway_token_request_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::GatewayTokenRequestContract
      end
      def policy_description_collection
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::PolicyDescriptionCollection
      end
      def gateway_key_regeneration_request_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::GatewayKeyRegenerationRequestContract
      end
      def certificate_collection
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::CertificateCollection
      end
      def gateway_keys_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::GatewayKeysContract
      end
      def resource_sku_capacity
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ResourceSkuCapacity
      end
      def resource_location_data_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ResourceLocationDataContract
      end
      def resource_sku_results
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ResourceSkuResults
      end
      def generate_sso_url_result
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::GenerateSsoUrlResult
      end
      def subscription_key_parameter_names_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::SubscriptionKeyParameterNamesContract
      end
      def gateway_collection
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::GatewayCollection
      end
      def body_diagnostic_settings
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::BodyDiagnosticSettings
      end
      def user_identity_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::UserIdentityContract
      end
      def quota_counter_collection
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::QuotaCounterCollection
      end
      def user_entity_base_parameters
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::UserEntityBaseParameters
      end
      def quota_counter_value_contract_properties
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::QuotaCounterValueContractProperties
      end
      def group_contract_properties
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::GroupContractProperties
      end
      def parameter_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ParameterContract
      end
      def user_identity_collection
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::UserIdentityCollection
      end
      def operation_entity_base_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::OperationEntityBaseContract
      end
      def user_collection
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::UserCollection
      end
      def report_record_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ReportRecordContract
      end
      def group_update_parameters
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::GroupUpdateParameters
      end
      def api_update_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiUpdateContract
      end
      def user_token_parameters
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::UserTokenParameters
      end
      def api_version_set_entity_base
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiVersionSetEntityBase
      end
      def group_create_parameters
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::GroupCreateParameters
      end
      def client_secret_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ClientSecretContract
      end
      def group_collection
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::GroupCollection
      end
      def subscription_update_parameters
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::SubscriptionUpdateParameters
      end
      def identity_provider_base_parameters
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::IdentityProviderBaseParameters
      end
      def backend_proxy_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::BackendProxyContract
      end
      def identity_provider_update_parameters
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::IdentityProviderUpdateParameters
      end
      def backend_service_fabric_cluster_properties
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::BackendServiceFabricClusterProperties
      end
      def user_token_result
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::UserTokenResult
      end
      def registration_delegation_settings_properties
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::RegistrationDelegationSettingsProperties
      end
      def access_information_update_parameters
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::AccessInformationUpdateParameters
      end
      def cache_collection
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::CacheCollection
      end
      def identity_provider_list
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::IdentityProviderList
      end
      def resource_sku
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ResourceSku
      end
      def logger_update_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::LoggerUpdateContract
      end
      def tenant_configuration_sync_state_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::TenantConfigurationSyncStateContract
      end
      def request_report_record_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::RequestReportRecordContract
      end
      def access_information_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::AccessInformationContract
      end
      def quota_counter_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::QuotaCounterContract
      end
      def logger_collection
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::LoggerCollection
      end
      def response_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ResponseContract
      end
      def property_value_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::PropertyValueContract
      end
      def api_revision_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiRevisionContract
      end
      def named_value_entity_base_parameters
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::NamedValueEntityBaseParameters
      end
      def subscription_keys_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::SubscriptionKeysContract
      end
      def save_configuration_parameter
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::SaveConfigurationParameter
      end
      def subscriptions_delegation_settings_properties
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::SubscriptionsDelegationSettingsProperties
      end
      def named_value_update_parameters
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::NamedValueUpdateParameters
      end
      def backend_base_parameters
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::BackendBaseParameters
      end
      def deploy_configuration_parameters
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::DeployConfigurationParameters
      end
      def certificate_create_or_update_parameters
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::CertificateCreateOrUpdateParameters
      end
      def named_value_collection
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::NamedValueCollection
      end
      def pipeline_diagnostic_settings
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::PipelineDiagnosticSettings
      end
      def connectivity_status_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ConnectivityStatusContract
      end
      def subscription_collection
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::SubscriptionCollection
      end
      def network_status_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::NetworkStatusContract
      end
      def authorization_server_contract_base_properties
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::AuthorizationServerContractBaseProperties
      end
      def network_status_contract_by_location
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::NetworkStatusContractByLocation
      end
      def cache_update_parameters
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::CacheUpdateParameters
      end
      def operation_result_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::OperationResultContract
      end
      def product_update_parameters
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ProductUpdateParameters
      end
      def recipient_email_collection
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::RecipientEmailCollection
      end
      def backend_credentials_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::BackendCredentialsContract
      end
      def operation_result_log_item_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::OperationResultLogItemContract
      end
      def api_create_or_update_parameter
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiCreateOrUpdateParameter
      end
      def recipient_user_collection
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::RecipientUserCollection
      end
      def resource_sku_result
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ResourceSkuResult
      end
      def recipients_contract_properties
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::RecipientsContractProperties
      end
      def product_tag_resource_contract_properties
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ProductTagResourceContractProperties
      end
      def api_contract_properties
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiContractProperties
      end
      def api_tag_resource_contract_properties
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiTagResourceContractProperties
      end
      def tag_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::TagContract
      end
      def tag_description_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::TagDescriptionContract
      end
      def issue_attachment_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::IssueAttachmentContract
      end
      def issue_comment_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::IssueCommentContract
      end
      def issue_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::IssueContract
      end
      def diagnostic_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::DiagnosticContract
      end
      def schema_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::SchemaContract
      end
      def policy_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::PolicyContract
      end
      def product_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ProductContract
      end
      def operation_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::OperationContract
      end
      def api_release_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiReleaseContract
      end
      def api_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiContract
      end
      def api_version_set_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiVersionSetContract
      end
      def authorization_server_update_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::AuthorizationServerUpdateContract
      end
      def authorization_server_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::AuthorizationServerContract
      end
      def backend_reconnect_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::BackendReconnectContract
      end
      def backend_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::BackendContract
      end
      def cache_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::CacheContract
      end
      def certificate_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::CertificateContract
      end
      def api_management_service_resource
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiManagementServiceResource
      end
      def api_management_service_update_parameters
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiManagementServiceUpdateParameters
      end
      def email_template_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::EmailTemplateContract
      end
      def association_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::AssociationContract
      end
      def gateway_hostname_configuration_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::GatewayHostnameConfigurationContract
      end
      def gateway_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::GatewayContract
      end
      def user_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::UserContract
      end
      def group_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::GroupContract
      end
      def identity_provider_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::IdentityProviderContract
      end
      def identity_provider_create_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::IdentityProviderCreateContract
      end
      def logger_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::LoggerContract
      end
      def named_value_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::NamedValueContract
      end
      def named_value_create_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::NamedValueCreateContract
      end
      def recipient_email_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::RecipientEmailContract
      end
      def recipient_user_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::RecipientUserContract
      end
      def notification_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::NotificationContract
      end
      def openid_connect_provider_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::OpenidConnectProviderContract
      end
      def policy_description_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::PolicyDescriptionContract
      end
      def portal_delegation_settings
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::PortalDelegationSettings
      end
      def portal_signup_settings
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::PortalSignupSettings
      end
      def portal_signin_settings
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::PortalSigninSettings
      end
      def subscription_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::SubscriptionContract
      end
      def export_result_format
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ExportResultFormat
      end
      def product_state
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ProductState
      end
      def bearer_token_sending_methods
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::BearerTokenSendingMethods
      end
      def protocol
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::Protocol
      end
      def content_format
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ContentFormat
      end
      def soap_api_type
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::SoapApiType
      end
      def api_type
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApiType
      end
      def state
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::State
      end
      def sampling_type
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::SamplingType
      end
      def always_log
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::AlwaysLog
      end
      def http_correlation_protocol
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::HttpCorrelationProtocol
      end
      def verbosity
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::Verbosity
      end
      def policy_content_format
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::PolicyContentFormat
      end
      def versioning_scheme
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::VersioningScheme
      end
      def grant_type
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::GrantType
      end
      def authorization_method
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::AuthorizationMethod
      end
      def client_authentication_method
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ClientAuthenticationMethod
      end
      def bearer_token_sending_method
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::BearerTokenSendingMethod
      end
      def backend_protocol
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::BackendProtocol
      end
      def sku_type
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::SkuType
      end
      def resource_sku_capacity_scale_type
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ResourceSkuCapacityScaleType
      end
      def hostname_type
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::HostnameType
      end
      def virtual_network_type
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::VirtualNetworkType
      end
      def apim_identity_type
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ApimIdentityType
      end
      def name_availability_reason
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::NameAvailabilityReason
      end
      def provisioning_state
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ProvisioningState
      end
      def key_type
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::KeyType
      end
      def app_type
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::AppType
      end
      def confirmation
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::Confirmation
      end
      def user_state
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::UserState
      end
      def group_type
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::GroupType
      end
      def identity_provider_type
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::IdentityProviderType
      end
      def logger_type
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::LoggerType
      end
      def connectivity_status_type
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ConnectivityStatusType
      end
      def subscription_state
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::SubscriptionState
      end
      def async_operation_status
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::AsyncOperationStatus
      end
      def notification_name
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::NotificationName
      end
      def policy_export_format
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::PolicyExportFormat
      end
      def template_name
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::TemplateName
      end
      def policy_scope_contract
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::PolicyScopeContract
      end
      def export_format
        Azure::ApiManagement::Mgmt::V2019_12_01::Models::ExportFormat
      end
    end
  end
end
