# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_5_0_36
  #
  # Service Fabric REST Client APIs allows management of Service Fabric
  # clusters, applications and services.
  #
  class MeshVolume
    include MsRestAzure

    #
    # Creates and initializes a new instance of the MeshVolume class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ServiceFabricClientAPIs] reference to the ServiceFabricClientAPIs
    attr_reader :client

    #
    # Creates or updates a Volume resource.
    #
    # Creates a Volume resource with the specified name, description and
    # properties. If Volume resource with the same name exists, then it is updated
    # with the specified description and properties.
    #
    # @param volume_resource_name [String] The identity of the volume.
    # @param volume_resource_description [VolumeResourceDescription] Description
    # for creating a Volume resource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [VolumeResourceDescription] operation results.
    #
    def create_or_update(volume_resource_name, volume_resource_description, custom_headers:nil)
      response = create_or_update_async(volume_resource_name, volume_resource_description, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Creates or updates a Volume resource.
    #
    # Creates a Volume resource with the specified name, description and
    # properties. If Volume resource with the same name exists, then it is updated
    # with the specified description and properties.
    #
    # @param volume_resource_name [String] The identity of the volume.
    # @param volume_resource_description [VolumeResourceDescription] Description
    # for creating a Volume resource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_or_update_with_http_info(volume_resource_name, volume_resource_description, custom_headers:nil)
      create_or_update_async(volume_resource_name, volume_resource_description, custom_headers:custom_headers).value!
    end

    #
    # Creates or updates a Volume resource.
    #
    # Creates a Volume resource with the specified name, description and
    # properties. If Volume resource with the same name exists, then it is updated
    # with the specified description and properties.
    #
    # @param volume_resource_name [String] The identity of the volume.
    # @param volume_resource_description [VolumeResourceDescription] Description
    # for creating a Volume resource.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_or_update_async(volume_resource_name, volume_resource_description, custom_headers:nil)
      api_version = '6.4-preview'
      fail ArgumentError, 'volume_resource_name is nil' if volume_resource_name.nil?
      fail ArgumentError, 'volume_resource_description is nil' if volume_resource_description.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::ServiceFabric::V6_5_0_36::Models::VolumeResourceDescription.mapper()
      request_content = @client.serialize(request_mapper,  volume_resource_description)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'Resources/Volumes/{volumeResourceName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'volumeResourceName' => volume_resource_name},
          query_params: {'api-version' => api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 201 || status_code == 202
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ServiceFabric::V6_5_0_36::Models::VolumeResourceDescription.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ServiceFabric::V6_5_0_36::Models::VolumeResourceDescription.mapper()
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
    # Gets the Volume resource with the given name.
    #
    # Gets the information about the Volume resource with the given name. The
    # information include the description and other properties of the Volume.
    #
    # @param volume_resource_name [String] The identity of the volume.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [VolumeResourceDescription] operation results.
    #
    def get(volume_resource_name, custom_headers:nil)
      response = get_async(volume_resource_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the Volume resource with the given name.
    #
    # Gets the information about the Volume resource with the given name. The
    # information include the description and other properties of the Volume.
    #
    # @param volume_resource_name [String] The identity of the volume.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(volume_resource_name, custom_headers:nil)
      get_async(volume_resource_name, custom_headers:custom_headers).value!
    end

    #
    # Gets the Volume resource with the given name.
    #
    # Gets the information about the Volume resource with the given name. The
    # information include the description and other properties of the Volume.
    #
    # @param volume_resource_name [String] The identity of the volume.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(volume_resource_name, custom_headers:nil)
      api_version = '6.4-preview'
      fail ArgumentError, 'volume_resource_name is nil' if volume_resource_name.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'Resources/Volumes/{volumeResourceName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'volumeResourceName' => volume_resource_name},
          query_params: {'api-version' => api_version},
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
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ServiceFabric::V6_5_0_36::Models::VolumeResourceDescription.mapper()
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
    # Deletes the Volume resource.
    #
    # Deletes the Volume resource identified by the name.
    #
    # @param volume_resource_name [String] The identity of the volume.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(volume_resource_name, custom_headers:nil)
      response = delete_async(volume_resource_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # Deletes the Volume resource.
    #
    # Deletes the Volume resource identified by the name.
    #
    # @param volume_resource_name [String] The identity of the volume.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(volume_resource_name, custom_headers:nil)
      delete_async(volume_resource_name, custom_headers:custom_headers).value!
    end

    #
    # Deletes the Volume resource.
    #
    # Deletes the Volume resource identified by the name.
    #
    # @param volume_resource_name [String] The identity of the volume.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(volume_resource_name, custom_headers:nil)
      api_version = '6.4-preview'
      fail ArgumentError, 'volume_resource_name is nil' if volume_resource_name.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'Resources/Volumes/{volumeResourceName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'volumeResourceName' => volume_resource_name},
          query_params: {'api-version' => api_version},
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
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Lists all the volume resources.
    #
    # Gets the information about all volume resources in a given resource group.
    # The information include the description and other properties of the Volume.
    #
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [PagedVolumeResourceDescriptionList] operation results.
    #
    def list(custom_headers:nil)
      response = list_async(custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists all the volume resources.
    #
    # Gets the information about all volume resources in a given resource group.
    # The information include the description and other properties of the Volume.
    #
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(custom_headers:nil)
      list_async(custom_headers:custom_headers).value!
    end

    #
    # Lists all the volume resources.
    #
    # Gets the information about all volume resources in a given resource group.
    # The information include the description and other properties of the Volume.
    #
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(custom_headers:nil)
      api_version = '6.4-preview'


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'Resources/Volumes'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          query_params: {'api-version' => api_version},
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
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ServiceFabric::V6_5_0_36::Models::PagedVolumeResourceDescriptionList.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

  end
end
