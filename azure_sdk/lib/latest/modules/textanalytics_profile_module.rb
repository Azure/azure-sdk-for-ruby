# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_cognitiveservices_textanalytics'

module Azure::Profiles::Latest
  module TextAnalytics

    module Models
      EntitiesBatchResultV2dot1 = Azure::CognitiveServices::TextAnalytics::V2_1_preview::Models::EntitiesBatchResultV2dot1
      MultiLanguageBatchInput = Azure::CognitiveServices::TextAnalytics::V2_1_preview::Models::MultiLanguageBatchInput
      ErrorResponse = Azure::CognitiveServices::TextAnalytics::V2_1_preview::Models::ErrorResponse
      DetectedLanguage = Azure::CognitiveServices::TextAnalytics::V2_1_preview::Models::DetectedLanguage
      MultiLanguageInput = Azure::CognitiveServices::TextAnalytics::V2_1_preview::Models::MultiLanguageInput
      LanguageBatchResultItem = Azure::CognitiveServices::TextAnalytics::V2_1_preview::Models::LanguageBatchResultItem
      KeyPhraseBatchResultItem = Azure::CognitiveServices::TextAnalytics::V2_1_preview::Models::KeyPhraseBatchResultItem
      LanguageBatchResult = Azure::CognitiveServices::TextAnalytics::V2_1_preview::Models::LanguageBatchResult
      KeyPhraseBatchResult = Azure::CognitiveServices::TextAnalytics::V2_1_preview::Models::KeyPhraseBatchResult
      SentimentBatchResultItem = Azure::CognitiveServices::TextAnalytics::V2_1_preview::Models::SentimentBatchResultItem
      SentimentBatchResult = Azure::CognitiveServices::TextAnalytics::V2_1_preview::Models::SentimentBatchResult
      BatchInput = Azure::CognitiveServices::TextAnalytics::V2_1_preview::Models::BatchInput
      MatchRecordV2dot1 = Azure::CognitiveServices::TextAnalytics::V2_1_preview::Models::MatchRecordV2dot1
      ErrorRecord = Azure::CognitiveServices::TextAnalytics::V2_1_preview::Models::ErrorRecord
      EntityRecordV2dot1 = Azure::CognitiveServices::TextAnalytics::V2_1_preview::Models::EntityRecordV2dot1
      EntitiesBatchResultItemV2dot1 = Azure::CognitiveServices::TextAnalytics::V2_1_preview::Models::EntitiesBatchResultItemV2dot1
      InternalError = Azure::CognitiveServices::TextAnalytics::V2_1_preview::Models::InternalError
      Input = Azure::CognitiveServices::TextAnalytics::V2_1_preview::Models::Input
    end

    class TextAnalyticsDataClass
      attr_reader :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        @client_0 = Azure::CognitiveServices::TextAnalytics::V2_1_preview::TextAnalyticsClient.new(configurable.credentials, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/TextAnalytics"
        client.add_user_agent_information(profile_information)
      end

      def method_missing(method, *args)
        if @client_0.respond_to?method
          @client_0.send(method, *args)
        else
          super
        end
      end

      class ModelClasses
        def entities_batch_result_v2dot1
          Azure::CognitiveServices::TextAnalytics::V2_1_preview::Models::EntitiesBatchResultV2dot1
        end
        def multi_language_batch_input
          Azure::CognitiveServices::TextAnalytics::V2_1_preview::Models::MultiLanguageBatchInput
        end
        def error_response
          Azure::CognitiveServices::TextAnalytics::V2_1_preview::Models::ErrorResponse
        end
        def detected_language
          Azure::CognitiveServices::TextAnalytics::V2_1_preview::Models::DetectedLanguage
        end
        def multi_language_input
          Azure::CognitiveServices::TextAnalytics::V2_1_preview::Models::MultiLanguageInput
        end
        def language_batch_result_item
          Azure::CognitiveServices::TextAnalytics::V2_1_preview::Models::LanguageBatchResultItem
        end
        def key_phrase_batch_result_item
          Azure::CognitiveServices::TextAnalytics::V2_1_preview::Models::KeyPhraseBatchResultItem
        end
        def language_batch_result
          Azure::CognitiveServices::TextAnalytics::V2_1_preview::Models::LanguageBatchResult
        end
        def key_phrase_batch_result
          Azure::CognitiveServices::TextAnalytics::V2_1_preview::Models::KeyPhraseBatchResult
        end
        def sentiment_batch_result_item
          Azure::CognitiveServices::TextAnalytics::V2_1_preview::Models::SentimentBatchResultItem
        end
        def sentiment_batch_result
          Azure::CognitiveServices::TextAnalytics::V2_1_preview::Models::SentimentBatchResult
        end
        def batch_input
          Azure::CognitiveServices::TextAnalytics::V2_1_preview::Models::BatchInput
        end
        def match_record_v2dot1
          Azure::CognitiveServices::TextAnalytics::V2_1_preview::Models::MatchRecordV2dot1
        end
        def error_record
          Azure::CognitiveServices::TextAnalytics::V2_1_preview::Models::ErrorRecord
        end
        def entity_record_v2dot1
          Azure::CognitiveServices::TextAnalytics::V2_1_preview::Models::EntityRecordV2dot1
        end
        def entities_batch_result_item_v2dot1
          Azure::CognitiveServices::TextAnalytics::V2_1_preview::Models::EntitiesBatchResultItemV2dot1
        end
        def internal_error
          Azure::CognitiveServices::TextAnalytics::V2_1_preview::Models::InternalError
        end
        def input
          Azure::CognitiveServices::TextAnalytics::V2_1_preview::Models::Input
        end
      end
    end
  end
end
