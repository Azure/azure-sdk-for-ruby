# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_cognitiveservices_face'

module Azure::Face::Profiles::Latest
  FaceListOperations = Azure::CognitiveServices::Face::V1_0::FaceListOperations
  LargePersonGroupPerson = Azure::CognitiveServices::Face::V1_0::LargePersonGroupPerson
  LargePersonGroupOperations = Azure::CognitiveServices::Face::V1_0::LargePersonGroupOperations
  LargeFaceListOperations = Azure::CognitiveServices::Face::V1_0::LargeFaceListOperations
  SnapshotOperations = Azure::CognitiveServices::Face::V1_0::SnapshotOperations
  Face = Azure::CognitiveServices::Face::V1_0::Face
  PersonGroupPerson = Azure::CognitiveServices::Face::V1_0::PersonGroupPerson
  PersonGroupOperations = Azure::CognitiveServices::Face::V1_0::PersonGroupOperations

  module Models
    LargeFaceList = Azure::CognitiveServices::Face::V1_0::Models::LargeFaceList
    LargePersonGroup = Azure::CognitiveServices::Face::V1_0::Models::LargePersonGroup
    RecognitionModel = Azure::CognitiveServices::Face::V1_0::Models::RecognitionModel
    Gender = Azure::CognitiveServices::Face::V1_0::Models::Gender
    GlassesType = Azure::CognitiveServices::Face::V1_0::Models::GlassesType
    HairColorType = Azure::CognitiveServices::Face::V1_0::Models::HairColorType
    AccessoryType = Azure::CognitiveServices::Face::V1_0::Models::AccessoryType
    BlurLevel = Azure::CognitiveServices::Face::V1_0::Models::BlurLevel
    ExposureLevel = Azure::CognitiveServices::Face::V1_0::Models::ExposureLevel
    NoiseLevel = Azure::CognitiveServices::Face::V1_0::Models::NoiseLevel
    FindSimilarMatchMode = Azure::CognitiveServices::Face::V1_0::Models::FindSimilarMatchMode
    TrainingStatusType = Azure::CognitiveServices::Face::V1_0::Models::TrainingStatusType
    SnapshotApplyMode = Azure::CognitiveServices::Face::V1_0::Models::SnapshotApplyMode
    SnapshotObjectType = Azure::CognitiveServices::Face::V1_0::Models::SnapshotObjectType
    OperationStatusType = Azure::CognitiveServices::Face::V1_0::Models::OperationStatusType
    FaceAttributeType = Azure::CognitiveServices::Face::V1_0::Models::FaceAttributeType
    DetectionModel = Azure::CognitiveServices::Face::V1_0::Models::DetectionModel
    Error = Azure::CognitiveServices::Face::V1_0::Models::Error
    IdentifyRequest = Azure::CognitiveServices::Face::V1_0::Models::IdentifyRequest
    IdentifyCandidate = Azure::CognitiveServices::Face::V1_0::Models::IdentifyCandidate
    FaceRectangle = Azure::CognitiveServices::Face::V1_0::Models::FaceRectangle
    IdentifyResult = Azure::CognitiveServices::Face::V1_0::Models::IdentifyResult
    FaceLandmarks = Azure::CognitiveServices::Face::V1_0::Models::FaceLandmarks
    VerifyFaceToPersonRequest = Azure::CognitiveServices::Face::V1_0::Models::VerifyFaceToPersonRequest
    HeadPose = Azure::CognitiveServices::Face::V1_0::Models::HeadPose
    VerifyFaceToFaceRequest = Azure::CognitiveServices::Face::V1_0::Models::VerifyFaceToFaceRequest
    HairColor = Azure::CognitiveServices::Face::V1_0::Models::HairColor
    VerifyResult = Azure::CognitiveServices::Face::V1_0::Models::VerifyResult
    Makeup = Azure::CognitiveServices::Face::V1_0::Models::Makeup
    PersistedFace = Azure::CognitiveServices::Face::V1_0::Models::PersistedFace
    Accessory = Azure::CognitiveServices::Face::V1_0::Models::Accessory
    Hair = Azure::CognitiveServices::Face::V1_0::Models::Hair
    Occlusion = Azure::CognitiveServices::Face::V1_0::Models::Occlusion
    Noise = Azure::CognitiveServices::Face::V1_0::Models::Noise
    Blur = Azure::CognitiveServices::Face::V1_0::Models::Blur
    DetectedFace = Azure::CognitiveServices::Face::V1_0::Models::DetectedFace
    SimilarFace = Azure::CognitiveServices::Face::V1_0::Models::SimilarFace
    ImageUrl = Azure::CognitiveServices::Face::V1_0::Models::ImageUrl
    GroupResult = Azure::CognitiveServices::Face::V1_0::Models::GroupResult
    OperationStatus = Azure::CognitiveServices::Face::V1_0::Models::OperationStatus
    Coordinate = Azure::CognitiveServices::Face::V1_0::Models::Coordinate
    UpdateSnapshotRequest = Azure::CognitiveServices::Face::V1_0::Models::UpdateSnapshotRequest
    Emotion = Azure::CognitiveServices::Face::V1_0::Models::Emotion
    TakeSnapshotRequest = Azure::CognitiveServices::Face::V1_0::Models::TakeSnapshotRequest
    FaceAttributes = Azure::CognitiveServices::Face::V1_0::Models::FaceAttributes
    UpdateFaceRequest = Azure::CognitiveServices::Face::V1_0::Models::UpdateFaceRequest
    GroupRequest = Azure::CognitiveServices::Face::V1_0::Models::GroupRequest
    TrainingStatus = Azure::CognitiveServices::Face::V1_0::Models::TrainingStatus
    FacialHair = Azure::CognitiveServices::Face::V1_0::Models::FacialHair
    NameAndUserDataContract = Azure::CognitiveServices::Face::V1_0::Models::NameAndUserDataContract
    FindSimilarRequest = Azure::CognitiveServices::Face::V1_0::Models::FindSimilarRequest
    APIError = Azure::CognitiveServices::Face::V1_0::Models::APIError
    Snapshot = Azure::CognitiveServices::Face::V1_0::Models::Snapshot
    Exposure = Azure::CognitiveServices::Face::V1_0::Models::Exposure
    ApplySnapshotRequest = Azure::CognitiveServices::Face::V1_0::Models::ApplySnapshotRequest
    MetaDataContract = Azure::CognitiveServices::Face::V1_0::Models::MetaDataContract
    FaceList = Azure::CognitiveServices::Face::V1_0::Models::FaceList
    PersonGroup = Azure::CognitiveServices::Face::V1_0::Models::PersonGroup
    Person = Azure::CognitiveServices::Face::V1_0::Models::Person
  end

  #
  # FaceDataClass
  #
  class FaceDataClass
    attr_reader :face_list_operations, :large_person_group_person, :large_person_group_operations, :large_face_list_operations, :snapshot_operations, :face, :person_group_person, :person_group_operations, :configurable, :base_url, :options, :model_classes

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

      @client_0 = Azure::CognitiveServices::Face::V1_0::FaceClient.new(configurable.credentials, options)
      if(@client_0.respond_to?(:subscription_id))
        @client_0.subscription_id = configurable.subscription_id
      end
      add_telemetry(@client_0)
      @face_list_operations = @client_0.face_list_operations
      @large_person_group_person = @client_0.large_person_group_person
      @large_person_group_operations = @client_0.large_person_group_operations
      @large_face_list_operations = @client_0.large_face_list_operations
      @snapshot_operations = @client_0.snapshot_operations
      @face = @client_0.face
      @person_group_person = @client_0.person_group_person
      @person_group_operations = @client_0.person_group_operations

      @model_classes = ModelClasses.new
    end

    def add_telemetry(client)
      profile_information = 'Profiles/Latest/Face'
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
    def large_face_list
      Azure::CognitiveServices::Face::V1_0::Models::LargeFaceList
    end
    def large_person_group
      Azure::CognitiveServices::Face::V1_0::Models::LargePersonGroup
    end
    def recognition_model
      Azure::CognitiveServices::Face::V1_0::Models::RecognitionModel
    end
    def gender
      Azure::CognitiveServices::Face::V1_0::Models::Gender
    end
    def glasses_type
      Azure::CognitiveServices::Face::V1_0::Models::GlassesType
    end
    def hair_color_type
      Azure::CognitiveServices::Face::V1_0::Models::HairColorType
    end
    def accessory_type
      Azure::CognitiveServices::Face::V1_0::Models::AccessoryType
    end
    def blur_level
      Azure::CognitiveServices::Face::V1_0::Models::BlurLevel
    end
    def exposure_level
      Azure::CognitiveServices::Face::V1_0::Models::ExposureLevel
    end
    def noise_level
      Azure::CognitiveServices::Face::V1_0::Models::NoiseLevel
    end
    def find_similar_match_mode
      Azure::CognitiveServices::Face::V1_0::Models::FindSimilarMatchMode
    end
    def training_status_type
      Azure::CognitiveServices::Face::V1_0::Models::TrainingStatusType
    end
    def snapshot_apply_mode
      Azure::CognitiveServices::Face::V1_0::Models::SnapshotApplyMode
    end
    def snapshot_object_type
      Azure::CognitiveServices::Face::V1_0::Models::SnapshotObjectType
    end
    def operation_status_type
      Azure::CognitiveServices::Face::V1_0::Models::OperationStatusType
    end
    def face_attribute_type
      Azure::CognitiveServices::Face::V1_0::Models::FaceAttributeType
    end
    def detection_model
      Azure::CognitiveServices::Face::V1_0::Models::DetectionModel
    end
    def error
      Azure::CognitiveServices::Face::V1_0::Models::Error
    end
    def identify_request
      Azure::CognitiveServices::Face::V1_0::Models::IdentifyRequest
    end
    def identify_candidate
      Azure::CognitiveServices::Face::V1_0::Models::IdentifyCandidate
    end
    def face_rectangle
      Azure::CognitiveServices::Face::V1_0::Models::FaceRectangle
    end
    def identify_result
      Azure::CognitiveServices::Face::V1_0::Models::IdentifyResult
    end
    def face_landmarks
      Azure::CognitiveServices::Face::V1_0::Models::FaceLandmarks
    end
    def verify_face_to_person_request
      Azure::CognitiveServices::Face::V1_0::Models::VerifyFaceToPersonRequest
    end
    def head_pose
      Azure::CognitiveServices::Face::V1_0::Models::HeadPose
    end
    def verify_face_to_face_request
      Azure::CognitiveServices::Face::V1_0::Models::VerifyFaceToFaceRequest
    end
    def hair_color
      Azure::CognitiveServices::Face::V1_0::Models::HairColor
    end
    def verify_result
      Azure::CognitiveServices::Face::V1_0::Models::VerifyResult
    end
    def makeup
      Azure::CognitiveServices::Face::V1_0::Models::Makeup
    end
    def persisted_face
      Azure::CognitiveServices::Face::V1_0::Models::PersistedFace
    end
    def accessory
      Azure::CognitiveServices::Face::V1_0::Models::Accessory
    end
    def hair
      Azure::CognitiveServices::Face::V1_0::Models::Hair
    end
    def occlusion
      Azure::CognitiveServices::Face::V1_0::Models::Occlusion
    end
    def noise
      Azure::CognitiveServices::Face::V1_0::Models::Noise
    end
    def blur
      Azure::CognitiveServices::Face::V1_0::Models::Blur
    end
    def detected_face
      Azure::CognitiveServices::Face::V1_0::Models::DetectedFace
    end
    def similar_face
      Azure::CognitiveServices::Face::V1_0::Models::SimilarFace
    end
    def image_url
      Azure::CognitiveServices::Face::V1_0::Models::ImageUrl
    end
    def group_result
      Azure::CognitiveServices::Face::V1_0::Models::GroupResult
    end
    def operation_status
      Azure::CognitiveServices::Face::V1_0::Models::OperationStatus
    end
    def coordinate
      Azure::CognitiveServices::Face::V1_0::Models::Coordinate
    end
    def update_snapshot_request
      Azure::CognitiveServices::Face::V1_0::Models::UpdateSnapshotRequest
    end
    def emotion
      Azure::CognitiveServices::Face::V1_0::Models::Emotion
    end
    def take_snapshot_request
      Azure::CognitiveServices::Face::V1_0::Models::TakeSnapshotRequest
    end
    def face_attributes
      Azure::CognitiveServices::Face::V1_0::Models::FaceAttributes
    end
    def update_face_request
      Azure::CognitiveServices::Face::V1_0::Models::UpdateFaceRequest
    end
    def group_request
      Azure::CognitiveServices::Face::V1_0::Models::GroupRequest
    end
    def training_status
      Azure::CognitiveServices::Face::V1_0::Models::TrainingStatus
    end
    def facial_hair
      Azure::CognitiveServices::Face::V1_0::Models::FacialHair
    end
    def name_and_user_data_contract
      Azure::CognitiveServices::Face::V1_0::Models::NameAndUserDataContract
    end
    def find_similar_request
      Azure::CognitiveServices::Face::V1_0::Models::FindSimilarRequest
    end
    def apierror
      Azure::CognitiveServices::Face::V1_0::Models::APIError
    end
    def snapshot
      Azure::CognitiveServices::Face::V1_0::Models::Snapshot
    end
    def exposure
      Azure::CognitiveServices::Face::V1_0::Models::Exposure
    end
    def apply_snapshot_request
      Azure::CognitiveServices::Face::V1_0::Models::ApplySnapshotRequest
    end
    def meta_data_contract
      Azure::CognitiveServices::Face::V1_0::Models::MetaDataContract
    end
    def face_list
      Azure::CognitiveServices::Face::V1_0::Models::FaceList
    end
    def person_group
      Azure::CognitiveServices::Face::V1_0::Models::PersonGroup
    end
    def person
      Azure::CognitiveServices::Face::V1_0::Models::Person
    end
  end
end
