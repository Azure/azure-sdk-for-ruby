# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_cognitiveservices_localsearch'

module Azure::Profiles::Latest
  module LocalSearch
    Local = Azure::CognitiveServices::LocalSearch::V1_0::Local

    module Models
      ResponseBase = Azure::CognitiveServices::LocalSearch::V1_0::Models::ResponseBase
      GeoCoordinates = Azure::CognitiveServices::LocalSearch::V1_0::Models::GeoCoordinates
      EntitiesEntityPresentationInfo = Azure::CognitiveServices::LocalSearch::V1_0::Models::EntitiesEntityPresentationInfo
      QueryContext = Azure::CognitiveServices::LocalSearch::V1_0::Models::QueryContext
      Error = Azure::CognitiveServices::LocalSearch::V1_0::Models::Error
      SearchResultsAnswer = Azure::CognitiveServices::LocalSearch::V1_0::Models::SearchResultsAnswer
      Places = Azure::CognitiveServices::LocalSearch::V1_0::Models::Places
      PostalAddress = Azure::CognitiveServices::LocalSearch::V1_0::Models::PostalAddress
      Place = Azure::CognitiveServices::LocalSearch::V1_0::Models::Place
      Action = Azure::CognitiveServices::LocalSearch::V1_0::Models::Action
      Identifiable = Azure::CognitiveServices::LocalSearch::V1_0::Models::Identifiable
      Response = Azure::CognitiveServices::LocalSearch::V1_0::Models::Response
      Thing = Azure::CognitiveServices::LocalSearch::V1_0::Models::Thing
      SearchResponse = Azure::CognitiveServices::LocalSearch::V1_0::Models::SearchResponse
      Answer = Azure::CognitiveServices::LocalSearch::V1_0::Models::Answer
      ErrorResponse = Azure::CognitiveServices::LocalSearch::V1_0::Models::ErrorResponse
      CreativeWork = Azure::CognitiveServices::LocalSearch::V1_0::Models::CreativeWork
      Intangible = Azure::CognitiveServices::LocalSearch::V1_0::Models::Intangible
      SearchAction = Azure::CognitiveServices::LocalSearch::V1_0::Models::SearchAction
      StructuredValue = Azure::CognitiveServices::LocalSearch::V1_0::Models::StructuredValue
      EntityScenario = Azure::CognitiveServices::LocalSearch::V1_0::Models::EntityScenario
      EntityType = Azure::CognitiveServices::LocalSearch::V1_0::Models::EntityType
      ErrorCode = Azure::CognitiveServices::LocalSearch::V1_0::Models::ErrorCode
      ErrorSubCode = Azure::CognitiveServices::LocalSearch::V1_0::Models::ErrorSubCode
      ResponseFormat = Azure::CognitiveServices::LocalSearch::V1_0::Models::ResponseFormat
      SafeSearch = Azure::CognitiveServices::LocalSearch::V1_0::Models::SafeSearch
    end

    class LocalSearchDataClass
      attr_reader :local, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        @client_0 = Azure::CognitiveServices::LocalSearch::V1_0::LocalSearchClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @local = @client_0.local

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/LocalSearch"
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
        def response_base
          Azure::CognitiveServices::LocalSearch::V1_0::Models::ResponseBase
        end
        def geo_coordinates
          Azure::CognitiveServices::LocalSearch::V1_0::Models::GeoCoordinates
        end
        def entities_entity_presentation_info
          Azure::CognitiveServices::LocalSearch::V1_0::Models::EntitiesEntityPresentationInfo
        end
        def query_context
          Azure::CognitiveServices::LocalSearch::V1_0::Models::QueryContext
        end
        def error
          Azure::CognitiveServices::LocalSearch::V1_0::Models::Error
        end
        def search_results_answer
          Azure::CognitiveServices::LocalSearch::V1_0::Models::SearchResultsAnswer
        end
        def places
          Azure::CognitiveServices::LocalSearch::V1_0::Models::Places
        end
        def postal_address
          Azure::CognitiveServices::LocalSearch::V1_0::Models::PostalAddress
        end
        def place
          Azure::CognitiveServices::LocalSearch::V1_0::Models::Place
        end
        def action
          Azure::CognitiveServices::LocalSearch::V1_0::Models::Action
        end
        def identifiable
          Azure::CognitiveServices::LocalSearch::V1_0::Models::Identifiable
        end
        def response
          Azure::CognitiveServices::LocalSearch::V1_0::Models::Response
        end
        def thing
          Azure::CognitiveServices::LocalSearch::V1_0::Models::Thing
        end
        def search_response
          Azure::CognitiveServices::LocalSearch::V1_0::Models::SearchResponse
        end
        def answer
          Azure::CognitiveServices::LocalSearch::V1_0::Models::Answer
        end
        def error_response
          Azure::CognitiveServices::LocalSearch::V1_0::Models::ErrorResponse
        end
        def creative_work
          Azure::CognitiveServices::LocalSearch::V1_0::Models::CreativeWork
        end
        def intangible
          Azure::CognitiveServices::LocalSearch::V1_0::Models::Intangible
        end
        def search_action
          Azure::CognitiveServices::LocalSearch::V1_0::Models::SearchAction
        end
        def structured_value
          Azure::CognitiveServices::LocalSearch::V1_0::Models::StructuredValue
        end
        def entity_scenario
          Azure::CognitiveServices::LocalSearch::V1_0::Models::EntityScenario
        end
        def entity_type
          Azure::CognitiveServices::LocalSearch::V1_0::Models::EntityType
        end
        def error_code
          Azure::CognitiveServices::LocalSearch::V1_0::Models::ErrorCode
        end
        def error_sub_code
          Azure::CognitiveServices::LocalSearch::V1_0::Models::ErrorSubCode
        end
        def response_format
          Azure::CognitiveServices::LocalSearch::V1_0::Models::ResponseFormat
        end
        def safe_search
          Azure::CognitiveServices::LocalSearch::V1_0::Models::SafeSearch
        end
      end
    end
  end
end
