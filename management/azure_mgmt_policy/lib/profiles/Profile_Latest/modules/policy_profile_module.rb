# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_policy'


module Azure::Profiles::PolicyModule::Management::Profile_Latest
  module Policy
    PolicyAssignments = Azure::ARM::Policy::Api_2017_06_01_preview::PolicyAssignments
    PolicySetDefinitions = Azure::ARM::Policy::Api_2017_06_01_preview::PolicySetDefinitions

    module Models
      ErrorResponse = Azure::ARM::Policy::Api_2017_06_01_preview::Models::ErrorResponse
      PolicyDefinitionReference = Azure::ARM::Policy::Api_2017_06_01_preview::Models::PolicyDefinitionReference
      PolicyAssignment = Azure::ARM::Policy::Api_2017_06_01_preview::Models::PolicyAssignment
      PolicySetDefinition = Azure::ARM::Policy::Api_2017_06_01_preview::Models::PolicySetDefinition
      PolicySku = Azure::ARM::Policy::Api_2017_06_01_preview::Models::PolicySku
      PolicySetDefinitionListResult = Azure::ARM::Policy::Api_2017_06_01_preview::Models::PolicySetDefinitionListResult
      PolicyAssignmentListResult = Azure::ARM::Policy::Api_2017_06_01_preview::Models::PolicyAssignmentListResult
      PolicyType = Azure::ARM::Policy::Api_2017_06_01_preview::Models::PolicyType
    end

    #
    # Policy
    #
    class PolicyClass
      attr_accessor :policy_assignments, :policy_set_definitions, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::Policy::Api_2017_06_01_preview::PolicyClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.policy_assignments = Azure::ARM::Policy::Api_2017_06_01_preview::PolicyAssignments.new(client)
        self.policy_set_definitions = Azure::ARM::Policy::Api_2017_06_01_preview::PolicySetDefinitions.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2017-06-01-preview'
            client = Azure::ARM::Policy::Api_2017_06_01_preview::PolicyClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def error_response
          Azure::ARM::Policy::Api_2017_06_01_preview::Models::ErrorResponse
        end
        def policy_definition_reference
          Azure::ARM::Policy::Api_2017_06_01_preview::Models::PolicyDefinitionReference
        end
        def policy_assignment
          Azure::ARM::Policy::Api_2017_06_01_preview::Models::PolicyAssignment
        end
        def policy_set_definition
          Azure::ARM::Policy::Api_2017_06_01_preview::Models::PolicySetDefinition
        end
        def policy_sku
          Azure::ARM::Policy::Api_2017_06_01_preview::Models::PolicySku
        end
        def policy_set_definition_list_result
          Azure::ARM::Policy::Api_2017_06_01_preview::Models::PolicySetDefinitionListResult
        end
        def policy_assignment_list_result
          Azure::ARM::Policy::Api_2017_06_01_preview::Models::PolicyAssignmentListResult
        end
        def policy_type
          Azure::ARM::Policy::Api_2017_06_01_preview::Models::PolicyType
        end
      end
    end
  end
end
