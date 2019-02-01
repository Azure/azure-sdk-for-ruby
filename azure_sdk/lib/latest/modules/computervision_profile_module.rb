# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_cognitiveservices_computervision'

module Azure::Profiles::Latest
  module ComputerVision

    module Models
      Gender = Azure::CognitiveServices::ComputerVision::V2_0::Models::Gender
      TextOperationStatusCodes = Azure::CognitiveServices::ComputerVision::V2_0::Models::TextOperationStatusCodes
      OcrLanguages = Azure::CognitiveServices::ComputerVision::V2_0::Models::OcrLanguages
      VisualFeatureTypes = Azure::CognitiveServices::ComputerVision::V2_0::Models::VisualFeatureTypes
      TextRecognitionMode = Azure::CognitiveServices::ComputerVision::V2_0::Models::TextRecognitionMode
      Details = Azure::CognitiveServices::ComputerVision::V2_0::Models::Details
      ImageType = Azure::CognitiveServices::ComputerVision::V2_0::Models::ImageType
      ImageDescription = Azure::CognitiveServices::ComputerVision::V2_0::Models::ImageDescription
      DetectResult = Azure::CognitiveServices::ComputerVision::V2_0::Models::DetectResult
      CelebritiesModel = Azure::CognitiveServices::ComputerVision::V2_0::Models::CelebritiesModel
      ModelDescription = Azure::CognitiveServices::ComputerVision::V2_0::Models::ModelDescription
      CategoryDetail = Azure::CognitiveServices::ComputerVision::V2_0::Models::CategoryDetail
      ListModelsResult = Azure::CognitiveServices::ComputerVision::V2_0::Models::ListModelsResult
      AdultInfo = Azure::CognitiveServices::ComputerVision::V2_0::Models::AdultInfo
      DomainModelResults = Azure::CognitiveServices::ComputerVision::V2_0::Models::DomainModelResults
      OcrWord = Azure::CognitiveServices::ComputerVision::V2_0::Models::OcrWord
      ImageCaption = Azure::CognitiveServices::ComputerVision::V2_0::Models::ImageCaption
      OcrLine = Azure::CognitiveServices::ComputerVision::V2_0::Models::OcrLine
      FaceDescription = Azure::CognitiveServices::ComputerVision::V2_0::Models::FaceDescription
      OcrRegion = Azure::CognitiveServices::ComputerVision::V2_0::Models::OcrRegion
      ObjectHierarchy = Azure::CognitiveServices::ComputerVision::V2_0::Models::ObjectHierarchy
      OcrResult = Azure::CognitiveServices::ComputerVision::V2_0::Models::OcrResult
      DetectedBrand = Azure::CognitiveServices::ComputerVision::V2_0::Models::DetectedBrand
      TagResult = Azure::CognitiveServices::ComputerVision::V2_0::Models::TagResult
      ImageAnalysis = Azure::CognitiveServices::ComputerVision::V2_0::Models::ImageAnalysis
      AreaOfInterestResult = Azure::CognitiveServices::ComputerVision::V2_0::Models::AreaOfInterestResult
      LandmarksModel = Azure::CognitiveServices::ComputerVision::V2_0::Models::LandmarksModel
      ImageUrl = Azure::CognitiveServices::ComputerVision::V2_0::Models::ImageUrl
      ColorInfo = Azure::CognitiveServices::ComputerVision::V2_0::Models::ColorInfo
      ComputerVisionError = Azure::CognitiveServices::ComputerVision::V2_0::Models::ComputerVisionError
      ImageDescriptionDetails = Azure::CognitiveServices::ComputerVision::V2_0::Models::ImageDescriptionDetails
      LandmarkResults = Azure::CognitiveServices::ComputerVision::V2_0::Models::LandmarkResults
      DetectedObject = Azure::CognitiveServices::ComputerVision::V2_0::Models::DetectedObject
      CelebrityResults = Azure::CognitiveServices::ComputerVision::V2_0::Models::CelebrityResults
      FaceRectangle = Azure::CognitiveServices::ComputerVision::V2_0::Models::FaceRectangle
      Word = Azure::CognitiveServices::ComputerVision::V2_0::Models::Word
      ImageTag = Azure::CognitiveServices::ComputerVision::V2_0::Models::ImageTag
      Line = Azure::CognitiveServices::ComputerVision::V2_0::Models::Line
      ImageMetadata = Azure::CognitiveServices::ComputerVision::V2_0::Models::ImageMetadata
      RecognitionResult = Azure::CognitiveServices::ComputerVision::V2_0::Models::RecognitionResult
      BoundingRect = Azure::CognitiveServices::ComputerVision::V2_0::Models::BoundingRect
      TextOperationResult = Azure::CognitiveServices::ComputerVision::V2_0::Models::TextOperationResult
      Category = Azure::CognitiveServices::ComputerVision::V2_0::Models::Category
    end

    class ComputerVisionDataClass
      attr_reader :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        @client_0 = Azure::CognitiveServices::ComputerVision::V2_0::ComputerVisionClient.new(configurable.credentials, options)
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
        def gender
          Azure::CognitiveServices::ComputerVision::V2_0::Models::Gender
        end
        def text_operation_status_codes
          Azure::CognitiveServices::ComputerVision::V2_0::Models::TextOperationStatusCodes
        end
        def ocr_languages
          Azure::CognitiveServices::ComputerVision::V2_0::Models::OcrLanguages
        end
        def visual_feature_types
          Azure::CognitiveServices::ComputerVision::V2_0::Models::VisualFeatureTypes
        end
        def text_recognition_mode
          Azure::CognitiveServices::ComputerVision::V2_0::Models::TextRecognitionMode
        end
        def details
          Azure::CognitiveServices::ComputerVision::V2_0::Models::Details
        end
        def image_type
          Azure::CognitiveServices::ComputerVision::V2_0::Models::ImageType
        end
        def image_description
          Azure::CognitiveServices::ComputerVision::V2_0::Models::ImageDescription
        end
        def detect_result
          Azure::CognitiveServices::ComputerVision::V2_0::Models::DetectResult
        end
        def celebrities_model
          Azure::CognitiveServices::ComputerVision::V2_0::Models::CelebritiesModel
        end
        def model_description
          Azure::CognitiveServices::ComputerVision::V2_0::Models::ModelDescription
        end
        def category_detail
          Azure::CognitiveServices::ComputerVision::V2_0::Models::CategoryDetail
        end
        def list_models_result
          Azure::CognitiveServices::ComputerVision::V2_0::Models::ListModelsResult
        end
        def adult_info
          Azure::CognitiveServices::ComputerVision::V2_0::Models::AdultInfo
        end
        def domain_model_results
          Azure::CognitiveServices::ComputerVision::V2_0::Models::DomainModelResults
        end
        def ocr_word
          Azure::CognitiveServices::ComputerVision::V2_0::Models::OcrWord
        end
        def image_caption
          Azure::CognitiveServices::ComputerVision::V2_0::Models::ImageCaption
        end
        def ocr_line
          Azure::CognitiveServices::ComputerVision::V2_0::Models::OcrLine
        end
        def face_description
          Azure::CognitiveServices::ComputerVision::V2_0::Models::FaceDescription
        end
        def ocr_region
          Azure::CognitiveServices::ComputerVision::V2_0::Models::OcrRegion
        end
        def object_hierarchy
          Azure::CognitiveServices::ComputerVision::V2_0::Models::ObjectHierarchy
        end
        def ocr_result
          Azure::CognitiveServices::ComputerVision::V2_0::Models::OcrResult
        end
        def detected_brand
          Azure::CognitiveServices::ComputerVision::V2_0::Models::DetectedBrand
        end
        def tag_result
          Azure::CognitiveServices::ComputerVision::V2_0::Models::TagResult
        end
        def image_analysis
          Azure::CognitiveServices::ComputerVision::V2_0::Models::ImageAnalysis
        end
        def area_of_interest_result
          Azure::CognitiveServices::ComputerVision::V2_0::Models::AreaOfInterestResult
        end
        def landmarks_model
          Azure::CognitiveServices::ComputerVision::V2_0::Models::LandmarksModel
        end
        def image_url
          Azure::CognitiveServices::ComputerVision::V2_0::Models::ImageUrl
        end
        def color_info
          Azure::CognitiveServices::ComputerVision::V2_0::Models::ColorInfo
        end
        def computer_vision_error
          Azure::CognitiveServices::ComputerVision::V2_0::Models::ComputerVisionError
        end
        def image_description_details
          Azure::CognitiveServices::ComputerVision::V2_0::Models::ImageDescriptionDetails
        end
        def landmark_results
          Azure::CognitiveServices::ComputerVision::V2_0::Models::LandmarkResults
        end
        def detected_object
          Azure::CognitiveServices::ComputerVision::V2_0::Models::DetectedObject
        end
        def celebrity_results
          Azure::CognitiveServices::ComputerVision::V2_0::Models::CelebrityResults
        end
        def face_rectangle
          Azure::CognitiveServices::ComputerVision::V2_0::Models::FaceRectangle
        end
        def word
          Azure::CognitiveServices::ComputerVision::V2_0::Models::Word
        end
        def image_tag
          Azure::CognitiveServices::ComputerVision::V2_0::Models::ImageTag
        end
        def line
          Azure::CognitiveServices::ComputerVision::V2_0::Models::Line
        end
        def image_metadata
          Azure::CognitiveServices::ComputerVision::V2_0::Models::ImageMetadata
        end
        def recognition_result
          Azure::CognitiveServices::ComputerVision::V2_0::Models::RecognitionResult
        end
        def bounding_rect
          Azure::CognitiveServices::ComputerVision::V2_0::Models::BoundingRect
        end
        def text_operation_result
          Azure::CognitiveServices::ComputerVision::V2_0::Models::TextOperationResult
        end
        def category
          Azure::CognitiveServices::ComputerVision::V2_0::Models::Category
        end
      end
    end
  end
end
