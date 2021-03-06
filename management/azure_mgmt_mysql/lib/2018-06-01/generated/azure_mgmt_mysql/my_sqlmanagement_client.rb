# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Mysql::Mgmt::V2018_06_01
  #
  # A service client - single point of access to the REST API.
  #
  class MySQLManagementClient < MsRestAzure::AzureServiceClient
    include MsRestAzure
    include MsRestAzure::Serialization

    # @return [String] the base URI of the service.
    attr_accessor :base_url

    # @return Credentials needed for the client to connect to Azure.
    attr_reader :credentials

    # @return [String] The ID of the target subscription.
    attr_accessor :subscription_id

    # @return [String] The API version to use for this operation.
    attr_reader :api_version

    # @return [String] The preferred language for the response.
    attr_accessor :accept_language

    # @return [Integer] The retry timeout in seconds for Long Running
    # Operations. Default value is 30.
    attr_accessor :long_running_operation_retry_timeout

    # @return [Boolean] Whether a unique x-ms-client-request-id should be
    # generated. When set to true a unique x-ms-client-request-id value is
    # generated and included in each request. Default is true.
    attr_accessor :generate_client_request_id

    # @return [Advisors] advisors
    attr_reader :advisors

    # @return [RecommendedActions] recommended_actions
    attr_reader :recommended_actions

    # @return [LocationBasedRecommendedActionSessionsOperationStatus]
    # location_based_recommended_action_sessions_operation_status
    attr_reader :location_based_recommended_action_sessions_operation_status

    # @return [LocationBasedRecommendedActionSessionsResult]
    # location_based_recommended_action_sessions_result
    attr_reader :location_based_recommended_action_sessions_result

    # @return [PrivateEndpointConnections] private_endpoint_connections
    attr_reader :private_endpoint_connections

    # @return [PrivateLinkResources] private_link_resources
    attr_reader :private_link_resources

    #
    # Creates initializes a new instance of the MySQLManagementClient class.
    # @param credentials [MsRest::ServiceClientCredentials] credentials to authorize HTTP requests made by the service client.
    # @param base_url [String] the base URI of the service.
    # @param options [Array] filters to be applied to the HTTP requests.
    #
    def initialize(credentials = nil, base_url = nil, options = nil)
      super(credentials, options)
      @base_url = base_url || 'https://management.azure.com'

      fail ArgumentError, 'invalid type of credentials input parameter' unless credentials.is_a?(MsRest::ServiceClientCredentials) unless credentials.nil?
      @credentials = credentials

      @advisors = Advisors.new(self)
      @recommended_actions = RecommendedActions.new(self)
      @location_based_recommended_action_sessions_operation_status = LocationBasedRecommendedActionSessionsOperationStatus.new(self)
      @location_based_recommended_action_sessions_result = LocationBasedRecommendedActionSessionsResult.new(self)
      @private_endpoint_connections = PrivateEndpointConnections.new(self)
      @private_link_resources = PrivateLinkResources.new(self)
      @api_version = '2018-06-01'
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

    #
    # Create recommendation action session for the advisor.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param server_name [String] The name of the server.
    # @param advisor_name [String] The advisor name for recommendation action.
    # @param database_name [String] The name of the database.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def create_recommended_action_session(resource_group_name, server_name, advisor_name, database_name, custom_headers:nil)
      response = create_recommended_action_session_async(resource_group_name, server_name, advisor_name, database_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # Create recommendation action session for the advisor.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param server_name [String] The name of the server.
    # @param advisor_name [String] The advisor name for recommendation action.
    # @param database_name [String] The name of the database.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_recommended_action_session_with_http_info(resource_group_name, server_name, advisor_name, database_name, custom_headers:nil)
      create_recommended_action_session_async(resource_group_name, server_name, advisor_name, database_name, custom_headers:custom_headers).value!
    end

    #
    # Create recommendation action session for the advisor.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param server_name [String] The name of the server.
    # @param advisor_name [String] The advisor name for recommendation action.
    # @param database_name [String] The name of the database.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_recommended_action_session_async(resource_group_name, server_name, advisor_name, database_name, custom_headers:nil)
      fail ArgumentError, 'api_version is nil' if api_version.nil?
      fail ArgumentError, "'api_version' should satisfy the constraint - 'MinLength': '1'" if !api_version.nil? && api_version.length < 1
      fail ArgumentError, 'subscription_id is nil' if subscription_id.nil?
      fail ArgumentError, "'subscription_id' should satisfy the constraint - 'MinLength': '1'" if !subscription_id.nil? && subscription_id.length < 1
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, 'server_name is nil' if server_name.nil?
      fail ArgumentError, 'advisor_name is nil' if advisor_name.nil?
      fail ArgumentError, 'database_name is nil' if database_name.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = accept_language unless accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/servers/{serverName}/advisors/{advisorName}/createRecommendedActionSession'

      request_url = @base_url || self.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => subscription_id,'resourceGroupName' => resource_group_name,'serverName' => server_name,'advisorName' => advisor_name},
          query_params: {'api-version' => api_version,'databaseName' => database_name},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = self.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 202
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Create recommendation action session for the advisor.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param server_name [String] The name of the server.
    # @param advisor_name [String] The advisor name for recommendation action.
    # @param database_name [String] The name of the database.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def begin_create_recommended_action_session(resource_group_name, server_name, advisor_name, database_name, custom_headers:nil)
      response = begin_create_recommended_action_session_async(resource_group_name, server_name, advisor_name, database_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # Create recommendation action session for the advisor.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param server_name [String] The name of the server.
    # @param advisor_name [String] The advisor name for recommendation action.
    # @param database_name [String] The name of the database.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_create_recommended_action_session_with_http_info(resource_group_name, server_name, advisor_name, database_name, custom_headers:nil)
      begin_create_recommended_action_session_async(resource_group_name, server_name, advisor_name, database_name, custom_headers:custom_headers).value!
    end

    #
    # Create recommendation action session for the advisor.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param server_name [String] The name of the server.
    # @param advisor_name [String] The advisor name for recommendation action.
    # @param database_name [String] The name of the database.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_create_recommended_action_session_async(resource_group_name, server_name, advisor_name, database_name, custom_headers:nil)
      fail ArgumentError, 'api_version is nil' if api_version.nil?
      fail ArgumentError, "'api_version' should satisfy the constraint - 'MinLength': '1'" if !api_version.nil? && api_version.length < 1
      fail ArgumentError, 'subscription_id is nil' if subscription_id.nil?
      fail ArgumentError, "'subscription_id' should satisfy the constraint - 'MinLength': '1'" if !subscription_id.nil? && subscription_id.length < 1
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, 'server_name is nil' if server_name.nil?
      fail ArgumentError, 'advisor_name is nil' if advisor_name.nil?
      fail ArgumentError, 'database_name is nil' if database_name.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = accept_language unless accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/servers/{serverName}/advisors/{advisorName}/createRecommendedActionSession'

      request_url = @base_url || self.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => subscription_id,'resourceGroupName' => resource_group_name,'serverName' => server_name,'advisorName' => advisor_name},
          query_params: {'api-version' => api_version,'databaseName' => database_name},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = self.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 202
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?

        result
      end

      promise.execute
    end


    private
    #
    # Adds telemetry information.
    #
    def add_telemetry
        sdk_information = 'azure_mgmt_mysql'
        sdk_information = "#{sdk_information}/0.17.2"
        add_user_agent_information(sdk_information)
    end
  end
end
