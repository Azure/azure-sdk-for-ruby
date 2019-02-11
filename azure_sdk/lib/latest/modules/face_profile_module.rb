# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_cognitiveservices_face'

module Azure::Profiles::Latest
  module Face
    PersonGroupPerson = Azure::CognitiveServices::Face::V1_0::PersonGroupPerson
    Face = Azure::CognitiveServices::Face::V1_0::Face
    PersonGroupOperations = Azure::CognitiveServices::Face::V1_0::PersonGroupOperations
    FaceListOperations = Azure::CognitiveServices::Face::V1_0::FaceListOperations

    module Models
      APIError = Azure::CognitiveServices::Face::V1_0::Models::APIError
      FaceRectangle = Azure::CognitiveServices::Face::V1_0::Models::FaceRectangle
      ImageUrl = Azure::CognitiveServices::Face::V1_0::Models::ImageUrl
      Error = Azure::CognitiveServices::Face::V1_0::Models::Error
      GroupRequest = Azure::CognitiveServices::Face::V1_0::Models::GroupRequest
      FaceLandmarks = Azure::CognitiveServices::Face::V1_0::Models::FaceLandmarks
      GroupResult = Azure::CognitiveServices::Face::V1_0::Models::GroupResult
      HeadPose = Azure::CognitiveServices::Face::V1_0::Models::HeadPose
      IdentifyRequest = Azure::CognitiveServices::Face::V1_0::Models::IdentifyRequest
      HairColor = Azure::CognitiveServices::Face::V1_0::Models::HairColor
      IdentifyCandidate = Azure::CognitiveServices::Face::V1_0::Models::IdentifyCandidate
      Makeup = Azure::CognitiveServices::Face::V1_0::Models::Makeup
      IdentifyResult = Azure::CognitiveServices::Face::V1_0::Models::IdentifyResult
      Accessory = Azure::CognitiveServices::Face::V1_0::Models::Accessory
      VerifyFaceToPersonRequest = Azure::CognitiveServices::Face::V1_0::Models::VerifyFaceToPersonRequest
      Exposure = Azure::CognitiveServices::Face::V1_0::Models::Exposure
      VerifyFaceToFaceRequest = Azure::CognitiveServices::Face::V1_0::Models::VerifyFaceToFaceRequest
      FaceAttributes = Azure::CognitiveServices::Face::V1_0::Models::FaceAttributes
      VerifyResult = Azure::CognitiveServices::Face::V1_0::Models::VerifyResult
      PersistedFace = Azure::CognitiveServices::Face::V1_0::Models::PersistedFace
      FacialHair = Azure::CognitiveServices::Face::V1_0::Models::FacialHair
      Coordinate = Azure::CognitiveServices::Face::V1_0::Models::Coordinate
      Emotion = Azure::CognitiveServices::Face::V1_0::Models::Emotion
      Occlusion = Azure::CognitiveServices::Face::V1_0::Models::Occlusion
      Noise = Azure::CognitiveServices::Face::V1_0::Models::Noise
      Hair = Azure::CognitiveServices::Face::V1_0::Models::Hair
      NameAndUserDataContract = Azure::CognitiveServices::Face::V1_0::Models::NameAndUserDataContract
      DetectedFace = Azure::CognitiveServices::Face::V1_0::Models::DetectedFace
      UpdatePersonFaceRequest = Azure::CognitiveServices::Face::V1_0::Models::UpdatePersonFaceRequest
      Blur = Azure::CognitiveServices::Face::V1_0::Models::Blur
      TrainingStatus = Azure::CognitiveServices::Face::V1_0::Models::TrainingStatus
      FaceList = Azure::CognitiveServices::Face::V1_0::Models::FaceList
      PersonGroup = Azure::CognitiveServices::Face::V1_0::Models::PersonGroup
      Person = Azure::CognitiveServices::Face::V1_0::Models::Person
      GlassesType = Azure::CognitiveServices::Face::V1_0::Models::GlassesType
      HairColorType = Azure::CognitiveServices::Face::V1_0::Models::HairColorType
      AccessoryType = Azure::CognitiveServices::Face::V1_0::Models::AccessoryType
      BlurLevel = Azure::CognitiveServices::Face::V1_0::Models::BlurLevel
      ExposureLevel = Azure::CognitiveServices::Face::V1_0::Models::ExposureLevel
      NoiseLevel = Azure::CognitiveServices::Face::V1_0::Models::NoiseLevel
      FindSimilarMatchMode = Azure::CognitiveServices::Face::V1_0::Models::FindSimilarMatchMode
      Gender = Azure::CognitiveServices::Face::V1_0::Models::Gender
      TrainingStatusType = Azure::CognitiveServices::Face::V1_0::Models::TrainingStatusType
      FaceAttributeType = Azure::CognitiveServices::Face::V1_0::Models::FaceAttributeType
      FindSimilarRequest = Azure::CognitiveServices::Face::V1_0::Models::FindSimilarRequest
      SimilarFace = Azure::CognitiveServices::Face::V1_0::Models::SimilarFace
    end

    class FaceDataClass
      attr_reader :person_group_person, :face, :person_group_operations, :face_list_operations, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        @client_0 = Azure::CognitiveServices::Face::V1_0::FaceClient.new(configurable.credentials, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @person_group_person = @client_0.person_group_person
        @face = @client_0.face
        @person_group_operations = @client_0.person_group_operations
        @face_list_operations = @client_0.face_list_operations

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Face"
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
        def apierror
          Azure::CognitiveServices::Face::V1_0::Models::APIError
        end
        def face_rectangle
          Azure::CognitiveServices::Face::V1_0::Models::FaceRectangle
        end
        def image_url
          Azure::CognitiveServices::Face::V1_0::Models::ImageUrl
        end
        def error
          Azure::CognitiveServices::Face::V1_0::Models::Error
        end
        def group_request
          Azure::CognitiveServices::Face::V1_0::Models::GroupRequest
        end
        def face_landmarks
          Azure::CognitiveServices::Face::V1_0::Models::FaceLandmarks
        end
        def group_result
          Azure::CognitiveServices::Face::V1_0::Models::GroupResult
        end
        def head_pose
          Azure::CognitiveServices::Face::V1_0::Models::HeadPose
        end
        def identify_request
          Azure::CognitiveServices::Face::V1_0::Models::IdentifyRequest
        end
        def hair_color
          Azure::CognitiveServices::Face::V1_0::Models::HairColor
        end
        def identify_candidate
          Azure::CognitiveServices::Face::V1_0::Models::IdentifyCandidate
        end
        def makeup
          Azure::CognitiveServices::Face::V1_0::Models::Makeup
        end
        def identify_result
          Azure::CognitiveServices::Face::V1_0::Models::IdentifyResult
        end
        def accessory
          Azure::CognitiveServices::Face::V1_0::Models::Accessory
        end
        def verify_face_to_person_request
          Azure::CognitiveServices::Face::V1_0::Models::VerifyFaceToPersonRequest
        end
        def exposure
          Azure::CognitiveServices::Face::V1_0::Models::Exposure
        end
        def verify_face_to_face_request
          Azure::CognitiveServices::Face::V1_0::Models::VerifyFaceToFaceRequest
        end
        def face_attributes
          Azure::CognitiveServices::Face::V1_0::Models::FaceAttributes
        end
        def verify_result
          Azure::CognitiveServices::Face::V1_0::Models::VerifyResult
        end
        def persisted_face
          Azure::CognitiveServices::Face::V1_0::Models::PersistedFace
        end
        def facial_hair
          Azure::CognitiveServices::Face::V1_0::Models::FacialHair
        end
        def coordinate
          Azure::CognitiveServices::Face::V1_0::Models::Coordinate
        end
        def emotion
          Azure::CognitiveServices::Face::V1_0::Models::Emotion
        end
        def occlusion
          Azure::CognitiveServices::Face::V1_0::Models::Occlusion
        end
        def noise
          Azure::CognitiveServices::Face::V1_0::Models::Noise
        end
        def hair
          Azure::CognitiveServices::Face::V1_0::Models::Hair
        end
        def name_and_user_data_contract
          Azure::CognitiveServices::Face::V1_0::Models::NameAndUserDataContract
        end
        def detected_face
          Azure::CognitiveServices::Face::V1_0::Models::DetectedFace
        end
        def update_person_face_request
          Azure::CognitiveServices::Face::V1_0::Models::UpdatePersonFaceRequest
        end
        def blur
          Azure::CognitiveServices::Face::V1_0::Models::Blur
        end
        def training_status
          Azure::CognitiveServices::Face::V1_0::Models::TrainingStatus
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
        def gender
          Azure::CognitiveServices::Face::V1_0::Models::Gender
        end
        def training_status_type
          Azure::CognitiveServices::Face::V1_0::Models::TrainingStatusType
        end
        def face_attribute_type
          Azure::CognitiveServices::Face::V1_0::Models::FaceAttributeType
        end
        def find_similar_request
          Azure::CognitiveServices::Face::V1_0::Models::FindSimilarRequest
        end
        def similar_face
          Azure::CognitiveServices::Face::V1_0::Models::SimilarFace
        end
      end
    end
  end
end
