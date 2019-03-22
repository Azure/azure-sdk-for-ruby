# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_policy_insights'

module Azure::Profiles::Latest
  module PolicyInsights
    module Mgmt
      Operations = Azure::PolicyInsights::Mgmt::V2018_04_04::Operations
      PolicyEvents = Azure::PolicyInsights::Mgmt::V2018_04_04::PolicyEvents
      PolicyStates = Azure::PolicyInsights::Mgmt::V2018_04_04::PolicyStates

      module Models
        PolicyAssignmentSummary = Azure::PolicyInsights::Mgmt::V2018_04_04::Models::PolicyAssignmentSummary
        PolicyEventsQueryResults = Azure::PolicyInsights::Mgmt::V2018_04_04::Models::PolicyEventsQueryResults
        Summary = Azure::PolicyInsights::Mgmt::V2018_04_04::Models::Summary
        QueryFailure = Azure::PolicyInsights::Mgmt::V2018_04_04::Models::QueryFailure
        SummarizeResults = Azure::PolicyInsights::Mgmt::V2018_04_04::Models::SummarizeResults
        PolicyStatesQueryResults = Azure::PolicyInsights::Mgmt::V2018_04_04::Models::PolicyStatesQueryResults
        PolicyEvent = Azure::PolicyInsights::Mgmt::V2018_04_04::Models::PolicyEvent
        Operation = Azure::PolicyInsights::Mgmt::V2018_04_04::Models::Operation
        OperationDisplay = Azure::PolicyInsights::Mgmt::V2018_04_04::Models::OperationDisplay
        OperationsListResults = Azure::PolicyInsights::Mgmt::V2018_04_04::Models::OperationsListResults
        PolicyState = Azure::PolicyInsights::Mgmt::V2018_04_04::Models::PolicyState
        SummaryResults = Azure::PolicyInsights::Mgmt::V2018_04_04::Models::SummaryResults
        QueryFailureError = Azure::PolicyInsights::Mgmt::V2018_04_04::Models::QueryFailureError
        PolicyStatesResource = Azure::PolicyInsights::Mgmt::V2018_04_04::Models::PolicyStatesResource
        QueryOptions = Azure::PolicyInsights::Mgmt::V2018_04_04::Models::QueryOptions
        PolicyDefinitionSummary = Azure::PolicyInsights::Mgmt::V2018_04_04::Models::PolicyDefinitionSummary
      end

      class PolicyInsightsManagementClass
        attr_reader :operations, :policy_events, :policy_states, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::PolicyInsights::Mgmt::V2018_04_04::PolicyInsightsClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @operations = @client_0.operations
          @policy_events = @client_0.policy_events
          @policy_states = @client_0.policy_states

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/PolicyInsights/Mgmt"
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
          def policy_event
            Azure::PolicyInsights::Mgmt::V2018_04_04::Models::PolicyEvent
          end
          def operation
            Azure::PolicyInsights::Mgmt::V2018_04_04::Models::Operation
          end
          def operation_display
            Azure::PolicyInsights::Mgmt::V2018_04_04::Models::OperationDisplay
          end
          def operations_list_results
            Azure::PolicyInsights::Mgmt::V2018_04_04::Models::OperationsListResults
          end
          def policy_state
            Azure::PolicyInsights::Mgmt::V2018_04_04::Models::PolicyState
          end
          def summary_results
            Azure::PolicyInsights::Mgmt::V2018_04_04::Models::SummaryResults
          end
          def query_failure_error
            Azure::PolicyInsights::Mgmt::V2018_04_04::Models::QueryFailureError
          end
          def policy_states_resource
            Azure::PolicyInsights::Mgmt::V2018_04_04::Models::PolicyStatesResource
          end
          def query_options
            Azure::PolicyInsights::Mgmt::V2018_04_04::Models::QueryOptions
          end
          def policy_definition_summary
            Azure::PolicyInsights::Mgmt::V2018_04_04::Models::PolicyDefinitionSummary
          end
        end
      end
    end
  end
end
