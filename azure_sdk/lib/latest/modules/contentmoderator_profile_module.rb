# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_cognitiveservices_contentmoderator'

module Azure::Profiles::Latest
  module ContentModerator
    ListManagementTerm = Azure::CognitiveServices::ContentModerator::V1_0::ListManagementTerm
    Reviews = Azure::CognitiveServices::ContentModerator::V1_0::Reviews
    ImageModeration = Azure::CognitiveServices::ContentModerator::V1_0::ImageModeration
    TextModeration = Azure::CognitiveServices::ContentModerator::V1_0::TextModeration
    ListManagementImageLists = Azure::CognitiveServices::ContentModerator::V1_0::ListManagementImageLists
    ListManagementTermLists = Azure::CognitiveServices::ContentModerator::V1_0::ListManagementTermLists
    ListManagementImage = Azure::CognitiveServices::ContentModerator::V1_0::ListManagementImage

    module Models
      KeyValuePair = Azure::CognitiveServices::ContentModerator::V1_0::Models::KeyValuePair
      ImageIds = Azure::CognitiveServices::ContentModerator::V1_0::Models::ImageIds
      Frame = Azure::CognitiveServices::ContentModerator::V1_0::Models::Frame
      Image = Azure::CognitiveServices::ContentModerator::V1_0::Models::Image
      Score = Azure::CognitiveServices::ContentModerator::V1_0::Models::Score
      TermsData = Azure::CognitiveServices::ContentModerator::V1_0::Models::TermsData
      TermsInList = Azure::CognitiveServices::ContentModerator::V1_0::Models::TermsInList
      TermsPaging = Azure::CognitiveServices::ContentModerator::V1_0::Models::TermsPaging
      IPA = Azure::CognitiveServices::ContentModerator::V1_0::Models::IPA
      Review = Azure::CognitiveServices::ContentModerator::V1_0::Models::Review
      DetectedTerms = Azure::CognitiveServices::ContentModerator::V1_0::Models::DetectedTerms
      Terms = Azure::CognitiveServices::ContentModerator::V1_0::Models::Terms
      JobExecutionReportDetails = Azure::CognitiveServices::ContentModerator::V1_0::Models::JobExecutionReportDetails
      Evaluate = Azure::CognitiveServices::ContentModerator::V1_0::Models::Evaluate
      JobId = Azure::CognitiveServices::ContentModerator::V1_0::Models::JobId
      MatchResponse = Azure::CognitiveServices::ContentModerator::V1_0::Models::MatchResponse
      ImageListMetadata = Azure::CognitiveServices::ContentModerator::V1_0::Models::ImageListMetadata
      APIError = Azure::CognitiveServices::ContentModerator::V1_0::Models::APIError
      Face = Azure::CognitiveServices::ContentModerator::V1_0::Models::Face
      TermListMetadata = Azure::CognitiveServices::ContentModerator::V1_0::Models::TermListMetadata
      RefreshIndexAdvancedInfoItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::RefreshIndexAdvancedInfoItem
      TranscriptModerationBodyItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::TranscriptModerationBodyItem
      Candidate = Azure::CognitiveServices::ContentModerator::V1_0::Models::Candidate
      CreateVideoReviewsBodyItemVideoFramesItemReviewerResultTagsItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateVideoReviewsBodyItemVideoFramesItemReviewerResultTagsItem
      Frames = Azure::CognitiveServices::ContentModerator::V1_0::Models::Frames
      TranscriptModerationBodyItemTermsItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::TranscriptModerationBodyItemTermsItem
      CreateVideoReviewsBodyItemVideoFramesItemMetadataItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateVideoReviewsBodyItemVideoFramesItemMetadataItem
      CreateVideoReviewsBodyItemVideoFramesItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateVideoReviewsBodyItemVideoFramesItem
      ImageAdditionalInfoItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::ImageAdditionalInfoItem
      Email = Azure::CognitiveServices::ContentModerator::V1_0::Models::Email
      FoundFaces = Azure::CognitiveServices::ContentModerator::V1_0::Models::FoundFaces
      PII = Azure::CognitiveServices::ContentModerator::V1_0::Models::PII
      CreateVideoReviewsBodyItemMetadataItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateVideoReviewsBodyItemMetadataItem
      BodyMetadata = Azure::CognitiveServices::ContentModerator::V1_0::Models::BodyMetadata
      CreateVideoReviewsBodyItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateVideoReviewsBodyItem
      Match = Azure::CognitiveServices::ContentModerator::V1_0::Models::Match
      Body = Azure::CognitiveServices::ContentModerator::V1_0::Models::Body
      ImageList = Azure::CognitiveServices::ContentModerator::V1_0::Models::ImageList
      Classification = Azure::CognitiveServices::ContentModerator::V1_0::Models::Classification
      RefreshIndex = Azure::CognitiveServices::ContentModerator::V1_0::Models::RefreshIndex
      Screen = Azure::CognitiveServices::ContentModerator::V1_0::Models::Screen
      VideoFrameBodyItemReviewerResultTagsItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::VideoFrameBodyItemReviewerResultTagsItem
      DetectedLanguage = Azure::CognitiveServices::ContentModerator::V1_0::Models::DetectedLanguage
      VideoFrameBodyItemMetadataItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::VideoFrameBodyItemMetadataItem
      CreateReviewBodyItemMetadataItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateReviewBodyItemMetadataItem
      VideoFrameBodyItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::VideoFrameBodyItem
      CreateReviewBodyItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateReviewBodyItem
      OCR = Azure::CognitiveServices::ContentModerator::V1_0::Models::OCR
      Content = Azure::CognitiveServices::ContentModerator::V1_0::Models::Content
      Phone = Azure::CognitiveServices::ContentModerator::V1_0::Models::Phone
      AzureRegionBaseUrl = Azure::CognitiveServices::ContentModerator::V1_0::Models::AzureRegionBaseUrl
      ImageUrl = Azure::CognitiveServices::ContentModerator::V1_0::Models::ImageUrl
      TermList = Azure::CognitiveServices::ContentModerator::V1_0::Models::TermList
      Error = Azure::CognitiveServices::ContentModerator::V1_0::Models::Error
      Job = Azure::CognitiveServices::ContentModerator::V1_0::Models::Job
      Address = Azure::CognitiveServices::ContentModerator::V1_0::Models::Address
      Tag = Azure::CognitiveServices::ContentModerator::V1_0::Models::Tag
      JobListResult = Azure::CognitiveServices::ContentModerator::V1_0::Models::JobListResult
      Status = Azure::CognitiveServices::ContentModerator::V1_0::Models::Status
    end

    class ContentModeratorDataClass
      attr_reader :list_management_term, :reviews, :image_moderation, :text_moderation, :list_management_image_lists, :list_management_term_lists, :list_management_image, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        @client_0 = Azure::CognitiveServices::ContentModerator::V1_0::ContentModeratorClient.new(configurable.credentials, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @list_management_term = @client_0.list_management_term
        @reviews = @client_0.reviews
        @image_moderation = @client_0.image_moderation
        @text_moderation = @client_0.text_moderation
        @list_management_image_lists = @client_0.list_management_image_lists
        @list_management_term_lists = @client_0.list_management_term_lists
        @list_management_image = @client_0.list_management_image

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
        def key_value_pair
          Azure::CognitiveServices::ContentModerator::V1_0::Models::KeyValuePair
        end
        def image_ids
          Azure::CognitiveServices::ContentModerator::V1_0::Models::ImageIds
        end
        def frame
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Frame
        end
        def image
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Image
        end
        def score
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Score
        end
        def terms_data
          Azure::CognitiveServices::ContentModerator::V1_0::Models::TermsData
        end
        def terms_in_list
          Azure::CognitiveServices::ContentModerator::V1_0::Models::TermsInList
        end
        def terms_paging
          Azure::CognitiveServices::ContentModerator::V1_0::Models::TermsPaging
        end
        def ipa
          Azure::CognitiveServices::ContentModerator::V1_0::Models::IPA
        end
        def review
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Review
        end
        def detected_terms
          Azure::CognitiveServices::ContentModerator::V1_0::Models::DetectedTerms
        end
        def terms
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Terms
        end
        def job_execution_report_details
          Azure::CognitiveServices::ContentModerator::V1_0::Models::JobExecutionReportDetails
        end
        def evaluate
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Evaluate
        end
        def job_id
          Azure::CognitiveServices::ContentModerator::V1_0::Models::JobId
        end
        def match_response
          Azure::CognitiveServices::ContentModerator::V1_0::Models::MatchResponse
        end
        def image_list_metadata
          Azure::CognitiveServices::ContentModerator::V1_0::Models::ImageListMetadata
        end
        def apierror
          Azure::CognitiveServices::ContentModerator::V1_0::Models::APIError
        end
        def face
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Face
        end
        def term_list_metadata
          Azure::CognitiveServices::ContentModerator::V1_0::Models::TermListMetadata
        end
        def refresh_index_advanced_info_item
          Azure::CognitiveServices::ContentModerator::V1_0::Models::RefreshIndexAdvancedInfoItem
        end
        def transcript_moderation_body_item
          Azure::CognitiveServices::ContentModerator::V1_0::Models::TranscriptModerationBodyItem
        end
        def candidate
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Candidate
        end
        def create_video_reviews_body_item_video_frames_item_reviewer_result_tags_item
          Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateVideoReviewsBodyItemVideoFramesItemReviewerResultTagsItem
        end
        def frames
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Frames
        end
        def transcript_moderation_body_item_terms_item
          Azure::CognitiveServices::ContentModerator::V1_0::Models::TranscriptModerationBodyItemTermsItem
        end
        def create_video_reviews_body_item_video_frames_item_metadata_item
          Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateVideoReviewsBodyItemVideoFramesItemMetadataItem
        end
        def create_video_reviews_body_item_video_frames_item
          Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateVideoReviewsBodyItemVideoFramesItem
        end
        def image_additional_info_item
          Azure::CognitiveServices::ContentModerator::V1_0::Models::ImageAdditionalInfoItem
        end
        def email
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Email
        end
        def found_faces
          Azure::CognitiveServices::ContentModerator::V1_0::Models::FoundFaces
        end
        def pii
          Azure::CognitiveServices::ContentModerator::V1_0::Models::PII
        end
        def create_video_reviews_body_item_metadata_item
          Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateVideoReviewsBodyItemMetadataItem
        end
        def body_metadata
          Azure::CognitiveServices::ContentModerator::V1_0::Models::BodyMetadata
        end
        def create_video_reviews_body_item
          Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateVideoReviewsBodyItem
        end
        def match
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Match
        end
        def body
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Body
        end
        def image_list
          Azure::CognitiveServices::ContentModerator::V1_0::Models::ImageList
        end
        def classification
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Classification
        end
        def refresh_index
          Azure::CognitiveServices::ContentModerator::V1_0::Models::RefreshIndex
        end
        def screen
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Screen
        end
        def video_frame_body_item_reviewer_result_tags_item
          Azure::CognitiveServices::ContentModerator::V1_0::Models::VideoFrameBodyItemReviewerResultTagsItem
        end
        def detected_language
          Azure::CognitiveServices::ContentModerator::V1_0::Models::DetectedLanguage
        end
        def video_frame_body_item_metadata_item
          Azure::CognitiveServices::ContentModerator::V1_0::Models::VideoFrameBodyItemMetadataItem
        end
        def create_review_body_item_metadata_item
          Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateReviewBodyItemMetadataItem
        end
        def video_frame_body_item
          Azure::CognitiveServices::ContentModerator::V1_0::Models::VideoFrameBodyItem
        end
        def create_review_body_item
          Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateReviewBodyItem
        end
        def ocr
          Azure::CognitiveServices::ContentModerator::V1_0::Models::OCR
        end
        def content
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Content
        end
        def phone
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Phone
        end
        def azure_region_base_url
          Azure::CognitiveServices::ContentModerator::V1_0::Models::AzureRegionBaseUrl
        end
        def image_url
          Azure::CognitiveServices::ContentModerator::V1_0::Models::ImageUrl
        end
        def term_list
          Azure::CognitiveServices::ContentModerator::V1_0::Models::TermList
        end
        def error
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Error
        end
        def job
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Job
        end
        def address
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Address
        end
        def tag
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Tag
        end
        def job_list_result
          Azure::CognitiveServices::ContentModerator::V1_0::Models::JobListResult
        end
        def status
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Status
        end
      end
    end
  end
end
