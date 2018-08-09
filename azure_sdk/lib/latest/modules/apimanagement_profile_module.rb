# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_api_management'

module Azure::Profiles::Latest
  module ApiManagement
    module Mgmt
      DelegationSettings = Azure::ApiManagement::Mgmt::V2018_01_01_preview::DelegationSettings
      Product = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Product
      ProductApi = Azure::ApiManagement::Mgmt::V2018_01_01_preview::ProductApi
      ProductGroup = Azure::ApiManagement::Mgmt::V2018_01_01_preview::ProductGroup
      ProductSubscriptions = Azure::ApiManagement::Mgmt::V2018_01_01_preview::ProductSubscriptions
      Group = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Group
      ProductPolicy = Azure::ApiManagement::Mgmt::V2018_01_01_preview::ProductPolicy
      Property = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Property
      QuotaByCounterKeys = Azure::ApiManagement::Mgmt::V2018_01_01_preview::QuotaByCounterKeys
      QuotaByPeriodKeys = Azure::ApiManagement::Mgmt::V2018_01_01_preview::QuotaByPeriodKeys
      Reports = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Reports
      TagResource = Azure::ApiManagement::Mgmt::V2018_01_01_preview::TagResource
      OpenIdConnectProvider = Azure::ApiManagement::Mgmt::V2018_01_01_preview::OpenIdConnectProvider
      OperationOperations = Azure::ApiManagement::Mgmt::V2018_01_01_preview::OperationOperations
      TagDescription = Azure::ApiManagement::Mgmt::V2018_01_01_preview::TagDescription
      TenantAccessGit = Azure::ApiManagement::Mgmt::V2018_01_01_preview::TenantAccessGit
      TenantAccess = Azure::ApiManagement::Mgmt::V2018_01_01_preview::TenantAccess
      User = Azure::ApiManagement::Mgmt::V2018_01_01_preview::User
      TenantConfiguration = Azure::ApiManagement::Mgmt::V2018_01_01_preview::TenantConfiguration
      UserSubscription = Azure::ApiManagement::Mgmt::V2018_01_01_preview::UserSubscription
      UserGroup = Azure::ApiManagement::Mgmt::V2018_01_01_preview::UserGroup
      ApiVersionSet = Azure::ApiManagement::Mgmt::V2018_01_01_preview::ApiVersionSet
      UserIdentities = Azure::ApiManagement::Mgmt::V2018_01_01_preview::UserIdentities
      Subscription = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Subscription
      ApiExport = Azure::ApiManagement::Mgmt::V2018_01_01_preview::ApiExport
      Policy = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Policy
      Tag = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Tag
      Logger = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Logger
      PolicySnippets = Azure::ApiManagement::Mgmt::V2018_01_01_preview::PolicySnippets
      Regions = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Regions
      Api = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Api
      ApiRevisions = Azure::ApiManagement::Mgmt::V2018_01_01_preview::ApiRevisions
      ApiRelease = Azure::ApiManagement::Mgmt::V2018_01_01_preview::ApiRelease
      ApiOperation = Azure::ApiManagement::Mgmt::V2018_01_01_preview::ApiOperation
      ApiOperationPolicy = Azure::ApiManagement::Mgmt::V2018_01_01_preview::ApiOperationPolicy
      ApiProduct = Azure::ApiManagement::Mgmt::V2018_01_01_preview::ApiProduct
      ApiPolicy = Azure::ApiManagement::Mgmt::V2018_01_01_preview::ApiPolicy
      ApiSchema = Azure::ApiManagement::Mgmt::V2018_01_01_preview::ApiSchema
      ApiDiagnostic = Azure::ApiManagement::Mgmt::V2018_01_01_preview::ApiDiagnostic
      ApiDiagnosticLogger = Azure::ApiManagement::Mgmt::V2018_01_01_preview::ApiDiagnosticLogger
      AuthorizationServer = Azure::ApiManagement::Mgmt::V2018_01_01_preview::AuthorizationServer
      Backend = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Backend
      ApiManagementOperations = Azure::ApiManagement::Mgmt::V2018_01_01_preview::ApiManagementOperations
      ApiManagementService = Azure::ApiManagement::Mgmt::V2018_01_01_preview::ApiManagementService
      Diagnostic = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Diagnostic
      DiagnosticLogger = Azure::ApiManagement::Mgmt::V2018_01_01_preview::DiagnosticLogger
      EmailTemplate = Azure::ApiManagement::Mgmt::V2018_01_01_preview::EmailTemplate
      GroupUser = Azure::ApiManagement::Mgmt::V2018_01_01_preview::GroupUser
      IdentityProvider = Azure::ApiManagement::Mgmt::V2018_01_01_preview::IdentityProvider
      Certificate = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Certificate
      Notification = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Notification
      NotificationRecipientEmail = Azure::ApiManagement::Mgmt::V2018_01_01_preview::NotificationRecipientEmail
      NetworkStatus = Azure::ApiManagement::Mgmt::V2018_01_01_preview::NetworkStatus
      NotificationRecipientUser = Azure::ApiManagement::Mgmt::V2018_01_01_preview::NotificationRecipientUser
      SignInSettings = Azure::ApiManagement::Mgmt::V2018_01_01_preview::SignInSettings
      SignUpSettings = Azure::ApiManagement::Mgmt::V2018_01_01_preview::SignUpSettings

      module Models
        SubscriptionState = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::SubscriptionState
        OperationDisplay = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::OperationDisplay
        OperationListResult = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::OperationListResult
        ErrorResponse = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ErrorResponse
        Operation = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::Operation
        AsyncOperationStatus = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::AsyncOperationStatus
        ApiManagementServiceNameAvailabilityResult = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiManagementServiceNameAvailabilityResult
        ApiManagementServiceApplyNetworkConfigurationParameters = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiManagementServiceApplyNetworkConfigurationParameters
        ApiManagementServiceUploadCertificateParameters = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiManagementServiceUploadCertificateParameters
        PolicyCollection = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::PolicyCollection
        HostnameConfigurationOld = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::HostnameConfigurationOld
        PolicySnippetsCollection = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::PolicySnippetsCollection
        ApiManagementServiceUpdateHostnameParameters = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiManagementServiceUpdateHostnameParameters
        RegionListResult = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::RegionListResult
        ApiExportResult = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiExportResult
        AdditionalLocation = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::AdditionalLocation
        ApiManagementServiceBackupRestoreParameters = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiManagementServiceBackupRestoreParameters
        ApiCreateOrUpdatePropertiesWsdlSelector = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiCreateOrUpdatePropertiesWsdlSelector
        ApiManagementServiceBaseProperties = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiManagementServiceBaseProperties
        ApiUpdateContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiUpdateContract
        ApiManagementServiceIdentity = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiManagementServiceIdentity
        AuthenticationSettingsContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::AuthenticationSettingsContract
        DeployConfigurationParameters = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::DeployConfigurationParameters
        ApiEntityBaseContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiEntityBaseContract
        ApimResource = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApimResource
        ApiRevisionCollection = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiRevisionCollection
        AccessInformationUpdateParameters = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::AccessInformationUpdateParameters
        ApiVersionSetUpdateParameters = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiVersionSetUpdateParameters
        ApiManagementServiceListResult = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiManagementServiceListResult
        ApiVersionSetEntityBase = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiVersionSetEntityBase
        ApiManagementServiceGetSsoTokenResult = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiManagementServiceGetSsoTokenResult
        ParameterContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ParameterContract
        ApiManagementServiceCheckNameAvailabilityParameters = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiManagementServiceCheckNameAvailabilityParameters
        RequestContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::RequestContract
        ErrorFieldContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ErrorFieldContract
        OperationEntityBaseContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::OperationEntityBaseContract
        OperationUpdateContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::OperationUpdateContract
        QuotaCounterValueContractProperties = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::QuotaCounterValueContractProperties
        SchemaCollection = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::SchemaCollection
        PolicySnippetContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::PolicySnippetContract
        LoggerCollection = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::LoggerCollection
        RegionContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::RegionContract
        DiagnosticCollection = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::DiagnosticCollection
        UserTokenParameters = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::UserTokenParameters
        ApiVersionSetContractDetails = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiVersionSetContractDetails
        UserIdentityCollection = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::UserIdentityCollection
        AccessInformationContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::AccessInformationContract
        TagResourceContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::TagResourceContract
        UserCreateParameters = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::UserCreateParameters
        EmailTemplateParametersContractProperties = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::EmailTemplateParametersContractProperties
        GenerateSsoUrlResult = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::GenerateSsoUrlResult
        TagDescriptionCreateParameters = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::TagDescriptionCreateParameters
        TenantConfigurationSyncStateContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::TenantConfigurationSyncStateContract
        EmailTemplateCollection = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::EmailTemplateCollection
        AuthorizationServerContractBaseProperties = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::AuthorizationServerContractBaseProperties
        EmailTemplateUpdateParameters = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::EmailTemplateUpdateParameters
        X509CertificateName = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::X509CertificateName
        GroupContractProperties = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::GroupContractProperties
        BackendProperties = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::BackendProperties
        TagDescriptionCollection = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::TagDescriptionCollection
        BackendProxyContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::BackendProxyContract
        GroupCollection = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::GroupCollection
        BackendBaseParameters = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::BackendBaseParameters
        GroupCreateParameters = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::GroupCreateParameters
        BackendCollection = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::BackendCollection
        GroupUpdateParameters = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::GroupUpdateParameters
        OperationResultContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::OperationResultContract
        UserIdentityContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::UserIdentityContract
        CertificateCollection = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::CertificateCollection
        UserEntityBaseParameters = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::UserEntityBaseParameters
        CertificateInformation = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::CertificateInformation
        TagCreateUpdateParameters = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::TagCreateUpdateParameters
        HostnameConfiguration = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::HostnameConfiguration
        UserCollection = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::UserCollection
        ApiManagementServiceSkuProperties = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiManagementServiceSkuProperties
        TagCollection = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::TagCollection
        ApiCreateOrUpdateParameter = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiCreateOrUpdateParameter
        IdentityProviderList = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::IdentityProviderList
        SubscriptionKeyParameterNamesContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::SubscriptionKeyParameterNamesContract
        IdentityProviderUpdateParameters = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::IdentityProviderUpdateParameters
        ApiRevisionInfoContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiRevisionInfoContract
        IdentityProviderBaseParameters = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::IdentityProviderBaseParameters
        OperationCollection = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::OperationCollection
        LoggerUpdateContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::LoggerUpdateContract
        ResponseContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ResponseContract
        RecipientsContractProperties = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::RecipientsContractProperties
        UserUpdateParameters = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::UserUpdateParameters
        SubscriptionUpdateParameters = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::SubscriptionUpdateParameters
        ProductEntityBaseParameters = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ProductEntityBaseParameters
        NotificationCollection = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::NotificationCollection
        TagTagResourceContractProperties = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::TagTagResourceContractProperties
        SubscriptionCreateParameters = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::SubscriptionCreateParameters
        ProductCollection = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ProductCollection
        RecipientUserCollection = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::RecipientUserCollection
        TokenBodyParameterContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::TokenBodyParameterContract
        RequestReportCollection = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::RequestReportCollection
        BackendServiceFabricClusterProperties = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::BackendServiceFabricClusterProperties
        RecipientEmailCollection = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::RecipientEmailCollection
        BackendTlsProperties = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::BackendTlsProperties
        ConnectivityStatusContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ConnectivityStatusContract
        BackendUpdateParameters = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::BackendUpdateParameters
        NetworkStatusContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::NetworkStatusContract
        CertificateCreateOrUpdateParameters = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::CertificateCreateOrUpdateParameters
        NetworkStatusContractByLocation = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::NetworkStatusContractByLocation
        VirtualNetworkConfiguration = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::VirtualNetworkConfiguration
        RequestReportRecordContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::RequestReportRecordContract
        OAuth2AuthenticationSettingsContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::OAuth2AuthenticationSettingsContract
        OpenIdConnectProviderCollection = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::OpenIdConnectProviderCollection
        ApiReleaseCollection = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiReleaseCollection
        OpenidConnectProviderUpdateContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::OpenidConnectProviderUpdateContract
        ApiVersionSetCollection = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiVersionSetCollection
        ReportCollection = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ReportCollection
        OperationTagResourceContractProperties = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::OperationTagResourceContractProperties
        TermsOfServiceProperties = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::TermsOfServiceProperties
        AuthorizationServerCollection = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::AuthorizationServerCollection
        ReportRecordContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ReportRecordContract
        BackendCredentialsContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::BackendCredentialsContract
        SubscriptionsDelegationSettingsProperties = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::SubscriptionsDelegationSettingsProperties
        OperationResultLogItemContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::OperationResultLogItemContract
        RegistrationDelegationSettingsProperties = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::RegistrationDelegationSettingsProperties
        ApiCollection = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiCollection
        QuotaCounterValueContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::QuotaCounterValueContract
        RepresentationContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::RepresentationContract
        ProductUpdateParameters = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ProductUpdateParameters
        TagResourceCollection = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::TagResourceCollection
        QuotaCounterCollection = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::QuotaCounterCollection
        SaveConfigurationParameter = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::SaveConfigurationParameter
        SubscriptionCollection = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::SubscriptionCollection
        ApiRevisionContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiRevisionContract
        QuotaCounterContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::QuotaCounterContract
        BackendAuthorizationHeaderCredentials = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::BackendAuthorizationHeaderCredentials
        PropertyCollection = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::PropertyCollection
        UserTokenResult = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::UserTokenResult
        PropertyUpdateParameters = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::PropertyUpdateParameters
        CertificateConfiguration = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::CertificateConfiguration
        PropertyEntityBaseParameters = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::PropertyEntityBaseParameters
        PolicyContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::PolicyContract
        ApiContractProperties = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiContractProperties
        ApiContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiContract
        ApiReleaseContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiReleaseContract
        OperationContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::OperationContract
        SchemaContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::SchemaContract
        LoggerContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::LoggerContract
        DiagnosticContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::DiagnosticContract
        ProductTagResourceContractProperties = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ProductTagResourceContractProperties
        ApiTagResourceContractProperties = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiTagResourceContractProperties
        ProductContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ProductContract
        AuthorizationServerContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::AuthorizationServerContract
        AuthorizationServerUpdateContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::AuthorizationServerUpdateContract
        BackendContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::BackendContract
        BackendReconnectContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::BackendReconnectContract
        CertificateContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::CertificateContract
        ApiManagementServiceResource = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiManagementServiceResource
        ApiManagementServiceUpdateParameters = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiManagementServiceUpdateParameters
        EmailTemplateContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::EmailTemplateContract
        GroupContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::GroupContract
        UserContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::UserContract
        IdentityProviderContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::IdentityProviderContract
        NotificationContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::NotificationContract
        RecipientUserContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::RecipientUserContract
        RecipientEmailContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::RecipientEmailContract
        OpenidConnectProviderContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::OpenidConnectProviderContract
        PortalSigninSettings = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::PortalSigninSettings
        PortalSignupSettings = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::PortalSignupSettings
        PortalDelegationSettings = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::PortalDelegationSettings
        SubscriptionContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::SubscriptionContract
        PropertyContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::PropertyContract
        TagContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::TagContract
        TagDescriptionContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::TagDescriptionContract
        ApiVersionSetContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiVersionSetContract
        PolicyContentFormat = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::PolicyContentFormat
        ContentFormat = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ContentFormat
        SoapApiType = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::SoapApiType
        ApiType = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiType
        LoggerType = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::LoggerType
        ProductState = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ProductState
        GrantType = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::GrantType
        AuthorizationMethod = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::AuthorizationMethod
        ClientAuthenticationMethod = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ClientAuthenticationMethod
        BearerTokenSendingMethod = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::BearerTokenSendingMethod
        BackendProtocol = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::BackendProtocol
        HostnameType = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::HostnameType
        SkuType = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::SkuType
        VirtualNetworkType = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::VirtualNetworkType
        NameAvailabilityReason = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::NameAvailabilityReason
        GroupType = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::GroupType
        Confirmation = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::Confirmation
        UserState = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::UserState
        IdentityProviderType = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::IdentityProviderType
        Protocol = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::Protocol
        ConnectivityStatusType = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ConnectivityStatusType
        KeyType = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::KeyType
        VersioningScheme = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::VersioningScheme
        TemplateName = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::TemplateName
        NotificationName = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::NotificationName
        PolicyScopeContract = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::PolicyScopeContract
        ExportFormat = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ExportFormat
        Resource = Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::Resource
      end

      class ApiManagementManagementClass
        attr_reader :delegation_settings, :product, :product_api, :product_group, :product_subscriptions, :group, :product_policy, :property, :quota_by_counter_keys, :quota_by_period_keys, :reports, :tag_resource, :open_id_connect_provider, :operation_operations, :tag_description, :tenant_access_git, :tenant_access, :user, :tenant_configuration, :user_subscription, :user_group, :api_version_set, :user_identities, :subscription, :api_export, :policy, :tag, :logger, :policy_snippets, :regions, :api, :api_revisions, :api_release, :api_operation, :api_operation_policy, :api_product, :api_policy, :api_schema, :api_diagnostic, :api_diagnostic_logger, :authorization_server, :backend, :api_management_operations, :api_management_service, :diagnostic, :diagnostic_logger, :email_template, :group_user, :identity_provider, :certificate, :notification, :notification_recipient_email, :network_status, :notification_recipient_user, :sign_in_settings, :sign_up_settings, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::ApiManagement::Mgmt::V2018_01_01_preview::ApiManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @delegation_settings = @client_0.delegation_settings
          @product = @client_0.product
          @product_api = @client_0.product_api
          @product_group = @client_0.product_group
          @product_subscriptions = @client_0.product_subscriptions
          @group = @client_0.group
          @product_policy = @client_0.product_policy
          @property = @client_0.property
          @quota_by_counter_keys = @client_0.quota_by_counter_keys
          @quota_by_period_keys = @client_0.quota_by_period_keys
          @reports = @client_0.reports
          @tag_resource = @client_0.tag_resource
          @open_id_connect_provider = @client_0.open_id_connect_provider
          @operation_operations = @client_0.operation_operations
          @tag_description = @client_0.tag_description
          @tenant_access_git = @client_0.tenant_access_git
          @tenant_access = @client_0.tenant_access
          @user = @client_0.user
          @tenant_configuration = @client_0.tenant_configuration
          @user_subscription = @client_0.user_subscription
          @user_group = @client_0.user_group
          @api_version_set = @client_0.api_version_set
          @user_identities = @client_0.user_identities
          @subscription = @client_0.subscription
          @api_export = @client_0.api_export
          @policy = @client_0.policy
          @tag = @client_0.tag
          @logger = @client_0.logger
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
          @api_diagnostic_logger = @client_0.api_diagnostic_logger
          @authorization_server = @client_0.authorization_server
          @backend = @client_0.backend
          @api_management_operations = @client_0.api_management_operations
          @api_management_service = @client_0.api_management_service
          @diagnostic = @client_0.diagnostic
          @diagnostic_logger = @client_0.diagnostic_logger
          @email_template = @client_0.email_template
          @group_user = @client_0.group_user
          @identity_provider = @client_0.identity_provider
          @certificate = @client_0.certificate
          @notification = @client_0.notification
          @notification_recipient_email = @client_0.notification_recipient_email
          @network_status = @client_0.network_status
          @notification_recipient_user = @client_0.notification_recipient_user
          @sign_in_settings = @client_0.sign_in_settings
          @sign_up_settings = @client_0.sign_up_settings

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
          def subscription_state
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::SubscriptionState
          end
          def operation_display
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::OperationDisplay
          end
          def operation_list_result
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::OperationListResult
          end
          def error_response
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ErrorResponse
          end
          def operation
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::Operation
          end
          def async_operation_status
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::AsyncOperationStatus
          end
          def api_management_service_name_availability_result
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiManagementServiceNameAvailabilityResult
          end
          def api_management_service_apply_network_configuration_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiManagementServiceApplyNetworkConfigurationParameters
          end
          def api_management_service_upload_certificate_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiManagementServiceUploadCertificateParameters
          end
          def policy_collection
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::PolicyCollection
          end
          def hostname_configuration_old
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::HostnameConfigurationOld
          end
          def policy_snippets_collection
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::PolicySnippetsCollection
          end
          def api_management_service_update_hostname_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiManagementServiceUpdateHostnameParameters
          end
          def region_list_result
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::RegionListResult
          end
          def api_export_result
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiExportResult
          end
          def additional_location
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::AdditionalLocation
          end
          def api_management_service_backup_restore_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiManagementServiceBackupRestoreParameters
          end
          def api_create_or_update_properties_wsdl_selector
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiCreateOrUpdatePropertiesWsdlSelector
          end
          def api_management_service_base_properties
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiManagementServiceBaseProperties
          end
          def api_update_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiUpdateContract
          end
          def api_management_service_identity
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiManagementServiceIdentity
          end
          def authentication_settings_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::AuthenticationSettingsContract
          end
          def deploy_configuration_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::DeployConfigurationParameters
          end
          def api_entity_base_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiEntityBaseContract
          end
          def apim_resource
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApimResource
          end
          def api_revision_collection
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiRevisionCollection
          end
          def access_information_update_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::AccessInformationUpdateParameters
          end
          def api_version_set_update_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiVersionSetUpdateParameters
          end
          def api_management_service_list_result
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiManagementServiceListResult
          end
          def api_version_set_entity_base
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiVersionSetEntityBase
          end
          def api_management_service_get_sso_token_result
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiManagementServiceGetSsoTokenResult
          end
          def parameter_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ParameterContract
          end
          def api_management_service_check_name_availability_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiManagementServiceCheckNameAvailabilityParameters
          end
          def request_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::RequestContract
          end
          def error_field_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ErrorFieldContract
          end
          def operation_entity_base_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::OperationEntityBaseContract
          end
          def operation_update_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::OperationUpdateContract
          end
          def quota_counter_value_contract_properties
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::QuotaCounterValueContractProperties
          end
          def schema_collection
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::SchemaCollection
          end
          def policy_snippet_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::PolicySnippetContract
          end
          def logger_collection
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::LoggerCollection
          end
          def region_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::RegionContract
          end
          def diagnostic_collection
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::DiagnosticCollection
          end
          def user_token_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::UserTokenParameters
          end
          def api_version_set_contract_details
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiVersionSetContractDetails
          end
          def user_identity_collection
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::UserIdentityCollection
          end
          def access_information_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::AccessInformationContract
          end
          def tag_resource_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::TagResourceContract
          end
          def user_create_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::UserCreateParameters
          end
          def email_template_parameters_contract_properties
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::EmailTemplateParametersContractProperties
          end
          def generate_sso_url_result
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::GenerateSsoUrlResult
          end
          def tag_description_create_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::TagDescriptionCreateParameters
          end
          def tenant_configuration_sync_state_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::TenantConfigurationSyncStateContract
          end
          def email_template_collection
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::EmailTemplateCollection
          end
          def authorization_server_contract_base_properties
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::AuthorizationServerContractBaseProperties
          end
          def email_template_update_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::EmailTemplateUpdateParameters
          end
          def x509_certificate_name
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::X509CertificateName
          end
          def group_contract_properties
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::GroupContractProperties
          end
          def backend_properties
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::BackendProperties
          end
          def tag_description_collection
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::TagDescriptionCollection
          end
          def backend_proxy_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::BackendProxyContract
          end
          def group_collection
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::GroupCollection
          end
          def backend_base_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::BackendBaseParameters
          end
          def group_create_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::GroupCreateParameters
          end
          def backend_collection
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::BackendCollection
          end
          def group_update_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::GroupUpdateParameters
          end
          def operation_result_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::OperationResultContract
          end
          def user_identity_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::UserIdentityContract
          end
          def certificate_collection
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::CertificateCollection
          end
          def user_entity_base_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::UserEntityBaseParameters
          end
          def certificate_information
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::CertificateInformation
          end
          def tag_create_update_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::TagCreateUpdateParameters
          end
          def hostname_configuration
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::HostnameConfiguration
          end
          def user_collection
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::UserCollection
          end
          def api_management_service_sku_properties
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiManagementServiceSkuProperties
          end
          def tag_collection
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::TagCollection
          end
          def api_create_or_update_parameter
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiCreateOrUpdateParameter
          end
          def identity_provider_list
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::IdentityProviderList
          end
          def subscription_key_parameter_names_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::SubscriptionKeyParameterNamesContract
          end
          def identity_provider_update_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::IdentityProviderUpdateParameters
          end
          def api_revision_info_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiRevisionInfoContract
          end
          def identity_provider_base_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::IdentityProviderBaseParameters
          end
          def operation_collection
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::OperationCollection
          end
          def logger_update_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::LoggerUpdateContract
          end
          def response_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ResponseContract
          end
          def recipients_contract_properties
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::RecipientsContractProperties
          end
          def user_update_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::UserUpdateParameters
          end
          def subscription_update_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::SubscriptionUpdateParameters
          end
          def product_entity_base_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ProductEntityBaseParameters
          end
          def notification_collection
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::NotificationCollection
          end
          def tag_tag_resource_contract_properties
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::TagTagResourceContractProperties
          end
          def subscription_create_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::SubscriptionCreateParameters
          end
          def product_collection
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ProductCollection
          end
          def recipient_user_collection
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::RecipientUserCollection
          end
          def token_body_parameter_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::TokenBodyParameterContract
          end
          def request_report_collection
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::RequestReportCollection
          end
          def backend_service_fabric_cluster_properties
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::BackendServiceFabricClusterProperties
          end
          def recipient_email_collection
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::RecipientEmailCollection
          end
          def backend_tls_properties
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::BackendTlsProperties
          end
          def connectivity_status_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ConnectivityStatusContract
          end
          def backend_update_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::BackendUpdateParameters
          end
          def network_status_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::NetworkStatusContract
          end
          def certificate_create_or_update_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::CertificateCreateOrUpdateParameters
          end
          def network_status_contract_by_location
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::NetworkStatusContractByLocation
          end
          def virtual_network_configuration
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::VirtualNetworkConfiguration
          end
          def request_report_record_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::RequestReportRecordContract
          end
          def oauth2_authentication_settings_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::OAuth2AuthenticationSettingsContract
          end
          def open_id_connect_provider_collection
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::OpenIdConnectProviderCollection
          end
          def api_release_collection
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiReleaseCollection
          end
          def openid_connect_provider_update_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::OpenidConnectProviderUpdateContract
          end
          def api_version_set_collection
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiVersionSetCollection
          end
          def report_collection
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ReportCollection
          end
          def operation_tag_resource_contract_properties
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::OperationTagResourceContractProperties
          end
          def terms_of_service_properties
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::TermsOfServiceProperties
          end
          def authorization_server_collection
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::AuthorizationServerCollection
          end
          def report_record_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ReportRecordContract
          end
          def backend_credentials_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::BackendCredentialsContract
          end
          def subscriptions_delegation_settings_properties
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::SubscriptionsDelegationSettingsProperties
          end
          def operation_result_log_item_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::OperationResultLogItemContract
          end
          def registration_delegation_settings_properties
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::RegistrationDelegationSettingsProperties
          end
          def api_collection
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiCollection
          end
          def quota_counter_value_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::QuotaCounterValueContract
          end
          def representation_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::RepresentationContract
          end
          def product_update_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ProductUpdateParameters
          end
          def tag_resource_collection
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::TagResourceCollection
          end
          def quota_counter_collection
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::QuotaCounterCollection
          end
          def save_configuration_parameter
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::SaveConfigurationParameter
          end
          def subscription_collection
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::SubscriptionCollection
          end
          def api_revision_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiRevisionContract
          end
          def quota_counter_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::QuotaCounterContract
          end
          def backend_authorization_header_credentials
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::BackendAuthorizationHeaderCredentials
          end
          def property_collection
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::PropertyCollection
          end
          def user_token_result
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::UserTokenResult
          end
          def property_update_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::PropertyUpdateParameters
          end
          def certificate_configuration
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::CertificateConfiguration
          end
          def property_entity_base_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::PropertyEntityBaseParameters
          end
          def policy_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::PolicyContract
          end
          def api_contract_properties
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiContractProperties
          end
          def api_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiContract
          end
          def api_release_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiReleaseContract
          end
          def operation_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::OperationContract
          end
          def schema_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::SchemaContract
          end
          def logger_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::LoggerContract
          end
          def diagnostic_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::DiagnosticContract
          end
          def product_tag_resource_contract_properties
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ProductTagResourceContractProperties
          end
          def api_tag_resource_contract_properties
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiTagResourceContractProperties
          end
          def product_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ProductContract
          end
          def authorization_server_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::AuthorizationServerContract
          end
          def authorization_server_update_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::AuthorizationServerUpdateContract
          end
          def backend_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::BackendContract
          end
          def backend_reconnect_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::BackendReconnectContract
          end
          def certificate_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::CertificateContract
          end
          def api_management_service_resource
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiManagementServiceResource
          end
          def api_management_service_update_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiManagementServiceUpdateParameters
          end
          def email_template_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::EmailTemplateContract
          end
          def group_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::GroupContract
          end
          def user_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::UserContract
          end
          def identity_provider_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::IdentityProviderContract
          end
          def notification_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::NotificationContract
          end
          def recipient_user_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::RecipientUserContract
          end
          def recipient_email_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::RecipientEmailContract
          end
          def openid_connect_provider_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::OpenidConnectProviderContract
          end
          def portal_signin_settings
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::PortalSigninSettings
          end
          def portal_signup_settings
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::PortalSignupSettings
          end
          def portal_delegation_settings
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::PortalDelegationSettings
          end
          def subscription_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::SubscriptionContract
          end
          def property_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::PropertyContract
          end
          def tag_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::TagContract
          end
          def tag_description_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::TagDescriptionContract
          end
          def api_version_set_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiVersionSetContract
          end
          def policy_content_format
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::PolicyContentFormat
          end
          def content_format
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ContentFormat
          end
          def soap_api_type
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::SoapApiType
          end
          def api_type
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ApiType
          end
          def logger_type
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::LoggerType
          end
          def product_state
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ProductState
          end
          def grant_type
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::GrantType
          end
          def authorization_method
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::AuthorizationMethod
          end
          def client_authentication_method
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ClientAuthenticationMethod
          end
          def bearer_token_sending_method
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::BearerTokenSendingMethod
          end
          def backend_protocol
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::BackendProtocol
          end
          def hostname_type
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::HostnameType
          end
          def sku_type
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::SkuType
          end
          def virtual_network_type
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::VirtualNetworkType
          end
          def name_availability_reason
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::NameAvailabilityReason
          end
          def group_type
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::GroupType
          end
          def confirmation
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::Confirmation
          end
          def user_state
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::UserState
          end
          def identity_provider_type
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::IdentityProviderType
          end
          def protocol
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::Protocol
          end
          def connectivity_status_type
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ConnectivityStatusType
          end
          def key_type
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::KeyType
          end
          def versioning_scheme
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::VersioningScheme
          end
          def template_name
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::TemplateName
          end
          def notification_name
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::NotificationName
          end
          def policy_scope_contract
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::PolicyScopeContract
          end
          def export_format
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::ExportFormat
          end
          def resource
            Azure::ApiManagement::Mgmt::V2018_01_01_preview::Models::Resource
          end
        end
      end
    end
  end
end
