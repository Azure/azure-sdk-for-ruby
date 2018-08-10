# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  #
  # ReplicationPolicies
  #
  class ReplicationPolicies
    include MsRestAzure

    #
    # Creates and initializes a new instance of the ReplicationPolicies class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [SiteRecoveryManagementClient] reference to the SiteRecoveryManagementClient
    attr_reader :client

    #
    # Gets the requested policy.
    #
    # Gets the details of a replication policy.
    #
    # @param policy_name [String] Replication policy name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Policy] operation results.
    #
    def get(policy_name, custom_headers = nil)
      response = get_async(policy_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the requested policy.
    #
    # Gets the details of a replication policy.
    #
    # @param policy_name [String] Replication policy name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(policy_name, custom_headers = nil)
      get_async(policy_name, custom_headers).value!
    end

    #
    # Gets the requested policy.
    #
    # Gets the details of a replication policy.
    #
    # @param policy_name [String] Replication policy name.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(policy_name, custom_headers = nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.resource_name is nil' if @client.resource_name.nil?
      fail ArgumentError, '@client.resource_group_name is nil' if @client.resource_group_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'policy_name is nil' if policy_name.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'Subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/vaults/{resourceName}/replicationPolicies/{policyName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceName' => @client.resource_name,'resourceGroupName' => @client.resource_group_name,'subscriptionId' => @client.subscription_id,'policyName' => policy_name},
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
            result_mapper = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::Policy.mapper()
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
    # Creates the policy.
    #
    # The operation to create a replication policy
    #
    # @param policy_name [String] Replication policy name
    # @param input [CreatePolicyInput] Create policy input
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Policy] operation results.
    #
    def create(policy_name, input, custom_headers = nil)
      response = create_async(policy_name, input, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param policy_name [String] Replication policy name
    # @param input [CreatePolicyInput] Create policy input
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def create_async(policy_name, input, custom_headers = nil)
      # Send request
      promise = begin_create_async(policy_name, input, custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::Policy.mapper()
          parsed_response = @client.deserialize(result_mapper, parsed_response)
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Delete the policy.
    #
    # The operation to delete a replication policy.
    #
    # @param policy_name [String] Replication policy name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    def delete(policy_name, custom_headers = nil)
      response = delete_async(policy_name, custom_headers).value!
      nil
    end

    #
    # @param policy_name [String] Replication policy name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def delete_async(policy_name, custom_headers = nil)
      # Send request
      promise = begin_delete_async(policy_name, custom_headers)

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
    # Updates the protection profile.
    #
    # The operation to update a replication policy.
    #
    # @param policy_name [String] Protection profile Id.
    # @param input [UpdatePolicyInput] Update Protection Profile Input
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Policy] operation results.
    #
    def update(policy_name, input, custom_headers = nil)
      response = update_async(policy_name, input, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param policy_name [String] Protection profile Id.
    # @param input [UpdatePolicyInput] Update Protection Profile Input
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def update_async(policy_name, input, custom_headers = nil)
      # Send request
      promise = begin_update_async(policy_name, input, custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::Policy.mapper()
          parsed_response = @client.deserialize(result_mapper, parsed_response)
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Gets the list of replication policies
    #
    # Lists the replication policies for a vault.
    #
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<Policy>] operation results.
    #
    def list(custom_headers = nil)
      first_page = list_as_lazy(custom_headers)
      first_page.get_all_items
    end

    #
    # Gets the list of replication policies
    #
    # Lists the replication policies for a vault.
    #
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(custom_headers = nil)
      list_async(custom_headers).value!
    end

    #
    # Gets the list of replication policies
    #
    # Lists the replication policies for a vault.
    #
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(custom_headers = nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.resource_name is nil' if @client.resource_name.nil?
      fail ArgumentError, '@client.resource_group_name is nil' if @client.resource_group_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'Subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/vaults/{resourceName}/replicationPolicies'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceName' => @client.resource_name,'resourceGroupName' => @client.resource_group_name,'subscriptionId' => @client.subscription_id},
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
            result_mapper = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::PolicyCollection.mapper()
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
    # Creates the policy.
    #
    # The operation to create a replication policy
    #
    # @param policy_name [String] Replication policy name
    # @param input [CreatePolicyInput] Create policy input
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Policy] operation results.
    #
    def begin_create(policy_name, input, custom_headers = nil)
      response = begin_create_async(policy_name, input, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Creates the policy.
    #
    # The operation to create a replication policy
    #
    # @param policy_name [String] Replication policy name
    # @param input [CreatePolicyInput] Create policy input
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_create_with_http_info(policy_name, input, custom_headers = nil)
      begin_create_async(policy_name, input, custom_headers).value!
    end

    #
    # Creates the policy.
    #
    # The operation to create a replication policy
    #
    # @param policy_name [String] Replication policy name
    # @param input [CreatePolicyInput] Create policy input
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_create_async(policy_name, input, custom_headers = nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.resource_name is nil' if @client.resource_name.nil?
      fail ArgumentError, '@client.resource_group_name is nil' if @client.resource_group_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'policy_name is nil' if policy_name.nil?
      fail ArgumentError, 'input is nil' if input.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::CreatePolicyInput.mapper()
      request_content = @client.serialize(request_mapper,  input)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'Subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/vaults/{resourceName}/replicationPolicies/{policyName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceName' => @client.resource_name,'resourceGroupName' => @client.resource_group_name,'subscriptionId' => @client.subscription_id,'policyName' => policy_name},
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
        unless status_code == 200 || status_code == 202
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::Policy.mapper()
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
    # Delete the policy.
    #
    # The operation to delete a replication policy.
    #
    # @param policy_name [String] Replication policy name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def begin_delete(policy_name, custom_headers = nil)
      response = begin_delete_async(policy_name, custom_headers).value!
      nil
    end

    #
    # Delete the policy.
    #
    # The operation to delete a replication policy.
    #
    # @param policy_name [String] Replication policy name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_delete_with_http_info(policy_name, custom_headers = nil)
      begin_delete_async(policy_name, custom_headers).value!
    end

    #
    # Delete the policy.
    #
    # The operation to delete a replication policy.
    #
    # @param policy_name [String] Replication policy name.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_delete_async(policy_name, custom_headers = nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.resource_name is nil' if @client.resource_name.nil?
      fail ArgumentError, '@client.resource_group_name is nil' if @client.resource_group_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'policy_name is nil' if policy_name.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'Subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/vaults/{resourceName}/replicationPolicies/{policyName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceName' => @client.resource_name,'resourceGroupName' => @client.resource_group_name,'subscriptionId' => @client.subscription_id,'policyName' => policy_name},
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

    #
    # Updates the protection profile.
    #
    # The operation to update a replication policy.
    #
    # @param policy_name [String] Protection profile Id.
    # @param input [UpdatePolicyInput] Update Protection Profile Input
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Policy] operation results.
    #
    def begin_update(policy_name, input, custom_headers = nil)
      response = begin_update_async(policy_name, input, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Updates the protection profile.
    #
    # The operation to update a replication policy.
    #
    # @param policy_name [String] Protection profile Id.
    # @param input [UpdatePolicyInput] Update Protection Profile Input
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_update_with_http_info(policy_name, input, custom_headers = nil)
      begin_update_async(policy_name, input, custom_headers).value!
    end

    #
    # Updates the protection profile.
    #
    # The operation to update a replication policy.
    #
    # @param policy_name [String] Protection profile Id.
    # @param input [UpdatePolicyInput] Update Protection Profile Input
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_update_async(policy_name, input, custom_headers = nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.resource_name is nil' if @client.resource_name.nil?
      fail ArgumentError, '@client.resource_group_name is nil' if @client.resource_group_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'policy_name is nil' if policy_name.nil?
      fail ArgumentError, 'input is nil' if input.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::UpdatePolicyInput.mapper()
      request_content = @client.serialize(request_mapper,  input)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'Subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/vaults/{resourceName}/replicationPolicies/{policyName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceName' => @client.resource_name,'resourceGroupName' => @client.resource_group_name,'subscriptionId' => @client.subscription_id,'policyName' => policy_name},
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
        unless status_code == 200 || status_code == 202
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::Policy.mapper()
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
    # Gets the list of replication policies
    #
    # Lists the replication policies for a vault.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [PolicyCollection] operation results.
    #
    def list_next(next_page_link, custom_headers = nil)
      response = list_next_async(next_page_link, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the list of replication policies
    #
    # Lists the replication policies for a vault.
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
    # Gets the list of replication policies
    #
    # Lists the replication policies for a vault.
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
            result_mapper = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::PolicyCollection.mapper()
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
    # Gets the list of replication policies
    #
    # Lists the replication policies for a vault.
    #
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [PolicyCollection] which provide lazy access to pages of the
    # response.
    #
    def list_as_lazy(custom_headers = nil)
      response = list_async(custom_headers).value!
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
