# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_cognitiveservices_luisruntime'

module Azure::Profiles::Latest
  module LuisRuntime
    PredictionOperations = Azure::CognitiveServices::LuisRuntime::V3_0::PredictionOperations

    module Models
      Error = Azure::CognitiveServices::LuisRuntime::V3_0::Models::Error
      PredictionRequestOptions = Azure::CognitiveServices::LuisRuntime::V3_0::Models::PredictionRequestOptions
      Sentiment = Azure::CognitiveServices::LuisRuntime::V3_0::Models::Sentiment
      ExternalEntity = Azure::CognitiveServices::LuisRuntime::V3_0::Models::ExternalEntity
      PredictionResponse = Azure::CognitiveServices::LuisRuntime::V3_0::Models::PredictionResponse
      RequestList = Azure::CognitiveServices::LuisRuntime::V3_0::Models::RequestList
      Intent = Azure::CognitiveServices::LuisRuntime::V3_0::Models::Intent
      DynamicList = Azure::CognitiveServices::LuisRuntime::V3_0::Models::DynamicList
      ErrorBody = Azure::CognitiveServices::LuisRuntime::V3_0::Models::ErrorBody
      PredictionRequest = Azure::CognitiveServices::LuisRuntime::V3_0::Models::PredictionRequest
      Prediction = Azure::CognitiveServices::LuisRuntime::V3_0::Models::Prediction
    end

    class LuisRuntimeDataClass
      attr_reader :prediction_operations, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        @client_0 = Azure::CognitiveServices::LuisRuntime::V3_0::LuisRuntimeClient.new(configurable.credentials, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @prediction_operations = @client_0.prediction_operations

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/LuisRuntime"
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
        def error
          Azure::CognitiveServices::LuisRuntime::V3_0::Models::Error
        end
        def prediction_request_options
          Azure::CognitiveServices::LuisRuntime::V3_0::Models::PredictionRequestOptions
        end
        def sentiment
          Azure::CognitiveServices::LuisRuntime::V3_0::Models::Sentiment
        end
        def external_entity
          Azure::CognitiveServices::LuisRuntime::V3_0::Models::ExternalEntity
        end
        def prediction_response
          Azure::CognitiveServices::LuisRuntime::V3_0::Models::PredictionResponse
        end
        def request_list
          Azure::CognitiveServices::LuisRuntime::V3_0::Models::RequestList
        end
        def intent
          Azure::CognitiveServices::LuisRuntime::V3_0::Models::Intent
        end
        def dynamic_list
          Azure::CognitiveServices::LuisRuntime::V3_0::Models::DynamicList
        end
        def error_body
          Azure::CognitiveServices::LuisRuntime::V3_0::Models::ErrorBody
        end
        def prediction_request
          Azure::CognitiveServices::LuisRuntime::V3_0::Models::PredictionRequest
        end
        def prediction
          Azure::CognitiveServices::LuisRuntime::V3_0::Models::Prediction
        end
      end
    end
  end
end
