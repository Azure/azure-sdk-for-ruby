# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_cognitiveservices_qnamakerruntime'

module Azure::Profiles::Latest
  module QnamakerRuntime
    Runtime = Azure::CognitiveServices::QnamakerRuntime::V4_0::Runtime

    module Models
      Error = Azure::CognitiveServices::QnamakerRuntime::V4_0::Models::Error
      MetadataDTO = Azure::CognitiveServices::QnamakerRuntime::V4_0::Models::MetadataDTO
      ErrorResponse = Azure::CognitiveServices::QnamakerRuntime::V4_0::Models::ErrorResponse
      InnerErrorModel = Azure::CognitiveServices::QnamakerRuntime::V4_0::Models::InnerErrorModel
      FeedbackRecordDTO = Azure::CognitiveServices::QnamakerRuntime::V4_0::Models::FeedbackRecordDTO
      QnASearchResult = Azure::CognitiveServices::QnamakerRuntime::V4_0::Models::QnASearchResult
      ContextDTO = Azure::CognitiveServices::QnamakerRuntime::V4_0::Models::ContextDTO
      QnADTO = Azure::CognitiveServices::QnamakerRuntime::V4_0::Models::QnADTO
      QueryDTO = Azure::CognitiveServices::QnamakerRuntime::V4_0::Models::QueryDTO
      QnASearchResultList = Azure::CognitiveServices::QnamakerRuntime::V4_0::Models::QnASearchResultList
      QueryContextDTO = Azure::CognitiveServices::QnamakerRuntime::V4_0::Models::QueryContextDTO
      PromptDTO = Azure::CognitiveServices::QnamakerRuntime::V4_0::Models::PromptDTO
      FeedbackRecordsDTO = Azure::CognitiveServices::QnamakerRuntime::V4_0::Models::FeedbackRecordsDTO
      QnADTOContext = Azure::CognitiveServices::QnamakerRuntime::V4_0::Models::QnADTOContext
      PromptDTOQna = Azure::CognitiveServices::QnamakerRuntime::V4_0::Models::PromptDTOQna
      ErrorResponseError = Azure::CognitiveServices::QnamakerRuntime::V4_0::Models::ErrorResponseError
      QueryDTOContext = Azure::CognitiveServices::QnamakerRuntime::V4_0::Models::QueryDTOContext
      QnASearchResultContext = Azure::CognitiveServices::QnamakerRuntime::V4_0::Models::QnASearchResultContext
      ErrorCodeType = Azure::CognitiveServices::QnamakerRuntime::V4_0::Models::ErrorCodeType
    end

    class QnamakerRuntimeDataClass
      attr_reader :runtime, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        @client_0 = Azure::CognitiveServices::QnamakerRuntime::V4_0::QnamakerRuntimeClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @runtime = @client_0.runtime

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/QnamakerRuntime"
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
          Azure::CognitiveServices::QnamakerRuntime::V4_0::Models::Error
        end
        def metadata_dto
          Azure::CognitiveServices::QnamakerRuntime::V4_0::Models::MetadataDTO
        end
        def error_response
          Azure::CognitiveServices::QnamakerRuntime::V4_0::Models::ErrorResponse
        end
        def inner_error_model
          Azure::CognitiveServices::QnamakerRuntime::V4_0::Models::InnerErrorModel
        end
        def feedback_record_dto
          Azure::CognitiveServices::QnamakerRuntime::V4_0::Models::FeedbackRecordDTO
        end
        def qn_asearch_result
          Azure::CognitiveServices::QnamakerRuntime::V4_0::Models::QnASearchResult
        end
        def context_dto
          Azure::CognitiveServices::QnamakerRuntime::V4_0::Models::ContextDTO
        end
        def qn_adto
          Azure::CognitiveServices::QnamakerRuntime::V4_0::Models::QnADTO
        end
        def query_dto
          Azure::CognitiveServices::QnamakerRuntime::V4_0::Models::QueryDTO
        end
        def qn_asearch_result_list
          Azure::CognitiveServices::QnamakerRuntime::V4_0::Models::QnASearchResultList
        end
        def query_context_dto
          Azure::CognitiveServices::QnamakerRuntime::V4_0::Models::QueryContextDTO
        end
        def prompt_dto
          Azure::CognitiveServices::QnamakerRuntime::V4_0::Models::PromptDTO
        end
        def feedback_records_dto
          Azure::CognitiveServices::QnamakerRuntime::V4_0::Models::FeedbackRecordsDTO
        end
        def qn_adtocontext
          Azure::CognitiveServices::QnamakerRuntime::V4_0::Models::QnADTOContext
        end
        def prompt_dtoqna
          Azure::CognitiveServices::QnamakerRuntime::V4_0::Models::PromptDTOQna
        end
        def error_response_error
          Azure::CognitiveServices::QnamakerRuntime::V4_0::Models::ErrorResponseError
        end
        def query_dtocontext
          Azure::CognitiveServices::QnamakerRuntime::V4_0::Models::QueryDTOContext
        end
        def qn_asearch_result_context
          Azure::CognitiveServices::QnamakerRuntime::V4_0::Models::QnASearchResultContext
        end
        def error_code_type
          Azure::CognitiveServices::QnamakerRuntime::V4_0::Models::ErrorCodeType
        end
      end
    end
  end
end
