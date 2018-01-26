# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_cognitiveservices_textanalytics'

module Azure::TextAnalytics::Profiles::Latest

  module Models
    Input = Azure::CognitiveServices::TextAnalytics::V2_0::Models::Input
    MultiLanguageInput = Azure::CognitiveServices::TextAnalytics::V2_0::Models::MultiLanguageInput
    BatchInput = Azure::CognitiveServices::TextAnalytics::V2_0::Models::BatchInput
    KeyPhraseBatchResultItem = Azure::CognitiveServices::TextAnalytics::V2_0::Models::KeyPhraseBatchResultItem
    DetectedLanguage = Azure::CognitiveServices::TextAnalytics::V2_0::Models::DetectedLanguage
    KeyPhraseBatchResult = Azure::CognitiveServices::TextAnalytics::V2_0::Models::KeyPhraseBatchResult
    LanguageBatchResultItem = Azure::CognitiveServices::TextAnalytics::V2_0::Models::LanguageBatchResultItem
    ErrorResponse = Azure::CognitiveServices::TextAnalytics::V2_0::Models::ErrorResponse
    LanguageBatchResult = Azure::CognitiveServices::TextAnalytics::V2_0::Models::LanguageBatchResult
    ErrorRecord = Azure::CognitiveServices::TextAnalytics::V2_0::Models::ErrorRecord
    SentimentBatchResultItem = Azure::CognitiveServices::TextAnalytics::V2_0::Models::SentimentBatchResultItem
    MultiLanguageBatchInput = Azure::CognitiveServices::TextAnalytics::V2_0::Models::MultiLanguageBatchInput
    SentimentBatchResult = Azure::CognitiveServices::TextAnalytics::V2_0::Models::SentimentBatchResult
    InternalError = Azure::CognitiveServices::TextAnalytics::V2_0::Models::InternalError
    AzureRegions = Azure::CognitiveServices::TextAnalytics::V2_0::Models::AzureRegions
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

      client_0 = Azure::CognitiveServices::TextAnalytics::V2_0::TextAnalyticsClient.new(configurable.credentials, options)
      if(client_0.respond_to?(:subscription_id))
        client_0.subscription_id = configurable.subscription_id
      end
      add_telemetry(client_0)

      @model_classes = ModelClasses.new
    end

    def add_telemetry(client)
      profile_information = 'Profiles/Latest/TextAnalytics'
      client.add_user_agent_information(profile_information)
    end

  end

  class ModelClasses
    def input
      Azure::CognitiveServices::TextAnalytics::V2_0::Models::Input
    end
    def multi_language_input
      Azure::CognitiveServices::TextAnalytics::V2_0::Models::MultiLanguageInput
    end
    def batch_input
      Azure::CognitiveServices::TextAnalytics::V2_0::Models::BatchInput
    end
    def key_phrase_batch_result_item
      Azure::CognitiveServices::TextAnalytics::V2_0::Models::KeyPhraseBatchResultItem
    end
    def detected_language
      Azure::CognitiveServices::TextAnalytics::V2_0::Models::DetectedLanguage
    end
    def key_phrase_batch_result
      Azure::CognitiveServices::TextAnalytics::V2_0::Models::KeyPhraseBatchResult
    end
    def language_batch_result_item
      Azure::CognitiveServices::TextAnalytics::V2_0::Models::LanguageBatchResultItem
    end
    def error_response
      Azure::CognitiveServices::TextAnalytics::V2_0::Models::ErrorResponse
    end
    def language_batch_result
      Azure::CognitiveServices::TextAnalytics::V2_0::Models::LanguageBatchResult
    end
    def error_record
      Azure::CognitiveServices::TextAnalytics::V2_0::Models::ErrorRecord
    end
    def sentiment_batch_result_item
      Azure::CognitiveServices::TextAnalytics::V2_0::Models::SentimentBatchResultItem
    end
    def multi_language_batch_input
      Azure::CognitiveServices::TextAnalytics::V2_0::Models::MultiLanguageBatchInput
    end
    def sentiment_batch_result
      Azure::CognitiveServices::TextAnalytics::V2_0::Models::SentimentBatchResult
    end
    def internal_error
      Azure::CognitiveServices::TextAnalytics::V2_0::Models::InternalError
    end
    def azure_regions
      Azure::CognitiveServices::TextAnalytics::V2_0::Models::AzureRegions
    end
  end
end
