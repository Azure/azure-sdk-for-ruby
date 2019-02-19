# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_cognitiveservices_autosuggest'

module Azure::Profiles::Latest
  module Autosuggest

    module Models
      QueryContext = Azure::CognitiveServices::Autosuggest::V1_0::Models::QueryContext
      SuggestionsSuggestionGroup = Azure::CognitiveServices::Autosuggest::V1_0::Models::SuggestionsSuggestionGroup
      ResponseBase = Azure::CognitiveServices::Autosuggest::V1_0::Models::ResponseBase
      Answer = Azure::CognitiveServices::Autosuggest::V1_0::Models::Answer
      SearchResultsAnswer = Azure::CognitiveServices::Autosuggest::V1_0::Models::SearchResultsAnswer
      Suggestions = Azure::CognitiveServices::Autosuggest::V1_0::Models::Suggestions
      Thing = Azure::CognitiveServices::Autosuggest::V1_0::Models::Thing
      CreativeWork = Azure::CognitiveServices::Autosuggest::V1_0::Models::CreativeWork
      SearchAction = Azure::CognitiveServices::Autosuggest::V1_0::Models::SearchAction
      Identifiable = Azure::CognitiveServices::Autosuggest::V1_0::Models::Identifiable
      Response = Azure::CognitiveServices::Autosuggest::V1_0::Models::Response
      Action = Azure::CognitiveServices::Autosuggest::V1_0::Models::Action
      SearchKind = Azure::CognitiveServices::Autosuggest::V1_0::Models::SearchKind
      ScenarioType = Azure::CognitiveServices::Autosuggest::V1_0::Models::ScenarioType
      SafeSearch = Azure::CognitiveServices::Autosuggest::V1_0::Models::SafeSearch
      ErrorCode = Azure::CognitiveServices::Autosuggest::V1_0::Models::ErrorCode
      ResponseFormat = Azure::CognitiveServices::Autosuggest::V1_0::Models::ResponseFormat
      Error = Azure::CognitiveServices::Autosuggest::V1_0::Models::Error
      ErrorResponse = Azure::CognitiveServices::Autosuggest::V1_0::Models::ErrorResponse
    end

    class AutosuggestDataClass
      attr_reader :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        @client_0 = Azure::CognitiveServices::Autosuggest::V1_0::AutosuggestClient.new(configurable.credentials, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Autosuggest"
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
        def query_context
          Azure::CognitiveServices::Autosuggest::V1_0::Models::QueryContext
        end
        def suggestions_suggestion_group
          Azure::CognitiveServices::Autosuggest::V1_0::Models::SuggestionsSuggestionGroup
        end
        def response_base
          Azure::CognitiveServices::Autosuggest::V1_0::Models::ResponseBase
        end
        def answer
          Azure::CognitiveServices::Autosuggest::V1_0::Models::Answer
        end
        def search_results_answer
          Azure::CognitiveServices::Autosuggest::V1_0::Models::SearchResultsAnswer
        end
        def suggestions
          Azure::CognitiveServices::Autosuggest::V1_0::Models::Suggestions
        end
        def thing
          Azure::CognitiveServices::Autosuggest::V1_0::Models::Thing
        end
        def creative_work
          Azure::CognitiveServices::Autosuggest::V1_0::Models::CreativeWork
        end
        def search_action
          Azure::CognitiveServices::Autosuggest::V1_0::Models::SearchAction
        end
        def identifiable
          Azure::CognitiveServices::Autosuggest::V1_0::Models::Identifiable
        end
        def response
          Azure::CognitiveServices::Autosuggest::V1_0::Models::Response
        end
        def action
          Azure::CognitiveServices::Autosuggest::V1_0::Models::Action
        end
        def search_kind
          Azure::CognitiveServices::Autosuggest::V1_0::Models::SearchKind
        end
        def scenario_type
          Azure::CognitiveServices::Autosuggest::V1_0::Models::ScenarioType
        end
        def safe_search
          Azure::CognitiveServices::Autosuggest::V1_0::Models::SafeSearch
        end
        def error_code
          Azure::CognitiveServices::Autosuggest::V1_0::Models::ErrorCode
        end
        def response_format
          Azure::CognitiveServices::Autosuggest::V1_0::Models::ResponseFormat
        end
        def error
          Azure::CognitiveServices::Autosuggest::V1_0::Models::Error
        end
        def error_response
          Azure::CognitiveServices::Autosuggest::V1_0::Models::ErrorResponse
        end
      end
    end
  end
end
