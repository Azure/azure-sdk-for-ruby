# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_policy'

module Azure::Policy::Profiles::Latest::Mgmt
    PolicyDefinitions = Azure::Policy::Mgmt::V2016_12_01::PolicyDefinitions
    PolicyAssignments = Azure::Policy::Mgmt::V2017_06_01_preview::PolicyAssignments
    PolicySetDefinitions = Azure::Policy::Mgmt::V2017_06_01_preview::PolicySetDefinitions

    module Models
      PolicyDefinition = Azure::Policy::Mgmt::V2016_12_01::Models::PolicyDefinition
      PolicyDefinitionListResult = Azure::Policy::Mgmt::V2016_12_01::Models::PolicyDefinitionListResult
      PolicyMode = Azure::Policy::Mgmt::V2016_12_01::Models::PolicyMode
      ErrorResponse = Azure::Policy::Mgmt::V2017_06_01_preview::Models::ErrorResponse
      PolicyDefinitionReference = Azure::Policy::Mgmt::V2017_06_01_preview::Models::PolicyDefinitionReference
      PolicyAssignment = Azure::Policy::Mgmt::V2017_06_01_preview::Models::PolicyAssignment
      PolicySetDefinition = Azure::Policy::Mgmt::V2017_06_01_preview::Models::PolicySetDefinition
      PolicySku = Azure::Policy::Mgmt::V2017_06_01_preview::Models::PolicySku
      PolicySetDefinitionListResult = Azure::Policy::Mgmt::V2017_06_01_preview::Models::PolicySetDefinitionListResult
      PolicyAssignmentListResult = Azure::Policy::Mgmt::V2017_06_01_preview::Models::PolicyAssignmentListResult
      PolicyType = Azure::Policy::Mgmt::V2017_06_01_preview::Models::PolicyType
    end

    #
    # Policy
    #
    class PolicyClass
      attr_reader :policy_definitions, :policy_assignments, :policy_set_definitions, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        if options.is_a?(Hash) && options.length == 0
          @options = setup_options
        else
          @options = options
        end

        reset!(options)

        @configurable, @base_url, @options = self, nil, nil

        client_0 = Azure::Policy::Mgmt::V2016_12_01::PolicyClient.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        @policy_definitions = client_0.policy_definitions

        client_1 = Azure::Policy::Mgmt::V2017_06_01_preview::PolicyClient.new(configurable.credentials, base_url, options)
        if(client_1.respond_to?(:subscription_id))
          client_1.subscription_id = configurable.subscription_id
        end
        @policy_assignments = client_1.policy_assignments
        @policy_set_definitions = client_1.policy_set_definitions

        @model_classes = ModelClasses.new
      end

      #
      # Method to get the client object
      #
      # @return Client object
      #
      def get_client(version = '2017-06-01-preview')
        case version
          when '2016-12-01'
            client = Azure::Policy::Mgmt::V2016_12_01::PolicyClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          when '2017-06-01-preview'
            client = Azure::Policy::Mgmt::V2017_06_01_preview::PolicyClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
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
        def error_response
          Azure::Policy::Mgmt::V2017_06_01_preview::Models::ErrorResponse
        end
        def policy_definition_reference
          Azure::Policy::Mgmt::V2017_06_01_preview::Models::PolicyDefinitionReference
        end
        def policy_assignment
          Azure::Policy::Mgmt::V2017_06_01_preview::Models::PolicyAssignment
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
        def policy_assignment_list_result
          Azure::Policy::Mgmt::V2017_06_01_preview::Models::PolicyAssignmentListResult
        end
        def policy_type
          Azure::Policy::Mgmt::V2017_06_01_preview::Models::PolicyType
        end
      end
    end
end
