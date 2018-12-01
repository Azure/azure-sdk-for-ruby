# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_cognitiveservices_imagesearch'

module Azure::ImageSearch::Profiles::Latest
  ImagesOperations = Azure::CognitiveServices::ImageSearch::V1_0::ImagesOperations

  module Models
    Error = Azure::CognitiveServices::ImageSearch::V1_0::Models::Error
    RelatedSearchesModule = Azure::CognitiveServices::ImageSearch::V1_0::Models::RelatedSearchesModule
    InsightsTag = Azure::CognitiveServices::ImageSearch::V1_0::Models::InsightsTag
    RecognizedEntitiesModule = Azure::CognitiveServices::ImageSearch::V1_0::Models::RecognizedEntitiesModule
    PropertiesItem = Azure::CognitiveServices::ImageSearch::V1_0::Models::PropertiesItem
    RecognizedEntityGroup = Azure::CognitiveServices::ImageSearch::V1_0::Models::RecognizedEntityGroup
    TrendingImagesCategory = Azure::CognitiveServices::ImageSearch::V1_0::Models::TrendingImagesCategory
    Query = Azure::CognitiveServices::ImageSearch::V1_0::Models::Query
    PivotSuggestions = Azure::CognitiveServices::ImageSearch::V1_0::Models::PivotSuggestions
    RelatedCollectionsModule = Azure::CognitiveServices::ImageSearch::V1_0::Models::RelatedCollectionsModule
    ImageTagsModule = Azure::CognitiveServices::ImageSearch::V1_0::Models::ImageTagsModule
    RecipesModule = Azure::CognitiveServices::ImageSearch::V1_0::Models::RecipesModule
    ImagesImageMetadata = Azure::CognitiveServices::ImageSearch::V1_0::Models::ImagesImageMetadata
    ImageInsightsImageCaption = Azure::CognitiveServices::ImageSearch::V1_0::Models::ImageInsightsImageCaption
    ResponseBase = Azure::CognitiveServices::ImageSearch::V1_0::Models::ResponseBase
    TrendingImagesTile = Azure::CognitiveServices::ImageSearch::V1_0::Models::TrendingImagesTile
    ImagesModule = Azure::CognitiveServices::ImageSearch::V1_0::Models::ImagesModule
    Thing = Azure::CognitiveServices::ImageSearch::V1_0::Models::Thing
    Organization = Azure::CognitiveServices::ImageSearch::V1_0::Models::Organization
    AggregateRating = Azure::CognitiveServices::ImageSearch::V1_0::Models::AggregateRating
    Offer = Azure::CognitiveServices::ImageSearch::V1_0::Models::Offer
    AggregateOffer = Azure::CognitiveServices::ImageSearch::V1_0::Models::AggregateOffer
    MediaObject = Azure::CognitiveServices::ImageSearch::V1_0::Models::MediaObject
    ImageObject = Azure::CognitiveServices::ImageSearch::V1_0::Models::ImageObject
    SearchResultsAnswer = Azure::CognitiveServices::ImageSearch::V1_0::Models::SearchResultsAnswer
    Images = Azure::CognitiveServices::ImageSearch::V1_0::Models::Images
    Identifiable = Azure::CognitiveServices::ImageSearch::V1_0::Models::Identifiable
    Response = Azure::CognitiveServices::ImageSearch::V1_0::Models::Response
    Answer = Azure::CognitiveServices::ImageSearch::V1_0::Models::Answer
    CreativeWork = Azure::CognitiveServices::ImageSearch::V1_0::Models::CreativeWork
    ErrorResponse = Azure::CognitiveServices::ImageSearch::V1_0::Models::ErrorResponse
    ImageGallery = Azure::CognitiveServices::ImageSearch::V1_0::Models::ImageGallery
    Recipe = Azure::CognitiveServices::ImageSearch::V1_0::Models::Recipe
    NormalizedRectangle = Azure::CognitiveServices::ImageSearch::V1_0::Models::NormalizedRectangle
    RecognizedEntity = Azure::CognitiveServices::ImageSearch::V1_0::Models::RecognizedEntity
    RecognizedEntityRegion = Azure::CognitiveServices::ImageSearch::V1_0::Models::RecognizedEntityRegion
    ImageInsights = Azure::CognitiveServices::ImageSearch::V1_0::Models::ImageInsights
    TrendingImages = Azure::CognitiveServices::ImageSearch::V1_0::Models::TrendingImages
    WebPage = Azure::CognitiveServices::ImageSearch::V1_0::Models::WebPage
    Person = Azure::CognitiveServices::ImageSearch::V1_0::Models::Person
    Intangible = Azure::CognitiveServices::ImageSearch::V1_0::Models::Intangible
    Rating = Azure::CognitiveServices::ImageSearch::V1_0::Models::Rating
    CollectionPage = Azure::CognitiveServices::ImageSearch::V1_0::Models::CollectionPage
    StructuredValue = Azure::CognitiveServices::ImageSearch::V1_0::Models::StructuredValue
    Currency = Azure::CognitiveServices::ImageSearch::V1_0::Models::Currency
    ItemAvailability = Azure::CognitiveServices::ImageSearch::V1_0::Models::ItemAvailability
    ErrorCode = Azure::CognitiveServices::ImageSearch::V1_0::Models::ErrorCode
    ErrorSubCode = Azure::CognitiveServices::ImageSearch::V1_0::Models::ErrorSubCode
    ImageAspect = Azure::CognitiveServices::ImageSearch::V1_0::Models::ImageAspect
    ImageColor = Azure::CognitiveServices::ImageSearch::V1_0::Models::ImageColor
    Freshness = Azure::CognitiveServices::ImageSearch::V1_0::Models::Freshness
    ImageContent = Azure::CognitiveServices::ImageSearch::V1_0::Models::ImageContent
    ImageType = Azure::CognitiveServices::ImageSearch::V1_0::Models::ImageType
    ImageLicense = Azure::CognitiveServices::ImageSearch::V1_0::Models::ImageLicense
    SafeSearch = Azure::CognitiveServices::ImageSearch::V1_0::Models::SafeSearch
    ImageSize = Azure::CognitiveServices::ImageSearch::V1_0::Models::ImageSize
    ImageCropType = Azure::CognitiveServices::ImageSearch::V1_0::Models::ImageCropType
    ImageInsightModule = Azure::CognitiveServices::ImageSearch::V1_0::Models::ImageInsightModule
  end

  #
  # ImageSearchDataClass
  #
  class ImageSearchDataClass
    attr_reader :images_operations, :configurable, :base_url, :options, :model_classes

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

      @client_0 = Azure::CognitiveServices::ImageSearch::V1_0::ImageSearchClient.new(configurable.credentials, base_url, options)
      if(@client_0.respond_to?(:subscription_id))
        @client_0.subscription_id = configurable.subscription_id
      end
      add_telemetry(@client_0)
      @images_operations = @client_0.images_operations

      @model_classes = ModelClasses.new
    end

    def add_telemetry(client)
      profile_information = 'Profiles/Latest/ImageSearch'
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
    def error
      Azure::CognitiveServices::ImageSearch::V1_0::Models::Error
    end
    def related_searches_module
      Azure::CognitiveServices::ImageSearch::V1_0::Models::RelatedSearchesModule
    end
    def insights_tag
      Azure::CognitiveServices::ImageSearch::V1_0::Models::InsightsTag
    end
    def recognized_entities_module
      Azure::CognitiveServices::ImageSearch::V1_0::Models::RecognizedEntitiesModule
    end
    def properties_item
      Azure::CognitiveServices::ImageSearch::V1_0::Models::PropertiesItem
    end
    def recognized_entity_group
      Azure::CognitiveServices::ImageSearch::V1_0::Models::RecognizedEntityGroup
    end
    def trending_images_category
      Azure::CognitiveServices::ImageSearch::V1_0::Models::TrendingImagesCategory
    end
    def query
      Azure::CognitiveServices::ImageSearch::V1_0::Models::Query
    end
    def pivot_suggestions
      Azure::CognitiveServices::ImageSearch::V1_0::Models::PivotSuggestions
    end
    def related_collections_module
      Azure::CognitiveServices::ImageSearch::V1_0::Models::RelatedCollectionsModule
    end
    def image_tags_module
      Azure::CognitiveServices::ImageSearch::V1_0::Models::ImageTagsModule
    end
    def recipes_module
      Azure::CognitiveServices::ImageSearch::V1_0::Models::RecipesModule
    end
    def images_image_metadata
      Azure::CognitiveServices::ImageSearch::V1_0::Models::ImagesImageMetadata
    end
    def image_insights_image_caption
      Azure::CognitiveServices::ImageSearch::V1_0::Models::ImageInsightsImageCaption
    end
    def response_base
      Azure::CognitiveServices::ImageSearch::V1_0::Models::ResponseBase
    end
    def trending_images_tile
      Azure::CognitiveServices::ImageSearch::V1_0::Models::TrendingImagesTile
    end
    def images_module
      Azure::CognitiveServices::ImageSearch::V1_0::Models::ImagesModule
    end
    def thing
      Azure::CognitiveServices::ImageSearch::V1_0::Models::Thing
    end
    def organization
      Azure::CognitiveServices::ImageSearch::V1_0::Models::Organization
    end
    def aggregate_rating
      Azure::CognitiveServices::ImageSearch::V1_0::Models::AggregateRating
    end
    def offer
      Azure::CognitiveServices::ImageSearch::V1_0::Models::Offer
    end
    def aggregate_offer
      Azure::CognitiveServices::ImageSearch::V1_0::Models::AggregateOffer
    end
    def media_object
      Azure::CognitiveServices::ImageSearch::V1_0::Models::MediaObject
    end
    def image_object
      Azure::CognitiveServices::ImageSearch::V1_0::Models::ImageObject
    end
    def search_results_answer
      Azure::CognitiveServices::ImageSearch::V1_0::Models::SearchResultsAnswer
    end
    def images
      Azure::CognitiveServices::ImageSearch::V1_0::Models::Images
    end
    def identifiable
      Azure::CognitiveServices::ImageSearch::V1_0::Models::Identifiable
    end
    def response
      Azure::CognitiveServices::ImageSearch::V1_0::Models::Response
    end
    def answer
      Azure::CognitiveServices::ImageSearch::V1_0::Models::Answer
    end
    def creative_work
      Azure::CognitiveServices::ImageSearch::V1_0::Models::CreativeWork
    end
    def error_response
      Azure::CognitiveServices::ImageSearch::V1_0::Models::ErrorResponse
    end
    def image_gallery
      Azure::CognitiveServices::ImageSearch::V1_0::Models::ImageGallery
    end
    def recipe
      Azure::CognitiveServices::ImageSearch::V1_0::Models::Recipe
    end
    def normalized_rectangle
      Azure::CognitiveServices::ImageSearch::V1_0::Models::NormalizedRectangle
    end
    def recognized_entity
      Azure::CognitiveServices::ImageSearch::V1_0::Models::RecognizedEntity
    end
    def recognized_entity_region
      Azure::CognitiveServices::ImageSearch::V1_0::Models::RecognizedEntityRegion
    end
    def image_insights
      Azure::CognitiveServices::ImageSearch::V1_0::Models::ImageInsights
    end
    def trending_images
      Azure::CognitiveServices::ImageSearch::V1_0::Models::TrendingImages
    end
    def web_page
      Azure::CognitiveServices::ImageSearch::V1_0::Models::WebPage
    end
    def person
      Azure::CognitiveServices::ImageSearch::V1_0::Models::Person
    end
    def intangible
      Azure::CognitiveServices::ImageSearch::V1_0::Models::Intangible
    end
    def rating
      Azure::CognitiveServices::ImageSearch::V1_0::Models::Rating
    end
    def collection_page
      Azure::CognitiveServices::ImageSearch::V1_0::Models::CollectionPage
    end
    def structured_value
      Azure::CognitiveServices::ImageSearch::V1_0::Models::StructuredValue
    end
    def currency
      Azure::CognitiveServices::ImageSearch::V1_0::Models::Currency
    end
    def item_availability
      Azure::CognitiveServices::ImageSearch::V1_0::Models::ItemAvailability
    end
    def error_code
      Azure::CognitiveServices::ImageSearch::V1_0::Models::ErrorCode
    end
    def error_sub_code
      Azure::CognitiveServices::ImageSearch::V1_0::Models::ErrorSubCode
    end
    def image_aspect
      Azure::CognitiveServices::ImageSearch::V1_0::Models::ImageAspect
    end
    def image_color
      Azure::CognitiveServices::ImageSearch::V1_0::Models::ImageColor
    end
    def freshness
      Azure::CognitiveServices::ImageSearch::V1_0::Models::Freshness
    end
    def image_content
      Azure::CognitiveServices::ImageSearch::V1_0::Models::ImageContent
    end
    def image_type
      Azure::CognitiveServices::ImageSearch::V1_0::Models::ImageType
    end
    def image_license
      Azure::CognitiveServices::ImageSearch::V1_0::Models::ImageLicense
    end
    def safe_search
      Azure::CognitiveServices::ImageSearch::V1_0::Models::SafeSearch
    end
    def image_size
      Azure::CognitiveServices::ImageSearch::V1_0::Models::ImageSize
    end
    def image_crop_type
      Azure::CognitiveServices::ImageSearch::V1_0::Models::ImageCropType
    end
    def image_insight_module
      Azure::CognitiveServices::ImageSearch::V1_0::Models::ImageInsightModule
    end
  end
end
