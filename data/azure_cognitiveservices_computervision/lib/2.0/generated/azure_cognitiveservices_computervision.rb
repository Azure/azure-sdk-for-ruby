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
require '2.0/generated/azure_cognitiveservices_computervision/module_definition'
require 'ms_rest_azure'

module Azure::CognitiveServices::ComputerVision::V2_0
  autoload :ComputerVisionClient,                               '2.0/generated/azure_cognitiveservices_computervision/computer_vision_client.rb'

  module Models
    autoload :DetectResult,                                       '2.0/generated/azure_cognitiveservices_computervision/models/detect_result.rb'
    autoload :FaceRectangle,                                      '2.0/generated/azure_cognitiveservices_computervision/models/face_rectangle.rb'
    autoload :ModelDescription,                                   '2.0/generated/azure_cognitiveservices_computervision/models/model_description.rb'
    autoload :LandmarksModel,                                     '2.0/generated/azure_cognitiveservices_computervision/models/landmarks_model.rb'
    autoload :ListModelsResult,                                   '2.0/generated/azure_cognitiveservices_computervision/models/list_models_result.rb'
    autoload :Category,                                           '2.0/generated/azure_cognitiveservices_computervision/models/category.rb'
    autoload :DomainModelResults,                                 '2.0/generated/azure_cognitiveservices_computervision/models/domain_model_results.rb'
    autoload :ColorInfo,                                          '2.0/generated/azure_cognitiveservices_computervision/models/color_info.rb'
    autoload :OcrWord,                                            '2.0/generated/azure_cognitiveservices_computervision/models/ocr_word.rb'
    autoload :ImageTag,                                           '2.0/generated/azure_cognitiveservices_computervision/models/image_tag.rb'
    autoload :OcrLine,                                            '2.0/generated/azure_cognitiveservices_computervision/models/ocr_line.rb'
    autoload :ImageDescriptionDetails,                            '2.0/generated/azure_cognitiveservices_computervision/models/image_description_details.rb'
    autoload :OcrRegion,                                          '2.0/generated/azure_cognitiveservices_computervision/models/ocr_region.rb'
    autoload :BoundingRect,                                       '2.0/generated/azure_cognitiveservices_computervision/models/bounding_rect.rb'
    autoload :OcrResult,                                          '2.0/generated/azure_cognitiveservices_computervision/models/ocr_result.rb'
    autoload :DetectedObject,                                     '2.0/generated/azure_cognitiveservices_computervision/models/detected_object.rb'
    autoload :TagResult,                                          '2.0/generated/azure_cognitiveservices_computervision/models/tag_result.rb'
    autoload :ImageAnalysis,                                      '2.0/generated/azure_cognitiveservices_computervision/models/image_analysis.rb'
    autoload :AreaOfInterestResult,                               '2.0/generated/azure_cognitiveservices_computervision/models/area_of_interest_result.rb'
    autoload :CelebritiesModel,                                   '2.0/generated/azure_cognitiveservices_computervision/models/celebrities_model.rb'
    autoload :ImageUrl,                                           '2.0/generated/azure_cognitiveservices_computervision/models/image_url.rb'
    autoload :AdultInfo,                                          '2.0/generated/azure_cognitiveservices_computervision/models/adult_info.rb'
    autoload :ComputerVisionError,                                '2.0/generated/azure_cognitiveservices_computervision/models/computer_vision_error.rb'
    autoload :ImageCaption,                                       '2.0/generated/azure_cognitiveservices_computervision/models/image_caption.rb'
    autoload :LandmarkResults,                                    '2.0/generated/azure_cognitiveservices_computervision/models/landmark_results.rb'
    autoload :ObjectHierarchy,                                    '2.0/generated/azure_cognitiveservices_computervision/models/object_hierarchy.rb'
    autoload :CelebrityResults,                                   '2.0/generated/azure_cognitiveservices_computervision/models/celebrity_results.rb'
    autoload :ImageDescription,                                   '2.0/generated/azure_cognitiveservices_computervision/models/image_description.rb'
    autoload :Word,                                               '2.0/generated/azure_cognitiveservices_computervision/models/word.rb'
    autoload :ImageType,                                          '2.0/generated/azure_cognitiveservices_computervision/models/image_type.rb'
    autoload :Line,                                               '2.0/generated/azure_cognitiveservices_computervision/models/line.rb'
    autoload :ImageMetadata,                                      '2.0/generated/azure_cognitiveservices_computervision/models/image_metadata.rb'
    autoload :RecognitionResult,                                  '2.0/generated/azure_cognitiveservices_computervision/models/recognition_result.rb'
    autoload :FaceDescription,                                    '2.0/generated/azure_cognitiveservices_computervision/models/face_description.rb'
    autoload :TextOperationResult,                                '2.0/generated/azure_cognitiveservices_computervision/models/text_operation_result.rb'
    autoload :CategoryDetail,                                     '2.0/generated/azure_cognitiveservices_computervision/models/category_detail.rb'
    autoload :Gender,                                             '2.0/generated/azure_cognitiveservices_computervision/models/gender.rb'
    autoload :TextOperationStatusCodes,                           '2.0/generated/azure_cognitiveservices_computervision/models/text_operation_status_codes.rb'
    autoload :OcrLanguages,                                       '2.0/generated/azure_cognitiveservices_computervision/models/ocr_languages.rb'
    autoload :VisualFeatureTypes,                                 '2.0/generated/azure_cognitiveservices_computervision/models/visual_feature_types.rb'
    autoload :TextRecognitionMode,                                '2.0/generated/azure_cognitiveservices_computervision/models/text_recognition_mode.rb'
    autoload :Details,                                            '2.0/generated/azure_cognitiveservices_computervision/models/details.rb'
  end
end
