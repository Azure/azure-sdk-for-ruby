# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_policy'


module Azure
  module Profiles
    module PolicyModule
    module Management
      module Profile_2016_12_01
        module Policy
          PolicyDefinitions = Azure::ARM::Policy::Api_2016_12_01::PolicyDefinitions
          PolicyAssignments = Azure::ARM::Policy::Api_2016_12_01::PolicyAssignments
          PolicyClient = Azure::ARM::Policy::Api_2016_12_01::PolicyClient

          module Models
            PolicyAssignment = Azure::ARM::Policy::Api_2016_12_01::Models::PolicyAssignment
            PolicyDefinition = Azure::ARM::Policy::Api_2016_12_01::Models::PolicyDefinition
            PolicyAssignmentListResult = Azure::ARM::Policy::Api_2016_12_01::Models::PolicyAssignmentListResult
            PolicyDefinitionListResult = Azure::ARM::Policy::Api_2016_12_01::Models::PolicyDefinitionListResult
            PolicyType = Azure::ARM::Policy::Api_2016_12_01::Models::PolicyType
            PolicyMode = Azure::ARM::Policy::Api_2016_12_01::Models::PolicyMode
          end

          #
          # Policy
          #
          class Policy
            attr_accessor :policy_definitions, :policy_assignments, :policy_client, :configurable, :base_url, :options, :model_classes

            def initialize(configurable, base_url, options)
              @configurable, @base_url, @options = configurable, base_url, options
              client = .new(configurable.credentials, base_url, options)
              client.subscription_id = configurable.subscription_id
              self.policy_definitions = Azure::ARM::Policy::Api_2016_12_01::PolicyDefinitions.new(client)
              self.policy_assignments = Azure::ARM::Policy::Api_2016_12_01::PolicyAssignments.new(client)
              self.policy_client = Azure::ARM::Policy::Api_2016_12_01::PolicyClient.new(client)
              self.model_classes = ModelClasses.new
            end

            def get_client(version)
              case version
                else
                  raise "No client of version #{version} could be found in this profile."
              end
            end

            class ModelClasses
              def policy_assignment
                Azure::ARM::Policy::Api_2016_12_01::Models::PolicyAssignment
              end
              def policy_definition
                Azure::ARM::Policy::Api_2016_12_01::Models::PolicyDefinition
              end
              def policy_assignment_list_result
                Azure::ARM::Policy::Api_2016_12_01::Models::PolicyAssignmentListResult
              end
              def policy_definition_list_result
                Azure::ARM::Policy::Api_2016_12_01::Models::PolicyDefinitionListResult
              end
              def policy_type
                Azure::ARM::Policy::Api_2016_12_01::Models::PolicyType
              end
              def policy_mode
                Azure::ARM::Policy::Api_2016_12_01::Models::PolicyMode
              end
            end
          end
        end
      end
    end
    end
  end
end
