# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorageCache::Mgmt::V2019_11_01
  #
  # A Storage Cache provides scalable caching service for NAS clients, serving
  # data from either NFSv3 or Blob at-rest storage (referred to as "Storage
  # Targets"). These operations allow you to manage Caches.
  #
  class StorageTargets
    include MsRestAzure

    #
    # Creates and initializes a new instance of the StorageTargets class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [StorageCacheManagementClient] reference to the StorageCacheManagementClient
    attr_reader :client

    #
    # Returns a list of Storage Targets for the specified Cache.
    #
    # @param resource_group_name [String] Target resource group.
    # @param cache_name [String] Name of Cache.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<StorageTarget>] operation results.
    #
    def list_by_cache(resource_group_name, cache_name, custom_headers:nil)
      first_page = list_by_cache_as_lazy(resource_group_name, cache_name, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # Returns a list of Storage Targets for the specified Cache.
    #
    # @param resource_group_name [String] Target resource group.
    # @param cache_name [String] Name of Cache.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_cache_with_http_info(resource_group_name, cache_name, custom_headers:nil)
      list_by_cache_async(resource_group_name, cache_name, custom_headers:custom_headers).value!
    end

    #
    # Returns a list of Storage Targets for the specified Cache.
    #
    # @param resource_group_name [String] Target resource group.
    # @param cache_name [String] Name of Cache.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_cache_async(resource_group_name, cache_name, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'cache_name is nil' if cache_name.nil?
      fail ArgumentError, "'cache_name' should satisfy the constraint - 'Pattern': '^[-0-9a-zA-Z_]{1,31}$'" if !cache_name.nil? && cache_name.match(Regexp.new('^^[-0-9a-zA-Z_]{1,31}$$')).nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.StorageCache/caches/{cacheName}/storageTargets'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'subscriptionId' => @client.subscription_id,'cacheName' => cache_name},
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
            result_mapper = Azure::StorageCache::Mgmt::V2019_11_01::Models::StorageTargetsResult.mapper()
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
    # Removes a Storage Target from a Cache. This operation is allowed at any time,
    # but if the Cache is down or unhealthy, the actual removal of the Storage
    # Target may be delayed until the Cache is healthy again. Note that if the
    # Cache has data to flush to the Storage Target, the data will be flushed
    # before the Storage Target will be deleted.
    #
    # @param resource_group_name [String] Target resource group.
    # @param cache_name [String] Name of Cache.
    # @param storage_target_name [String] Name of Storage Target.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Object] operation results.
    #
    def delete(resource_group_name, cache_name, storage_target_name, custom_headers:nil)
      response = delete_async(resource_group_name, cache_name, storage_target_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param resource_group_name [String] Target resource group.
    # @param cache_name [String] Name of Cache.
    # @param storage_target_name [String] Name of Storage Target.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def delete_async(resource_group_name, cache_name, storage_target_name, custom_headers:nil)
      # Send request
      promise = begin_delete_async(resource_group_name, cache_name, storage_target_name, custom_headers:custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = {
            client_side_validation: true,
            required: false,
            serialized_name: 'parsed_response',
            type: {
              name: 'Object'
            }
          }
          parsed_response = @client.deserialize(result_mapper, parsed_response)
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Returns a Storage Target from a Cache.
    #
    # @param resource_group_name [String] Target resource group.
    # @param cache_name [String] Name of Cache.
    # @param storage_target_name [String] Name of the Storage Target.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [StorageTarget] operation results.
    #
    def get(resource_group_name, cache_name, storage_target_name, custom_headers:nil)
      response = get_async(resource_group_name, cache_name, storage_target_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Returns a Storage Target from a Cache.
    #
    # @param resource_group_name [String] Target resource group.
    # @param cache_name [String] Name of Cache.
    # @param storage_target_name [String] Name of the Storage Target.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, cache_name, storage_target_name, custom_headers:nil)
      get_async(resource_group_name, cache_name, storage_target_name, custom_headers:custom_headers).value!
    end

    #
    # Returns a Storage Target from a Cache.
    #
    # @param resource_group_name [String] Target resource group.
    # @param cache_name [String] Name of Cache.
    # @param storage_target_name [String] Name of the Storage Target.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, cache_name, storage_target_name, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'cache_name is nil' if cache_name.nil?
      fail ArgumentError, "'cache_name' should satisfy the constraint - 'Pattern': '^[-0-9a-zA-Z_]{1,31}$'" if !cache_name.nil? && cache_name.match(Regexp.new('^^[-0-9a-zA-Z_]{1,31}$$')).nil?
      fail ArgumentError, 'storage_target_name is nil' if storage_target_name.nil?
      fail ArgumentError, "'storage_target_name' should satisfy the constraint - 'Pattern': '^[-0-9a-zA-Z_]{1,31}$'" if !storage_target_name.nil? && storage_target_name.match(Regexp.new('^^[-0-9a-zA-Z_]{1,31}$$')).nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.StorageCache/caches/{cacheName}/storageTargets/{storageTargetName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'subscriptionId' => @client.subscription_id,'cacheName' => cache_name,'storageTargetName' => storage_target_name},
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
            result_mapper = Azure::StorageCache::Mgmt::V2019_11_01::Models::StorageTarget.mapper()
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
    # Create or update a Storage Target. This operation is allowed at any time, but
    # if the Cache is down or unhealthy, the actual creation/modification of the
    # Storage Target may be delayed until the Cache is healthy again.
    #
    # @param resource_group_name [String] Target resource group.
    # @param cache_name [String] Name of Cache.
    # @param storage_target_name [String] Name of the Storage Target.
    # @param storagetarget [StorageTarget] Object containing the definition of a
    # Storage Target.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [StorageTarget] operation results.
    #
    def create_or_update(resource_group_name, cache_name, storage_target_name, storagetarget:nil, custom_headers:nil)
      response = create_or_update_async(resource_group_name, cache_name, storage_target_name, storagetarget:storagetarget, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param resource_group_name [String] Target resource group.
    # @param cache_name [String] Name of Cache.
    # @param storage_target_name [String] Name of the Storage Target.
    # @param storagetarget [StorageTarget] Object containing the definition of a
    # Storage Target.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def create_or_update_async(resource_group_name, cache_name, storage_target_name, storagetarget:nil, custom_headers:nil)
      # Send request
      promise = begin_create_or_update_async(resource_group_name, cache_name, storage_target_name, storagetarget:storagetarget, custom_headers:custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = Azure::StorageCache::Mgmt::V2019_11_01::Models::StorageTarget.mapper()
          parsed_response = @client.deserialize(result_mapper, parsed_response)
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Removes a Storage Target from a Cache. This operation is allowed at any time,
    # but if the Cache is down or unhealthy, the actual removal of the Storage
    # Target may be delayed until the Cache is healthy again. Note that if the
    # Cache has data to flush to the Storage Target, the data will be flushed
    # before the Storage Target will be deleted.
    #
    # @param resource_group_name [String] Target resource group.
    # @param cache_name [String] Name of Cache.
    # @param storage_target_name [String] Name of Storage Target.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Object] operation results.
    #
    def begin_delete(resource_group_name, cache_name, storage_target_name, custom_headers:nil)
      response = begin_delete_async(resource_group_name, cache_name, storage_target_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Removes a Storage Target from a Cache. This operation is allowed at any time,
    # but if the Cache is down or unhealthy, the actual removal of the Storage
    # Target may be delayed until the Cache is healthy again. Note that if the
    # Cache has data to flush to the Storage Target, the data will be flushed
    # before the Storage Target will be deleted.
    #
    # @param resource_group_name [String] Target resource group.
    # @param cache_name [String] Name of Cache.
    # @param storage_target_name [String] Name of Storage Target.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_delete_with_http_info(resource_group_name, cache_name, storage_target_name, custom_headers:nil)
      begin_delete_async(resource_group_name, cache_name, storage_target_name, custom_headers:custom_headers).value!
    end

    #
    # Removes a Storage Target from a Cache. This operation is allowed at any time,
    # but if the Cache is down or unhealthy, the actual removal of the Storage
    # Target may be delayed until the Cache is healthy again. Note that if the
    # Cache has data to flush to the Storage Target, the data will be flushed
    # before the Storage Target will be deleted.
    #
    # @param resource_group_name [String] Target resource group.
    # @param cache_name [String] Name of Cache.
    # @param storage_target_name [String] Name of Storage Target.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_delete_async(resource_group_name, cache_name, storage_target_name, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'cache_name is nil' if cache_name.nil?
      fail ArgumentError, "'cache_name' should satisfy the constraint - 'Pattern': '^[-0-9a-zA-Z_]{1,31}$'" if !cache_name.nil? && cache_name.match(Regexp.new('^^[-0-9a-zA-Z_]{1,31}$$')).nil?
      fail ArgumentError, 'storage_target_name is nil' if storage_target_name.nil?
      fail ArgumentError, "'storage_target_name' should satisfy the constraint - 'Pattern': '^[-0-9a-zA-Z_]{1,31}$'" if !storage_target_name.nil? && storage_target_name.match(Regexp.new('^^[-0-9a-zA-Z_]{1,31}$$')).nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.StorageCache/caches/{cacheName}/storageTargets/{storageTargetName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'subscriptionId' => @client.subscription_id,'cacheName' => cache_name,'storageTargetName' => storage_target_name},
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
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Create or update a Storage Target. This operation is allowed at any time, but
    # if the Cache is down or unhealthy, the actual creation/modification of the
    # Storage Target may be delayed until the Cache is healthy again.
    #
    # @param resource_group_name [String] Target resource group.
    # @param cache_name [String] Name of Cache.
    # @param storage_target_name [String] Name of the Storage Target.
    # @param storagetarget [StorageTarget] Object containing the definition of a
    # Storage Target.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [StorageTarget] operation results.
    #
    def begin_create_or_update(resource_group_name, cache_name, storage_target_name, storagetarget:nil, custom_headers:nil)
      response = begin_create_or_update_async(resource_group_name, cache_name, storage_target_name, storagetarget:storagetarget, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Create or update a Storage Target. This operation is allowed at any time, but
    # if the Cache is down or unhealthy, the actual creation/modification of the
    # Storage Target may be delayed until the Cache is healthy again.
    #
    # @param resource_group_name [String] Target resource group.
    # @param cache_name [String] Name of Cache.
    # @param storage_target_name [String] Name of the Storage Target.
    # @param storagetarget [StorageTarget] Object containing the definition of a
    # Storage Target.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_create_or_update_with_http_info(resource_group_name, cache_name, storage_target_name, storagetarget:nil, custom_headers:nil)
      begin_create_or_update_async(resource_group_name, cache_name, storage_target_name, storagetarget:storagetarget, custom_headers:custom_headers).value!
    end

    #
    # Create or update a Storage Target. This operation is allowed at any time, but
    # if the Cache is down or unhealthy, the actual creation/modification of the
    # Storage Target may be delayed until the Cache is healthy again.
    #
    # @param resource_group_name [String] Target resource group.
    # @param cache_name [String] Name of Cache.
    # @param storage_target_name [String] Name of the Storage Target.
    # @param storagetarget [StorageTarget] Object containing the definition of a
    # Storage Target.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_create_or_update_async(resource_group_name, cache_name, storage_target_name, storagetarget:nil, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'cache_name is nil' if cache_name.nil?
      fail ArgumentError, "'cache_name' should satisfy the constraint - 'Pattern': '^[-0-9a-zA-Z_]{1,31}$'" if !cache_name.nil? && cache_name.match(Regexp.new('^^[-0-9a-zA-Z_]{1,31}$$')).nil?
      fail ArgumentError, 'storage_target_name is nil' if storage_target_name.nil?
      fail ArgumentError, "'storage_target_name' should satisfy the constraint - 'Pattern': '^[-0-9a-zA-Z_]{1,31}$'" if !storage_target_name.nil? && storage_target_name.match(Regexp.new('^^[-0-9a-zA-Z_]{1,31}$$')).nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::StorageCache::Mgmt::V2019_11_01::Models::StorageTarget.mapper()
      request_content = @client.serialize(request_mapper,  storagetarget)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.StorageCache/caches/{cacheName}/storageTargets/{storageTargetName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'subscriptionId' => @client.subscription_id,'cacheName' => cache_name,'storageTargetName' => storage_target_name},
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
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::StorageCache::Mgmt::V2019_11_01::Models::StorageTarget.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::StorageCache::Mgmt::V2019_11_01::Models::StorageTarget.mapper()
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
    # Returns a list of Storage Targets for the specified Cache.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [StorageTargetsResult] operation results.
    #
    def list_by_cache_next(next_page_link, custom_headers:nil)
      response = list_by_cache_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Returns a list of Storage Targets for the specified Cache.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_cache_next_with_http_info(next_page_link, custom_headers:nil)
      list_by_cache_next_async(next_page_link, custom_headers:custom_headers).value!
    end

    #
    # Returns a list of Storage Targets for the specified Cache.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_cache_next_async(next_page_link, custom_headers:nil)
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
            result_mapper = Azure::StorageCache::Mgmt::V2019_11_01::Models::StorageTargetsResult.mapper()
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
    # Returns a list of Storage Targets for the specified Cache.
    #
    # @param resource_group_name [String] Target resource group.
    # @param cache_name [String] Name of Cache.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [StorageTargetsResult] which provide lazy access to pages of the
    # response.
    #
    def list_by_cache_as_lazy(resource_group_name, cache_name, custom_headers:nil)
      response = list_by_cache_async(resource_group_name, cache_name, custom_headers:custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_by_cache_next_async(next_page_link, custom_headers:custom_headers)
        end
        page
      end
    end

  end
end
