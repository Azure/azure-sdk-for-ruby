# Code generated by Microsoft (R) AutoRest Code Generator 0.11.0.0
# Changes may cause incorrect behavior and will be lost if the code is


module Azure::ARM::Resources
  #
  # Resources
  #
  class Resources
    #
    # Creates and initializes a new instance of the Resources class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return reference to the ResourceManagementClient
    attr_reader :client

    #
    # Move resources within or across subscriptions.
    # @param source_resource_group_name1 [String] Source resource group name.
    # @param parameters1 [ResourcesMoveInfo] move resources' parameters.
    # @param @client.api_version [String] Client Api Version.
    # @param @client.subscription_id [String] Gets subscription credentials which
    # uniquely identify Microsoft Azure subscription. The subscription ID forms
    # part of the URI for every service call.
    # @param @client.accept_language [String] Gets or sets the preferred language
    # for the response.
    # @return [Concurrent::Promise] Promise object which allows to get HTTP
    # response.
    #
    def move_resources(source_resource_group_name1, parameters1, custom_headers = nil)
      fail ArgumentError, 'source_resource_group_name1 is nil' if source_resource_group_name1.nil?
      fail ArgumentError, 'parameters1 is nil' if parameters1.nil?
      parameters1.validate unless parameters1.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      # Construct URL
      path = "/subscriptions/{subscriptionId}/resourceGroups/{sourceResourceGroupName}/moveResources"
      path['{sourceResourceGroupName}'] = ERB::Util.url_encode(source_resource_group_name1)
      path['{subscriptionId}'] = ERB::Util.url_encode(@client.subscription_id)
      url = URI.join(@client.base_url, path)
      properties = {}
      properties['api-version'] = ERB::Util.url_encode(@client.api_version.to_s) unless @client.api_version.nil?
      properties.reject!{ |key, value| value.nil? }
      url.query = properties.map{ |key, value| "#{key}=#{value}" }.compact.join('&')
      fail URI::Error unless url.to_s =~ /\A#{URI::regexp}\z/

      connection = Faraday.new(:url => url) do |faraday|
        faraday.use MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02
        faraday.use MsRestAzure::TokenRefreshMiddleware, credentials: @client.credentials
        faraday.use :cookie_jar
        faraday.adapter Faraday.default_adapter
      end
      request_headers = Hash.new

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers["accept-language"] = @client.accept_language unless @client.accept_language.nil?

      unless custom_headers.nil?
        custom_headers.each do |key, value|
          request_headers[key] = value
        end
      end

      # Serialize Request
      request_headers['Content-Type'] = 'application/json'
      if (parameters1)
        parameters1 = Azure::ARM::Resources::Models::ResourcesMoveInfo.serialize_object(parameters1)
      end
      request_content = parameters1
      request_content = JSON.generate(request_content, quirks_mode: true)

      # Send Request
      promise = Concurrent::Promise.new do
        connection.post do |request|
          request.headers = request_headers
          request.body = request_content
          @client.credentials.sign_request(request) unless @client.credentials.nil?
        end
      end

      promise = promise.then do |http_response|
        status_code = http_response.status
        response_content = http_response.body
        unless (status_code == 202)
          fail MsRest::HttpOperationException.new(http_response, http_response)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(http_response, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Get all of the resources under a subscription.
    # @param filter1 [GenericResourceFilter] The filter to apply on the operation.
    # @param top1 [Integer] Query parameters. If null is passed returns all
    # resource groups.
    # @param @client.api_version [String] Client Api Version.
    # @param @client.subscription_id [String] Gets subscription credentials which
    # uniquely identify Microsoft Azure subscription. The subscription ID forms
    # part of the URI for every service call.
    # @param @client.accept_language [String] Gets or sets the preferred language
    # for the response.
    # @return [Concurrent::Promise] Promise object which allows to get HTTP
    # response.
    #
    def list(filter1 = nil, top1 = nil, custom_headers = nil)
      filter1.validate unless filter1.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      # Construct URL
      path = "/subscriptions/{subscriptionId}/resources"
      path['{subscriptionId}'] = ERB::Util.url_encode(@client.subscription_id)
      url = URI.join(@client.base_url, path)
      properties = {}
      properties['$filter'] = ERB::Util.url_encode(filter1.to_s) unless filter1.nil?
      properties['$top'] = ERB::Util.url_encode(top1.to_s) unless top1.nil?
      properties['api-version'] = ERB::Util.url_encode(@client.api_version.to_s) unless @client.api_version.nil?
      properties.reject!{ |key, value| value.nil? }
      url.query = properties.map{ |key, value| "#{key}=#{value}" }.compact.join('&')
      fail URI::Error unless url.to_s =~ /\A#{URI::regexp}\z/

      connection = Faraday.new(:url => url) do |faraday|
        faraday.use MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02
        faraday.use MsRestAzure::TokenRefreshMiddleware, credentials: @client.credentials
        faraday.use :cookie_jar
        faraday.adapter Faraday.default_adapter
      end
      request_headers = Hash.new

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers["accept-language"] = @client.accept_language unless @client.accept_language.nil?

      unless custom_headers.nil?
        custom_headers.each do |key, value|
          request_headers[key] = value
        end
      end

      # Send Request
      promise = Concurrent::Promise.new do
        connection.get do |request|
          request.headers = request_headers
          @client.credentials.sign_request(request) unless @client.credentials.nil?
        end
      end

      promise = promise.then do |http_response|
        status_code = http_response.status
        response_content = http_response.body
        unless (status_code == 200)
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationException.new(http_response, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(http_response, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = JSON.load(response_content) unless response_content.to_s.empty?
            if (parsed_response)
              parsed_response = Azure::ARM::Resources::Models::ResourceListResult.deserialize_object(parsed_response)
            end
            result.body = parsed_response
          rescue Exception => e
            fail MsRest::DeserializationError.new("Error occured in deserializing the response", e.message, e.backtrace, response_content)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Checks whether resource exists.
    # @param resource_group_name1 [String] The name of the resource group. The
    # name is case insensitive.
    # @param resource_provider_namespace1 [String] Resource identity.
    # @param parent_resource_path1 [String] Resource identity.
    # @param resource_type1 [String] Resource identity.
    # @param resource_name1 [String] Resource identity.
    # @param api_version1 [String]
    # @param @client.subscription_id [String] Gets subscription credentials which
    # uniquely identify Microsoft Azure subscription. The subscription ID forms
    # part of the URI for every service call.
    # @param @client.accept_language [String] Gets or sets the preferred language
    # for the response.
    # @return [Concurrent::Promise] Promise object which allows to get HTTP
    # response.
    #
    def check_existence(resource_group_name1, resource_provider_namespace1, parent_resource_path1, resource_type1, resource_name1, api_version1, custom_headers = nil)
      fail ArgumentError, 'resource_group_name1 is nil' if resource_group_name1.nil?
      fail ArgumentError, 'resource_provider_namespace1 is nil' if resource_provider_namespace1.nil?
      fail ArgumentError, 'parent_resource_path1 is nil' if parent_resource_path1.nil?
      fail ArgumentError, 'resource_type1 is nil' if resource_type1.nil?
      fail ArgumentError, 'resource_name1 is nil' if resource_name1.nil?
      fail ArgumentError, 'api_version1 is nil' if api_version1.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      # Construct URL
      path = "/subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{parentResourcePath}/{resourceType}/{resourceName}"
      path['{resourceGroupName}'] = ERB::Util.url_encode(resource_group_name1)
      path['{resourceProviderNamespace}'] = ERB::Util.url_encode(resource_provider_namespace1)
      path['{parentResourcePath}'] = parent_resource_path1
      path['{resourceType}'] = resource_type1
      path['{resourceName}'] = ERB::Util.url_encode(resource_name1)
      path['{subscriptionId}'] = ERB::Util.url_encode(@client.subscription_id)
      url = URI.join(@client.base_url, path)
      properties = {}
      properties['api-version'] = ERB::Util.url_encode(api_version1.to_s) unless api_version1.nil?
      properties.reject!{ |key, value| value.nil? }
      url.query = properties.map{ |key, value| "#{key}=#{value}" }.compact.join('&')
      fail URI::Error unless url.to_s =~ /\A#{URI::regexp}\z/

      connection = Faraday.new(:url => url) do |faraday|
        faraday.use MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02
        faraday.use MsRestAzure::TokenRefreshMiddleware, credentials: @client.credentials
        faraday.use :cookie_jar
        faraday.adapter Faraday.default_adapter
      end
      request_headers = Hash.new

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers["accept-language"] = @client.accept_language unless @client.accept_language.nil?

      unless custom_headers.nil?
        custom_headers.each do |key, value|
          request_headers[key] = value
        end
      end

      # Send Request
      promise = Concurrent::Promise.new do
        connection.head do |request|
          request.headers = request_headers
          @client.credentials.sign_request(request) unless @client.credentials.nil?
        end
      end

      promise = promise.then do |http_response|
        status_code = http_response.status
        response_content = http_response.body
        unless (status_code == 204 || status_code == 404)
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationException.new(http_response, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(http_response, http_response)
        result.body = (status_code == 204)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Delete resource and all of its resources.
    # @param resource_group_name1 [String] The name of the resource group. The
    # name is case insensitive.
    # @param resource_provider_namespace1 [String] Resource identity.
    # @param parent_resource_path1 [String] Resource identity.
    # @param resource_type1 [String] Resource identity.
    # @param resource_name1 [String] Resource identity.
    # @param api_version1 [String]
    # @param @client.subscription_id [String] Gets subscription credentials which
    # uniquely identify Microsoft Azure subscription. The subscription ID forms
    # part of the URI for every service call.
    # @param @client.accept_language [String] Gets or sets the preferred language
    # for the response.
    # @return [Concurrent::Promise] Promise object which allows to get HTTP
    # response.
    #
    def delete(resource_group_name1, resource_provider_namespace1, parent_resource_path1, resource_type1, resource_name1, api_version1, custom_headers = nil)
      fail ArgumentError, 'resource_group_name1 is nil' if resource_group_name1.nil?
      fail ArgumentError, 'resource_provider_namespace1 is nil' if resource_provider_namespace1.nil?
      fail ArgumentError, 'parent_resource_path1 is nil' if parent_resource_path1.nil?
      fail ArgumentError, 'resource_type1 is nil' if resource_type1.nil?
      fail ArgumentError, 'resource_name1 is nil' if resource_name1.nil?
      fail ArgumentError, 'api_version1 is nil' if api_version1.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      # Construct URL
      path = "/subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{parentResourcePath}/{resourceType}/{resourceName}"
      path['{resourceGroupName}'] = ERB::Util.url_encode(resource_group_name1)
      path['{resourceProviderNamespace}'] = ERB::Util.url_encode(resource_provider_namespace1)
      path['{parentResourcePath}'] = parent_resource_path1
      path['{resourceType}'] = resource_type1
      path['{resourceName}'] = ERB::Util.url_encode(resource_name1)
      path['{subscriptionId}'] = ERB::Util.url_encode(@client.subscription_id)
      url = URI.join(@client.base_url, path)
      properties = {}
      properties['api-version'] = ERB::Util.url_encode(api_version1.to_s) unless api_version1.nil?
      properties.reject!{ |key, value| value.nil? }
      url.query = properties.map{ |key, value| "#{key}=#{value}" }.compact.join('&')
      fail URI::Error unless url.to_s =~ /\A#{URI::regexp}\z/

      connection = Faraday.new(:url => url) do |faraday|
        faraday.use MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02
        faraday.use MsRestAzure::TokenRefreshMiddleware, credentials: @client.credentials
        faraday.use :cookie_jar
        faraday.adapter Faraday.default_adapter
      end
      request_headers = Hash.new

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers["accept-language"] = @client.accept_language unless @client.accept_language.nil?

      unless custom_headers.nil?
        custom_headers.each do |key, value|
          request_headers[key] = value
        end
      end

      # Send Request
      promise = Concurrent::Promise.new do
        connection.delete do |request|
          request.headers = request_headers
          @client.credentials.sign_request(request) unless @client.credentials.nil?
        end
      end

      promise = promise.then do |http_response|
        status_code = http_response.status
        response_content = http_response.body
        unless (status_code == 200 || status_code == 204 || status_code == 202)
          fail MsRest::HttpOperationException.new(http_response, http_response)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(http_response, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Create a resource.
    # @param resource_group_name1 [String] The name of the resource group. The
    # name is case insensitive.
    # @param resource_provider_namespace1 [String] Resource identity.
    # @param parent_resource_path1 [String] Resource identity.
    # @param resource_type1 [String] Resource identity.
    # @param resource_name1 [String] Resource identity.
    # @param api_version1 [String]
    # @param parameters1 [GenericResource] Create or update resource parameters.
    # @param @client.subscription_id [String] Gets subscription credentials which
    # uniquely identify Microsoft Azure subscription. The subscription ID forms
    # part of the URI for every service call.
    # @param @client.accept_language [String] Gets or sets the preferred language
    # for the response.
    # @return [TODO: add type] TODO: add text
    #
    def create_or_update(resource_group_name1, resource_provider_namespace1, parent_resource_path1, resource_type1, resource_name1, api_version1, parameters1, custom_headers = nil)
      # Send request
      response = begin_create_or_update(resource_group_name1, resource_provider_namespace1, parent_resource_path1, resource_type1, resource_name1, api_version1, parameters1, custom_headers = nil).value!

      # Defining polling method.
      get_method = lambda { self.get(resource_group_name1, resource_provider_namespace1, parent_resource_path1, resource_type1, resource_name1, api_version1, custom_headers = nil) }

      # Defining deserialization method.
      deserialize_method = lambda do |parsed_response|
        if (parsed_response)
          parsed_response = Azure::ARM::Resources::Models::GenericResource.deserialize_object(parsed_response)
        end
      end

      # Waiting for response.
      return @client.get_put_operation_result(response, get_method, nil, deserialize_method)
    end

    #
    # Create a resource.
    # @param resource_group_name1 [String] The name of the resource group. The
    # name is case insensitive.
    # @param resource_provider_namespace1 [String] Resource identity.
    # @param parent_resource_path1 [String] Resource identity.
    # @param resource_type1 [String] Resource identity.
    # @param resource_name1 [String] Resource identity.
    # @param api_version1 [String]
    # @param parameters1 [GenericResource] Create or update resource parameters.
    # @param @client.subscription_id [String] Gets subscription credentials which
    # uniquely identify Microsoft Azure subscription. The subscription ID forms
    # part of the URI for every service call.
    # @param @client.accept_language [String] Gets or sets the preferred language
    # for the response.
    # @return [Concurrent::Promise] Promise object which allows to get HTTP
    # response.
    #
    def begin_create_or_update(resource_group_name1, resource_provider_namespace1, parent_resource_path1, resource_type1, resource_name1, api_version1, parameters1, custom_headers = nil)
      fail ArgumentError, 'resource_group_name1 is nil' if resource_group_name1.nil?
      fail ArgumentError, 'resource_provider_namespace1 is nil' if resource_provider_namespace1.nil?
      fail ArgumentError, 'parent_resource_path1 is nil' if parent_resource_path1.nil?
      fail ArgumentError, 'resource_type1 is nil' if resource_type1.nil?
      fail ArgumentError, 'resource_name1 is nil' if resource_name1.nil?
      fail ArgumentError, 'api_version1 is nil' if api_version1.nil?
      fail ArgumentError, 'parameters1 is nil' if parameters1.nil?
      parameters1.validate unless parameters1.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      # Construct URL
      path = "/subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{parentResourcePath}/{resourceType}/{resourceName}"
      path['{resourceGroupName}'] = ERB::Util.url_encode(resource_group_name1)
      path['{resourceProviderNamespace}'] = ERB::Util.url_encode(resource_provider_namespace1)
      path['{parentResourcePath}'] = parent_resource_path1
      path['{resourceType}'] = resource_type1
      path['{resourceName}'] = ERB::Util.url_encode(resource_name1)
      path['{subscriptionId}'] = ERB::Util.url_encode(@client.subscription_id)
      url = URI.join(@client.base_url, path)
      properties = {}
      properties['api-version'] = ERB::Util.url_encode(api_version1.to_s) unless api_version1.nil?
      properties.reject!{ |key, value| value.nil? }
      url.query = properties.map{ |key, value| "#{key}=#{value}" }.compact.join('&')
      fail URI::Error unless url.to_s =~ /\A#{URI::regexp}\z/

      connection = Faraday.new(:url => url) do |faraday|
        faraday.use MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02
        faraday.use MsRestAzure::TokenRefreshMiddleware, credentials: @client.credentials
        faraday.use :cookie_jar
        faraday.adapter Faraday.default_adapter
      end
      request_headers = Hash.new

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers["accept-language"] = @client.accept_language unless @client.accept_language.nil?

      unless custom_headers.nil?
        custom_headers.each do |key, value|
          request_headers[key] = value
        end
      end

      # Serialize Request
      request_headers['Content-Type'] = 'application/json'
      if (parameters1)
        parameters1 = Azure::ARM::Resources::Models::GenericResource.serialize_object(parameters1)
      end
      request_content = parameters1
      request_content = JSON.generate(request_content, quirks_mode: true)

      # Send Request
      promise = Concurrent::Promise.new do
        connection.put do |request|
          request.headers = request_headers
          request.body = request_content
          @client.credentials.sign_request(request) unless @client.credentials.nil?
        end
      end

      promise = promise.then do |http_response|
        status_code = http_response.status
        response_content = http_response.body
        unless (status_code == 201 || status_code == 202 || status_code == 200)
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationException.new(http_response, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(http_response, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = JSON.load(response_content) unless response_content.to_s.empty?
            if (parsed_response)
              parsed_response = Azure::ARM::Resources::Models::GenericResource.deserialize_object(parsed_response)
            end
            result.body = parsed_response
          rescue Exception => e
            fail MsRest::DeserializationError.new("Error occured in deserializing the response", e.message, e.backtrace, response_content)
          end
        end
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = JSON.load(response_content) unless response_content.to_s.empty?
            if (parsed_response)
              parsed_response = Azure::ARM::Resources::Models::GenericResource.deserialize_object(parsed_response)
            end
            result.body = parsed_response
          rescue Exception => e
            fail MsRest::DeserializationError.new("Error occured in deserializing the response", e.message, e.backtrace, response_content)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Returns a resource belonging to a resource group.
    # @param resource_group_name1 [String] The name of the resource group. The
    # name is case insensitive.
    # @param resource_provider_namespace1 [String] Resource identity.
    # @param parent_resource_path1 [String] Resource identity.
    # @param resource_type1 [String] Resource identity.
    # @param resource_name1 [String] Resource identity.
    # @param api_version1 [String]
    # @param @client.subscription_id [String] Gets subscription credentials which
    # uniquely identify Microsoft Azure subscription. The subscription ID forms
    # part of the URI for every service call.
    # @param @client.accept_language [String] Gets or sets the preferred language
    # for the response.
    # @return [Concurrent::Promise] Promise object which allows to get HTTP
    # response.
    #
    def get(resource_group_name1, resource_provider_namespace1, parent_resource_path1, resource_type1, resource_name1, api_version1, custom_headers = nil)
      fail ArgumentError, 'resource_group_name1 is nil' if resource_group_name1.nil?
      fail ArgumentError, 'resource_provider_namespace1 is nil' if resource_provider_namespace1.nil?
      fail ArgumentError, 'parent_resource_path1 is nil' if parent_resource_path1.nil?
      fail ArgumentError, 'resource_type1 is nil' if resource_type1.nil?
      fail ArgumentError, 'resource_name1 is nil' if resource_name1.nil?
      fail ArgumentError, 'api_version1 is nil' if api_version1.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      # Construct URL
      path = "/subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{parentResourcePath}/{resourceType}/{resourceName}"
      path['{resourceGroupName}'] = ERB::Util.url_encode(resource_group_name1)
      path['{resourceProviderNamespace}'] = ERB::Util.url_encode(resource_provider_namespace1)
      path['{parentResourcePath}'] = parent_resource_path1
      path['{resourceType}'] = resource_type1
      path['{resourceName}'] = ERB::Util.url_encode(resource_name1)
      path['{subscriptionId}'] = ERB::Util.url_encode(@client.subscription_id)
      url = URI.join(@client.base_url, path)
      properties = {}
      properties['api-version'] = ERB::Util.url_encode(api_version1.to_s) unless api_version1.nil?
      properties.reject!{ |key, value| value.nil? }
      url.query = properties.map{ |key, value| "#{key}=#{value}" }.compact.join('&')
      fail URI::Error unless url.to_s =~ /\A#{URI::regexp}\z/

      connection = Faraday.new(:url => url) do |faraday|
        faraday.use MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02
        faraday.use MsRestAzure::TokenRefreshMiddleware, credentials: @client.credentials
        faraday.use :cookie_jar
        faraday.adapter Faraday.default_adapter
      end
      request_headers = Hash.new

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers["accept-language"] = @client.accept_language unless @client.accept_language.nil?

      unless custom_headers.nil?
        custom_headers.each do |key, value|
          request_headers[key] = value
        end
      end

      # Send Request
      promise = Concurrent::Promise.new do
        connection.get do |request|
          request.headers = request_headers
          @client.credentials.sign_request(request) unless @client.credentials.nil?
        end
      end

      promise = promise.then do |http_response|
        status_code = http_response.status
        response_content = http_response.body
        unless (status_code == 200 || status_code == 204)
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationException.new(http_response, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(http_response, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = JSON.load(response_content) unless response_content.to_s.empty?
            if (parsed_response)
              parsed_response = Azure::ARM::Resources::Models::GenericResource.deserialize_object(parsed_response)
            end
            result.body = parsed_response
          rescue Exception => e
            fail MsRest::DeserializationError.new("Error occured in deserializing the response", e.message, e.backtrace, response_content)
          end
        end
        # Deserialize Response
        if status_code == 204
          begin
            parsed_response = JSON.load(response_content) unless response_content.to_s.empty?
            if (parsed_response)
              parsed_response = Azure::ARM::Resources::Models::GenericResource.deserialize_object(parsed_response)
            end
            result.body = parsed_response
          rescue Exception => e
            fail MsRest::DeserializationError.new("Error occured in deserializing the response", e.message, e.backtrace, response_content)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Get all of the resources under a subscription.
    # @param next_page_link1 [String] NextLink from the previous successful call
    # to List operation.
    # @param @client.accept_language [String] Gets or sets the preferred language
    # for the response.
    # @return [Concurrent::Promise] Promise object which allows to get HTTP
    # response.
    #
    def list_next(next_page_link1, custom_headers = nil)
      fail ArgumentError, 'next_page_link1 is nil' if next_page_link1.nil?
      # Construct URL
      path = "{nextLink}"
      path['{nextLink}'] = next_page_link1
      url = URI.parse(path)
      properties = {}
      properties.reject!{ |key, value| value.nil? }
      url.query = properties.map{ |key, value| "#{key}=#{value}" }.compact.join('&')
      fail URI::Error unless url.to_s =~ /\A#{URI::regexp}\z/

      connection = Faraday.new(:url => url) do |faraday|
        faraday.use MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02
        faraday.use MsRestAzure::TokenRefreshMiddleware, credentials: @client.credentials
        faraday.use :cookie_jar
        faraday.adapter Faraday.default_adapter
      end
      request_headers = Hash.new

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers["accept-language"] = @client.accept_language unless @client.accept_language.nil?

      unless custom_headers.nil?
        custom_headers.each do |key, value|
          request_headers[key] = value
        end
      end

      # Send Request
      promise = Concurrent::Promise.new do
        connection.get do |request|
          request.headers = request_headers
          @client.credentials.sign_request(request) unless @client.credentials.nil?
        end
      end

      promise = promise.then do |http_response|
        status_code = http_response.status
        response_content = http_response.body
        unless (status_code == 200)
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationException.new(http_response, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(http_response, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = JSON.load(response_content) unless response_content.to_s.empty?
            if (parsed_response)
              parsed_response = Azure::ARM::Resources::Models::ResourceListResult.deserialize_object(parsed_response)
            end
            result.body = parsed_response
          rescue Exception => e
            fail MsRest::DeserializationError.new("Error occured in deserializing the response", e.message, e.backtrace, response_content)
          end
        end

        result
      end

      promise.execute
    end

  end
end
