# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_policy_insights'

module Azure::PolicyInsights::Profiles::Latest
  module Mgmt
    PolicyEvents = Azure::PolicyInsights::Mgmt::V2018_04_04::PolicyEvents
    PolicyStates = Azure::PolicyInsights::Mgmt::V2018_04_04::PolicyStates
    Operations = Azure::PolicyInsights::Mgmt::V2018_04_04::Operations

    module Models
      PolicyDefinitionSummary = Azure::PolicyInsights::Mgmt::V2018_04_04::Models::PolicyDefinitionSummary
      PolicyAssignmentSummary = Azure::PolicyInsights::Mgmt::V2018_04_04::Models::PolicyAssignmentSummary
      PolicyEventsQueryResults = Azure::PolicyInsights::Mgmt::V2018_04_04::Models::PolicyEventsQueryResults
      Summary = Azure::PolicyInsights::Mgmt::V2018_04_04::Models::Summary
      QueryFailure = Azure::PolicyInsights::Mgmt::V2018_04_04::Models::QueryFailure
      SummarizeResults = Azure::PolicyInsights::Mgmt::V2018_04_04::Models::SummarizeResults
      PolicyStatesQueryResults = Azure::PolicyInsights::Mgmt::V2018_04_04::Models::PolicyStatesQueryResults
      OperationDisplay = Azure::PolicyInsights::Mgmt::V2018_04_04::Models::OperationDisplay
      PolicyEvent = Azure::PolicyInsights::Mgmt::V2018_04_04::Models::PolicyEvent
      Operation = Azure::PolicyInsights::Mgmt::V2018_04_04::Models::Operation
      PolicyState = Azure::PolicyInsights::Mgmt::V2018_04_04::Models::PolicyState
      OperationsListResults = Azure::PolicyInsights::Mgmt::V2018_04_04::Models::OperationsListResults
      QueryFailureError = Azure::PolicyInsights::Mgmt::V2018_04_04::Models::QueryFailureError
      QueryOptions = Azure::PolicyInsights::Mgmt::V2018_04_04::Models::QueryOptions
      SummaryResults = Azure::PolicyInsights::Mgmt::V2018_04_04::Models::SummaryResults
      PolicyStatesResource = Azure::PolicyInsights::Mgmt::V2018_04_04::Models::PolicyStatesResource
    end

    #
    # PolicyInsightsManagementClass
    #
    class PolicyInsightsManagementClass
      attr_reader :policy_events, :policy_states, :operations, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        @options = if options.is_a?(Hash) && options.empty?
                     setup_default_options
                   else
                     options
                   end

        reset!(options)

        @configurable = self
        @base_url = options[:base_url].nil? ? nil : options[:base_url]
        @options = options[:options].nil? ? nil : options[:options]

        @client_0 = Azure::PolicyInsights::Mgmt::V2018_04_04::PolicyInsightsClient.new(configurable.credentials, base_url, options)
        if @client_0.respond_to?(:subscription_id)
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @policy_events = @client_0.policy_events
        @policy_states = @client_0.policy_states
        @operations = @client_0.operations

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/PolicyInsights/Mgmt'
        client.add_user_agent_information(profile_information)
      end

      def method_missing(method, *args)
        if @client_0.respond_to? method
          @client_0.send(method, *args)
        else
          super
        end
      end
    end

    class ModelClasses
      def policy_definition_summary
        Azure::PolicyInsights::Mgmt::V2018_04_04::Models::PolicyDefinitionSummary
      end

      def policy_assignment_summary
        Azure::PolicyInsights::Mgmt::V2018_04_04::Models::PolicyAssignmentSummary
      end

      def policy_events_query_results
        Azure::PolicyInsights::Mgmt::V2018_04_04::Models::PolicyEventsQueryResults
      end

      def summary
        Azure::PolicyInsights::Mgmt::V2018_04_04::Models::Summary
      end

      def query_failure
        Azure::PolicyInsights::Mgmt::V2018_04_04::Models::QueryFailure
      end

      def summarize_results
        Azure::PolicyInsights::Mgmt::V2018_04_04::Models::SummarizeResults
      end

      def policy_states_query_results
        Azure::PolicyInsights::Mgmt::V2018_04_04::Models::PolicyStatesQueryResults
      end

      def operation_display
        Azure::PolicyInsights::Mgmt::V2018_04_04::Models::OperationDisplay
      end

      def policy_event
        Azure::PolicyInsights::Mgmt::V2018_04_04::Models::PolicyEvent
      end

      def operation
        Azure::PolicyInsights::Mgmt::V2018_04_04::Models::Operation
      end

      def policy_state
        Azure::PolicyInsights::Mgmt::V2018_04_04::Models::PolicyState
      end

      def operations_list_results
        Azure::PolicyInsights::Mgmt::V2018_04_04::Models::OperationsListResults
      end

      def query_failure_error
        Azure::PolicyInsights::Mgmt::V2018_04_04::Models::QueryFailureError
      end

      def query_options
        Azure::PolicyInsights::Mgmt::V2018_04_04::Models::QueryOptions
      end

      def summary_results
        Azure::PolicyInsights::Mgmt::V2018_04_04::Models::SummaryResults
      end

      def policy_states_resource
        Azure::PolicyInsights::Mgmt::V2018_04_04::Models::PolicyStatesResource
      end
    end
  end
end
