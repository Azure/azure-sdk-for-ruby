# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_cognitiveservices_entitysearch'

module Azure::Profiles::Latest
  module EntitySearch
    EntitiesOperations = Azure::CognitiveServices::EntitySearch::V1_0::EntitiesOperations

    module Models
      ErrorResponse = Azure::CognitiveServices::EntitySearch::V1_0::Models::ErrorResponse
      ImageObject = Azure::CognitiveServices::EntitySearch::V1_0::Models::ImageObject
      MediaObject = Azure::CognitiveServices::EntitySearch::V1_0::Models::MediaObject
      ErrorSubCode = Azure::CognitiveServices::EntitySearch::V1_0::Models::ErrorSubCode
      ContractualRulesContractualRule = Azure::CognitiveServices::EntitySearch::V1_0::Models::ContractualRulesContractualRule
      EntitiesEntityPresentationInfo = Azure::CognitiveServices::EntitySearch::V1_0::Models::EntitiesEntityPresentationInfo
      Response = Azure::CognitiveServices::EntitySearch::V1_0::Models::Response
      Places = Azure::CognitiveServices::EntitySearch::V1_0::Models::Places
      Place = Azure::CognitiveServices::EntitySearch::V1_0::Models::Place
      Organization = Azure::CognitiveServices::EntitySearch::V1_0::Models::Organization
      PostalAddress = Azure::CognitiveServices::EntitySearch::V1_0::Models::PostalAddress
      ContractualRulesAttribution = Azure::CognitiveServices::EntitySearch::V1_0::Models::ContractualRulesAttribution
      CivicStructure = Azure::CognitiveServices::EntitySearch::V1_0::Models::CivicStructure
      Intangible = Azure::CognitiveServices::EntitySearch::V1_0::Models::Intangible
      TouristAttraction = Azure::CognitiveServices::EntitySearch::V1_0::Models::TouristAttraction
      Airport = Azure::CognitiveServices::EntitySearch::V1_0::Models::Airport
      LocalBusiness = Azure::CognitiveServices::EntitySearch::V1_0::Models::LocalBusiness
      License = Azure::CognitiveServices::EntitySearch::V1_0::Models::License
      EntertainmentBusiness = Azure::CognitiveServices::EntitySearch::V1_0::Models::EntertainmentBusiness
      MovieTheater = Azure::CognitiveServices::EntitySearch::V1_0::Models::MovieTheater
      StructuredValue = Azure::CognitiveServices::EntitySearch::V1_0::Models::StructuredValue
      ContractualRulesLicenseAttribution = Azure::CognitiveServices::EntitySearch::V1_0::Models::ContractualRulesLicenseAttribution
      ContractualRulesMediaAttribution = Azure::CognitiveServices::EntitySearch::V1_0::Models::ContractualRulesMediaAttribution
      ContractualRulesTextAttribution = Azure::CognitiveServices::EntitySearch::V1_0::Models::ContractualRulesTextAttribution
      ContractualRulesLinkAttribution = Azure::CognitiveServices::EntitySearch::V1_0::Models::ContractualRulesLinkAttribution
      LodgingBusiness = Azure::CognitiveServices::EntitySearch::V1_0::Models::LodgingBusiness
      Restaurant = Azure::CognitiveServices::EntitySearch::V1_0::Models::Restaurant
      Hotel = Azure::CognitiveServices::EntitySearch::V1_0::Models::Hotel
      EntityQueryScenario = Azure::CognitiveServices::EntitySearch::V1_0::Models::EntityQueryScenario
      EntityScenario = Azure::CognitiveServices::EntitySearch::V1_0::Models::EntityScenario
      FoodEstablishment = Azure::CognitiveServices::EntitySearch::V1_0::Models::FoodEstablishment
      AnswerType = Azure::CognitiveServices::EntitySearch::V1_0::Models::AnswerType
      Error = Azure::CognitiveServices::EntitySearch::V1_0::Models::Error
      SearchResponse = Azure::CognitiveServices::EntitySearch::V1_0::Models::SearchResponse
      EntityType = Azure::CognitiveServices::EntitySearch::V1_0::Models::EntityType
      Entities = Azure::CognitiveServices::EntitySearch::V1_0::Models::Entities
      QueryContext = Azure::CognitiveServices::EntitySearch::V1_0::Models::QueryContext
      ResponseBase = Azure::CognitiveServices::EntitySearch::V1_0::Models::ResponseBase
      Answer = Azure::CognitiveServices::EntitySearch::V1_0::Models::Answer
      SearchResultsAnswer = Azure::CognitiveServices::EntitySearch::V1_0::Models::SearchResultsAnswer
      Thing = Azure::CognitiveServices::EntitySearch::V1_0::Models::Thing
      CreativeWork = Azure::CognitiveServices::EntitySearch::V1_0::Models::CreativeWork
      Identifiable = Azure::CognitiveServices::EntitySearch::V1_0::Models::Identifiable
      ErrorCode = Azure::CognitiveServices::EntitySearch::V1_0::Models::ErrorCode
      SafeSearch = Azure::CognitiveServices::EntitySearch::V1_0::Models::SafeSearch
      ResponseFormat = Azure::CognitiveServices::EntitySearch::V1_0::Models::ResponseFormat
    end

    class EntitySearchDataClass
      attr_reader :entities_operations, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        @client_0 = Azure::CognitiveServices::EntitySearch::V1_0::EntitySearchClient.new(configurable.credentials, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @entities_operations = @client_0.entities_operations

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/EntitySearch"
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
        def error_response
          Azure::CognitiveServices::EntitySearch::V1_0::Models::ErrorResponse
        end
        def image_object
          Azure::CognitiveServices::EntitySearch::V1_0::Models::ImageObject
        end
        def media_object
          Azure::CognitiveServices::EntitySearch::V1_0::Models::MediaObject
        end
        def error_sub_code
          Azure::CognitiveServices::EntitySearch::V1_0::Models::ErrorSubCode
        end
        def contractual_rules_contractual_rule
          Azure::CognitiveServices::EntitySearch::V1_0::Models::ContractualRulesContractualRule
        end
        def entities_entity_presentation_info
          Azure::CognitiveServices::EntitySearch::V1_0::Models::EntitiesEntityPresentationInfo
        end
        def response
          Azure::CognitiveServices::EntitySearch::V1_0::Models::Response
        end
        def places
          Azure::CognitiveServices::EntitySearch::V1_0::Models::Places
        end
        def place
          Azure::CognitiveServices::EntitySearch::V1_0::Models::Place
        end
        def organization
          Azure::CognitiveServices::EntitySearch::V1_0::Models::Organization
        end
        def postal_address
          Azure::CognitiveServices::EntitySearch::V1_0::Models::PostalAddress
        end
        def contractual_rules_attribution
          Azure::CognitiveServices::EntitySearch::V1_0::Models::ContractualRulesAttribution
        end
        def civic_structure
          Azure::CognitiveServices::EntitySearch::V1_0::Models::CivicStructure
        end
        def intangible
          Azure::CognitiveServices::EntitySearch::V1_0::Models::Intangible
        end
        def tourist_attraction
          Azure::CognitiveServices::EntitySearch::V1_0::Models::TouristAttraction
        end
        def airport
          Azure::CognitiveServices::EntitySearch::V1_0::Models::Airport
        end
        def local_business
          Azure::CognitiveServices::EntitySearch::V1_0::Models::LocalBusiness
        end
        def license
          Azure::CognitiveServices::EntitySearch::V1_0::Models::License
        end
        def entertainment_business
          Azure::CognitiveServices::EntitySearch::V1_0::Models::EntertainmentBusiness
        end
        def movie_theater
          Azure::CognitiveServices::EntitySearch::V1_0::Models::MovieTheater
        end
        def structured_value
          Azure::CognitiveServices::EntitySearch::V1_0::Models::StructuredValue
        end
        def contractual_rules_license_attribution
          Azure::CognitiveServices::EntitySearch::V1_0::Models::ContractualRulesLicenseAttribution
        end
        def contractual_rules_media_attribution
          Azure::CognitiveServices::EntitySearch::V1_0::Models::ContractualRulesMediaAttribution
        end
        def contractual_rules_text_attribution
          Azure::CognitiveServices::EntitySearch::V1_0::Models::ContractualRulesTextAttribution
        end
        def contractual_rules_link_attribution
          Azure::CognitiveServices::EntitySearch::V1_0::Models::ContractualRulesLinkAttribution
        end
        def lodging_business
          Azure::CognitiveServices::EntitySearch::V1_0::Models::LodgingBusiness
        end
        def restaurant
          Azure::CognitiveServices::EntitySearch::V1_0::Models::Restaurant
        end
        def hotel
          Azure::CognitiveServices::EntitySearch::V1_0::Models::Hotel
        end
        def entity_query_scenario
          Azure::CognitiveServices::EntitySearch::V1_0::Models::EntityQueryScenario
        end
        def entity_scenario
          Azure::CognitiveServices::EntitySearch::V1_0::Models::EntityScenario
        end
        def food_establishment
          Azure::CognitiveServices::EntitySearch::V1_0::Models::FoodEstablishment
        end
        def answer_type
          Azure::CognitiveServices::EntitySearch::V1_0::Models::AnswerType
        end
        def error
          Azure::CognitiveServices::EntitySearch::V1_0::Models::Error
        end
        def search_response
          Azure::CognitiveServices::EntitySearch::V1_0::Models::SearchResponse
        end
        def entity_type
          Azure::CognitiveServices::EntitySearch::V1_0::Models::EntityType
        end
        def entities
          Azure::CognitiveServices::EntitySearch::V1_0::Models::Entities
        end
        def query_context
          Azure::CognitiveServices::EntitySearch::V1_0::Models::QueryContext
        end
        def response_base
          Azure::CognitiveServices::EntitySearch::V1_0::Models::ResponseBase
        end
        def answer
          Azure::CognitiveServices::EntitySearch::V1_0::Models::Answer
        end
        def search_results_answer
          Azure::CognitiveServices::EntitySearch::V1_0::Models::SearchResultsAnswer
        end
        def thing
          Azure::CognitiveServices::EntitySearch::V1_0::Models::Thing
        end
        def creative_work
          Azure::CognitiveServices::EntitySearch::V1_0::Models::CreativeWork
        end
        def identifiable
          Azure::CognitiveServices::EntitySearch::V1_0::Models::Identifiable
        end
        def error_code
          Azure::CognitiveServices::EntitySearch::V1_0::Models::ErrorCode
        end
        def safe_search
          Azure::CognitiveServices::EntitySearch::V1_0::Models::SafeSearch
        end
        def response_format
          Azure::CognitiveServices::EntitySearch::V1_0::Models::ResponseFormat
        end
      end
    end
  end
end
