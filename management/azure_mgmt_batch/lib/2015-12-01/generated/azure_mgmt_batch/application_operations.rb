# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Batch::Mgmt::V2015_12_01
  #
  # ApplicationOperations
  #
  class ApplicationOperations
    include MsRestAzure

    #
    # Creates and initializes a new instance of the ApplicationOperations class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [BatchManagementClient] reference to the BatchManagementClient
    attr_reader :client

    #
    # Adds an application to the specified Batch account.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the Batch account.
    # @param account_name [String] The name of the Batch account.
    # @param application_id [String] The ID of the application.
    # @param parameters [AddApplicationParameters] The parameters for the request.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Application] operation results.
    #
    def create(resource_group_name, account_name, application_id, parameters = nil, custom_headers = nil)
      response = create_async(resource_group_name, account_name, application_id, parameters, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Adds an application to the specified Batch account.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the Batch account.
    # @param account_name [String] The name of the Batch account.
    # @param application_id [String] The ID of the application.
    # @param parameters [AddApplicationParameters] The parameters for the request.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_with_http_info(resource_group_name, account_name, application_id, parameters = nil, custom_headers = nil)
      create_async(resource_group_name, account_name, application_id, parameters, custom_headers).value!
    end

    #
    # Adds an application to the specified Batch account.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the Batch account.
    # @param account_name [String] The name of the Batch account.
    # @param application_id [String] The ID of the application.
    # @param parameters [AddApplicationParameters] The parameters for the request.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_async(resource_group_name, account_name, application_id, parameters = nil, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._]+$$')).nil?
      fail ArgumentError, 'account_name is nil' if account_name.nil?
      fail ArgumentError, "'account_name' should satisfy the constraint - 'MaxLength': '24'" if !account_name.nil? && account_name.length > 24
      fail ArgumentError, "'account_name' should satisfy the constraint - 'MinLength': '3'" if !account_name.nil? && account_name.length < 3
      fail ArgumentError, "'account_name' should satisfy the constraint - 'Pattern': '^[-\w\._]+$'" if !account_name.nil? && account_name.match(Regexp.new('^^[-\w\._]+$$')).nil?
      fail ArgumentError, 'application_id is nil' if application_id.nil?
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

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Batch/batchAccounts/{accountName}/applications/{applicationId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'accountName' => account_name,'applicationId' => application_id,'subscriptionId' => @client.subscription_id},
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
            result.body = Azure::Batch::Mgmt::V2015_12_01::Models::Application.new.from_json(parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Deletes an application.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the Batch account.
    # @param account_name [String] The name of the Batch account.
    # @param application_id [String] The ID of the application.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(resource_group_name, account_name, application_id, custom_headers = nil)
      response = delete_async(resource_group_name, account_name, application_id, custom_headers).value!
      nil
    end

    #
    # Deletes an application.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the Batch account.
    # @param account_name [String] The name of the Batch account.
    # @param application_id [String] The ID of the application.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(resource_group_name, account_name, application_id, custom_headers = nil)
      delete_async(resource_group_name, account_name, application_id, custom_headers).value!
    end

    #
    # Deletes an application.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the Batch account.
    # @param account_name [String] The name of the Batch account.
    # @param application_id [String] The ID of the application.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(resource_group_name, account_name, application_id, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._]+$$')).nil?
      fail ArgumentError, 'account_name is nil' if account_name.nil?
      fail ArgumentError, "'account_name' should satisfy the constraint - 'MaxLength': '24'" if !account_name.nil? && account_name.length > 24
      fail ArgumentError, "'account_name' should satisfy the constraint - 'MinLength': '3'" if !account_name.nil? && account_name.length < 3
      fail ArgumentError, "'account_name' should satisfy the constraint - 'Pattern': '^[-\w\._]+$'" if !account_name.nil? && account_name.match(Regexp.new('^^[-\w\._]+$$')).nil?
      fail ArgumentError, 'application_id is nil' if application_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Batch/batchAccounts/{accountName}/applications/{applicationId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'accountName' => account_name,'applicationId' => application_id,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 204
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Gets information about the specified application.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the Batch account.
    # @param account_name [String] The name of the Batch account.
    # @param application_id [String] The ID of the application.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Application] operation results.
    #
    def get(resource_group_name, account_name, application_id, custom_headers = nil)
      response = get_async(resource_group_name, account_name, application_id, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets information about the specified application.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the Batch account.
    # @param account_name [String] The name of the Batch account.
    # @param application_id [String] The ID of the application.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, account_name, application_id, custom_headers = nil)
      get_async(resource_group_name, account_name, application_id, custom_headers).value!
    end

    #
    # Gets information about the specified application.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the Batch account.
    # @param account_name [String] The name of the Batch account.
    # @param application_id [String] The ID of the application.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, account_name, application_id, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._]+$$')).nil?
      fail ArgumentError, 'account_name is nil' if account_name.nil?
      fail ArgumentError, "'account_name' should satisfy the constraint - 'MaxLength': '24'" if !account_name.nil? && account_name.length > 24
      fail ArgumentError, "'account_name' should satisfy the constraint - 'MinLength': '3'" if !account_name.nil? && account_name.length < 3
      fail ArgumentError, "'account_name' should satisfy the constraint - 'Pattern': '^[-\w\._]+$'" if !account_name.nil? && account_name.match(Regexp.new('^^[-\w\._]+$$')).nil?
      fail ArgumentError, 'application_id is nil' if application_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Batch/batchAccounts/{accountName}/applications/{applicationId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'accountName' => account_name,'applicationId' => application_id,'subscriptionId' => @client.subscription_id},
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
            result.body = Azure::Batch::Mgmt::V2015_12_01::Models::Application.new.from_json(parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Updates settings for the specified application.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the Batch account.
    # @param account_name [String] The name of the Batch account.
    # @param application_id [String] The ID of the application.
    # @param parameters [UpdateApplicationParameters] The parameters for the
    # request.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def update(resource_group_name, account_name, application_id, parameters, custom_headers = nil)
      response = update_async(resource_group_name, account_name, application_id, parameters, custom_headers).value!
      nil
    end

    #
    # Updates settings for the specified application.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the Batch account.
    # @param account_name [String] The name of the Batch account.
    # @param application_id [String] The ID of the application.
    # @param parameters [UpdateApplicationParameters] The parameters for the
    # request.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def update_with_http_info(resource_group_name, account_name, application_id, parameters, custom_headers = nil)
      update_async(resource_group_name, account_name, application_id, parameters, custom_headers).value!
    end

    #
    # Updates settings for the specified application.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the Batch account.
    # @param account_name [String] The name of the Batch account.
    # @param application_id [String] The ID of the application.
    # @param parameters [UpdateApplicationParameters] The parameters for the
    # request.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def update_async(resource_group_name, account_name, application_id, parameters, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._]+$$')).nil?
      fail ArgumentError, 'account_name is nil' if account_name.nil?
      fail ArgumentError, "'account_name' should satisfy the constraint - 'MaxLength': '24'" if !account_name.nil? && account_name.length > 24
      fail ArgumentError, "'account_name' should satisfy the constraint - 'MinLength': '3'" if !account_name.nil? && account_name.length < 3
      fail ArgumentError, "'account_name' should satisfy the constraint - 'Pattern': '^[-\w\._]+$'" if !account_name.nil? && account_name.match(Regexp.new('^^[-\w\._]+$$')).nil?
      fail ArgumentError, 'application_id is nil' if application_id.nil?
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

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Batch/batchAccounts/{accountName}/applications/{applicationId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'accountName' => account_name,'applicationId' => application_id,'subscriptionId' => @client.subscription_id},
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
        unless status_code == 204
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Lists all of the applications in the specified account.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the Batch account.
    # @param account_name [String] The name of the Batch account.
    # @param maxresults [Integer] The maximum number of items to return in the
    # response.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<Application>] operation results.
    #
    def list(resource_group_name, account_name, maxresults = nil, custom_headers = nil)
      first_page = list_as_lazy(resource_group_name, account_name, maxresults, custom_headers)
      first_page.get_all_items
    end

    #
    # Lists all of the applications in the specified account.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the Batch account.
    # @param account_name [String] The name of the Batch account.
    # @param maxresults [Integer] The maximum number of items to return in the
    # response.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(resource_group_name, account_name, maxresults = nil, custom_headers = nil)
      list_async(resource_group_name, account_name, maxresults, custom_headers).value!
    end

    #
    # Lists all of the applications in the specified account.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the Batch account.
    # @param account_name [String] The name of the Batch account.
    # @param maxresults [Integer] The maximum number of items to return in the
    # response.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(resource_group_name, account_name, maxresults = nil, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._]+$$')).nil?
      fail ArgumentError, 'account_name is nil' if account_name.nil?
      fail ArgumentError, "'account_name' should satisfy the constraint - 'MaxLength': '24'" if !account_name.nil? && account_name.length > 24
      fail ArgumentError, "'account_name' should satisfy the constraint - 'MinLength': '3'" if !account_name.nil? && account_name.length < 3
      fail ArgumentError, "'account_name' should satisfy the constraint - 'Pattern': '^[-\w\._]+$'" if !account_name.nil? && account_name.match(Regexp.new('^^[-\w\._]+$$')).nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Batch/batchAccounts/{accountName}/applications'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'accountName' => account_name,'subscriptionId' => @client.subscription_id},
          query_params: {'maxresults' => maxresults,'api-version' => @client.api_version},
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
            result.body = Azure::Batch::Mgmt::V2015_12_01::Models::ListApplicationsResult.new.from_json(parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Lists all of the applications in the specified account.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ListApplicationsResult] operation results.
    #
    def list_next(next_page_link, custom_headers = nil)
      response = list_next_async(next_page_link, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists all of the applications in the specified account.
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
    # Lists all of the applications in the specified account.
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
            result.body = Azure::Batch::Mgmt::V2015_12_01::Models::ListApplicationsResult.new.from_json(parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Lists all of the applications in the specified account.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the Batch account.
    # @param account_name [String] The name of the Batch account.
    # @param maxresults [Integer] The maximum number of items to return in the
    # response.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ListApplicationsResult] which provide lazy access to pages of the
    # response.
    #
    def list_as_lazy(resource_group_name, account_name, maxresults = nil, custom_headers = nil)
      response = list_async(resource_group_name, account_name, maxresults, custom_headers).value!
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
