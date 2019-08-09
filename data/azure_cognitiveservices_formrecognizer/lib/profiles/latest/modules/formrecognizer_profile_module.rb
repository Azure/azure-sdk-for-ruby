# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_cognitiveservices_formrecognizer'

module Azure::FormRecognizer::Profiles::Latest

  module Models
    ExtractedTable = Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::ExtractedTable
    TrainSourceFilter = Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::TrainSourceFilter
    ExtractedPage = Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::ExtractedPage
    FormDocumentReport = Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::FormDocumentReport
    AnalyzeResult = Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::AnalyzeResult
    TrainResult = Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::TrainResult
    Word = Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::Word
    ModelResult = Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::ModelResult
    Line = Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::Line
    InnerError = Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::InnerError
    TextRecognitionResult = Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::TextRecognitionResult
    ErrorResponse = Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::ErrorResponse
    ElementReference = Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::ElementReference
    ExtractedKeyValuePair = Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::ExtractedKeyValuePair
    FieldValue = Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::FieldValue
    TrainRequest = Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::TrainRequest
    UnderstandingResult = Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::UnderstandingResult
    KeysResult = Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::KeysResult
    ReadReceiptResult = Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::ReadReceiptResult
    ErrorInformation = Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::ErrorInformation
    ExtractedToken = Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::ExtractedToken
    ExtractedTableColumn = Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::ExtractedTableColumn
    ModelsResult = Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::ModelsResult
    ImageUrl = Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::ImageUrl
    FormOperationError = Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::FormOperationError
    ComputerVisionError = Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::ComputerVisionError
    StringValue = Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::StringValue
    NumberValue = Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::NumberValue
    TextOperationStatusCodes = Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::TextOperationStatusCodes
    TextRecognitionResultDimensionUnit = Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::TextRecognitionResultDimensionUnit
    TextRecognitionResultConfidenceClass = Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::TextRecognitionResultConfidenceClass
  end

  #
  # FormRecognizerDataClass
  #
  class FormRecognizerDataClass
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

      @client_0 = Azure::CognitiveServices::FormRecognizer::V1_0_preview::FormRecognizerClient.new(configurable.credentials, options)
      if(@client_0.respond_to?(:subscription_id))
        @client_0.subscription_id = configurable.subscription_id
      end
      add_telemetry(@client_0)

      @model_classes = ModelClasses.new
    end

    def add_telemetry(client)
      profile_information = 'Profiles/Latest/FormRecognizer'
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
    def extracted_table
      Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::ExtractedTable
    end
    def train_source_filter
      Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::TrainSourceFilter
    end
    def extracted_page
      Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::ExtractedPage
    end
    def form_document_report
      Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::FormDocumentReport
    end
    def analyze_result
      Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::AnalyzeResult
    end
    def train_result
      Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::TrainResult
    end
    def word
      Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::Word
    end
    def model_result
      Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::ModelResult
    end
    def line
      Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::Line
    end
    def inner_error
      Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::InnerError
    end
    def text_recognition_result
      Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::TextRecognitionResult
    end
    def error_response
      Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::ErrorResponse
    end
    def element_reference
      Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::ElementReference
    end
    def extracted_key_value_pair
      Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::ExtractedKeyValuePair
    end
    def field_value
      Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::FieldValue
    end
    def train_request
      Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::TrainRequest
    end
    def understanding_result
      Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::UnderstandingResult
    end
    def keys_result
      Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::KeysResult
    end
    def read_receipt_result
      Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::ReadReceiptResult
    end
    def error_information
      Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::ErrorInformation
    end
    def extracted_token
      Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::ExtractedToken
    end
    def extracted_table_column
      Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::ExtractedTableColumn
    end
    def models_result
      Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::ModelsResult
    end
    def image_url
      Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::ImageUrl
    end
    def form_operation_error
      Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::FormOperationError
    end
    def computer_vision_error
      Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::ComputerVisionError
    end
    def string_value
      Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::StringValue
    end
    def number_value
      Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::NumberValue
    end
    def text_operation_status_codes
      Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::TextOperationStatusCodes
    end
    def text_recognition_result_dimension_unit
      Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::TextRecognitionResultDimensionUnit
    end
    def text_recognition_result_confidence_class
      Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::TextRecognitionResultConfidenceClass
    end
  end
end
