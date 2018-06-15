# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerRegistry::Mgmt::V2017_06_01_preview
  #
  # Replications
  #
  class Replications
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Replications class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ContainerRegistryManagementClient] reference to the ContainerRegistryManagementClient
    attr_reader :client

    #
    # Gets the properties of the specified replication.
    #
    # @param resource_group_name [String] The name of the resource group to which
    # the container registry belongs.
    # @param registry_name [String] The name of the container registry.
    # @param replication_name [String] The name of the replication.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Replication] operation results.
    #
    def get(resource_group_name, registry_name, replication_name, custom_headers = nil)
      response = get_async(resource_group_name, registry_name, replication_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the properties of the specified replication.
    #
    # @param resource_group_name [String] The name of the resource group to which
    # the container registry belongs.
    # @param registry_name [String] The name of the container registry.
    # @param replication_name [String] The name of the replication.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, registry_name, replication_name, custom_headers = nil)
      get_async(resource_group_name, registry_name, replication_name, custom_headers).value!
    end

    #
    # Gets the properties of the specified replication.
    #
    # @param resource_group_name [String] The name of the resource group to which
    # the container registry belongs.
    # @param registry_name [String] The name of the container registry.
    # @param replication_name [String] The name of the replication.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, registry_name, replication_name, custom_headers = nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'registry_name is nil' if registry_name.nil?
      fail ArgumentError, 'replication_name is nil' if replication_name.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerRegistry/registries/{registryName}/replications/{replicationName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'registryName' => registry_name,'replicationName' => replication_name},
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
            result_mapper = Azure::ContainerRegistry::Mgmt::V2017_06_01_preview::Models::Replication.mapper()
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
    # Creates a replication for a container registry with the specified parameters.
    #
    # @param resource_group_name [String] The name of the resource group to which
    # the container registry belongs.
    # @param registry_name [String] The name of the container registry.
    # @param replication_name [String] The name of the replication.
    # @param replication [Replication] The parameters for creating a replication.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Replication] operation results.
    #
    def create(resource_group_name, registry_name, replication_name, replication, custom_headers = nil)
      response = create_async(resource_group_name, registry_name, replication_name, replication, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param resource_group_name [String] The name of the resource group to which
    # the container registry belongs.
    # @param registry_name [String] The name of the container registry.
    # @param replication_name [String] The name of the replication.
    # @param replication [Replication] The parameters for creating a replication.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def create_async(resource_group_name, registry_name, replication_name, replication, custom_headers = nil)
      # Send request
      promise = begin_create_async(resource_group_name, registry_name, replication_name, replication, custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = Azure::ContainerRegistry::Mgmt::V2017_06_01_preview::Models::Replication.mapper()
          parsed_response = @client.deserialize(result_mapper, parsed_response)
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Deletes a replication from a container registry.
    #
    # @param resource_group_name [String] The name of the resource group to which
    # the container registry belongs.
    # @param registry_name [String] The name of the container registry.
    # @param replication_name [String] The name of the replication.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    def delete(resource_group_name, registry_name, replication_name, custom_headers = nil)
      response = delete_async(resource_group_name, registry_name, replication_name, custom_headers).value!
      nil
    end

    #
    # @param resource_group_name [String] The name of the resource group to which
    # the container registry belongs.
    # @param registry_name [String] The name of the container registry.
    # @param replication_name [String] The name of the replication.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def delete_async(resource_group_name, registry_name, replication_name, custom_headers = nil)
      # Send request
      promise = begin_delete_async(resource_group_name, registry_name, replication_name, custom_headers)

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
    # Updates a replication for a container registry with the specified parameters.
    #
    # @param resource_group_name [String] The name of the resource group to which
    # the container registry belongs.
    # @param registry_name [String] The name of the container registry.
    # @param replication_name [String] The name of the replication.
    # @param replication_update_parameters [ReplicationUpdateParameters] The
    # parameters for updating a replication.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Replication] operation results.
    #
    def update(resource_group_name, registry_name, replication_name, replication_update_parameters, custom_headers = nil)
      response = update_async(resource_group_name, registry_name, replication_name, replication_update_parameters, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param resource_group_name [String] The name of the resource group to which
    # the container registry belongs.
    # @param registry_name [String] The name of the container registry.
    # @param replication_name [String] The name of the replication.
    # @param replication_update_parameters [ReplicationUpdateParameters] The
    # parameters for updating a replication.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def update_async(resource_group_name, registry_name, replication_name, replication_update_parameters, custom_headers = nil)
      # Send request
      promise = begin_update_async(resource_group_name, registry_name, replication_name, replication_update_parameters, custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = Azure::ContainerRegistry::Mgmt::V2017_06_01_preview::Models::Replication.mapper()
          parsed_response = @client.deserialize(result_mapper, parsed_response)
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Lists all the replications for the specified container registry.
    #
    # @param resource_group_name [String] The name of the resource group to which
    # the container registry belongs.
    # @param registry_name [String] The name of the container registry.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<Replication>] operation results.
    #
    def list(resource_group_name, registry_name, custom_headers = nil)
      first_page = list_as_lazy(resource_group_name, registry_name, custom_headers)
      first_page.get_all_items
    end

    #
    # Lists all the replications for the specified container registry.
    #
    # @param resource_group_name [String] The name of the resource group to which
    # the container registry belongs.
    # @param registry_name [String] The name of the container registry.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(resource_group_name, registry_name, custom_headers = nil)
      list_async(resource_group_name, registry_name, custom_headers).value!
    end

    #
    # Lists all the replications for the specified container registry.
    #
    # @param resource_group_name [String] The name of the resource group to which
    # the container registry belongs.
    # @param registry_name [String] The name of the container registry.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(resource_group_name, registry_name, custom_headers = nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'registry_name is nil' if registry_name.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerRegistry/registries/{registryName}/replications'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'registryName' => registry_name},
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
            result_mapper = Azure::ContainerRegistry::Mgmt::V2017_06_01_preview::Models::ReplicationListResult.mapper()
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
    # Creates a replication for a container registry with the specified parameters.
    #
    # @param resource_group_name [String] The name of the resource group to which
    # the container registry belongs.
    # @param registry_name [String] The name of the container registry.
    # @param replication_name [String] The name of the replication.
    # @param replication [Replication] The parameters for creating a replication.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Replication] operation results.
    #
    def begin_create(resource_group_name, registry_name, replication_name, replication, custom_headers = nil)
      response = begin_create_async(resource_group_name, registry_name, replication_name, replication, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Creates a replication for a container registry with the specified parameters.
    #
    # @param resource_group_name [String] The name of the resource group to which
    # the container registry belongs.
    # @param registry_name [String] The name of the container registry.
    # @param replication_name [String] The name of the replication.
    # @param replication [Replication] The parameters for creating a replication.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_create_with_http_info(resource_group_name, registry_name, replication_name, replication, custom_headers = nil)
      begin_create_async(resource_group_name, registry_name, replication_name, replication, custom_headers).value!
    end

    #
    # Creates a replication for a container registry with the specified parameters.
    #
    # @param resource_group_name [String] The name of the resource group to which
    # the container registry belongs.
    # @param registry_name [String] The name of the container registry.
    # @param replication_name [String] The name of the replication.
    # @param replication [Replication] The parameters for creating a replication.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_create_async(resource_group_name, registry_name, replication_name, replication, custom_headers = nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'registry_name is nil' if registry_name.nil?
      fail ArgumentError, 'replication_name is nil' if replication_name.nil?
      fail ArgumentError, 'replication is nil' if replication.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = Azure::ContainerRegistry::Mgmt::V2017_06_01_preview::Models::Replication.mapper()
      request_content = @client.serialize(request_mapper,  replication)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerRegistry/registries/{registryName}/replications/{replicationName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'registryName' => registry_name,'replicationName' => replication_name},
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
            result_mapper = Azure::ContainerRegistry::Mgmt::V2017_06_01_preview::Models::Replication.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ContainerRegistry::Mgmt::V2017_06_01_preview::Models::Replication.mapper()
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
    # Deletes a replication from a container registry.
    #
    # @param resource_group_name [String] The name of the resource group to which
    # the container registry belongs.
    # @param registry_name [String] The name of the container registry.
    # @param replication_name [String] The name of the replication.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def begin_delete(resource_group_name, registry_name, replication_name, custom_headers = nil)
      response = begin_delete_async(resource_group_name, registry_name, replication_name, custom_headers).value!
      nil
    end

    #
    # Deletes a replication from a container registry.
    #
    # @param resource_group_name [String] The name of the resource group to which
    # the container registry belongs.
    # @param registry_name [String] The name of the container registry.
    # @param replication_name [String] The name of the replication.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_delete_with_http_info(resource_group_name, registry_name, replication_name, custom_headers = nil)
      begin_delete_async(resource_group_name, registry_name, replication_name, custom_headers).value!
    end

    #
    # Deletes a replication from a container registry.
    #
    # @param resource_group_name [String] The name of the resource group to which
    # the container registry belongs.
    # @param registry_name [String] The name of the container registry.
    # @param replication_name [String] The name of the replication.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_delete_async(resource_group_name, registry_name, replication_name, custom_headers = nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'registry_name is nil' if registry_name.nil?
      fail ArgumentError, 'replication_name is nil' if replication_name.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerRegistry/registries/{registryName}/replications/{replicationName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'registryName' => registry_name,'replicationName' => replication_name},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 202 || status_code == 204
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Updates a replication for a container registry with the specified parameters.
    #
    # @param resource_group_name [String] The name of the resource group to which
    # the container registry belongs.
    # @param registry_name [String] The name of the container registry.
    # @param replication_name [String] The name of the replication.
    # @param replication_update_parameters [ReplicationUpdateParameters] The
    # parameters for updating a replication.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Replication] operation results.
    #
    def begin_update(resource_group_name, registry_name, replication_name, replication_update_parameters, custom_headers = nil)
      response = begin_update_async(resource_group_name, registry_name, replication_name, replication_update_parameters, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Updates a replication for a container registry with the specified parameters.
    #
    # @param resource_group_name [String] The name of the resource group to which
    # the container registry belongs.
    # @param registry_name [String] The name of the container registry.
    # @param replication_name [String] The name of the replication.
    # @param replication_update_parameters [ReplicationUpdateParameters] The
    # parameters for updating a replication.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_update_with_http_info(resource_group_name, registry_name, replication_name, replication_update_parameters, custom_headers = nil)
      begin_update_async(resource_group_name, registry_name, replication_name, replication_update_parameters, custom_headers).value!
    end

    #
    # Updates a replication for a container registry with the specified parameters.
    #
    # @param resource_group_name [String] The name of the resource group to which
    # the container registry belongs.
    # @param registry_name [String] The name of the container registry.
    # @param replication_name [String] The name of the replication.
    # @param replication_update_parameters [ReplicationUpdateParameters] The
    # parameters for updating a replication.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_update_async(resource_group_name, registry_name, replication_name, replication_update_parameters, custom_headers = nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'registry_name is nil' if registry_name.nil?
      fail ArgumentError, 'replication_name is nil' if replication_name.nil?
      fail ArgumentError, 'replication_update_parameters is nil' if replication_update_parameters.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = Azure::ContainerRegistry::Mgmt::V2017_06_01_preview::Models::ReplicationUpdateParameters.mapper()
      request_content = @client.serialize(request_mapper,  replication_update_parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerRegistry/registries/{registryName}/replications/{replicationName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'registryName' => registry_name,'replicationName' => replication_name},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:patch, path_template, options)

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
            result_mapper = Azure::ContainerRegistry::Mgmt::V2017_06_01_preview::Models::Replication.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ContainerRegistry::Mgmt::V2017_06_01_preview::Models::Replication.mapper()
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
    # Lists all the replications for the specified container registry.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ReplicationListResult] operation results.
    #
    def list_next(next_page_link, custom_headers = nil)
      response = list_next_async(next_page_link, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists all the replications for the specified container registry.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_next_with_http_info(next_page_link, custom_headers = nil)
      list_next_async(next_page_link, custom_headers).value!
    end

    #
    # Lists all the replications for the specified container registry.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_next_async(next_page_link, custom_headers = nil)
      fail ArgumentError, 'next_page_link is nil' if next_page_link.nil?


      request_headers = {}

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
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ContainerRegistry::Mgmt::V2017_06_01_preview::Models::ReplicationListResult.mapper()
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
    # Lists all the replications for the specified container registry.
    #
    # @param resource_group_name [String] The name of the resource group to which
    # the container registry belongs.
    # @param registry_name [String] The name of the container registry.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ReplicationListResult] which provide lazy access to pages of the
    # response.
    #
    def list_as_lazy(resource_group_name, registry_name, custom_headers = nil)
      response = list_async(resource_group_name, registry_name, custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_next_async(next_page_link, custom_headers)
        end
        page
      end
    end

  end
end
