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
      Face = Azure::CognitiveServices::ContentModerator::V1_0::Models::Face
      Error = Azure::CognitiveServices::ContentModerator::V1_0::Models::Error
      RefreshIndex = Azure::CognitiveServices::ContentModerator::V1_0::Models::RefreshIndex
      ImageAdditionalInfoItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::ImageAdditionalInfoItem
      Frames = Azure::CognitiveServices::ContentModerator::V1_0::Models::Frames
      ImageIds = Azure::CognitiveServices::ContentModerator::V1_0::Models::ImageIds
      ClassificationCategory2 = Azure::CognitiveServices::ContentModerator::V1_0::Models::ClassificationCategory2
      TermsInList = Azure::CognitiveServices::ContentModerator::V1_0::Models::TermsInList
      Classification = Azure::CognitiveServices::ContentModerator::V1_0::Models::Classification
      TermsData = Azure::CognitiveServices::ContentModerator::V1_0::Models::TermsData
      Email = Azure::CognitiveServices::ContentModerator::V1_0::Models::Email
      TermsPaging = Azure::CognitiveServices::ContentModerator::V1_0::Models::TermsPaging
      IPA = Azure::CognitiveServices::ContentModerator::V1_0::Models::IPA
      Terms = Azure::CognitiveServices::ContentModerator::V1_0::Models::Terms
      Review = Azure::CognitiveServices::ContentModerator::V1_0::Models::Review
      Address = Azure::CognitiveServices::ContentModerator::V1_0::Models::Address
      DetectedTerms = Azure::CognitiveServices::ContentModerator::V1_0::Models::DetectedTerms
      JobExecutionReportDetails = Azure::CognitiveServices::ContentModerator::V1_0::Models::JobExecutionReportDetails
      Candidate = Azure::CognitiveServices::ContentModerator::V1_0::Models::Candidate
      Evaluate = Azure::CognitiveServices::ContentModerator::V1_0::Models::Evaluate
      JobId = Azure::CognitiveServices::ContentModerator::V1_0::Models::JobId
      Image = Azure::CognitiveServices::ContentModerator::V1_0::Models::Image
      ImageListMetadata = Azure::CognitiveServices::ContentModerator::V1_0::Models::ImageListMetadata
      Tag = Azure::CognitiveServices::ContentModerator::V1_0::Models::Tag
      TranscriptModerationBodyItemTermsItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::TranscriptModerationBodyItemTermsItem
      APIError = Azure::CognitiveServices::ContentModerator::V1_0::Models::APIError
      MatchResponse = Azure::CognitiveServices::ContentModerator::V1_0::Models::MatchResponse
      TranscriptModerationBodyItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::TranscriptModerationBodyItem
      RefreshIndexAdvancedInfoItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::RefreshIndexAdvancedInfoItem
      TermListMetadata = Azure::CognitiveServices::ContentModerator::V1_0::Models::TermListMetadata
      Job = Azure::CognitiveServices::ContentModerator::V1_0::Models::Job
      CreateVideoReviewsBodyItemVideoFramesItemReviewerResultTagsItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateVideoReviewsBodyItemVideoFramesItemReviewerResultTagsItem
      SSN = Azure::CognitiveServices::ContentModerator::V1_0::Models::SSN
      Frame = Azure::CognitiveServices::ContentModerator::V1_0::Models::Frame
      CreateVideoReviewsBodyItemMetadataItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateVideoReviewsBodyItemMetadataItem
      ClassificationCategory3 = Azure::CognitiveServices::ContentModerator::V1_0::Models::ClassificationCategory3
      CreateVideoReviewsBodyItemVideoFramesItemMetadataItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateVideoReviewsBodyItemVideoFramesItemMetadataItem
      Match = Azure::CognitiveServices::ContentModerator::V1_0::Models::Match
      CreateVideoReviewsBodyItemVideoFramesItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateVideoReviewsBodyItemVideoFramesItem
      PII = Azure::CognitiveServices::ContentModerator::V1_0::Models::PII
      ImageList = Azure::CognitiveServices::ContentModerator::V1_0::Models::ImageList
      FoundFaces = Azure::CognitiveServices::ContentModerator::V1_0::Models::FoundFaces
      CreateVideoReviewsBodyItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateVideoReviewsBodyItem
      Body = Azure::CognitiveServices::ContentModerator::V1_0::Models::Body
      BodyMetadata = Azure::CognitiveServices::ContentModerator::V1_0::Models::BodyMetadata
      Status = Azure::CognitiveServices::ContentModerator::V1_0::Models::Status
      Screen = Azure::CognitiveServices::ContentModerator::V1_0::Models::Screen
      KeyValuePair = Azure::CognitiveServices::ContentModerator::V1_0::Models::KeyValuePair
      VideoFrameBodyItemReviewerResultTagsItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::VideoFrameBodyItemReviewerResultTagsItem
      VideoFrameBodyItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::VideoFrameBodyItem
      VideoFrameBodyItemMetadataItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::VideoFrameBodyItemMetadataItem
      DetectedLanguage = Azure::CognitiveServices::ContentModerator::V1_0::Models::DetectedLanguage
      OCR = Azure::CognitiveServices::ContentModerator::V1_0::Models::OCR
      ImageUrl = Azure::CognitiveServices::ContentModerator::V1_0::Models::ImageUrl
      CreateReviewBodyItemMetadataItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateReviewBodyItemMetadataItem
      Content = Azure::CognitiveServices::ContentModerator::V1_0::Models::Content
      CreateReviewBodyItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateReviewBodyItem
      ClassificationCategory1 = Azure::CognitiveServices::ContentModerator::V1_0::Models::ClassificationCategory1
      TermList = Azure::CognitiveServices::ContentModerator::V1_0::Models::TermList
      AzureRegionBaseUrl = Azure::CognitiveServices::ContentModerator::V1_0::Models::AzureRegionBaseUrl
      Phone = Azure::CognitiveServices::ContentModerator::V1_0::Models::Phone
      JobListResult = Azure::CognitiveServices::ContentModerator::V1_0::Models::JobListResult
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
        def face
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Face
        end
        def error
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Error
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
        def email
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Email
        end
        def terms_paging
          Azure::CognitiveServices::ContentModerator::V1_0::Models::TermsPaging
        end
        def ipa
          Azure::CognitiveServices::ContentModerator::V1_0::Models::IPA
        end
        def terms
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Terms
        end
        def review
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Review
        end
        def address
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Address
        end
        def detected_terms
          Azure::CognitiveServices::ContentModerator::V1_0::Models::DetectedTerms
        end
        def job_execution_report_details
          Azure::CognitiveServices::ContentModerator::V1_0::Models::JobExecutionReportDetails
        end
        def candidate
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Candidate
        end
        def evaluate
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Evaluate
        end
        def job_id
          Azure::CognitiveServices::ContentModerator::V1_0::Models::JobId
        end
        def image
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Image
        end
        def image_list_metadata
          Azure::CognitiveServices::ContentModerator::V1_0::Models::ImageListMetadata
        end
        def tag
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Tag
        end
        def transcript_moderation_body_item_terms_item
          Azure::CognitiveServices::ContentModerator::V1_0::Models::TranscriptModerationBodyItemTermsItem
        end
        def apierror
          Azure::CognitiveServices::ContentModerator::V1_0::Models::APIError
        end
        def match_response
          Azure::CognitiveServices::ContentModerator::V1_0::Models::MatchResponse
        end
        def transcript_moderation_body_item
          Azure::CognitiveServices::ContentModerator::V1_0::Models::TranscriptModerationBodyItem
        end
        def refresh_index_advanced_info_item
          Azure::CognitiveServices::ContentModerator::V1_0::Models::RefreshIndexAdvancedInfoItem
        end
        def term_list_metadata
          Azure::CognitiveServices::ContentModerator::V1_0::Models::TermListMetadata
        end
        def job
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Job
        end
        def create_video_reviews_body_item_video_frames_item_reviewer_result_tags_item
          Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateVideoReviewsBodyItemVideoFramesItemReviewerResultTagsItem
        end
        def ssn
          Azure::CognitiveServices::ContentModerator::V1_0::Models::SSN
        end
        def frame
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Frame
        end
        def create_video_reviews_body_item_metadata_item
          Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateVideoReviewsBodyItemMetadataItem
        end
        def classification_category3
          Azure::CognitiveServices::ContentModerator::V1_0::Models::ClassificationCategory3
        end
        def create_video_reviews_body_item_video_frames_item_metadata_item
          Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateVideoReviewsBodyItemVideoFramesItemMetadataItem
        end
        def match
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Match
        end
        def create_video_reviews_body_item_video_frames_item
          Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateVideoReviewsBodyItemVideoFramesItem
        end
        def pii
          Azure::CognitiveServices::ContentModerator::V1_0::Models::PII
        end
        def image_list
          Azure::CognitiveServices::ContentModerator::V1_0::Models::ImageList
        end
        def found_faces
          Azure::CognitiveServices::ContentModerator::V1_0::Models::FoundFaces
        end
        def create_video_reviews_body_item
          Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateVideoReviewsBodyItem
        end
        def body
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Body
        end
        def body_metadata
          Azure::CognitiveServices::ContentModerator::V1_0::Models::BodyMetadata
        end
        def status
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Status
        end
        def screen
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Screen
        end
        def key_value_pair
          Azure::CognitiveServices::ContentModerator::V1_0::Models::KeyValuePair
        end
        def video_frame_body_item_reviewer_result_tags_item
          Azure::CognitiveServices::ContentModerator::V1_0::Models::VideoFrameBodyItemReviewerResultTagsItem
        end
        def video_frame_body_item
          Azure::CognitiveServices::ContentModerator::V1_0::Models::VideoFrameBodyItem
        end
        def video_frame_body_item_metadata_item
          Azure::CognitiveServices::ContentModerator::V1_0::Models::VideoFrameBodyItemMetadataItem
        end
        def detected_language
          Azure::CognitiveServices::ContentModerator::V1_0::Models::DetectedLanguage
        end
        def ocr
          Azure::CognitiveServices::ContentModerator::V1_0::Models::OCR
        end
        def image_url
          Azure::CognitiveServices::ContentModerator::V1_0::Models::ImageUrl
        end
        def create_review_body_item_metadata_item
          Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateReviewBodyItemMetadataItem
        end
        def content
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Content
        end
        def create_review_body_item
          Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateReviewBodyItem
        end
        def classification_category1
          Azure::CognitiveServices::ContentModerator::V1_0::Models::ClassificationCategory1
        end
        def term_list
          Azure::CognitiveServices::ContentModerator::V1_0::Models::TermList
        end
        def azure_region_base_url
          Azure::CognitiveServices::ContentModerator::V1_0::Models::AzureRegionBaseUrl
        end
        def phone
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Phone
        end
        def job_list_result
          Azure::CognitiveServices::ContentModerator::V1_0::Models::JobListResult
        end
      end
    end
  end
end
