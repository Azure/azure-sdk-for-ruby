# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

module MsRestAzure
  #
  # Class which represents a point of access to the REST API.
  #
  class AzureServiceClient < MsRest::ServiceClient

    # @return [Integer] execution interval for long running operations.
    attr_accessor :long_running_operation_retry_timeout

    # @return [String] api version of the Azure in string format.
    attr_accessor :api_version

    def initialize(credentials, options = nil)
      super(credentials, options)
      # This is the current default for Azure services, and content-type
      # and accept supported by Autorest
      @request_headers =  {
          'Content-Type' => 'application/json;charset=utf-8',
          'Accept' => 'application/json'
      }
      add_user_agent_information("ms_rest_azure/#{MsRestAzure::VERSION}")
      add_user_agent_information("Azure-SDK-For-Ruby")
    end

    #
    # Retrieves the result of 'POST','DELETE','PUT' or 'PATCH' operation. Performs polling of required.
    # @param azure_response [MsRestAzure::AzureOperationResponse] response from Azure service.
    # @param custom_deserialization_block [Proc] custom logic for response deserialization.
    # @param final_state_via [MsRestAzure::FinalStateVia] Final State via value
    #
    # @return [MsRest::HttpOperationResponse] the response.
    #
    def get_long_running_operation_result(azure_response, custom_deserialization_block, final_state_via = FinalStateVia::DEFAULT)
      check_for_status_code_failure(azure_response)

      http_method = azure_response.request.method

      polling_state = PollingState.new(azure_response, @long_running_operation_retry_timeout)
      request = azure_response.request

      if !AsyncOperationStatus.is_terminal_status(polling_state.status)
        task = Concurrent::TimerTask.new do
          begin
            if !polling_state.azure_async_operation_header_link.nil?
              update_state_from_azure_async_operation_header(polling_state.get_request(headers: request.headers, base_uri: request.base_uri, user_agent_extended: user_agent_extended), polling_state)
            elsif !polling_state.location_header_link.nil?
              update_state_from_location_header(polling_state.get_request(headers: request.headers, base_uri: request.base_uri, user_agent_extended: user_agent_extended), polling_state, custom_deserialization_block, final_state_via)
            elsif http_method === :put
              get_request = MsRest::HttpOperationRequest.new(request.base_uri, request.build_path.to_s, :get, {query_params: request.query_params, headers: request.headers, user_agent_extended: user_agent_extended})
              update_state_from_get_resource_operation(get_request, polling_state, custom_deserialization_block)
            else
              task.shutdown
              if final_state_via == FinalStateVia::LOCATION
                if !polling_state.response.body.to_s.empty?
                  body = JSON.load(polling_state.response.body)
                  polling_state.resource = custom_deserialization_block.call(body)
                else
                  fail AzureOperationError, 'Location header is missing from long running operation'
                end
              else
                fail AzureOperationError, 'Location header is missing from long running operation'
              end
            end

            if AsyncOperationStatus.is_terminal_status(polling_state.status)
              task.shutdown
            end
          rescue Exception => e
            task.shutdown
            e
          end
        end

        polling_delay = polling_state.get_delay
        polling_delay = 0.1 if polling_delay.nil? || polling_delay == 0

        task.execution_interval = polling_delay
        task.execute
        task.wait_for_termination

        polling_error = task.value
        fail polling_error if polling_error.is_a?(Exception)
      end

      if AsyncOperationStatus.is_successful_status(polling_state.status)
        # Process long-running PUT/PATCH
        if (http_method === :put || http_method === :patch) && polling_state.resource.nil?
          get_request = MsRest::HttpOperationRequest.new(request.base_uri, request.build_path.to_s, :get, {query_params: request.query_params, headers: request.headers})
          update_state_from_get_resource_operation(get_request, polling_state, custom_deserialization_block)
        end

        if final_state_via == FinalStateVia::LOCATION
          if((http_method === :post || http_method === :delete) && !polling_state.location_header_link.nil?)
            update_state_from_location_header(polling_state.get_request(headers: request.headers, base_uri: request.base_uri, user_agent_extended: user_agent_extended), polling_state, custom_deserialization_block, final_state_via)
          end
        end

        # Process long-running POST/DELETE operation with schema defined on success status codes
        if (http_method === :post || http_method === :delete) && custom_deserialization_block && polling_state.response
          unless polling_state.response.body.to_s.empty?
            body = JSON.load(polling_state.response.body)
            polling_state.resource = custom_deserialization_block.call(body)
          end
        end
      end

      if AsyncOperationStatus.is_failed_status(polling_state.status)
        fail polling_state.get_operation_error
      end

      polling_state.get_operation_response
    end

    #
    # Verifies for unexpected polling status code
    # @param azure_response [MsRestAzure::AzureOperationResponse] response from Azure service.
    #
    def check_for_status_code_failure(azure_response)
      fail MsRest::ValidationError, 'Azure response cannot be nil' if azure_response.nil?
      fail MsRest::ValidationError, 'Azure response cannot have empty response object' if azure_response.response.nil?
      fail MsRest::ValidationError, 'Azure response cannot have empty request object' if azure_response.request.nil?

      status_code = azure_response.response.status
      http_method = azure_response.request.method

      fail AzureOperationError, "Unexpected polling status code from long running operation #{status_code}" unless status_code === 200 || status_code === 202 ||
          (status_code === 201 && http_method === :put) ||
          (status_code === 204 && (http_method === :delete || http_method === :post))
    end

    #
    # Updates polling state based on location header for PUT HTTP requests.
    # @param request [MsRest::HttpOperationRequest] The url retrieve data from.
    # @param polling_state [MsRestAzure::PollingState] polling state to update.
    # @param custom_deserialization_block [Proc] custom deserialization method for parsing response.
    #
    def update_state_from_get_resource_operation(request, polling_state, custom_deserialization_block)
      result = get_async_with_custom_deserialization(request, custom_deserialization_block)

      fail AzureOperationError, 'The response from long running operation does not contain a body' if result.response.body.nil? || result.response.body.empty?

      # On non flattened resource, we should find provisioning_state inside 'properties'
      if result.body.respond_to?(:properties) && result.body.properties.respond_to?(:provisioning_state) && !result.body.properties.provisioning_state.nil?
        polling_state.status = result.body.properties.provisioning_state
      # On flattened resource, we should find provisioning_state at the top level
      elsif result.body.respond_to?(:provisioning_state) && !result.body.provisioning_state.nil?
        polling_state.status = result.body.provisioning_state
      else
        polling_state.status = AsyncOperationStatus::SUCCESS_STATUS
      end

      error_data = CloudErrorData.new
      error_data.code = polling_state.status
      error_data.message = "Long running operation failed with status #{polling_state.status}"

      polling_state.error_data = error_data
      polling_state.update_response(result.response)
      polling_state.request = result.request
      polling_state.resource = result.body
    end

    #
    # Updates polling state based on location header for HTTP requests.
    # @param request [MsRest::HttpOperationRequest] The url retrieve data from.
    # @param polling_state [MsRestAzure::PollingState] polling state to update.
    # @param custom_deserialization_block [Proc] custom deserialization method for parsing response.
    # @param final_state_via [MsRestAzure::FinalStateVia] Final State via value
    #
    def update_state_from_location_header(request, polling_state, custom_deserialization_block, final_state_via = FinalStateVia::DEFAULT)
      result = get_async_with_custom_deserialization(request, custom_deserialization_block)

      polling_state.update_response(result.response)
      polling_state.request = result.request
      status_code = result.response.status
      http_method = request.method

      if status_code === 202
        polling_state.status = AsyncOperationStatus::IN_PROGRESS_STATUS
      elsif status_code === 200 || (status_code === 201 && http_method === :put) ||
          (status_code === 204 && (http_method === :delete || http_method === :post || http_method === :get))
        polling_state.status = AsyncOperationStatus::SUCCESS_STATUS

        error_data = CloudErrorData.new
        error_data.code = polling_state.status
        error_data.message = "Long running operation failed with status #{polling_state.status}"

        polling_state.error_data = error_data
        polling_state.resource = result.body
      elsif final_state_via == FinalStateVia::LOCATION && status_code === 404 && http_method === :delete && !polling_state.azure_async_operation_header_link.nil? && !polling_state.location_header_link.nil?
        polling_state.status = AsyncOperationStatus::SUCCESS_STATUS
      else
        fail AzureOperationError, "The response from long running operation does not have a valid status code. Method: #{http_method}, Status Code: #{status_code}"
      end
    end

    #
    # Updates polling state from Azure async operation header.
    # @param polling_state [MsRestAzure::PollingState] polling state.
    #
    def update_state_from_azure_async_operation_header(request, polling_state)
      result = get_async_with_async_operation_deserialization(request)

      fail AzureOperationError, 'The response from long running operation does not contain a body' if result.body.nil? || result.body.status.nil?

      polling_state.status = result.body.status
      polling_state.error_data = result.body.error
      polling_state.response = result.response
      polling_state.request = result.request
      polling_state.resource = nil

      polling_state
    end

    #
    # Retrieves data by given URL.
    # @param request [MsRest::HttpOperationRequest] the URL.
    # @param custom_deserialization_block [Proc] function to perform deserialization of the HTTP response.
    #
    # @return [MsRest::HttpOperationResponse] the response.
    #
    def get_async_with_custom_deserialization(request, custom_deserialization_block)
      result = get_async_common(request)

      if !result.body.nil? && !custom_deserialization_block.nil?
        begin
          result.body = custom_deserialization_block.call(result.body)
        rescue Exception => e
          fail MsRest::DeserializationError.new("Error occured in deserializing the response", e.message, e.backtrace, http_response.body)
        end
      end

      result
    end

    #
    # Retrieves data by given URL.
    # @param request [MsRest::HttpOperationRequest] the URL.
    #
    # @return [MsRest::HttpOperationResponse] the response.
    #
    def get_async_with_async_operation_deserialization(request)
      result = get_async_common(request)

      result.body = AsyncOperationStatus.deserialize_object(result.body)

      result
    end

    #
    # Retrieves data by given URL.
    # @param request [MsRest::HttpOperationRequest] the URL.
    #
    # @return [MsRest::HttpOperationResponse] the response.
    #
    def get_async_common(request)
      fail ValidationError, 'Request cannot be nil' if request.nil?

      request.middlewares = [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]]
      request.headers.merge!({'x-ms-client-request-id' => SecureRandom.uuid}) unless request.headers.key?('x-ms-client-request-id')
      request.headers.merge!({'Content-Type' => 'application/json'}) unless request.headers.key?('Content-Type')

      # Send Request
      http_response = request.run_promise do |req|
        @credentials.sign_request(req) unless @credentials.nil?
      end.execute.value!

      status_code = http_response.status

      if status_code != 200 && status_code != 201 && status_code != 202 && status_code != 204
        json_error_data = JSON.load(http_response.body)
        error_data = CloudErrorData.deserialize_object(json_error_data)

        fail AzureOperationError.new request, http_response, error_data, "Long running operation failed with status #{status_code}"
      end

      result = MsRest::HttpOperationResponse.new(request, http_response, http_response.body)

      begin
        result.body = JSON.load(http_response.body) unless http_response.body.to_s.empty?
      rescue Exception => e
        fail MsRest::DeserializationError.new("Error occured in deserializing the response", e.message, e.backtrace, result)
      end

      result
    end

    private
      #
      # Retrieves a new instance of the AzureOperationResponse class.
      # @param [MsRest::HttpOperationRequest] request the HTTP request object.
      # @param [Faraday::Response] response the HTTP response object.
      # @param [String] body the HTTP response body.
      # @return [MsRestAzure::AzureOperationResponse] the operation response.
      #
      def create_response(request, http_response, body = nil)
        AzureOperationResponse.new(request, http_response, body)
      end
  end

end
