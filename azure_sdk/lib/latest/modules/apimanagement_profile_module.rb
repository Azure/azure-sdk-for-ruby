# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_api_management'

module Azure::Profiles::Latest
  module ApiManagement
    module Mgmt
      Policy = Azure::ApiManagement::Mgmt::V2018_01_01::Policy
      PolicySnippets = Azure::ApiManagement::Mgmt::V2018_01_01::PolicySnippets
      Regions = Azure::ApiManagement::Mgmt::V2018_01_01::Regions
      Api = Azure::ApiManagement::Mgmt::V2018_01_01::Api
      ApiRevisions = Azure::ApiManagement::Mgmt::V2018_01_01::ApiRevisions
      ApiRelease = Azure::ApiManagement::Mgmt::V2018_01_01::ApiRelease
      ApiOperation = Azure::ApiManagement::Mgmt::V2018_01_01::ApiOperation
      ApiOperationPolicy = Azure::ApiManagement::Mgmt::V2018_01_01::ApiOperationPolicy
      ApiProduct = Azure::ApiManagement::Mgmt::V2018_01_01::ApiProduct
      ApiPolicy = Azure::ApiManagement::Mgmt::V2018_01_01::ApiPolicy
      ApiSchema = Azure::ApiManagement::Mgmt::V2018_01_01::ApiSchema
      ApiDiagnostic = Azure::ApiManagement::Mgmt::V2018_01_01::ApiDiagnostic
      ApiDiagnosticLogger = Azure::ApiManagement::Mgmt::V2018_01_01::ApiDiagnosticLogger
      AuthorizationServer = Azure::ApiManagement::Mgmt::V2018_01_01::AuthorizationServer
      Backend = Azure::ApiManagement::Mgmt::V2018_01_01::Backend
      Certificate = Azure::ApiManagement::Mgmt::V2018_01_01::Certificate
      ApiManagementOperations = Azure::ApiManagement::Mgmt::V2018_01_01::ApiManagementOperations
      ApiManagementService = Azure::ApiManagement::Mgmt::V2018_01_01::ApiManagementService
      Diagnostic = Azure::ApiManagement::Mgmt::V2018_01_01::Diagnostic
      DiagnosticLogger = Azure::ApiManagement::Mgmt::V2018_01_01::DiagnosticLogger
      EmailTemplate = Azure::ApiManagement::Mgmt::V2018_01_01::EmailTemplate
      Group = Azure::ApiManagement::Mgmt::V2018_01_01::Group
      GroupUser = Azure::ApiManagement::Mgmt::V2018_01_01::GroupUser
      IdentityProvider = Azure::ApiManagement::Mgmt::V2018_01_01::IdentityProvider
      Logger = Azure::ApiManagement::Mgmt::V2018_01_01::Logger
      Notification = Azure::ApiManagement::Mgmt::V2018_01_01::Notification
      NotificationRecipientUser = Azure::ApiManagement::Mgmt::V2018_01_01::NotificationRecipientUser
      NotificationRecipientEmail = Azure::ApiManagement::Mgmt::V2018_01_01::NotificationRecipientEmail
      NetworkStatus = Azure::ApiManagement::Mgmt::V2018_01_01::NetworkStatus
      OpenIdConnectProvider = Azure::ApiManagement::Mgmt::V2018_01_01::OpenIdConnectProvider
      SignInSettings = Azure::ApiManagement::Mgmt::V2018_01_01::SignInSettings
      SignUpSettings = Azure::ApiManagement::Mgmt::V2018_01_01::SignUpSettings
      DelegationSettings = Azure::ApiManagement::Mgmt::V2018_01_01::DelegationSettings
      Product = Azure::ApiManagement::Mgmt::V2018_01_01::Product
      ProductApi = Azure::ApiManagement::Mgmt::V2018_01_01::ProductApi
      ProductGroup = Azure::ApiManagement::Mgmt::V2018_01_01::ProductGroup
      ProductSubscriptions = Azure::ApiManagement::Mgmt::V2018_01_01::ProductSubscriptions
      ProductPolicy = Azure::ApiManagement::Mgmt::V2018_01_01::ProductPolicy
      Property = Azure::ApiManagement::Mgmt::V2018_01_01::Property
      QuotaByCounterKeys = Azure::ApiManagement::Mgmt::V2018_01_01::QuotaByCounterKeys
      QuotaByPeriodKeys = Azure::ApiManagement::Mgmt::V2018_01_01::QuotaByPeriodKeys
      Reports = Azure::ApiManagement::Mgmt::V2018_01_01::Reports
      Subscription = Azure::ApiManagement::Mgmt::V2018_01_01::Subscription
      TagResource = Azure::ApiManagement::Mgmt::V2018_01_01::TagResource
      Tag = Azure::ApiManagement::Mgmt::V2018_01_01::Tag
      TagDescription = Azure::ApiManagement::Mgmt::V2018_01_01::TagDescription
      OperationOperations = Azure::ApiManagement::Mgmt::V2018_01_01::OperationOperations
      TenantAccess = Azure::ApiManagement::Mgmt::V2018_01_01::TenantAccess
      TenantAccessGit = Azure::ApiManagement::Mgmt::V2018_01_01::TenantAccessGit
      TenantConfiguration = Azure::ApiManagement::Mgmt::V2018_01_01::TenantConfiguration
      User = Azure::ApiManagement::Mgmt::V2018_01_01::User
      UserGroup = Azure::ApiManagement::Mgmt::V2018_01_01::UserGroup
      UserSubscription = Azure::ApiManagement::Mgmt::V2018_01_01::UserSubscription
      UserIdentities = Azure::ApiManagement::Mgmt::V2018_01_01::UserIdentities
      ApiVersionSet = Azure::ApiManagement::Mgmt::V2018_01_01::ApiVersionSet
      ApiExport = Azure::ApiManagement::Mgmt::V2018_01_01::ApiExport

      module Models
        ApiManagementServiceNameAvailabilityResult = Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiManagementServiceNameAvailabilityResult
        ApiManagementServiceApplyNetworkConfigurationParameters = Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiManagementServiceApplyNetworkConfigurationParameters
        ErrorResponse = Azure::ApiManagement::Mgmt::V2018_01_01::Models::ErrorResponse
        ApiManagementServiceUploadCertificateParameters = Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiManagementServiceUploadCertificateParameters
        PolicyCollection = Azure::ApiManagement::Mgmt::V2018_01_01::Models::PolicyCollection
        HostnameConfigurationOld = Azure::ApiManagement::Mgmt::V2018_01_01::Models::HostnameConfigurationOld
        PolicySnippetsCollection = Azure::ApiManagement::Mgmt::V2018_01_01::Models::PolicySnippetsCollection
        ApiManagementServiceUpdateHostnameParameters = Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiManagementServiceUpdateHostnameParameters
        RegionListResult = Azure::ApiManagement::Mgmt::V2018_01_01::Models::RegionListResult
        OperationDisplay = Azure::ApiManagement::Mgmt::V2018_01_01::Models::OperationDisplay
        ApiExportResult = Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiExportResult
        Operation = Azure::ApiManagement::Mgmt::V2018_01_01::Models::Operation
        AdditionalLocation = Azure::ApiManagement::Mgmt::V2018_01_01::Models::AdditionalLocation
        ApiManagementServiceBackupRestoreParameters = Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiManagementServiceBackupRestoreParameters
        ApiCreateOrUpdatePropertiesWsdlSelector = Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiCreateOrUpdatePropertiesWsdlSelector
        ApiManagementServiceBaseProperties = Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiManagementServiceBaseProperties
        ApiUpdateContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiUpdateContract
        ApiManagementServiceIdentity = Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiManagementServiceIdentity
        AuthenticationSettingsContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::AuthenticationSettingsContract
        DeployConfigurationParameters = Azure::ApiManagement::Mgmt::V2018_01_01::Models::DeployConfigurationParameters
        ApiEntityBaseContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiEntityBaseContract
        ApimResource = Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApimResource
        ApiRevisionCollection = Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiRevisionCollection
        AccessInformationUpdateParameters = Azure::ApiManagement::Mgmt::V2018_01_01::Models::AccessInformationUpdateParameters
        ApiVersionSetUpdateParameters = Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiVersionSetUpdateParameters
        ApiManagementServiceListResult = Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiManagementServiceListResult
        ApiVersionSetEntityBase = Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiVersionSetEntityBase
        ApiManagementServiceGetSsoTokenResult = Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiManagementServiceGetSsoTokenResult
        ParameterContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::ParameterContract
        ApiManagementServiceCheckNameAvailabilityParameters = Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiManagementServiceCheckNameAvailabilityParameters
        RequestContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::RequestContract
        ErrorFieldContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::ErrorFieldContract
        OperationEntityBaseContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::OperationEntityBaseContract
        OperationUpdateContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::OperationUpdateContract
        QuotaCounterValueContractProperties = Azure::ApiManagement::Mgmt::V2018_01_01::Models::QuotaCounterValueContractProperties
        SchemaCollection = Azure::ApiManagement::Mgmt::V2018_01_01::Models::SchemaCollection
        PolicySnippetContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::PolicySnippetContract
        LoggerCollection = Azure::ApiManagement::Mgmt::V2018_01_01::Models::LoggerCollection
        RegionContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::RegionContract
        DiagnosticCollection = Azure::ApiManagement::Mgmt::V2018_01_01::Models::DiagnosticCollection
        Resource = Azure::ApiManagement::Mgmt::V2018_01_01::Models::Resource
        UserTokenParameters = Azure::ApiManagement::Mgmt::V2018_01_01::Models::UserTokenParameters
        ApiVersionSetContractDetails = Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiVersionSetContractDetails
        UserIdentityCollection = Azure::ApiManagement::Mgmt::V2018_01_01::Models::UserIdentityCollection
        AccessInformationContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::AccessInformationContract
        TagResourceContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::TagResourceContract
        OperationListResult = Azure::ApiManagement::Mgmt::V2018_01_01::Models::OperationListResult
        UserCreateParameters = Azure::ApiManagement::Mgmt::V2018_01_01::Models::UserCreateParameters
        EmailTemplateParametersContractProperties = Azure::ApiManagement::Mgmt::V2018_01_01::Models::EmailTemplateParametersContractProperties
        GenerateSsoUrlResult = Azure::ApiManagement::Mgmt::V2018_01_01::Models::GenerateSsoUrlResult
        TagDescriptionCreateParameters = Azure::ApiManagement::Mgmt::V2018_01_01::Models::TagDescriptionCreateParameters
        TenantConfigurationSyncStateContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::TenantConfigurationSyncStateContract
        EmailTemplateCollection = Azure::ApiManagement::Mgmt::V2018_01_01::Models::EmailTemplateCollection
        AuthorizationServerContractBaseProperties = Azure::ApiManagement::Mgmt::V2018_01_01::Models::AuthorizationServerContractBaseProperties
        EmailTemplateUpdateParameters = Azure::ApiManagement::Mgmt::V2018_01_01::Models::EmailTemplateUpdateParameters
        X509CertificateName = Azure::ApiManagement::Mgmt::V2018_01_01::Models::X509CertificateName
        GroupContractProperties = Azure::ApiManagement::Mgmt::V2018_01_01::Models::GroupContractProperties
        BackendProperties = Azure::ApiManagement::Mgmt::V2018_01_01::Models::BackendProperties
        TagDescriptionCollection = Azure::ApiManagement::Mgmt::V2018_01_01::Models::TagDescriptionCollection
        BackendProxyContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::BackendProxyContract
        GroupCollection = Azure::ApiManagement::Mgmt::V2018_01_01::Models::GroupCollection
        BackendBaseParameters = Azure::ApiManagement::Mgmt::V2018_01_01::Models::BackendBaseParameters
        GroupCreateParameters = Azure::ApiManagement::Mgmt::V2018_01_01::Models::GroupCreateParameters
        BackendCollection = Azure::ApiManagement::Mgmt::V2018_01_01::Models::BackendCollection
        GroupUpdateParameters = Azure::ApiManagement::Mgmt::V2018_01_01::Models::GroupUpdateParameters
        OperationResultContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::OperationResultContract
        UserIdentityContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::UserIdentityContract
        CertificateCollection = Azure::ApiManagement::Mgmt::V2018_01_01::Models::CertificateCollection
        UserEntityBaseParameters = Azure::ApiManagement::Mgmt::V2018_01_01::Models::UserEntityBaseParameters
        CertificateInformation = Azure::ApiManagement::Mgmt::V2018_01_01::Models::CertificateInformation
        TagCreateUpdateParameters = Azure::ApiManagement::Mgmt::V2018_01_01::Models::TagCreateUpdateParameters
        HostnameConfiguration = Azure::ApiManagement::Mgmt::V2018_01_01::Models::HostnameConfiguration
        UserCollection = Azure::ApiManagement::Mgmt::V2018_01_01::Models::UserCollection
        ApiManagementServiceSkuProperties = Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiManagementServiceSkuProperties
        TagCollection = Azure::ApiManagement::Mgmt::V2018_01_01::Models::TagCollection
        ApiCreateOrUpdateParameter = Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiCreateOrUpdateParameter
        IdentityProviderList = Azure::ApiManagement::Mgmt::V2018_01_01::Models::IdentityProviderList
        SubscriptionKeyParameterNamesContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::SubscriptionKeyParameterNamesContract
        IdentityProviderUpdateParameters = Azure::ApiManagement::Mgmt::V2018_01_01::Models::IdentityProviderUpdateParameters
        ApiRevisionInfoContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiRevisionInfoContract
        IdentityProviderBaseParameters = Azure::ApiManagement::Mgmt::V2018_01_01::Models::IdentityProviderBaseParameters
        OperationCollection = Azure::ApiManagement::Mgmt::V2018_01_01::Models::OperationCollection
        LoggerUpdateContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::LoggerUpdateContract
        ResponseContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::ResponseContract
        RecipientsContractProperties = Azure::ApiManagement::Mgmt::V2018_01_01::Models::RecipientsContractProperties
        UserUpdateParameters = Azure::ApiManagement::Mgmt::V2018_01_01::Models::UserUpdateParameters
        SubscriptionUpdateParameters = Azure::ApiManagement::Mgmt::V2018_01_01::Models::SubscriptionUpdateParameters
        ProductEntityBaseParameters = Azure::ApiManagement::Mgmt::V2018_01_01::Models::ProductEntityBaseParameters
        NotificationCollection = Azure::ApiManagement::Mgmt::V2018_01_01::Models::NotificationCollection
        TagTagResourceContractProperties = Azure::ApiManagement::Mgmt::V2018_01_01::Models::TagTagResourceContractProperties
        SubscriptionCreateParameters = Azure::ApiManagement::Mgmt::V2018_01_01::Models::SubscriptionCreateParameters
        ProductCollection = Azure::ApiManagement::Mgmt::V2018_01_01::Models::ProductCollection
        RecipientUserCollection = Azure::ApiManagement::Mgmt::V2018_01_01::Models::RecipientUserCollection
        TokenBodyParameterContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::TokenBodyParameterContract
        RequestReportCollection = Azure::ApiManagement::Mgmt::V2018_01_01::Models::RequestReportCollection
        BackendServiceFabricClusterProperties = Azure::ApiManagement::Mgmt::V2018_01_01::Models::BackendServiceFabricClusterProperties
        RecipientEmailCollection = Azure::ApiManagement::Mgmt::V2018_01_01::Models::RecipientEmailCollection
        BackendTlsProperties = Azure::ApiManagement::Mgmt::V2018_01_01::Models::BackendTlsProperties
        ConnectivityStatusContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::ConnectivityStatusContract
        BackendUpdateParameters = Azure::ApiManagement::Mgmt::V2018_01_01::Models::BackendUpdateParameters
        NetworkStatusContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::NetworkStatusContract
        CertificateCreateOrUpdateParameters = Azure::ApiManagement::Mgmt::V2018_01_01::Models::CertificateCreateOrUpdateParameters
        NetworkStatusContractByLocation = Azure::ApiManagement::Mgmt::V2018_01_01::Models::NetworkStatusContractByLocation
        VirtualNetworkConfiguration = Azure::ApiManagement::Mgmt::V2018_01_01::Models::VirtualNetworkConfiguration
        RequestReportRecordContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::RequestReportRecordContract
        OAuth2AuthenticationSettingsContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::OAuth2AuthenticationSettingsContract
        OpenIdConnectProviderCollection = Azure::ApiManagement::Mgmt::V2018_01_01::Models::OpenIdConnectProviderCollection
        ApiReleaseCollection = Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiReleaseCollection
        OpenidConnectProviderUpdateContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::OpenidConnectProviderUpdateContract
        ApiVersionSetCollection = Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiVersionSetCollection
        ReportCollection = Azure::ApiManagement::Mgmt::V2018_01_01::Models::ReportCollection
        OperationTagResourceContractProperties = Azure::ApiManagement::Mgmt::V2018_01_01::Models::OperationTagResourceContractProperties
        TermsOfServiceProperties = Azure::ApiManagement::Mgmt::V2018_01_01::Models::TermsOfServiceProperties
        AuthorizationServerCollection = Azure::ApiManagement::Mgmt::V2018_01_01::Models::AuthorizationServerCollection
        ReportRecordContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::ReportRecordContract
        BackendCredentialsContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::BackendCredentialsContract
        SubscriptionsDelegationSettingsProperties = Azure::ApiManagement::Mgmt::V2018_01_01::Models::SubscriptionsDelegationSettingsProperties
        OperationResultLogItemContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::OperationResultLogItemContract
        RegistrationDelegationSettingsProperties = Azure::ApiManagement::Mgmt::V2018_01_01::Models::RegistrationDelegationSettingsProperties
        ApiCollection = Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiCollection
        QuotaCounterValueContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::QuotaCounterValueContract
        RepresentationContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::RepresentationContract
        ProductUpdateParameters = Azure::ApiManagement::Mgmt::V2018_01_01::Models::ProductUpdateParameters
        TagResourceCollection = Azure::ApiManagement::Mgmt::V2018_01_01::Models::TagResourceCollection
        QuotaCounterCollection = Azure::ApiManagement::Mgmt::V2018_01_01::Models::QuotaCounterCollection
        SaveConfigurationParameter = Azure::ApiManagement::Mgmt::V2018_01_01::Models::SaveConfigurationParameter
        SubscriptionCollection = Azure::ApiManagement::Mgmt::V2018_01_01::Models::SubscriptionCollection
        ApiRevisionContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiRevisionContract
        QuotaCounterContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::QuotaCounterContract
        BackendAuthorizationHeaderCredentials = Azure::ApiManagement::Mgmt::V2018_01_01::Models::BackendAuthorizationHeaderCredentials
        PropertyCollection = Azure::ApiManagement::Mgmt::V2018_01_01::Models::PropertyCollection
        UserTokenResult = Azure::ApiManagement::Mgmt::V2018_01_01::Models::UserTokenResult
        PropertyUpdateParameters = Azure::ApiManagement::Mgmt::V2018_01_01::Models::PropertyUpdateParameters
        CertificateConfiguration = Azure::ApiManagement::Mgmt::V2018_01_01::Models::CertificateConfiguration
        PropertyEntityBaseParameters = Azure::ApiManagement::Mgmt::V2018_01_01::Models::PropertyEntityBaseParameters
        PolicyContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::PolicyContract
        ApiContractProperties = Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiContractProperties
        ApiContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiContract
        ApiReleaseContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiReleaseContract
        OperationContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::OperationContract
        SchemaContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::SchemaContract
        LoggerContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::LoggerContract
        DiagnosticContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::DiagnosticContract
        ProductTagResourceContractProperties = Azure::ApiManagement::Mgmt::V2018_01_01::Models::ProductTagResourceContractProperties
        ApiTagResourceContractProperties = Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiTagResourceContractProperties
        ProductContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::ProductContract
        AuthorizationServerContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::AuthorizationServerContract
        AuthorizationServerUpdateContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::AuthorizationServerUpdateContract
        BackendContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::BackendContract
        BackendReconnectContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::BackendReconnectContract
        CertificateContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::CertificateContract
        ApiManagementServiceResource = Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiManagementServiceResource
        ApiManagementServiceUpdateParameters = Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiManagementServiceUpdateParameters
        EmailTemplateContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::EmailTemplateContract
        GroupContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::GroupContract
        UserContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::UserContract
        IdentityProviderContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::IdentityProviderContract
        NotificationContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::NotificationContract
        RecipientUserContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::RecipientUserContract
        RecipientEmailContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::RecipientEmailContract
        OpenidConnectProviderContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::OpenidConnectProviderContract
        PortalSigninSettings = Azure::ApiManagement::Mgmt::V2018_01_01::Models::PortalSigninSettings
        PortalSignupSettings = Azure::ApiManagement::Mgmt::V2018_01_01::Models::PortalSignupSettings
        PortalDelegationSettings = Azure::ApiManagement::Mgmt::V2018_01_01::Models::PortalDelegationSettings
        SubscriptionContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::SubscriptionContract
        PropertyContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::PropertyContract
        TagContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::TagContract
        TagDescriptionContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::TagDescriptionContract
        ApiVersionSetContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiVersionSetContract
        PolicyContentFormat = Azure::ApiManagement::Mgmt::V2018_01_01::Models::PolicyContentFormat
        Protocol = Azure::ApiManagement::Mgmt::V2018_01_01::Models::Protocol
        ContentFormat = Azure::ApiManagement::Mgmt::V2018_01_01::Models::ContentFormat
        SoapApiType = Azure::ApiManagement::Mgmt::V2018_01_01::Models::SoapApiType
        ApiType = Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiType
        LoggerType = Azure::ApiManagement::Mgmt::V2018_01_01::Models::LoggerType
        ProductState = Azure::ApiManagement::Mgmt::V2018_01_01::Models::ProductState
        GrantType = Azure::ApiManagement::Mgmt::V2018_01_01::Models::GrantType
        AuthorizationMethod = Azure::ApiManagement::Mgmt::V2018_01_01::Models::AuthorizationMethod
        ClientAuthenticationMethod = Azure::ApiManagement::Mgmt::V2018_01_01::Models::ClientAuthenticationMethod
        BearerTokenSendingMethod = Azure::ApiManagement::Mgmt::V2018_01_01::Models::BearerTokenSendingMethod
        BackendProtocol = Azure::ApiManagement::Mgmt::V2018_01_01::Models::BackendProtocol
        HostnameType = Azure::ApiManagement::Mgmt::V2018_01_01::Models::HostnameType
        SkuType = Azure::ApiManagement::Mgmt::V2018_01_01::Models::SkuType
        VirtualNetworkType = Azure::ApiManagement::Mgmt::V2018_01_01::Models::VirtualNetworkType
        NameAvailabilityReason = Azure::ApiManagement::Mgmt::V2018_01_01::Models::NameAvailabilityReason
        GroupType = Azure::ApiManagement::Mgmt::V2018_01_01::Models::GroupType
        Confirmation = Azure::ApiManagement::Mgmt::V2018_01_01::Models::Confirmation
        UserState = Azure::ApiManagement::Mgmt::V2018_01_01::Models::UserState
        IdentityProviderType = Azure::ApiManagement::Mgmt::V2018_01_01::Models::IdentityProviderType
        ConnectivityStatusType = Azure::ApiManagement::Mgmt::V2018_01_01::Models::ConnectivityStatusType
        SubscriptionState = Azure::ApiManagement::Mgmt::V2018_01_01::Models::SubscriptionState
        AsyncOperationStatus = Azure::ApiManagement::Mgmt::V2018_01_01::Models::AsyncOperationStatus
        KeyType = Azure::ApiManagement::Mgmt::V2018_01_01::Models::KeyType
        VersioningScheme = Azure::ApiManagement::Mgmt::V2018_01_01::Models::VersioningScheme
        TemplateName = Azure::ApiManagement::Mgmt::V2018_01_01::Models::TemplateName
        NotificationName = Azure::ApiManagement::Mgmt::V2018_01_01::Models::NotificationName
        PolicyScopeContract = Azure::ApiManagement::Mgmt::V2018_01_01::Models::PolicyScopeContract
        ExportFormat = Azure::ApiManagement::Mgmt::V2018_01_01::Models::ExportFormat
      end

      class ApiManagementManagementClass
        attr_reader :policy, :policy_snippets, :regions, :api, :api_revisions, :api_release, :api_operation, :api_operation_policy, :api_product, :api_policy, :api_schema, :api_diagnostic, :api_diagnostic_logger, :authorization_server, :backend, :certificate, :api_management_operations, :api_management_service, :diagnostic, :diagnostic_logger, :email_template, :group, :group_user, :identity_provider, :logger, :notification, :notification_recipient_user, :notification_recipient_email, :network_status, :open_id_connect_provider, :sign_in_settings, :sign_up_settings, :delegation_settings, :product, :product_api, :product_group, :product_subscriptions, :product_policy, :property, :quota_by_counter_keys, :quota_by_period_keys, :reports, :subscription, :tag_resource, :tag, :tag_description, :operation_operations, :tenant_access, :tenant_access_git, :tenant_configuration, :user, :user_group, :user_subscription, :user_identities, :api_version_set, :api_export, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::ApiManagement::Mgmt::V2018_01_01::ApiManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @policy = @client_0.policy
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
          @certificate = @client_0.certificate
          @api_management_operations = @client_0.api_management_operations
          @api_management_service = @client_0.api_management_service
          @diagnostic = @client_0.diagnostic
          @diagnostic_logger = @client_0.diagnostic_logger
          @email_template = @client_0.email_template
          @group = @client_0.group
          @group_user = @client_0.group_user
          @identity_provider = @client_0.identity_provider
          @logger = @client_0.logger
          @notification = @client_0.notification
          @notification_recipient_user = @client_0.notification_recipient_user
          @notification_recipient_email = @client_0.notification_recipient_email
          @network_status = @client_0.network_status
          @open_id_connect_provider = @client_0.open_id_connect_provider
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
          @subscription = @client_0.subscription
          @tag_resource = @client_0.tag_resource
          @tag = @client_0.tag
          @tag_description = @client_0.tag_description
          @operation_operations = @client_0.operation_operations
          @tenant_access = @client_0.tenant_access
          @tenant_access_git = @client_0.tenant_access_git
          @tenant_configuration = @client_0.tenant_configuration
          @user = @client_0.user
          @user_group = @client_0.user_group
          @user_subscription = @client_0.user_subscription
          @user_identities = @client_0.user_identities
          @api_version_set = @client_0.api_version_set
          @api_export = @client_0.api_export

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
          def api_management_service_name_availability_result
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiManagementServiceNameAvailabilityResult
          end
          def api_management_service_apply_network_configuration_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiManagementServiceApplyNetworkConfigurationParameters
          end
          def error_response
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::ErrorResponse
          end
          def api_management_service_upload_certificate_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiManagementServiceUploadCertificateParameters
          end
          def policy_collection
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::PolicyCollection
          end
          def hostname_configuration_old
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::HostnameConfigurationOld
          end
          def policy_snippets_collection
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::PolicySnippetsCollection
          end
          def api_management_service_update_hostname_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiManagementServiceUpdateHostnameParameters
          end
          def region_list_result
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::RegionListResult
          end
          def operation_display
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::OperationDisplay
          end
          def api_export_result
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiExportResult
          end
          def operation
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::Operation
          end
          def additional_location
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::AdditionalLocation
          end
          def api_management_service_backup_restore_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiManagementServiceBackupRestoreParameters
          end
          def api_create_or_update_properties_wsdl_selector
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiCreateOrUpdatePropertiesWsdlSelector
          end
          def api_management_service_base_properties
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiManagementServiceBaseProperties
          end
          def api_update_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiUpdateContract
          end
          def api_management_service_identity
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiManagementServiceIdentity
          end
          def authentication_settings_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::AuthenticationSettingsContract
          end
          def deploy_configuration_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::DeployConfigurationParameters
          end
          def api_entity_base_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiEntityBaseContract
          end
          def apim_resource
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApimResource
          end
          def api_revision_collection
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiRevisionCollection
          end
          def access_information_update_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::AccessInformationUpdateParameters
          end
          def api_version_set_update_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiVersionSetUpdateParameters
          end
          def api_management_service_list_result
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiManagementServiceListResult
          end
          def api_version_set_entity_base
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiVersionSetEntityBase
          end
          def api_management_service_get_sso_token_result
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiManagementServiceGetSsoTokenResult
          end
          def parameter_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::ParameterContract
          end
          def api_management_service_check_name_availability_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiManagementServiceCheckNameAvailabilityParameters
          end
          def request_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::RequestContract
          end
          def error_field_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::ErrorFieldContract
          end
          def operation_entity_base_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::OperationEntityBaseContract
          end
          def operation_update_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::OperationUpdateContract
          end
          def quota_counter_value_contract_properties
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::QuotaCounterValueContractProperties
          end
          def schema_collection
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::SchemaCollection
          end
          def policy_snippet_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::PolicySnippetContract
          end
          def logger_collection
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::LoggerCollection
          end
          def region_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::RegionContract
          end
          def diagnostic_collection
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::DiagnosticCollection
          end
          def resource
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::Resource
          end
          def user_token_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::UserTokenParameters
          end
          def api_version_set_contract_details
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiVersionSetContractDetails
          end
          def user_identity_collection
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::UserIdentityCollection
          end
          def access_information_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::AccessInformationContract
          end
          def tag_resource_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::TagResourceContract
          end
          def operation_list_result
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::OperationListResult
          end
          def user_create_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::UserCreateParameters
          end
          def email_template_parameters_contract_properties
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::EmailTemplateParametersContractProperties
          end
          def generate_sso_url_result
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::GenerateSsoUrlResult
          end
          def tag_description_create_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::TagDescriptionCreateParameters
          end
          def tenant_configuration_sync_state_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::TenantConfigurationSyncStateContract
          end
          def email_template_collection
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::EmailTemplateCollection
          end
          def authorization_server_contract_base_properties
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::AuthorizationServerContractBaseProperties
          end
          def email_template_update_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::EmailTemplateUpdateParameters
          end
          def x509_certificate_name
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::X509CertificateName
          end
          def group_contract_properties
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::GroupContractProperties
          end
          def backend_properties
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::BackendProperties
          end
          def tag_description_collection
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::TagDescriptionCollection
          end
          def backend_proxy_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::BackendProxyContract
          end
          def group_collection
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::GroupCollection
          end
          def backend_base_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::BackendBaseParameters
          end
          def group_create_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::GroupCreateParameters
          end
          def backend_collection
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::BackendCollection
          end
          def group_update_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::GroupUpdateParameters
          end
          def operation_result_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::OperationResultContract
          end
          def user_identity_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::UserIdentityContract
          end
          def certificate_collection
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::CertificateCollection
          end
          def user_entity_base_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::UserEntityBaseParameters
          end
          def certificate_information
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::CertificateInformation
          end
          def tag_create_update_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::TagCreateUpdateParameters
          end
          def hostname_configuration
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::HostnameConfiguration
          end
          def user_collection
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::UserCollection
          end
          def api_management_service_sku_properties
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiManagementServiceSkuProperties
          end
          def tag_collection
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::TagCollection
          end
          def api_create_or_update_parameter
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiCreateOrUpdateParameter
          end
          def identity_provider_list
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::IdentityProviderList
          end
          def subscription_key_parameter_names_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::SubscriptionKeyParameterNamesContract
          end
          def identity_provider_update_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::IdentityProviderUpdateParameters
          end
          def api_revision_info_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiRevisionInfoContract
          end
          def identity_provider_base_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::IdentityProviderBaseParameters
          end
          def operation_collection
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::OperationCollection
          end
          def logger_update_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::LoggerUpdateContract
          end
          def response_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::ResponseContract
          end
          def recipients_contract_properties
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::RecipientsContractProperties
          end
          def user_update_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::UserUpdateParameters
          end
          def subscription_update_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::SubscriptionUpdateParameters
          end
          def product_entity_base_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::ProductEntityBaseParameters
          end
          def notification_collection
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::NotificationCollection
          end
          def tag_tag_resource_contract_properties
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::TagTagResourceContractProperties
          end
          def subscription_create_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::SubscriptionCreateParameters
          end
          def product_collection
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::ProductCollection
          end
          def recipient_user_collection
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::RecipientUserCollection
          end
          def token_body_parameter_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::TokenBodyParameterContract
          end
          def request_report_collection
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::RequestReportCollection
          end
          def backend_service_fabric_cluster_properties
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::BackendServiceFabricClusterProperties
          end
          def recipient_email_collection
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::RecipientEmailCollection
          end
          def backend_tls_properties
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::BackendTlsProperties
          end
          def connectivity_status_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::ConnectivityStatusContract
          end
          def backend_update_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::BackendUpdateParameters
          end
          def network_status_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::NetworkStatusContract
          end
          def certificate_create_or_update_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::CertificateCreateOrUpdateParameters
          end
          def network_status_contract_by_location
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::NetworkStatusContractByLocation
          end
          def virtual_network_configuration
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::VirtualNetworkConfiguration
          end
          def request_report_record_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::RequestReportRecordContract
          end
          def oauth2_authentication_settings_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::OAuth2AuthenticationSettingsContract
          end
          def open_id_connect_provider_collection
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::OpenIdConnectProviderCollection
          end
          def api_release_collection
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiReleaseCollection
          end
          def openid_connect_provider_update_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::OpenidConnectProviderUpdateContract
          end
          def api_version_set_collection
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiVersionSetCollection
          end
          def report_collection
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::ReportCollection
          end
          def operation_tag_resource_contract_properties
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::OperationTagResourceContractProperties
          end
          def terms_of_service_properties
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::TermsOfServiceProperties
          end
          def authorization_server_collection
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::AuthorizationServerCollection
          end
          def report_record_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::ReportRecordContract
          end
          def backend_credentials_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::BackendCredentialsContract
          end
          def subscriptions_delegation_settings_properties
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::SubscriptionsDelegationSettingsProperties
          end
          def operation_result_log_item_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::OperationResultLogItemContract
          end
          def registration_delegation_settings_properties
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::RegistrationDelegationSettingsProperties
          end
          def api_collection
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiCollection
          end
          def quota_counter_value_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::QuotaCounterValueContract
          end
          def representation_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::RepresentationContract
          end
          def product_update_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::ProductUpdateParameters
          end
          def tag_resource_collection
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::TagResourceCollection
          end
          def quota_counter_collection
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::QuotaCounterCollection
          end
          def save_configuration_parameter
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::SaveConfigurationParameter
          end
          def subscription_collection
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::SubscriptionCollection
          end
          def api_revision_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiRevisionContract
          end
          def quota_counter_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::QuotaCounterContract
          end
          def backend_authorization_header_credentials
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::BackendAuthorizationHeaderCredentials
          end
          def property_collection
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::PropertyCollection
          end
          def user_token_result
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::UserTokenResult
          end
          def property_update_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::PropertyUpdateParameters
          end
          def certificate_configuration
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::CertificateConfiguration
          end
          def property_entity_base_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::PropertyEntityBaseParameters
          end
          def policy_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::PolicyContract
          end
          def api_contract_properties
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiContractProperties
          end
          def api_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiContract
          end
          def api_release_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiReleaseContract
          end
          def operation_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::OperationContract
          end
          def schema_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::SchemaContract
          end
          def logger_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::LoggerContract
          end
          def diagnostic_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::DiagnosticContract
          end
          def product_tag_resource_contract_properties
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::ProductTagResourceContractProperties
          end
          def api_tag_resource_contract_properties
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiTagResourceContractProperties
          end
          def product_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::ProductContract
          end
          def authorization_server_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::AuthorizationServerContract
          end
          def authorization_server_update_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::AuthorizationServerUpdateContract
          end
          def backend_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::BackendContract
          end
          def backend_reconnect_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::BackendReconnectContract
          end
          def certificate_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::CertificateContract
          end
          def api_management_service_resource
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiManagementServiceResource
          end
          def api_management_service_update_parameters
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiManagementServiceUpdateParameters
          end
          def email_template_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::EmailTemplateContract
          end
          def group_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::GroupContract
          end
          def user_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::UserContract
          end
          def identity_provider_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::IdentityProviderContract
          end
          def notification_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::NotificationContract
          end
          def recipient_user_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::RecipientUserContract
          end
          def recipient_email_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::RecipientEmailContract
          end
          def openid_connect_provider_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::OpenidConnectProviderContract
          end
          def portal_signin_settings
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::PortalSigninSettings
          end
          def portal_signup_settings
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::PortalSignupSettings
          end
          def portal_delegation_settings
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::PortalDelegationSettings
          end
          def subscription_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::SubscriptionContract
          end
          def property_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::PropertyContract
          end
          def tag_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::TagContract
          end
          def tag_description_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::TagDescriptionContract
          end
          def api_version_set_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiVersionSetContract
          end
          def policy_content_format
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::PolicyContentFormat
          end
          def protocol
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::Protocol
          end
          def content_format
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::ContentFormat
          end
          def soap_api_type
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::SoapApiType
          end
          def api_type
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::ApiType
          end
          def logger_type
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::LoggerType
          end
          def product_state
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::ProductState
          end
          def grant_type
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::GrantType
          end
          def authorization_method
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::AuthorizationMethod
          end
          def client_authentication_method
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::ClientAuthenticationMethod
          end
          def bearer_token_sending_method
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::BearerTokenSendingMethod
          end
          def backend_protocol
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::BackendProtocol
          end
          def hostname_type
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::HostnameType
          end
          def sku_type
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::SkuType
          end
          def virtual_network_type
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::VirtualNetworkType
          end
          def name_availability_reason
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::NameAvailabilityReason
          end
          def group_type
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::GroupType
          end
          def confirmation
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::Confirmation
          end
          def user_state
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::UserState
          end
          def identity_provider_type
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::IdentityProviderType
          end
          def connectivity_status_type
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::ConnectivityStatusType
          end
          def subscription_state
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::SubscriptionState
          end
          def async_operation_status
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::AsyncOperationStatus
          end
          def key_type
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::KeyType
          end
          def versioning_scheme
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::VersioningScheme
          end
          def template_name
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::TemplateName
          end
          def notification_name
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::NotificationName
          end
          def policy_scope_contract
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::PolicyScopeContract
          end
          def export_format
            Azure::ApiManagement::Mgmt::V2018_01_01::Models::ExportFormat
          end
        end
      end
    end
  end
end
