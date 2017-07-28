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
  class ElasticPools

    #
    # Creates and initializes a new instance of the ElasticPools class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [SqlManagementClient] reference to the SqlManagementClient
    attr_reader :client

    #
    # Returns elastic pool  metrics.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param elastic_pool_name [String] The name of the elastic pool.
    # @param filter [String] An OData filter expression that describes a subset of
    # metrics to return.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MetricListResult] operation results.
    #
    def list_metrics(resource_group_name, server_name, elastic_pool_name, filter, custom_headers = nil)
      response = list_metrics_async(resource_group_name, server_name, elastic_pool_name, filter, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Returns elastic pool  metrics.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param elastic_pool_name [String] The name of the elastic pool.
    # @param filter [String] An OData filter expression that describes a subset of
    # metrics to return.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRest::HttpOperationResponse] HTTP response information.
    #
    def list_metrics_with_http_info(resource_group_name, server_name, elastic_pool_name, filter, custom_headers = nil)
      list_metrics_async(resource_group_name, server_name, elastic_pool_name, filter, custom_headers).value!
    end

    #
    # Returns elastic pool  metrics.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param elastic_pool_name [String] The name of the elastic pool.
    # @param filter [String] An OData filter expression that describes a subset of
    # metrics to return.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_metrics_async(resource_group_name, server_name, elastic_pool_name, filter, custom_headers = nil)
      api_version = '2014-04-01'
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'server_name is nil' if server_name.nil?
      fail ArgumentError, 'elastic_pool_name is nil' if elastic_pool_name.nil?
      fail ArgumentError, 'filter is nil' if filter.nil?


      request_headers = {}
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/elasticPools/{elasticPoolName}/metrics'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'serverName' => server_name,'elasticPoolName' => elastic_pool_name},
          query_params: {'api-version' => api_version,'$filter' => filter},
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
            result_mapper = Azure::ARM::SQL::Models::MetricListResult.mapper()
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
    # Returns elastic pool metric definitions.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param elastic_pool_name [String] The name of the elastic pool.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MetricDefinitionListResult] operation results.
    #
    def list_metric_definitions(resource_group_name, server_name, elastic_pool_name, custom_headers = nil)
      response = list_metric_definitions_async(resource_group_name, server_name, elastic_pool_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Returns elastic pool metric definitions.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param elastic_pool_name [String] The name of the elastic pool.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRest::HttpOperationResponse] HTTP response information.
    #
    def list_metric_definitions_with_http_info(resource_group_name, server_name, elastic_pool_name, custom_headers = nil)
      list_metric_definitions_async(resource_group_name, server_name, elastic_pool_name, custom_headers).value!
    end

    #
    # Returns elastic pool metric definitions.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param elastic_pool_name [String] The name of the elastic pool.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_metric_definitions_async(resource_group_name, server_name, elastic_pool_name, custom_headers = nil)
      api_version = '2014-04-01'
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'server_name is nil' if server_name.nil?
      fail ArgumentError, 'elastic_pool_name is nil' if elastic_pool_name.nil?


      request_headers = {}
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/elasticPools/{elasticPoolName}/metricDefinitions'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'serverName' => server_name,'elasticPoolName' => elastic_pool_name},
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
            result_mapper = Azure::ARM::SQL::Models::MetricDefinitionListResult.mapper()
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
    # Creates a new elastic pool or updates an existing elastic pool.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param elastic_pool_name [String] The name of the elastic pool to be operated
    # on (updated or created).
    # @param parameters [ElasticPool] The required parameters for creating or
    # updating an elastic pool.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ElasticPool] operation results.
    #
    def create_or_update(resource_group_name, server_name, elastic_pool_name, parameters, custom_headers = nil)
      response = create_or_update_async(resource_group_name, server_name, elastic_pool_name, parameters, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Creates a new elastic pool or updates an existing elastic pool.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param elastic_pool_name [String] The name of the elastic pool to be operated
    # on (updated or created).
    # @param parameters [ElasticPool] The required parameters for creating or
    # updating an elastic pool.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRest::HttpOperationResponse] HTTP response information.
    #
    def create_or_update_with_http_info(resource_group_name, server_name, elastic_pool_name, parameters, custom_headers = nil)
      create_or_update_async(resource_group_name, server_name, elastic_pool_name, parameters, custom_headers).value!
    end

    #
    # Creates a new elastic pool or updates an existing elastic pool.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param elastic_pool_name [String] The name of the elastic pool to be operated
    # on (updated or created).
    # @param parameters [ElasticPool] The required parameters for creating or
    # updating an elastic pool.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_or_update_async(resource_group_name, server_name, elastic_pool_name, parameters, custom_headers = nil)
      api_version = '2014-04-01'
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'server_name is nil' if server_name.nil?
      fail ArgumentError, 'elastic_pool_name is nil' if elastic_pool_name.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?


      request_headers = {}

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = Azure::ARM::SQL::Models::ElasticPool.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/elasticPools/{elasticPoolName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'serverName' => server_name,'elasticPoolName' => elastic_pool_name},
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
        unless status_code == 200 || status_code == 201 || status_code == 202
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ARM::SQL::Models::ElasticPool.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ARM::SQL::Models::ElasticPool.mapper()
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
    # Updates an existing elastic pool.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param elastic_pool_name [String] The name of the elastic pool to be updated.
    # @param parameters [ElasticPoolUpdate] The required parameters for updating an
    # elastic pool.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ElasticPool] operation results.
    #
    def update(resource_group_name, server_name, elastic_pool_name, parameters, custom_headers = nil)
      response = update_async(resource_group_name, server_name, elastic_pool_name, parameters, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Updates an existing elastic pool.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param elastic_pool_name [String] The name of the elastic pool to be updated.
    # @param parameters [ElasticPoolUpdate] The required parameters for updating an
    # elastic pool.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRest::HttpOperationResponse] HTTP response information.
    #
    def update_with_http_info(resource_group_name, server_name, elastic_pool_name, parameters, custom_headers = nil)
      update_async(resource_group_name, server_name, elastic_pool_name, parameters, custom_headers).value!
    end

    #
    # Updates an existing elastic pool.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param elastic_pool_name [String] The name of the elastic pool to be updated.
    # @param parameters [ElasticPoolUpdate] The required parameters for updating an
    # elastic pool.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def update_async(resource_group_name, server_name, elastic_pool_name, parameters, custom_headers = nil)
      api_version = '2014-04-01'
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'server_name is nil' if server_name.nil?
      fail ArgumentError, 'elastic_pool_name is nil' if elastic_pool_name.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?


      request_headers = {}

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = Azure::ARM::SQL::Models::ElasticPoolUpdate.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/elasticPools/{elasticPoolName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'serverName' => server_name,'elasticPoolName' => elastic_pool_name},
          query_params: {'api-version' => api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:patch, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 202
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ARM::SQL::Models::ElasticPool.mapper()
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
    # Deletes the elastic pool.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param elastic_pool_name [String] The name of the elastic pool to be deleted.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(resource_group_name, server_name, elastic_pool_name, custom_headers = nil)
      response = delete_async(resource_group_name, server_name, elastic_pool_name, custom_headers).value!
      nil
    end

    #
    # Deletes the elastic pool.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param elastic_pool_name [String] The name of the elastic pool to be deleted.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRest::HttpOperationResponse] HTTP response information.
    #
    def delete_with_http_info(resource_group_name, server_name, elastic_pool_name, custom_headers = nil)
      delete_async(resource_group_name, server_name, elastic_pool_name, custom_headers).value!
    end

    #
    # Deletes the elastic pool.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param elastic_pool_name [String] The name of the elastic pool to be deleted.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(resource_group_name, server_name, elastic_pool_name, custom_headers = nil)
      api_version = '2014-04-01'
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'server_name is nil' if server_name.nil?
      fail ArgumentError, 'elastic_pool_name is nil' if elastic_pool_name.nil?


      request_headers = {}
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/elasticPools/{elasticPoolName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'serverName' => server_name,'elasticPoolName' => elastic_pool_name},
          query_params: {'api-version' => api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 204
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end


        result
      end

      promise.execute
    end

    #
    # Gets an elastic pool.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param elastic_pool_name [String] The name of the elastic pool to be
    # retrieved.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ElasticPool] operation results.
    #
    def get(resource_group_name, server_name, elastic_pool_name, custom_headers = nil)
      response = get_async(resource_group_name, server_name, elastic_pool_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets an elastic pool.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param elastic_pool_name [String] The name of the elastic pool to be
    # retrieved.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRest::HttpOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, server_name, elastic_pool_name, custom_headers = nil)
      get_async(resource_group_name, server_name, elastic_pool_name, custom_headers).value!
    end

    #
    # Gets an elastic pool.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param elastic_pool_name [String] The name of the elastic pool to be
    # retrieved.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, server_name, elastic_pool_name, custom_headers = nil)
      api_version = '2014-04-01'
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'server_name is nil' if server_name.nil?
      fail ArgumentError, 'elastic_pool_name is nil' if elastic_pool_name.nil?


      request_headers = {}
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/elasticPools/{elasticPoolName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'serverName' => server_name,'elasticPoolName' => elastic_pool_name},
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
            result_mapper = Azure::ARM::SQL::Models::ElasticPool.mapper()
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
    # Returns a list of elastic pools in a server.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ElasticPoolListResult] operation results.
    #
    def list_by_server(resource_group_name, server_name, custom_headers = nil)
      response = list_by_server_async(resource_group_name, server_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Returns a list of elastic pools in a server.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRest::HttpOperationResponse] HTTP response information.
    #
    def list_by_server_with_http_info(resource_group_name, server_name, custom_headers = nil)
      list_by_server_async(resource_group_name, server_name, custom_headers).value!
    end

    #
    # Returns a list of elastic pools in a server.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_server_async(resource_group_name, server_name, custom_headers = nil)
      api_version = '2014-04-01'
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'server_name is nil' if server_name.nil?


      request_headers = {}
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/elasticPools'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'serverName' => server_name},
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
            result_mapper = Azure::ARM::SQL::Models::ElasticPoolListResult.mapper()
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
