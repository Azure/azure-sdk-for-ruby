# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::GraphRbac::V1_6
  #
  # The Graph RBAC Management Client
  #
  class OAuth2
    include MsRestAzure

    #
    # Creates and initializes a new instance of the OAuth2 class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [GraphRbacClient] reference to the GraphRbacClient
    attr_reader :client

    #
    # Grants OAuth2 permissions for the relevant resource Ids of an app.
    #
    # @param body [OAuth2PermissionGrant] The relevant app Service Principal Object
    # Id and the Service Principal Object Id you want to grant.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [OAuth2PermissionGrant] operation results.
    #
    def grant(body = nil, custom_headers = nil)
      response = grant_async(body, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Grants OAuth2 permissions for the relevant resource Ids of an app.
    #
    # @param body [OAuth2PermissionGrant] The relevant app Service Principal Object
    # Id and the Service Principal Object Id you want to grant.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def grant_with_http_info(body = nil, custom_headers = nil)
      grant_async(body, custom_headers).value!
    end

    #
    # Grants OAuth2 permissions for the relevant resource Ids of an app.
    #
    # @param body [OAuth2PermissionGrant] The relevant app Service Principal Object
    # Id and the Service Principal Object Id you want to grant.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def grant_async(body = nil, custom_headers = nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.tenant_id is nil' if @client.tenant_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = Azure::GraphRbac::V1_6::Models::OAuth2PermissionGrant.mapper()
      request_content = @client.serialize(request_mapper,  body)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = '{tenantID}/oauth2PermissionGrants'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'tenantID' => @client.tenant_id},
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
        unless status_code == 201
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::GraphRbac::V1_6::Models::OAuth2PermissionGrant.mapper()
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
    # Delete a OAuth2 permission grant for the relevant resource Ids of an app.
    #
    # @param object_id [String] The object ID of a permission grant.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(object_id, custom_headers = nil)
      response = delete_async(object_id, custom_headers).value!
      nil
    end

    #
    # Delete a OAuth2 permission grant for the relevant resource Ids of an app.
    #
    # @param object_id [String] The object ID of a permission grant.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(object_id, custom_headers = nil)
      delete_async(object_id, custom_headers).value!
    end

    #
    # Delete a OAuth2 permission grant for the relevant resource Ids of an app.
    #
    # @param object_id [String] The object ID of a permission grant.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(object_id, custom_headers = nil)
      fail ArgumentError, 'object_id is nil' if object_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.tenant_id is nil' if @client.tenant_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{tenantID}/oauth2PermissionGrants/{objectId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'objectId' => object_id,'tenantID' => @client.tenant_id},
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
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

  end
end