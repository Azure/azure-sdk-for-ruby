# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_cognitiveservices_customvisiontraining'

module Azure::Customvisiontraining::Profiles::Latest

  module Models
    ImageIdCreateBatch = Azure::CognitiveServices::Customvisiontraining::V3_0::Models::ImageIdCreateBatch
    BoundingBox = Azure::CognitiveServices::Customvisiontraining::V3_0::Models::BoundingBox
    ImageTagCreateEntry = Azure::CognitiveServices::Customvisiontraining::V3_0::Models::ImageTagCreateEntry
    RegionProposal = Azure::CognitiveServices::Customvisiontraining::V3_0::Models::RegionProposal
    ImageTagCreateSummary = Azure::CognitiveServices::Customvisiontraining::V3_0::Models::ImageTagCreateSummary
    ImageRegionProposal = Azure::CognitiveServices::Customvisiontraining::V3_0::Models::ImageRegionProposal
    ImageRegionCreateBatch = Azure::CognitiveServices::Customvisiontraining::V3_0::Models::ImageRegionCreateBatch
    ImageUrl = Azure::CognitiveServices::Customvisiontraining::V3_0::Models::ImageUrl
    ImageRegionCreateSummary = Azure::CognitiveServices::Customvisiontraining::V3_0::Models::ImageRegionCreateSummary
    Prediction = Azure::CognitiveServices::Customvisiontraining::V3_0::Models::Prediction
    ImageRegion = Azure::CognitiveServices::Customvisiontraining::V3_0::Models::ImageRegion
    ImagePrediction = Azure::CognitiveServices::Customvisiontraining::V3_0::Models::ImagePrediction
    ImageCreateResult = Azure::CognitiveServices::Customvisiontraining::V3_0::Models::ImageCreateResult
    PredictionQueryTag = Azure::CognitiveServices::Customvisiontraining::V3_0::Models::PredictionQueryTag
    Region = Azure::CognitiveServices::Customvisiontraining::V3_0::Models::Region
    PredictionQueryToken = Azure::CognitiveServices::Customvisiontraining::V3_0::Models::PredictionQueryToken
    ImageFileCreateBatch = Azure::CognitiveServices::Customvisiontraining::V3_0::Models::ImageFileCreateBatch
    StoredImagePrediction = Azure::CognitiveServices::Customvisiontraining::V3_0::Models::StoredImagePrediction
    ImageUrlCreateBatch = Azure::CognitiveServices::Customvisiontraining::V3_0::Models::ImageUrlCreateBatch
    PredictionQueryResult = Azure::CognitiveServices::Customvisiontraining::V3_0::Models::PredictionQueryResult
    Domain = Azure::CognitiveServices::Customvisiontraining::V3_0::Models::Domain
    TagPerformance = Azure::CognitiveServices::Customvisiontraining::V3_0::Models::TagPerformance
    ImageRegionCreateEntry = Azure::CognitiveServices::Customvisiontraining::V3_0::Models::ImageRegionCreateEntry
    IterationPerformance = Azure::CognitiveServices::Customvisiontraining::V3_0::Models::IterationPerformance
    ImageTag = Azure::CognitiveServices::Customvisiontraining::V3_0::Models::ImageTag
    ImagePerformance = Azure::CognitiveServices::Customvisiontraining::V3_0::Models::ImagePerformance
    ImageCreateSummary = Azure::CognitiveServices::Customvisiontraining::V3_0::Models::ImageCreateSummary
    ProjectSettings = Azure::CognitiveServices::Customvisiontraining::V3_0::Models::ProjectSettings
    ImageUrlCreateEntry = Azure::CognitiveServices::Customvisiontraining::V3_0::Models::ImageUrlCreateEntry
    Project = Azure::CognitiveServices::Customvisiontraining::V3_0::Models::Project
    ImageTagCreateBatch = Azure::CognitiveServices::Customvisiontraining::V3_0::Models::ImageTagCreateBatch
    Iteration = Azure::CognitiveServices::Customvisiontraining::V3_0::Models::Iteration
    Image = Azure::CognitiveServices::Customvisiontraining::V3_0::Models::Image
    Export = Azure::CognitiveServices::Customvisiontraining::V3_0::Models::Export
    ImageIdCreateEntry = Azure::CognitiveServices::Customvisiontraining::V3_0::Models::ImageIdCreateEntry
    Tag = Azure::CognitiveServices::Customvisiontraining::V3_0::Models::Tag
    ImageFileCreateEntry = Azure::CognitiveServices::Customvisiontraining::V3_0::Models::ImageFileCreateEntry
    CustomVisionError = Azure::CognitiveServices::Customvisiontraining::V3_0::Models::CustomVisionError
    ImageRegionCreateResult = Azure::CognitiveServices::Customvisiontraining::V3_0::Models::ImageRegionCreateResult
    DomainType = Azure::CognitiveServices::Customvisiontraining::V3_0::Models::DomainType
    ImageCreateStatus = Azure::CognitiveServices::Customvisiontraining::V3_0::Models::ImageCreateStatus
    OrderBy = Azure::CognitiveServices::Customvisiontraining::V3_0::Models::OrderBy
    Classifier = Azure::CognitiveServices::Customvisiontraining::V3_0::Models::Classifier
    TrainingType = Azure::CognitiveServices::Customvisiontraining::V3_0::Models::TrainingType
    ExportPlatform = Azure::CognitiveServices::Customvisiontraining::V3_0::Models::ExportPlatform
    ExportStatus = Azure::CognitiveServices::Customvisiontraining::V3_0::Models::ExportStatus
    ExportFlavor = Azure::CognitiveServices::Customvisiontraining::V3_0::Models::ExportFlavor
    TagType = Azure::CognitiveServices::Customvisiontraining::V3_0::Models::TagType
    CustomVisionErrorCodes = Azure::CognitiveServices::Customvisiontraining::V3_0::Models::CustomVisionErrorCodes
  end

  #
  # CustomvisiontrainingDataClass
  #
  class CustomvisiontrainingDataClass
    attr_reader :configurable, :base_url, :options, :model_classes

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

      @client_0 = Azure::CognitiveServices::Customvisiontraining::V3_0::CustomvisiontrainingClient.new(configurable.credentials, options)
      if(@client_0.respond_to?(:subscription_id))
        @client_0.subscription_id = configurable.subscription_id
      end
      add_telemetry(@client_0)

      @model_classes = ModelClasses.new
    end

    def add_telemetry(client)
      profile_information = 'Profiles/Latest/Customvisiontraining'
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
    def image_id_create_batch
      Azure::CognitiveServices::Customvisiontraining::V3_0::Models::ImageIdCreateBatch
    end
    def bounding_box
      Azure::CognitiveServices::Customvisiontraining::V3_0::Models::BoundingBox
    end
    def image_tag_create_entry
      Azure::CognitiveServices::Customvisiontraining::V3_0::Models::ImageTagCreateEntry
    end
    def region_proposal
      Azure::CognitiveServices::Customvisiontraining::V3_0::Models::RegionProposal
    end
    def image_tag_create_summary
      Azure::CognitiveServices::Customvisiontraining::V3_0::Models::ImageTagCreateSummary
    end
    def image_region_proposal
      Azure::CognitiveServices::Customvisiontraining::V3_0::Models::ImageRegionProposal
    end
    def image_region_create_batch
      Azure::CognitiveServices::Customvisiontraining::V3_0::Models::ImageRegionCreateBatch
    end
    def image_url
      Azure::CognitiveServices::Customvisiontraining::V3_0::Models::ImageUrl
    end
    def image_region_create_summary
      Azure::CognitiveServices::Customvisiontraining::V3_0::Models::ImageRegionCreateSummary
    end
    def prediction
      Azure::CognitiveServices::Customvisiontraining::V3_0::Models::Prediction
    end
    def image_region
      Azure::CognitiveServices::Customvisiontraining::V3_0::Models::ImageRegion
    end
    def image_prediction
      Azure::CognitiveServices::Customvisiontraining::V3_0::Models::ImagePrediction
    end
    def image_create_result
      Azure::CognitiveServices::Customvisiontraining::V3_0::Models::ImageCreateResult
    end
    def prediction_query_tag
      Azure::CognitiveServices::Customvisiontraining::V3_0::Models::PredictionQueryTag
    end
    def region
      Azure::CognitiveServices::Customvisiontraining::V3_0::Models::Region
    end
    def prediction_query_token
      Azure::CognitiveServices::Customvisiontraining::V3_0::Models::PredictionQueryToken
    end
    def image_file_create_batch
      Azure::CognitiveServices::Customvisiontraining::V3_0::Models::ImageFileCreateBatch
    end
    def stored_image_prediction
      Azure::CognitiveServices::Customvisiontraining::V3_0::Models::StoredImagePrediction
    end
    def image_url_create_batch
      Azure::CognitiveServices::Customvisiontraining::V3_0::Models::ImageUrlCreateBatch
    end
    def prediction_query_result
      Azure::CognitiveServices::Customvisiontraining::V3_0::Models::PredictionQueryResult
    end
    def domain
      Azure::CognitiveServices::Customvisiontraining::V3_0::Models::Domain
    end
    def tag_performance
      Azure::CognitiveServices::Customvisiontraining::V3_0::Models::TagPerformance
    end
    def image_region_create_entry
      Azure::CognitiveServices::Customvisiontraining::V3_0::Models::ImageRegionCreateEntry
    end
    def iteration_performance
      Azure::CognitiveServices::Customvisiontraining::V3_0::Models::IterationPerformance
    end
    def image_tag
      Azure::CognitiveServices::Customvisiontraining::V3_0::Models::ImageTag
    end
    def image_performance
      Azure::CognitiveServices::Customvisiontraining::V3_0::Models::ImagePerformance
    end
    def image_create_summary
      Azure::CognitiveServices::Customvisiontraining::V3_0::Models::ImageCreateSummary
    end
    def project_settings
      Azure::CognitiveServices::Customvisiontraining::V3_0::Models::ProjectSettings
    end
    def image_url_create_entry
      Azure::CognitiveServices::Customvisiontraining::V3_0::Models::ImageUrlCreateEntry
    end
    def project
      Azure::CognitiveServices::Customvisiontraining::V3_0::Models::Project
    end
    def image_tag_create_batch
      Azure::CognitiveServices::Customvisiontraining::V3_0::Models::ImageTagCreateBatch
    end
    def iteration
      Azure::CognitiveServices::Customvisiontraining::V3_0::Models::Iteration
    end
    def image
      Azure::CognitiveServices::Customvisiontraining::V3_0::Models::Image
    end
    def export
      Azure::CognitiveServices::Customvisiontraining::V3_0::Models::Export
    end
    def image_id_create_entry
      Azure::CognitiveServices::Customvisiontraining::V3_0::Models::ImageIdCreateEntry
    end
    def tag
      Azure::CognitiveServices::Customvisiontraining::V3_0::Models::Tag
    end
    def image_file_create_entry
      Azure::CognitiveServices::Customvisiontraining::V3_0::Models::ImageFileCreateEntry
    end
    def custom_vision_error
      Azure::CognitiveServices::Customvisiontraining::V3_0::Models::CustomVisionError
    end
    def image_region_create_result
      Azure::CognitiveServices::Customvisiontraining::V3_0::Models::ImageRegionCreateResult
    end
    def domain_type
      Azure::CognitiveServices::Customvisiontraining::V3_0::Models::DomainType
    end
    def image_create_status
      Azure::CognitiveServices::Customvisiontraining::V3_0::Models::ImageCreateStatus
    end
    def order_by
      Azure::CognitiveServices::Customvisiontraining::V3_0::Models::OrderBy
    end
    def classifier
      Azure::CognitiveServices::Customvisiontraining::V3_0::Models::Classifier
    end
    def training_type
      Azure::CognitiveServices::Customvisiontraining::V3_0::Models::TrainingType
    end
    def export_platform
      Azure::CognitiveServices::Customvisiontraining::V3_0::Models::ExportPlatform
    end
    def export_status
      Azure::CognitiveServices::Customvisiontraining::V3_0::Models::ExportStatus
    end
    def export_flavor
      Azure::CognitiveServices::Customvisiontraining::V3_0::Models::ExportFlavor
    end
    def tag_type
      Azure::CognitiveServices::Customvisiontraining::V3_0::Models::TagType
    end
    def custom_vision_error_codes
      Azure::CognitiveServices::Customvisiontraining::V3_0::Models::CustomVisionErrorCodes
    end
  end
end
