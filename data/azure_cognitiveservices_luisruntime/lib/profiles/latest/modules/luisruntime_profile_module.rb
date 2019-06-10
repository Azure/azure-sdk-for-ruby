# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_cognitiveservices_luisruntime'

module Azure::LuisRuntime::Profiles::Latest
  PredictionOperations = Azure::CognitiveServices::LuisRuntime::V3_0_preview::PredictionOperations

  module Models
    Intent = Azure::CognitiveServices::LuisRuntime::V3_0_preview::Models::Intent
    Sentiment = Azure::CognitiveServices::LuisRuntime::V3_0_preview::Models::Sentiment
    ExternalEntity = Azure::CognitiveServices::LuisRuntime::V3_0_preview::Models::ExternalEntity
    Prediction = Azure::CognitiveServices::LuisRuntime::V3_0_preview::Models::Prediction
    DynamicList = Azure::CognitiveServices::LuisRuntime::V3_0_preview::Models::DynamicList
    PredictionResponse = Azure::CognitiveServices::LuisRuntime::V3_0_preview::Models::PredictionResponse
    PredictionRequestOptions = Azure::CognitiveServices::LuisRuntime::V3_0_preview::Models::PredictionRequestOptions
    ErrorBody = Azure::CognitiveServices::LuisRuntime::V3_0_preview::Models::ErrorBody
    PredictionRequest = Azure::CognitiveServices::LuisRuntime::V3_0_preview::Models::PredictionRequest
    Error = Azure::CognitiveServices::LuisRuntime::V3_0_preview::Models::Error
    RequestList = Azure::CognitiveServices::LuisRuntime::V3_0_preview::Models::RequestList
  end

  #
  # LuisRuntimeDataClass
  #
  class LuisRuntimeDataClass
    attr_reader :prediction_operations, :configurable, :base_url, :options, :model_classes

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

      @client_0 = Azure::CognitiveServices::LuisRuntime::V3_0_preview::LuisRuntimeClient.new(configurable.credentials, options)
      if(@client_0.respond_to?(:subscription_id))
        @client_0.subscription_id = configurable.subscription_id
      end
      add_telemetry(@client_0)
      @prediction_operations = @client_0.prediction_operations

      @model_classes = ModelClasses.new
    end

    def add_telemetry(client)
      profile_information = 'Profiles/Latest/LuisRuntime'
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
    def intent
      Azure::CognitiveServices::LuisRuntime::V3_0_preview::Models::Intent
    end
    def sentiment
      Azure::CognitiveServices::LuisRuntime::V3_0_preview::Models::Sentiment
    end
    def external_entity
      Azure::CognitiveServices::LuisRuntime::V3_0_preview::Models::ExternalEntity
    end
    def prediction
      Azure::CognitiveServices::LuisRuntime::V3_0_preview::Models::Prediction
    end
    def dynamic_list
      Azure::CognitiveServices::LuisRuntime::V3_0_preview::Models::DynamicList
    end
    def prediction_response
      Azure::CognitiveServices::LuisRuntime::V3_0_preview::Models::PredictionResponse
    end
    def prediction_request_options
      Azure::CognitiveServices::LuisRuntime::V3_0_preview::Models::PredictionRequestOptions
    end
    def error_body
      Azure::CognitiveServices::LuisRuntime::V3_0_preview::Models::ErrorBody
    end
    def prediction_request
      Azure::CognitiveServices::LuisRuntime::V3_0_preview::Models::PredictionRequest
    end
    def error
      Azure::CognitiveServices::LuisRuntime::V3_0_preview::Models::Error
    end
    def request_list
      Azure::CognitiveServices::LuisRuntime::V3_0_preview::Models::RequestList
    end
  end
end
