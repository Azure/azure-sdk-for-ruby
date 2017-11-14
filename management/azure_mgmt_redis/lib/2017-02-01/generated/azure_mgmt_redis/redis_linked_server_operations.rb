# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Redis::Mgmt::V2017_02_01
  #
  # REST API for Azure Redis Cache Service.
  #
  class RedisLinkedServerOperations
    include MsRestAzure

    #
    # Creates and initializes a new instance of the RedisLinkedServerOperations class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [RedisManagementClient] reference to the RedisManagementClient
    attr_reader :client

    #
    # Adds a linked server to the Redis cache (requires Premium SKU).
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param name [String] The name of the Redis cache.
    # @param linked_server_name [String] The name of the linked server that is
    # being added to the Redis cache.
    # @param parameters [RedisLinkedServerCreateParameters] Parameters supplied to
    # the Create Linked server operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [RedisLinkedServerWithProperties] operation results.
    #
    def create(resource_group_name, name, linked_server_name, parameters, custom_headers = nil)
      response = create_async(resource_group_name, name, linked_server_name, parameters, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param resource_group_name [String] The name of the resource group.
    # @param name [String] The name of the Redis cache.
    # @param linked_server_name [String] The name of the linked server that is
    # being added to the Redis cache.
    # @param parameters [RedisLinkedServerCreateParameters] Parameters supplied to
    # the Create Linked server operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def create_async(resource_group_name, name, linked_server_name, parameters, custom_headers = nil)
      # Send request
      promise = begin_create_async(resource_group_name, name, linked_server_name, parameters, custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          parsed_response = Azure::Redis::Mgmt::V2017_02_01::Models::RedisLinkedServerWithProperties.new.from_json(parsed_response)
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Deletes the linked server from a redis cache (requires Premium SKU).
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param name [String] The name of the redis cache.
    # @param linked_server_name [String] The name of the linked server that is
    # being added to the Redis cache.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(resource_group_name, name, linked_server_name, custom_headers = nil)
      response = delete_async(resource_group_name, name, linked_server_name, custom_headers).value!
      nil
    end

    #
    # Deletes the linked server from a redis cache (requires Premium SKU).
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param name [String] The name of the redis cache.
    # @param linked_server_name [String] The name of the linked server that is
    # being added to the Redis cache.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(resource_group_name, name, linked_server_name, custom_headers = nil)
      delete_async(resource_group_name, name, linked_server_name, custom_headers).value!
    end

    #
    # Deletes the linked server from a redis cache (requires Premium SKU).
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param name [String] The name of the redis cache.
    # @param linked_server_name [String] The name of the linked server that is
    # being added to the Redis cache.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(resource_group_name, name, linked_server_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'name is nil' if name.nil?
      fail ArgumentError, 'linked_server_name is nil' if linked_server_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cache/Redis/{name}/linkedServers/{linkedServerName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'name' => name,'linkedServerName' => linked_server_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Gets the detailed information about a linked server of a redis cache
    # (requires Premium SKU).
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param name [String] The name of the redis cache.
    # @param linked_server_name [String] The name of the linked server.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [RedisLinkedServerWithProperties] operation results.
    #
    def get(resource_group_name, name, linked_server_name, custom_headers = nil)
      response = get_async(resource_group_name, name, linked_server_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the detailed information about a linked server of a redis cache
    # (requires Premium SKU).
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param name [String] The name of the redis cache.
    # @param linked_server_name [String] The name of the linked server.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, name, linked_server_name, custom_headers = nil)
      get_async(resource_group_name, name, linked_server_name, custom_headers).value!
    end

    #
    # Gets the detailed information about a linked server of a redis cache
    # (requires Premium SKU).
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param name [String] The name of the redis cache.
    # @param linked_server_name [String] The name of the linked server.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, name, linked_server_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'name is nil' if name.nil?
      fail ArgumentError, 'linked_server_name is nil' if linked_server_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cache/Redis/{name}/linkedServers/{linkedServerName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'name' => name,'linkedServerName' => linked_server_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
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
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result.body = Azure::Redis::Mgmt::V2017_02_01::Models::RedisLinkedServerWithProperties.new.from_json(parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets the list of linked servers associated with this redis cache (requires
    # Premium SKU).
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param name [String] The name of the redis cache.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [RedisLinkedServerWithPropertiesList] operation results.
    #
    def list(resource_group_name, name, custom_headers = nil)
      response = list_async(resource_group_name, name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the list of linked servers associated with this redis cache (requires
    # Premium SKU).
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param name [String] The name of the redis cache.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(resource_group_name, name, custom_headers = nil)
      list_async(resource_group_name, name, custom_headers).value!
    end

    #
    # Gets the list of linked servers associated with this redis cache (requires
    # Premium SKU).
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param name [String] The name of the redis cache.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(resource_group_name, name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'name is nil' if name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cache/Redis/{name}/linkedServers'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'name' => name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
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
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result.body = Azure::Redis::Mgmt::V2017_02_01::Models::RedisLinkedServerWithPropertiesList.new.from_json(parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Adds a linked server to the Redis cache (requires Premium SKU).
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param name [String] The name of the Redis cache.
    # @param linked_server_name [String] The name of the linked server that is
    # being added to the Redis cache.
    # @param parameters [RedisLinkedServerCreateParameters] Parameters supplied to
    # the Create Linked server operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [RedisLinkedServerWithProperties] operation results.
    #
    def begin_create(resource_group_name, name, linked_server_name, parameters, custom_headers = nil)
      response = begin_create_async(resource_group_name, name, linked_server_name, parameters, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Adds a linked server to the Redis cache (requires Premium SKU).
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param name [String] The name of the Redis cache.
    # @param linked_server_name [String] The name of the linked server that is
    # being added to the Redis cache.
    # @param parameters [RedisLinkedServerCreateParameters] Parameters supplied to
    # the Create Linked server operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_create_with_http_info(resource_group_name, name, linked_server_name, parameters, custom_headers = nil)
      begin_create_async(resource_group_name, name, linked_server_name, parameters, custom_headers).value!
    end

    #
    # Adds a linked server to the Redis cache (requires Premium SKU).
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param name [String] The name of the Redis cache.
    # @param linked_server_name [String] The name of the linked server that is
    # being added to the Redis cache.
    # @param parameters [RedisLinkedServerCreateParameters] Parameters supplied to
    # the Create Linked server operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_create_async(resource_group_name, name, linked_server_name, parameters, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'name is nil' if name.nil?
      fail ArgumentError, 'linked_server_name is nil' if linked_server_name.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_content = parameters.nil? ? nil: parameters.to_json
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cache/Redis/{name}/linkedServers/{linkedServerName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'name' => name,'linkedServerName' => linked_server_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 201
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result.body = Azure::Redis::Mgmt::V2017_02_01::Models::RedisLinkedServerWithProperties.new.from_json(parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result.body = Azure::Redis::Mgmt::V2017_02_01::Models::RedisLinkedServerWithProperties.new.from_json(parsed_response)
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
