# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_policy'

module Azure::Profiles::V2017_03_09
  module Policy
    module Mgmt
      PolicyDefinitions = Azure::Policy::Mgmt::V2015_10_01_preview::PolicyDefinitions
      PolicyAssignments = Azure::Policy::Mgmt::V2015_10_01_preview::PolicyAssignments

      module Models
        PolicyDefinition = Azure::Policy::Mgmt::V2015_10_01_preview::Models::PolicyDefinition
        PolicyAssignmentListResult = Azure::Policy::Mgmt::V2015_10_01_preview::Models::PolicyAssignmentListResult
        PolicyDefinitionListResult = Azure::Policy::Mgmt::V2015_10_01_preview::Models::PolicyDefinitionListResult
        PolicyType = Azure::Policy::Mgmt::V2015_10_01_preview::Models::PolicyType
        PolicyAssignment = Azure::Policy::Mgmt::V2015_10_01_preview::Models::PolicyAssignment
      end

      class PolicyManagementClass
        attr_reader :policy_definitions, :policy_assignments, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Policy::Mgmt::V2015_10_01_preview::PolicyClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @policy_definitions = @client_0.policy_definitions
          @policy_assignments = @client_0.policy_assignments

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/V2017_03_09/Policy/Mgmt"
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
          def policy_definition
            Azure::Policy::Mgmt::V2015_10_01_preview::Models::PolicyDefinition
          end
          def policy_assignment_list_result
            Azure::Policy::Mgmt::V2015_10_01_preview::Models::PolicyAssignmentListResult
          end
          def policy_definition_list_result
            Azure::Policy::Mgmt::V2015_10_01_preview::Models::PolicyDefinitionListResult
          end
          def policy_type
            Azure::Policy::Mgmt::V2015_10_01_preview::Models::PolicyType
          end
          def policy_assignment
            Azure::Policy::Mgmt::V2015_10_01_preview::Models::PolicyAssignment
          end
        end
      end
    end
  end
end
