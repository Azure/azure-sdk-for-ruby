# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_policy'

module Azure::Profiles::Latest
  module Policy
    module Mgmt
      PolicyAssignments = Azure::Policy::Mgmt::V2018_03_01::PolicyAssignments
      PolicySetDefinitions = Azure::Policy::Mgmt::V2018_03_01::PolicySetDefinitions
      PolicyDefinitions = Azure::Policy::Mgmt::V2018_03_01::PolicyDefinitions

      module Models
        PolicyDefinitionReference = Azure::Policy::Mgmt::V2018_03_01::Models::PolicyDefinitionReference
        PolicyAssignment = Azure::Policy::Mgmt::V2018_03_01::Models::PolicyAssignment
        PolicyDefinition = Azure::Policy::Mgmt::V2018_03_01::Models::PolicyDefinition
        PolicyDefinitionListResult = Azure::Policy::Mgmt::V2018_03_01::Models::PolicyDefinitionListResult
        PolicySetDefinition = Azure::Policy::Mgmt::V2018_03_01::Models::PolicySetDefinition
        PolicyAssignmentListResult = Azure::Policy::Mgmt::V2018_03_01::Models::PolicyAssignmentListResult
        ErrorResponse = Azure::Policy::Mgmt::V2018_03_01::Models::ErrorResponse
        PolicyType = Azure::Policy::Mgmt::V2018_03_01::Models::PolicyType
        PolicySetDefinitionListResult = Azure::Policy::Mgmt::V2018_03_01::Models::PolicySetDefinitionListResult
        PolicySku = Azure::Policy::Mgmt::V2018_03_01::Models::PolicySku
        PolicyMode = Azure::Policy::Mgmt::V2018_03_01::Models::PolicyMode
      end

      class PolicyManagementClass
        attr_reader :policy_assignments, :policy_set_definitions, :policy_definitions, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Policy::Mgmt::V2018_03_01::PolicyClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @policy_assignments = @client_0.policy_assignments
          @policy_set_definitions = @client_0.policy_set_definitions
          @policy_definitions = @client_0.policy_definitions

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Policy/Mgmt"
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
          def policy_definition_reference
            Azure::Policy::Mgmt::V2018_03_01::Models::PolicyDefinitionReference
          end
          def policy_assignment
            Azure::Policy::Mgmt::V2018_03_01::Models::PolicyAssignment
          end
          def policy_definition
            Azure::Policy::Mgmt::V2018_03_01::Models::PolicyDefinition
          end
          def policy_definition_list_result
            Azure::Policy::Mgmt::V2018_03_01::Models::PolicyDefinitionListResult
          end
          def policy_set_definition
            Azure::Policy::Mgmt::V2018_03_01::Models::PolicySetDefinition
          end
          def policy_assignment_list_result
            Azure::Policy::Mgmt::V2018_03_01::Models::PolicyAssignmentListResult
          end
          def error_response
            Azure::Policy::Mgmt::V2018_03_01::Models::ErrorResponse
          end
          def policy_type
            Azure::Policy::Mgmt::V2018_03_01::Models::PolicyType
          end
          def policy_set_definition_list_result
            Azure::Policy::Mgmt::V2018_03_01::Models::PolicySetDefinitionListResult
          end
          def policy_sku
            Azure::Policy::Mgmt::V2018_03_01::Models::PolicySku
          end
          def policy_mode
            Azure::Policy::Mgmt::V2018_03_01::Models::PolicyMode
          end
        end
      end
    end
  end
end
