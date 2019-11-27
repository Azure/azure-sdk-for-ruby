# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_policy_insights'

module Azure::Profiles::V2019_07_01
  module PolicyInsights
    module Mgmt
      PolicyEvents = Azure::PolicyInsights::Mgmt::V2018_04_04::PolicyEvents
      PolicyTrackedResources = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::PolicyTrackedResources
      Remediations = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Remediations
      PolicyStates = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::PolicyStates
      Operations = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Operations

      module Models
        PolicyEventsQueryResults = Azure::PolicyInsights::Mgmt::V2018_04_04::Models::PolicyEventsQueryResults
        PolicyEvent = Azure::PolicyInsights::Mgmt::V2018_04_04::Models::PolicyEvent
        ErrorResponse = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::ErrorResponse
        ExpressionEvaluationDetails = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::ExpressionEvaluationDetails
        TrackedResourceModificationDetails = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::TrackedResourceModificationDetails
        IfNotExistsEvaluationDetails = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::IfNotExistsEvaluationDetails
        PolicyTrackedResourcesQueryResults = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::PolicyTrackedResourcesQueryResults
        PolicyEvaluationDetails = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::PolicyEvaluationDetails
        QueryFailure = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::QueryFailure
        PolicyState = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::PolicyState
        RemediationDeploymentSummary = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::RemediationDeploymentSummary
        PolicyStatesQueryResults = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::PolicyStatesQueryResults
        RemediationListResult = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::RemediationListResult
        SummaryResults = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::SummaryResults
        ErrorDefinition = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::ErrorDefinition
        PolicyDefinitionSummary = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::PolicyDefinitionSummary
        RemediationDeploymentsListResult = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::RemediationDeploymentsListResult
        PolicyAssignmentSummary = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::PolicyAssignmentSummary
        PolicyTrackedResource = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::PolicyTrackedResource
        Summary = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::Summary
        RemediationFilters = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::RemediationFilters
        SummarizeResults = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::SummarizeResults
        TypedErrorInfo = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::TypedErrorInfo
        OperationDisplay = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::OperationDisplay
        PolicyDetails = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::PolicyDetails
        Operation = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::Operation
        Remediation = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::Remediation
        OperationsListResults = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::OperationsListResults
        QueryFailureError = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::QueryFailureError
        QueryOptions = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::QueryOptions
        RemediationDeployment = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::RemediationDeployment
        PolicyStatesResource = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::PolicyStatesResource
      end

      class PolicyInsightsManagementClass
        attr_reader :policy_events, :policy_tracked_resources, :remediations, :policy_states, :operations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::PolicyInsights::Mgmt::V2018_04_04::PolicyInsightsClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @policy_events = @client_0.policy_events

          @client_1 = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::PolicyInsightsClient.new(configurable.credentials, base_url, options)
          if(@client_1.respond_to?(:subscription_id))
            @client_1.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_1)
          @policy_tracked_resources = @client_1.policy_tracked_resources
          @remediations = @client_1.remediations
          @policy_states = @client_1.policy_states
          @operations = @client_1.operations

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/V2019_07_01/PolicyInsights/Mgmt"
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
          def policy_events_query_results
            Azure::PolicyInsights::Mgmt::V2018_04_04::Models::PolicyEventsQueryResults
          end
          def policy_event
            Azure::PolicyInsights::Mgmt::V2018_04_04::Models::PolicyEvent
          end
          def error_response
            Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::ErrorResponse
          end
          def expression_evaluation_details
            Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::ExpressionEvaluationDetails
          end
          def tracked_resource_modification_details
            Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::TrackedResourceModificationDetails
          end
          def if_not_exists_evaluation_details
            Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::IfNotExistsEvaluationDetails
          end
          def policy_tracked_resources_query_results
            Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::PolicyTrackedResourcesQueryResults
          end
          def policy_evaluation_details
            Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::PolicyEvaluationDetails
          end
          def query_failure
            Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::QueryFailure
          end
          def policy_state
            Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::PolicyState
          end
          def remediation_deployment_summary
            Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::RemediationDeploymentSummary
          end
          def policy_states_query_results
            Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::PolicyStatesQueryResults
          end
          def remediation_list_result
            Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::RemediationListResult
          end
          def summary_results
            Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::SummaryResults
          end
          def error_definition
            Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::ErrorDefinition
          end
          def policy_definition_summary
            Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::PolicyDefinitionSummary
          end
          def remediation_deployments_list_result
            Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::RemediationDeploymentsListResult
          end
          def policy_assignment_summary
            Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::PolicyAssignmentSummary
          end
          def policy_tracked_resource
            Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::PolicyTrackedResource
          end
          def summary
            Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::Summary
          end
          def remediation_filters
            Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::RemediationFilters
          end
          def summarize_results
            Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::SummarizeResults
          end
          def typed_error_info
            Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::TypedErrorInfo
          end
          def operation_display
            Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::OperationDisplay
          end
          def policy_details
            Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::PolicyDetails
          end
          def operation
            Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::Operation
          end
          def remediation
            Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::Remediation
          end
          def operations_list_results
            Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::OperationsListResults
          end
          def query_failure_error
            Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::QueryFailureError
          end
          def query_options
            Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::QueryOptions
          end
          def remediation_deployment
            Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::RemediationDeployment
          end
          def policy_states_resource
            Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::PolicyStatesResource
          end
        end
      end
    end
  end
end
