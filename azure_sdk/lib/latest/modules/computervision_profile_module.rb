# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_cognitiveservices_computervision'

module Azure::Profiles::Latest
  module ComputerVision

    module Models
      Details = Azure::CognitiveServices::ComputerVision::V2_0::Models::Details
      DetectResult = Azure::CognitiveServices::ComputerVision::V2_0::Models::DetectResult
      FaceRectangle = Azure::CognitiveServices::ComputerVision::V2_0::Models::FaceRectangle
      ModelDescription = Azure::CognitiveServices::ComputerVision::V2_0::Models::ModelDescription
      LandmarksModel = Azure::CognitiveServices::ComputerVision::V2_0::Models::LandmarksModel
      ListModelsResult = Azure::CognitiveServices::ComputerVision::V2_0::Models::ListModelsResult
      Category = Azure::CognitiveServices::ComputerVision::V2_0::Models::Category
      DomainModelResults = Azure::CognitiveServices::ComputerVision::V2_0::Models::DomainModelResults
      ColorInfo = Azure::CognitiveServices::ComputerVision::V2_0::Models::ColorInfo
      OcrWord = Azure::CognitiveServices::ComputerVision::V2_0::Models::OcrWord
      ImageTag = Azure::CognitiveServices::ComputerVision::V2_0::Models::ImageTag
      OcrLine = Azure::CognitiveServices::ComputerVision::V2_0::Models::OcrLine
      ImageDescriptionDetails = Azure::CognitiveServices::ComputerVision::V2_0::Models::ImageDescriptionDetails
      OcrRegion = Azure::CognitiveServices::ComputerVision::V2_0::Models::OcrRegion
      BoundingRect = Azure::CognitiveServices::ComputerVision::V2_0::Models::BoundingRect
      OcrResult = Azure::CognitiveServices::ComputerVision::V2_0::Models::OcrResult
      DetectedObject = Azure::CognitiveServices::ComputerVision::V2_0::Models::DetectedObject
      TagResult = Azure::CognitiveServices::ComputerVision::V2_0::Models::TagResult
      ImageAnalysis = Azure::CognitiveServices::ComputerVision::V2_0::Models::ImageAnalysis
      AreaOfInterestResult = Azure::CognitiveServices::ComputerVision::V2_0::Models::AreaOfInterestResult
      CelebritiesModel = Azure::CognitiveServices::ComputerVision::V2_0::Models::CelebritiesModel
      ImageUrl = Azure::CognitiveServices::ComputerVision::V2_0::Models::ImageUrl
      AdultInfo = Azure::CognitiveServices::ComputerVision::V2_0::Models::AdultInfo
      ComputerVisionError = Azure::CognitiveServices::ComputerVision::V2_0::Models::ComputerVisionError
      ImageCaption = Azure::CognitiveServices::ComputerVision::V2_0::Models::ImageCaption
      LandmarkResults = Azure::CognitiveServices::ComputerVision::V2_0::Models::LandmarkResults
      ObjectHierarchy = Azure::CognitiveServices::ComputerVision::V2_0::Models::ObjectHierarchy
      CelebrityResults = Azure::CognitiveServices::ComputerVision::V2_0::Models::CelebrityResults
      ImageDescription = Azure::CognitiveServices::ComputerVision::V2_0::Models::ImageDescription
      Word = Azure::CognitiveServices::ComputerVision::V2_0::Models::Word
      ImageType = Azure::CognitiveServices::ComputerVision::V2_0::Models::ImageType
      Line = Azure::CognitiveServices::ComputerVision::V2_0::Models::Line
      ImageMetadata = Azure::CognitiveServices::ComputerVision::V2_0::Models::ImageMetadata
      RecognitionResult = Azure::CognitiveServices::ComputerVision::V2_0::Models::RecognitionResult
      FaceDescription = Azure::CognitiveServices::ComputerVision::V2_0::Models::FaceDescription
      TextOperationResult = Azure::CognitiveServices::ComputerVision::V2_0::Models::TextOperationResult
      CategoryDetail = Azure::CognitiveServices::ComputerVision::V2_0::Models::CategoryDetail
      Gender = Azure::CognitiveServices::ComputerVision::V2_0::Models::Gender
      TextOperationStatusCodes = Azure::CognitiveServices::ComputerVision::V2_0::Models::TextOperationStatusCodes
      OcrLanguages = Azure::CognitiveServices::ComputerVision::V2_0::Models::OcrLanguages
      VisualFeatureTypes = Azure::CognitiveServices::ComputerVision::V2_0::Models::VisualFeatureTypes
      TextRecognitionMode = Azure::CognitiveServices::ComputerVision::V2_0::Models::TextRecognitionMode
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
        def details
          Azure::CognitiveServices::ComputerVision::V2_0::Models::Details
        end
        def detect_result
          Azure::CognitiveServices::ComputerVision::V2_0::Models::DetectResult
        end
        def face_rectangle
          Azure::CognitiveServices::ComputerVision::V2_0::Models::FaceRectangle
        end
        def model_description
          Azure::CognitiveServices::ComputerVision::V2_0::Models::ModelDescription
        end
        def landmarks_model
          Azure::CognitiveServices::ComputerVision::V2_0::Models::LandmarksModel
        end
        def list_models_result
          Azure::CognitiveServices::ComputerVision::V2_0::Models::ListModelsResult
        end
        def category
          Azure::CognitiveServices::ComputerVision::V2_0::Models::Category
        end
        def domain_model_results
          Azure::CognitiveServices::ComputerVision::V2_0::Models::DomainModelResults
        end
        def color_info
          Azure::CognitiveServices::ComputerVision::V2_0::Models::ColorInfo
        end
        def ocr_word
          Azure::CognitiveServices::ComputerVision::V2_0::Models::OcrWord
        end
        def image_tag
          Azure::CognitiveServices::ComputerVision::V2_0::Models::ImageTag
        end
        def ocr_line
          Azure::CognitiveServices::ComputerVision::V2_0::Models::OcrLine
        end
        def image_description_details
          Azure::CognitiveServices::ComputerVision::V2_0::Models::ImageDescriptionDetails
        end
        def ocr_region
          Azure::CognitiveServices::ComputerVision::V2_0::Models::OcrRegion
        end
        def bounding_rect
          Azure::CognitiveServices::ComputerVision::V2_0::Models::BoundingRect
        end
        def ocr_result
          Azure::CognitiveServices::ComputerVision::V2_0::Models::OcrResult
        end
        def detected_object
          Azure::CognitiveServices::ComputerVision::V2_0::Models::DetectedObject
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
        def celebrities_model
          Azure::CognitiveServices::ComputerVision::V2_0::Models::CelebritiesModel
        end
        def image_url
          Azure::CognitiveServices::ComputerVision::V2_0::Models::ImageUrl
        end
        def adult_info
          Azure::CognitiveServices::ComputerVision::V2_0::Models::AdultInfo
        end
        def computer_vision_error
          Azure::CognitiveServices::ComputerVision::V2_0::Models::ComputerVisionError
        end
        def image_caption
          Azure::CognitiveServices::ComputerVision::V2_0::Models::ImageCaption
        end
        def landmark_results
          Azure::CognitiveServices::ComputerVision::V2_0::Models::LandmarkResults
        end
        def object_hierarchy
          Azure::CognitiveServices::ComputerVision::V2_0::Models::ObjectHierarchy
        end
        def celebrity_results
          Azure::CognitiveServices::ComputerVision::V2_0::Models::CelebrityResults
        end
        def image_description
          Azure::CognitiveServices::ComputerVision::V2_0::Models::ImageDescription
        end
        def word
          Azure::CognitiveServices::ComputerVision::V2_0::Models::Word
        end
        def image_type
          Azure::CognitiveServices::ComputerVision::V2_0::Models::ImageType
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
        def face_description
          Azure::CognitiveServices::ComputerVision::V2_0::Models::FaceDescription
        end
        def text_operation_result
          Azure::CognitiveServices::ComputerVision::V2_0::Models::TextOperationResult
        end
        def category_detail
          Azure::CognitiveServices::ComputerVision::V2_0::Models::CategoryDetail
        end
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
      end
    end
  end
end
