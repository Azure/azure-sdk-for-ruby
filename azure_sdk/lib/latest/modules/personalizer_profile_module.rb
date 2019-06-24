# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_cognitiveservices_personalizer'

module Azure::Profiles::Latest
  module Personalizer
    Events = Azure::CognitiveServices::Personalizer::V1_0::Events

    module Models
      RankableAction = Azure::CognitiveServices::Personalizer::V1_0::Models::RankableAction
      InternalError = Azure::CognitiveServices::Personalizer::V1_0::Models::InternalError
      RankRequest = Azure::CognitiveServices::Personalizer::V1_0::Models::RankRequest
      ErrorResponse = Azure::CognitiveServices::Personalizer::V1_0::Models::ErrorResponse
      RankedAction = Azure::CognitiveServices::Personalizer::V1_0::Models::RankedAction
      PersonalizerError = Azure::CognitiveServices::Personalizer::V1_0::Models::PersonalizerError
      RankResponse = Azure::CognitiveServices::Personalizer::V1_0::Models::RankResponse
      RewardRequest = Azure::CognitiveServices::Personalizer::V1_0::Models::RewardRequest
      ErrorCode = Azure::CognitiveServices::Personalizer::V1_0::Models::ErrorCode
    end

    class PersonalizerDataClass
      attr_reader :events, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        @client_0 = Azure::CognitiveServices::Personalizer::V1_0::PersonalizerClient.new(configurable.credentials, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @events = @client_0.events

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Personalizer"
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
        def rankable_action
          Azure::CognitiveServices::Personalizer::V1_0::Models::RankableAction
        end
        def internal_error
          Azure::CognitiveServices::Personalizer::V1_0::Models::InternalError
        end
        def rank_request
          Azure::CognitiveServices::Personalizer::V1_0::Models::RankRequest
        end
        def error_response
          Azure::CognitiveServices::Personalizer::V1_0::Models::ErrorResponse
        end
        def ranked_action
          Azure::CognitiveServices::Personalizer::V1_0::Models::RankedAction
        end
        def personalizer_error
          Azure::CognitiveServices::Personalizer::V1_0::Models::PersonalizerError
        end
        def rank_response
          Azure::CognitiveServices::Personalizer::V1_0::Models::RankResponse
        end
        def reward_request
          Azure::CognitiveServices::Personalizer::V1_0::Models::RewardRequest
        end
        def error_code
          Azure::CognitiveServices::Personalizer::V1_0::Models::ErrorCode
        end
      end
    end
  end
end
