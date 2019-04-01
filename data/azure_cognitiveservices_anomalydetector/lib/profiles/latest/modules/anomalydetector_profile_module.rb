# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_cognitiveservices_anomalydetector'

module Azure::AnomalyDetector::Profiles::Latest

  module Models
    Request = Azure::CognitiveServices::AnomalyDetector::V1_0::Models::Request
    EntireDetectResponse = Azure::CognitiveServices::AnomalyDetector::V1_0::Models::EntireDetectResponse
    Point = Azure::CognitiveServices::AnomalyDetector::V1_0::Models::Point
    LastDetectResponse = Azure::CognitiveServices::AnomalyDetector::V1_0::Models::LastDetectResponse
    APIError = Azure::CognitiveServices::AnomalyDetector::V1_0::Models::APIError
    Granularity = Azure::CognitiveServices::AnomalyDetector::V1_0::Models::Granularity
  end

  #
  # AnomalyDetectorDataClass
  #
  class AnomalyDetectorDataClass
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

      @client_0 = Azure::CognitiveServices::AnomalyDetector::V1_0::AnomalyDetectorClient.new(configurable.credentials, options)
      if(@client_0.respond_to?(:subscription_id))
        @client_0.subscription_id = configurable.subscription_id
      end
      add_telemetry(@client_0)

      @model_classes = ModelClasses.new
    end

    def add_telemetry(client)
      profile_information = 'Profiles/Latest/AnomalyDetector'
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
    def request
      Azure::CognitiveServices::AnomalyDetector::V1_0::Models::Request
    end
    def entire_detect_response
      Azure::CognitiveServices::AnomalyDetector::V1_0::Models::EntireDetectResponse
    end
    def point
      Azure::CognitiveServices::AnomalyDetector::V1_0::Models::Point
    end
    def last_detect_response
      Azure::CognitiveServices::AnomalyDetector::V1_0::Models::LastDetectResponse
    end
    def apierror
      Azure::CognitiveServices::AnomalyDetector::V1_0::Models::APIError
    end
    def granularity
      Azure::CognitiveServices::AnomalyDetector::V1_0::Models::Granularity
    end
  end
end
