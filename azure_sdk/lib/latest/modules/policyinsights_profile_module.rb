# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_policy_insights'

module Azure::Profiles::Latest
  module PolicyInsights
    module Mgmt
      PolicyEvents = Azure::PolicyInsights::Mgmt::V2018_04_04::PolicyEvents
      PolicyStates = Azure::PolicyInsights::Mgmt::V2018_04_04::PolicyStates
      Operations = Azure::PolicyInsights::Mgmt::V2018_04_04::Operations
      PolicyTrackedResources = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::PolicyTrackedResources
      Remediations = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Remediations

      module Models
        PolicyDefinitionSummary = Azure::PolicyInsights::Mgmt::V2018_04_04::Models::PolicyDefinitionSummary
        PolicyAssignmentSummary = Azure::PolicyInsights::Mgmt::V2018_04_04::Models::PolicyAssignmentSummary
        PolicyEventsQueryResults = Azure::PolicyInsights::Mgmt::V2018_04_04::Models::PolicyEventsQueryResults
        Summary = Azure::PolicyInsights::Mgmt::V2018_04_04::Models::Summary
        SummarizeResults = Azure::PolicyInsights::Mgmt::V2018_04_04::Models::SummarizeResults
        PolicyStatesQueryResults = Azure::PolicyInsights::Mgmt::V2018_04_04::Models::PolicyStatesQueryResults
        OperationDisplay = Azure::PolicyInsights::Mgmt::V2018_04_04::Models::OperationDisplay
        PolicyEvent = Azure::PolicyInsights::Mgmt::V2018_04_04::Models::PolicyEvent
        Operation = Azure::PolicyInsights::Mgmt::V2018_04_04::Models::Operation
        PolicyState = Azure::PolicyInsights::Mgmt::V2018_04_04::Models::PolicyState
        OperationsListResults = Azure::PolicyInsights::Mgmt::V2018_04_04::Models::OperationsListResults
        SummaryResults = Azure::PolicyInsights::Mgmt::V2018_04_04::Models::SummaryResults
        PolicyStatesResource = Azure::PolicyInsights::Mgmt::V2018_04_04::Models::PolicyStatesResource
        Remediation = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::Remediation
        PolicyDetails = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::PolicyDetails
        RemediationListResult = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::RemediationListResult
        PolicyTrackedResource = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::PolicyTrackedResource
        TypedErrorInfo = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::TypedErrorInfo
        QueryFailureError = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::QueryFailureError
        ErrorDefinition = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::ErrorDefinition
        RemediationFilters = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::RemediationFilters
        RemediationDeployment = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::RemediationDeployment
        TrackedResourceModificationDetails = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::TrackedResourceModificationDetails
        RemediationDeploymentsListResult = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::RemediationDeploymentsListResult
        QueryFailure = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::QueryFailure
        ErrorResponse = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::ErrorResponse
        PolicyTrackedResourcesQueryResults = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::PolicyTrackedResourcesQueryResults
        QueryOptions = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::QueryOptions
        RemediationDeploymentSummary = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::RemediationDeploymentSummary
      end

      class PolicyInsightsManagementClass
        attr_reader :policy_events, :policy_states, :operations, :policy_tracked_resources, :remediations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::PolicyInsights::Mgmt::V2018_04_04::PolicyInsightsClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @policy_events = @client_0.policy_events
          @policy_states = @client_0.policy_states
          @operations = @client_0.operations

          @client_1 = Azure::PolicyInsights::Mgmt::V2018_07_01_preview::PolicyInsightsClient.new(configurable.credentials, base_url, options)
          if(@client_1.respond_to?(:subscription_id))
            @client_1.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_1)
          @policy_tracked_resources = @client_1.policy_tracked_resources
          @remediations = @client_1.remediations

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/PolicyInsights/Mgmt"
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
          def summary_results
            Azure::PolicyInsights::Mgmt::V2018_04_04::Models::SummaryResults
          end
          def policy_states_resource
            Azure::PolicyInsights::Mgmt::V2018_04_04::Models::PolicyStatesResource
          end
          def remediation
            Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::Remediation
          end
          def policy_details
            Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::PolicyDetails
          end
          def remediation_list_result
            Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::RemediationListResult
          end
          def policy_tracked_resource
            Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::PolicyTrackedResource
          end
          def typed_error_info
            Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::TypedErrorInfo
          end
          def query_failure_error
            Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::QueryFailureError
          end
          def error_definition
            Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::ErrorDefinition
          end
          def remediation_filters
            Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::RemediationFilters
          end
          def remediation_deployment
            Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::RemediationDeployment
          end
          def tracked_resource_modification_details
            Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::TrackedResourceModificationDetails
          end
          def remediation_deployments_list_result
            Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::RemediationDeploymentsListResult
          end
          def query_failure
            Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::QueryFailure
          end
          def error_response
            Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::ErrorResponse
          end
          def policy_tracked_resources_query_results
            Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::PolicyTrackedResourcesQueryResults
          end
          def query_options
            Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::QueryOptions
          end
          def remediation_deployment_summary
            Azure::PolicyInsights::Mgmt::V2018_07_01_preview::Models::RemediationDeploymentSummary
          end
        end
      end
    end
  end
end
