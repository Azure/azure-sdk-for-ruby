# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_cognitiveservices_autosuggest'

module Azure::Profiles::Latest
  module Autosuggest

    module Models
      Response = Azure::CognitiveServices::Autosuggest::V1_0::Models::Response
      QueryContext = Azure::CognitiveServices::Autosuggest::V1_0::Models::QueryContext
      SuggestionsSuggestionGroup = Azure::CognitiveServices::Autosuggest::V1_0::Models::SuggestionsSuggestionGroup
      ResponseBase = Azure::CognitiveServices::Autosuggest::V1_0::Models::ResponseBase
      Answer = Azure::CognitiveServices::Autosuggest::V1_0::Models::Answer
      Action = Azure::CognitiveServices::Autosuggest::V1_0::Models::Action
      Suggestions = Azure::CognitiveServices::Autosuggest::V1_0::Models::Suggestions
      Thing = Azure::CognitiveServices::Autosuggest::V1_0::Models::Thing
      CreativeWork = Azure::CognitiveServices::Autosuggest::V1_0::Models::CreativeWork
      SearchAction = Azure::CognitiveServices::Autosuggest::V1_0::Models::SearchAction
      Identifiable = Azure::CognitiveServices::Autosuggest::V1_0::Models::Identifiable
      SearchResultsAnswer = Azure::CognitiveServices::Autosuggest::V1_0::Models::SearchResultsAnswer
      ScenarioType = Azure::CognitiveServices::Autosuggest::V1_0::Models::ScenarioType
      SearchKind = Azure::CognitiveServices::Autosuggest::V1_0::Models::SearchKind
      ErrorCode = Azure::CognitiveServices::Autosuggest::V1_0::Models::ErrorCode
      ErrorResponse = Azure::CognitiveServices::Autosuggest::V1_0::Models::ErrorResponse
      ResponseFormat = Azure::CognitiveServices::Autosuggest::V1_0::Models::ResponseFormat
      SafeSearch = Azure::CognitiveServices::Autosuggest::V1_0::Models::SafeSearch
      Error = Azure::CognitiveServices::Autosuggest::V1_0::Models::Error
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
        def response
          Azure::CognitiveServices::Autosuggest::V1_0::Models::Response
        end
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
        def action
          Azure::CognitiveServices::Autosuggest::V1_0::Models::Action
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
        def search_results_answer
          Azure::CognitiveServices::Autosuggest::V1_0::Models::SearchResultsAnswer
        end
        def scenario_type
          Azure::CognitiveServices::Autosuggest::V1_0::Models::ScenarioType
        end
        def search_kind
          Azure::CognitiveServices::Autosuggest::V1_0::Models::SearchKind
        end
        def error_code
          Azure::CognitiveServices::Autosuggest::V1_0::Models::ErrorCode
        end
        def error_response
          Azure::CognitiveServices::Autosuggest::V1_0::Models::ErrorResponse
        end
        def response_format
          Azure::CognitiveServices::Autosuggest::V1_0::Models::ResponseFormat
        end
        def safe_search
          Azure::CognitiveServices::Autosuggest::V1_0::Models::SafeSearch
        end
        def error
          Azure::CognitiveServices::Autosuggest::V1_0::Models::Error
        end
      end
    end
  end
end
