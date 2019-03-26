# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_features'

module Azure::Profiles::V2017_03_09
  module Features
    module Mgmt
      Features = Azure::Features::Mgmt::V2015_12_01::Features

      module Models
        FeatureResult = Azure::Features::Mgmt::V2015_12_01::Models::FeatureResult
        OperationListResult = Azure::Features::Mgmt::V2015_12_01::Models::OperationListResult
        OperationDisplay = Azure::Features::Mgmt::V2015_12_01::Models::OperationDisplay
        Operation = Azure::Features::Mgmt::V2015_12_01::Models::Operation
        FeatureProperties = Azure::Features::Mgmt::V2015_12_01::Models::FeatureProperties
        FeatureOperationsListResult = Azure::Features::Mgmt::V2015_12_01::Models::FeatureOperationsListResult
      end

      class FeaturesManagementClass
        attr_reader :features, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Features::Mgmt::V2015_12_01::FeatureClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @features = @client_0.features

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/V2017_03_09/Features/Mgmt"
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
          def feature_result
            Azure::Features::Mgmt::V2015_12_01::Models::FeatureResult
          end
          def operation_list_result
            Azure::Features::Mgmt::V2015_12_01::Models::OperationListResult
          end
          def operation_display
            Azure::Features::Mgmt::V2015_12_01::Models::OperationDisplay
          end
          def operation
            Azure::Features::Mgmt::V2015_12_01::Models::Operation
          end
          def feature_properties
            Azure::Features::Mgmt::V2015_12_01::Models::FeatureProperties
          end
          def feature_operations_list_result
            Azure::Features::Mgmt::V2015_12_01::Models::FeatureOperationsListResult
          end
        end
      end
    end
  end
end
