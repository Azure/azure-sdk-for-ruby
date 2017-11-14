# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 2.2.27.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_06_01
  #
  # Open API 2.0 Specs for Azure RecoveryServices Backup service
  #
  class RecoveryPoints
    include MsRestAzure

    #
    # Creates and initializes a new instance of the RecoveryPoints class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [RecoveryServicesBackupClient] reference to the RecoveryServicesBackupClient
    attr_reader :client

    #
    # Provides the backup data for the RecoveryPointID. This is an asynchronous
    # operation. To learn the status of the operation, call the
    # GetProtectedItemOperationResult API.
    #
    # @param vault_name [String] The name of the Recovery Services vault.
    # @param resource_group_name [String] The name of the resource group associated
    # with the Recovery Services vault.
    # @param fabric_name [String] The fabric name associated with backup item.
    # @param container_name [String] The container name associated with backup
    # item.
    # @param protected_item_name [String] The name of the backup item used in this
    # GET operation.
    # @param recovery_point_id [String] The RecoveryPointID associated with this
    # GET operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [RecoveryPointResource] operation results.
    #
    def get(vault_name, resource_group_name, fabric_name, container_name, protected_item_name, recovery_point_id, custom_headers = nil)
      response = get_async(vault_name, resource_group_name, fabric_name, container_name, protected_item_name, recovery_point_id, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Provides the backup data for the RecoveryPointID. This is an asynchronous
    # operation. To learn the status of the operation, call the
    # GetProtectedItemOperationResult API.
    #
    # @param vault_name [String] The name of the Recovery Services vault.
    # @param resource_group_name [String] The name of the resource group associated
    # with the Recovery Services vault.
    # @param fabric_name [String] The fabric name associated with backup item.
    # @param container_name [String] The container name associated with backup
    # item.
    # @param protected_item_name [String] The name of the backup item used in this
    # GET operation.
    # @param recovery_point_id [String] The RecoveryPointID associated with this
    # GET operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(vault_name, resource_group_name, fabric_name, container_name, protected_item_name, recovery_point_id, custom_headers = nil)
      get_async(vault_name, resource_group_name, fabric_name, container_name, protected_item_name, recovery_point_id, custom_headers).value!
    end

    #
    # Provides the backup data for the RecoveryPointID. This is an asynchronous
    # operation. To learn the status of the operation, call the
    # GetProtectedItemOperationResult API.
    #
    # @param vault_name [String] The name of the Recovery Services vault.
    # @param resource_group_name [String] The name of the resource group associated
    # with the Recovery Services vault.
    # @param fabric_name [String] The fabric name associated with backup item.
    # @param container_name [String] The container name associated with backup
    # item.
    # @param protected_item_name [String] The name of the backup item used in this
    # GET operation.
    # @param recovery_point_id [String] The RecoveryPointID associated with this
    # GET operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(vault_name, resource_group_name, fabric_name, container_name, protected_item_name, recovery_point_id, custom_headers = nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'vault_name is nil' if vault_name.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'fabric_name is nil' if fabric_name.nil?
      fail ArgumentError, 'container_name is nil' if container_name.nil?
      fail ArgumentError, 'protected_item_name is nil' if protected_item_name.nil?
      fail ArgumentError, 'recovery_point_id is nil' if recovery_point_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'Subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/vaults/{vaultName}/backupFabrics/{fabricName}/protectionContainers/{containerName}/protectedItems/{protectedItemName}/recoveryPoints/{recoveryPointId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'vaultName' => vault_name,'resourceGroupName' => resource_group_name,'subscriptionId' => @client.subscription_id,'fabricName' => fabric_name,'containerName' => container_name,'protectedItemName' => protected_item_name,'recoveryPointId' => recovery_point_id},
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
            result.body = Azure::RecoveryServicesBackup::Mgmt::V2016_06_01::Models::RecoveryPointResource.new.from_json(parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Lists the recovery points, or backup copies, for the specified backup item.
    #
    # @param vault_name [String] The name of the Recovery Services vault.
    # @param resource_group_name [String] The name of the resource group associated
    # with the Recovery Services vault.
    # @param fabric_name [String] The fabric name associated with the backup item.
    # @param container_name [String] The container name associated with the backup
    # item.
    # @param protected_item_name [String] The name of backup item used in this GET
    # operation.
    # @param filter [String] startDate eq {yyyy-mm-dd hh:mm:ss PM} and endDate {
    # yyyy-mm-dd hh:mm:ss PM}.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<RecoveryPointResource>] operation results.
    #
    def list(vault_name, resource_group_name, fabric_name, container_name, protected_item_name, filter = nil, custom_headers = nil)
      first_page = list_as_lazy(vault_name, resource_group_name, fabric_name, container_name, protected_item_name, filter, custom_headers)
      first_page.get_all_items
    end

    #
    # Lists the recovery points, or backup copies, for the specified backup item.
    #
    # @param vault_name [String] The name of the Recovery Services vault.
    # @param resource_group_name [String] The name of the resource group associated
    # with the Recovery Services vault.
    # @param fabric_name [String] The fabric name associated with the backup item.
    # @param container_name [String] The container name associated with the backup
    # item.
    # @param protected_item_name [String] The name of backup item used in this GET
    # operation.
    # @param filter [String] startDate eq {yyyy-mm-dd hh:mm:ss PM} and endDate {
    # yyyy-mm-dd hh:mm:ss PM}.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(vault_name, resource_group_name, fabric_name, container_name, protected_item_name, filter = nil, custom_headers = nil)
      list_async(vault_name, resource_group_name, fabric_name, container_name, protected_item_name, filter, custom_headers).value!
    end

    #
    # Lists the recovery points, or backup copies, for the specified backup item.
    #
    # @param vault_name [String] The name of the Recovery Services vault.
    # @param resource_group_name [String] The name of the resource group associated
    # with the Recovery Services vault.
    # @param fabric_name [String] The fabric name associated with the backup item.
    # @param container_name [String] The container name associated with the backup
    # item.
    # @param protected_item_name [String] The name of backup item used in this GET
    # operation.
    # @param filter [String] startDate eq {yyyy-mm-dd hh:mm:ss PM} and endDate {
    # yyyy-mm-dd hh:mm:ss PM}.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(vault_name, resource_group_name, fabric_name, container_name, protected_item_name, filter = nil, custom_headers = nil)
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
      path_template = 'Subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/vaults/{vaultName}/backupFabrics/{fabricName}/protectionContainers/{containerName}/protectedItems/{protectedItemName}/recoveryPoints'

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
            result.body = Azure::RecoveryServicesBackup::Mgmt::V2016_06_01::Models::RecoveryPointResourceList.new.from_json(parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Lists the recovery points, or backup copies, for the specified backup item.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [RecoveryPointResourceList] operation results.
    #
    def list_next(next_page_link, custom_headers = nil)
      response = list_next_async(next_page_link, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists the recovery points, or backup copies, for the specified backup item.
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
    # Lists the recovery points, or backup copies, for the specified backup item.
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
            result.body = Azure::RecoveryServicesBackup::Mgmt::V2016_06_01::Models::RecoveryPointResourceList.new.from_json(parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Lists the recovery points, or backup copies, for the specified backup item.
    #
    # @param vault_name [String] The name of the Recovery Services vault.
    # @param resource_group_name [String] The name of the resource group associated
    # with the Recovery Services vault.
    # @param fabric_name [String] The fabric name associated with the backup item.
    # @param container_name [String] The container name associated with the backup
    # item.
    # @param protected_item_name [String] The name of backup item used in this GET
    # operation.
    # @param filter [String] startDate eq {yyyy-mm-dd hh:mm:ss PM} and endDate {
    # yyyy-mm-dd hh:mm:ss PM}.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [RecoveryPointResourceList] which provide lazy access to pages of the
    # response.
    #
    def list_as_lazy(vault_name, resource_group_name, fabric_name, container_name, protected_item_name, filter = nil, custom_headers = nil)
      response = list_async(vault_name, resource_group_name, fabric_name, container_name, protected_item_name, filter, custom_headers).value!
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
