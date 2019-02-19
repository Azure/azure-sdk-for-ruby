# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_cognitiveservices_localsearch'

module Azure::Profiles::Latest
  module LocalSearch
    Local = Azure::CognitiveServices::LocalSearch::V1_0::Local

    module Models
      ErrorSubCode = Azure::CognitiveServices::LocalSearch::V1_0::Models::ErrorSubCode
      SearchResponse = Azure::CognitiveServices::LocalSearch::V1_0::Models::SearchResponse
      EntityType = Azure::CognitiveServices::LocalSearch::V1_0::Models::EntityType
      EntitiesEntityPresentationInfo = Azure::CognitiveServices::LocalSearch::V1_0::Models::EntitiesEntityPresentationInfo
      Places = Azure::CognitiveServices::LocalSearch::V1_0::Models::Places
      PostalAddress = Azure::CognitiveServices::LocalSearch::V1_0::Models::PostalAddress
      Place = Azure::CognitiveServices::LocalSearch::V1_0::Models::Place
      Intangible = Azure::CognitiveServices::LocalSearch::V1_0::Models::Intangible
      QueryContext = Azure::CognitiveServices::LocalSearch::V1_0::Models::QueryContext
      GeoCoordinates = Azure::CognitiveServices::LocalSearch::V1_0::Models::GeoCoordinates
      ResponseBase = Azure::CognitiveServices::LocalSearch::V1_0::Models::ResponseBase
      Response = Azure::CognitiveServices::LocalSearch::V1_0::Models::Response
      SearchResultsAnswer = Azure::CognitiveServices::LocalSearch::V1_0::Models::SearchResultsAnswer
      StructuredValue = Azure::CognitiveServices::LocalSearch::V1_0::Models::StructuredValue
      Thing = Azure::CognitiveServices::LocalSearch::V1_0::Models::Thing
      CreativeWork = Azure::CognitiveServices::LocalSearch::V1_0::Models::CreativeWork
      SearchAction = Azure::CognitiveServices::LocalSearch::V1_0::Models::SearchAction
      Identifiable = Azure::CognitiveServices::LocalSearch::V1_0::Models::Identifiable
      Action = Azure::CognitiveServices::LocalSearch::V1_0::Models::Action
      ErrorCode = Azure::CognitiveServices::LocalSearch::V1_0::Models::ErrorCode
      Answer = Azure::CognitiveServices::LocalSearch::V1_0::Models::Answer
      ResponseFormat = Azure::CognitiveServices::LocalSearch::V1_0::Models::ResponseFormat
      SafeSearch = Azure::CognitiveServices::LocalSearch::V1_0::Models::SafeSearch
      EntityScenario = Azure::CognitiveServices::LocalSearch::V1_0::Models::EntityScenario
      ErrorResponse = Azure::CognitiveServices::LocalSearch::V1_0::Models::ErrorResponse
      Error = Azure::CognitiveServices::LocalSearch::V1_0::Models::Error
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
        def error_sub_code
          Azure::CognitiveServices::LocalSearch::V1_0::Models::ErrorSubCode
        end
        def search_response
          Azure::CognitiveServices::LocalSearch::V1_0::Models::SearchResponse
        end
        def entity_type
          Azure::CognitiveServices::LocalSearch::V1_0::Models::EntityType
        end
        def entities_entity_presentation_info
          Azure::CognitiveServices::LocalSearch::V1_0::Models::EntitiesEntityPresentationInfo
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
        def intangible
          Azure::CognitiveServices::LocalSearch::V1_0::Models::Intangible
        end
        def query_context
          Azure::CognitiveServices::LocalSearch::V1_0::Models::QueryContext
        end
        def geo_coordinates
          Azure::CognitiveServices::LocalSearch::V1_0::Models::GeoCoordinates
        end
        def response_base
          Azure::CognitiveServices::LocalSearch::V1_0::Models::ResponseBase
        end
        def response
          Azure::CognitiveServices::LocalSearch::V1_0::Models::Response
        end
        def search_results_answer
          Azure::CognitiveServices::LocalSearch::V1_0::Models::SearchResultsAnswer
        end
        def structured_value
          Azure::CognitiveServices::LocalSearch::V1_0::Models::StructuredValue
        end
        def thing
          Azure::CognitiveServices::LocalSearch::V1_0::Models::Thing
        end
        def creative_work
          Azure::CognitiveServices::LocalSearch::V1_0::Models::CreativeWork
        end
        def search_action
          Azure::CognitiveServices::LocalSearch::V1_0::Models::SearchAction
        end
        def identifiable
          Azure::CognitiveServices::LocalSearch::V1_0::Models::Identifiable
        end
        def action
          Azure::CognitiveServices::LocalSearch::V1_0::Models::Action
        end
        def error_code
          Azure::CognitiveServices::LocalSearch::V1_0::Models::ErrorCode
        end
        def answer
          Azure::CognitiveServices::LocalSearch::V1_0::Models::Answer
        end
        def response_format
          Azure::CognitiveServices::LocalSearch::V1_0::Models::ResponseFormat
        end
        def safe_search
          Azure::CognitiveServices::LocalSearch::V1_0::Models::SafeSearch
        end
        def entity_scenario
          Azure::CognitiveServices::LocalSearch::V1_0::Models::EntityScenario
        end
        def error_response
          Azure::CognitiveServices::LocalSearch::V1_0::Models::ErrorResponse
        end
        def error
          Azure::CognitiveServices::LocalSearch::V1_0::Models::Error
        end
      end
    end
  end
end
