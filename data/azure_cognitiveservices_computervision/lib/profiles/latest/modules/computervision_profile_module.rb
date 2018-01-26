# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_cognitiveservices_computervision'

module Azure::ComputerVision::Profiles::Latest

  module Models
    ImageDescriptionDetails = Azure::CognitiveServices::ComputerVision::V1_0::Models::ImageDescriptionDetails
    Word = Azure::CognitiveServices::ComputerVision::V1_0::Models::Word
    FaceDescription = Azure::CognitiveServices::ComputerVision::V1_0::Models::FaceDescription
    RecognitionResult = Azure::CognitiveServices::ComputerVision::V1_0::Models::RecognitionResult
    ImageAnalysis = Azure::CognitiveServices::ComputerVision::V1_0::Models::ImageAnalysis
    FaceRectangle = Azure::CognitiveServices::ComputerVision::V1_0::Models::FaceRectangle
    OcrWord = Azure::CognitiveServices::ComputerVision::V1_0::Models::OcrWord
    CategoryDetail = Azure::CognitiveServices::ComputerVision::V1_0::Models::CategoryDetail
    OcrLine = Azure::CognitiveServices::ComputerVision::V1_0::Models::OcrLine
    AdultInfo = Azure::CognitiveServices::ComputerVision::V1_0::Models::AdultInfo
    OcrRegion = Azure::CognitiveServices::ComputerVision::V1_0::Models::OcrRegion
    ImageType = Azure::CognitiveServices::ComputerVision::V1_0::Models::ImageType
    OcrResult = Azure::CognitiveServices::ComputerVision::V1_0::Models::OcrResult
    ImageCaption = Azure::CognitiveServices::ComputerVision::V1_0::Models::ImageCaption
    ModelDescription = Azure::CognitiveServices::ComputerVision::V1_0::Models::ModelDescription
    Line = Azure::CognitiveServices::ComputerVision::V1_0::Models::Line
    ListModelsResult = Azure::CognitiveServices::ComputerVision::V1_0::Models::ListModelsResult
    CelebritiesModel = Azure::CognitiveServices::ComputerVision::V1_0::Models::CelebritiesModel
    DomainModelResults = Azure::CognitiveServices::ComputerVision::V1_0::Models::DomainModelResults
    ColorInfo = Azure::CognitiveServices::ComputerVision::V1_0::Models::ColorInfo
    ImageDescription = Azure::CognitiveServices::ComputerVision::V1_0::Models::ImageDescription
    ImageMetadata = Azure::CognitiveServices::ComputerVision::V1_0::Models::ImageMetadata
    TagResult = Azure::CognitiveServices::ComputerVision::V1_0::Models::TagResult
    Category = Azure::CognitiveServices::ComputerVision::V1_0::Models::Category
    ComputerVisionError = Azure::CognitiveServices::ComputerVision::V1_0::Models::ComputerVisionError
    TextOperationResult = Azure::CognitiveServices::ComputerVision::V1_0::Models::TextOperationResult
    ImageUrl = Azure::CognitiveServices::ComputerVision::V1_0::Models::ImageUrl
    ImageTag = Azure::CognitiveServices::ComputerVision::V1_0::Models::ImageTag
    TextOperationStatusCodes = Azure::CognitiveServices::ComputerVision::V1_0::Models::TextOperationStatusCodes
    ComputerVisionErrorCodes = Azure::CognitiveServices::ComputerVision::V1_0::Models::ComputerVisionErrorCodes
    VisualFeatureTypes = Azure::CognitiveServices::ComputerVision::V1_0::Models::VisualFeatureTypes
    OcrLanguages = Azure::CognitiveServices::ComputerVision::V1_0::Models::OcrLanguages
    AzureRegions = Azure::CognitiveServices::ComputerVision::V1_0::Models::AzureRegions
    Details = Azure::CognitiveServices::ComputerVision::V1_0::Models::Details
    Language1 = Azure::CognitiveServices::ComputerVision::V1_0::Models::Language1
    DomainModels = Azure::CognitiveServices::ComputerVision::V1_0::Models::DomainModels
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

      client_0 = Azure::CognitiveServices::ComputerVision::V1_0::ComputerVisionClient.new(configurable.credentials, base_url, options)
      if(client_0.respond_to?(:subscription_id))
        client_0.subscription_id = configurable.subscription_id
      end
      add_telemetry(client_0)

      @model_classes = ModelClasses.new
    end

    def add_telemetry(client)
      profile_information = 'Profiles/Latest/ComputerVision'
      client.add_user_agent_information(profile_information)
    end

  end

  class ModelClasses
    def image_description_details
      Azure::CognitiveServices::ComputerVision::V1_0::Models::ImageDescriptionDetails
    end
    def word
      Azure::CognitiveServices::ComputerVision::V1_0::Models::Word
    end
    def face_description
      Azure::CognitiveServices::ComputerVision::V1_0::Models::FaceDescription
    end
    def recognition_result
      Azure::CognitiveServices::ComputerVision::V1_0::Models::RecognitionResult
    end
    def image_analysis
      Azure::CognitiveServices::ComputerVision::V1_0::Models::ImageAnalysis
    end
    def face_rectangle
      Azure::CognitiveServices::ComputerVision::V1_0::Models::FaceRectangle
    end
    def ocr_word
      Azure::CognitiveServices::ComputerVision::V1_0::Models::OcrWord
    end
    def category_detail
      Azure::CognitiveServices::ComputerVision::V1_0::Models::CategoryDetail
    end
    def ocr_line
      Azure::CognitiveServices::ComputerVision::V1_0::Models::OcrLine
    end
    def adult_info
      Azure::CognitiveServices::ComputerVision::V1_0::Models::AdultInfo
    end
    def ocr_region
      Azure::CognitiveServices::ComputerVision::V1_0::Models::OcrRegion
    end
    def image_type
      Azure::CognitiveServices::ComputerVision::V1_0::Models::ImageType
    end
    def ocr_result
      Azure::CognitiveServices::ComputerVision::V1_0::Models::OcrResult
    end
    def image_caption
      Azure::CognitiveServices::ComputerVision::V1_0::Models::ImageCaption
    end
    def model_description
      Azure::CognitiveServices::ComputerVision::V1_0::Models::ModelDescription
    end
    def line
      Azure::CognitiveServices::ComputerVision::V1_0::Models::Line
    end
    def list_models_result
      Azure::CognitiveServices::ComputerVision::V1_0::Models::ListModelsResult
    end
    def celebrities_model
      Azure::CognitiveServices::ComputerVision::V1_0::Models::CelebritiesModel
    end
    def domain_model_results
      Azure::CognitiveServices::ComputerVision::V1_0::Models::DomainModelResults
    end
    def color_info
      Azure::CognitiveServices::ComputerVision::V1_0::Models::ColorInfo
    end
    def image_description
      Azure::CognitiveServices::ComputerVision::V1_0::Models::ImageDescription
    end
    def image_metadata
      Azure::CognitiveServices::ComputerVision::V1_0::Models::ImageMetadata
    end
    def tag_result
      Azure::CognitiveServices::ComputerVision::V1_0::Models::TagResult
    end
    def category
      Azure::CognitiveServices::ComputerVision::V1_0::Models::Category
    end
    def computer_vision_error
      Azure::CognitiveServices::ComputerVision::V1_0::Models::ComputerVisionError
    end
    def text_operation_result
      Azure::CognitiveServices::ComputerVision::V1_0::Models::TextOperationResult
    end
    def image_url
      Azure::CognitiveServices::ComputerVision::V1_0::Models::ImageUrl
    end
    def image_tag
      Azure::CognitiveServices::ComputerVision::V1_0::Models::ImageTag
    end
    def text_operation_status_codes
      Azure::CognitiveServices::ComputerVision::V1_0::Models::TextOperationStatusCodes
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
    def language1
      Azure::CognitiveServices::ComputerVision::V1_0::Models::Language1
    end
    def domain_models
      Azure::CognitiveServices::ComputerVision::V1_0::Models::DomainModels
    end
  end
end
