# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_cognitiveservices_customimagesearch'

module Azure::Profiles::Latest
  module Customimagesearch
    CustomInstance = Azure::CognitiveServices::Customimagesearch::V1_0::CustomInstance

    module Models
      Query = Azure::CognitiveServices::Customimagesearch::V1_0::Models::Query
      ImageObject = Azure::CognitiveServices::Customimagesearch::V1_0::Models::ImageObject
      MediaObject = Azure::CognitiveServices::Customimagesearch::V1_0::Models::MediaObject
      ErrorResponse = Azure::CognitiveServices::Customimagesearch::V1_0::Models::ErrorResponse
      WebPage = Azure::CognitiveServices::Customimagesearch::V1_0::Models::WebPage
      ImageAspect = Azure::CognitiveServices::Customimagesearch::V1_0::Models::ImageAspect
      ImageColor = Azure::CognitiveServices::Customimagesearch::V1_0::Models::ImageColor
      ErrorSubCode = Azure::CognitiveServices::Customimagesearch::V1_0::Models::ErrorSubCode
      ImageContent = Azure::CognitiveServices::Customimagesearch::V1_0::Models::ImageContent
      ImageType = Azure::CognitiveServices::Customimagesearch::V1_0::Models::ImageType
      Freshness = Azure::CognitiveServices::Customimagesearch::V1_0::Models::Freshness
      ImageLicense = Azure::CognitiveServices::Customimagesearch::V1_0::Models::ImageLicense
      ImageSize = Azure::CognitiveServices::Customimagesearch::V1_0::Models::ImageSize
      Images = Azure::CognitiveServices::Customimagesearch::V1_0::Models::Images
      Response = Azure::CognitiveServices::Customimagesearch::V1_0::Models::Response
      ResponseBase = Azure::CognitiveServices::Customimagesearch::V1_0::Models::ResponseBase
      Answer = Azure::CognitiveServices::Customimagesearch::V1_0::Models::Answer
      SearchResultsAnswer = Azure::CognitiveServices::Customimagesearch::V1_0::Models::SearchResultsAnswer
      Thing = Azure::CognitiveServices::Customimagesearch::V1_0::Models::Thing
      CreativeWork = Azure::CognitiveServices::Customimagesearch::V1_0::Models::CreativeWork
      Identifiable = Azure::CognitiveServices::Customimagesearch::V1_0::Models::Identifiable
      ErrorCode = Azure::CognitiveServices::Customimagesearch::V1_0::Models::ErrorCode
      SafeSearch = Azure::CognitiveServices::Customimagesearch::V1_0::Models::SafeSearch
      Error = Azure::CognitiveServices::Customimagesearch::V1_0::Models::Error
    end

    class CustomimagesearchDataClass
      attr_reader :custom_instance, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        @client_0 = Azure::CognitiveServices::Customimagesearch::V1_0::CustomimagesearchClient.new(configurable.credentials, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @custom_instance = @client_0.custom_instance

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Customimagesearch"
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
        def query
          Azure::CognitiveServices::Customimagesearch::V1_0::Models::Query
        end
        def image_object
          Azure::CognitiveServices::Customimagesearch::V1_0::Models::ImageObject
        end
        def media_object
          Azure::CognitiveServices::Customimagesearch::V1_0::Models::MediaObject
        end
        def error_response
          Azure::CognitiveServices::Customimagesearch::V1_0::Models::ErrorResponse
        end
        def web_page
          Azure::CognitiveServices::Customimagesearch::V1_0::Models::WebPage
        end
        def image_aspect
          Azure::CognitiveServices::Customimagesearch::V1_0::Models::ImageAspect
        end
        def image_color
          Azure::CognitiveServices::Customimagesearch::V1_0::Models::ImageColor
        end
        def error_sub_code
          Azure::CognitiveServices::Customimagesearch::V1_0::Models::ErrorSubCode
        end
        def image_content
          Azure::CognitiveServices::Customimagesearch::V1_0::Models::ImageContent
        end
        def image_type
          Azure::CognitiveServices::Customimagesearch::V1_0::Models::ImageType
        end
        def freshness
          Azure::CognitiveServices::Customimagesearch::V1_0::Models::Freshness
        end
        def image_license
          Azure::CognitiveServices::Customimagesearch::V1_0::Models::ImageLicense
        end
        def image_size
          Azure::CognitiveServices::Customimagesearch::V1_0::Models::ImageSize
        end
        def images
          Azure::CognitiveServices::Customimagesearch::V1_0::Models::Images
        end
        def response
          Azure::CognitiveServices::Customimagesearch::V1_0::Models::Response
        end
        def response_base
          Azure::CognitiveServices::Customimagesearch::V1_0::Models::ResponseBase
        end
        def answer
          Azure::CognitiveServices::Customimagesearch::V1_0::Models::Answer
        end
        def search_results_answer
          Azure::CognitiveServices::Customimagesearch::V1_0::Models::SearchResultsAnswer
        end
        def thing
          Azure::CognitiveServices::Customimagesearch::V1_0::Models::Thing
        end
        def creative_work
          Azure::CognitiveServices::Customimagesearch::V1_0::Models::CreativeWork
        end
        def identifiable
          Azure::CognitiveServices::Customimagesearch::V1_0::Models::Identifiable
        end
        def error_code
          Azure::CognitiveServices::Customimagesearch::V1_0::Models::ErrorCode
        end
        def safe_search
          Azure::CognitiveServices::Customimagesearch::V1_0::Models::SafeSearch
        end
        def error
          Azure::CognitiveServices::Customimagesearch::V1_0::Models::Error
        end
      end
    end
  end
end
