# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_cognitiveservices_formrecognizer'

module Azure::FormRecognizer::Profiles::Latest

  module Models
    ErrorInformation = Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::ErrorInformation
    TrainRequest = Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::TrainRequest
    ErrorResponse = Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::ErrorResponse
    FormOperationError = Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::FormOperationError
    ExtractedToken = Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::ExtractedToken
    KeysResult = Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::KeysResult
    ExtractedKeyValuePair = Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::ExtractedKeyValuePair
    ModelsResult = Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::ModelsResult
    ExtractedTableColumn = Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::ExtractedTableColumn
    FormDocumentReport = Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::FormDocumentReport
    ExtractedTable = Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::ExtractedTable
    ModelResult = Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::ModelResult
    ExtractedPage = Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::ExtractedPage
    TrainResult = Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::TrainResult
    AnalyzeResult = Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::AnalyzeResult
    InnerError = Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::InnerError
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

      @client_0 = Azure::CognitiveServices::FormRecognizer::V1_0_preview::FormRecognizerClient.new(configurable.credentials, base_url, options)
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
    def error_information
      Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::ErrorInformation
    end
    def train_request
      Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::TrainRequest
    end
    def error_response
      Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::ErrorResponse
    end
    def form_operation_error
      Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::FormOperationError
    end
    def extracted_token
      Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::ExtractedToken
    end
    def keys_result
      Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::KeysResult
    end
    def extracted_key_value_pair
      Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::ExtractedKeyValuePair
    end
    def models_result
      Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::ModelsResult
    end
    def extracted_table_column
      Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::ExtractedTableColumn
    end
    def form_document_report
      Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::FormDocumentReport
    end
    def extracted_table
      Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::ExtractedTable
    end
    def model_result
      Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::ModelResult
    end
    def extracted_page
      Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::ExtractedPage
    end
    def train_result
      Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::TrainResult
    end
    def analyze_result
      Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::AnalyzeResult
    end
    def inner_error
      Azure::CognitiveServices::FormRecognizer::V1_0_preview::Models::InnerError
    end
  end
end
