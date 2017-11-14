# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::TrafficManager::Mgmt::V2017_05_01
  #
  # Endpoints
  #
  class Endpoints
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Endpoints class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [TrafficManagerManagementClient] reference to the TrafficManagerManagementClient
    attr_reader :client

    #
    # Update a Traffic Manager endpoint.
    #
    # @param resource_group_name [String] The name of the resource group containing
    # the Traffic Manager endpoint to be updated.
    # @param profile_name [String] The name of the Traffic Manager profile.
    # @param endpoint_type [String] The type of the Traffic Manager endpoint to be
    # updated.
    # @param endpoint_name [String] The name of the Traffic Manager endpoint to be
    # updated.
    # @param parameters [Endpoint] The Traffic Manager endpoint parameters supplied
    # to the Update operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Endpoint] operation results.
    #
    def update(resource_group_name, profile_name, endpoint_type, endpoint_name, parameters, custom_headers = nil)
      response = update_async(resource_group_name, profile_name, endpoint_type, endpoint_name, parameters, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Update a Traffic Manager endpoint.
    #
    # @param resource_group_name [String] The name of the resource group containing
    # the Traffic Manager endpoint to be updated.
    # @param profile_name [String] The name of the Traffic Manager profile.
    # @param endpoint_type [String] The type of the Traffic Manager endpoint to be
    # updated.
    # @param endpoint_name [String] The name of the Traffic Manager endpoint to be
    # updated.
    # @param parameters [Endpoint] The Traffic Manager endpoint parameters supplied
    # to the Update operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def update_with_http_info(resource_group_name, profile_name, endpoint_type, endpoint_name, parameters, custom_headers = nil)
      update_async(resource_group_name, profile_name, endpoint_type, endpoint_name, parameters, custom_headers).value!
    end

    #
    # Update a Traffic Manager endpoint.
    #
    # @param resource_group_name [String] The name of the resource group containing
    # the Traffic Manager endpoint to be updated.
    # @param profile_name [String] The name of the Traffic Manager profile.
    # @param endpoint_type [String] The type of the Traffic Manager endpoint to be
    # updated.
    # @param endpoint_name [String] The name of the Traffic Manager endpoint to be
    # updated.
    # @param parameters [Endpoint] The Traffic Manager endpoint parameters supplied
    # to the Update operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def update_async(resource_group_name, profile_name, endpoint_type, endpoint_name, parameters, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'profile_name is nil' if profile_name.nil?
      fail ArgumentError, 'endpoint_type is nil' if endpoint_type.nil?
      fail ArgumentError, 'endpoint_name is nil' if endpoint_name.nil?
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

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/trafficmanagerprofiles/{profileName}/{endpointType}/{endpointName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'profileName' => profile_name,'endpointType' => endpoint_type,'endpointName' => endpoint_name,'subscriptionId' => @client.subscription_id},
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
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result.body = Azure::TrafficManager::Mgmt::V2017_05_01::Models::Endpoint.new.from_json(parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets a Traffic Manager endpoint.
    #
    # @param resource_group_name [String] The name of the resource group containing
    # the Traffic Manager endpoint.
    # @param profile_name [String] The name of the Traffic Manager profile.
    # @param endpoint_type [String] The type of the Traffic Manager endpoint.
    # @param endpoint_name [String] The name of the Traffic Manager endpoint.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Endpoint] operation results.
    #
    def get(resource_group_name, profile_name, endpoint_type, endpoint_name, custom_headers = nil)
      response = get_async(resource_group_name, profile_name, endpoint_type, endpoint_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets a Traffic Manager endpoint.
    #
    # @param resource_group_name [String] The name of the resource group containing
    # the Traffic Manager endpoint.
    # @param profile_name [String] The name of the Traffic Manager profile.
    # @param endpoint_type [String] The type of the Traffic Manager endpoint.
    # @param endpoint_name [String] The name of the Traffic Manager endpoint.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, profile_name, endpoint_type, endpoint_name, custom_headers = nil)
      get_async(resource_group_name, profile_name, endpoint_type, endpoint_name, custom_headers).value!
    end

    #
    # Gets a Traffic Manager endpoint.
    #
    # @param resource_group_name [String] The name of the resource group containing
    # the Traffic Manager endpoint.
    # @param profile_name [String] The name of the Traffic Manager profile.
    # @param endpoint_type [String] The type of the Traffic Manager endpoint.
    # @param endpoint_name [String] The name of the Traffic Manager endpoint.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, profile_name, endpoint_type, endpoint_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'profile_name is nil' if profile_name.nil?
      fail ArgumentError, 'endpoint_type is nil' if endpoint_type.nil?
      fail ArgumentError, 'endpoint_name is nil' if endpoint_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/trafficmanagerprofiles/{profileName}/{endpointType}/{endpointName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'profileName' => profile_name,'endpointType' => endpoint_type,'endpointName' => endpoint_name,'subscriptionId' => @client.subscription_id},
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
            result.body = Azure::TrafficManager::Mgmt::V2017_05_01::Models::Endpoint.new.from_json(parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Create or update a Traffic Manager endpoint.
    #
    # @param resource_group_name [String] The name of the resource group containing
    # the Traffic Manager endpoint to be created or updated.
    # @param profile_name [String] The name of the Traffic Manager profile.
    # @param endpoint_type [String] The type of the Traffic Manager endpoint to be
    # created or updated.
    # @param endpoint_name [String] The name of the Traffic Manager endpoint to be
    # created or updated.
    # @param parameters [Endpoint] The Traffic Manager endpoint parameters supplied
    # to the CreateOrUpdate operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Endpoint] operation results.
    #
    def create_or_update(resource_group_name, profile_name, endpoint_type, endpoint_name, parameters, custom_headers = nil)
      response = create_or_update_async(resource_group_name, profile_name, endpoint_type, endpoint_name, parameters, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Create or update a Traffic Manager endpoint.
    #
    # @param resource_group_name [String] The name of the resource group containing
    # the Traffic Manager endpoint to be created or updated.
    # @param profile_name [String] The name of the Traffic Manager profile.
    # @param endpoint_type [String] The type of the Traffic Manager endpoint to be
    # created or updated.
    # @param endpoint_name [String] The name of the Traffic Manager endpoint to be
    # created or updated.
    # @param parameters [Endpoint] The Traffic Manager endpoint parameters supplied
    # to the CreateOrUpdate operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_or_update_with_http_info(resource_group_name, profile_name, endpoint_type, endpoint_name, parameters, custom_headers = nil)
      create_or_update_async(resource_group_name, profile_name, endpoint_type, endpoint_name, parameters, custom_headers).value!
    end

    #
    # Create or update a Traffic Manager endpoint.
    #
    # @param resource_group_name [String] The name of the resource group containing
    # the Traffic Manager endpoint to be created or updated.
    # @param profile_name [String] The name of the Traffic Manager profile.
    # @param endpoint_type [String] The type of the Traffic Manager endpoint to be
    # created or updated.
    # @param endpoint_name [String] The name of the Traffic Manager endpoint to be
    # created or updated.
    # @param parameters [Endpoint] The Traffic Manager endpoint parameters supplied
    # to the CreateOrUpdate operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_or_update_async(resource_group_name, profile_name, endpoint_type, endpoint_name, parameters, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'profile_name is nil' if profile_name.nil?
      fail ArgumentError, 'endpoint_type is nil' if endpoint_type.nil?
      fail ArgumentError, 'endpoint_name is nil' if endpoint_name.nil?
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

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/trafficmanagerprofiles/{profileName}/{endpointType}/{endpointName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'profileName' => profile_name,'endpointType' => endpoint_type,'endpointName' => endpoint_name,'subscriptionId' => @client.subscription_id},
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
            result.body = Azure::TrafficManager::Mgmt::V2017_05_01::Models::Endpoint.new.from_json(parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result.body = Azure::TrafficManager::Mgmt::V2017_05_01::Models::Endpoint.new.from_json(parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Deletes a Traffic Manager endpoint.
    #
    # @param resource_group_name [String] The name of the resource group containing
    # the Traffic Manager endpoint to be deleted.
    # @param profile_name [String] The name of the Traffic Manager profile.
    # @param endpoint_type [String] The type of the Traffic Manager endpoint to be
    # deleted.
    # @param endpoint_name [String] The name of the Traffic Manager endpoint to be
    # deleted.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [DeleteOperationResult] operation results.
    #
    def delete(resource_group_name, profile_name, endpoint_type, endpoint_name, custom_headers = nil)
      response = delete_async(resource_group_name, profile_name, endpoint_type, endpoint_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Deletes a Traffic Manager endpoint.
    #
    # @param resource_group_name [String] The name of the resource group containing
    # the Traffic Manager endpoint to be deleted.
    # @param profile_name [String] The name of the Traffic Manager profile.
    # @param endpoint_type [String] The type of the Traffic Manager endpoint to be
    # deleted.
    # @param endpoint_name [String] The name of the Traffic Manager endpoint to be
    # deleted.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(resource_group_name, profile_name, endpoint_type, endpoint_name, custom_headers = nil)
      delete_async(resource_group_name, profile_name, endpoint_type, endpoint_name, custom_headers).value!
    end

    #
    # Deletes a Traffic Manager endpoint.
    #
    # @param resource_group_name [String] The name of the resource group containing
    # the Traffic Manager endpoint to be deleted.
    # @param profile_name [String] The name of the Traffic Manager profile.
    # @param endpoint_type [String] The type of the Traffic Manager endpoint to be
    # deleted.
    # @param endpoint_name [String] The name of the Traffic Manager endpoint to be
    # deleted.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(resource_group_name, profile_name, endpoint_type, endpoint_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'profile_name is nil' if profile_name.nil?
      fail ArgumentError, 'endpoint_type is nil' if endpoint_type.nil?
      fail ArgumentError, 'endpoint_name is nil' if endpoint_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/trafficmanagerprofiles/{profileName}/{endpointType}/{endpointName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'profileName' => profile_name,'endpointType' => endpoint_type,'endpointName' => endpoint_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
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
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result.body = Azure::TrafficManager::Mgmt::V2017_05_01::Models::DeleteOperationResult.new.from_json(parsed_response)
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
