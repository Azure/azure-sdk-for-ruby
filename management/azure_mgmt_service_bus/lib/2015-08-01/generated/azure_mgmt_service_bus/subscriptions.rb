# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceBus::Mgmt::V2015_08_01
  #
  # Azure Service Bus client
  #
  class Subscriptions
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Subscriptions class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ServiceBusManagementClient] reference to the ServiceBusManagementClient
    attr_reader :client

    #
    # List all the subscriptions under a specified topic.
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param namespace_name [String] The namespace name
    # @param topic_name [String] The topic name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<SubscriptionResource>] operation results.
    #
    def list_all(resource_group_name, namespace_name, topic_name, custom_headers = nil)
      first_page = list_all_as_lazy(resource_group_name, namespace_name, topic_name, custom_headers)
      first_page.get_all_items
    end

    #
    # List all the subscriptions under a specified topic.
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param namespace_name [String] The namespace name
    # @param topic_name [String] The topic name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_all_with_http_info(resource_group_name, namespace_name, topic_name, custom_headers = nil)
      list_all_async(resource_group_name, namespace_name, topic_name, custom_headers).value!
    end

    #
    # List all the subscriptions under a specified topic.
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param namespace_name [String] The namespace name
    # @param topic_name [String] The topic name.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_all_async(resource_group_name, namespace_name, topic_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, 'namespace_name is nil' if namespace_name.nil?
      fail ArgumentError, "'namespace_name' should satisfy the constraint - 'MaxLength': '50'" if !namespace_name.nil? && namespace_name.length > 50
      fail ArgumentError, "'namespace_name' should satisfy the constraint - 'MinLength': '6'" if !namespace_name.nil? && namespace_name.length < 6
      fail ArgumentError, 'topic_name is nil' if topic_name.nil?
      fail ArgumentError, "'topic_name' should satisfy the constraint - 'MaxLength': '50'" if !topic_name.nil? && topic_name.length > 50
      fail ArgumentError, "'topic_name' should satisfy the constraint - 'MinLength': '1'" if !topic_name.nil? && topic_name.length < 1
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceBus/namespaces/{namespaceName}/topics/{topicName}/subscriptions'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'namespaceName' => namespace_name,'topicName' => topic_name,'subscriptionId' => @client.subscription_id},
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
            result.body = Azure::ServiceBus::Mgmt::V2015_08_01::Models::SubscriptionListResult.new.from_json(parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Creates a topic subscription.
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param namespace_name [String] The namespace name
    # @param topic_name [String] The topic name.
    # @param subscription_name [String] The subscription name.
    # @param parameters [SubscriptionCreateOrUpdateParameters] Parameters supplied
    # to create a subscription resource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SubscriptionResource] operation results.
    #
    def create_or_update(resource_group_name, namespace_name, topic_name, subscription_name, parameters, custom_headers = nil)
      response = create_or_update_async(resource_group_name, namespace_name, topic_name, subscription_name, parameters, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Creates a topic subscription.
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param namespace_name [String] The namespace name
    # @param topic_name [String] The topic name.
    # @param subscription_name [String] The subscription name.
    # @param parameters [SubscriptionCreateOrUpdateParameters] Parameters supplied
    # to create a subscription resource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_or_update_with_http_info(resource_group_name, namespace_name, topic_name, subscription_name, parameters, custom_headers = nil)
      create_or_update_async(resource_group_name, namespace_name, topic_name, subscription_name, parameters, custom_headers).value!
    end

    #
    # Creates a topic subscription.
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param namespace_name [String] The namespace name
    # @param topic_name [String] The topic name.
    # @param subscription_name [String] The subscription name.
    # @param parameters [SubscriptionCreateOrUpdateParameters] Parameters supplied
    # to create a subscription resource.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_or_update_async(resource_group_name, namespace_name, topic_name, subscription_name, parameters, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, 'namespace_name is nil' if namespace_name.nil?
      fail ArgumentError, "'namespace_name' should satisfy the constraint - 'MaxLength': '50'" if !namespace_name.nil? && namespace_name.length > 50
      fail ArgumentError, "'namespace_name' should satisfy the constraint - 'MinLength': '6'" if !namespace_name.nil? && namespace_name.length < 6
      fail ArgumentError, 'topic_name is nil' if topic_name.nil?
      fail ArgumentError, "'topic_name' should satisfy the constraint - 'MaxLength': '50'" if !topic_name.nil? && topic_name.length > 50
      fail ArgumentError, "'topic_name' should satisfy the constraint - 'MinLength': '1'" if !topic_name.nil? && topic_name.length < 1
      fail ArgumentError, 'subscription_name is nil' if subscription_name.nil?
      fail ArgumentError, "'subscription_name' should satisfy the constraint - 'MaxLength': '50'" if !subscription_name.nil? && subscription_name.length > 50
      fail ArgumentError, "'subscription_name' should satisfy the constraint - 'MinLength': '1'" if !subscription_name.nil? && subscription_name.length < 1
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

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceBus/namespaces/{namespaceName}/topics/{topicName}/subscriptions/{subscriptionName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'namespaceName' => namespace_name,'topicName' => topic_name,'subscriptionName' => subscription_name,'subscriptionId' => @client.subscription_id},
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
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result.body = Azure::ServiceBus::Mgmt::V2015_08_01::Models::SubscriptionResource.new.from_json(parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Deletes a subscription from the specified topic.
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param namespace_name [String] The namespace name
    # @param topic_name [String] The topic name.
    # @param subscription_name [String] The subscription name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(resource_group_name, namespace_name, topic_name, subscription_name, custom_headers = nil)
      response = delete_async(resource_group_name, namespace_name, topic_name, subscription_name, custom_headers).value!
      nil
    end

    #
    # Deletes a subscription from the specified topic.
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param namespace_name [String] The namespace name
    # @param topic_name [String] The topic name.
    # @param subscription_name [String] The subscription name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(resource_group_name, namespace_name, topic_name, subscription_name, custom_headers = nil)
      delete_async(resource_group_name, namespace_name, topic_name, subscription_name, custom_headers).value!
    end

    #
    # Deletes a subscription from the specified topic.
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param namespace_name [String] The namespace name
    # @param topic_name [String] The topic name.
    # @param subscription_name [String] The subscription name.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(resource_group_name, namespace_name, topic_name, subscription_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, 'namespace_name is nil' if namespace_name.nil?
      fail ArgumentError, "'namespace_name' should satisfy the constraint - 'MaxLength': '50'" if !namespace_name.nil? && namespace_name.length > 50
      fail ArgumentError, "'namespace_name' should satisfy the constraint - 'MinLength': '6'" if !namespace_name.nil? && namespace_name.length < 6
      fail ArgumentError, 'topic_name is nil' if topic_name.nil?
      fail ArgumentError, "'topic_name' should satisfy the constraint - 'MaxLength': '50'" if !topic_name.nil? && topic_name.length > 50
      fail ArgumentError, "'topic_name' should satisfy the constraint - 'MinLength': '1'" if !topic_name.nil? && topic_name.length < 1
      fail ArgumentError, 'subscription_name is nil' if subscription_name.nil?
      fail ArgumentError, "'subscription_name' should satisfy the constraint - 'MaxLength': '50'" if !subscription_name.nil? && subscription_name.length > 50
      fail ArgumentError, "'subscription_name' should satisfy the constraint - 'MinLength': '1'" if !subscription_name.nil? && subscription_name.length < 1
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceBus/namespaces/{namespaceName}/topics/{topicName}/subscriptions/{subscriptionName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'namespaceName' => namespace_name,'topicName' => topic_name,'subscriptionName' => subscription_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 204 || status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Returns a subscription description for the specified topic.
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param namespace_name [String] The namespace name
    # @param topic_name [String] The topic name.
    # @param subscription_name [String] The subscription name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SubscriptionResource] operation results.
    #
    def get(resource_group_name, namespace_name, topic_name, subscription_name, custom_headers = nil)
      response = get_async(resource_group_name, namespace_name, topic_name, subscription_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Returns a subscription description for the specified topic.
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param namespace_name [String] The namespace name
    # @param topic_name [String] The topic name.
    # @param subscription_name [String] The subscription name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, namespace_name, topic_name, subscription_name, custom_headers = nil)
      get_async(resource_group_name, namespace_name, topic_name, subscription_name, custom_headers).value!
    end

    #
    # Returns a subscription description for the specified topic.
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param namespace_name [String] The namespace name
    # @param topic_name [String] The topic name.
    # @param subscription_name [String] The subscription name.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, namespace_name, topic_name, subscription_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, 'namespace_name is nil' if namespace_name.nil?
      fail ArgumentError, "'namespace_name' should satisfy the constraint - 'MaxLength': '50'" if !namespace_name.nil? && namespace_name.length > 50
      fail ArgumentError, "'namespace_name' should satisfy the constraint - 'MinLength': '6'" if !namespace_name.nil? && namespace_name.length < 6
      fail ArgumentError, 'topic_name is nil' if topic_name.nil?
      fail ArgumentError, "'topic_name' should satisfy the constraint - 'MaxLength': '50'" if !topic_name.nil? && topic_name.length > 50
      fail ArgumentError, "'topic_name' should satisfy the constraint - 'MinLength': '1'" if !topic_name.nil? && topic_name.length < 1
      fail ArgumentError, 'subscription_name is nil' if subscription_name.nil?
      fail ArgumentError, "'subscription_name' should satisfy the constraint - 'MaxLength': '50'" if !subscription_name.nil? && subscription_name.length > 50
      fail ArgumentError, "'subscription_name' should satisfy the constraint - 'MinLength': '1'" if !subscription_name.nil? && subscription_name.length < 1
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceBus/namespaces/{namespaceName}/topics/{topicName}/subscriptions/{subscriptionName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'namespaceName' => namespace_name,'topicName' => topic_name,'subscriptionName' => subscription_name,'subscriptionId' => @client.subscription_id},
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
            result.body = Azure::ServiceBus::Mgmt::V2015_08_01::Models::SubscriptionResource.new.from_json(parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # List all the subscriptions under a specified topic.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SubscriptionListResult] operation results.
    #
    def list_all_next(next_page_link, custom_headers = nil)
      response = list_all_next_async(next_page_link, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # List all the subscriptions under a specified topic.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_all_next_with_http_info(next_page_link, custom_headers = nil)
      list_all_next_async(next_page_link, custom_headers).value!
    end

    #
    # List all the subscriptions under a specified topic.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_all_next_async(next_page_link, custom_headers = nil)
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
            result.body = Azure::ServiceBus::Mgmt::V2015_08_01::Models::SubscriptionListResult.new.from_json(parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # List all the subscriptions under a specified topic.
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param namespace_name [String] The namespace name
    # @param topic_name [String] The topic name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SubscriptionListResult] which provide lazy access to pages of the
    # response.
    #
    def list_all_as_lazy(resource_group_name, namespace_name, topic_name, custom_headers = nil)
      response = list_all_async(resource_group_name, namespace_name, topic_name, custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_all_next_async(next_page_link, custom_headers)
        end
        page
      end
    end

  end
end
