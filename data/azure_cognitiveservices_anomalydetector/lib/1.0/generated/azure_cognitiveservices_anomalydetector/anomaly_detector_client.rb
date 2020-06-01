# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::AnomalyDetector::V1_0
  #
  # A service client - single point of access to the REST API.
  #
  class AnomalyDetectorClient < MsRestAzure::AzureServiceClient
    include MsRestAzure
    include MsRestAzure::Serialization

    # @return [String] the base URI of the service.
    attr_reader :base_url

    # @return Credentials needed for the client to connect to Azure.
    attr_reader :credentials1

    # @return [String] Supported Cognitive Services endpoints (protocol and
    # hostname, for example: https://westus2.api.cognitive.microsoft.com).
    attr_accessor :endpoint

    # @return Subscription credentials which uniquely identify client
    # subscription.
    attr_accessor :credentials

    # @return [String] The preferred language for the response.
    attr_accessor :accept_language

    # @return [Integer] The retry timeout in seconds for Long Running
    # Operations. Default value is 30.
    attr_accessor :long_running_operation_retry_timeout

    # @return [Boolean] Whether a unique x-ms-client-request-id should be
    # generated. When set to true a unique x-ms-client-request-id value is
    # generated and included in each request. Default is true.
    attr_accessor :generate_client_request_id

    #
    # Creates initializes a new instance of the AnomalyDetectorClient class.
    # @param credentials [MsRest::ServiceClientCredentials] credentials to authorize HTTP requests made by the service client.
    # @param options [Array] filters to be applied to the HTTP requests.
    #
    def initialize(credentials = nil, options = nil)
      super(credentials, options)
      @base_url = '{Endpoint}/anomalydetector/v1.0'

      fail ArgumentError, 'invalid type of credentials input parameter' unless credentials.is_a?(MsRest::ServiceClientCredentials) unless credentials.nil?
      @credentials = credentials

      @accept_language = 'en-US'
      @long_running_operation_retry_timeout = 30
      @generate_client_request_id = true
      add_telemetry
    end

    #
    # Makes a request and returns the body of the response.
    # @param method [Symbol] with any of the following values :get, :put, :post, :patch, :delete.
    # @param path [String] the path, relative to {base_url}.
    # @param options [Hash{String=>String}] specifying any request options like :body.
    # @return [Hash{String=>String}] containing the body of the response.
    # Example:
    #
    #  request_content = "{'location':'westus','tags':{'tag1':'val1','tag2':'val2'}}"
    #  path = "/path"
    #  options = {
    #    body: request_content,
    #    query_params: {'api-version' => '2016-02-01'}
    #  }
    #  result = @client.make_request(:put, path, options)
    #
    def make_request(method, path, options = {})
      result = make_request_with_http_info(method, path, options)
      result.body unless result.nil?
    end

    #
    # Makes a request and returns the operation response.
    # @param method [Symbol] with any of the following values :get, :put, :post, :patch, :delete.
    # @param path [String] the path, relative to {base_url}.
    # @param options [Hash{String=>String}] specifying any request options like :body.
    # @return [MsRestAzure::AzureOperationResponse] Operation response containing the request, response and status.
    #
    def make_request_with_http_info(method, path, options = {})
      result = make_request_async(method, path, options).value!
      result.body = result.response.body.to_s.empty? ? nil : JSON.load(result.response.body)
      result
    end

    #
    # Makes a request asynchronously.
    # @param method [Symbol] with any of the following values :get, :put, :post, :patch, :delete.
    # @param path [String] the path, relative to {base_url}.
    # @param options [Hash{String=>String}] specifying any request options like :body.
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def make_request_async(method, path, options = {})
      fail ArgumentError, 'method is nil' if method.nil?
      fail ArgumentError, 'path is nil' if path.nil?

      request_url = options[:base_url] || @base_url
      if(!options[:headers].nil? && !options[:headers]['Content-Type'].nil?)
        @request_headers['Content-Type'] = options[:headers]['Content-Type']
      end

      request_headers = @request_headers
      request_headers.merge!({'accept-language' => @accept_language}) unless @accept_language.nil?
      options.merge!({headers: request_headers.merge(options[:headers] || {})})
      options.merge!({credentials: @credentials}) unless @credentials.nil?

      super(request_url, method, path, options)
    end

    #
    # Detect anomalies for the entire series in batch.
    #
    # This operation generates a model using an entire series, each point is
    # detected with the same model. With this method, points before and after a
    # certain point are used to determine whether it is an anomaly. The entire
    # detection can give user an overall status of the time series.
    #
    # @param body [Request] Time series points and period if needed. Advanced model
    # parameters can also be set in the request.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [EntireDetectResponse] operation results.
    #
    def entire_detect(body, custom_headers:nil)
      response = entire_detect_async(body, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Detect anomalies for the entire series in batch.
    #
    # This operation generates a model using an entire series, each point is
    # detected with the same model. With this method, points before and after a
    # certain point are used to determine whether it is an anomaly. The entire
    # detection can give user an overall status of the time series.
    #
    # @param body [Request] Time series points and period if needed. Advanced model
    # parameters can also be set in the request.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def entire_detect_with_http_info(body, custom_headers:nil)
      entire_detect_async(body, custom_headers:custom_headers).value!
    end

    #
    # Detect anomalies for the entire series in batch.
    #
    # This operation generates a model using an entire series, each point is
    # detected with the same model. With this method, points before and after a
    # certain point are used to determine whether it is an anomaly. The entire
    # detection can give user an overall status of the time series.
    #
    # @param body [Request] Time series points and period if needed. Advanced model
    # parameters can also be set in the request.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def entire_detect_async(body, custom_headers:nil)
      fail ArgumentError, 'endpoint is nil' if endpoint.nil?
      fail ArgumentError, 'body is nil' if body.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = accept_language unless accept_language.nil?

      # Serialize Request
      request_mapper = Azure::CognitiveServices::AnomalyDetector::V1_0::Models::Request.mapper()
      request_content = self.serialize(request_mapper,  body)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'timeseries/entire/detect'

      request_url = @base_url || self.base_url
    request_url = request_url.gsub('{Endpoint}', endpoint)

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = self.make_request_async(:post, path_template, options)

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
            result_mapper = Azure::CognitiveServices::AnomalyDetector::V1_0::Models::EntireDetectResponse.mapper()
            result.body = self.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Detect anomaly status of the latest point in time series.
    #
    # This operation generates a model using points before the latest one. With
    # this method, only historical points are used to determine whether the target
    # point is an anomaly. The latest point detecting operation matches the
    # scenario of real-time monitoring of business metrics.
    #
    # @param body [Request] Time series points and period if needed. Advanced model
    # parameters can also be set in the request.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [LastDetectResponse] operation results.
    #
    def last_detect(body, custom_headers:nil)
      response = last_detect_async(body, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Detect anomaly status of the latest point in time series.
    #
    # This operation generates a model using points before the latest one. With
    # this method, only historical points are used to determine whether the target
    # point is an anomaly. The latest point detecting operation matches the
    # scenario of real-time monitoring of business metrics.
    #
    # @param body [Request] Time series points and period if needed. Advanced model
    # parameters can also be set in the request.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def last_detect_with_http_info(body, custom_headers:nil)
      last_detect_async(body, custom_headers:custom_headers).value!
    end

    #
    # Detect anomaly status of the latest point in time series.
    #
    # This operation generates a model using points before the latest one. With
    # this method, only historical points are used to determine whether the target
    # point is an anomaly. The latest point detecting operation matches the
    # scenario of real-time monitoring of business metrics.
    #
    # @param body [Request] Time series points and period if needed. Advanced model
    # parameters can also be set in the request.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def last_detect_async(body, custom_headers:nil)
      fail ArgumentError, 'endpoint is nil' if endpoint.nil?
      fail ArgumentError, 'body is nil' if body.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = accept_language unless accept_language.nil?

      # Serialize Request
      request_mapper = Azure::CognitiveServices::AnomalyDetector::V1_0::Models::Request.mapper()
      request_content = self.serialize(request_mapper,  body)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'timeseries/last/detect'

      request_url = @base_url || self.base_url
    request_url = request_url.gsub('{Endpoint}', endpoint)

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = self.make_request_async(:post, path_template, options)

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
            result_mapper = Azure::CognitiveServices::AnomalyDetector::V1_0::Models::LastDetectResponse.mapper()
            result.body = self.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end


    private
    #
    # Adds telemetry information.
    #
    def add_telemetry
        sdk_information = 'azure_cognitiveservices_anomalydetector'
        sdk_information = "#{sdk_information}/0.17.1"
        add_user_agent_information(sdk_information)
    end
  end
end
