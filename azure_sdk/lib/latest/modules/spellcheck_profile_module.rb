# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_cognitiveservices_spellcheck'

module Azure::Profiles::Latest
  module SpellCheck

    module Models
      Identifiable = Azure::CognitiveServices::SpellCheck::V1_0::Models::Identifiable
      Answer = Azure::CognitiveServices::SpellCheck::V1_0::Models::Answer
      SpellingTokenSuggestion = Azure::CognitiveServices::SpellCheck::V1_0::Models::SpellingTokenSuggestion
      SpellingFlaggedToken = Azure::CognitiveServices::SpellCheck::V1_0::Models::SpellingFlaggedToken
      ErrorType = Azure::CognitiveServices::SpellCheck::V1_0::Models::ErrorType
      ErrorCode = Azure::CognitiveServices::SpellCheck::V1_0::Models::ErrorCode
      ErrorSubCode = Azure::CognitiveServices::SpellCheck::V1_0::Models::ErrorSubCode
      Mode = Azure::CognitiveServices::SpellCheck::V1_0::Models::Mode
      ErrorResponse = Azure::CognitiveServices::SpellCheck::V1_0::Models::ErrorResponse
      SpellCheck = Azure::CognitiveServices::SpellCheck::V1_0::Models::SpellCheck
      Response = Azure::CognitiveServices::SpellCheck::V1_0::Models::Response
      ActionType = Azure::CognitiveServices::SpellCheck::V1_0::Models::ActionType
      ResponseBase = Azure::CognitiveServices::SpellCheck::V1_0::Models::ResponseBase
      Error = Azure::CognitiveServices::SpellCheck::V1_0::Models::Error
    end

    class SpellCheckDataClass
      attr_reader :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        @client_0 = Azure::CognitiveServices::SpellCheck::V1_0::SpellCheckClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/SpellCheck"
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
        def identifiable
          Azure::CognitiveServices::SpellCheck::V1_0::Models::Identifiable
        end
        def answer
          Azure::CognitiveServices::SpellCheck::V1_0::Models::Answer
        end
        def spelling_token_suggestion
          Azure::CognitiveServices::SpellCheck::V1_0::Models::SpellingTokenSuggestion
        end
        def spelling_flagged_token
          Azure::CognitiveServices::SpellCheck::V1_0::Models::SpellingFlaggedToken
        end
        def error_type
          Azure::CognitiveServices::SpellCheck::V1_0::Models::ErrorType
        end
        def error_code
          Azure::CognitiveServices::SpellCheck::V1_0::Models::ErrorCode
        end
        def error_sub_code
          Azure::CognitiveServices::SpellCheck::V1_0::Models::ErrorSubCode
        end
        def mode
          Azure::CognitiveServices::SpellCheck::V1_0::Models::Mode
        end
        def error_response
          Azure::CognitiveServices::SpellCheck::V1_0::Models::ErrorResponse
        end
        def spell_check
          Azure::CognitiveServices::SpellCheck::V1_0::Models::SpellCheck
        end
        def response
          Azure::CognitiveServices::SpellCheck::V1_0::Models::Response
        end
        def action_type
          Azure::CognitiveServices::SpellCheck::V1_0::Models::ActionType
        end
        def response_base
          Azure::CognitiveServices::SpellCheck::V1_0::Models::ResponseBase
        end
        def error
          Azure::CognitiveServices::SpellCheck::V1_0::Models::Error
        end
      end
    end
  end
end
