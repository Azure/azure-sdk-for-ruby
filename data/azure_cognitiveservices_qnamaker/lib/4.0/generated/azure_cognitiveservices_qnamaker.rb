# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require '4.0/generated/azure_cognitiveservices_qnamaker/module_definition'
require 'ms_rest_azure'

module Azure::CognitiveServices::Qnamaker::V4_0
  autoload :EndpointSettings,                                   '4.0/generated/azure_cognitiveservices_qnamaker/endpoint_settings.rb'
  autoload :EndpointKeys,                                       '4.0/generated/azure_cognitiveservices_qnamaker/endpoint_keys.rb'
  autoload :Alterations,                                        '4.0/generated/azure_cognitiveservices_qnamaker/alterations.rb'
  autoload :Knowledgebase,                                      '4.0/generated/azure_cognitiveservices_qnamaker/knowledgebase.rb'
  autoload :Operations,                                         '4.0/generated/azure_cognitiveservices_qnamaker/operations.rb'
  autoload :QnAMakerClient,                                     '4.0/generated/azure_cognitiveservices_qnamaker/qn_amaker_client.rb'

  module Models
    autoload :FileDTO,                                            '4.0/generated/azure_cognitiveservices_qnamaker/models/file_dto.rb'
    autoload :CreateKbInputDTO,                                   '4.0/generated/azure_cognitiveservices_qnamaker/models/create_kb_input_dto.rb'
    autoload :DeleteKbContentsDTO,                                '4.0/generated/azure_cognitiveservices_qnamaker/models/delete_kb_contents_dto.rb'
    autoload :EndpointSettingsDTO,                                '4.0/generated/azure_cognitiveservices_qnamaker/models/endpoint_settings_dto.rb'
    autoload :EndpointKeysDTO,                                    '4.0/generated/azure_cognitiveservices_qnamaker/models/endpoint_keys_dto.rb'
    autoload :QnADTO,                                             '4.0/generated/azure_cognitiveservices_qnamaker/models/qn_adto.rb'
    autoload :AlterationsDTO,                                     '4.0/generated/azure_cognitiveservices_qnamaker/models/alterations_dto.rb'
    autoload :UpdateQnaDTO,                                       '4.0/generated/azure_cognitiveservices_qnamaker/models/update_qna_dto.rb'
    autoload :Operation,                                          '4.0/generated/azure_cognitiveservices_qnamaker/models/operation.rb'
    autoload :UpdateQuestionsDTO,                                 '4.0/generated/azure_cognitiveservices_qnamaker/models/update_questions_dto.rb'
    autoload :KnowledgebasesDTO,                                  '4.0/generated/azure_cognitiveservices_qnamaker/models/knowledgebases_dto.rb'
    autoload :UpdateMetadataDTO,                                  '4.0/generated/azure_cognitiveservices_qnamaker/models/update_metadata_dto.rb'
    autoload :QnADocumentsDTO,                                    '4.0/generated/azure_cognitiveservices_qnamaker/models/qn_adocuments_dto.rb'
    autoload :PromptDTO,                                          '4.0/generated/azure_cognitiveservices_qnamaker/models/prompt_dto.rb'
    autoload :CreateKbDTO,                                        '4.0/generated/azure_cognitiveservices_qnamaker/models/create_kb_dto.rb'
    autoload :UpdateKbOperationDTO,                               '4.0/generated/azure_cognitiveservices_qnamaker/models/update_kb_operation_dto.rb'
    autoload :ReplaceKbDTO,                                       '4.0/generated/azure_cognitiveservices_qnamaker/models/replace_kb_dto.rb'
    autoload :UpdateKbContentsDTO,                                '4.0/generated/azure_cognitiveservices_qnamaker/models/update_kb_contents_dto.rb'
    autoload :ContextDTO,                                         '4.0/generated/azure_cognitiveservices_qnamaker/models/context_dto.rb'
    autoload :ActiveLearningSettingsDTO,                          '4.0/generated/azure_cognitiveservices_qnamaker/models/active_learning_settings_dto.rb'
    autoload :KnowledgebaseDTO,                                   '4.0/generated/azure_cognitiveservices_qnamaker/models/knowledgebase_dto.rb'
    autoload :WordAlterationsDTO,                                 '4.0/generated/azure_cognitiveservices_qnamaker/models/word_alterations_dto.rb'
    autoload :ErrorResponse,                                      '4.0/generated/azure_cognitiveservices_qnamaker/models/error_response.rb'
    autoload :UpdateContextDTO,                                   '4.0/generated/azure_cognitiveservices_qnamaker/models/update_context_dto.rb'
    autoload :InnerErrorModel,                                    '4.0/generated/azure_cognitiveservices_qnamaker/models/inner_error_model.rb'
    autoload :MetadataDTO,                                        '4.0/generated/azure_cognitiveservices_qnamaker/models/metadata_dto.rb'
    autoload :Error,                                              '4.0/generated/azure_cognitiveservices_qnamaker/models/error.rb'
    autoload :UpdateKbOperationDTOAdd,                            '4.0/generated/azure_cognitiveservices_qnamaker/models/update_kb_operation_dtoadd.rb'
    autoload :UpdateKbOperationDTODelete,                         '4.0/generated/azure_cognitiveservices_qnamaker/models/update_kb_operation_dtodelete.rb'
    autoload :UpdateKbOperationDTOUpdate,                         '4.0/generated/azure_cognitiveservices_qnamaker/models/update_kb_operation_dtoupdate.rb'
    autoload :UpdateQnaDTOQuestions,                              '4.0/generated/azure_cognitiveservices_qnamaker/models/update_qna_dtoquestions.rb'
    autoload :UpdateQnaDTOMetadata,                               '4.0/generated/azure_cognitiveservices_qnamaker/models/update_qna_dtometadata.rb'
    autoload :UpdateQnaDTOContext,                                '4.0/generated/azure_cognitiveservices_qnamaker/models/update_qna_dtocontext.rb'
    autoload :PromptDTOQna,                                       '4.0/generated/azure_cognitiveservices_qnamaker/models/prompt_dtoqna.rb'
    autoload :QnADTOContext,                                      '4.0/generated/azure_cognitiveservices_qnamaker/models/qn_adtocontext.rb'
    autoload :ErrorResponseError,                                 '4.0/generated/azure_cognitiveservices_qnamaker/models/error_response_error.rb'
    autoload :EndpointSettingsDTOActiveLearning,                  '4.0/generated/azure_cognitiveservices_qnamaker/models/endpoint_settings_dtoactive_learning.rb'
    autoload :KnowledgebaseEnvironmentType,                       '4.0/generated/azure_cognitiveservices_qnamaker/models/knowledgebase_environment_type.rb'
    autoload :ErrorCodeType,                                      '4.0/generated/azure_cognitiveservices_qnamaker/models/error_code_type.rb'
    autoload :OperationStateType,                                 '4.0/generated/azure_cognitiveservices_qnamaker/models/operation_state_type.rb'
    autoload :EnvironmentType,                                    '4.0/generated/azure_cognitiveservices_qnamaker/models/environment_type.rb'
  end
end
