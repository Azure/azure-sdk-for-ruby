# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_cognitiveservices_entitysearch'

module Azure::Profiles::Latest
  module EntitySearch
    EntitiesOperations = Azure::CognitiveServices::EntitySearch::V1_0::EntitiesOperations

    module Models
      Response = Azure::CognitiveServices::EntitySearch::V1_0::Models::Response
      EntityType = Azure::CognitiveServices::EntitySearch::V1_0::Models::EntityType
      ErrorResponse = Azure::CognitiveServices::EntitySearch::V1_0::Models::ErrorResponse
      Error = Azure::CognitiveServices::EntitySearch::V1_0::Models::Error
      ResponseBase = Azure::CognitiveServices::EntitySearch::V1_0::Models::ResponseBase
      QueryContext = Azure::CognitiveServices::EntitySearch::V1_0::Models::QueryContext
      SearchResponse = Azure::CognitiveServices::EntitySearch::V1_0::Models::SearchResponse
      SearchResultsAnswer = Azure::CognitiveServices::EntitySearch::V1_0::Models::SearchResultsAnswer
      Identifiable = Azure::CognitiveServices::EntitySearch::V1_0::Models::Identifiable
      Answer = Azure::CognitiveServices::EntitySearch::V1_0::Models::Answer
      Thing = Azure::CognitiveServices::EntitySearch::V1_0::Models::Thing
      CreativeWork = Azure::CognitiveServices::EntitySearch::V1_0::Models::CreativeWork
      ErrorCode = Azure::CognitiveServices::EntitySearch::V1_0::Models::ErrorCode
      ErrorSubCode = Azure::CognitiveServices::EntitySearch::V1_0::Models::ErrorSubCode
      SafeSearch = Azure::CognitiveServices::EntitySearch::V1_0::Models::SafeSearch
      ContractualRulesContractualRule = Azure::CognitiveServices::EntitySearch::V1_0::Models::ContractualRulesContractualRule
      EntitiesEntityPresentationInfo = Azure::CognitiveServices::EntitySearch::V1_0::Models::EntitiesEntityPresentationInfo
      ImageObject = Azure::CognitiveServices::EntitySearch::V1_0::Models::ImageObject
      Entities = Azure::CognitiveServices::EntitySearch::V1_0::Models::Entities
      PostalAddress = Azure::CognitiveServices::EntitySearch::V1_0::Models::PostalAddress
      Place = Azure::CognitiveServices::EntitySearch::V1_0::Models::Place
      Places = Azure::CognitiveServices::EntitySearch::V1_0::Models::Places
      Organization = Azure::CognitiveServices::EntitySearch::V1_0::Models::Organization
      ContractualRulesAttribution = Azure::CognitiveServices::EntitySearch::V1_0::Models::ContractualRulesAttribution
      MediaObject = Azure::CognitiveServices::EntitySearch::V1_0::Models::MediaObject
      Intangible = Azure::CognitiveServices::EntitySearch::V1_0::Models::Intangible
      CivicStructure = Azure::CognitiveServices::EntitySearch::V1_0::Models::CivicStructure
      LocalBusiness = Azure::CognitiveServices::EntitySearch::V1_0::Models::LocalBusiness
      TouristAttraction = Azure::CognitiveServices::EntitySearch::V1_0::Models::TouristAttraction
      Airport = Azure::CognitiveServices::EntitySearch::V1_0::Models::Airport
      License = Azure::CognitiveServices::EntitySearch::V1_0::Models::License
      StructuredValue = Azure::CognitiveServices::EntitySearch::V1_0::Models::StructuredValue
      EntertainmentBusiness = Azure::CognitiveServices::EntitySearch::V1_0::Models::EntertainmentBusiness
      MovieTheater = Azure::CognitiveServices::EntitySearch::V1_0::Models::MovieTheater
      ContractualRulesLicenseAttribution = Azure::CognitiveServices::EntitySearch::V1_0::Models::ContractualRulesLicenseAttribution
      ContractualRulesLinkAttribution = Azure::CognitiveServices::EntitySearch::V1_0::Models::ContractualRulesLinkAttribution
      ContractualRulesMediaAttribution = Azure::CognitiveServices::EntitySearch::V1_0::Models::ContractualRulesMediaAttribution
      ContractualRulesTextAttribution = Azure::CognitiveServices::EntitySearch::V1_0::Models::ContractualRulesTextAttribution
      FoodEstablishment = Azure::CognitiveServices::EntitySearch::V1_0::Models::FoodEstablishment
      LodgingBusiness = Azure::CognitiveServices::EntitySearch::V1_0::Models::LodgingBusiness
      Restaurant = Azure::CognitiveServices::EntitySearch::V1_0::Models::Restaurant
      Hotel = Azure::CognitiveServices::EntitySearch::V1_0::Models::Hotel
      EntityQueryScenario = Azure::CognitiveServices::EntitySearch::V1_0::Models::EntityQueryScenario
      EntityScenario = Azure::CognitiveServices::EntitySearch::V1_0::Models::EntityScenario
      AnswerType = Azure::CognitiveServices::EntitySearch::V1_0::Models::AnswerType
      ResponseFormat = Azure::CognitiveServices::EntitySearch::V1_0::Models::ResponseFormat
    end

    class EntitySearchDataClass
      attr_reader :entities_operations, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        @client_0 = Azure::CognitiveServices::EntitySearch::V1_0::EntitySearchClient.new(configurable.credentials, base_url, options)
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
        def response
          Azure::CognitiveServices::EntitySearch::V1_0::Models::Response
        end
        def entity_type
          Azure::CognitiveServices::EntitySearch::V1_0::Models::EntityType
        end
        def error_response
          Azure::CognitiveServices::EntitySearch::V1_0::Models::ErrorResponse
        end
        def error
          Azure::CognitiveServices::EntitySearch::V1_0::Models::Error
        end
        def response_base
          Azure::CognitiveServices::EntitySearch::V1_0::Models::ResponseBase
        end
        def query_context
          Azure::CognitiveServices::EntitySearch::V1_0::Models::QueryContext
        end
        def search_response
          Azure::CognitiveServices::EntitySearch::V1_0::Models::SearchResponse
        end
        def search_results_answer
          Azure::CognitiveServices::EntitySearch::V1_0::Models::SearchResultsAnswer
        end
        def identifiable
          Azure::CognitiveServices::EntitySearch::V1_0::Models::Identifiable
        end
        def answer
          Azure::CognitiveServices::EntitySearch::V1_0::Models::Answer
        end
        def thing
          Azure::CognitiveServices::EntitySearch::V1_0::Models::Thing
        end
        def creative_work
          Azure::CognitiveServices::EntitySearch::V1_0::Models::CreativeWork
        end
        def error_code
          Azure::CognitiveServices::EntitySearch::V1_0::Models::ErrorCode
        end
        def error_sub_code
          Azure::CognitiveServices::EntitySearch::V1_0::Models::ErrorSubCode
        end
        def safe_search
          Azure::CognitiveServices::EntitySearch::V1_0::Models::SafeSearch
        end
        def contractual_rules_contractual_rule
          Azure::CognitiveServices::EntitySearch::V1_0::Models::ContractualRulesContractualRule
        end
        def entities_entity_presentation_info
          Azure::CognitiveServices::EntitySearch::V1_0::Models::EntitiesEntityPresentationInfo
        end
        def image_object
          Azure::CognitiveServices::EntitySearch::V1_0::Models::ImageObject
        end
        def entities
          Azure::CognitiveServices::EntitySearch::V1_0::Models::Entities
        end
        def postal_address
          Azure::CognitiveServices::EntitySearch::V1_0::Models::PostalAddress
        end
        def place
          Azure::CognitiveServices::EntitySearch::V1_0::Models::Place
        end
        def places
          Azure::CognitiveServices::EntitySearch::V1_0::Models::Places
        end
        def organization
          Azure::CognitiveServices::EntitySearch::V1_0::Models::Organization
        end
        def contractual_rules_attribution
          Azure::CognitiveServices::EntitySearch::V1_0::Models::ContractualRulesAttribution
        end
        def media_object
          Azure::CognitiveServices::EntitySearch::V1_0::Models::MediaObject
        end
        def intangible
          Azure::CognitiveServices::EntitySearch::V1_0::Models::Intangible
        end
        def civic_structure
          Azure::CognitiveServices::EntitySearch::V1_0::Models::CivicStructure
        end
        def local_business
          Azure::CognitiveServices::EntitySearch::V1_0::Models::LocalBusiness
        end
        def tourist_attraction
          Azure::CognitiveServices::EntitySearch::V1_0::Models::TouristAttraction
        end
        def airport
          Azure::CognitiveServices::EntitySearch::V1_0::Models::Airport
        end
        def license
          Azure::CognitiveServices::EntitySearch::V1_0::Models::License
        end
        def structured_value
          Azure::CognitiveServices::EntitySearch::V1_0::Models::StructuredValue
        end
        def entertainment_business
          Azure::CognitiveServices::EntitySearch::V1_0::Models::EntertainmentBusiness
        end
        def movie_theater
          Azure::CognitiveServices::EntitySearch::V1_0::Models::MovieTheater
        end
        def contractual_rules_license_attribution
          Azure::CognitiveServices::EntitySearch::V1_0::Models::ContractualRulesLicenseAttribution
        end
        def contractual_rules_link_attribution
          Azure::CognitiveServices::EntitySearch::V1_0::Models::ContractualRulesLinkAttribution
        end
        def contractual_rules_media_attribution
          Azure::CognitiveServices::EntitySearch::V1_0::Models::ContractualRulesMediaAttribution
        end
        def contractual_rules_text_attribution
          Azure::CognitiveServices::EntitySearch::V1_0::Models::ContractualRulesTextAttribution
        end
        def food_establishment
          Azure::CognitiveServices::EntitySearch::V1_0::Models::FoodEstablishment
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
        def answer_type
          Azure::CognitiveServices::EntitySearch::V1_0::Models::AnswerType
        end
        def response_format
          Azure::CognitiveServices::EntitySearch::V1_0::Models::ResponseFormat
        end
      end
    end
  end
end
