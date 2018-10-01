# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_cognitiveservices_videosearch'

module Azure::Profiles::Latest
  module VideoSearch
    VideosOperations = Azure::CognitiveServices::VideoSearch::V1_0::VideosOperations

    module Models
      VideoLength = Azure::CognitiveServices::VideoSearch::V1_0::Models::VideoLength
      VideoQueryScenario = Azure::CognitiveServices::VideoSearch::V1_0::Models::VideoQueryScenario
      VideoResolution = Azure::CognitiveServices::VideoSearch::V1_0::Models::VideoResolution
      VideoPricing = Azure::CognitiveServices::VideoSearch::V1_0::Models::VideoPricing
      ResponseBase = Azure::CognitiveServices::VideoSearch::V1_0::Models::ResponseBase
      QueryContext = Azure::CognitiveServices::VideoSearch::V1_0::Models::QueryContext
      Query = Azure::CognitiveServices::VideoSearch::V1_0::Models::Query
      VideoObject = Azure::CognitiveServices::VideoSearch::V1_0::Models::VideoObject
      VideoInsightModule = Azure::CognitiveServices::VideoSearch::V1_0::Models::VideoInsightModule
      PivotSuggestions = Azure::CognitiveServices::VideoSearch::V1_0::Models::PivotSuggestions
      SearchResultsAnswer = Azure::CognitiveServices::VideoSearch::V1_0::Models::SearchResultsAnswer
      Identifiable = Azure::CognitiveServices::VideoSearch::V1_0::Models::Identifiable
      Answer = Azure::CognitiveServices::VideoSearch::V1_0::Models::Answer
      Thing = Azure::CognitiveServices::VideoSearch::V1_0::Models::Thing
      CreativeWork = Azure::CognitiveServices::VideoSearch::V1_0::Models::CreativeWork
      ErrorCode = Azure::CognitiveServices::VideoSearch::V1_0::Models::ErrorCode
      ErrorSubCode = Azure::CognitiveServices::VideoSearch::V1_0::Models::ErrorSubCode
      SafeSearch = Azure::CognitiveServices::VideoSearch::V1_0::Models::SafeSearch
      TextFormat = Azure::CognitiveServices::VideoSearch::V1_0::Models::TextFormat
      Response = Azure::CognitiveServices::VideoSearch::V1_0::Models::Response
      Freshness = Azure::CognitiveServices::VideoSearch::V1_0::Models::Freshness
      ImageObject = Azure::CognitiveServices::VideoSearch::V1_0::Models::ImageObject
      MediaObject = Azure::CognitiveServices::VideoSearch::V1_0::Models::MediaObject
      TrendingVideosCategory = Azure::CognitiveServices::VideoSearch::V1_0::Models::TrendingVideosCategory
      TrendingVideosSubcategory = Azure::CognitiveServices::VideoSearch::V1_0::Models::TrendingVideosSubcategory
      VideosModule = Azure::CognitiveServices::VideoSearch::V1_0::Models::VideosModule
      TrendingVideosTile = Azure::CognitiveServices::VideoSearch::V1_0::Models::TrendingVideosTile
      Videos = Azure::CognitiveServices::VideoSearch::V1_0::Models::Videos
      TrendingVideos = Azure::CognitiveServices::VideoSearch::V1_0::Models::TrendingVideos
      VideoDetails = Azure::CognitiveServices::VideoSearch::V1_0::Models::VideoDetails
      Error = Azure::CognitiveServices::VideoSearch::V1_0::Models::Error
      ErrorResponse = Azure::CognitiveServices::VideoSearch::V1_0::Models::ErrorResponse
    end

    class VideoSearchDataClass
      attr_reader :videos_operations, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        @client_0 = Azure::CognitiveServices::VideoSearch::V1_0::VideoSearchClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @videos_operations = @client_0.videos_operations

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/VideoSearch"
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
        def video_length
          Azure::CognitiveServices::VideoSearch::V1_0::Models::VideoLength
        end
        def video_query_scenario
          Azure::CognitiveServices::VideoSearch::V1_0::Models::VideoQueryScenario
        end
        def video_resolution
          Azure::CognitiveServices::VideoSearch::V1_0::Models::VideoResolution
        end
        def video_pricing
          Azure::CognitiveServices::VideoSearch::V1_0::Models::VideoPricing
        end
        def response_base
          Azure::CognitiveServices::VideoSearch::V1_0::Models::ResponseBase
        end
        def query_context
          Azure::CognitiveServices::VideoSearch::V1_0::Models::QueryContext
        end
        def query
          Azure::CognitiveServices::VideoSearch::V1_0::Models::Query
        end
        def video_object
          Azure::CognitiveServices::VideoSearch::V1_0::Models::VideoObject
        end
        def video_insight_module
          Azure::CognitiveServices::VideoSearch::V1_0::Models::VideoInsightModule
        end
        def pivot_suggestions
          Azure::CognitiveServices::VideoSearch::V1_0::Models::PivotSuggestions
        end
        def search_results_answer
          Azure::CognitiveServices::VideoSearch::V1_0::Models::SearchResultsAnswer
        end
        def identifiable
          Azure::CognitiveServices::VideoSearch::V1_0::Models::Identifiable
        end
        def answer
          Azure::CognitiveServices::VideoSearch::V1_0::Models::Answer
        end
        def thing
          Azure::CognitiveServices::VideoSearch::V1_0::Models::Thing
        end
        def creative_work
          Azure::CognitiveServices::VideoSearch::V1_0::Models::CreativeWork
        end
        def error_code
          Azure::CognitiveServices::VideoSearch::V1_0::Models::ErrorCode
        end
        def error_sub_code
          Azure::CognitiveServices::VideoSearch::V1_0::Models::ErrorSubCode
        end
        def safe_search
          Azure::CognitiveServices::VideoSearch::V1_0::Models::SafeSearch
        end
        def text_format
          Azure::CognitiveServices::VideoSearch::V1_0::Models::TextFormat
        end
        def response
          Azure::CognitiveServices::VideoSearch::V1_0::Models::Response
        end
        def freshness
          Azure::CognitiveServices::VideoSearch::V1_0::Models::Freshness
        end
        def image_object
          Azure::CognitiveServices::VideoSearch::V1_0::Models::ImageObject
        end
        def media_object
          Azure::CognitiveServices::VideoSearch::V1_0::Models::MediaObject
        end
        def trending_videos_category
          Azure::CognitiveServices::VideoSearch::V1_0::Models::TrendingVideosCategory
        end
        def trending_videos_subcategory
          Azure::CognitiveServices::VideoSearch::V1_0::Models::TrendingVideosSubcategory
        end
        def videos_module
          Azure::CognitiveServices::VideoSearch::V1_0::Models::VideosModule
        end
        def trending_videos_tile
          Azure::CognitiveServices::VideoSearch::V1_0::Models::TrendingVideosTile
        end
        def videos
          Azure::CognitiveServices::VideoSearch::V1_0::Models::Videos
        end
        def trending_videos
          Azure::CognitiveServices::VideoSearch::V1_0::Models::TrendingVideos
        end
        def video_details
          Azure::CognitiveServices::VideoSearch::V1_0::Models::VideoDetails
        end
        def error
          Azure::CognitiveServices::VideoSearch::V1_0::Models::Error
        end
        def error_response
          Azure::CognitiveServices::VideoSearch::V1_0::Models::ErrorResponse
        end
      end
    end
  end
end
