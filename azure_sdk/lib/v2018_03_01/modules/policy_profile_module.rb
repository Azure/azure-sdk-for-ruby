# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_policy'

module Azure::Profiles::V2018_03_01
  module Policy
    module Mgmt
      PolicyDefinitions = Azure::Policy::Mgmt::V2016_12_01::PolicyDefinitions
      PolicyAssignments = Azure::Policy::Mgmt::V2016_12_01::PolicyAssignments

      module Models
        PolicyMode = Azure::Policy::Mgmt::V2016_12_01::Models::PolicyMode
        PolicyAssignment = Azure::Policy::Mgmt::V2016_12_01::Models::PolicyAssignment
        PolicyDefinition = Azure::Policy::Mgmt::V2016_12_01::Models::PolicyDefinition
        PolicyAssignmentListResult = Azure::Policy::Mgmt::V2016_12_01::Models::PolicyAssignmentListResult
        PolicyDefinitionListResult = Azure::Policy::Mgmt::V2016_12_01::Models::PolicyDefinitionListResult
        PolicyType = Azure::Policy::Mgmt::V2016_12_01::Models::PolicyType
      end

      class PolicyManagementClass
        attr_reader :policy_definitions, :policy_assignments, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Policy::Mgmt::V2016_12_01::PolicyClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @policy_definitions = @client_0.policy_definitions
          @policy_assignments = @client_0.policy_assignments

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/V2018_03_01/Policy/Mgmt"
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
          def policy_mode
            Azure::Policy::Mgmt::V2016_12_01::Models::PolicyMode
          end
          def policy_assignment
            Azure::Policy::Mgmt::V2016_12_01::Models::PolicyAssignment
          end
          def policy_definition
            Azure::Policy::Mgmt::V2016_12_01::Models::PolicyDefinition
          end
          def policy_assignment_list_result
            Azure::Policy::Mgmt::V2016_12_01::Models::PolicyAssignmentListResult
          end
          def policy_definition_list_result
            Azure::Policy::Mgmt::V2016_12_01::Models::PolicyDefinitionListResult
          end
          def policy_type
            Azure::Policy::Mgmt::V2016_12_01::Models::PolicyType
          end
        end
      end
    end
  end
end
