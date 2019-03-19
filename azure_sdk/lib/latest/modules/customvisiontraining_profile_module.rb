# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_cognitiveservices_customvisiontraining'

module Azure::Profiles::Latest
  module Customvisiontraining

    module Models
      Export = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::Export
      ImageRegionCreateBatch = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageRegionCreateBatch
      ImageCreateStatus = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageCreateStatus
      Classifier = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::Classifier
      ExportPlatformModel = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ExportPlatformModel
      ProjectSettings = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ProjectSettings
      ImageTagCreateEntry = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageTagCreateEntry
      ExportFlavorModel = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ExportFlavorModel
      ExportStatusModel = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ExportStatusModel
      ImageTagCreateSummary = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageTagCreateSummary
      TagType = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::TagType
      Region = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::Region
      Domain = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::Domain
      OrderBy = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::OrderBy
      ImageTag = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageTag
      ImageUrl = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageUrl
      Tag = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::Tag
      ImageIdCreateBatch = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageIdCreateBatch
      BoundingBox = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::BoundingBox
      ImageTagCreateBatch = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageTagCreateBatch
      RegionProposal = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::RegionProposal
      ImageRegionCreateEntry = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageRegionCreateEntry
      ImageRegionProposal = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageRegionProposal
      ImageRegionCreateResult = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageRegionCreateResult
      Prediction = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::Prediction
      ImagePrediction = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImagePrediction
      Image = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::Image
      ImageCreateSummary = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageCreateSummary
      ImageFileCreateEntry = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageFileCreateEntry
      PredictionQueryToken = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::PredictionQueryToken
      PredictionQueryTag = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::PredictionQueryTag
      StoredImagePrediction = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::StoredImagePrediction
      ImageIdCreateEntry = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageIdCreateEntry
      Project = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::Project
      PredictionQueryResult = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::PredictionQueryResult
      TagPerformance = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::TagPerformance
      ImageUrlCreateEntry = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageUrlCreateEntry
      DomainType = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::DomainType
      IterationPerformance = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::IterationPerformance
      ImageRegionCreateSummary = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageRegionCreateSummary
      ImageFileCreateBatch = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageFileCreateBatch
      ImageCreateResult = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageCreateResult
      ImagePerformance = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImagePerformance
      ImageRegion = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageRegion
      Iteration = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::Iteration
      ImageUrlCreateBatch = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageUrlCreateBatch
    end

    class CustomvisiontrainingDataClass
      attr_reader :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        @client_0 = Azure::CognitiveServices::Customvisiontraining::V2_2::CustomvisiontrainingClient.new(configurable.credentials, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Customvisiontraining"
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
        def export
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::Export
        end
        def image_region_create_batch
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageRegionCreateBatch
        end
        def image_create_status
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageCreateStatus
        end
        def classifier
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::Classifier
        end
        def export_platform_model
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ExportPlatformModel
        end
        def project_settings
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ProjectSettings
        end
        def image_tag_create_entry
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageTagCreateEntry
        end
        def export_flavor_model
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ExportFlavorModel
        end
        def export_status_model
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ExportStatusModel
        end
        def image_tag_create_summary
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageTagCreateSummary
        end
        def tag_type
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::TagType
        end
        def region
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::Region
        end
        def domain
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::Domain
        end
        def order_by
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::OrderBy
        end
        def image_tag
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageTag
        end
        def image_url
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageUrl
        end
        def tag
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::Tag
        end
        def image_id_create_batch
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageIdCreateBatch
        end
        def bounding_box
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::BoundingBox
        end
        def image_tag_create_batch
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageTagCreateBatch
        end
        def region_proposal
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::RegionProposal
        end
        def image_region_create_entry
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageRegionCreateEntry
        end
        def image_region_proposal
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageRegionProposal
        end
        def image_region_create_result
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageRegionCreateResult
        end
        def prediction
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::Prediction
        end
        def image_prediction
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImagePrediction
        end
        def image
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::Image
        end
        def image_create_summary
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageCreateSummary
        end
        def image_file_create_entry
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageFileCreateEntry
        end
        def prediction_query_token
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::PredictionQueryToken
        end
        def prediction_query_tag
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::PredictionQueryTag
        end
        def stored_image_prediction
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::StoredImagePrediction
        end
        def image_id_create_entry
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageIdCreateEntry
        end
        def project
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::Project
        end
        def prediction_query_result
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::PredictionQueryResult
        end
        def tag_performance
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::TagPerformance
        end
        def image_url_create_entry
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageUrlCreateEntry
        end
        def domain_type
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::DomainType
        end
        def iteration_performance
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::IterationPerformance
        end
        def image_region_create_summary
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageRegionCreateSummary
        end
        def image_file_create_batch
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageFileCreateBatch
        end
        def image_create_result
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageCreateResult
        end
        def image_performance
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImagePerformance
        end
        def image_region
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageRegion
        end
        def iteration
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::Iteration
        end
        def image_url_create_batch
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageUrlCreateBatch
        end
      end
    end
  end
end
