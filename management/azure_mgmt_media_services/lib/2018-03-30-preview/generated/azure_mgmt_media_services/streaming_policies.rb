# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_03_30_preview
  #
  # StreamingPolicies
  #
  class StreamingPolicies
    include MsRestAzure

    #
    # Creates and initializes a new instance of the StreamingPolicies class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [AzureMediaServices] reference to the AzureMediaServices
    attr_reader :client

    #
    # List Streaming Policies
    #
    # Lists the Streaming Policies in the account
    #
    # @param resource_group_name [String] The name of the resource group within the
    # Azure subscription.
    # @param account_name [String] The Media Services account name.
    # @param filter [String] Restricts the set of items returned.
    # @param top [Integer] Specifies a non-negative integer n that limits the
    # number of items returned from a collection. The service returns the number of
    # available items up to but not greater than the specified value n.
    # @param orderby [String] Specifies the key by which the result collection
    # should be ordered.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<StreamingPolicy>] operation results.
    #
    def list(resource_group_name, account_name, filter:nil, top:nil, orderby:nil, custom_headers:nil)
      first_page = list_as_lazy(resource_group_name, account_name, filter:filter, top:top, orderby:orderby, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # List Streaming Policies
    #
    # Lists the Streaming Policies in the account
    #
    # @param resource_group_name [String] The name of the resource group within the
    # Azure subscription.
    # @param account_name [String] The Media Services account name.
    # @param filter [String] Restricts the set of items returned.
    # @param top [Integer] Specifies a non-negative integer n that limits the
    # number of items returned from a collection. The service returns the number of
    # available items up to but not greater than the specified value n.
    # @param orderby [String] Specifies the key by which the result collection
    # should be ordered.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(resource_group_name, account_name, filter:nil, top:nil, orderby:nil, custom_headers:nil)
      list_async(resource_group_name, account_name, filter:filter, top:top, orderby:orderby, custom_headers:custom_headers).value!
    end

    #
    # List Streaming Policies
    #
    # Lists the Streaming Policies in the account
    #
    # @param resource_group_name [String] The name of the resource group within the
    # Azure subscription.
    # @param account_name [String] The Media Services account name.
    # @param filter [String] Restricts the set of items returned.
    # @param top [Integer] Specifies a non-negative integer n that limits the
    # number of items returned from a collection. The service returns the number of
    # available items up to but not greater than the specified value n.
    # @param orderby [String] Specifies the key by which the result collection
    # should be ordered.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(resource_group_name, account_name, filter:nil, top:nil, orderby:nil, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'account_name is nil' if account_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Media/mediaServices/{accountName}/streamingPolicies'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'accountName' => account_name},
          query_params: {'api-version' => @client.api_version,'$filter' => filter,'$top' => top,'$orderby' => orderby},
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

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::StreamingPolicyCollection.mapper()
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
    # Get a Streaming Policy
    #
    # Get the details of a Streaming Policy in the Media Services account
    #
    # @param resource_group_name [String] The name of the resource group within the
    # Azure subscription.
    # @param account_name [String] The Media Services account name.
    # @param streaming_policy_name [String] The Streaming Policy name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [StreamingPolicy] operation results.
    #
    def get(resource_group_name, account_name, streaming_policy_name, custom_headers:nil)
      response = get_async(resource_group_name, account_name, streaming_policy_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get a Streaming Policy
    #
    # Get the details of a Streaming Policy in the Media Services account
    #
    # @param resource_group_name [String] The name of the resource group within the
    # Azure subscription.
    # @param account_name [String] The Media Services account name.
    # @param streaming_policy_name [String] The Streaming Policy name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, account_name, streaming_policy_name, custom_headers:nil)
      get_async(resource_group_name, account_name, streaming_policy_name, custom_headers:custom_headers).value!
    end

    #
    # Get a Streaming Policy
    #
    # Get the details of a Streaming Policy in the Media Services account
    #
    # @param resource_group_name [String] The name of the resource group within the
    # Azure subscription.
    # @param account_name [String] The Media Services account name.
    # @param streaming_policy_name [String] The Streaming Policy name.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, account_name, streaming_policy_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'account_name is nil' if account_name.nil?
      fail ArgumentError, 'streaming_policy_name is nil' if streaming_policy_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Media/mediaServices/{accountName}/streamingPolicies/{streamingPolicyName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'accountName' => account_name,'streamingPolicyName' => streaming_policy_name},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 404
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::StreamingPolicy.mapper()
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
    # Create a Streaming Policy
    #
    # Create a Streaming Policy in the Media Services account
    #
    # @param resource_group_name [String] The name of the resource group within the
    # Azure subscription.
    # @param account_name [String] The Media Services account name.
    # @param streaming_policy_name [String] The Streaming Policy name.
    # @param parameters [StreamingPolicy] The request parameters
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [StreamingPolicy] operation results.
    #
    def create(resource_group_name, account_name, streaming_policy_name, parameters, custom_headers:nil)
      response = create_async(resource_group_name, account_name, streaming_policy_name, parameters, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Create a Streaming Policy
    #
    # Create a Streaming Policy in the Media Services account
    #
    # @param resource_group_name [String] The name of the resource group within the
    # Azure subscription.
    # @param account_name [String] The Media Services account name.
    # @param streaming_policy_name [String] The Streaming Policy name.
    # @param parameters [StreamingPolicy] The request parameters
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_with_http_info(resource_group_name, account_name, streaming_policy_name, parameters, custom_headers:nil)
      create_async(resource_group_name, account_name, streaming_policy_name, parameters, custom_headers:custom_headers).value!
    end

    #
    # Create a Streaming Policy
    #
    # Create a Streaming Policy in the Media Services account
    #
    # @param resource_group_name [String] The name of the resource group within the
    # Azure subscription.
    # @param account_name [String] The Media Services account name.
    # @param streaming_policy_name [String] The Streaming Policy name.
    # @param parameters [StreamingPolicy] The request parameters
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_async(resource_group_name, account_name, streaming_policy_name, parameters, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'account_name is nil' if account_name.nil?
      fail ArgumentError, 'streaming_policy_name is nil' if streaming_policy_name.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::StreamingPolicy.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Media/mediaServices/{accountName}/streamingPolicies/{streamingPolicyName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'accountName' => account_name,'streamingPolicyName' => streaming_policy_name},
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
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::StreamingPolicy.mapper()
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
    # Delete a Streaming Policy
    #
    # Deletes a Streaming Policy in the Media Services account
    #
    # @param resource_group_name [String] The name of the resource group within the
    # Azure subscription.
    # @param account_name [String] The Media Services account name.
    # @param streaming_policy_name [String] The Streaming Policy name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(resource_group_name, account_name, streaming_policy_name, custom_headers:nil)
      response = delete_async(resource_group_name, account_name, streaming_policy_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # Delete a Streaming Policy
    #
    # Deletes a Streaming Policy in the Media Services account
    #
    # @param resource_group_name [String] The name of the resource group within the
    # Azure subscription.
    # @param account_name [String] The Media Services account name.
    # @param streaming_policy_name [String] The Streaming Policy name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(resource_group_name, account_name, streaming_policy_name, custom_headers:nil)
      delete_async(resource_group_name, account_name, streaming_policy_name, custom_headers:custom_headers).value!
    end

    #
    # Delete a Streaming Policy
    #
    # Deletes a Streaming Policy in the Media Services account
    #
    # @param resource_group_name [String] The name of the resource group within the
    # Azure subscription.
    # @param account_name [String] The Media Services account name.
    # @param streaming_policy_name [String] The Streaming Policy name.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(resource_group_name, account_name, streaming_policy_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'account_name is nil' if account_name.nil?
      fail ArgumentError, 'streaming_policy_name is nil' if streaming_policy_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Media/mediaServices/{accountName}/streamingPolicies/{streamingPolicyName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'accountName' => account_name,'streamingPolicyName' => streaming_policy_name},
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
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # List Streaming Policies
    #
    # Lists the Streaming Policies in the account
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [StreamingPolicyCollection] operation results.
    #
    def list_next(next_page_link, custom_headers:nil)
      response = list_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # List Streaming Policies
    #
    # Lists the Streaming Policies in the account
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
    # List Streaming Policies
    #
    # Lists the Streaming Policies in the account
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
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::MediaServices::Mgmt::V2018_03_30_preview::Models::StreamingPolicyCollection.mapper()
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
    # List Streaming Policies
    #
    # Lists the Streaming Policies in the account
    #
    # @param resource_group_name [String] The name of the resource group within the
    # Azure subscription.
    # @param account_name [String] The Media Services account name.
    # @param filter [String] Restricts the set of items returned.
    # @param top [Integer] Specifies a non-negative integer n that limits the
    # number of items returned from a collection. The service returns the number of
    # available items up to but not greater than the specified value n.
    # @param orderby [String] Specifies the key by which the result collection
    # should be ordered.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [StreamingPolicyCollection] which provide lazy access to pages of the
    # response.
    #
    def list_as_lazy(resource_group_name, account_name, filter:nil, top:nil, orderby:nil, custom_headers:nil)
      response = list_async(resource_group_name, account_name, filter:filter, top:top, orderby:orderby, custom_headers:custom_headers).value!
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
