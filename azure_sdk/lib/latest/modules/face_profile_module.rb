# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_cognitiveservices_face'

module Azure::Profiles::Latest
  module Face
    Face = Azure::CognitiveServices::Face::V1_0::Face
    Person = Azure::CognitiveServices::Face::V1_0::Person
    PersonGroup = Azure::CognitiveServices::Face::V1_0::PersonGroup
    FaceList = Azure::CognitiveServices::Face::V1_0::FaceList

    module Models
      SimilarFaceResult = Azure::CognitiveServices::Face::V1_0::Models::SimilarFaceResult
      Error = Azure::CognitiveServices::Face::V1_0::Models::Error
      GroupRequest = Azure::CognitiveServices::Face::V1_0::Models::GroupRequest
      FaceRectangle = Azure::CognitiveServices::Face::V1_0::Models::FaceRectangle
      GroupResponse = Azure::CognitiveServices::Face::V1_0::Models::GroupResponse
      FaceLandmarks = Azure::CognitiveServices::Face::V1_0::Models::FaceLandmarks
      IdentifyRequest = Azure::CognitiveServices::Face::V1_0::Models::IdentifyRequest
      HeadPoseProperties = Azure::CognitiveServices::Face::V1_0::Models::HeadPoseProperties
      IdentifyResultCandidate = Azure::CognitiveServices::Face::V1_0::Models::IdentifyResultCandidate
      ColorProperty = Azure::CognitiveServices::Face::V1_0::Models::ColorProperty
      IdentifyResultItem = Azure::CognitiveServices::Face::V1_0::Models::IdentifyResultItem
      MakeupProperties = Azure::CognitiveServices::Face::V1_0::Models::MakeupProperties
      VerifyPersonGroupRequest = Azure::CognitiveServices::Face::V1_0::Models::VerifyPersonGroupRequest
      AccessoryItem = Azure::CognitiveServices::Face::V1_0::Models::AccessoryItem
      VerifyRequest = Azure::CognitiveServices::Face::V1_0::Models::VerifyRequest
      ExposureProperties = Azure::CognitiveServices::Face::V1_0::Models::ExposureProperties
      VerifyResult = Azure::CognitiveServices::Face::V1_0::Models::VerifyResult
      FaceAttributes = Azure::CognitiveServices::Face::V1_0::Models::FaceAttributes
      CreateFaceListRequest = Azure::CognitiveServices::Face::V1_0::Models::CreateFaceListRequest
      PersistedFaceResult = Azure::CognitiveServices::Face::V1_0::Models::PersistedFaceResult
      PersonFaceResult = Azure::CognitiveServices::Face::V1_0::Models::PersonFaceResult
      APIError = Azure::CognitiveServices::Face::V1_0::Models::APIError
      GetFaceListResult = Azure::CognitiveServices::Face::V1_0::Models::GetFaceListResult
      FacialHairProperties = Azure::CognitiveServices::Face::V1_0::Models::FacialHairProperties
      CreatePersonGroupRequest = Azure::CognitiveServices::Face::V1_0::Models::CreatePersonGroupRequest
      HairProperties = Azure::CognitiveServices::Face::V1_0::Models::HairProperties
      PersonGroupResult = Azure::CognitiveServices::Face::V1_0::Models::PersonGroupResult
      BlurProperties = Azure::CognitiveServices::Face::V1_0::Models::BlurProperties
      CreatePersonRequest = Azure::CognitiveServices::Face::V1_0::Models::CreatePersonRequest
      DetectedFace = Azure::CognitiveServices::Face::V1_0::Models::DetectedFace
      CreatePersonResult = Azure::CognitiveServices::Face::V1_0::Models::CreatePersonResult
      Position = Azure::CognitiveServices::Face::V1_0::Models::Position
      PersonResult = Azure::CognitiveServices::Face::V1_0::Models::PersonResult
      OcclusionProperties = Azure::CognitiveServices::Face::V1_0::Models::OcclusionProperties
      UpdatePersonFaceDataRequest = Azure::CognitiveServices::Face::V1_0::Models::UpdatePersonFaceDataRequest
      FindSimilarRequest = Azure::CognitiveServices::Face::V1_0::Models::FindSimilarRequest
      TrainingStatus = Azure::CognitiveServices::Face::V1_0::Models::TrainingStatus
      NoiseProperties = Azure::CognitiveServices::Face::V1_0::Models::NoiseProperties
      ImageUrl = Azure::CognitiveServices::Face::V1_0::Models::ImageUrl
      EmotionProperties = Azure::CognitiveServices::Face::V1_0::Models::EmotionProperties
      Gender = Azure::CognitiveServices::Face::V1_0::Models::Gender
      GlassesTypes = Azure::CognitiveServices::Face::V1_0::Models::GlassesTypes
      BlurLevels = Azure::CognitiveServices::Face::V1_0::Models::BlurLevels
      ExposureLevels = Azure::CognitiveServices::Face::V1_0::Models::ExposureLevels
      NoiseLevels = Azure::CognitiveServices::Face::V1_0::Models::NoiseLevels
      FaceMatchingMode = Azure::CognitiveServices::Face::V1_0::Models::FaceMatchingMode
      TrainingStatusType = Azure::CognitiveServices::Face::V1_0::Models::TrainingStatusType
      FaceAttributeTypes = Azure::CognitiveServices::Face::V1_0::Models::FaceAttributeTypes
      AzureRegions = Azure::CognitiveServices::Face::V1_0::Models::AzureRegions
    end

    class FaceDataClass
      attr_reader :face, :person, :person_group, :face_list, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        client_0 = Azure::CognitiveServices::Face::V1_0::FaceClient.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(client_0)
        @face = client_0.face
        @person = client_0.person
        @person_group = client_0.person_group
        @face_list = client_0.face_list

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/azure_sdk/Latest/Face'
        client.add_user_agent_information(profile_information)
      end

      class ModelClasses
        def similar_face_result
          Azure::CognitiveServices::Face::V1_0::Models::SimilarFaceResult
        end
        def error
          Azure::CognitiveServices::Face::V1_0::Models::Error
        end
        def group_request
          Azure::CognitiveServices::Face::V1_0::Models::GroupRequest
        end
        def face_rectangle
          Azure::CognitiveServices::Face::V1_0::Models::FaceRectangle
        end
        def group_response
          Azure::CognitiveServices::Face::V1_0::Models::GroupResponse
        end
        def face_landmarks
          Azure::CognitiveServices::Face::V1_0::Models::FaceLandmarks
        end
        def identify_request
          Azure::CognitiveServices::Face::V1_0::Models::IdentifyRequest
        end
        def head_pose_properties
          Azure::CognitiveServices::Face::V1_0::Models::HeadPoseProperties
        end
        def identify_result_candidate
          Azure::CognitiveServices::Face::V1_0::Models::IdentifyResultCandidate
        end
        def color_property
          Azure::CognitiveServices::Face::V1_0::Models::ColorProperty
        end
        def identify_result_item
          Azure::CognitiveServices::Face::V1_0::Models::IdentifyResultItem
        end
        def makeup_properties
          Azure::CognitiveServices::Face::V1_0::Models::MakeupProperties
        end
        def verify_person_group_request
          Azure::CognitiveServices::Face::V1_0::Models::VerifyPersonGroupRequest
        end
        def accessory_item
          Azure::CognitiveServices::Face::V1_0::Models::AccessoryItem
        end
        def verify_request
          Azure::CognitiveServices::Face::V1_0::Models::VerifyRequest
        end
        def exposure_properties
          Azure::CognitiveServices::Face::V1_0::Models::ExposureProperties
        end
        def verify_result
          Azure::CognitiveServices::Face::V1_0::Models::VerifyResult
        end
        def face_attributes
          Azure::CognitiveServices::Face::V1_0::Models::FaceAttributes
        end
        def create_face_list_request
          Azure::CognitiveServices::Face::V1_0::Models::CreateFaceListRequest
        end
        def persisted_face_result
          Azure::CognitiveServices::Face::V1_0::Models::PersistedFaceResult
        end
        def person_face_result
          Azure::CognitiveServices::Face::V1_0::Models::PersonFaceResult
        end
        def apierror
          Azure::CognitiveServices::Face::V1_0::Models::APIError
        end
        def get_face_list_result
          Azure::CognitiveServices::Face::V1_0::Models::GetFaceListResult
        end
        def facial_hair_properties
          Azure::CognitiveServices::Face::V1_0::Models::FacialHairProperties
        end
        def create_person_group_request
          Azure::CognitiveServices::Face::V1_0::Models::CreatePersonGroupRequest
        end
        def hair_properties
          Azure::CognitiveServices::Face::V1_0::Models::HairProperties
        end
        def person_group_result
          Azure::CognitiveServices::Face::V1_0::Models::PersonGroupResult
        end
        def blur_properties
          Azure::CognitiveServices::Face::V1_0::Models::BlurProperties
        end
        def create_person_request
          Azure::CognitiveServices::Face::V1_0::Models::CreatePersonRequest
        end
        def detected_face
          Azure::CognitiveServices::Face::V1_0::Models::DetectedFace
        end
        def create_person_result
          Azure::CognitiveServices::Face::V1_0::Models::CreatePersonResult
        end
        def position
          Azure::CognitiveServices::Face::V1_0::Models::Position
        end
        def person_result
          Azure::CognitiveServices::Face::V1_0::Models::PersonResult
        end
        def occlusion_properties
          Azure::CognitiveServices::Face::V1_0::Models::OcclusionProperties
        end
        def update_person_face_data_request
          Azure::CognitiveServices::Face::V1_0::Models::UpdatePersonFaceDataRequest
        end
        def find_similar_request
          Azure::CognitiveServices::Face::V1_0::Models::FindSimilarRequest
        end
        def training_status
          Azure::CognitiveServices::Face::V1_0::Models::TrainingStatus
        end
        def noise_properties
          Azure::CognitiveServices::Face::V1_0::Models::NoiseProperties
        end
        def image_url
          Azure::CognitiveServices::Face::V1_0::Models::ImageUrl
        end
        def emotion_properties
          Azure::CognitiveServices::Face::V1_0::Models::EmotionProperties
        end
        def gender
          Azure::CognitiveServices::Face::V1_0::Models::Gender
        end
        def glasses_types
          Azure::CognitiveServices::Face::V1_0::Models::GlassesTypes
        end
        def blur_levels
          Azure::CognitiveServices::Face::V1_0::Models::BlurLevels
        end
        def exposure_levels
          Azure::CognitiveServices::Face::V1_0::Models::ExposureLevels
        end
        def noise_levels
          Azure::CognitiveServices::Face::V1_0::Models::NoiseLevels
        end
        def face_matching_mode
          Azure::CognitiveServices::Face::V1_0::Models::FaceMatchingMode
        end
        def training_status_type
          Azure::CognitiveServices::Face::V1_0::Models::TrainingStatusType
        end
        def face_attribute_types
          Azure::CognitiveServices::Face::V1_0::Models::FaceAttributeTypes
        end
        def azure_regions
          Azure::CognitiveServices::Face::V1_0::Models::AzureRegions
        end
      end
    end
  end
end
