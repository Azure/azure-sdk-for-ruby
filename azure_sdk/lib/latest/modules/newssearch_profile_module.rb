# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_cognitiveservices_newssearch'

module Azure::Profiles::Latest
  module NewsSearch
    NewsOperations = Azure::CognitiveServices::NewsSearch::V1_0::NewsOperations

    module Models
      ErrorSubCode = Azure::CognitiveServices::NewsSearch::V1_0::Models::ErrorSubCode
      Freshness = Azure::CognitiveServices::NewsSearch::V1_0::Models::Freshness
      ImageObject = Azure::CognitiveServices::NewsSearch::V1_0::Models::ImageObject
      TextFormat = Azure::CognitiveServices::NewsSearch::V1_0::Models::TextFormat
      Organization = Azure::CognitiveServices::NewsSearch::V1_0::Models::Organization
      Response = Azure::CognitiveServices::NewsSearch::V1_0::Models::Response
      ResponseBase = Azure::CognitiveServices::NewsSearch::V1_0::Models::ResponseBase
      Answer = Azure::CognitiveServices::NewsSearch::V1_0::Models::Answer
      SearchResultsAnswer = Azure::CognitiveServices::NewsSearch::V1_0::Models::SearchResultsAnswer
      Thing = Azure::CognitiveServices::NewsSearch::V1_0::Models::Thing
      NewsArticle = Azure::CognitiveServices::NewsSearch::V1_0::Models::NewsArticle
      News = Azure::CognitiveServices::NewsSearch::V1_0::Models::News
      NewsTopic = Azure::CognitiveServices::NewsSearch::V1_0::Models::NewsTopic
      Article = Azure::CognitiveServices::NewsSearch::V1_0::Models::Article
      TrendingTopics = Azure::CognitiveServices::NewsSearch::V1_0::Models::TrendingTopics
      Identifiable = Azure::CognitiveServices::NewsSearch::V1_0::Models::Identifiable
      VideoObject = Azure::CognitiveServices::NewsSearch::V1_0::Models::VideoObject
      SafeSearch = Azure::CognitiveServices::NewsSearch::V1_0::Models::SafeSearch
      ErrorCode = Azure::CognitiveServices::NewsSearch::V1_0::Models::ErrorCode
      CreativeWork = Azure::CognitiveServices::NewsSearch::V1_0::Models::CreativeWork
      ErrorResponse = Azure::CognitiveServices::NewsSearch::V1_0::Models::ErrorResponse
      Query = Azure::CognitiveServices::NewsSearch::V1_0::Models::Query
      Error = Azure::CognitiveServices::NewsSearch::V1_0::Models::Error
      MediaObject = Azure::CognitiveServices::NewsSearch::V1_0::Models::MediaObject
    end

    class NewsSearchDataClass
      attr_reader :news_operations, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        @client_0 = Azure::CognitiveServices::NewsSearch::V1_0::NewsSearchClient.new(configurable.credentials, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @news_operations = @client_0.news_operations

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/NewsSearch"
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
        def error_sub_code
          Azure::CognitiveServices::NewsSearch::V1_0::Models::ErrorSubCode
        end
        def freshness
          Azure::CognitiveServices::NewsSearch::V1_0::Models::Freshness
        end
        def image_object
          Azure::CognitiveServices::NewsSearch::V1_0::Models::ImageObject
        end
        def text_format
          Azure::CognitiveServices::NewsSearch::V1_0::Models::TextFormat
        end
        def organization
          Azure::CognitiveServices::NewsSearch::V1_0::Models::Organization
        end
        def response
          Azure::CognitiveServices::NewsSearch::V1_0::Models::Response
        end
        def response_base
          Azure::CognitiveServices::NewsSearch::V1_0::Models::ResponseBase
        end
        def answer
          Azure::CognitiveServices::NewsSearch::V1_0::Models::Answer
        end
        def search_results_answer
          Azure::CognitiveServices::NewsSearch::V1_0::Models::SearchResultsAnswer
        end
        def thing
          Azure::CognitiveServices::NewsSearch::V1_0::Models::Thing
        end
        def news_article
          Azure::CognitiveServices::NewsSearch::V1_0::Models::NewsArticle
        end
        def news
          Azure::CognitiveServices::NewsSearch::V1_0::Models::News
        end
        def news_topic
          Azure::CognitiveServices::NewsSearch::V1_0::Models::NewsTopic
        end
        def article
          Azure::CognitiveServices::NewsSearch::V1_0::Models::Article
        end
        def trending_topics
          Azure::CognitiveServices::NewsSearch::V1_0::Models::TrendingTopics
        end
        def identifiable
          Azure::CognitiveServices::NewsSearch::V1_0::Models::Identifiable
        end
        def video_object
          Azure::CognitiveServices::NewsSearch::V1_0::Models::VideoObject
        end
        def safe_search
          Azure::CognitiveServices::NewsSearch::V1_0::Models::SafeSearch
        end
        def error_code
          Azure::CognitiveServices::NewsSearch::V1_0::Models::ErrorCode
        end
        def creative_work
          Azure::CognitiveServices::NewsSearch::V1_0::Models::CreativeWork
        end
        def error_response
          Azure::CognitiveServices::NewsSearch::V1_0::Models::ErrorResponse
        end
        def query
          Azure::CognitiveServices::NewsSearch::V1_0::Models::Query
        end
        def error
          Azure::CognitiveServices::NewsSearch::V1_0::Models::Error
        end
        def media_object
          Azure::CognitiveServices::NewsSearch::V1_0::Models::MediaObject
        end
      end
    end
  end
end
