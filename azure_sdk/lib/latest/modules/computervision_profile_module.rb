# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_cognitiveservices_computervision'

module Azure::Profiles::Latest
  module ComputerVision

    module Models
      ImageDescriptionDetails = Azure::CognitiveServices::ComputerVision::V1_0::Models::ImageDescriptionDetails
      TextOperationStatusCodes = Azure::CognitiveServices::ComputerVision::V1_0::Models::TextOperationStatusCodes
      Gender = Azure::CognitiveServices::ComputerVision::V1_0::Models::Gender
      ComputerVisionErrorCodes = Azure::CognitiveServices::ComputerVision::V1_0::Models::ComputerVisionErrorCodes
      VisualFeatureTypes = Azure::CognitiveServices::ComputerVision::V1_0::Models::VisualFeatureTypes
      OcrLanguages = Azure::CognitiveServices::ComputerVision::V1_0::Models::OcrLanguages
      AzureRegions = Azure::CognitiveServices::ComputerVision::V1_0::Models::AzureRegions
      Details = Azure::CognitiveServices::ComputerVision::V1_0::Models::Details
      FaceDescription = Azure::CognitiveServices::ComputerVision::V1_0::Models::FaceDescription
      ImageAnalysis = Azure::CognitiveServices::ComputerVision::V1_0::Models::ImageAnalysis
      Line = Azure::CognitiveServices::ComputerVision::V1_0::Models::Line
      OcrWord = Azure::CognitiveServices::ComputerVision::V1_0::Models::OcrWord
      TextOperationResult = Azure::CognitiveServices::ComputerVision::V1_0::Models::TextOperationResult
      OcrLine = Azure::CognitiveServices::ComputerVision::V1_0::Models::OcrLine
      CelebritiesModel = Azure::CognitiveServices::ComputerVision::V1_0::Models::CelebritiesModel
      OcrRegion = Azure::CognitiveServices::ComputerVision::V1_0::Models::OcrRegion
      Category = Azure::CognitiveServices::ComputerVision::V1_0::Models::Category
      OcrResult = Azure::CognitiveServices::ComputerVision::V1_0::Models::OcrResult
      ColorInfo = Azure::CognitiveServices::ComputerVision::V1_0::Models::ColorInfo
      ModelDescription = Azure::CognitiveServices::ComputerVision::V1_0::Models::ModelDescription
      ImageTag = Azure::CognitiveServices::ComputerVision::V1_0::Models::ImageTag
      ListModelsResult = Azure::CognitiveServices::ComputerVision::V1_0::Models::ListModelsResult
      ImageMetadata = Azure::CognitiveServices::ComputerVision::V1_0::Models::ImageMetadata
      DomainModelResults = Azure::CognitiveServices::ComputerVision::V1_0::Models::DomainModelResults
      Word = Azure::CognitiveServices::ComputerVision::V1_0::Models::Word
      CelebrityResults = Azure::CognitiveServices::ComputerVision::V1_0::Models::CelebrityResults
      FaceRectangle = Azure::CognitiveServices::ComputerVision::V1_0::Models::FaceRectangle
      LandmarkResultsLandmarksItem = Azure::CognitiveServices::ComputerVision::V1_0::Models::LandmarkResultsLandmarksItem
      AdultInfo = Azure::CognitiveServices::ComputerVision::V1_0::Models::AdultInfo
      LandmarkResults = Azure::CognitiveServices::ComputerVision::V1_0::Models::LandmarkResults
      ImageCaption = Azure::CognitiveServices::ComputerVision::V1_0::Models::ImageCaption
      ImageDescription = Azure::CognitiveServices::ComputerVision::V1_0::Models::ImageDescription
      RecognitionResult = Azure::CognitiveServices::ComputerVision::V1_0::Models::RecognitionResult
      TagResult = Azure::CognitiveServices::ComputerVision::V1_0::Models::TagResult
      ImageType = Azure::CognitiveServices::ComputerVision::V1_0::Models::ImageType
      ComputerVisionError = Azure::CognitiveServices::ComputerVision::V1_0::Models::ComputerVisionError
      CategoryDetail = Azure::CognitiveServices::ComputerVision::V1_0::Models::CategoryDetail
      ImageUrl = Azure::CognitiveServices::ComputerVision::V1_0::Models::ImageUrl
    end

    class ComputerVisionDataClass
      attr_reader :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        @client_0 = Azure::CognitiveServices::ComputerVision::V1_0::ComputerVisionClient.new(configurable.credentials, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/ComputerVision"
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
        def image_description_details
          Azure::CognitiveServices::ComputerVision::V1_0::Models::ImageDescriptionDetails
        end
        def text_operation_status_codes
          Azure::CognitiveServices::ComputerVision::V1_0::Models::TextOperationStatusCodes
        end
        def gender
          Azure::CognitiveServices::ComputerVision::V1_0::Models::Gender
        end
        def computer_vision_error_codes
          Azure::CognitiveServices::ComputerVision::V1_0::Models::ComputerVisionErrorCodes
        end
        def visual_feature_types
          Azure::CognitiveServices::ComputerVision::V1_0::Models::VisualFeatureTypes
        end
        def ocr_languages
          Azure::CognitiveServices::ComputerVision::V1_0::Models::OcrLanguages
        end
        def azure_regions
          Azure::CognitiveServices::ComputerVision::V1_0::Models::AzureRegions
        end
        def details
          Azure::CognitiveServices::ComputerVision::V1_0::Models::Details
        end
        def face_description
          Azure::CognitiveServices::ComputerVision::V1_0::Models::FaceDescription
        end
        def image_analysis
          Azure::CognitiveServices::ComputerVision::V1_0::Models::ImageAnalysis
        end
        def line
          Azure::CognitiveServices::ComputerVision::V1_0::Models::Line
        end
        def ocr_word
          Azure::CognitiveServices::ComputerVision::V1_0::Models::OcrWord
        end
        def text_operation_result
          Azure::CognitiveServices::ComputerVision::V1_0::Models::TextOperationResult
        end
        def ocr_line
          Azure::CognitiveServices::ComputerVision::V1_0::Models::OcrLine
        end
        def celebrities_model
          Azure::CognitiveServices::ComputerVision::V1_0::Models::CelebritiesModel
        end
        def ocr_region
          Azure::CognitiveServices::ComputerVision::V1_0::Models::OcrRegion
        end
        def category
          Azure::CognitiveServices::ComputerVision::V1_0::Models::Category
        end
        def ocr_result
          Azure::CognitiveServices::ComputerVision::V1_0::Models::OcrResult
        end
        def color_info
          Azure::CognitiveServices::ComputerVision::V1_0::Models::ColorInfo
        end
        def model_description
          Azure::CognitiveServices::ComputerVision::V1_0::Models::ModelDescription
        end
        def image_tag
          Azure::CognitiveServices::ComputerVision::V1_0::Models::ImageTag
        end
        def list_models_result
          Azure::CognitiveServices::ComputerVision::V1_0::Models::ListModelsResult
        end
        def image_metadata
          Azure::CognitiveServices::ComputerVision::V1_0::Models::ImageMetadata
        end
        def domain_model_results
          Azure::CognitiveServices::ComputerVision::V1_0::Models::DomainModelResults
        end
        def word
          Azure::CognitiveServices::ComputerVision::V1_0::Models::Word
        end
        def celebrity_results
          Azure::CognitiveServices::ComputerVision::V1_0::Models::CelebrityResults
        end
        def face_rectangle
          Azure::CognitiveServices::ComputerVision::V1_0::Models::FaceRectangle
        end
        def landmark_results_landmarks_item
          Azure::CognitiveServices::ComputerVision::V1_0::Models::LandmarkResultsLandmarksItem
        end
        def adult_info
          Azure::CognitiveServices::ComputerVision::V1_0::Models::AdultInfo
        end
        def landmark_results
          Azure::CognitiveServices::ComputerVision::V1_0::Models::LandmarkResults
        end
        def image_caption
          Azure::CognitiveServices::ComputerVision::V1_0::Models::ImageCaption
        end
        def image_description
          Azure::CognitiveServices::ComputerVision::V1_0::Models::ImageDescription
        end
        def recognition_result
          Azure::CognitiveServices::ComputerVision::V1_0::Models::RecognitionResult
        end
        def tag_result
          Azure::CognitiveServices::ComputerVision::V1_0::Models::TagResult
        end
        def image_type
          Azure::CognitiveServices::ComputerVision::V1_0::Models::ImageType
        end
        def computer_vision_error
          Azure::CognitiveServices::ComputerVision::V1_0::Models::ComputerVisionError
        end
        def category_detail
          Azure::CognitiveServices::ComputerVision::V1_0::Models::CategoryDetail
        end
        def image_url
          Azure::CognitiveServices::ComputerVision::V1_0::Models::ImageUrl
        end
      end
    end
  end
end
