# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_cognitiveservices_textanalytics'

module Azure::TextAnalytics::Profiles::Latest

  module Models
    ErrorResponse = Azure::CognitiveServices::TextAnalytics::V2_1::Models::ErrorResponse
    MultiLanguageInput = Azure::CognitiveServices::TextAnalytics::V2_1::Models::MultiLanguageInput
    KeyPhraseBatchResultItem = Azure::CognitiveServices::TextAnalytics::V2_1::Models::KeyPhraseBatchResultItem
    MatchRecord = Azure::CognitiveServices::TextAnalytics::V2_1::Models::MatchRecord
    KeyPhraseBatchResult = Azure::CognitiveServices::TextAnalytics::V2_1::Models::KeyPhraseBatchResult
    DocumentStatistics = Azure::CognitiveServices::TextAnalytics::V2_1::Models::DocumentStatistics
    LanguageInput = Azure::CognitiveServices::TextAnalytics::V2_1::Models::LanguageInput
    ErrorRecord = Azure::CognitiveServices::TextAnalytics::V2_1::Models::ErrorRecord
    LanguageBatchInput = Azure::CognitiveServices::TextAnalytics::V2_1::Models::LanguageBatchInput
    EntitiesBatchResult = Azure::CognitiveServices::TextAnalytics::V2_1::Models::EntitiesBatchResult
    DetectedLanguage = Azure::CognitiveServices::TextAnalytics::V2_1::Models::DetectedLanguage
    MultiLanguageBatchInput = Azure::CognitiveServices::TextAnalytics::V2_1::Models::MultiLanguageBatchInput
    LanguageBatchResultItem = Azure::CognitiveServices::TextAnalytics::V2_1::Models::LanguageBatchResultItem
    EntitiesBatchResultItem = Azure::CognitiveServices::TextAnalytics::V2_1::Models::EntitiesBatchResultItem
    LanguageBatchResult = Azure::CognitiveServices::TextAnalytics::V2_1::Models::LanguageBatchResult
    InternalError = Azure::CognitiveServices::TextAnalytics::V2_1::Models::InternalError
    SentimentBatchResultItem = Azure::CognitiveServices::TextAnalytics::V2_1::Models::SentimentBatchResultItem
    RequestStatistics = Azure::CognitiveServices::TextAnalytics::V2_1::Models::RequestStatistics
    SentimentBatchResult = Azure::CognitiveServices::TextAnalytics::V2_1::Models::SentimentBatchResult
    EntityRecord = Azure::CognitiveServices::TextAnalytics::V2_1::Models::EntityRecord
  end

  #
  # TextAnalyticsDataClass
  #
  class TextAnalyticsDataClass
    attr_reader :configurable, :base_url, :options, :model_classes

    def initialize(options = {})
      if options.is_a?(Hash) && options.length == 0
        @options = setup_default_options
      else
        @options = options
      end

      reset!(options)

      @configurable = self
      @base_url = options[:base_url].nil? ? nil:options[:base_url]
      @options = options[:options].nil? ? nil:options[:options]

      @client_0 = Azure::CognitiveServices::TextAnalytics::V2_1::TextAnalyticsClient.new(configurable.credentials, options)
      if(@client_0.respond_to?(:subscription_id))
        @client_0.subscription_id = configurable.subscription_id
      end
      add_telemetry(@client_0)

      @model_classes = ModelClasses.new
    end

    def add_telemetry(client)
      profile_information = 'Profiles/Latest/TextAnalytics'
      client.add_user_agent_information(profile_information)
    end

    def method_missing(method, *args)
      if @client_0.respond_to?method
        @client_0.send(method, *args)
      else
        super
      end
    end

  end

  class ModelClasses
    def error_response
      Azure::CognitiveServices::TextAnalytics::V2_1::Models::ErrorResponse
    end
    def multi_language_input
      Azure::CognitiveServices::TextAnalytics::V2_1::Models::MultiLanguageInput
    end
    def key_phrase_batch_result_item
      Azure::CognitiveServices::TextAnalytics::V2_1::Models::KeyPhraseBatchResultItem
    end
    def match_record
      Azure::CognitiveServices::TextAnalytics::V2_1::Models::MatchRecord
    end
    def key_phrase_batch_result
      Azure::CognitiveServices::TextAnalytics::V2_1::Models::KeyPhraseBatchResult
    end
    def document_statistics
      Azure::CognitiveServices::TextAnalytics::V2_1::Models::DocumentStatistics
    end
    def language_input
      Azure::CognitiveServices::TextAnalytics::V2_1::Models::LanguageInput
    end
    def error_record
      Azure::CognitiveServices::TextAnalytics::V2_1::Models::ErrorRecord
    end
    def language_batch_input
      Azure::CognitiveServices::TextAnalytics::V2_1::Models::LanguageBatchInput
    end
    def entities_batch_result
      Azure::CognitiveServices::TextAnalytics::V2_1::Models::EntitiesBatchResult
    end
    def detected_language
      Azure::CognitiveServices::TextAnalytics::V2_1::Models::DetectedLanguage
    end
    def multi_language_batch_input
      Azure::CognitiveServices::TextAnalytics::V2_1::Models::MultiLanguageBatchInput
    end
    def language_batch_result_item
      Azure::CognitiveServices::TextAnalytics::V2_1::Models::LanguageBatchResultItem
    end
    def entities_batch_result_item
      Azure::CognitiveServices::TextAnalytics::V2_1::Models::EntitiesBatchResultItem
    end
    def language_batch_result
      Azure::CognitiveServices::TextAnalytics::V2_1::Models::LanguageBatchResult
    end
    def internal_error
      Azure::CognitiveServices::TextAnalytics::V2_1::Models::InternalError
    end
    def sentiment_batch_result_item
      Azure::CognitiveServices::TextAnalytics::V2_1::Models::SentimentBatchResultItem
    end
    def request_statistics
      Azure::CognitiveServices::TextAnalytics::V2_1::Models::RequestStatistics
    end
    def sentiment_batch_result
      Azure::CognitiveServices::TextAnalytics::V2_1::Models::SentimentBatchResult
    end
    def entity_record
      Azure::CognitiveServices::TextAnalytics::V2_1::Models::EntityRecord
    end
  end
end
