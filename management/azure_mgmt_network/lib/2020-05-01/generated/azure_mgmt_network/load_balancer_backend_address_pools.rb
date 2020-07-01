# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_05_01
  #
  # LoadBalancerBackendAddressPools
  #
  class LoadBalancerBackendAddressPools
    include MsRestAzure

    #
    # Creates and initializes a new instance of the LoadBalancerBackendAddressPools class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [NetworkManagementClient] reference to the NetworkManagementClient
    attr_reader :client

    #
    # Gets all the load balancer backed address pools.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param load_balancer_name [String] The name of the load balancer.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<BackendAddressPool>] operation results.
    #
    def list(resource_group_name, load_balancer_name, custom_headers:nil)
      first_page = list_as_lazy(resource_group_name, load_balancer_name, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # Gets all the load balancer backed address pools.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param load_balancer_name [String] The name of the load balancer.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(resource_group_name, load_balancer_name, custom_headers:nil)
      list_async(resource_group_name, load_balancer_name, custom_headers:custom_headers).value!
    end

    #
    # Gets all the load balancer backed address pools.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param load_balancer_name [String] The name of the load balancer.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(resource_group_name, load_balancer_name, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'load_balancer_name is nil' if load_balancer_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/loadBalancers/{loadBalancerName}/backendAddressPools'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'loadBalancerName' => load_balancer_name,'subscriptionId' => @client.subscription_id},
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
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Network::Mgmt::V2020_05_01::Models::LoadBalancerBackendAddressPoolListResult.mapper()
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
    # Gets load balancer backend address pool.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param load_balancer_name [String] The name of the load balancer.
    # @param backend_address_pool_name [String] The name of the backend address
    # pool.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [BackendAddressPool] operation results.
    #
    def get(resource_group_name, load_balancer_name, backend_address_pool_name, custom_headers:nil)
      response = get_async(resource_group_name, load_balancer_name, backend_address_pool_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets load balancer backend address pool.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param load_balancer_name [String] The name of the load balancer.
    # @param backend_address_pool_name [String] The name of the backend address
    # pool.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, load_balancer_name, backend_address_pool_name, custom_headers:nil)
      get_async(resource_group_name, load_balancer_name, backend_address_pool_name, custom_headers:custom_headers).value!
    end

    #
    # Gets load balancer backend address pool.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param load_balancer_name [String] The name of the load balancer.
    # @param backend_address_pool_name [String] The name of the backend address
    # pool.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, load_balancer_name, backend_address_pool_name, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'load_balancer_name is nil' if load_balancer_name.nil?
      fail ArgumentError, 'backend_address_pool_name is nil' if backend_address_pool_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/loadBalancers/{loadBalancerName}/backendAddressPools/{backendAddressPoolName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'loadBalancerName' => load_balancer_name,'backendAddressPoolName' => backend_address_pool_name,'subscriptionId' => @client.subscription_id},
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
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Network::Mgmt::V2020_05_01::Models::BackendAddressPool.mapper()
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
    # Creates or updates a load balancer backend address pool.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param load_balancer_name [String] The name of the load balancer.
    # @param backend_address_pool_name [String] The name of the backend address
    # pool.
    # @param parameters [BackendAddressPool] Parameters supplied to the create or
    # update load balancer backend address pool operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [BackendAddressPool] operation results.
    #
    def create_or_update(resource_group_name, load_balancer_name, backend_address_pool_name, parameters, custom_headers:nil)
      response = create_or_update_async(resource_group_name, load_balancer_name, backend_address_pool_name, parameters, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param resource_group_name [String] The name of the resource group.
    # @param load_balancer_name [String] The name of the load balancer.
    # @param backend_address_pool_name [String] The name of the backend address
    # pool.
    # @param parameters [BackendAddressPool] Parameters supplied to the create or
    # update load balancer backend address pool operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def create_or_update_async(resource_group_name, load_balancer_name, backend_address_pool_name, parameters, custom_headers:nil)
      # Send request
      promise = begin_create_or_update_async(resource_group_name, load_balancer_name, backend_address_pool_name, parameters, custom_headers:custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = Azure::Network::Mgmt::V2020_05_01::Models::BackendAddressPool.mapper()
          parsed_response = @client.deserialize(result_mapper, parsed_response)
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Deletes the specified load balancer backend address pool.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param load_balancer_name [String] The name of the load balancer.
    # @param backend_address_pool_name [String] The name of the backend address
    # pool.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    def delete(resource_group_name, load_balancer_name, backend_address_pool_name, custom_headers:nil)
      response = delete_async(resource_group_name, load_balancer_name, backend_address_pool_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # @param resource_group_name [String] The name of the resource group.
    # @param load_balancer_name [String] The name of the load balancer.
    # @param backend_address_pool_name [String] The name of the backend address
    # pool.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def delete_async(resource_group_name, load_balancer_name, backend_address_pool_name, custom_headers:nil)
      # Send request
      promise = begin_delete_async(resource_group_name, load_balancer_name, backend_address_pool_name, custom_headers:custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Creates or updates a load balancer backend address pool.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param load_balancer_name [String] The name of the load balancer.
    # @param backend_address_pool_name [String] The name of the backend address
    # pool.
    # @param parameters [BackendAddressPool] Parameters supplied to the create or
    # update load balancer backend address pool operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [BackendAddressPool] operation results.
    #
    def begin_create_or_update(resource_group_name, load_balancer_name, backend_address_pool_name, parameters, custom_headers:nil)
      response = begin_create_or_update_async(resource_group_name, load_balancer_name, backend_address_pool_name, parameters, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Creates or updates a load balancer backend address pool.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param load_balancer_name [String] The name of the load balancer.
    # @param backend_address_pool_name [String] The name of the backend address
    # pool.
    # @param parameters [BackendAddressPool] Parameters supplied to the create or
    # update load balancer backend address pool operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_create_or_update_with_http_info(resource_group_name, load_balancer_name, backend_address_pool_name, parameters, custom_headers:nil)
      begin_create_or_update_async(resource_group_name, load_balancer_name, backend_address_pool_name, parameters, custom_headers:custom_headers).value!
    end

    #
    # Creates or updates a load balancer backend address pool.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param load_balancer_name [String] The name of the load balancer.
    # @param backend_address_pool_name [String] The name of the backend address
    # pool.
    # @param parameters [BackendAddressPool] Parameters supplied to the create or
    # update load balancer backend address pool operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_create_or_update_async(resource_group_name, load_balancer_name, backend_address_pool_name, parameters, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'load_balancer_name is nil' if load_balancer_name.nil?
      fail ArgumentError, 'backend_address_pool_name is nil' if backend_address_pool_name.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::Network::Mgmt::V2020_05_01::Models::BackendAddressPool.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/loadBalancers/{loadBalancerName}/backendAddressPools/{backendAddressPoolName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'loadBalancerName' => load_balancer_name,'backendAddressPoolName' => backend_address_pool_name,'subscriptionId' => @client.subscription_id},
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
        unless status_code == 201 || status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Network::Mgmt::V2020_05_01::Models::BackendAddressPool.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Network::Mgmt::V2020_05_01::Models::BackendAddressPool.mapper()
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
    # Deletes the specified load balancer backend address pool.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param load_balancer_name [String] The name of the load balancer.
    # @param backend_address_pool_name [String] The name of the backend address
    # pool.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def begin_delete(resource_group_name, load_balancer_name, backend_address_pool_name, custom_headers:nil)
      response = begin_delete_async(resource_group_name, load_balancer_name, backend_address_pool_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # Deletes the specified load balancer backend address pool.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param load_balancer_name [String] The name of the load balancer.
    # @param backend_address_pool_name [String] The name of the backend address
    # pool.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_delete_with_http_info(resource_group_name, load_balancer_name, backend_address_pool_name, custom_headers:nil)
      begin_delete_async(resource_group_name, load_balancer_name, backend_address_pool_name, custom_headers:custom_headers).value!
    end

    #
    # Deletes the specified load balancer backend address pool.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param load_balancer_name [String] The name of the load balancer.
    # @param backend_address_pool_name [String] The name of the backend address
    # pool.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_delete_async(resource_group_name, load_balancer_name, backend_address_pool_name, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'load_balancer_name is nil' if load_balancer_name.nil?
      fail ArgumentError, 'backend_address_pool_name is nil' if backend_address_pool_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/loadBalancers/{loadBalancerName}/backendAddressPools/{backendAddressPoolName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'loadBalancerName' => load_balancer_name,'backendAddressPoolName' => backend_address_pool_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 204 || status_code == 202 || status_code == 200
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
    # Gets all the load balancer backed address pools.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [LoadBalancerBackendAddressPoolListResult] operation results.
    #
    def list_next(next_page_link, custom_headers:nil)
      response = list_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets all the load balancer backed address pools.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_next_with_http_info(next_page_link, custom_headers:nil)
      list_next_async(next_page_link, custom_headers:custom_headers).value!
    end

    #
    # Gets all the load balancer backed address pools.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_next_async(next_page_link, custom_headers:nil)
      fail ArgumentError, 'next_page_link is nil' if next_page_link.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{nextLink}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'nextLink' => next_page_link},
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
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Network::Mgmt::V2020_05_01::Models::LoadBalancerBackendAddressPoolListResult.mapper()
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
    # Gets all the load balancer backed address pools.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param load_balancer_name [String] The name of the load balancer.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [LoadBalancerBackendAddressPoolListResult] which provide lazy access
    # to pages of the response.
    #
    def list_as_lazy(resource_group_name, load_balancer_name, custom_headers:nil)
      response = list_async(resource_group_name, load_balancer_name, custom_headers:custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_next_async(next_page_link, custom_headers:custom_headers)
        end
        page
      end
    end

  end
end
