# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_features'


module Azure::Profiles::Management::Profile_Azure_Stack
  module Features
    Features = Azure::ARM::Features::Api_2015_12_01::Features

    module Models
      FeatureResult = Azure::ARM::Features::Api_2015_12_01::Models::FeatureResult
      FeatureOperationsListResult = Azure::ARM::Features::Api_2015_12_01::Models::FeatureOperationsListResult
      FeatureProperties = Azure::ARM::Features::Api_2015_12_01::Models::FeatureProperties
    end

    #
    # Features
    #
    class FeaturesClass
      attr_accessor :features, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::Features::Api_2015_12_01::FeatureClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.features = Azure::ARM::Features::Api_2015_12_01::Features.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2015-12-01'
            client = Azure::ARM::Features::Api_2015_12_01::FeatureClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def feature_result
          Azure::ARM::Features::Api_2015_12_01::Models::FeatureResult
        end
        def feature_operations_list_result
          Azure::ARM::Features::Api_2015_12_01::Models::FeatureOperationsListResult
        end
        def feature_properties
          Azure::ARM::Features::Api_2015_12_01::Models::FeatureProperties
        end
      end
    end
  end
end
