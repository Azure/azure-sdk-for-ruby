# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_features'


module Azure
  module Profiles
    module Management
      module Profile_Azure_Stack
        module Features
          Features = Azure::ARM::Features::Api_2015_12_01::Features
          FeatureClient = Azure::ARM::Features::Api_2015_12_01::FeatureClient

          module Models
            FeatureResult = Azure::ARM::Features::Api_2015_12_01::Models::FeatureResult
            FeatureOperationsListResult = Azure::ARM::Features::Api_2015_12_01::Models::FeatureOperationsListResult
            FeatureProperties = Azure::ARM::Features::Api_2015_12_01::Models::FeatureProperties
          end

          #
          # Features
          #
          class Features
            attr_accessor :features, :feature_client, :configurable, :base_url, :options, :model_classes

            def initialize(configurable, base_url, options)
              @configurable, @base_url, @options = configurable, base_url, options
              client = Azure::ARM::Compute::Api_2017_03_30::ComputeManagementClient.new(configurable.credentials, base_url, options)
              client.subscription_id = configurable.subscription_id
              self.features = Azure::ARM::Features::Api_2015_12_01::Features.new(client)
              self.feature_client = Azure::ARM::Features::Api_2015_12_01::FeatureClient.new(client)
              self.model_classes = ModelClasses.new
            end

            def get_client(version)
              case version
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
    end
  end
end
