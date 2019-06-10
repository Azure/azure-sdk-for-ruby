# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_cognitiveservices_customsearch'

module Azure::Profiles::Latest
  module CustomSearch
    CustomInstance = Azure::CognitiveServices::CustomSearch::V1_0::CustomInstance

    module Models
      Identifiable = Azure::CognitiveServices::CustomSearch::V1_0::Models::Identifiable
      Thing = Azure::CognitiveServices::CustomSearch::V1_0::Models::Thing
      Answer = Azure::CognitiveServices::CustomSearch::V1_0::Models::Answer
      SafeSearch = Azure::CognitiveServices::CustomSearch::V1_0::Models::SafeSearch
      WebMetaTag = Azure::CognitiveServices::CustomSearch::V1_0::Models::WebMetaTag
      WebWebAnswer = Azure::CognitiveServices::CustomSearch::V1_0::Models::WebWebAnswer
      SearchResponse = Azure::CognitiveServices::CustomSearch::V1_0::Models::SearchResponse
      ErrorCode = Azure::CognitiveServices::CustomSearch::V1_0::Models::ErrorCode
      TextFormat = Azure::CognitiveServices::CustomSearch::V1_0::Models::TextFormat
      ErrorSubCode = Azure::CognitiveServices::CustomSearch::V1_0::Models::ErrorSubCode
      ErrorResponse = Azure::CognitiveServices::CustomSearch::V1_0::Models::ErrorResponse
      Query = Azure::CognitiveServices::CustomSearch::V1_0::Models::Query
      QueryContext = Azure::CognitiveServices::CustomSearch::V1_0::Models::QueryContext
      ResponseBase = Azure::CognitiveServices::CustomSearch::V1_0::Models::ResponseBase
      WebPage = Azure::CognitiveServices::CustomSearch::V1_0::Models::WebPage
      SearchResultsAnswer = Azure::CognitiveServices::CustomSearch::V1_0::Models::SearchResultsAnswer
      Error = Azure::CognitiveServices::CustomSearch::V1_0::Models::Error
      Response = Azure::CognitiveServices::CustomSearch::V1_0::Models::Response
      CreativeWork = Azure::CognitiveServices::CustomSearch::V1_0::Models::CreativeWork
    end

    class CustomSearchDataClass
      attr_reader :custom_instance, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        @client_0 = Azure::CognitiveServices::CustomSearch::V1_0::CustomSearchClient.new(configurable.credentials, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @custom_instance = @client_0.custom_instance

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/CustomSearch"
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
        def identifiable
          Azure::CognitiveServices::CustomSearch::V1_0::Models::Identifiable
        end
        def thing
          Azure::CognitiveServices::CustomSearch::V1_0::Models::Thing
        end
        def answer
          Azure::CognitiveServices::CustomSearch::V1_0::Models::Answer
        end
        def safe_search
          Azure::CognitiveServices::CustomSearch::V1_0::Models::SafeSearch
        end
        def web_meta_tag
          Azure::CognitiveServices::CustomSearch::V1_0::Models::WebMetaTag
        end
        def web_web_answer
          Azure::CognitiveServices::CustomSearch::V1_0::Models::WebWebAnswer
        end
        def search_response
          Azure::CognitiveServices::CustomSearch::V1_0::Models::SearchResponse
        end
        def error_code
          Azure::CognitiveServices::CustomSearch::V1_0::Models::ErrorCode
        end
        def text_format
          Azure::CognitiveServices::CustomSearch::V1_0::Models::TextFormat
        end
        def error_sub_code
          Azure::CognitiveServices::CustomSearch::V1_0::Models::ErrorSubCode
        end
        def error_response
          Azure::CognitiveServices::CustomSearch::V1_0::Models::ErrorResponse
        end
        def query
          Azure::CognitiveServices::CustomSearch::V1_0::Models::Query
        end
        def query_context
          Azure::CognitiveServices::CustomSearch::V1_0::Models::QueryContext
        end
        def response_base
          Azure::CognitiveServices::CustomSearch::V1_0::Models::ResponseBase
        end
        def web_page
          Azure::CognitiveServices::CustomSearch::V1_0::Models::WebPage
        end
        def search_results_answer
          Azure::CognitiveServices::CustomSearch::V1_0::Models::SearchResultsAnswer
        end
        def error
          Azure::CognitiveServices::CustomSearch::V1_0::Models::Error
        end
        def response
          Azure::CognitiveServices::CustomSearch::V1_0::Models::Response
        end
        def creative_work
          Azure::CognitiveServices::CustomSearch::V1_0::Models::CreativeWork
        end
      end
    end
  end
end
