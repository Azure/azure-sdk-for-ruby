# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2019_01_01
  #
  # A service client - single point of access to the REST API.
  #
  class ApiManagementClient < MsRestAzure::AzureServiceClient
    include MsRestAzure
    include MsRestAzure::Serialization

    # @return [String] the base URI of the service.
    attr_accessor :base_url

    # @return Credentials needed for the client to connect to Azure.
    attr_reader :credentials

    # @return [String] Version of the API to be used with the client request.
    attr_reader :api_version

    # @return [String] Subscription credentials which uniquely identify
    # Microsoft Azure subscription. The subscription ID forms part of the URI
    # for every service call.
    attr_accessor :subscription_id

    # @return [String] The preferred language for the response.
    attr_accessor :accept_language

    # @return [Integer] The retry timeout in seconds for Long Running
    # Operations. Default value is 30.
    attr_accessor :long_running_operation_retry_timeout

    # @return [Boolean] Whether a unique x-ms-client-request-id should be
    # generated. When set to true a unique x-ms-client-request-id value is
    # generated and included in each request. Default is true.
    attr_accessor :generate_client_request_id

    # @return [Api] api
    attr_reader :api

    # @return [ApiRevision] api_revision
    attr_reader :api_revision

    # @return [ApiRelease] api_release
    attr_reader :api_release

    # @return [ApiOperation] api_operation
    attr_reader :api_operation

    # @return [ApiOperationPolicy] api_operation_policy
    attr_reader :api_operation_policy

    # @return [Tag] tag
    attr_reader :tag

    # @return [ApiProduct] api_product
    attr_reader :api_product

    # @return [ApiPolicy] api_policy
    attr_reader :api_policy

    # @return [ApiSchema] api_schema
    attr_reader :api_schema

    # @return [ApiDiagnostic] api_diagnostic
    attr_reader :api_diagnostic

    # @return [ApiIssue] api_issue
    attr_reader :api_issue

    # @return [ApiIssueComment] api_issue_comment
    attr_reader :api_issue_comment

    # @return [ApiIssueAttachment] api_issue_attachment
    attr_reader :api_issue_attachment

    # @return [ApiTagDescription] api_tag_description
    attr_reader :api_tag_description

    # @return [OperationOperations] operation_operations
    attr_reader :operation_operations

    # @return [ApiVersionSet] api_version_set
    attr_reader :api_version_set

    # @return [AuthorizationServer] authorization_server
    attr_reader :authorization_server

    # @return [Backend] backend
    attr_reader :backend

    # @return [Cache] cache
    attr_reader :cache

    # @return [Certificate] certificate
    attr_reader :certificate

    # @return [ApiManagementOperations] api_management_operations
    attr_reader :api_management_operations

    # @return [ApiManagementServiceSkus] api_management_service_skus
    attr_reader :api_management_service_skus

    # @return [ApiManagementService] api_management_service
    attr_reader :api_management_service

    # @return [Diagnostic] diagnostic
    attr_reader :diagnostic

    # @return [EmailTemplate] email_template
    attr_reader :email_template

    # @return [Group] group
    attr_reader :group

    # @return [GroupUser] group_user
    attr_reader :group_user

    # @return [IdentityProvider] identity_provider
    attr_reader :identity_provider

    # @return [Issue] issue
    attr_reader :issue

    # @return [Logger] logger
    attr_reader :logger

    # @return [NetworkStatus] network_status
    attr_reader :network_status

    # @return [Notification] notification
    attr_reader :notification

    # @return [NotificationRecipientUser] notification_recipient_user
    attr_reader :notification_recipient_user

    # @return [NotificationRecipientEmail] notification_recipient_email
    attr_reader :notification_recipient_email

    # @return [OpenIdConnectProvider] open_id_connect_provider
    attr_reader :open_id_connect_provider

    # @return [Policy] policy
    attr_reader :policy

    # @return [PolicySnippet] policy_snippet
    attr_reader :policy_snippet

    # @return [SignInSettings] sign_in_settings
    attr_reader :sign_in_settings

    # @return [SignUpSettings] sign_up_settings
    attr_reader :sign_up_settings

    # @return [DelegationSettings] delegation_settings
    attr_reader :delegation_settings

    # @return [Product] product
    attr_reader :product

    # @return [ProductApi] product_api
    attr_reader :product_api

    # @return [ProductGroup] product_group
    attr_reader :product_group

    # @return [ProductSubscriptions] product_subscriptions
    attr_reader :product_subscriptions

    # @return [ProductPolicy] product_policy
    attr_reader :product_policy

    # @return [Property] property
    attr_reader :property

    # @return [QuotaByCounterKeys] quota_by_counter_keys
    attr_reader :quota_by_counter_keys

    # @return [QuotaByPeriodKeys] quota_by_period_keys
    attr_reader :quota_by_period_keys

    # @return [Region] region
    attr_reader :region

    # @return [Reports] reports
    attr_reader :reports

    # @return [Subscription] subscription
    attr_reader :subscription

    # @return [TagResource] tag_resource
    attr_reader :tag_resource

    # @return [TenantAccess] tenant_access
    attr_reader :tenant_access

    # @return [TenantAccessGit] tenant_access_git
    attr_reader :tenant_access_git

    # @return [TenantConfiguration] tenant_configuration
    attr_reader :tenant_configuration

    # @return [User] user
    attr_reader :user

    # @return [UserGroup] user_group
    attr_reader :user_group

    # @return [UserSubscription] user_subscription
    attr_reader :user_subscription

    # @return [UserIdentities] user_identities
    attr_reader :user_identities

    # @return [UserConfirmationPassword] user_confirmation_password
    attr_reader :user_confirmation_password

    # @return [ApiExport] api_export
    attr_reader :api_export

    #
    # Creates initializes a new instance of the ApiManagementClient class.
    # @param credentials [MsRest::ServiceClientCredentials] credentials to authorize HTTP requests made by the service client.
    # @param base_url [String] the base URI of the service.
    # @param options [Array] filters to be applied to the HTTP requests.
    #
    def initialize(credentials = nil, base_url = nil, options = nil)
      super(credentials, options)
      @base_url = base_url || 'https://management.azure.com'

      fail ArgumentError, 'invalid type of credentials input parameter' unless credentials.is_a?(MsRest::ServiceClientCredentials) unless credentials.nil?
      @credentials = credentials

      @api = Api.new(self)
      @api_revision = ApiRevision.new(self)
      @api_release = ApiRelease.new(self)
      @api_operation = ApiOperation.new(self)
      @api_operation_policy = ApiOperationPolicy.new(self)
      @tag = Tag.new(self)
      @api_product = ApiProduct.new(self)
      @api_policy = ApiPolicy.new(self)
      @api_schema = ApiSchema.new(self)
      @api_diagnostic = ApiDiagnostic.new(self)
      @api_issue = ApiIssue.new(self)
      @api_issue_comment = ApiIssueComment.new(self)
      @api_issue_attachment = ApiIssueAttachment.new(self)
      @api_tag_description = ApiTagDescription.new(self)
      @operation_operations = OperationOperations.new(self)
      @api_version_set = ApiVersionSet.new(self)
      @authorization_server = AuthorizationServer.new(self)
      @backend = Backend.new(self)
      @cache = Cache.new(self)
      @certificate = Certificate.new(self)
      @api_management_operations = ApiManagementOperations.new(self)
      @api_management_service_skus = ApiManagementServiceSkus.new(self)
      @api_management_service = ApiManagementService.new(self)
      @diagnostic = Diagnostic.new(self)
      @email_template = EmailTemplate.new(self)
      @group = Group.new(self)
      @group_user = GroupUser.new(self)
      @identity_provider = IdentityProvider.new(self)
      @issue = Issue.new(self)
      @logger = Logger.new(self)
      @network_status = NetworkStatus.new(self)
      @notification = Notification.new(self)
      @notification_recipient_user = NotificationRecipientUser.new(self)
      @notification_recipient_email = NotificationRecipientEmail.new(self)
      @open_id_connect_provider = OpenIdConnectProvider.new(self)
      @policy = Policy.new(self)
      @policy_snippet = PolicySnippet.new(self)
      @sign_in_settings = SignInSettings.new(self)
      @sign_up_settings = SignUpSettings.new(self)
      @delegation_settings = DelegationSettings.new(self)
      @product = Product.new(self)
      @product_api = ProductApi.new(self)
      @product_group = ProductGroup.new(self)
      @product_subscriptions = ProductSubscriptions.new(self)
      @product_policy = ProductPolicy.new(self)
      @property = Property.new(self)
      @quota_by_counter_keys = QuotaByCounterKeys.new(self)
      @quota_by_period_keys = QuotaByPeriodKeys.new(self)
      @region = Region.new(self)
      @reports = Reports.new(self)
      @subscription = Subscription.new(self)
      @tag_resource = TagResource.new(self)
      @tenant_access = TenantAccess.new(self)
      @tenant_access_git = TenantAccessGit.new(self)
      @tenant_configuration = TenantConfiguration.new(self)
      @user = User.new(self)
      @user_group = UserGroup.new(self)
      @user_subscription = UserSubscription.new(self)
      @user_identities = UserIdentities.new(self)
      @user_confirmation_password = UserConfirmationPassword.new(self)
      @api_export = ApiExport.new(self)
      @api_version = '2019-01-01'
      @accept_language = 'en-US'
      @long_running_operation_retry_timeout = 30
      @generate_client_request_id = true
      add_telemetry
    end

    #
    # Makes a request and returns the body of the response.
    # @param method [Symbol] with any of the following values :get, :put, :post, :patch, :delete.
    # @param path [String] the path, relative to {base_url}.
    # @param options [Hash{String=>String}] specifying any request options like :body.
    # @return [Hash{String=>String}] containing the body of the response.
    # Example:
    #
    #  request_content = "{'location':'westus','tags':{'tag1':'val1','tag2':'val2'}}"
    #  path = "/path"
    #  options = {
    #    body: request_content,
    #    query_params: {'api-version' => '2016-02-01'}
    #  }
    #  result = @client.make_request(:put, path, options)
    #
    def make_request(method, path, options = {})
      result = make_request_with_http_info(method, path, options)
      result.body unless result.nil?
    end

    #
    # Makes a request and returns the operation response.
    # @param method [Symbol] with any of the following values :get, :put, :post, :patch, :delete.
    # @param path [String] the path, relative to {base_url}.
    # @param options [Hash{String=>String}] specifying any request options like :body.
    # @return [MsRestAzure::AzureOperationResponse] Operation response containing the request, response and status.
    #
    def make_request_with_http_info(method, path, options = {})
      result = make_request_async(method, path, options).value!
      result.body = result.response.body.to_s.empty? ? nil : JSON.load(result.response.body)
      result
    end

    #
    # Makes a request asynchronously.
    # @param method [Symbol] with any of the following values :get, :put, :post, :patch, :delete.
    # @param path [String] the path, relative to {base_url}.
    # @param options [Hash{String=>String}] specifying any request options like :body.
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def make_request_async(method, path, options = {})
      fail ArgumentError, 'method is nil' if method.nil?
      fail ArgumentError, 'path is nil' if path.nil?

      request_url = options[:base_url] || @base_url
      if(!options[:headers].nil? && !options[:headers]['Content-Type'].nil?)
        @request_headers['Content-Type'] = options[:headers]['Content-Type']
      end

      request_headers = @request_headers
      request_headers.merge!({'accept-language' => @accept_language}) unless @accept_language.nil?
      options.merge!({headers: request_headers.merge(options[:headers] || {})})
      options.merge!({credentials: @credentials}) unless @credentials.nil?

      super(request_url, method, path, options)
    end


    private
    #
    # Adds telemetry information.
    #
    def add_telemetry
        sdk_information = 'azure_mgmt_api_management'
        sdk_information = "#{sdk_information}/0.18.5"
        add_user_agent_information(sdk_information)
    end
  end
end
