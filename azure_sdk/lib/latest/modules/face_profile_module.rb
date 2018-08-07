# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_cognitiveservices_face'

module Azure::Profiles::Latest
  module Face
    PersonGroupPerson = Azure::CognitiveServices::Face::V1_0::PersonGroupPerson
    PersonGroupOperations = Azure::CognitiveServices::Face::V1_0::PersonGroupOperations
    Face = Azure::CognitiveServices::Face::V1_0::Face
    FaceListOperations = Azure::CognitiveServices::Face::V1_0::FaceListOperations
    LargePersonGroupOperations = Azure::CognitiveServices::Face::V1_0::LargePersonGroupOperations
    LargeFaceListOperations = Azure::CognitiveServices::Face::V1_0::LargeFaceListOperations
    LargePersonGroupPerson = Azure::CognitiveServices::Face::V1_0::LargePersonGroupPerson

    module Models
      APIError = Azure::CognitiveServices::Face::V1_0::Models::APIError
      SimilarFace = Azure::CognitiveServices::Face::V1_0::Models::SimilarFace
      GroupRequest = Azure::CognitiveServices::Face::V1_0::Models::GroupRequest
      GroupResult = Azure::CognitiveServices::Face::V1_0::Models::GroupResult
      FaceLandmarks = Azure::CognitiveServices::Face::V1_0::Models::FaceLandmarks
      IdentifyRequest = Azure::CognitiveServices::Face::V1_0::Models::IdentifyRequest
      HeadPose = Azure::CognitiveServices::Face::V1_0::Models::HeadPose
      IdentifyCandidate = Azure::CognitiveServices::Face::V1_0::Models::IdentifyCandidate
      HairColor = Azure::CognitiveServices::Face::V1_0::Models::HairColor
      IdentifyResult = Azure::CognitiveServices::Face::V1_0::Models::IdentifyResult
      Makeup = Azure::CognitiveServices::Face::V1_0::Models::Makeup
      VerifyFaceToPersonRequest = Azure::CognitiveServices::Face::V1_0::Models::VerifyFaceToPersonRequest
      FaceRectangle = Azure::CognitiveServices::Face::V1_0::Models::FaceRectangle
      Accessory = Azure::CognitiveServices::Face::V1_0::Models::Accessory
      VerifyFaceToFaceRequest = Azure::CognitiveServices::Face::V1_0::Models::VerifyFaceToFaceRequest
      Exposure = Azure::CognitiveServices::Face::V1_0::Models::Exposure
      VerifyResult = Azure::CognitiveServices::Face::V1_0::Models::VerifyResult
      FaceAttributes = Azure::CognitiveServices::Face::V1_0::Models::FaceAttributes
      PersistedFace = Azure::CognitiveServices::Face::V1_0::Models::PersistedFace
      FindSimilarRequest = Azure::CognitiveServices::Face::V1_0::Models::FindSimilarRequest
      Error = Azure::CognitiveServices::Face::V1_0::Models::Error
      FacialHair = Azure::CognitiveServices::Face::V1_0::Models::FacialHair
      Hair = Azure::CognitiveServices::Face::V1_0::Models::Hair
      Blur = Azure::CognitiveServices::Face::V1_0::Models::Blur
      Emotion = Azure::CognitiveServices::Face::V1_0::Models::Emotion
      NameAndUserDataContract = Azure::CognitiveServices::Face::V1_0::Models::NameAndUserDataContract
      Coordinate = Azure::CognitiveServices::Face::V1_0::Models::Coordinate
      TrainingStatus = Azure::CognitiveServices::Face::V1_0::Models::TrainingStatus
      Occlusion = Azure::CognitiveServices::Face::V1_0::Models::Occlusion
      ImageUrl = Azure::CognitiveServices::Face::V1_0::Models::ImageUrl
      UpdateFaceRequest = Azure::CognitiveServices::Face::V1_0::Models::UpdateFaceRequest
      FaceList = Azure::CognitiveServices::Face::V1_0::Models::FaceList
      PersonGroup = Azure::CognitiveServices::Face::V1_0::Models::PersonGroup
      Person = Azure::CognitiveServices::Face::V1_0::Models::Person
      LargeFaceList = Azure::CognitiveServices::Face::V1_0::Models::LargeFaceList
      LargePersonGroup = Azure::CognitiveServices::Face::V1_0::Models::LargePersonGroup
      GlassesType = Azure::CognitiveServices::Face::V1_0::Models::GlassesType
      HairColorType = Azure::CognitiveServices::Face::V1_0::Models::HairColorType
      AccessoryType = Azure::CognitiveServices::Face::V1_0::Models::AccessoryType
      BlurLevel = Azure::CognitiveServices::Face::V1_0::Models::BlurLevel
      Noise = Azure::CognitiveServices::Face::V1_0::Models::Noise
      Gender = Azure::CognitiveServices::Face::V1_0::Models::Gender
      ExposureLevel = Azure::CognitiveServices::Face::V1_0::Models::ExposureLevel
      NoiseLevel = Azure::CognitiveServices::Face::V1_0::Models::NoiseLevel
      FindSimilarMatchMode = Azure::CognitiveServices::Face::V1_0::Models::FindSimilarMatchMode
      TrainingStatusType = Azure::CognitiveServices::Face::V1_0::Models::TrainingStatusType
      FaceAttributeType = Azure::CognitiveServices::Face::V1_0::Models::FaceAttributeType
      DetectedFace = Azure::CognitiveServices::Face::V1_0::Models::DetectedFace
    end

    class FaceDataClass
      attr_reader :person_group_person, :person_group_operations, :face, :face_list_operations, :large_person_group_operations, :large_face_list_operations, :large_person_group_person, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        @client_0 = Azure::CognitiveServices::Face::V1_0::FaceClient.new(configurable.credentials, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @person_group_person = @client_0.person_group_person
        @person_group_operations = @client_0.person_group_operations
        @face = @client_0.face
        @face_list_operations = @client_0.face_list_operations
        @large_person_group_operations = @client_0.large_person_group_operations
        @large_face_list_operations = @client_0.large_face_list_operations
        @large_person_group_person = @client_0.large_person_group_person

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
        def similar_face
          Azure::CognitiveServices::Face::V1_0::Models::SimilarFace
        end
        def group_request
          Azure::CognitiveServices::Face::V1_0::Models::GroupRequest
        end
        def group_result
          Azure::CognitiveServices::Face::V1_0::Models::GroupResult
        end
        def face_landmarks
          Azure::CognitiveServices::Face::V1_0::Models::FaceLandmarks
        end
        def identify_request
          Azure::CognitiveServices::Face::V1_0::Models::IdentifyRequest
        end
        def head_pose
          Azure::CognitiveServices::Face::V1_0::Models::HeadPose
        end
        def identify_candidate
          Azure::CognitiveServices::Face::V1_0::Models::IdentifyCandidate
        end
        def hair_color
          Azure::CognitiveServices::Face::V1_0::Models::HairColor
        end
        def identify_result
          Azure::CognitiveServices::Face::V1_0::Models::IdentifyResult
        end
        def makeup
          Azure::CognitiveServices::Face::V1_0::Models::Makeup
        end
        def verify_face_to_person_request
          Azure::CognitiveServices::Face::V1_0::Models::VerifyFaceToPersonRequest
        end
        def face_rectangle
          Azure::CognitiveServices::Face::V1_0::Models::FaceRectangle
        end
        def accessory
          Azure::CognitiveServices::Face::V1_0::Models::Accessory
        end
        def verify_face_to_face_request
          Azure::CognitiveServices::Face::V1_0::Models::VerifyFaceToFaceRequest
        end
        def exposure
          Azure::CognitiveServices::Face::V1_0::Models::Exposure
        end
        def verify_result
          Azure::CognitiveServices::Face::V1_0::Models::VerifyResult
        end
        def face_attributes
          Azure::CognitiveServices::Face::V1_0::Models::FaceAttributes
        end
        def persisted_face
          Azure::CognitiveServices::Face::V1_0::Models::PersistedFace
        end
        def find_similar_request
          Azure::CognitiveServices::Face::V1_0::Models::FindSimilarRequest
        end
        def error
          Azure::CognitiveServices::Face::V1_0::Models::Error
        end
        def facial_hair
          Azure::CognitiveServices::Face::V1_0::Models::FacialHair
        end
        def hair
          Azure::CognitiveServices::Face::V1_0::Models::Hair
        end
        def blur
          Azure::CognitiveServices::Face::V1_0::Models::Blur
        end
        def emotion
          Azure::CognitiveServices::Face::V1_0::Models::Emotion
        end
        def name_and_user_data_contract
          Azure::CognitiveServices::Face::V1_0::Models::NameAndUserDataContract
        end
        def coordinate
          Azure::CognitiveServices::Face::V1_0::Models::Coordinate
        end
        def training_status
          Azure::CognitiveServices::Face::V1_0::Models::TrainingStatus
        end
        def occlusion
          Azure::CognitiveServices::Face::V1_0::Models::Occlusion
        end
        def image_url
          Azure::CognitiveServices::Face::V1_0::Models::ImageUrl
        end
        def update_face_request
          Azure::CognitiveServices::Face::V1_0::Models::UpdateFaceRequest
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
        def large_face_list
          Azure::CognitiveServices::Face::V1_0::Models::LargeFaceList
        end
        def large_person_group
          Azure::CognitiveServices::Face::V1_0::Models::LargePersonGroup
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
        def noise
          Azure::CognitiveServices::Face::V1_0::Models::Noise
        end
        def gender
          Azure::CognitiveServices::Face::V1_0::Models::Gender
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
        def face_attribute_type
          Azure::CognitiveServices::Face::V1_0::Models::FaceAttributeType
        end
        def detected_face
          Azure::CognitiveServices::Face::V1_0::Models::DetectedFace
        end
      end
    end
  end
end
