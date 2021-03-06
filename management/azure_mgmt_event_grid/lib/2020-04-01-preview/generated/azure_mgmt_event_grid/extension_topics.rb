# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2020_04_01_preview
  #
  # Azure EventGrid Management Client
  #
  class ExtensionTopics
    include MsRestAzure

    #
    # Creates and initializes a new instance of the ExtensionTopics class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [EventGridManagementClient] reference to the EventGridManagementClient
    attr_reader :client

    #
    # Get properties of an extension topic.
    #
    # Get the properties of an extension topic.
    #
    # @param scope [String] The identifier of the resource to which extension topic
    # is queried. The scope can be a subscription, or a resource group, or a top
    # level resource belonging to a resource provider namespace. For example, use
    # '/subscriptions/{subscriptionId}/' for a subscription,
    # '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}' for a
    # resource group, and
    # '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}'
    # for Azure resource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ExtensionTopic] operation results.
    #
    def get(scope, custom_headers:nil)
      response = get_async(scope, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get properties of an extension topic.
    #
    # Get the properties of an extension topic.
    #
    # @param scope [String] The identifier of the resource to which extension topic
    # is queried. The scope can be a subscription, or a resource group, or a top
    # level resource belonging to a resource provider namespace. For example, use
    # '/subscriptions/{subscriptionId}/' for a subscription,
    # '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}' for a
    # resource group, and
    # '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}'
    # for Azure resource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(scope, custom_headers:nil)
      get_async(scope, custom_headers:custom_headers).value!
    end

    #
    # Get properties of an extension topic.
    #
    # Get the properties of an extension topic.
    #
    # @param scope [String] The identifier of the resource to which extension topic
    # is queried. The scope can be a subscription, or a resource group, or a top
    # level resource belonging to a resource provider namespace. For example, use
    # '/subscriptions/{subscriptionId}/' for a subscription,
    # '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}' for a
    # resource group, and
    # '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}'
    # for Azure resource.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(scope, custom_headers:nil)
      fail ArgumentError, 'scope is nil' if scope.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{scope}/providers/Microsoft.EventGrid/extensionTopics/default'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'scope' => scope},
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
            result_mapper = Azure::EventGrid::Mgmt::V2020_04_01_preview::Models::ExtensionTopic.mapper()
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
