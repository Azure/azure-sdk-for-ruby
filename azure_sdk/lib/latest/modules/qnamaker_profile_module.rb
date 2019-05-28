# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_cognitiveservices_qnamaker'

module Azure::Profiles::Latest
  module Qnamaker
    Knowledgebase = Azure::CognitiveServices::Qnamaker::V4_0::Knowledgebase
    Operations = Azure::CognitiveServices::Qnamaker::V4_0::Operations
    EndpointKeys = Azure::CognitiveServices::Qnamaker::V4_0::EndpointKeys
    Alterations = Azure::CognitiveServices::Qnamaker::V4_0::Alterations

    module Models
      CreateKbInputDTO = Azure::CognitiveServices::Qnamaker::V4_0::Models::CreateKbInputDTO
      DeleteKbContentsDTO = Azure::CognitiveServices::Qnamaker::V4_0::Models::DeleteKbContentsDTO
      QnADTO = Azure::CognitiveServices::Qnamaker::V4_0::Models::QnADTO
      EndpointKeysDTO = Azure::CognitiveServices::Qnamaker::V4_0::Models::EndpointKeysDTO
      FileDTO = Azure::CognitiveServices::Qnamaker::V4_0::Models::FileDTO
      WordAlterationsDTO = Azure::CognitiveServices::Qnamaker::V4_0::Models::WordAlterationsDTO
      KnowledgebasesDTO = Azure::CognitiveServices::Qnamaker::V4_0::Models::KnowledgebasesDTO
      UpdateQnaDTO = Azure::CognitiveServices::Qnamaker::V4_0::Models::UpdateQnaDTO
      QnADocumentsDTO = Azure::CognitiveServices::Qnamaker::V4_0::Models::QnADocumentsDTO
      UpdateQuestionsDTO = Azure::CognitiveServices::Qnamaker::V4_0::Models::UpdateQuestionsDTO
      CreateKbDTO = Azure::CognitiveServices::Qnamaker::V4_0::Models::CreateKbDTO
      UpdateMetadataDTO = Azure::CognitiveServices::Qnamaker::V4_0::Models::UpdateMetadataDTO
      ReplaceKbDTO = Azure::CognitiveServices::Qnamaker::V4_0::Models::ReplaceKbDTO
      UpdateKbOperationDTO = Azure::CognitiveServices::Qnamaker::V4_0::Models::UpdateKbOperationDTO
      KnowledgebaseDTO = Azure::CognitiveServices::Qnamaker::V4_0::Models::KnowledgebaseDTO
      UpdateKbContentsDTO = Azure::CognitiveServices::Qnamaker::V4_0::Models::UpdateKbContentsDTO
      InnerErrorModel = Azure::CognitiveServices::Qnamaker::V4_0::Models::InnerErrorModel
      ErrorResponse = Azure::CognitiveServices::Qnamaker::V4_0::Models::ErrorResponse
      MetadataDTO = Azure::CognitiveServices::Qnamaker::V4_0::Models::MetadataDTO
      AlterationsDTO = Azure::CognitiveServices::Qnamaker::V4_0::Models::AlterationsDTO
      UpdateKbOperationDTOAdd = Azure::CognitiveServices::Qnamaker::V4_0::Models::UpdateKbOperationDTOAdd
      UpdateKbOperationDTODelete = Azure::CognitiveServices::Qnamaker::V4_0::Models::UpdateKbOperationDTODelete
      UpdateKbOperationDTOUpdate = Azure::CognitiveServices::Qnamaker::V4_0::Models::UpdateKbOperationDTOUpdate
      UpdateQnaDTOQuestions = Azure::CognitiveServices::Qnamaker::V4_0::Models::UpdateQnaDTOQuestions
      UpdateQnaDTOMetadata = Azure::CognitiveServices::Qnamaker::V4_0::Models::UpdateQnaDTOMetadata
      KnowledgebaseEnvironmentType = Azure::CognitiveServices::Qnamaker::V4_0::Models::KnowledgebaseEnvironmentType
      ErrorCodeType = Azure::CognitiveServices::Qnamaker::V4_0::Models::ErrorCodeType
      OperationStateType = Azure::CognitiveServices::Qnamaker::V4_0::Models::OperationStateType
      EnvironmentType = Azure::CognitiveServices::Qnamaker::V4_0::Models::EnvironmentType
      Operation = Azure::CognitiveServices::Qnamaker::V4_0::Models::Operation
      ErrorResponseError = Azure::CognitiveServices::Qnamaker::V4_0::Models::ErrorResponseError
      Error = Azure::CognitiveServices::Qnamaker::V4_0::Models::Error
    end

    class QnamakerDataClass
      attr_reader :knowledgebase, :operations, :endpoint_keys, :alterations, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        @client_0 = Azure::CognitiveServices::Qnamaker::V4_0::QnamakerClient.new(configurable.credentials, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @knowledgebase = @client_0.knowledgebase
        @operations = @client_0.operations
        @endpoint_keys = @client_0.endpoint_keys
        @alterations = @client_0.alterations

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Qnamaker"
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
        def create_kb_input_dto
          Azure::CognitiveServices::Qnamaker::V4_0::Models::CreateKbInputDTO
        end
        def delete_kb_contents_dto
          Azure::CognitiveServices::Qnamaker::V4_0::Models::DeleteKbContentsDTO
        end
        def qn_adto
          Azure::CognitiveServices::Qnamaker::V4_0::Models::QnADTO
        end
        def endpoint_keys_dto
          Azure::CognitiveServices::Qnamaker::V4_0::Models::EndpointKeysDTO
        end
        def file_dto
          Azure::CognitiveServices::Qnamaker::V4_0::Models::FileDTO
        end
        def word_alterations_dto
          Azure::CognitiveServices::Qnamaker::V4_0::Models::WordAlterationsDTO
        end
        def knowledgebases_dto
          Azure::CognitiveServices::Qnamaker::V4_0::Models::KnowledgebasesDTO
        end
        def update_qna_dto
          Azure::CognitiveServices::Qnamaker::V4_0::Models::UpdateQnaDTO
        end
        def qn_adocuments_dto
          Azure::CognitiveServices::Qnamaker::V4_0::Models::QnADocumentsDTO
        end
        def update_questions_dto
          Azure::CognitiveServices::Qnamaker::V4_0::Models::UpdateQuestionsDTO
        end
        def create_kb_dto
          Azure::CognitiveServices::Qnamaker::V4_0::Models::CreateKbDTO
        end
        def update_metadata_dto
          Azure::CognitiveServices::Qnamaker::V4_0::Models::UpdateMetadataDTO
        end
        def replace_kb_dto
          Azure::CognitiveServices::Qnamaker::V4_0::Models::ReplaceKbDTO
        end
        def update_kb_operation_dto
          Azure::CognitiveServices::Qnamaker::V4_0::Models::UpdateKbOperationDTO
        end
        def knowledgebase_dto
          Azure::CognitiveServices::Qnamaker::V4_0::Models::KnowledgebaseDTO
        end
        def update_kb_contents_dto
          Azure::CognitiveServices::Qnamaker::V4_0::Models::UpdateKbContentsDTO
        end
        def inner_error_model
          Azure::CognitiveServices::Qnamaker::V4_0::Models::InnerErrorModel
        end
        def error_response
          Azure::CognitiveServices::Qnamaker::V4_0::Models::ErrorResponse
        end
        def metadata_dto
          Azure::CognitiveServices::Qnamaker::V4_0::Models::MetadataDTO
        end
        def alterations_dto
          Azure::CognitiveServices::Qnamaker::V4_0::Models::AlterationsDTO
        end
        def update_kb_operation_dtoadd
          Azure::CognitiveServices::Qnamaker::V4_0::Models::UpdateKbOperationDTOAdd
        end
        def update_kb_operation_dtodelete
          Azure::CognitiveServices::Qnamaker::V4_0::Models::UpdateKbOperationDTODelete
        end
        def update_kb_operation_dtoupdate
          Azure::CognitiveServices::Qnamaker::V4_0::Models::UpdateKbOperationDTOUpdate
        end
        def update_qna_dtoquestions
          Azure::CognitiveServices::Qnamaker::V4_0::Models::UpdateQnaDTOQuestions
        end
        def update_qna_dtometadata
          Azure::CognitiveServices::Qnamaker::V4_0::Models::UpdateQnaDTOMetadata
        end
        def knowledgebase_environment_type
          Azure::CognitiveServices::Qnamaker::V4_0::Models::KnowledgebaseEnvironmentType
        end
        def error_code_type
          Azure::CognitiveServices::Qnamaker::V4_0::Models::ErrorCodeType
        end
        def operation_state_type
          Azure::CognitiveServices::Qnamaker::V4_0::Models::OperationStateType
        end
        def environment_type
          Azure::CognitiveServices::Qnamaker::V4_0::Models::EnvironmentType
        end
        def operation
          Azure::CognitiveServices::Qnamaker::V4_0::Models::Operation
        end
        def error_response_error
          Azure::CognitiveServices::Qnamaker::V4_0::Models::ErrorResponseError
        end
        def error
          Azure::CognitiveServices::Qnamaker::V4_0::Models::Error
        end
      end
    end
  end
end
