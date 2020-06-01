# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataShare::Mgmt::V2018_11_01_preview
  #
  # A service client - single point of access to the REST API.
  #
  class DataShareManagementClient < MsRestAzure::AzureServiceClient
    include MsRestAzure
    include MsRestAzure::Serialization

    # @return [String] the base URI of the service.
    attr_accessor :base_url

    # @return Credentials needed for the client to connect to Azure.
    attr_reader :credentials

    # @return [String] The api version to use.
    attr_reader :api_version

    # @return [String] The subscription identifier
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

    # @return [Accounts] accounts
    attr_reader :accounts

    # @return [ConsumerInvitations] consumer_invitations
    attr_reader :consumer_invitations

    # @return [DataSets] data_sets
    attr_reader :data_sets

    # @return [DataSetMappings] data_set_mappings
    attr_reader :data_set_mappings

    # @return [Invitations] invitations
    attr_reader :invitations

    # @return [Operations] operations
    attr_reader :operations

    # @return [Shares] shares
    attr_reader :shares

    # @return [ProviderShareSubscriptions] provider_share_subscriptions
    attr_reader :provider_share_subscriptions

    # @return [ShareSubscriptions] share_subscriptions
    attr_reader :share_subscriptions

    # @return [ConsumerSourceDataSets] consumer_source_data_sets
    attr_reader :consumer_source_data_sets

    # @return [SynchronizationSettings] synchronization_settings
    attr_reader :synchronization_settings

    # @return [Triggers] triggers
    attr_reader :triggers

    #
    # Creates initializes a new instance of the DataShareManagementClient class.
    # @param credentials [MsRest::ServiceClientCredentials] credentials to authorize HTTP requests made by the service client.
    # @param base_url [String] the base URI of the service.
    # @param options [Array] filters to be applied to the HTTP requests.
    #
    def initialize(credentials = nil, base_url = nil, options = nil)
      super(credentials, options)
      @base_url = base_url || 'https://management.azure.com'

      fail ArgumentError, 'invalid type of credentials input parameter' unless credentials.is_a?(MsRest::ServiceClientCredentials) unless credentials.nil?
      @credentials = credentials

      @accounts = Accounts.new(self)
      @consumer_invitations = ConsumerInvitations.new(self)
      @data_sets = DataSets.new(self)
      @data_set_mappings = DataSetMappings.new(self)
      @invitations = Invitations.new(self)
      @operations = Operations.new(self)
      @shares = Shares.new(self)
      @provider_share_subscriptions = ProviderShareSubscriptions.new(self)
      @share_subscriptions = ShareSubscriptions.new(self)
      @consumer_source_data_sets = ConsumerSourceDataSets.new(self)
      @synchronization_settings = SynchronizationSettings.new(self)
      @triggers = Triggers.new(self)
      @api_version = '2018-11-01-preview'
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
        sdk_information = 'azure_mgmt_datashare'
        sdk_information = "#{sdk_information}/0.17.2"
        add_user_agent_information(sdk_information)
    end
  end
end
