# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_policy'

module Azure::Policy::Management::Profile_2016_12_01
    PolicyDefinitions = Azure::ARM::Policy::Api_2016_12_01::PolicyDefinitions
    PolicyAssignments = Azure::ARM::Policy::Api_2016_12_01::PolicyAssignments

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
    class PolicyClass
      attr_reader :policy_definitions, :policy_assignments, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        client_0 = Azure::ARM::Policy::Api_2016_12_01::PolicyClient.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        @policy_definitions = client_0.policy_definitions
        @policy_assignments = client_0.policy_assignments

        @model_classes = ModelClasses.new
      end

      #
      # Method to get the client object
      #
      # @return Client object
      #
      def get_client(version = '2016-12-01')
        case version
          when '2016-12-01'
            client = Azure::ARM::Policy::Api_2016_12_01::PolicyClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
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
