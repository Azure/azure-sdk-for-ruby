# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_12_01
  #
  # ProtectedItems
  #
  class ProtectedItems
    include MsRestAzure

    #
    # Creates and initializes a new instance of the ProtectedItems class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [RecoveryServicesBackupClient] reference to the RecoveryServicesBackupClient
    attr_reader :client

    #
    # Provides the details of the backed up item. This is an asynchronous
    # operation. To know the status of the operation, call the
    # GetItemOperationResult API.
    #
    # @param vault_name [String] The name of the recovery services vault.
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param fabric_name [String] Fabric name associated with the backed up item.
    # @param container_name [String] Container name associated with the backed up
    # item.
    # @param protected_item_name [String] Backed up item name whose details are to
    # be fetched.
    # @param filter [String] OData filter options.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ProtectedItemResource] operation results.
    #
    def get(vault_name, resource_group_name, fabric_name, container_name, protected_item_name, filter = nil, custom_headers = nil)
      response = get_async(vault_name, resource_group_name, fabric_name, container_name, protected_item_name, filter, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Provides the details of the backed up item. This is an asynchronous
    # operation. To know the status of the operation, call the
    # GetItemOperationResult API.
    #
    # @param vault_name [String] The name of the recovery services vault.
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param fabric_name [String] Fabric name associated with the backed up item.
    # @param container_name [String] Container name associated with the backed up
    # item.
    # @param protected_item_name [String] Backed up item name whose details are to
    # be fetched.
    # @param filter [String] OData filter options.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(vault_name, resource_group_name, fabric_name, container_name, protected_item_name, filter = nil, custom_headers = nil)
      get_async(vault_name, resource_group_name, fabric_name, container_name, protected_item_name, filter, custom_headers).value!
    end

    #
    # Provides the details of the backed up item. This is an asynchronous
    # operation. To know the status of the operation, call the
    # GetItemOperationResult API.
    #
    # @param vault_name [String] The name of the recovery services vault.
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param fabric_name [String] Fabric name associated with the backed up item.
    # @param container_name [String] Container name associated with the backed up
    # item.
    # @param protected_item_name [String] Backed up item name whose details are to
    # be fetched.
    # @param filter [String] OData filter options.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(vault_name, resource_group_name, fabric_name, container_name, protected_item_name, filter = nil, custom_headers = nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'vault_name is nil' if vault_name.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'fabric_name is nil' if fabric_name.nil?
      fail ArgumentError, 'container_name is nil' if container_name.nil?
      fail ArgumentError, 'protected_item_name is nil' if protected_item_name.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'Subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/vaults/{vaultName}/backupFabrics/{fabricName}/protectionContainers/{containerName}/protectedItems/{protectedItemName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'vaultName' => vault_name,'resourceGroupName' => resource_group_name,'subscriptionId' => @client.subscription_id,'fabricName' => fabric_name,'containerName' => container_name,'protectedItemName' => protected_item_name},
          query_params: {'api-version' => @client.api_version,'$filter' => filter},
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
            result.body = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::ProtectedItemResource.new.from_json(parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Enables backup of an item or to modifies the backup policy information of an
    # already backed up item. This is an asynchronous operation. To know the status
    # of the operation, call the GetItemOperationResult API.
    #
    # @param vault_name [String] The name of the recovery services vault.
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param fabric_name [String] Fabric name associated with the backup item.
    # @param container_name [String] Container name associated with the backup
    # item.
    # @param protected_item_name [String] Item name to be backed up.
    # @param parameters [ProtectedItemResource] resource backed up item
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def create_or_update(vault_name, resource_group_name, fabric_name, container_name, protected_item_name, parameters, custom_headers = nil)
      response = create_or_update_async(vault_name, resource_group_name, fabric_name, container_name, protected_item_name, parameters, custom_headers).value!
      nil
    end

    #
    # Enables backup of an item or to modifies the backup policy information of an
    # already backed up item. This is an asynchronous operation. To know the status
    # of the operation, call the GetItemOperationResult API.
    #
    # @param vault_name [String] The name of the recovery services vault.
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param fabric_name [String] Fabric name associated with the backup item.
    # @param container_name [String] Container name associated with the backup
    # item.
    # @param protected_item_name [String] Item name to be backed up.
    # @param parameters [ProtectedItemResource] resource backed up item
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_or_update_with_http_info(vault_name, resource_group_name, fabric_name, container_name, protected_item_name, parameters, custom_headers = nil)
      create_or_update_async(vault_name, resource_group_name, fabric_name, container_name, protected_item_name, parameters, custom_headers).value!
    end

    #
    # Enables backup of an item or to modifies the backup policy information of an
    # already backed up item. This is an asynchronous operation. To know the status
    # of the operation, call the GetItemOperationResult API.
    #
    # @param vault_name [String] The name of the recovery services vault.
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param fabric_name [String] Fabric name associated with the backup item.
    # @param container_name [String] Container name associated with the backup
    # item.
    # @param protected_item_name [String] Item name to be backed up.
    # @param parameters [ProtectedItemResource] resource backed up item
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_or_update_async(vault_name, resource_group_name, fabric_name, container_name, protected_item_name, parameters, custom_headers = nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'vault_name is nil' if vault_name.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'fabric_name is nil' if fabric_name.nil?
      fail ArgumentError, 'container_name is nil' if container_name.nil?
      fail ArgumentError, 'protected_item_name is nil' if protected_item_name.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_content = parameters.nil? ? nil: parameters.to_json
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'Subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/vaults/{vaultName}/backupFabrics/{fabricName}/protectionContainers/{containerName}/protectedItems/{protectedItemName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'vaultName' => vault_name,'resourceGroupName' => resource_group_name,'subscriptionId' => @client.subscription_id,'fabricName' => fabric_name,'containerName' => container_name,'protectedItemName' => protected_item_name},
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
        unless status_code == 202
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Used to disable backup of an item within a container. This is an asynchronous
    # operation. To know the status of the request, call the GetItemOperationResult
    # API.
    #
    # @param vault_name [String] The name of the recovery services vault.
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param fabric_name [String] Fabric name associated with the backed up item.
    # @param container_name [String] Container name associated with the backed up
    # item.
    # @param protected_item_name [String] Backed up item to be deleted.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(vault_name, resource_group_name, fabric_name, container_name, protected_item_name, custom_headers = nil)
      response = delete_async(vault_name, resource_group_name, fabric_name, container_name, protected_item_name, custom_headers).value!
      nil
    end

    #
    # Used to disable backup of an item within a container. This is an asynchronous
    # operation. To know the status of the request, call the GetItemOperationResult
    # API.
    #
    # @param vault_name [String] The name of the recovery services vault.
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param fabric_name [String] Fabric name associated with the backed up item.
    # @param container_name [String] Container name associated with the backed up
    # item.
    # @param protected_item_name [String] Backed up item to be deleted.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(vault_name, resource_group_name, fabric_name, container_name, protected_item_name, custom_headers = nil)
      delete_async(vault_name, resource_group_name, fabric_name, container_name, protected_item_name, custom_headers).value!
    end

    #
    # Used to disable backup of an item within a container. This is an asynchronous
    # operation. To know the status of the request, call the GetItemOperationResult
    # API.
    #
    # @param vault_name [String] The name of the recovery services vault.
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param fabric_name [String] Fabric name associated with the backed up item.
    # @param container_name [String] Container name associated with the backed up
    # item.
    # @param protected_item_name [String] Backed up item to be deleted.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(vault_name, resource_group_name, fabric_name, container_name, protected_item_name, custom_headers = nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'vault_name is nil' if vault_name.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'fabric_name is nil' if fabric_name.nil?
      fail ArgumentError, 'container_name is nil' if container_name.nil?
      fail ArgumentError, 'protected_item_name is nil' if protected_item_name.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'Subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/vaults/{vaultName}/backupFabrics/{fabricName}/protectionContainers/{containerName}/protectedItems/{protectedItemName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'vaultName' => vault_name,'resourceGroupName' => resource_group_name,'subscriptionId' => @client.subscription_id,'fabricName' => fabric_name,'containerName' => container_name,'protectedItemName' => protected_item_name},
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
