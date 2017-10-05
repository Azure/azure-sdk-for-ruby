# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_api_management'


module Azure::Profiles::ApiManagementModule::Management::Profile_2017_03_01
  module ApiManagement
    Policy = Azure::ARM::ApiManagement::Api_2017_03_01::Policy
    PolicySnippets = Azure::ARM::ApiManagement::Api_2017_03_01::PolicySnippets
    Regions = Azure::ARM::ApiManagement::Api_2017_03_01::Regions
    Api = Azure::ARM::ApiManagement::Api_2017_03_01::Api
    ApiOperation = Azure::ARM::ApiManagement::Api_2017_03_01::ApiOperation
    ApiOperationPolicy = Azure::ARM::ApiManagement::Api_2017_03_01::ApiOperationPolicy
    ApiProduct = Azure::ARM::ApiManagement::Api_2017_03_01::ApiProduct
    ApiPolicy = Azure::ARM::ApiManagement::Api_2017_03_01::ApiPolicy
    AuthorizationServer = Azure::ARM::ApiManagement::Api_2017_03_01::AuthorizationServer
    Backend = Azure::ARM::ApiManagement::Api_2017_03_01::Backend
    Certificate = Azure::ARM::ApiManagement::Api_2017_03_01::Certificate
    ApiManagementOperations = Azure::ARM::ApiManagement::Api_2017_03_01::ApiManagementOperations
    ApiManagementService = Azure::ARM::ApiManagement::Api_2017_03_01::ApiManagementService
    EmailTemplate = Azure::ARM::ApiManagement::Api_2017_03_01::EmailTemplate
    Group = Azure::ARM::ApiManagement::Api_2017_03_01::Group
    GroupUser = Azure::ARM::ApiManagement::Api_2017_03_01::GroupUser
    IdentityProvider = Azure::ARM::ApiManagement::Api_2017_03_01::IdentityProvider
    Logger = Azure::ARM::ApiManagement::Api_2017_03_01::Logger
    NetworkStatus = Azure::ARM::ApiManagement::Api_2017_03_01::NetworkStatus
    OpenIdConnectProvider = Azure::ARM::ApiManagement::Api_2017_03_01::OpenIdConnectProvider
    SignInSettings = Azure::ARM::ApiManagement::Api_2017_03_01::SignInSettings
    SignUpSettings = Azure::ARM::ApiManagement::Api_2017_03_01::SignUpSettings
    DelegationSettings = Azure::ARM::ApiManagement::Api_2017_03_01::DelegationSettings
    Product = Azure::ARM::ApiManagement::Api_2017_03_01::Product
    ProductApi = Azure::ARM::ApiManagement::Api_2017_03_01::ProductApi
    ProductGroup = Azure::ARM::ApiManagement::Api_2017_03_01::ProductGroup
    ProductSubscriptions = Azure::ARM::ApiManagement::Api_2017_03_01::ProductSubscriptions
    ProductPolicy = Azure::ARM::ApiManagement::Api_2017_03_01::ProductPolicy
    Property = Azure::ARM::ApiManagement::Api_2017_03_01::Property
    QuotaByCounterKeys = Azure::ARM::ApiManagement::Api_2017_03_01::QuotaByCounterKeys
    QuotaByPeriodKeys = Azure::ARM::ApiManagement::Api_2017_03_01::QuotaByPeriodKeys
    Reports = Azure::ARM::ApiManagement::Api_2017_03_01::Reports
    Subscription = Azure::ARM::ApiManagement::Api_2017_03_01::Subscription
    TenantAccess = Azure::ARM::ApiManagement::Api_2017_03_01::TenantAccess
    TenantAccessGit = Azure::ARM::ApiManagement::Api_2017_03_01::TenantAccessGit
    TenantConfiguration = Azure::ARM::ApiManagement::Api_2017_03_01::TenantConfiguration
    User = Azure::ARM::ApiManagement::Api_2017_03_01::User
    UserGroup = Azure::ARM::ApiManagement::Api_2017_03_01::UserGroup
    UserSubscription = Azure::ARM::ApiManagement::Api_2017_03_01::UserSubscription
    UserIdentities = Azure::ARM::ApiManagement::Api_2017_03_01::UserIdentities
    ApiExport = Azure::ARM::ApiManagement::Api_2017_03_01::ApiExport

    module Models
      ApiManagementServiceNameAvailabilityResult = Azure::ARM::ApiManagement::Api_2017_03_01::Models::ApiManagementServiceNameAvailabilityResult
      ApiManagementServiceApplyNetworkConfigurationParameters = Azure::ARM::ApiManagement::Api_2017_03_01::Models::ApiManagementServiceApplyNetworkConfigurationParameters
      ErrorResponse = Azure::ARM::ApiManagement::Api_2017_03_01::Models::ErrorResponse
      OperationDisplay = Azure::ARM::ApiManagement::Api_2017_03_01::Models::OperationDisplay
      PolicyCollection = Azure::ARM::ApiManagement::Api_2017_03_01::Models::PolicyCollection
      Operation = Azure::ARM::ApiManagement::Api_2017_03_01::Models::Operation
      PolicySnippetsCollection = Azure::ARM::ApiManagement::Api_2017_03_01::Models::PolicySnippetsCollection
      OperationListResult = Azure::ARM::ApiManagement::Api_2017_03_01::Models::OperationListResult
      RegionListResult = Azure::ARM::ApiManagement::Api_2017_03_01::Models::RegionListResult
      EmailTemplateParametersContractProperties = Azure::ARM::ApiManagement::Api_2017_03_01::Models::EmailTemplateParametersContractProperties
      ApiExportResult = Azure::ARM::ApiManagement::Api_2017_03_01::Models::ApiExportResult
      ErrorFieldContract = Azure::ARM::ApiManagement::Api_2017_03_01::Models::ErrorFieldContract
      ApimResource = Azure::ARM::ApiManagement::Api_2017_03_01::Models::ApimResource
      ApiCollection = Azure::ARM::ApiManagement::Api_2017_03_01::Models::ApiCollection
      QuotaCounterValueContract = Azure::ARM::ApiManagement::Api_2017_03_01::Models::QuotaCounterValueContract
      ApiUpdateContract = Azure::ARM::ApiManagement::Api_2017_03_01::Models::ApiUpdateContract
      ApiManagementServiceListResult = Azure::ARM::ApiManagement::Api_2017_03_01::Models::ApiManagementServiceListResult
      AuthenticationSettingsContract = Azure::ARM::ApiManagement::Api_2017_03_01::Models::AuthenticationSettingsContract
      ApiManagementServiceGetSsoTokenResult = Azure::ARM::ApiManagement::Api_2017_03_01::Models::ApiManagementServiceGetSsoTokenResult
      ApiEntityBaseContract = Azure::ARM::ApiManagement::Api_2017_03_01::Models::ApiEntityBaseContract
      ApiManagementServiceCheckNameAvailabilityParameters = Azure::ARM::ApiManagement::Api_2017_03_01::Models::ApiManagementServiceCheckNameAvailabilityParameters
      OperationCollection = Azure::ARM::ApiManagement::Api_2017_03_01::Models::OperationCollection
      QuotaCounterCollection = Azure::ARM::ApiManagement::Api_2017_03_01::Models::QuotaCounterCollection
      RepresentationContract = Azure::ARM::ApiManagement::Api_2017_03_01::Models::RepresentationContract
      QuotaCounterContract = Azure::ARM::ApiManagement::Api_2017_03_01::Models::QuotaCounterContract
      ResponseContract = Azure::ARM::ApiManagement::Api_2017_03_01::Models::ResponseContract
      PolicySnippetContract = Azure::ARM::ApiManagement::Api_2017_03_01::Models::PolicySnippetContract
      OperationUpdateContract = Azure::ARM::ApiManagement::Api_2017_03_01::Models::OperationUpdateContract
      RegionContract = Azure::ARM::ApiManagement::Api_2017_03_01::Models::RegionContract
      AccessInformationContract = Azure::ARM::ApiManagement::Api_2017_03_01::Models::AccessInformationContract
      SubscriptionUpdateParameters = Azure::ARM::ApiManagement::Api_2017_03_01::Models::SubscriptionUpdateParameters
      QuotaCounterValueContractProperties = Azure::ARM::ApiManagement::Api_2017_03_01::Models::QuotaCounterValueContractProperties
      SubscriptionCreateParameters = Azure::ARM::ApiManagement::Api_2017_03_01::Models::SubscriptionCreateParameters
      AuthorizationServerContractBaseProperties = Azure::ARM::ApiManagement::Api_2017_03_01::Models::AuthorizationServerContractBaseProperties
      EmailTemplateCollection = Azure::ARM::ApiManagement::Api_2017_03_01::Models::EmailTemplateCollection
      X509CertificateName = Azure::ARM::ApiManagement::Api_2017_03_01::Models::X509CertificateName
      EmailTemplateUpdateParameters = Azure::ARM::ApiManagement::Api_2017_03_01::Models::EmailTemplateUpdateParameters
      BackendProperties = Azure::ARM::ApiManagement::Api_2017_03_01::Models::BackendProperties
      UserUpdateParameters = Azure::ARM::ApiManagement::Api_2017_03_01::Models::UserUpdateParameters
      BackendProxyContract = Azure::ARM::ApiManagement::Api_2017_03_01::Models::BackendProxyContract
      GroupCollection = Azure::ARM::ApiManagement::Api_2017_03_01::Models::GroupCollection
      BackendBaseParameters = Azure::ARM::ApiManagement::Api_2017_03_01::Models::BackendBaseParameters
      GroupCreateParameters = Azure::ARM::ApiManagement::Api_2017_03_01::Models::GroupCreateParameters
      BackendCollection = Azure::ARM::ApiManagement::Api_2017_03_01::Models::BackendCollection
      GroupUpdateParameters = Azure::ARM::ApiManagement::Api_2017_03_01::Models::GroupUpdateParameters
      ReportCollection = Azure::ARM::ApiManagement::Api_2017_03_01::Models::ReportCollection
      UserIdentityContract = Azure::ARM::ApiManagement::Api_2017_03_01::Models::UserIdentityContract
      CertificateCreateOrUpdateParameters = Azure::ARM::ApiManagement::Api_2017_03_01::Models::CertificateCreateOrUpdateParameters
      UserEntityBaseParameters = Azure::ARM::ApiManagement::Api_2017_03_01::Models::UserEntityBaseParameters
      CertificateConfiguration = Azure::ARM::ApiManagement::Api_2017_03_01::Models::CertificateConfiguration
      UserTokenResult = Azure::ARM::ApiManagement::Api_2017_03_01::Models::UserTokenResult
      VirtualNetworkConfiguration = Azure::ARM::ApiManagement::Api_2017_03_01::Models::VirtualNetworkConfiguration
      UserCollection = Azure::ARM::ApiManagement::Api_2017_03_01::Models::UserCollection
      AdditionalLocation = Azure::ARM::ApiManagement::Api_2017_03_01::Models::AdditionalLocation
      UserTokenParameters = Azure::ARM::ApiManagement::Api_2017_03_01::Models::UserTokenParameters
      ApiManagementServiceBaseProperties = Azure::ARM::ApiManagement::Api_2017_03_01::Models::ApiManagementServiceBaseProperties
      IdentityProviderList = Azure::ARM::ApiManagement::Api_2017_03_01::Models::IdentityProviderList
      ApiCreateOrUpdateParameter = Azure::ARM::ApiManagement::Api_2017_03_01::Models::ApiCreateOrUpdateParameter
      IdentityProviderUpdateParameters = Azure::ARM::ApiManagement::Api_2017_03_01::Models::IdentityProviderUpdateParameters
      SubscriptionKeyParameterNamesContract = Azure::ARM::ApiManagement::Api_2017_03_01::Models::SubscriptionKeyParameterNamesContract
      IdentityProviderBaseParameters = Azure::ARM::ApiManagement::Api_2017_03_01::Models::IdentityProviderBaseParameters
      ParameterContract = Azure::ARM::ApiManagement::Api_2017_03_01::Models::ParameterContract
      UserIdentityCollection = Azure::ARM::ApiManagement::Api_2017_03_01::Models::UserIdentityCollection
      OperationEntityBaseContract = Azure::ARM::ApiManagement::Api_2017_03_01::Models::OperationEntityBaseContract
      LoggerCollection = Azure::ARM::ApiManagement::Api_2017_03_01::Models::LoggerCollection
      ProductCollection = Azure::ARM::ApiManagement::Api_2017_03_01::Models::ProductCollection
      LoggerUpdateContract = Azure::ARM::ApiManagement::Api_2017_03_01::Models::LoggerUpdateContract
      TokenBodyParameterContract = Azure::ARM::ApiManagement::Api_2017_03_01::Models::TokenBodyParameterContract
      ConnectivityStatusContract = Azure::ARM::ApiManagement::Api_2017_03_01::Models::ConnectivityStatusContract
      BackendServiceFabricClusterProperties = Azure::ARM::ApiManagement::Api_2017_03_01::Models::BackendServiceFabricClusterProperties
      NetworkStatusContract = Azure::ARM::ApiManagement::Api_2017_03_01::Models::NetworkStatusContract
      BackendTlsProperties = Azure::ARM::ApiManagement::Api_2017_03_01::Models::BackendTlsProperties
      UserCreateParameters = Azure::ARM::ApiManagement::Api_2017_03_01::Models::UserCreateParameters
      RequestReportRecordContract = Azure::ARM::ApiManagement::Api_2017_03_01::Models::RequestReportRecordContract
      OpenIdConnectProviderCollection = Azure::ARM::ApiManagement::Api_2017_03_01::Models::OpenIdConnectProviderCollection
      CertificateInformation = Azure::ARM::ApiManagement::Api_2017_03_01::Models::CertificateInformation
      OpenidConnectProviderUpdateContract = Azure::ARM::ApiManagement::Api_2017_03_01::Models::OpenidConnectProviderUpdateContract
      ApiManagementServiceSkuProperties = Azure::ARM::ApiManagement::Api_2017_03_01::Models::ApiManagementServiceSkuProperties
      GenerateSsoUrlResult = Azure::ARM::ApiManagement::Api_2017_03_01::Models::GenerateSsoUrlResult
      ReportRecordContract = Azure::ARM::ApiManagement::Api_2017_03_01::Models::ReportRecordContract
      TermsOfServiceProperties = Azure::ARM::ApiManagement::Api_2017_03_01::Models::TermsOfServiceProperties
      AccessInformationUpdateParameters = Azure::ARM::ApiManagement::Api_2017_03_01::Models::AccessInformationUpdateParameters
      TenantConfigurationSyncStateContract = Azure::ARM::ApiManagement::Api_2017_03_01::Models::TenantConfigurationSyncStateContract
      ProductEntityBaseParameters = Azure::ARM::ApiManagement::Api_2017_03_01::Models::ProductEntityBaseParameters
      SubscriptionsDelegationSettingsProperties = Azure::ARM::ApiManagement::Api_2017_03_01::Models::SubscriptionsDelegationSettingsProperties
      BackendAuthorizationHeaderCredentials = Azure::ARM::ApiManagement::Api_2017_03_01::Models::BackendAuthorizationHeaderCredentials
      RegistrationDelegationSettingsProperties = Azure::ARM::ApiManagement::Api_2017_03_01::Models::RegistrationDelegationSettingsProperties
      RequestReportCollection = Azure::ARM::ApiManagement::Api_2017_03_01::Models::RequestReportCollection
      SaveConfigurationParameter = Azure::ARM::ApiManagement::Api_2017_03_01::Models::SaveConfigurationParameter
      HostnameConfiguration = Azure::ARM::ApiManagement::Api_2017_03_01::Models::HostnameConfiguration
      ProductUpdateParameters = Azure::ARM::ApiManagement::Api_2017_03_01::Models::ProductUpdateParameters
      OAuth2AuthenticationSettingsContract = Azure::ARM::ApiManagement::Api_2017_03_01::Models::OAuth2AuthenticationSettingsContract
      OperationResultContract = Azure::ARM::ApiManagement::Api_2017_03_01::Models::OperationResultContract
      AuthorizationServerCollection = Azure::ARM::ApiManagement::Api_2017_03_01::Models::AuthorizationServerCollection
      SubscriptionCollection = Azure::ARM::ApiManagement::Api_2017_03_01::Models::SubscriptionCollection
      CertificateCollection = Azure::ARM::ApiManagement::Api_2017_03_01::Models::CertificateCollection
      DeployConfigurationParameters = Azure::ARM::ApiManagement::Api_2017_03_01::Models::DeployConfigurationParameters
      RequestContract = Azure::ARM::ApiManagement::Api_2017_03_01::Models::RequestContract
      PropertyCollection = Azure::ARM::ApiManagement::Api_2017_03_01::Models::PropertyCollection
      ApiManagementServiceBackupRestoreParameters = Azure::ARM::ApiManagement::Api_2017_03_01::Models::ApiManagementServiceBackupRestoreParameters
      PropertyUpdateParameters = Azure::ARM::ApiManagement::Api_2017_03_01::Models::PropertyUpdateParameters
      BackendCredentialsContract = Azure::ARM::ApiManagement::Api_2017_03_01::Models::BackendCredentialsContract
      PropertyEntityBaseParameters = Azure::ARM::ApiManagement::Api_2017_03_01::Models::PropertyEntityBaseParameters
      PolicyContract = Azure::ARM::ApiManagement::Api_2017_03_01::Models::PolicyContract
      ApiContractProperties = Azure::ARM::ApiManagement::Api_2017_03_01::Models::ApiContractProperties
      ApiContract = Azure::ARM::ApiManagement::Api_2017_03_01::Models::ApiContract
      OperationContract = Azure::ARM::ApiManagement::Api_2017_03_01::Models::OperationContract
      ProductContract = Azure::ARM::ApiManagement::Api_2017_03_01::Models::ProductContract
      AuthorizationServerContract = Azure::ARM::ApiManagement::Api_2017_03_01::Models::AuthorizationServerContract
      AuthorizationServerUpdateContract = Azure::ARM::ApiManagement::Api_2017_03_01::Models::AuthorizationServerUpdateContract
      BackendContract = Azure::ARM::ApiManagement::Api_2017_03_01::Models::BackendContract
      BackendUpdateParameters = Azure::ARM::ApiManagement::Api_2017_03_01::Models::BackendUpdateParameters
      CertificateContract = Azure::ARM::ApiManagement::Api_2017_03_01::Models::CertificateContract
      ApiManagementServiceResource = Azure::ARM::ApiManagement::Api_2017_03_01::Models::ApiManagementServiceResource
      ApiManagementServiceUpdateParameters = Azure::ARM::ApiManagement::Api_2017_03_01::Models::ApiManagementServiceUpdateParameters
      EmailTemplateContract = Azure::ARM::ApiManagement::Api_2017_03_01::Models::EmailTemplateContract
      GroupContract = Azure::ARM::ApiManagement::Api_2017_03_01::Models::GroupContract
      UserContract = Azure::ARM::ApiManagement::Api_2017_03_01::Models::UserContract
      IdentityProviderContract = Azure::ARM::ApiManagement::Api_2017_03_01::Models::IdentityProviderContract
      LoggerContract = Azure::ARM::ApiManagement::Api_2017_03_01::Models::LoggerContract
      OpenidConnectProviderContract = Azure::ARM::ApiManagement::Api_2017_03_01::Models::OpenidConnectProviderContract
      PortalSigninSettings = Azure::ARM::ApiManagement::Api_2017_03_01::Models::PortalSigninSettings
      PortalSignupSettings = Azure::ARM::ApiManagement::Api_2017_03_01::Models::PortalSignupSettings
      PortalDelegationSettings = Azure::ARM::ApiManagement::Api_2017_03_01::Models::PortalDelegationSettings
      SubscriptionContract = Azure::ARM::ApiManagement::Api_2017_03_01::Models::SubscriptionContract
      PropertyContract = Azure::ARM::ApiManagement::Api_2017_03_01::Models::PropertyContract
      Protocol = Azure::ARM::ApiManagement::Api_2017_03_01::Models::Protocol
      ContentFormat = Azure::ARM::ApiManagement::Api_2017_03_01::Models::ContentFormat
      ApiType = Azure::ARM::ApiManagement::Api_2017_03_01::Models::ApiType
      ProductState = Azure::ARM::ApiManagement::Api_2017_03_01::Models::ProductState
      GrantType = Azure::ARM::ApiManagement::Api_2017_03_01::Models::GrantType
      AuthorizationMethod = Azure::ARM::ApiManagement::Api_2017_03_01::Models::AuthorizationMethod
      ClientAuthenticationMethod = Azure::ARM::ApiManagement::Api_2017_03_01::Models::ClientAuthenticationMethod
      BearerTokenSendingMethod = Azure::ARM::ApiManagement::Api_2017_03_01::Models::BearerTokenSendingMethod
      BackendProtocol = Azure::ARM::ApiManagement::Api_2017_03_01::Models::BackendProtocol
      HostnameType = Azure::ARM::ApiManagement::Api_2017_03_01::Models::HostnameType
      SkuType = Azure::ARM::ApiManagement::Api_2017_03_01::Models::SkuType
      VirtualNetworkType = Azure::ARM::ApiManagement::Api_2017_03_01::Models::VirtualNetworkType
      NameAvailabilityReason = Azure::ARM::ApiManagement::Api_2017_03_01::Models::NameAvailabilityReason
      GroupType = Azure::ARM::ApiManagement::Api_2017_03_01::Models::GroupType
      UserState = Azure::ARM::ApiManagement::Api_2017_03_01::Models::UserState
      IdentityProviderType = Azure::ARM::ApiManagement::Api_2017_03_01::Models::IdentityProviderType
      LoggerType = Azure::ARM::ApiManagement::Api_2017_03_01::Models::LoggerType
      ConnectivityStatusType = Azure::ARM::ApiManagement::Api_2017_03_01::Models::ConnectivityStatusType
      SubscriptionState = Azure::ARM::ApiManagement::Api_2017_03_01::Models::SubscriptionState
      AsyncOperationStatus = Azure::ARM::ApiManagement::Api_2017_03_01::Models::AsyncOperationStatus
      KeyType = Azure::ARM::ApiManagement::Api_2017_03_01::Models::KeyType
      TemplateName = Azure::ARM::ApiManagement::Api_2017_03_01::Models::TemplateName
      PolicyScopeContract = Azure::ARM::ApiManagement::Api_2017_03_01::Models::PolicyScopeContract
      ExportFormat = Azure::ARM::ApiManagement::Api_2017_03_01::Models::ExportFormat
    end

    #
    # ApiManagement
    #
    class ApiManagementClass
      attr_accessor :policy, :policy_snippets, :regions, :api, :api_operation, :api_operation_policy, :api_product, :api_policy, :authorization_server, :backend, :certificate, :api_management_operations, :api_management_service, :email_template, :group, :group_user, :identity_provider, :logger, :network_status, :open_id_connect_provider, :sign_in_settings, :sign_up_settings, :delegation_settings, :product, :product_api, :product_group, :product_subscriptions, :product_policy, :property, :quota_by_counter_keys, :quota_by_period_keys, :reports, :subscription, :tenant_access, :tenant_access_git, :tenant_configuration, :user, :user_group, :user_subscription, :user_identities, :api_export, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::ApiManagement::Api_2017_03_01::ApiManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.policy = Azure::ARM::ApiManagement::Api_2017_03_01::Policy.new(client)
        self.policy_snippets = Azure::ARM::ApiManagement::Api_2017_03_01::PolicySnippets.new(client)
        self.regions = Azure::ARM::ApiManagement::Api_2017_03_01::Regions.new(client)
        self.api = Azure::ARM::ApiManagement::Api_2017_03_01::Api.new(client)
        self.api_operation = Azure::ARM::ApiManagement::Api_2017_03_01::ApiOperation.new(client)
        self.api_operation_policy = Azure::ARM::ApiManagement::Api_2017_03_01::ApiOperationPolicy.new(client)
        self.api_product = Azure::ARM::ApiManagement::Api_2017_03_01::ApiProduct.new(client)
        self.api_policy = Azure::ARM::ApiManagement::Api_2017_03_01::ApiPolicy.new(client)
        self.authorization_server = Azure::ARM::ApiManagement::Api_2017_03_01::AuthorizationServer.new(client)
        self.backend = Azure::ARM::ApiManagement::Api_2017_03_01::Backend.new(client)
        self.certificate = Azure::ARM::ApiManagement::Api_2017_03_01::Certificate.new(client)
        self.api_management_operations = Azure::ARM::ApiManagement::Api_2017_03_01::ApiManagementOperations.new(client)
        self.api_management_service = Azure::ARM::ApiManagement::Api_2017_03_01::ApiManagementService.new(client)
        self.email_template = Azure::ARM::ApiManagement::Api_2017_03_01::EmailTemplate.new(client)
        self.group = Azure::ARM::ApiManagement::Api_2017_03_01::Group.new(client)
        self.group_user = Azure::ARM::ApiManagement::Api_2017_03_01::GroupUser.new(client)
        self.identity_provider = Azure::ARM::ApiManagement::Api_2017_03_01::IdentityProvider.new(client)
        self.logger = Azure::ARM::ApiManagement::Api_2017_03_01::Logger.new(client)
        self.network_status = Azure::ARM::ApiManagement::Api_2017_03_01::NetworkStatus.new(client)
        self.open_id_connect_provider = Azure::ARM::ApiManagement::Api_2017_03_01::OpenIdConnectProvider.new(client)
        self.sign_in_settings = Azure::ARM::ApiManagement::Api_2017_03_01::SignInSettings.new(client)
        self.sign_up_settings = Azure::ARM::ApiManagement::Api_2017_03_01::SignUpSettings.new(client)
        self.delegation_settings = Azure::ARM::ApiManagement::Api_2017_03_01::DelegationSettings.new(client)
        self.product = Azure::ARM::ApiManagement::Api_2017_03_01::Product.new(client)
        self.product_api = Azure::ARM::ApiManagement::Api_2017_03_01::ProductApi.new(client)
        self.product_group = Azure::ARM::ApiManagement::Api_2017_03_01::ProductGroup.new(client)
        self.product_subscriptions = Azure::ARM::ApiManagement::Api_2017_03_01::ProductSubscriptions.new(client)
        self.product_policy = Azure::ARM::ApiManagement::Api_2017_03_01::ProductPolicy.new(client)
        self.property = Azure::ARM::ApiManagement::Api_2017_03_01::Property.new(client)
        self.quota_by_counter_keys = Azure::ARM::ApiManagement::Api_2017_03_01::QuotaByCounterKeys.new(client)
        self.quota_by_period_keys = Azure::ARM::ApiManagement::Api_2017_03_01::QuotaByPeriodKeys.new(client)
        self.reports = Azure::ARM::ApiManagement::Api_2017_03_01::Reports.new(client)
        self.subscription = Azure::ARM::ApiManagement::Api_2017_03_01::Subscription.new(client)
        self.tenant_access = Azure::ARM::ApiManagement::Api_2017_03_01::TenantAccess.new(client)
        self.tenant_access_git = Azure::ARM::ApiManagement::Api_2017_03_01::TenantAccessGit.new(client)
        self.tenant_configuration = Azure::ARM::ApiManagement::Api_2017_03_01::TenantConfiguration.new(client)
        self.user = Azure::ARM::ApiManagement::Api_2017_03_01::User.new(client)
        self.user_group = Azure::ARM::ApiManagement::Api_2017_03_01::UserGroup.new(client)
        self.user_subscription = Azure::ARM::ApiManagement::Api_2017_03_01::UserSubscription.new(client)
        self.user_identities = Azure::ARM::ApiManagement::Api_2017_03_01::UserIdentities.new(client)
        self.api_export = Azure::ARM::ApiManagement::Api_2017_03_01::ApiExport.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2017-03-01'
            client = Azure::ARM::ApiManagement::Api_2017_03_01::ApiManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def api_management_service_name_availability_result
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::ApiManagementServiceNameAvailabilityResult
        end
        def api_management_service_apply_network_configuration_parameters
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::ApiManagementServiceApplyNetworkConfigurationParameters
        end
        def error_response
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::ErrorResponse
        end
        def operation_display
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::OperationDisplay
        end
        def policy_collection
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::PolicyCollection
        end
        def operation
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::Operation
        end
        def policy_snippets_collection
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::PolicySnippetsCollection
        end
        def operation_list_result
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::OperationListResult
        end
        def region_list_result
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::RegionListResult
        end
        def email_template_parameters_contract_properties
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::EmailTemplateParametersContractProperties
        end
        def api_export_result
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::ApiExportResult
        end
        def error_field_contract
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::ErrorFieldContract
        end
        def apim_resource
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::ApimResource
        end
        def api_collection
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::ApiCollection
        end
        def quota_counter_value_contract
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::QuotaCounterValueContract
        end
        def api_update_contract
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::ApiUpdateContract
        end
        def api_management_service_list_result
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::ApiManagementServiceListResult
        end
        def authentication_settings_contract
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::AuthenticationSettingsContract
        end
        def api_management_service_get_sso_token_result
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::ApiManagementServiceGetSsoTokenResult
        end
        def api_entity_base_contract
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::ApiEntityBaseContract
        end
        def api_management_service_check_name_availability_parameters
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::ApiManagementServiceCheckNameAvailabilityParameters
        end
        def operation_collection
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::OperationCollection
        end
        def quota_counter_collection
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::QuotaCounterCollection
        end
        def representation_contract
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::RepresentationContract
        end
        def quota_counter_contract
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::QuotaCounterContract
        end
        def response_contract
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::ResponseContract
        end
        def policy_snippet_contract
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::PolicySnippetContract
        end
        def operation_update_contract
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::OperationUpdateContract
        end
        def region_contract
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::RegionContract
        end
        def access_information_contract
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::AccessInformationContract
        end
        def subscription_update_parameters
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::SubscriptionUpdateParameters
        end
        def quota_counter_value_contract_properties
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::QuotaCounterValueContractProperties
        end
        def subscription_create_parameters
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::SubscriptionCreateParameters
        end
        def authorization_server_contract_base_properties
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::AuthorizationServerContractBaseProperties
        end
        def email_template_collection
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::EmailTemplateCollection
        end
        def x509_certificate_name
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::X509CertificateName
        end
        def email_template_update_parameters
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::EmailTemplateUpdateParameters
        end
        def backend_properties
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::BackendProperties
        end
        def user_update_parameters
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::UserUpdateParameters
        end
        def backend_proxy_contract
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::BackendProxyContract
        end
        def group_collection
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::GroupCollection
        end
        def backend_base_parameters
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::BackendBaseParameters
        end
        def group_create_parameters
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::GroupCreateParameters
        end
        def backend_collection
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::BackendCollection
        end
        def group_update_parameters
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::GroupUpdateParameters
        end
        def report_collection
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::ReportCollection
        end
        def user_identity_contract
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::UserIdentityContract
        end
        def certificate_create_or_update_parameters
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::CertificateCreateOrUpdateParameters
        end
        def user_entity_base_parameters
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::UserEntityBaseParameters
        end
        def certificate_configuration
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::CertificateConfiguration
        end
        def user_token_result
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::UserTokenResult
        end
        def virtual_network_configuration
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::VirtualNetworkConfiguration
        end
        def user_collection
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::UserCollection
        end
        def additional_location
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::AdditionalLocation
        end
        def user_token_parameters
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::UserTokenParameters
        end
        def api_management_service_base_properties
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::ApiManagementServiceBaseProperties
        end
        def identity_provider_list
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::IdentityProviderList
        end
        def api_create_or_update_parameter
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::ApiCreateOrUpdateParameter
        end
        def identity_provider_update_parameters
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::IdentityProviderUpdateParameters
        end
        def subscription_key_parameter_names_contract
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::SubscriptionKeyParameterNamesContract
        end
        def identity_provider_base_parameters
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::IdentityProviderBaseParameters
        end
        def parameter_contract
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::ParameterContract
        end
        def user_identity_collection
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::UserIdentityCollection
        end
        def operation_entity_base_contract
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::OperationEntityBaseContract
        end
        def logger_collection
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::LoggerCollection
        end
        def product_collection
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::ProductCollection
        end
        def logger_update_contract
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::LoggerUpdateContract
        end
        def token_body_parameter_contract
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::TokenBodyParameterContract
        end
        def connectivity_status_contract
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::ConnectivityStatusContract
        end
        def backend_service_fabric_cluster_properties
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::BackendServiceFabricClusterProperties
        end
        def network_status_contract
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::NetworkStatusContract
        end
        def backend_tls_properties
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::BackendTlsProperties
        end
        def user_create_parameters
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::UserCreateParameters
        end
        def request_report_record_contract
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::RequestReportRecordContract
        end
        def open_id_connect_provider_collection
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::OpenIdConnectProviderCollection
        end
        def certificate_information
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::CertificateInformation
        end
        def openid_connect_provider_update_contract
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::OpenidConnectProviderUpdateContract
        end
        def api_management_service_sku_properties
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::ApiManagementServiceSkuProperties
        end
        def generate_sso_url_result
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::GenerateSsoUrlResult
        end
        def report_record_contract
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::ReportRecordContract
        end
        def terms_of_service_properties
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::TermsOfServiceProperties
        end
        def access_information_update_parameters
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::AccessInformationUpdateParameters
        end
        def tenant_configuration_sync_state_contract
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::TenantConfigurationSyncStateContract
        end
        def product_entity_base_parameters
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::ProductEntityBaseParameters
        end
        def subscriptions_delegation_settings_properties
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::SubscriptionsDelegationSettingsProperties
        end
        def backend_authorization_header_credentials
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::BackendAuthorizationHeaderCredentials
        end
        def registration_delegation_settings_properties
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::RegistrationDelegationSettingsProperties
        end
        def request_report_collection
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::RequestReportCollection
        end
        def save_configuration_parameter
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::SaveConfigurationParameter
        end
        def hostname_configuration
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::HostnameConfiguration
        end
        def product_update_parameters
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::ProductUpdateParameters
        end
        def oauth2_authentication_settings_contract
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::OAuth2AuthenticationSettingsContract
        end
        def operation_result_contract
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::OperationResultContract
        end
        def authorization_server_collection
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::AuthorizationServerCollection
        end
        def subscription_collection
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::SubscriptionCollection
        end
        def certificate_collection
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::CertificateCollection
        end
        def deploy_configuration_parameters
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::DeployConfigurationParameters
        end
        def request_contract
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::RequestContract
        end
        def property_collection
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::PropertyCollection
        end
        def api_management_service_backup_restore_parameters
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::ApiManagementServiceBackupRestoreParameters
        end
        def property_update_parameters
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::PropertyUpdateParameters
        end
        def backend_credentials_contract
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::BackendCredentialsContract
        end
        def property_entity_base_parameters
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::PropertyEntityBaseParameters
        end
        def policy_contract
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::PolicyContract
        end
        def api_contract_properties
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::ApiContractProperties
        end
        def api_contract
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::ApiContract
        end
        def operation_contract
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::OperationContract
        end
        def product_contract
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::ProductContract
        end
        def authorization_server_contract
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::AuthorizationServerContract
        end
        def authorization_server_update_contract
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::AuthorizationServerUpdateContract
        end
        def backend_contract
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::BackendContract
        end
        def backend_update_parameters
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::BackendUpdateParameters
        end
        def certificate_contract
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::CertificateContract
        end
        def api_management_service_resource
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::ApiManagementServiceResource
        end
        def api_management_service_update_parameters
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::ApiManagementServiceUpdateParameters
        end
        def email_template_contract
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::EmailTemplateContract
        end
        def group_contract
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::GroupContract
        end
        def user_contract
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::UserContract
        end
        def identity_provider_contract
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::IdentityProviderContract
        end
        def logger_contract
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::LoggerContract
        end
        def openid_connect_provider_contract
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::OpenidConnectProviderContract
        end
        def portal_signin_settings
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::PortalSigninSettings
        end
        def portal_signup_settings
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::PortalSignupSettings
        end
        def portal_delegation_settings
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::PortalDelegationSettings
        end
        def subscription_contract
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::SubscriptionContract
        end
        def property_contract
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::PropertyContract
        end
        def protocol
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::Protocol
        end
        def content_format
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::ContentFormat
        end
        def api_type
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::ApiType
        end
        def product_state
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::ProductState
        end
        def grant_type
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::GrantType
        end
        def authorization_method
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::AuthorizationMethod
        end
        def client_authentication_method
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::ClientAuthenticationMethod
        end
        def bearer_token_sending_method
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::BearerTokenSendingMethod
        end
        def backend_protocol
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::BackendProtocol
        end
        def hostname_type
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::HostnameType
        end
        def sku_type
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::SkuType
        end
        def virtual_network_type
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::VirtualNetworkType
        end
        def name_availability_reason
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::NameAvailabilityReason
        end
        def group_type
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::GroupType
        end
        def user_state
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::UserState
        end
        def identity_provider_type
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::IdentityProviderType
        end
        def logger_type
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::LoggerType
        end
        def connectivity_status_type
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::ConnectivityStatusType
        end
        def subscription_state
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::SubscriptionState
        end
        def async_operation_status
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::AsyncOperationStatus
        end
        def key_type
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::KeyType
        end
        def template_name
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::TemplateName
        end
        def policy_scope_contract
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::PolicyScopeContract
        end
        def export_format
          Azure::ARM::ApiManagement::Api_2017_03_01::Models::ExportFormat
        end
      end
    end
  end
end
