# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_cognitiveservices_qnamaker'

module Azure::Qnamaker::Profiles::Latest
  Knowledgebase = Azure::CognitiveServices::Qnamaker::V4_0::Knowledgebase
  Operations = Azure::CognitiveServices::Qnamaker::V4_0::Operations
  EndpointKeys = Azure::CognitiveServices::Qnamaker::V4_0::EndpointKeys
  Alterations = Azure::CognitiveServices::Qnamaker::V4_0::Alterations

  module Models
    QnADTO = Azure::CognitiveServices::Qnamaker::V4_0::Models::QnADTO
    PromptDTO = Azure::CognitiveServices::Qnamaker::V4_0::Models::PromptDTO
    UpdateContextDTO = Azure::CognitiveServices::Qnamaker::V4_0::Models::UpdateContextDTO
    UpdateKbOperationDTO = Azure::CognitiveServices::Qnamaker::V4_0::Models::UpdateKbOperationDTO
    DeleteKbContentsDTO = Azure::CognitiveServices::Qnamaker::V4_0::Models::DeleteKbContentsDTO
    AlterationsDTO = Azure::CognitiveServices::Qnamaker::V4_0::Models::AlterationsDTO
    Operation = Azure::CognitiveServices::Qnamaker::V4_0::Models::Operation
    UpdateQnaDTO = Azure::CognitiveServices::Qnamaker::V4_0::Models::UpdateQnaDTO
    UpdateQuestionsDTO = Azure::CognitiveServices::Qnamaker::V4_0::Models::UpdateQuestionsDTO
    FileDTO = Azure::CognitiveServices::Qnamaker::V4_0::Models::FileDTO
    UpdateMetadataDTO = Azure::CognitiveServices::Qnamaker::V4_0::Models::UpdateMetadataDTO
    CreateKbInputDTO = Azure::CognitiveServices::Qnamaker::V4_0::Models::CreateKbInputDTO
    EndpointKeysDTO = Azure::CognitiveServices::Qnamaker::V4_0::Models::EndpointKeysDTO
    QnADocumentsDTO = Azure::CognitiveServices::Qnamaker::V4_0::Models::QnADocumentsDTO
    KnowledgebasesDTO = Azure::CognitiveServices::Qnamaker::V4_0::Models::KnowledgebasesDTO
    CreateKbDTO = Azure::CognitiveServices::Qnamaker::V4_0::Models::CreateKbDTO
    MetadataDTO = Azure::CognitiveServices::Qnamaker::V4_0::Models::MetadataDTO
    ReplaceKbDTO = Azure::CognitiveServices::Qnamaker::V4_0::Models::ReplaceKbDTO
    WordAlterationsDTO = Azure::CognitiveServices::Qnamaker::V4_0::Models::WordAlterationsDTO
    ContextDTO = Azure::CognitiveServices::Qnamaker::V4_0::Models::ContextDTO
    KnowledgebaseDTO = Azure::CognitiveServices::Qnamaker::V4_0::Models::KnowledgebaseDTO
    InnerErrorModel = Azure::CognitiveServices::Qnamaker::V4_0::Models::InnerErrorModel
    UpdateKbContentsDTO = Azure::CognitiveServices::Qnamaker::V4_0::Models::UpdateKbContentsDTO
    ErrorResponse = Azure::CognitiveServices::Qnamaker::V4_0::Models::ErrorResponse
    UpdateKbOperationDTOAdd = Azure::CognitiveServices::Qnamaker::V4_0::Models::UpdateKbOperationDTOAdd
    UpdateKbOperationDTODelete = Azure::CognitiveServices::Qnamaker::V4_0::Models::UpdateKbOperationDTODelete
    UpdateKbOperationDTOUpdate = Azure::CognitiveServices::Qnamaker::V4_0::Models::UpdateKbOperationDTOUpdate
    UpdateQnaDTOQuestions = Azure::CognitiveServices::Qnamaker::V4_0::Models::UpdateQnaDTOQuestions
    UpdateQnaDTOMetadata = Azure::CognitiveServices::Qnamaker::V4_0::Models::UpdateQnaDTOMetadata
    UpdateQnaDTOContext = Azure::CognitiveServices::Qnamaker::V4_0::Models::UpdateQnaDTOContext
    PromptDTOQna = Azure::CognitiveServices::Qnamaker::V4_0::Models::PromptDTOQna
    QnADTOContext = Azure::CognitiveServices::Qnamaker::V4_0::Models::QnADTOContext
    ErrorResponseError = Azure::CognitiveServices::Qnamaker::V4_0::Models::ErrorResponseError
    KnowledgebaseEnvironmentType = Azure::CognitiveServices::Qnamaker::V4_0::Models::KnowledgebaseEnvironmentType
    ErrorCodeType = Azure::CognitiveServices::Qnamaker::V4_0::Models::ErrorCodeType
    OperationStateType = Azure::CognitiveServices::Qnamaker::V4_0::Models::OperationStateType
    EnvironmentType = Azure::CognitiveServices::Qnamaker::V4_0::Models::EnvironmentType
    Error = Azure::CognitiveServices::Qnamaker::V4_0::Models::Error
  end

  #
  # QnamakerDataClass
  #
  class QnamakerDataClass
    attr_reader :knowledgebase, :operations, :endpoint_keys, :alterations, :configurable, :base_url, :options, :model_classes

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

      @client_0 = Azure::CognitiveServices::Qnamaker::V4_0::QnAMakerClient.new(configurable.credentials, options)
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
      profile_information = 'Profiles/Latest/Qnamaker'
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
    def qn_adto
      Azure::CognitiveServices::Qnamaker::V4_0::Models::QnADTO
    end
    def prompt_dto
      Azure::CognitiveServices::Qnamaker::V4_0::Models::PromptDTO
    end
    def update_context_dto
      Azure::CognitiveServices::Qnamaker::V4_0::Models::UpdateContextDTO
    end
    def update_kb_operation_dto
      Azure::CognitiveServices::Qnamaker::V4_0::Models::UpdateKbOperationDTO
    end
    def delete_kb_contents_dto
      Azure::CognitiveServices::Qnamaker::V4_0::Models::DeleteKbContentsDTO
    end
    def alterations_dto
      Azure::CognitiveServices::Qnamaker::V4_0::Models::AlterationsDTO
    end
    def operation
      Azure::CognitiveServices::Qnamaker::V4_0::Models::Operation
    end
    def update_qna_dto
      Azure::CognitiveServices::Qnamaker::V4_0::Models::UpdateQnaDTO
    end
    def update_questions_dto
      Azure::CognitiveServices::Qnamaker::V4_0::Models::UpdateQuestionsDTO
    end
    def file_dto
      Azure::CognitiveServices::Qnamaker::V4_0::Models::FileDTO
    end
    def update_metadata_dto
      Azure::CognitiveServices::Qnamaker::V4_0::Models::UpdateMetadataDTO
    end
    def create_kb_input_dto
      Azure::CognitiveServices::Qnamaker::V4_0::Models::CreateKbInputDTO
    end
    def endpoint_keys_dto
      Azure::CognitiveServices::Qnamaker::V4_0::Models::EndpointKeysDTO
    end
    def qn_adocuments_dto
      Azure::CognitiveServices::Qnamaker::V4_0::Models::QnADocumentsDTO
    end
    def knowledgebases_dto
      Azure::CognitiveServices::Qnamaker::V4_0::Models::KnowledgebasesDTO
    end
    def create_kb_dto
      Azure::CognitiveServices::Qnamaker::V4_0::Models::CreateKbDTO
    end
    def metadata_dto
      Azure::CognitiveServices::Qnamaker::V4_0::Models::MetadataDTO
    end
    def replace_kb_dto
      Azure::CognitiveServices::Qnamaker::V4_0::Models::ReplaceKbDTO
    end
    def word_alterations_dto
      Azure::CognitiveServices::Qnamaker::V4_0::Models::WordAlterationsDTO
    end
    def context_dto
      Azure::CognitiveServices::Qnamaker::V4_0::Models::ContextDTO
    end
    def knowledgebase_dto
      Azure::CognitiveServices::Qnamaker::V4_0::Models::KnowledgebaseDTO
    end
    def inner_error_model
      Azure::CognitiveServices::Qnamaker::V4_0::Models::InnerErrorModel
    end
    def update_kb_contents_dto
      Azure::CognitiveServices::Qnamaker::V4_0::Models::UpdateKbContentsDTO
    end
    def error_response
      Azure::CognitiveServices::Qnamaker::V4_0::Models::ErrorResponse
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
    def update_qna_dtocontext
      Azure::CognitiveServices::Qnamaker::V4_0::Models::UpdateQnaDTOContext
    end
    def prompt_dtoqna
      Azure::CognitiveServices::Qnamaker::V4_0::Models::PromptDTOQna
    end
    def qn_adtocontext
      Azure::CognitiveServices::Qnamaker::V4_0::Models::QnADTOContext
    end
    def error_response_error
      Azure::CognitiveServices::Qnamaker::V4_0::Models::ErrorResponseError
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
    def error
      Azure::CognitiveServices::Qnamaker::V4_0::Models::Error
    end
  end
end
