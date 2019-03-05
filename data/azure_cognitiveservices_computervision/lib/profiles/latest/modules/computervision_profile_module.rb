# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_cognitiveservices_computervision'

module Azure::ComputerVision::Profiles::Latest

  module Models
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
    ImageMetadata = Azure::CognitiveServices::ComputerVision::V2_0::Models::ImageMetadata
    AreaOfInterestResult = Azure::CognitiveServices::ComputerVision::V2_0::Models::AreaOfInterestResult
    ImageDescription = Azure::CognitiveServices::ComputerVision::V2_0::Models::ImageDescription
    ImageUrl = Azure::CognitiveServices::ComputerVision::V2_0::Models::ImageUrl
    CategoryDetail = Azure::CognitiveServices::ComputerVision::V2_0::Models::CategoryDetail
    ComputerVisionError = Azure::CognitiveServices::ComputerVision::V2_0::Models::ComputerVisionError
    ImageType = Azure::CognitiveServices::ComputerVision::V2_0::Models::ImageType
    LandmarkResults = Azure::CognitiveServices::ComputerVision::V2_0::Models::LandmarkResults
    FaceDescription = Azure::CognitiveServices::ComputerVision::V2_0::Models::FaceDescription
    CelebrityResults = Azure::CognitiveServices::ComputerVision::V2_0::Models::CelebrityResults
    DetectedBrand = Azure::CognitiveServices::ComputerVision::V2_0::Models::DetectedBrand
    Word = Azure::CognitiveServices::ComputerVision::V2_0::Models::Word
    CelebritiesModel = Azure::CognitiveServices::ComputerVision::V2_0::Models::CelebritiesModel
    Line = Azure::CognitiveServices::ComputerVision::V2_0::Models::Line
    ImageCaption = Azure::CognitiveServices::ComputerVision::V2_0::Models::ImageCaption
    TextRecognitionResult = Azure::CognitiveServices::ComputerVision::V2_0::Models::TextRecognitionResult
    ImageAnalysis = Azure::CognitiveServices::ComputerVision::V2_0::Models::ImageAnalysis
    TextOperationResult = Azure::CognitiveServices::ComputerVision::V2_0::Models::TextOperationResult
    ObjectHierarchy = Azure::CognitiveServices::ComputerVision::V2_0::Models::ObjectHierarchy
    ReadOperationResult = Azure::CognitiveServices::ComputerVision::V2_0::Models::ReadOperationResult
    AdultInfo = Azure::CognitiveServices::ComputerVision::V2_0::Models::AdultInfo
    Gender = Azure::CognitiveServices::ComputerVision::V2_0::Models::Gender
    TextOperationStatusCodes = Azure::CognitiveServices::ComputerVision::V2_0::Models::TextOperationStatusCodes
    TextRecognitionResultDimensionUnit = Azure::CognitiveServices::ComputerVision::V2_0::Models::TextRecognitionResultDimensionUnit
    TextRecognitionResultConfidenceClass = Azure::CognitiveServices::ComputerVision::V2_0::Models::TextRecognitionResultConfidenceClass
    OcrLanguages = Azure::CognitiveServices::ComputerVision::V2_0::Models::OcrLanguages
    VisualFeatureTypes = Azure::CognitiveServices::ComputerVision::V2_0::Models::VisualFeatureTypes
    TextRecognitionMode = Azure::CognitiveServices::ComputerVision::V2_0::Models::TextRecognitionMode
    Details = Azure::CognitiveServices::ComputerVision::V2_0::Models::Details
  end

  #
  # ComputerVisionDataClass
  #
  class ComputerVisionDataClass
    attr_reader :configurable, :base_url, :options, :model_classes

    def initialize(options = {})
      if options.is_a?(Hash) && options.length == 0
        @options = setup_default_options
      else
        @options = options
      end

      reset!(options)

      @configurable = self
      @base_url = options[:base_url].nil? ? nil:options[:base_url]
      @options = options[:options].nil? ? nil:options[:options]

      @client_0 = Azure::CognitiveServices::ComputerVision::V2_0::ComputerVisionClient.new(configurable.credentials, options)
      if(@client_0.respond_to?(:subscription_id))
        @client_0.subscription_id = configurable.subscription_id
      end
      add_telemetry(@client_0)

      @model_classes = ModelClasses.new
    end

    def add_telemetry(client)
      profile_information = 'Profiles/Latest/ComputerVision'
      client.add_user_agent_information(profile_information)
    end

    def method_missing(method, *args)
      if @client_0.respond_to?method
        @client_0.send(method, *args)
      else
        super
      end
    end

  end

  class ModelClasses
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
    def image_metadata
      Azure::CognitiveServices::ComputerVision::V2_0::Models::ImageMetadata
    end
    def area_of_interest_result
      Azure::CognitiveServices::ComputerVision::V2_0::Models::AreaOfInterestResult
    end
    def image_description
      Azure::CognitiveServices::ComputerVision::V2_0::Models::ImageDescription
    end
    def image_url
      Azure::CognitiveServices::ComputerVision::V2_0::Models::ImageUrl
    end
    def category_detail
      Azure::CognitiveServices::ComputerVision::V2_0::Models::CategoryDetail
    end
    def computer_vision_error
      Azure::CognitiveServices::ComputerVision::V2_0::Models::ComputerVisionError
    end
    def image_type
      Azure::CognitiveServices::ComputerVision::V2_0::Models::ImageType
    end
    def landmark_results
      Azure::CognitiveServices::ComputerVision::V2_0::Models::LandmarkResults
    end
    def face_description
      Azure::CognitiveServices::ComputerVision::V2_0::Models::FaceDescription
    end
    def celebrity_results
      Azure::CognitiveServices::ComputerVision::V2_0::Models::CelebrityResults
    end
    def detected_brand
      Azure::CognitiveServices::ComputerVision::V2_0::Models::DetectedBrand
    end
    def word
      Azure::CognitiveServices::ComputerVision::V2_0::Models::Word
    end
    def celebrities_model
      Azure::CognitiveServices::ComputerVision::V2_0::Models::CelebritiesModel
    end
    def line
      Azure::CognitiveServices::ComputerVision::V2_0::Models::Line
    end
    def image_caption
      Azure::CognitiveServices::ComputerVision::V2_0::Models::ImageCaption
    end
    def text_recognition_result
      Azure::CognitiveServices::ComputerVision::V2_0::Models::TextRecognitionResult
    end
    def image_analysis
      Azure::CognitiveServices::ComputerVision::V2_0::Models::ImageAnalysis
    end
    def text_operation_result
      Azure::CognitiveServices::ComputerVision::V2_0::Models::TextOperationResult
    end
    def object_hierarchy
      Azure::CognitiveServices::ComputerVision::V2_0::Models::ObjectHierarchy
    end
    def read_operation_result
      Azure::CognitiveServices::ComputerVision::V2_0::Models::ReadOperationResult
    end
    def adult_info
      Azure::CognitiveServices::ComputerVision::V2_0::Models::AdultInfo
    end
    def gender
      Azure::CognitiveServices::ComputerVision::V2_0::Models::Gender
    end
    def text_operation_status_codes
      Azure::CognitiveServices::ComputerVision::V2_0::Models::TextOperationStatusCodes
    end
    def text_recognition_result_dimension_unit
      Azure::CognitiveServices::ComputerVision::V2_0::Models::TextRecognitionResultDimensionUnit
    end
    def text_recognition_result_confidence_class
      Azure::CognitiveServices::ComputerVision::V2_0::Models::TextRecognitionResultConfidenceClass
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
  end
end
