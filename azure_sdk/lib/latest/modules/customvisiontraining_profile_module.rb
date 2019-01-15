# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_cognitiveservices_customvisiontraining'

module Azure::Profiles::Latest
  module Customvisiontraining

    module Models
      Tag = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::Tag
      Domain = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::Domain
      Region = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::Region
      OrderBy = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::OrderBy
      ImageTag = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageTag
      ImageUrl = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageUrl
      ImageIdCreateBatch = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageIdCreateBatch
      BoundingBox = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::BoundingBox
      ImageTagCreateBatch = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageTagCreateBatch
      Image = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::Image
      RegionProposal = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::RegionProposal
      ImageRegionProposal = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageRegionProposal
      ImageRegionCreateResult = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageRegionCreateResult
      ImageRegionCreateEntry = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageRegionCreateEntry
      ImagePrediction = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImagePrediction
      ImageCreateSummary = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageCreateSummary
      PredictionQueryTag = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::PredictionQueryTag
      ImageFileCreateEntry = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageFileCreateEntry
      PredictionQueryToken = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::PredictionQueryToken
      ImageUrlCreateEntry = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageUrlCreateEntry
      StoredImagePrediction = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::StoredImagePrediction
      ImageIdCreateEntry = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageIdCreateEntry
      PredictionQueryResult = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::PredictionQueryResult
      ImageTagCreateSummary = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageTagCreateSummary
      TagPerformance = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::TagPerformance
      ImageRegionCreateSummary = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageRegionCreateSummary
      IterationPerformance = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::IterationPerformance
      ImageCreateResult = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageCreateResult
      Prediction = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::Prediction
      ImagePerformance = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImagePerformance
      ProjectSettings = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ProjectSettings
      ImageTagCreateEntry = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageTagCreateEntry
      ImageRegion = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageRegion
      Iteration = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::Iteration
      ImageUrlCreateBatch = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageUrlCreateBatch
      ImageFileCreateBatch = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageFileCreateBatch
      Export = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::Export
      ImageCreateStatus = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageCreateStatus
      Classifier = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::Classifier
      ExportPlatformModel = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ExportPlatformModel
      ExportStatusModel = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ExportStatusModel
      DomainType = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::DomainType
      ImageRegionCreateBatch = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageRegionCreateBatch
      Project = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::Project
      ExportFlavorModel = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ExportFlavorModel
      TagType = Azure::CognitiveServices::Customvisiontraining::V2_2::Models::TagType
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
        def tag
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::Tag
        end
        def domain
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::Domain
        end
        def region
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::Region
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
        def image_id_create_batch
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageIdCreateBatch
        end
        def bounding_box
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::BoundingBox
        end
        def image_tag_create_batch
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageTagCreateBatch
        end
        def image
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::Image
        end
        def region_proposal
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::RegionProposal
        end
        def image_region_proposal
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageRegionProposal
        end
        def image_region_create_result
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageRegionCreateResult
        end
        def image_region_create_entry
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageRegionCreateEntry
        end
        def image_prediction
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImagePrediction
        end
        def image_create_summary
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageCreateSummary
        end
        def prediction_query_tag
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::PredictionQueryTag
        end
        def image_file_create_entry
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageFileCreateEntry
        end
        def prediction_query_token
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::PredictionQueryToken
        end
        def image_url_create_entry
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageUrlCreateEntry
        end
        def stored_image_prediction
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::StoredImagePrediction
        end
        def image_id_create_entry
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageIdCreateEntry
        end
        def prediction_query_result
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::PredictionQueryResult
        end
        def image_tag_create_summary
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageTagCreateSummary
        end
        def tag_performance
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::TagPerformance
        end
        def image_region_create_summary
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageRegionCreateSummary
        end
        def iteration_performance
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::IterationPerformance
        end
        def image_create_result
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageCreateResult
        end
        def prediction
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::Prediction
        end
        def image_performance
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImagePerformance
        end
        def project_settings
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ProjectSettings
        end
        def image_tag_create_entry
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageTagCreateEntry
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
        def image_file_create_batch
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageFileCreateBatch
        end
        def export
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::Export
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
        def export_status_model
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ExportStatusModel
        end
        def domain_type
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::DomainType
        end
        def image_region_create_batch
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ImageRegionCreateBatch
        end
        def project
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::Project
        end
        def export_flavor_model
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::ExportFlavorModel
        end
        def tag_type
          Azure::CognitiveServices::Customvisiontraining::V2_2::Models::TagType
        end
      end
    end
  end
end
