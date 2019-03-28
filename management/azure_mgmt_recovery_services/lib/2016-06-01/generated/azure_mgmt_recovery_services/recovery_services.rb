# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServices::Mgmt::V2016_06_01
  #
  # Recovery Services Client
  #
  class RecoveryServices
    include MsRestAzure

    #
    # Creates and initializes a new instance of the RecoveryServices class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [RecoveryServicesClient] reference to the RecoveryServicesClient
    attr_reader :client

    #
    # API to check for resource name availability.
    # A name is available if no other resource exists that has the same
    # SubscriptionId, Resource Name and Type
    # or if one or more such resources exist, each of these must be GCed and their
    # time of deletion be more than 24 Hours Ago
    #
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param location [String] Location of the resource
    # @param input [ResourceNameAvailabilityParameters] Contains information about
    # Resource type and Resource name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ResourceNameAvailabilityResponseResource] operation results.
    #
    def check_name_availability(resource_group_name, location, input, custom_headers = nil)
      response = check_name_availability_async(resource_group_name, location, input, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # API to check for resource name availability.
    # A name is available if no other resource exists that has the same
    # SubscriptionId, Resource Name and Type
    # or if one or more such resources exist, each of these must be GCed and their
    # time of deletion be more than 24 Hours Ago
    #
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param location [String] Location of the resource
    # @param input [ResourceNameAvailabilityParameters] Contains information about
    # Resource type and Resource name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def check_name_availability_with_http_info(resource_group_name, location, input, custom_headers = nil)
      check_name_availability_async(resource_group_name, location, input, custom_headers).value!
    end

    #
    # API to check for resource name availability.
    # A name is available if no other resource exists that has the same
    # SubscriptionId, Resource Name and Type
    # or if one or more such resources exist, each of these must be GCed and their
    # time of deletion be more than 24 Hours Ago
    #
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param location [String] Location of the resource
    # @param input [ResourceNameAvailabilityParameters] Contains information about
    # Resource type and Resource name
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def check_name_availability_async(resource_group_name, location, input, custom_headers = nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'location is nil' if location.nil?
      fail ArgumentError, 'input is nil' if input.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ResourceNameAvailabilityParameters.mapper()
      request_content = @client.serialize(request_mapper,  input)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/locations/{location}/checkNameAvailability'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'location' => location},
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
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ResourceNameAvailabilityResponseResource.mapper()
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
