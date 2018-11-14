# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_cognitiveservices_contentmoderator'

module Azure::Profiles::Latest
  module ContentModerator
    ImageModeration = Azure::CognitiveServices::ContentModerator::V1_0::ImageModeration
    TextModeration = Azure::CognitiveServices::ContentModerator::V1_0::TextModeration
    ListManagementImageLists = Azure::CognitiveServices::ContentModerator::V1_0::ListManagementImageLists
    ListManagementTermLists = Azure::CognitiveServices::ContentModerator::V1_0::ListManagementTermLists
    ListManagementImage = Azure::CognitiveServices::ContentModerator::V1_0::ListManagementImage
    ListManagementTerm = Azure::CognitiveServices::ContentModerator::V1_0::ListManagementTerm
    Reviews = Azure::CognitiveServices::ContentModerator::V1_0::Reviews

    module Models
      JobListResult = Azure::CognitiveServices::ContentModerator::V1_0::Models::JobListResult
      OCR = Azure::CognitiveServices::ContentModerator::V1_0::Models::OCR
      CreateReviewBodyItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateReviewBodyItem
      Phone = Azure::CognitiveServices::ContentModerator::V1_0::Models::Phone
      Content = Azure::CognitiveServices::ContentModerator::V1_0::Models::Content
      TermList = Azure::CognitiveServices::ContentModerator::V1_0::Models::TermList
      AzureRegionBaseUrl = Azure::CognitiveServices::ContentModerator::V1_0::Models::AzureRegionBaseUrl
      Face = Azure::CognitiveServices::ContentModerator::V1_0::Models::Face
      Error = Azure::CognitiveServices::ContentModerator::V1_0::Models::Error
      Job = Azure::CognitiveServices::ContentModerator::V1_0::Models::Job
      RefreshIndex = Azure::CognitiveServices::ContentModerator::V1_0::Models::RefreshIndex
      ImageAdditionalInfoItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::ImageAdditionalInfoItem
      Frames = Azure::CognitiveServices::ContentModerator::V1_0::Models::Frames
      ImageIds = Azure::CognitiveServices::ContentModerator::V1_0::Models::ImageIds
      ClassificationCategory2 = Azure::CognitiveServices::ContentModerator::V1_0::Models::ClassificationCategory2
      TermsInList = Azure::CognitiveServices::ContentModerator::V1_0::Models::TermsInList
      Classification = Azure::CognitiveServices::ContentModerator::V1_0::Models::Classification
      TermsData = Azure::CognitiveServices::ContentModerator::V1_0::Models::TermsData
      Image = Azure::CognitiveServices::ContentModerator::V1_0::Models::Image
      Email = Azure::CognitiveServices::ContentModerator::V1_0::Models::Email
      Tag = Azure::CognitiveServices::ContentModerator::V1_0::Models::Tag
      IPA = Azure::CognitiveServices::ContentModerator::V1_0::Models::IPA
      TermsPaging = Azure::CognitiveServices::ContentModerator::V1_0::Models::TermsPaging
      Review = Azure::CognitiveServices::ContentModerator::V1_0::Models::Review
      Terms = Azure::CognitiveServices::ContentModerator::V1_0::Models::Terms
      Candidate = Azure::CognitiveServices::ContentModerator::V1_0::Models::Candidate
      DetectedTerms = Azure::CognitiveServices::ContentModerator::V1_0::Models::DetectedTerms
      Address = Azure::CognitiveServices::ContentModerator::V1_0::Models::Address
      MatchResponse = Azure::CognitiveServices::ContentModerator::V1_0::Models::MatchResponse
      Evaluate = Azure::CognitiveServices::ContentModerator::V1_0::Models::Evaluate
      JobExecutionReportDetails = Azure::CognitiveServices::ContentModerator::V1_0::Models::JobExecutionReportDetails
      TermListMetadata = Azure::CognitiveServices::ContentModerator::V1_0::Models::TermListMetadata
      ImageListMetadata = Azure::CognitiveServices::ContentModerator::V1_0::Models::ImageListMetadata
      JobId = Azure::CognitiveServices::ContentModerator::V1_0::Models::JobId
      TranscriptModerationBodyItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::TranscriptModerationBodyItem
      TranscriptModerationBodyItemTermsItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::TranscriptModerationBodyItemTermsItem
      APIError = Azure::CognitiveServices::ContentModerator::V1_0::Models::APIError
      ClassificationCategory3 = Azure::CognitiveServices::ContentModerator::V1_0::Models::ClassificationCategory3
      Frame = Azure::CognitiveServices::ContentModerator::V1_0::Models::Frame
      RefreshIndexAdvancedInfoItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::RefreshIndexAdvancedInfoItem
      CreateVideoReviewsBodyItemVideoFramesItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateVideoReviewsBodyItemVideoFramesItem
      CreateVideoReviewsBodyItemVideoFramesItemMetadataItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateVideoReviewsBodyItemVideoFramesItemMetadataItem
      CreateVideoReviewsBodyItemVideoFramesItemReviewerResultTagsItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateVideoReviewsBodyItemVideoFramesItemReviewerResultTagsItem
      FoundFaces = Azure::CognitiveServices::ContentModerator::V1_0::Models::FoundFaces
      PII = Azure::CognitiveServices::ContentModerator::V1_0::Models::PII
      SSN = Azure::CognitiveServices::ContentModerator::V1_0::Models::SSN
      Match = Azure::CognitiveServices::ContentModerator::V1_0::Models::Match
      CreateVideoReviewsBodyItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateVideoReviewsBodyItem
      CreateVideoReviewsBodyItemMetadataItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateVideoReviewsBodyItemMetadataItem
      BodyMetadata = Azure::CognitiveServices::ContentModerator::V1_0::Models::BodyMetadata
      ImageList = Azure::CognitiveServices::ContentModerator::V1_0::Models::ImageList
      Body = Azure::CognitiveServices::ContentModerator::V1_0::Models::Body
      KeyValuePair = Azure::CognitiveServices::ContentModerator::V1_0::Models::KeyValuePair
      VideoFrameBodyItemReviewerResultTagsItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::VideoFrameBodyItemReviewerResultTagsItem
      Screen = Azure::CognitiveServices::ContentModerator::V1_0::Models::Screen
      VideoFrameBodyItemMetadataItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::VideoFrameBodyItemMetadataItem
      DetectedLanguage = Azure::CognitiveServices::ContentModerator::V1_0::Models::DetectedLanguage
      Status = Azure::CognitiveServices::ContentModerator::V1_0::Models::Status
      ClassificationCategory1 = Azure::CognitiveServices::ContentModerator::V1_0::Models::ClassificationCategory1
      CreateReviewBodyItemMetadataItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateReviewBodyItemMetadataItem
      VideoFrameBodyItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::VideoFrameBodyItem
      ImageUrl = Azure::CognitiveServices::ContentModerator::V1_0::Models::ImageUrl
    end

    class ContentModeratorDataClass
      attr_reader :image_moderation, :text_moderation, :list_management_image_lists, :list_management_term_lists, :list_management_image, :list_management_term, :reviews, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        @client_0 = Azure::CognitiveServices::ContentModerator::V1_0::ContentModeratorClient.new(configurable.credentials, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @image_moderation = @client_0.image_moderation
        @text_moderation = @client_0.text_moderation
        @list_management_image_lists = @client_0.list_management_image_lists
        @list_management_term_lists = @client_0.list_management_term_lists
        @list_management_image = @client_0.list_management_image
        @list_management_term = @client_0.list_management_term
        @reviews = @client_0.reviews

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/ContentModerator"
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
        def job_list_result
          Azure::CognitiveServices::ContentModerator::V1_0::Models::JobListResult
        end
        def ocr
          Azure::CognitiveServices::ContentModerator::V1_0::Models::OCR
        end
        def create_review_body_item
          Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateReviewBodyItem
        end
        def phone
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Phone
        end
        def content
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Content
        end
        def term_list
          Azure::CognitiveServices::ContentModerator::V1_0::Models::TermList
        end
        def azure_region_base_url
          Azure::CognitiveServices::ContentModerator::V1_0::Models::AzureRegionBaseUrl
        end
        def face
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Face
        end
        def error
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Error
        end
        def job
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Job
        end
        def refresh_index
          Azure::CognitiveServices::ContentModerator::V1_0::Models::RefreshIndex
        end
        def image_additional_info_item
          Azure::CognitiveServices::ContentModerator::V1_0::Models::ImageAdditionalInfoItem
        end
        def frames
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Frames
        end
        def image_ids
          Azure::CognitiveServices::ContentModerator::V1_0::Models::ImageIds
        end
        def classification_category2
          Azure::CognitiveServices::ContentModerator::V1_0::Models::ClassificationCategory2
        end
        def terms_in_list
          Azure::CognitiveServices::ContentModerator::V1_0::Models::TermsInList
        end
        def classification
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Classification
        end
        def terms_data
          Azure::CognitiveServices::ContentModerator::V1_0::Models::TermsData
        end
        def image
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Image
        end
        def email
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Email
        end
        def tag
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Tag
        end
        def ipa
          Azure::CognitiveServices::ContentModerator::V1_0::Models::IPA
        end
        def terms_paging
          Azure::CognitiveServices::ContentModerator::V1_0::Models::TermsPaging
        end
        def review
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Review
        end
        def terms
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Terms
        end
        def candidate
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Candidate
        end
        def detected_terms
          Azure::CognitiveServices::ContentModerator::V1_0::Models::DetectedTerms
        end
        def address
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Address
        end
        def match_response
          Azure::CognitiveServices::ContentModerator::V1_0::Models::MatchResponse
        end
        def evaluate
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Evaluate
        end
        def job_execution_report_details
          Azure::CognitiveServices::ContentModerator::V1_0::Models::JobExecutionReportDetails
        end
        def term_list_metadata
          Azure::CognitiveServices::ContentModerator::V1_0::Models::TermListMetadata
        end
        def image_list_metadata
          Azure::CognitiveServices::ContentModerator::V1_0::Models::ImageListMetadata
        end
        def job_id
          Azure::CognitiveServices::ContentModerator::V1_0::Models::JobId
        end
        def transcript_moderation_body_item
          Azure::CognitiveServices::ContentModerator::V1_0::Models::TranscriptModerationBodyItem
        end
        def transcript_moderation_body_item_terms_item
          Azure::CognitiveServices::ContentModerator::V1_0::Models::TranscriptModerationBodyItemTermsItem
        end
        def apierror
          Azure::CognitiveServices::ContentModerator::V1_0::Models::APIError
        end
        def classification_category3
          Azure::CognitiveServices::ContentModerator::V1_0::Models::ClassificationCategory3
        end
        def frame
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Frame
        end
        def refresh_index_advanced_info_item
          Azure::CognitiveServices::ContentModerator::V1_0::Models::RefreshIndexAdvancedInfoItem
        end
        def create_video_reviews_body_item_video_frames_item
          Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateVideoReviewsBodyItemVideoFramesItem
        end
        def create_video_reviews_body_item_video_frames_item_metadata_item
          Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateVideoReviewsBodyItemVideoFramesItemMetadataItem
        end
        def create_video_reviews_body_item_video_frames_item_reviewer_result_tags_item
          Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateVideoReviewsBodyItemVideoFramesItemReviewerResultTagsItem
        end
        def found_faces
          Azure::CognitiveServices::ContentModerator::V1_0::Models::FoundFaces
        end
        def pii
          Azure::CognitiveServices::ContentModerator::V1_0::Models::PII
        end
        def ssn
          Azure::CognitiveServices::ContentModerator::V1_0::Models::SSN
        end
        def match
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Match
        end
        def create_video_reviews_body_item
          Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateVideoReviewsBodyItem
        end
        def create_video_reviews_body_item_metadata_item
          Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateVideoReviewsBodyItemMetadataItem
        end
        def body_metadata
          Azure::CognitiveServices::ContentModerator::V1_0::Models::BodyMetadata
        end
        def image_list
          Azure::CognitiveServices::ContentModerator::V1_0::Models::ImageList
        end
        def body
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Body
        end
        def key_value_pair
          Azure::CognitiveServices::ContentModerator::V1_0::Models::KeyValuePair
        end
        def video_frame_body_item_reviewer_result_tags_item
          Azure::CognitiveServices::ContentModerator::V1_0::Models::VideoFrameBodyItemReviewerResultTagsItem
        end
        def screen
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Screen
        end
        def video_frame_body_item_metadata_item
          Azure::CognitiveServices::ContentModerator::V1_0::Models::VideoFrameBodyItemMetadataItem
        end
        def detected_language
          Azure::CognitiveServices::ContentModerator::V1_0::Models::DetectedLanguage
        end
        def status
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Status
        end
        def classification_category1
          Azure::CognitiveServices::ContentModerator::V1_0::Models::ClassificationCategory1
        end
        def create_review_body_item_metadata_item
          Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateReviewBodyItemMetadataItem
        end
        def video_frame_body_item
          Azure::CognitiveServices::ContentModerator::V1_0::Models::VideoFrameBodyItem
        end
        def image_url
          Azure::CognitiveServices::ContentModerator::V1_0::Models::ImageUrl
        end
      end
    end
  end
end
