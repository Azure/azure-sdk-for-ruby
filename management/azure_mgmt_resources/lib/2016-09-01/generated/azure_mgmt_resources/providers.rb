# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Resources::Mgmt::V2016_09_01
  #
  # Provides operations for working with resources and resource groups.
  #
  class Providers
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Providers class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ResourceManagementClient] reference to the ResourceManagementClient
    attr_reader :client

    #
    # Unregisters a subscription from a resource provider.
    #
    # @param resource_provider_namespace [String] The namespace of the resource
    # provider to unregister.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Provider] operation results.
    #
    def unregister(resource_provider_namespace, custom_headers = nil)
      response = unregister_async(resource_provider_namespace, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Unregisters a subscription from a resource provider.
    #
    # @param resource_provider_namespace [String] The namespace of the resource
    # provider to unregister.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def unregister_with_http_info(resource_provider_namespace, custom_headers = nil)
      unregister_async(resource_provider_namespace, custom_headers).value!
    end

    #
    # Unregisters a subscription from a resource provider.
    #
    # @param resource_provider_namespace [String] The namespace of the resource
    # provider to unregister.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def unregister_async(resource_provider_namespace, custom_headers = nil)
      fail ArgumentError, 'resource_provider_namespace is nil' if resource_provider_namespace.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/providers/{resourceProviderNamespace}/unregister'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceProviderNamespace' => resource_provider_namespace,'subscriptionId' => @client.subscription_id},
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
            result.body = Azure::Resources::Mgmt::V2016_09_01::Models::Provider.new.from_json(parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Registers a subscription with a resource provider.
    #
    # @param resource_provider_namespace [String] The namespace of the resource
    # provider to register.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Provider] operation results.
    #
    def register(resource_provider_namespace, custom_headers = nil)
      response = register_async(resource_provider_namespace, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Registers a subscription with a resource provider.
    #
    # @param resource_provider_namespace [String] The namespace of the resource
    # provider to register.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def register_with_http_info(resource_provider_namespace, custom_headers = nil)
      register_async(resource_provider_namespace, custom_headers).value!
    end

    #
    # Registers a subscription with a resource provider.
    #
    # @param resource_provider_namespace [String] The namespace of the resource
    # provider to register.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def register_async(resource_provider_namespace, custom_headers = nil)
      fail ArgumentError, 'resource_provider_namespace is nil' if resource_provider_namespace.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/providers/{resourceProviderNamespace}/register'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceProviderNamespace' => resource_provider_namespace,'subscriptionId' => @client.subscription_id},
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
            result.body = Azure::Resources::Mgmt::V2016_09_01::Models::Provider.new.from_json(parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets all resource providers for a subscription.
    #
    # @param top [Integer] The number of results to return. If null is passed
    # returns all deployments.
    # @param expand [String] The properties to include in the results. For example,
    # use &$expand=metadata in the query string to retrieve resource provider
    # metadata. To include property aliases in response, use
    # $expand=resourceTypes/aliases.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<Provider>] operation results.
    #
    def list(top = nil, expand = nil, custom_headers = nil)
      first_page = list_as_lazy(top, expand, custom_headers)
      first_page.get_all_items
    end

    #
    # Gets all resource providers for a subscription.
    #
    # @param top [Integer] The number of results to return. If null is passed
    # returns all deployments.
    # @param expand [String] The properties to include in the results. For example,
    # use &$expand=metadata in the query string to retrieve resource provider
    # metadata. To include property aliases in response, use
    # $expand=resourceTypes/aliases.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(top = nil, expand = nil, custom_headers = nil)
      list_async(top, expand, custom_headers).value!
    end

    #
    # Gets all resource providers for a subscription.
    #
    # @param top [Integer] The number of results to return. If null is passed
    # returns all deployments.
    # @param expand [String] The properties to include in the results. For example,
    # use &$expand=metadata in the query string to retrieve resource provider
    # metadata. To include property aliases in response, use
    # $expand=resourceTypes/aliases.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(top = nil, expand = nil, custom_headers = nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/providers'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id},
          query_params: {'$top' => top,'$expand' => expand,'api-version' => @client.api_version},
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
            result.body = Azure::Resources::Mgmt::V2016_09_01::Models::ProviderListResult.new.from_json(parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets the specified resource provider.
    #
    # @param resource_provider_namespace [String] The namespace of the resource
    # provider.
    # @param expand [String] The $expand query parameter. For example, to include
    # property aliases in response, use $expand=resourceTypes/aliases.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Provider] operation results.
    #
    def get(resource_provider_namespace, expand = nil, custom_headers = nil)
      response = get_async(resource_provider_namespace, expand, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the specified resource provider.
    #
    # @param resource_provider_namespace [String] The namespace of the resource
    # provider.
    # @param expand [String] The $expand query parameter. For example, to include
    # property aliases in response, use $expand=resourceTypes/aliases.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_provider_namespace, expand = nil, custom_headers = nil)
      get_async(resource_provider_namespace, expand, custom_headers).value!
    end

    #
    # Gets the specified resource provider.
    #
    # @param resource_provider_namespace [String] The namespace of the resource
    # provider.
    # @param expand [String] The $expand query parameter. For example, to include
    # property aliases in response, use $expand=resourceTypes/aliases.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_provider_namespace, expand = nil, custom_headers = nil)
      fail ArgumentError, 'resource_provider_namespace is nil' if resource_provider_namespace.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/providers/{resourceProviderNamespace}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceProviderNamespace' => resource_provider_namespace,'subscriptionId' => @client.subscription_id},
          query_params: {'$expand' => expand,'api-version' => @client.api_version},
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
            result.body = Azure::Resources::Mgmt::V2016_09_01::Models::Provider.new.from_json(parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets all resource providers for a subscription.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ProviderListResult] operation results.
    #
    def list_next(next_page_link, custom_headers = nil)
      response = list_next_async(next_page_link, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets all resource providers for a subscription.
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
    # Gets all resource providers for a subscription.
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
            result.body = Azure::Resources::Mgmt::V2016_09_01::Models::ProviderListResult.new.from_json(parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets all resource providers for a subscription.
    #
    # @param top [Integer] The number of results to return. If null is passed
    # returns all deployments.
    # @param expand [String] The properties to include in the results. For example,
    # use &$expand=metadata in the query string to retrieve resource provider
    # metadata. To include property aliases in response, use
    # $expand=resourceTypes/aliases.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ProviderListResult] which provide lazy access to pages of the
    # response.
    #
    def list_as_lazy(top = nil, expand = nil, custom_headers = nil)
      response = list_async(top, expand, custom_headers).value!
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
