# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL
  #
  # The Azure SQL Database management API provides a RESTful set of web
  # services that interact with Azure SQL Database services to manage your
  # databases. The API enables you to create, retrieve, update, and delete
  # databases.
  #
  class DataMaskingPolicies

    #
    # Creates and initializes a new instance of the DataMaskingPolicies class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [SqlManagementClient] reference to the SqlManagementClient
    attr_reader :client

    #
    # Creates or updates a database data masking policy
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param database_name [String] The name of the database.
    # @param parameters [DataMaskingPolicy] Parameters for creating or updating a
    # data masking policy.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [DataMaskingPolicy] operation results.
    #
    def create_or_update(resource_group_name, server_name, database_name, parameters, custom_headers = nil)
      response = create_or_update_async(resource_group_name, server_name, database_name, parameters, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Creates or updates a database data masking policy
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param database_name [String] The name of the database.
    # @param parameters [DataMaskingPolicy] Parameters for creating or updating a
    # data masking policy.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRest::HttpOperationResponse] HTTP response information.
    #
    def create_or_update_with_http_info(resource_group_name, server_name, database_name, parameters, custom_headers = nil)
      create_or_update_async(resource_group_name, server_name, database_name, parameters, custom_headers).value!
    end

    #
    # Creates or updates a database data masking policy
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param database_name [String] The name of the database.
    # @param parameters [DataMaskingPolicy] Parameters for creating or updating a
    # data masking policy.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_or_update_async(resource_group_name, server_name, database_name, parameters, custom_headers = nil)
      api_version = '2014-04-01'
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'server_name is nil' if server_name.nil?
      fail ArgumentError, 'database_name is nil' if database_name.nil?
      data_masking_policy_name = 'Default'
      fail ArgumentError, 'parameters is nil' if parameters.nil?


      request_headers = {}

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = Azure::ARM::SQL::Models::DataMaskingPolicy.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/databases/{databaseName}/dataMaskingPolicies/{dataMaskingPolicyName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'serverName' => server_name,'databaseName' => database_name,'dataMaskingPolicyName' => data_masking_policy_name},
          query_params: {'api-version' => api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ARM::SQL::Models::DataMaskingPolicy.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets a database data masking policy.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param database_name [String] The name of the database.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [DataMaskingPolicy] operation results.
    #
    def get(resource_group_name, server_name, database_name, custom_headers = nil)
      response = get_async(resource_group_name, server_name, database_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets a database data masking policy.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param database_name [String] The name of the database.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRest::HttpOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, server_name, database_name, custom_headers = nil)
      get_async(resource_group_name, server_name, database_name, custom_headers).value!
    end

    #
    # Gets a database data masking policy.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param database_name [String] The name of the database.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, server_name, database_name, custom_headers = nil)
      api_version = '2014-04-01'
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'server_name is nil' if server_name.nil?
      fail ArgumentError, 'database_name is nil' if database_name.nil?
      data_masking_policy_name = 'Default'


      request_headers = {}
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/databases/{databaseName}/dataMaskingPolicies/{dataMaskingPolicyName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'serverName' => server_name,'databaseName' => database_name,'dataMaskingPolicyName' => data_masking_policy_name},
          query_params: {'api-version' => api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ARM::SQL::Models::DataMaskingPolicy.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

  end
end
