# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::GraphRbac::V1_6
  #
  # The Graph RBAC Management Client
  #
  class DeletedApplications
    include MsRestAzure

    #
    # Creates and initializes a new instance of the DeletedApplications class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [GraphRbacClient] reference to the GraphRbacClient
    attr_reader :client

    #
    # Restores the deleted application in the directory.
    #
    # @param object_id [String] Application object ID.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Application] operation results.
    #
    def restore(object_id, custom_headers = nil)
      response = restore_async(object_id, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Restores the deleted application in the directory.
    #
    # @param object_id [String] Application object ID.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def restore_with_http_info(object_id, custom_headers = nil)
      restore_async(object_id, custom_headers).value!
    end

    #
    # Restores the deleted application in the directory.
    #
    # @param object_id [String] Application object ID.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def restore_async(object_id, custom_headers = nil)
      fail ArgumentError, 'object_id is nil' if object_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.tenant_id is nil' if @client.tenant_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{tenantID}/deletedApplications/{objectId}/restore'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'objectId' => object_id,'tenantID' => @client.tenant_id},
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
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::GraphRbac::V1_6::Models::Application.mapper()
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
    # Gets a list of deleted applications in the directory.
    #
    # @param filter [String] The filter to apply to the operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<Application>] operation results.
    #
    def list(filter = nil, custom_headers = nil)
      first_page = list_as_lazy(filter, custom_headers)
      first_page.get_all_items
    end

    #
    # Gets a list of deleted applications in the directory.
    #
    # @param filter [String] The filter to apply to the operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(filter = nil, custom_headers = nil)
      list_async(filter, custom_headers).value!
    end

    #
    # Gets a list of deleted applications in the directory.
    #
    # @param filter [String] The filter to apply to the operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(filter = nil, custom_headers = nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.tenant_id is nil' if @client.tenant_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{tenantID}/deletedApplications'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'tenantID' => @client.tenant_id},
          query_params: {'$filter' => filter,'api-version' => @client.api_version},
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
            result_mapper = Azure::GraphRbac::V1_6::Models::ApplicationListResult.mapper()
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
    # Hard-delete an application.
    #
    # @param application_object_id [String] Application object ID.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def hard_delete(application_object_id, custom_headers = nil)
      response = hard_delete_async(application_object_id, custom_headers).value!
      nil
    end

    #
    # Hard-delete an application.
    #
    # @param application_object_id [String] Application object ID.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def hard_delete_with_http_info(application_object_id, custom_headers = nil)
      hard_delete_async(application_object_id, custom_headers).value!
    end

    #
    # Hard-delete an application.
    #
    # @param application_object_id [String] Application object ID.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def hard_delete_async(application_object_id, custom_headers = nil)
      fail ArgumentError, 'application_object_id is nil' if application_object_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.tenant_id is nil' if @client.tenant_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{tenantID}/deletedApplications/{applicationObjectId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'applicationObjectId' => application_object_id,'tenantID' => @client.tenant_id},
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

    #
    # Gets a list of deleted applications in the directory.
    #
    # @param next_link [String] Next link for the list operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<Application>] operation results.
    #
    def list_next(next_link, custom_headers = nil)
      response = list_next_async(next_link, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets a list of deleted applications in the directory.
    #
    # @param next_link [String] Next link for the list operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_next_with_http_info(next_link, custom_headers = nil)
      list_next_async(next_link, custom_headers).value!
    end

    #
    # Gets a list of deleted applications in the directory.
    #
    # @param next_link [String] Next link for the list operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_next_async(next_link, custom_headers = nil)
      fail ArgumentError, 'next_link is nil' if next_link.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.tenant_id is nil' if @client.tenant_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{tenantID}/{nextLink}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'tenantID' => @client.tenant_id},
          skip_encoding_path_params: {'nextLink' => next_link},
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
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::GraphRbac::V1_6::Models::ApplicationListResult.mapper()
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
    # Gets a list of deleted applications in the directory.
    #
    # @param filter [String] The filter to apply to the operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ApplicationListResult] which provide lazy access to pages of the
    # response.
    #
    def list_as_lazy(filter = nil, custom_headers = nil)
      response = list_async(filter, custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_link|
          list_next_async(next_link, custom_headers)
        end
        page
      end
    end

  end
end
