# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  #
  # The Compute Management Client.
  #
  class VirtualMachineImages
    include Azure::ARM::Compute::Models
    include MsRestAzure

    #
    # Creates and initializes a new instance of the VirtualMachineImages class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return reference to the ComputeManagementClient
    attr_reader :client

    #
    # Gets a virtual machine image.
    #
    # @param location [String]
    # @param publisher_name [String]
    # @param offer [String]
    # @param skus [String]
    # @param version [String]
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [VirtualMachineImage] operation results.
    #
    def get(location, publisher_name, offer, skus, version, custom_headers = nil)
      response = get_async(location, publisher_name, offer, skus, version, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets a virtual machine image.
    #
    # @param location [String]
    # @param publisher_name [String]
    # @param offer [String]
    # @param skus [String]
    # @param version [String]
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(location, publisher_name, offer, skus, version, custom_headers = nil)
      get_async(location, publisher_name, offer, skus, version, custom_headers).value!
    end

    #
    # Gets a virtual machine image.
    #
    # @param location [String]
    # @param publisher_name [String]
    # @param offer [String]
    # @param skus [String]
    # @param version [String]
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(location, publisher_name, offer, skus, version, custom_headers = nil)
      fail ArgumentError, 'location is nil' if location.nil?
      fail ArgumentError, 'publisher_name is nil' if publisher_name.nil?
      fail ArgumentError, 'offer is nil' if offer.nil?
      fail ArgumentError, 'skus is nil' if skus.nil?
      fail ArgumentError, 'version is nil' if version.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '/subscriptions/{subscriptionId}/providers/Microsoft.Compute/locations/{location}/publishers/{publisherName}/artifacttypes/vmimage/offers/{offer}/skus/{skus}/versions/{version}'
      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'location' => location,'publisherName' => publisher_name,'offer' => offer,'skus' => skus,'version' => version,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {})
      }

      request_url = @base_url || @client.base_url

      request = MsRest::HttpOperationRequest.new(request_url, path_template, :get, options)
      promise = request.run_promise do |req|
        @client.credentials.sign_request(req) unless @client.credentials.nil?
      end

      promise = promise.then do |http_response|
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(request, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(request, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = VirtualMachineImage.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets a list of virtual machine images.
    #
    # @param location [String]
    # @param publisher_name [String]
    # @param offer [String]
    # @param skus [String]
    # @param filter [String] The filter to apply on the operation.
    # @param top [Integer]
    # @param orderby [String]
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array] operation results.
    #
    def list(location, publisher_name, offer, skus, filter = nil, top = nil, orderby = nil, custom_headers = nil)
      response = list_async(location, publisher_name, offer, skus, filter, top, orderby, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets a list of virtual machine images.
    #
    # @param location [String]
    # @param publisher_name [String]
    # @param offer [String]
    # @param skus [String]
    # @param filter [String] The filter to apply on the operation.
    # @param top [Integer]
    # @param orderby [String]
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(location, publisher_name, offer, skus, filter = nil, top = nil, orderby = nil, custom_headers = nil)
      list_async(location, publisher_name, offer, skus, filter, top, orderby, custom_headers).value!
    end

    #
    # Gets a list of virtual machine images.
    #
    # @param location [String]
    # @param publisher_name [String]
    # @param offer [String]
    # @param skus [String]
    # @param filter [String] The filter to apply on the operation.
    # @param top [Integer]
    # @param orderby [String]
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(location, publisher_name, offer, skus, filter = nil, top = nil, orderby = nil, custom_headers = nil)
      fail ArgumentError, 'location is nil' if location.nil?
      fail ArgumentError, 'publisher_name is nil' if publisher_name.nil?
      fail ArgumentError, 'offer is nil' if offer.nil?
      fail ArgumentError, 'skus is nil' if skus.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '/subscriptions/{subscriptionId}/providers/Microsoft.Compute/locations/{location}/publishers/{publisherName}/artifacttypes/vmimage/offers/{offer}/skus/{skus}/versions'
      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'location' => location,'publisherName' => publisher_name,'offer' => offer,'skus' => skus,'subscriptionId' => @client.subscription_id},
          query_params: {'$filter' => filter,'$top' => top,'$orderby' => orderby,'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {})
      }

      request_url = @base_url || @client.base_url

      request = MsRest::HttpOperationRequest.new(request_url, path_template, :get, options)
      promise = request.run_promise do |req|
        @client.credentials.sign_request(req) unless @client.credentials.nil?
      end

      promise = promise.then do |http_response|
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(request, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(request, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = {
              required: false,
              serialized_name: 'parsed_response',
              type: {
                name: 'Sequence',
                element: {
                    required: false,
                    serialized_name: 'VirtualMachineImageResourceElementType',
                    type: {
                      name: 'Composite',
                      class_name: 'VirtualMachineImageResource'
                    }
                }
              }
            }
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets a list of virtual machine image offers.
    #
    # @param location [String]
    # @param publisher_name [String]
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array] operation results.
    #
    def list_offers(location, publisher_name, custom_headers = nil)
      response = list_offers_async(location, publisher_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets a list of virtual machine image offers.
    #
    # @param location [String]
    # @param publisher_name [String]
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_offers_with_http_info(location, publisher_name, custom_headers = nil)
      list_offers_async(location, publisher_name, custom_headers).value!
    end

    #
    # Gets a list of virtual machine image offers.
    #
    # @param location [String]
    # @param publisher_name [String]
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_offers_async(location, publisher_name, custom_headers = nil)
      fail ArgumentError, 'location is nil' if location.nil?
      fail ArgumentError, 'publisher_name is nil' if publisher_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '/subscriptions/{subscriptionId}/providers/Microsoft.Compute/locations/{location}/publishers/{publisherName}/artifacttypes/vmimage/offers'
      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'location' => location,'publisherName' => publisher_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {})
      }

      request_url = @base_url || @client.base_url

      request = MsRest::HttpOperationRequest.new(request_url, path_template, :get, options)
      promise = request.run_promise do |req|
        @client.credentials.sign_request(req) unless @client.credentials.nil?
      end

      promise = promise.then do |http_response|
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(request, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(request, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = {
              required: false,
              serialized_name: 'parsed_response',
              type: {
                name: 'Sequence',
                element: {
                    required: false,
                    serialized_name: 'VirtualMachineImageResourceElementType',
                    type: {
                      name: 'Composite',
                      class_name: 'VirtualMachineImageResource'
                    }
                }
              }
            }
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets a list of virtual machine image publishers.
    #
    # @param location [String]
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array] operation results.
    #
    def list_publishers(location, custom_headers = nil)
      response = list_publishers_async(location, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets a list of virtual machine image publishers.
    #
    # @param location [String]
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_publishers_with_http_info(location, custom_headers = nil)
      list_publishers_async(location, custom_headers).value!
    end

    #
    # Gets a list of virtual machine image publishers.
    #
    # @param location [String]
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_publishers_async(location, custom_headers = nil)
      fail ArgumentError, 'location is nil' if location.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '/subscriptions/{subscriptionId}/providers/Microsoft.Compute/locations/{location}/publishers'
      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'location' => location,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {})
      }

      request_url = @base_url || @client.base_url

      request = MsRest::HttpOperationRequest.new(request_url, path_template, :get, options)
      promise = request.run_promise do |req|
        @client.credentials.sign_request(req) unless @client.credentials.nil?
      end

      promise = promise.then do |http_response|
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(request, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(request, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = {
              required: false,
              serialized_name: 'parsed_response',
              type: {
                name: 'Sequence',
                element: {
                    required: false,
                    serialized_name: 'VirtualMachineImageResourceElementType',
                    type: {
                      name: 'Composite',
                      class_name: 'VirtualMachineImageResource'
                    }
                }
              }
            }
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets a list of virtual machine image skus.
    #
    # @param location [String]
    # @param publisher_name [String]
    # @param offer [String]
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array] operation results.
    #
    def list_skus(location, publisher_name, offer, custom_headers = nil)
      response = list_skus_async(location, publisher_name, offer, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets a list of virtual machine image skus.
    #
    # @param location [String]
    # @param publisher_name [String]
    # @param offer [String]
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_skus_with_http_info(location, publisher_name, offer, custom_headers = nil)
      list_skus_async(location, publisher_name, offer, custom_headers).value!
    end

    #
    # Gets a list of virtual machine image skus.
    #
    # @param location [String]
    # @param publisher_name [String]
    # @param offer [String]
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_skus_async(location, publisher_name, offer, custom_headers = nil)
      fail ArgumentError, 'location is nil' if location.nil?
      fail ArgumentError, 'publisher_name is nil' if publisher_name.nil?
      fail ArgumentError, 'offer is nil' if offer.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '/subscriptions/{subscriptionId}/providers/Microsoft.Compute/locations/{location}/publishers/{publisherName}/artifacttypes/vmimage/offers/{offer}/skus'
      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'location' => location,'publisherName' => publisher_name,'offer' => offer,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {})
      }

      request_url = @base_url || @client.base_url

      request = MsRest::HttpOperationRequest.new(request_url, path_template, :get, options)
      promise = request.run_promise do |req|
        @client.credentials.sign_request(req) unless @client.credentials.nil?
      end

      promise = promise.then do |http_response|
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(request, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(request, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = {
              required: false,
              serialized_name: 'parsed_response',
              type: {
                name: 'Sequence',
                element: {
                    required: false,
                    serialized_name: 'VirtualMachineImageResourceElementType',
                    type: {
                      name: 'Composite',
                      class_name: 'VirtualMachineImageResource'
                    }
                }
              }
            }
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
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
