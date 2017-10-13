# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_features'

module Azure::Profiles::V2017_03_09
  module Features::Mgmt
    Features = Azure::Features::Mgmt::V2015_12_01::Features

    module Models
      FeatureResult = Azure::Features::Mgmt::V2015_12_01::Models::FeatureResult
      FeatureOperationsListResult = Azure::Features::Mgmt::V2015_12_01::Models::FeatureOperationsListResult
      FeatureProperties = Azure::Features::Mgmt::V2015_12_01::Models::FeatureProperties
    end

    #
    # Features
    #
    class FeaturesClass
      attr_reader :features, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        client_0 = Azure::Features::Mgmt::V2015_12_01::FeatureClient.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        @features = client_0.features

        @model_classes = ModelClasses.new
      end

      #
      # Method to get the client object
      #
      # @return Client object
      #
      def get_client(version = '2015-12-01')
        case version
          when '2015-12-01'
            client = Azure::Features::Mgmt::V2015_12_01::FeatureClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def feature_result
          Azure::Features::Mgmt::V2015_12_01::Models::FeatureResult
        end
        def feature_operations_list_result
          Azure::Features::Mgmt::V2015_12_01::Models::FeatureOperationsListResult
        end
        def feature_properties
          Azure::Features::Mgmt::V2015_12_01::Models::FeatureProperties
        end
      end
    end
  end
end
