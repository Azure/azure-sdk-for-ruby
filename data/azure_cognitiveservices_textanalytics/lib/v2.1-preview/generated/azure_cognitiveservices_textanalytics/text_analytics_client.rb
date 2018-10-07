# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::TextAnalytics::V2_1
  #
  # A service client - single point of access to the REST API.
  #
  class TextAnalyticsClient < MsRestAzure::AzureServiceClient
    include MsRestAzure
    include MsRestAzure::Serialization

    # @return [String] the base URI of the service.
    attr_reader :base_url

    # @return Credentials needed for the client to connect to Azure.
    attr_reader :credentials1

    # @return [String] Supported Cognitive Services endpoints (protocol and
    # hostname, for example: https://westus.api.cognitive.microsoft.com).
    attr_accessor :endpoint

    # @return Subscription credentials which uniquely identify client
    # subscription.
    attr_accessor :credentials

    # @return [String] Gets or sets the preferred language for the response.
    attr_accessor :accept_language

    # @return [Integer] Gets or sets the retry timeout in seconds for Long
    # Running Operations. Default value is 30.
    attr_accessor :long_running_operation_retry_timeout

    # @return [Boolean] When set to true a unique x-ms-client-request-id value
    # is generated and included in each request. Default is true.
    attr_accessor :generate_client_request_id

    #
    # Creates initializes a new instance of the TextAnalyticsClient class.
    # @param credentials [MsRest::ServiceClientCredentials] credentials to authorize HTTP requests made by the service client.
    # @param options [Array] filters to be applied to the HTTP requests.
    #
    def initialize(credentials = nil, options = nil)
      super(credentials, options)
      @base_url = '{Endpoint}/text/analytics/v2.1-preview'

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

      request_headers = @request_headers
      request_headers.merge!({'accept-language' => @accept_language}) unless @accept_language.nil?
      options.merge!({headers: request_headers.merge(options[:headers] || {})})
      options.merge!({credentials: @credentials}) unless @credentials.nil?

      super(request_url, method, path, options)
    end

    #
    # The API returns a list of strings denoting the key talking points in the
    # input text.
    #
    # See the <a
    # href="https://docs.microsoft.com/en-us/azure/cognitive-services/text-analytics/overview#supported-languages">Text
    # Analytics Documentation</a> for details about the languages that are
    # supported by key phrase extraction.
    #
    # @param input [MultiLanguageBatchInput] Collection of documents to analyze.
    # Documents can now contain a language field to indicate the text language
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [KeyPhraseBatchResult] operation results.
    #
    def key_phrases(input, custom_headers = nil)
      response = key_phrases_async(input, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # The API returns a list of strings denoting the key talking points in the
    # input text.
    #
    # See the <a
    # href="https://docs.microsoft.com/en-us/azure/cognitive-services/text-analytics/overview#supported-languages">Text
    # Analytics Documentation</a> for details about the languages that are
    # supported by key phrase extraction.
    #
    # @param input [MultiLanguageBatchInput] Collection of documents to analyze.
    # Documents can now contain a language field to indicate the text language
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def key_phrases_with_http_info(input, custom_headers = nil)
      key_phrases_async(input, custom_headers).value!
    end

    #
    # The API returns a list of strings denoting the key talking points in the
    # input text.
    #
    # See the <a
    # href="https://docs.microsoft.com/en-us/azure/cognitive-services/text-analytics/overview#supported-languages">Text
    # Analytics Documentation</a> for details about the languages that are
    # supported by key phrase extraction.
    #
    # @param input [MultiLanguageBatchInput] Collection of documents to analyze.
    # Documents can now contain a language field to indicate the text language
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def key_phrases_async(input, custom_headers = nil)
      fail ArgumentError, 'endpoint is nil' if endpoint.nil?
      fail ArgumentError, 'input is nil' if input.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = accept_language unless accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = Azure::CognitiveServices::TextAnalytics::V2_1::Models::MultiLanguageBatchInput.mapper()
      request_content = self.serialize(request_mapper,  input)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'keyPhrases'

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
            result_mapper = Azure::CognitiveServices::TextAnalytics::V2_1::Models::KeyPhraseBatchResult.mapper()
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
    # The API returns the detected language and a numeric score between 0 and 1.
    #
    # Scores close to 1 indicate 100% certainty that the identified language is
    # true. A total of 120 languages are supported.
    #
    # @param input [BatchInput] Collection of documents to analyze.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [LanguageBatchResult] operation results.
    #
    def detect_language(input, custom_headers = nil)
      response = detect_language_async(input, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # The API returns the detected language and a numeric score between 0 and 1.
    #
    # Scores close to 1 indicate 100% certainty that the identified language is
    # true. A total of 120 languages are supported.
    #
    # @param input [BatchInput] Collection of documents to analyze.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def detect_language_with_http_info(input, custom_headers = nil)
      detect_language_async(input, custom_headers).value!
    end

    #
    # The API returns the detected language and a numeric score between 0 and 1.
    #
    # Scores close to 1 indicate 100% certainty that the identified language is
    # true. A total of 120 languages are supported.
    #
    # @param input [BatchInput] Collection of documents to analyze.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def detect_language_async(input, custom_headers = nil)
      fail ArgumentError, 'endpoint is nil' if endpoint.nil?
      fail ArgumentError, 'input is nil' if input.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = accept_language unless accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = Azure::CognitiveServices::TextAnalytics::V2_1::Models::BatchInput.mapper()
      request_content = self.serialize(request_mapper,  input)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'languages'

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
            result_mapper = Azure::CognitiveServices::TextAnalytics::V2_1::Models::LanguageBatchResult.mapper()
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
    # The API returns a numeric score between 0 and 1.
    #
    # Scores close to 1 indicate positive sentiment, while scores close to 0
    # indicate negative sentiment. A score of 0.5 indicates the lack of sentiment
    # (e.g. a factoid statement). See the <a
    # href="https://docs.microsoft.com/en-us/azure/cognitive-services/text-analytics/overview#supported-languages">Text
    # Analytics Documentation</a> for details about the languages that are
    # supported by sentiment analysis.
    #
    # @param input [MultiLanguageBatchInput] Collection of documents to analyze.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SentimentBatchResult] operation results.
    #
    def sentiment(input, custom_headers = nil)
      response = sentiment_async(input, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # The API returns a numeric score between 0 and 1.
    #
    # Scores close to 1 indicate positive sentiment, while scores close to 0
    # indicate negative sentiment. A score of 0.5 indicates the lack of sentiment
    # (e.g. a factoid statement). See the <a
    # href="https://docs.microsoft.com/en-us/azure/cognitive-services/text-analytics/overview#supported-languages">Text
    # Analytics Documentation</a> for details about the languages that are
    # supported by sentiment analysis.
    #
    # @param input [MultiLanguageBatchInput] Collection of documents to analyze.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def sentiment_with_http_info(input, custom_headers = nil)
      sentiment_async(input, custom_headers).value!
    end

    #
    # The API returns a numeric score between 0 and 1.
    #
    # Scores close to 1 indicate positive sentiment, while scores close to 0
    # indicate negative sentiment. A score of 0.5 indicates the lack of sentiment
    # (e.g. a factoid statement). See the <a
    # href="https://docs.microsoft.com/en-us/azure/cognitive-services/text-analytics/overview#supported-languages">Text
    # Analytics Documentation</a> for details about the languages that are
    # supported by sentiment analysis.
    #
    # @param input [MultiLanguageBatchInput] Collection of documents to analyze.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def sentiment_async(input, custom_headers = nil)
      fail ArgumentError, 'endpoint is nil' if endpoint.nil?
      fail ArgumentError, 'input is nil' if input.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = accept_language unless accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = Azure::CognitiveServices::TextAnalytics::V2_1::Models::MultiLanguageBatchInput.mapper()
      request_content = self.serialize(request_mapper,  input)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'sentiment'

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
            result_mapper = Azure::CognitiveServices::TextAnalytics::V2_1::Models::SentimentBatchResult.mapper()
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
    # The API returns a list of recognized entities in a given document.
    #
    # The API returns a list of recognized entities in a given document. To get
    # even more information on each recognized entity we recommend using the Bing
    # Entity Search API by querying for the recognized entities names. See the <a
    # href="https://docs.microsoft.com/en-us/azure/cognitive-services/text-analytics/text-analytics-supported-languages">Supported
    # languages in Text Analytics API</a> for the list of enabled languages.The API
    # returns a list of known entities and general named entities ("Person",
    # "Location", "Organization" etc) in a given document. Known entities are
    # returned with Wikipedia Id and Wikipedia link, and also Bing Id which can be
    # used in Bing Entity Search API. General named entities are returned with
    # entity types. If a general named entity is also a known entity, then all
    # information regarding it (Wikipedia Id, Bing Id, entity type etc) will be
    # returned. See the <a
    # href="https://docs.microsoft.com/en-us/azure/cognitive-services/text-analytics/how-tos/text-analytics-how-to-entity-linking#supported-types-for-named-entity-recognition">Supported
    # Entity Types in Text Analytics API</a> for the list of supported Entity
    # Types. See the <a
    # href="https://docs.microsoft.com/en-us/azure/cognitive-services/text-analytics/text-analytics-supported-languages">Supported
    # languages in Text Analytics API</a> for the list of enabled languages.
    #
    # @param input [MultiLanguageBatchInput] Collection of documents to analyze.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [EntitiesBatchResultV2dot1] operation results.
    #
    def entities(input, custom_headers = nil)
      response = entities_async(input, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # The API returns a list of recognized entities in a given document.
    #
    # The API returns a list of recognized entities in a given document. To get
    # even more information on each recognized entity we recommend using the Bing
    # Entity Search API by querying for the recognized entities names. See the <a
    # href="https://docs.microsoft.com/en-us/azure/cognitive-services/text-analytics/text-analytics-supported-languages">Supported
    # languages in Text Analytics API</a> for the list of enabled languages.The API
    # returns a list of known entities and general named entities ("Person",
    # "Location", "Organization" etc) in a given document. Known entities are
    # returned with Wikipedia Id and Wikipedia link, and also Bing Id which can be
    # used in Bing Entity Search API. General named entities are returned with
    # entity types. If a general named entity is also a known entity, then all
    # information regarding it (Wikipedia Id, Bing Id, entity type etc) will be
    # returned. See the <a
    # href="https://docs.microsoft.com/en-us/azure/cognitive-services/text-analytics/how-tos/text-analytics-how-to-entity-linking#supported-types-for-named-entity-recognition">Supported
    # Entity Types in Text Analytics API</a> for the list of supported Entity
    # Types. See the <a
    # href="https://docs.microsoft.com/en-us/azure/cognitive-services/text-analytics/text-analytics-supported-languages">Supported
    # languages in Text Analytics API</a> for the list of enabled languages.
    #
    # @param input [MultiLanguageBatchInput] Collection of documents to analyze.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def entities_with_http_info(input, custom_headers = nil)
      entities_async(input, custom_headers).value!
    end

    #
    # The API returns a list of recognized entities in a given document.
    #
    # The API returns a list of recognized entities in a given document. To get
    # even more information on each recognized entity we recommend using the Bing
    # Entity Search API by querying for the recognized entities names. See the <a
    # href="https://docs.microsoft.com/en-us/azure/cognitive-services/text-analytics/text-analytics-supported-languages">Supported
    # languages in Text Analytics API</a> for the list of enabled languages.The API
    # returns a list of known entities and general named entities ("Person",
    # "Location", "Organization" etc) in a given document. Known entities are
    # returned with Wikipedia Id and Wikipedia link, and also Bing Id which can be
    # used in Bing Entity Search API. General named entities are returned with
    # entity types. If a general named entity is also a known entity, then all
    # information regarding it (Wikipedia Id, Bing Id, entity type etc) will be
    # returned. See the <a
    # href="https://docs.microsoft.com/en-us/azure/cognitive-services/text-analytics/how-tos/text-analytics-how-to-entity-linking#supported-types-for-named-entity-recognition">Supported
    # Entity Types in Text Analytics API</a> for the list of supported Entity
    # Types. See the <a
    # href="https://docs.microsoft.com/en-us/azure/cognitive-services/text-analytics/text-analytics-supported-languages">Supported
    # languages in Text Analytics API</a> for the list of enabled languages.
    #
    # @param input [MultiLanguageBatchInput] Collection of documents to analyze.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def entities_async(input, custom_headers = nil)
      fail ArgumentError, 'endpoint is nil' if endpoint.nil?
      fail ArgumentError, 'input is nil' if input.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = accept_language unless accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = Azure::CognitiveServices::TextAnalytics::V2_1::Models::MultiLanguageBatchInput.mapper()
      request_content = self.serialize(request_mapper,  input)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'entities'

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
            result_mapper = Azure::CognitiveServices::TextAnalytics::V2_1::Models::EntitiesBatchResultV2dot1.mapper()
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
        sdk_information = 'azure_cognitiveservices_textanalytics'
        if defined? Azure::CognitiveServices::TextAnalytics::V2_1::VERSION
          sdk_information = "#{sdk_information}/#{Azure::CognitiveServices::TextAnalytics::V2_1::VERSION}"
        end
        add_user_agent_information(sdk_information)
    end
  end
end
