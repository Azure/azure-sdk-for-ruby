# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_cognitiveservices_computervision'

module Azure::Profiles::Latest
  module ComputerVision

    module Models
      DetectResult = Azure::CognitiveServices::ComputerVision::V2_1::Models::DetectResult
      FaceRectangle = Azure::CognitiveServices::ComputerVision::V2_1::Models::FaceRectangle
      ModelDescription = Azure::CognitiveServices::ComputerVision::V2_1::Models::ModelDescription
      LandmarksModel = Azure::CognitiveServices::ComputerVision::V2_1::Models::LandmarksModel
      ListModelsResult = Azure::CognitiveServices::ComputerVision::V2_1::Models::ListModelsResult
      Category = Azure::CognitiveServices::ComputerVision::V2_1::Models::Category
      DomainModelResults = Azure::CognitiveServices::ComputerVision::V2_1::Models::DomainModelResults
      ColorInfo = Azure::CognitiveServices::ComputerVision::V2_1::Models::ColorInfo
      OcrWord = Azure::CognitiveServices::ComputerVision::V2_1::Models::OcrWord
      ImageTag = Azure::CognitiveServices::ComputerVision::V2_1::Models::ImageTag
      OcrLine = Azure::CognitiveServices::ComputerVision::V2_1::Models::OcrLine
      ImageDescriptionDetails = Azure::CognitiveServices::ComputerVision::V2_1::Models::ImageDescriptionDetails
      OcrRegion = Azure::CognitiveServices::ComputerVision::V2_1::Models::OcrRegion
      BoundingRect = Azure::CognitiveServices::ComputerVision::V2_1::Models::BoundingRect
      OcrResult = Azure::CognitiveServices::ComputerVision::V2_1::Models::OcrResult
      DetectedObject = Azure::CognitiveServices::ComputerVision::V2_1::Models::DetectedObject
      TagResult = Azure::CognitiveServices::ComputerVision::V2_1::Models::TagResult
      ImageMetadata = Azure::CognitiveServices::ComputerVision::V2_1::Models::ImageMetadata
      AreaOfInterestResult = Azure::CognitiveServices::ComputerVision::V2_1::Models::AreaOfInterestResult
      ImageDescription = Azure::CognitiveServices::ComputerVision::V2_1::Models::ImageDescription
      ImageUrl = Azure::CognitiveServices::ComputerVision::V2_1::Models::ImageUrl
      CategoryDetail = Azure::CognitiveServices::ComputerVision::V2_1::Models::CategoryDetail
      ComputerVisionError = Azure::CognitiveServices::ComputerVision::V2_1::Models::ComputerVisionError
      ImageType = Azure::CognitiveServices::ComputerVision::V2_1::Models::ImageType
      LandmarkResults = Azure::CognitiveServices::ComputerVision::V2_1::Models::LandmarkResults
      FaceDescription = Azure::CognitiveServices::ComputerVision::V2_1::Models::FaceDescription
      CelebrityResults = Azure::CognitiveServices::ComputerVision::V2_1::Models::CelebrityResults
      DetectedBrand = Azure::CognitiveServices::ComputerVision::V2_1::Models::DetectedBrand
      Word = Azure::CognitiveServices::ComputerVision::V2_1::Models::Word
      CelebritiesModel = Azure::CognitiveServices::ComputerVision::V2_1::Models::CelebritiesModel
      Line = Azure::CognitiveServices::ComputerVision::V2_1::Models::Line
      ImageCaption = Azure::CognitiveServices::ComputerVision::V2_1::Models::ImageCaption
      TextRecognitionResult = Azure::CognitiveServices::ComputerVision::V2_1::Models::TextRecognitionResult
      ImageAnalysis = Azure::CognitiveServices::ComputerVision::V2_1::Models::ImageAnalysis
      TextOperationResult = Azure::CognitiveServices::ComputerVision::V2_1::Models::TextOperationResult
      ObjectHierarchy = Azure::CognitiveServices::ComputerVision::V2_1::Models::ObjectHierarchy
      ReadOperationResult = Azure::CognitiveServices::ComputerVision::V2_1::Models::ReadOperationResult
      AdultInfo = Azure::CognitiveServices::ComputerVision::V2_1::Models::AdultInfo
      Gender = Azure::CognitiveServices::ComputerVision::V2_1::Models::Gender
      TextOperationStatusCodes = Azure::CognitiveServices::ComputerVision::V2_1::Models::TextOperationStatusCodes
      TextRecognitionResultDimensionUnit = Azure::CognitiveServices::ComputerVision::V2_1::Models::TextRecognitionResultDimensionUnit
      TextRecognitionResultConfidenceClass = Azure::CognitiveServices::ComputerVision::V2_1::Models::TextRecognitionResultConfidenceClass
      DescriptionExclude = Azure::CognitiveServices::ComputerVision::V2_1::Models::DescriptionExclude
      OcrLanguages = Azure::CognitiveServices::ComputerVision::V2_1::Models::OcrLanguages
      VisualFeatureTypes = Azure::CognitiveServices::ComputerVision::V2_1::Models::VisualFeatureTypes
      TextRecognitionMode = Azure::CognitiveServices::ComputerVision::V2_1::Models::TextRecognitionMode
      Details = Azure::CognitiveServices::ComputerVision::V2_1::Models::Details
    end

    class ComputerVisionDataClass
      attr_reader :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        @client_0 = Azure::CognitiveServices::ComputerVision::V2_1::ComputerVisionClient.new(configurable.credentials, options)
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
        def detect_result
          Azure::CognitiveServices::ComputerVision::V2_1::Models::DetectResult
        end
        def face_rectangle
          Azure::CognitiveServices::ComputerVision::V2_1::Models::FaceRectangle
        end
        def model_description
          Azure::CognitiveServices::ComputerVision::V2_1::Models::ModelDescription
        end
        def landmarks_model
          Azure::CognitiveServices::ComputerVision::V2_1::Models::LandmarksModel
        end
        def list_models_result
          Azure::CognitiveServices::ComputerVision::V2_1::Models::ListModelsResult
        end
        def category
          Azure::CognitiveServices::ComputerVision::V2_1::Models::Category
        end
        def domain_model_results
          Azure::CognitiveServices::ComputerVision::V2_1::Models::DomainModelResults
        end
        def color_info
          Azure::CognitiveServices::ComputerVision::V2_1::Models::ColorInfo
        end
        def ocr_word
          Azure::CognitiveServices::ComputerVision::V2_1::Models::OcrWord
        end
        def image_tag
          Azure::CognitiveServices::ComputerVision::V2_1::Models::ImageTag
        end
        def ocr_line
          Azure::CognitiveServices::ComputerVision::V2_1::Models::OcrLine
        end
        def image_description_details
          Azure::CognitiveServices::ComputerVision::V2_1::Models::ImageDescriptionDetails
        end
        def ocr_region
          Azure::CognitiveServices::ComputerVision::V2_1::Models::OcrRegion
        end
        def bounding_rect
          Azure::CognitiveServices::ComputerVision::V2_1::Models::BoundingRect
        end
        def ocr_result
          Azure::CognitiveServices::ComputerVision::V2_1::Models::OcrResult
        end
        def detected_object
          Azure::CognitiveServices::ComputerVision::V2_1::Models::DetectedObject
        end
        def tag_result
          Azure::CognitiveServices::ComputerVision::V2_1::Models::TagResult
        end
        def image_metadata
          Azure::CognitiveServices::ComputerVision::V2_1::Models::ImageMetadata
        end
        def area_of_interest_result
          Azure::CognitiveServices::ComputerVision::V2_1::Models::AreaOfInterestResult
        end
        def image_description
          Azure::CognitiveServices::ComputerVision::V2_1::Models::ImageDescription
        end
        def image_url
          Azure::CognitiveServices::ComputerVision::V2_1::Models::ImageUrl
        end
        def category_detail
          Azure::CognitiveServices::ComputerVision::V2_1::Models::CategoryDetail
        end
        def computer_vision_error
          Azure::CognitiveServices::ComputerVision::V2_1::Models::ComputerVisionError
        end
        def image_type
          Azure::CognitiveServices::ComputerVision::V2_1::Models::ImageType
        end
        def landmark_results
          Azure::CognitiveServices::ComputerVision::V2_1::Models::LandmarkResults
        end
        def face_description
          Azure::CognitiveServices::ComputerVision::V2_1::Models::FaceDescription
        end
        def celebrity_results
          Azure::CognitiveServices::ComputerVision::V2_1::Models::CelebrityResults
        end
        def detected_brand
          Azure::CognitiveServices::ComputerVision::V2_1::Models::DetectedBrand
        end
        def word
          Azure::CognitiveServices::ComputerVision::V2_1::Models::Word
        end
        def celebrities_model
          Azure::CognitiveServices::ComputerVision::V2_1::Models::CelebritiesModel
        end
        def line
          Azure::CognitiveServices::ComputerVision::V2_1::Models::Line
        end
        def image_caption
          Azure::CognitiveServices::ComputerVision::V2_1::Models::ImageCaption
        end
        def text_recognition_result
          Azure::CognitiveServices::ComputerVision::V2_1::Models::TextRecognitionResult
        end
        def image_analysis
          Azure::CognitiveServices::ComputerVision::V2_1::Models::ImageAnalysis
        end
        def text_operation_result
          Azure::CognitiveServices::ComputerVision::V2_1::Models::TextOperationResult
        end
        def object_hierarchy
          Azure::CognitiveServices::ComputerVision::V2_1::Models::ObjectHierarchy
        end
        def read_operation_result
          Azure::CognitiveServices::ComputerVision::V2_1::Models::ReadOperationResult
        end
        def adult_info
          Azure::CognitiveServices::ComputerVision::V2_1::Models::AdultInfo
        end
        def gender
          Azure::CognitiveServices::ComputerVision::V2_1::Models::Gender
        end
        def text_operation_status_codes
          Azure::CognitiveServices::ComputerVision::V2_1::Models::TextOperationStatusCodes
        end
        def text_recognition_result_dimension_unit
          Azure::CognitiveServices::ComputerVision::V2_1::Models::TextRecognitionResultDimensionUnit
        end
        def text_recognition_result_confidence_class
          Azure::CognitiveServices::ComputerVision::V2_1::Models::TextRecognitionResultConfidenceClass
        end
        def description_exclude
          Azure::CognitiveServices::ComputerVision::V2_1::Models::DescriptionExclude
        end
        def ocr_languages
          Azure::CognitiveServices::ComputerVision::V2_1::Models::OcrLanguages
        end
        def visual_feature_types
          Azure::CognitiveServices::ComputerVision::V2_1::Models::VisualFeatureTypes
        end
        def text_recognition_mode
          Azure::CognitiveServices::ComputerVision::V2_1::Models::TextRecognitionMode
        end
        def details
          Azure::CognitiveServices::ComputerVision::V2_1::Models::Details
        end
      end
    end
  end
end
