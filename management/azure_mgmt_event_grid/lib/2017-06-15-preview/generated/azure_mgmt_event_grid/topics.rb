# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2017_06_15_preview
  #
  # Azure EventGrid Management Client
  #
  class Topics
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Topics class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [EventGridManagementClient] reference to the EventGridManagementClient
    attr_reader :client

    #
    # Get a topic
    #
    # Get properties of a topic
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription.
    # @param topic_name [String] Name of the topic
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Topic] operation results.
    #
    def get(resource_group_name, topic_name, custom_headers = nil)
      response = get_async(resource_group_name, topic_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get a topic
    #
    # Get properties of a topic
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription.
    # @param topic_name [String] Name of the topic
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, topic_name, custom_headers = nil)
      get_async(resource_group_name, topic_name, custom_headers).value!
    end

    #
    # Get a topic
    #
    # Get properties of a topic
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription.
    # @param topic_name [String] Name of the topic
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, topic_name, custom_headers = nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'topic_name is nil' if topic_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventGrid/topics/{topicName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'topicName' => topic_name},
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
            result_mapper = Azure::EventGrid::Mgmt::V2017_06_15_preview::Models::Topic.mapper()
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
    # Create a topic
    #
    # Asynchronously creates a new topic with the specified parameters.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription.
    # @param topic_name [String] Name of the topic
    # @param topic_info [Topic] Topic information
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Topic] operation results.
    #
    def create_or_update(resource_group_name, topic_name, topic_info, custom_headers = nil)
      response = create_or_update_async(resource_group_name, topic_name, topic_info, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription.
    # @param topic_name [String] Name of the topic
    # @param topic_info [Topic] Topic information
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def create_or_update_async(resource_group_name, topic_name, topic_info, custom_headers = nil)
      # Send request
      promise = begin_create_or_update_async(resource_group_name, topic_name, topic_info, custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = Azure::EventGrid::Mgmt::V2017_06_15_preview::Models::Topic.mapper()
          parsed_response = @client.deserialize(result_mapper, parsed_response)
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Delete a topic
    #
    # Delete existing topic
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription.
    # @param topic_name [String] Name of the topic
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    def delete(resource_group_name, topic_name, custom_headers = nil)
      response = delete_async(resource_group_name, topic_name, custom_headers).value!
      nil
    end

    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription.
    # @param topic_name [String] Name of the topic
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def delete_async(resource_group_name, topic_name, custom_headers = nil)
      # Send request
      promise = begin_delete_async(resource_group_name, topic_name, custom_headers)

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
    # List topics under an Azure subscription
    #
    # List all the topics under an Azure subscription
    #
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [TopicsListResult] operation results.
    #
    def list_by_subscription(custom_headers = nil)
      response = list_by_subscription_async(custom_headers).value!
      response.body unless response.nil?
    end

    #
    # List topics under an Azure subscription
    #
    # List all the topics under an Azure subscription
    #
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_subscription_with_http_info(custom_headers = nil)
      list_by_subscription_async(custom_headers).value!
    end

    #
    # List topics under an Azure subscription
    #
    # List all the topics under an Azure subscription
    #
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_subscription_async(custom_headers = nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/providers/Microsoft.EventGrid/topics'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id},
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
            result_mapper = Azure::EventGrid::Mgmt::V2017_06_15_preview::Models::TopicsListResult.mapper()
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
    # List topics under a resource group
    #
    # List all the topics under a resource group
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [TopicsListResult] operation results.
    #
    def list_by_resource_group(resource_group_name, custom_headers = nil)
      response = list_by_resource_group_async(resource_group_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # List topics under a resource group
    #
    # List all the topics under a resource group
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_resource_group_with_http_info(resource_group_name, custom_headers = nil)
      list_by_resource_group_async(resource_group_name, custom_headers).value!
    end

    #
    # List topics under a resource group
    #
    # List all the topics under a resource group
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_resource_group_async(resource_group_name, custom_headers = nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventGrid/topics'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name},
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
            result_mapper = Azure::EventGrid::Mgmt::V2017_06_15_preview::Models::TopicsListResult.mapper()
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
    # List keys for a topic
    #
    # List the two keys used to publish to a topic
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription.
    # @param topic_name [String] Name of the topic
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [TopicSharedAccessKeys] operation results.
    #
    def list_shared_access_keys(resource_group_name, topic_name, custom_headers = nil)
      response = list_shared_access_keys_async(resource_group_name, topic_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # List keys for a topic
    #
    # List the two keys used to publish to a topic
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription.
    # @param topic_name [String] Name of the topic
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_shared_access_keys_with_http_info(resource_group_name, topic_name, custom_headers = nil)
      list_shared_access_keys_async(resource_group_name, topic_name, custom_headers).value!
    end

    #
    # List keys for a topic
    #
    # List the two keys used to publish to a topic
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription.
    # @param topic_name [String] Name of the topic
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_shared_access_keys_async(resource_group_name, topic_name, custom_headers = nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'topic_name is nil' if topic_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventGrid/topics/{topicName}/listKeys'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'topicName' => topic_name},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

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
            result_mapper = Azure::EventGrid::Mgmt::V2017_06_15_preview::Models::TopicSharedAccessKeys.mapper()
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
    # Regenerate key for a topic
    #
    # Regenerate a shared access key for a topic
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription.
    # @param topic_name [String] Name of the topic
    # @param regenerate_key_request [TopicRegenerateKeyRequest] Request body to
    # regenerate key
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [TopicSharedAccessKeys] operation results.
    #
    def regenerate_key(resource_group_name, topic_name, regenerate_key_request, custom_headers = nil)
      response = regenerate_key_async(resource_group_name, topic_name, regenerate_key_request, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Regenerate key for a topic
    #
    # Regenerate a shared access key for a topic
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription.
    # @param topic_name [String] Name of the topic
    # @param regenerate_key_request [TopicRegenerateKeyRequest] Request body to
    # regenerate key
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def regenerate_key_with_http_info(resource_group_name, topic_name, regenerate_key_request, custom_headers = nil)
      regenerate_key_async(resource_group_name, topic_name, regenerate_key_request, custom_headers).value!
    end

    #
    # Regenerate key for a topic
    #
    # Regenerate a shared access key for a topic
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription.
    # @param topic_name [String] Name of the topic
    # @param regenerate_key_request [TopicRegenerateKeyRequest] Request body to
    # regenerate key
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def regenerate_key_async(resource_group_name, topic_name, regenerate_key_request, custom_headers = nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'topic_name is nil' if topic_name.nil?
      fail ArgumentError, 'regenerate_key_request is nil' if regenerate_key_request.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = Azure::EventGrid::Mgmt::V2017_06_15_preview::Models::TopicRegenerateKeyRequest.mapper()
      request_content = @client.serialize(request_mapper,  regenerate_key_request)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventGrid/topics/{topicName}/regenerateKey'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'topicName' => topic_name},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

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
            result_mapper = Azure::EventGrid::Mgmt::V2017_06_15_preview::Models::TopicSharedAccessKeys.mapper()
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
    # List topic event types
    #
    # List event types for a topic
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription.
    # @param provider_namespace [String] Namespace of the provider of the topic
    # @param resource_type_name [String] Name of the topic type
    # @param resource_name [String] Name of the topic
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [EventTypesListResult] operation results.
    #
    def list_event_types(resource_group_name, provider_namespace, resource_type_name, resource_name, custom_headers = nil)
      response = list_event_types_async(resource_group_name, provider_namespace, resource_type_name, resource_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # List topic event types
    #
    # List event types for a topic
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription.
    # @param provider_namespace [String] Namespace of the provider of the topic
    # @param resource_type_name [String] Name of the topic type
    # @param resource_name [String] Name of the topic
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_event_types_with_http_info(resource_group_name, provider_namespace, resource_type_name, resource_name, custom_headers = nil)
      list_event_types_async(resource_group_name, provider_namespace, resource_type_name, resource_name, custom_headers).value!
    end

    #
    # List topic event types
    #
    # List event types for a topic
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription.
    # @param provider_namespace [String] Namespace of the provider of the topic
    # @param resource_type_name [String] Name of the topic type
    # @param resource_name [String] Name of the topic
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_event_types_async(resource_group_name, provider_namespace, resource_type_name, resource_name, custom_headers = nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'provider_namespace is nil' if provider_namespace.nil?
      fail ArgumentError, 'resource_type_name is nil' if resource_type_name.nil?
      fail ArgumentError, 'resource_name is nil' if resource_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{providerNamespace}/{resourceTypeName}/{resourceName}/providers/Microsoft.EventGrid/eventTypes'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'providerNamespace' => provider_namespace,'resourceTypeName' => resource_type_name,'resourceName' => resource_name},
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
            result_mapper = Azure::EventGrid::Mgmt::V2017_06_15_preview::Models::EventTypesListResult.mapper()
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
    # Create a topic
    #
    # Asynchronously creates a new topic with the specified parameters.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription.
    # @param topic_name [String] Name of the topic
    # @param topic_info [Topic] Topic information
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Topic] operation results.
    #
    def begin_create_or_update(resource_group_name, topic_name, topic_info, custom_headers = nil)
      response = begin_create_or_update_async(resource_group_name, topic_name, topic_info, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Create a topic
    #
    # Asynchronously creates a new topic with the specified parameters.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription.
    # @param topic_name [String] Name of the topic
    # @param topic_info [Topic] Topic information
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_create_or_update_with_http_info(resource_group_name, topic_name, topic_info, custom_headers = nil)
      begin_create_or_update_async(resource_group_name, topic_name, topic_info, custom_headers).value!
    end

    #
    # Create a topic
    #
    # Asynchronously creates a new topic with the specified parameters.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription.
    # @param topic_name [String] Name of the topic
    # @param topic_info [Topic] Topic information
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_create_or_update_async(resource_group_name, topic_name, topic_info, custom_headers = nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'topic_name is nil' if topic_name.nil?
      fail ArgumentError, 'topic_info is nil' if topic_info.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = Azure::EventGrid::Mgmt::V2017_06_15_preview::Models::Topic.mapper()
      request_content = @client.serialize(request_mapper,  topic_info)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventGrid/topics/{topicName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'topicName' => topic_name},
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
        unless status_code == 201
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::EventGrid::Mgmt::V2017_06_15_preview::Models::Topic.mapper()
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
    # Delete a topic
    #
    # Delete existing topic
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription.
    # @param topic_name [String] Name of the topic
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def begin_delete(resource_group_name, topic_name, custom_headers = nil)
      response = begin_delete_async(resource_group_name, topic_name, custom_headers).value!
      nil
    end

    #
    # Delete a topic
    #
    # Delete existing topic
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription.
    # @param topic_name [String] Name of the topic
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_delete_with_http_info(resource_group_name, topic_name, custom_headers = nil)
      begin_delete_async(resource_group_name, topic_name, custom_headers).value!
    end

    #
    # Delete a topic
    #
    # Delete existing topic
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription.
    # @param topic_name [String] Name of the topic
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_delete_async(resource_group_name, topic_name, custom_headers = nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'topic_name is nil' if topic_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventGrid/topics/{topicName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'topicName' => topic_name},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 202 || status_code == 204
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

  end
end
