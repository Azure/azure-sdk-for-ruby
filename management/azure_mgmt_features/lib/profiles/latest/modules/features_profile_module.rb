# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_features'

module Azure::Features::Profiles::Latest
  module Mgmt
    Features = Azure::Features::Mgmt::V2015_12_01::Features

    module Models
      OperationDisplay = Azure::Features::Mgmt::V2015_12_01::Models::OperationDisplay
      FeatureProperties = Azure::Features::Mgmt::V2015_12_01::Models::FeatureProperties
      Operation = Azure::Features::Mgmt::V2015_12_01::Models::Operation
      FeatureOperationsListResult = Azure::Features::Mgmt::V2015_12_01::Models::FeatureOperationsListResult
      OperationListResult = Azure::Features::Mgmt::V2015_12_01::Models::OperationListResult
      FeatureResult = Azure::Features::Mgmt::V2015_12_01::Models::FeatureResult
    end

    #
    # FeaturesManagementClass
    #
    class FeaturesManagementClass
      attr_reader :features, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        @options = if options.is_a?(Hash) && options.empty?
                     setup_default_options
                   else
                     options
                   end

        reset!(options)

        @configurable = self
        @base_url = options[:base_url].nil? ? nil : options[:base_url]
        @options = options[:options].nil? ? nil : options[:options]

        @client_0 = Azure::Features::Mgmt::V2015_12_01::FeatureClient.new(configurable.credentials, base_url, options)
        if @client_0.respond_to?(:subscription_id)
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @features = @client_0.features

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/Features/Mgmt'
        client.add_user_agent_information(profile_information)
      end

      def method_missing(method, *args)
        if @client_0.respond_to? method
          @client_0.send(method, *args)
        else
          super
        end
      end
    end

    class ModelClasses
      def operation_display
        Azure::Features::Mgmt::V2015_12_01::Models::OperationDisplay
      end

      def feature_properties
        Azure::Features::Mgmt::V2015_12_01::Models::FeatureProperties
      end

      def operation
        Azure::Features::Mgmt::V2015_12_01::Models::Operation
      end

      def feature_operations_list_result
        Azure::Features::Mgmt::V2015_12_01::Models::FeatureOperationsListResult
      end

      def operation_list_result
        Azure::Features::Mgmt::V2015_12_01::Models::OperationListResult
      end

      def feature_result
        Azure::Features::Mgmt::V2015_12_01::Models::FeatureResult
      end
    end
  end
end
