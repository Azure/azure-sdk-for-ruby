# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::NetApp::Mgmt::V2020_11_01
  #
  # Microsoft NetApp Files Azure Resource Provider specification
  #
  class SnapshotPolicies
    include MsRestAzure

    #
    # Creates and initializes a new instance of the SnapshotPolicies class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [AzureNetAppFilesManagementClient] reference to the AzureNetAppFilesManagementClient
    attr_reader :client

    #
    # List snapshot policy
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param account_name [String] The name of the NetApp account
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SnapshotPoliciesList] operation results.
    #
    def list(resource_group_name, account_name, custom_headers:nil)
      response = list_async(resource_group_name, account_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # List snapshot policy
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param account_name [String] The name of the NetApp account
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(resource_group_name, account_name, custom_headers:nil)
      list_async(resource_group_name, account_name, custom_headers:custom_headers).value!
    end

    #
    # List snapshot policy
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param account_name [String] The name of the NetApp account
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(resource_group_name, account_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, 'account_name is nil' if account_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.NetApp/netAppAccounts/{accountName}/snapshotPolicies'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'accountName' => account_name},
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
            result_mapper = Azure::NetApp::Mgmt::V2020_11_01::Models::SnapshotPoliciesList.mapper()
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
    # Get a snapshot Policy
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param account_name [String] The name of the NetApp account
    # @param snapshot_policy_name [String] The name of the snapshot policy target
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SnapshotPolicy] operation results.
    #
    def get(resource_group_name, account_name, snapshot_policy_name, custom_headers:nil)
      response = get_async(resource_group_name, account_name, snapshot_policy_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get a snapshot Policy
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param account_name [String] The name of the NetApp account
    # @param snapshot_policy_name [String] The name of the snapshot policy target
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, account_name, snapshot_policy_name, custom_headers:nil)
      get_async(resource_group_name, account_name, snapshot_policy_name, custom_headers:custom_headers).value!
    end

    #
    # Get a snapshot Policy
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param account_name [String] The name of the NetApp account
    # @param snapshot_policy_name [String] The name of the snapshot policy target
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, account_name, snapshot_policy_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, 'account_name is nil' if account_name.nil?
      fail ArgumentError, 'snapshot_policy_name is nil' if snapshot_policy_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.NetApp/netAppAccounts/{accountName}/snapshotPolicies/{snapshotPolicyName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'accountName' => account_name,'snapshotPolicyName' => snapshot_policy_name},
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
            result_mapper = Azure::NetApp::Mgmt::V2020_11_01::Models::SnapshotPolicy.mapper()
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
    # Create a snapshot policy
    #
    # @param body [SnapshotPolicy] Snapshot policy object supplied in the body of
    # the operation.
    # @param resource_group_name [String] The name of the resource group.
    # @param account_name [String] The name of the NetApp account
    # @param snapshot_policy_name [String] The name of the snapshot policy target
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SnapshotPolicy] operation results.
    #
    def create(body, resource_group_name, account_name, snapshot_policy_name, custom_headers:nil)
      response = create_async(body, resource_group_name, account_name, snapshot_policy_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Create a snapshot policy
    #
    # @param body [SnapshotPolicy] Snapshot policy object supplied in the body of
    # the operation.
    # @param resource_group_name [String] The name of the resource group.
    # @param account_name [String] The name of the NetApp account
    # @param snapshot_policy_name [String] The name of the snapshot policy target
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_with_http_info(body, resource_group_name, account_name, snapshot_policy_name, custom_headers:nil)
      create_async(body, resource_group_name, account_name, snapshot_policy_name, custom_headers:custom_headers).value!
    end

    #
    # Create a snapshot policy
    #
    # @param body [SnapshotPolicy] Snapshot policy object supplied in the body of
    # the operation.
    # @param resource_group_name [String] The name of the resource group.
    # @param account_name [String] The name of the NetApp account
    # @param snapshot_policy_name [String] The name of the snapshot policy target
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_async(body, resource_group_name, account_name, snapshot_policy_name, custom_headers:nil)
      fail ArgumentError, 'body is nil' if body.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, 'account_name is nil' if account_name.nil?
      fail ArgumentError, 'snapshot_policy_name is nil' if snapshot_policy_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::NetApp::Mgmt::V2020_11_01::Models::SnapshotPolicy.mapper()
      request_content = @client.serialize(request_mapper,  body)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.NetApp/netAppAccounts/{accountName}/snapshotPolicies/{snapshotPolicyName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'accountName' => account_name,'snapshotPolicyName' => snapshot_policy_name},
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
            result_mapper = Azure::NetApp::Mgmt::V2020_11_01::Models::SnapshotPolicy.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::NetApp::Mgmt::V2020_11_01::Models::SnapshotPolicy.mapper()
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
    # Patch a snapshot policy
    #
    # @param body [SnapshotPolicyPatch] Snapshot policy object supplied in the body
    # of the operation.
    # @param resource_group_name [String] The name of the resource group.
    # @param account_name [String] The name of the NetApp account
    # @param snapshot_policy_name [String] The name of the snapshot policy target
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SnapshotPolicy] operation results.
    #
    def update(body, resource_group_name, account_name, snapshot_policy_name, custom_headers:nil)
      response = update_async(body, resource_group_name, account_name, snapshot_policy_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param body [SnapshotPolicyPatch] Snapshot policy object supplied in the body
    # of the operation.
    # @param resource_group_name [String] The name of the resource group.
    # @param account_name [String] The name of the NetApp account
    # @param snapshot_policy_name [String] The name of the snapshot policy target
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def update_async(body, resource_group_name, account_name, snapshot_policy_name, custom_headers:nil)
      # Send request
      promise = begin_update_async(body, resource_group_name, account_name, snapshot_policy_name, custom_headers:custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = Azure::NetApp::Mgmt::V2020_11_01::Models::SnapshotPolicy.mapper()
          parsed_response = @client.deserialize(result_mapper, parsed_response)
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Delete snapshot policy
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param account_name [String] The name of the NetApp account
    # @param snapshot_policy_name [String] The name of the snapshot policy target
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    def delete(resource_group_name, account_name, snapshot_policy_name, custom_headers:nil)
      response = delete_async(resource_group_name, account_name, snapshot_policy_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # @param resource_group_name [String] The name of the resource group.
    # @param account_name [String] The name of the NetApp account
    # @param snapshot_policy_name [String] The name of the snapshot policy target
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def delete_async(resource_group_name, account_name, snapshot_policy_name, custom_headers:nil)
      # Send request
      promise = begin_delete_async(resource_group_name, account_name, snapshot_policy_name, custom_headers:custom_headers)

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
    # Get volumes for snapshot policy
    #
    # Get volumes associated with snapshot policy
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param account_name [String] The name of the NetApp account
    # @param snapshot_policy_name [String] The name of the snapshot policy target
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SnapshotPolicyVolumeList] operation results.
    #
    def list_volumes(resource_group_name, account_name, snapshot_policy_name, custom_headers:nil)
      response = list_volumes_async(resource_group_name, account_name, snapshot_policy_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get volumes for snapshot policy
    #
    # Get volumes associated with snapshot policy
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param account_name [String] The name of the NetApp account
    # @param snapshot_policy_name [String] The name of the snapshot policy target
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_volumes_with_http_info(resource_group_name, account_name, snapshot_policy_name, custom_headers:nil)
      list_volumes_async(resource_group_name, account_name, snapshot_policy_name, custom_headers:custom_headers).value!
    end

    #
    # Get volumes for snapshot policy
    #
    # Get volumes associated with snapshot policy
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param account_name [String] The name of the NetApp account
    # @param snapshot_policy_name [String] The name of the snapshot policy target
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_volumes_async(resource_group_name, account_name, snapshot_policy_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, 'account_name is nil' if account_name.nil?
      fail ArgumentError, 'snapshot_policy_name is nil' if snapshot_policy_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.NetApp/netAppAccounts/{accountName}/snapshotPolicies/{snapshotPolicyName}/volumes'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'accountName' => account_name,'snapshotPolicyName' => snapshot_policy_name},
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
            result_mapper = Azure::NetApp::Mgmt::V2020_11_01::Models::SnapshotPolicyVolumeList.mapper()
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
    # Patch a snapshot policy
    #
    # @param body [SnapshotPolicyPatch] Snapshot policy object supplied in the body
    # of the operation.
    # @param resource_group_name [String] The name of the resource group.
    # @param account_name [String] The name of the NetApp account
    # @param snapshot_policy_name [String] The name of the snapshot policy target
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SnapshotPolicy] operation results.
    #
    def begin_update(body, resource_group_name, account_name, snapshot_policy_name, custom_headers:nil)
      response = begin_update_async(body, resource_group_name, account_name, snapshot_policy_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Patch a snapshot policy
    #
    # @param body [SnapshotPolicyPatch] Snapshot policy object supplied in the body
    # of the operation.
    # @param resource_group_name [String] The name of the resource group.
    # @param account_name [String] The name of the NetApp account
    # @param snapshot_policy_name [String] The name of the snapshot policy target
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_update_with_http_info(body, resource_group_name, account_name, snapshot_policy_name, custom_headers:nil)
      begin_update_async(body, resource_group_name, account_name, snapshot_policy_name, custom_headers:custom_headers).value!
    end

    #
    # Patch a snapshot policy
    #
    # @param body [SnapshotPolicyPatch] Snapshot policy object supplied in the body
    # of the operation.
    # @param resource_group_name [String] The name of the resource group.
    # @param account_name [String] The name of the NetApp account
    # @param snapshot_policy_name [String] The name of the snapshot policy target
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_update_async(body, resource_group_name, account_name, snapshot_policy_name, custom_headers:nil)
      fail ArgumentError, 'body is nil' if body.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, 'account_name is nil' if account_name.nil?
      fail ArgumentError, 'snapshot_policy_name is nil' if snapshot_policy_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::NetApp::Mgmt::V2020_11_01::Models::SnapshotPolicyPatch.mapper()
      request_content = @client.serialize(request_mapper,  body)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.NetApp/netAppAccounts/{accountName}/snapshotPolicies/{snapshotPolicyName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'accountName' => account_name,'snapshotPolicyName' => snapshot_policy_name},
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
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::NetApp::Mgmt::V2020_11_01::Models::SnapshotPolicy.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 202
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::NetApp::Mgmt::V2020_11_01::Models::SnapshotPolicy.mapper()
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
    # Delete snapshot policy
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param account_name [String] The name of the NetApp account
    # @param snapshot_policy_name [String] The name of the snapshot policy target
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def begin_delete(resource_group_name, account_name, snapshot_policy_name, custom_headers:nil)
      response = begin_delete_async(resource_group_name, account_name, snapshot_policy_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # Delete snapshot policy
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param account_name [String] The name of the NetApp account
    # @param snapshot_policy_name [String] The name of the snapshot policy target
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_delete_with_http_info(resource_group_name, account_name, snapshot_policy_name, custom_headers:nil)
      begin_delete_async(resource_group_name, account_name, snapshot_policy_name, custom_headers:custom_headers).value!
    end

    #
    # Delete snapshot policy
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param account_name [String] The name of the NetApp account
    # @param snapshot_policy_name [String] The name of the snapshot policy target
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_delete_async(resource_group_name, account_name, snapshot_policy_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, 'account_name is nil' if account_name.nil?
      fail ArgumentError, 'snapshot_policy_name is nil' if snapshot_policy_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.NetApp/netAppAccounts/{accountName}/snapshotPolicies/{snapshotPolicyName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'accountName' => account_name,'snapshotPolicyName' => snapshot_policy_name},
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

  end
end
