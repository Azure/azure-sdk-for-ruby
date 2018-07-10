# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_policy'

module Azure::Profiles::Latest
  module Policy
    module Mgmt
      PolicyDefinitions = Azure::Policy::Mgmt::V2016_12_01::PolicyDefinitions
      PolicySetDefinitions = Azure::Policy::Mgmt::V2017_06_01_preview::PolicySetDefinitions
      PolicyAssignments = Azure::Policy::Mgmt::V2017_06_01_preview::PolicyAssignments

      module Models
        PolicyDefinition = Azure::Policy::Mgmt::V2016_12_01::Models::PolicyDefinition
        PolicyDefinitionListResult = Azure::Policy::Mgmt::V2016_12_01::Models::PolicyDefinitionListResult
        PolicyMode = Azure::Policy::Mgmt::V2016_12_01::Models::PolicyMode
        PolicyAssignmentListResult = Azure::Policy::Mgmt::V2017_06_01_preview::Models::PolicyAssignmentListResult
        PolicyType = Azure::Policy::Mgmt::V2017_06_01_preview::Models::PolicyType
        ErrorResponse = Azure::Policy::Mgmt::V2017_06_01_preview::Models::ErrorResponse
        PolicyDefinitionReference = Azure::Policy::Mgmt::V2017_06_01_preview::Models::PolicyDefinitionReference
        PolicySetDefinition = Azure::Policy::Mgmt::V2017_06_01_preview::Models::PolicySetDefinition
        PolicySku = Azure::Policy::Mgmt::V2017_06_01_preview::Models::PolicySku
        PolicySetDefinitionListResult = Azure::Policy::Mgmt::V2017_06_01_preview::Models::PolicySetDefinitionListResult
        PolicyAssignment = Azure::Policy::Mgmt::V2017_06_01_preview::Models::PolicyAssignment
      end

      class PolicyManagementClass
        attr_reader :policy_definitions, :policy_set_definitions, :policy_assignments, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Policy::Mgmt::V2016_12_01::PolicyClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @policy_definitions = @client_0.policy_definitions

          @client_1 = Azure::Policy::Mgmt::V2017_06_01_preview::PolicyClient.new(configurable.credentials, base_url, options)
          if(@client_1.respond_to?(:subscription_id))
            @client_1.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_1)
          @policy_set_definitions = @client_1.policy_set_definitions
          @policy_assignments = @client_1.policy_assignments

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Policy/Mgmt"
          client.add_user_agent_information(profile_information)
        end

        def method_missing(method, *args)
          if @client_1.respond_to?method
            @client_1.send(method, *args)
          elsif @client_0.respond_to?method
            @client_0.send(method, *args)
          else
            super
          end
        end

        class ModelClasses
          def policy_definition
            Azure::Policy::Mgmt::V2016_12_01::Models::PolicyDefinition
          end
          def policy_definition_list_result
            Azure::Policy::Mgmt::V2016_12_01::Models::PolicyDefinitionListResult
          end
          def policy_mode
            Azure::Policy::Mgmt::V2016_12_01::Models::PolicyMode
          end
          def policy_assignment_list_result
            Azure::Policy::Mgmt::V2017_06_01_preview::Models::PolicyAssignmentListResult
          end
          def policy_type
            Azure::Policy::Mgmt::V2017_06_01_preview::Models::PolicyType
          end
          def error_response
            Azure::Policy::Mgmt::V2017_06_01_preview::Models::ErrorResponse
          end
          def policy_definition_reference
            Azure::Policy::Mgmt::V2017_06_01_preview::Models::PolicyDefinitionReference
          end
          def policy_set_definition
            Azure::Policy::Mgmt::V2017_06_01_preview::Models::PolicySetDefinition
          end
          def policy_sku
            Azure::Policy::Mgmt::V2017_06_01_preview::Models::PolicySku
          end
          def policy_set_definition_list_result
            Azure::Policy::Mgmt::V2017_06_01_preview::Models::PolicySetDefinitionListResult
          end
          def policy_assignment
            Azure::Policy::Mgmt::V2017_06_01_preview::Models::PolicyAssignment
          end
        end
      end
    end
  end
end
