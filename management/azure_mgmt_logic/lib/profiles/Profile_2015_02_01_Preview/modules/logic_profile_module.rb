# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_logic'


module Azure::Profiles::LogicModule::Management::Profile_2015_02_01_Preview
  module Logic
    Workflows = Azure::ARM::Logic::Api_2015_02_01_preview::Workflows
    WorkflowVersions = Azure::ARM::Logic::Api_2015_02_01_preview::WorkflowVersions
    WorkflowAccessKeys = Azure::ARM::Logic::Api_2015_02_01_preview::WorkflowAccessKeys
    WorkflowTriggers = Azure::ARM::Logic::Api_2015_02_01_preview::WorkflowTriggers
    WorkflowTriggerHistories = Azure::ARM::Logic::Api_2015_02_01_preview::WorkflowTriggerHistories
    WorkflowRuns = Azure::ARM::Logic::Api_2015_02_01_preview::WorkflowRuns
    WorkflowRunActions = Azure::ARM::Logic::Api_2015_02_01_preview::WorkflowRunActions

    module Models
      WorkflowTriggerFilter = Azure::ARM::Logic::Api_2015_02_01_preview::Models::WorkflowTriggerFilter
      WorkflowTriggerListResult = Azure::ARM::Logic::Api_2015_02_01_preview::Models::WorkflowTriggerListResult
      Sku = Azure::ARM::Logic::Api_2015_02_01_preview::Models::Sku
      ResourceReference = Azure::ARM::Logic::Api_2015_02_01_preview::Models::ResourceReference
      ContentLink = Azure::ARM::Logic::Api_2015_02_01_preview::Models::ContentLink
      ContentHash = Azure::ARM::Logic::Api_2015_02_01_preview::Models::ContentHash
      WorkflowParameter = Azure::ARM::Logic::Api_2015_02_01_preview::Models::WorkflowParameter
      WorkflowListResult = Azure::ARM::Logic::Api_2015_02_01_preview::Models::WorkflowListResult
      WorkflowRunListResult = Azure::ARM::Logic::Api_2015_02_01_preview::Models::WorkflowRunListResult
      WorkflowRunActionFilter = Azure::ARM::Logic::Api_2015_02_01_preview::Models::WorkflowRunActionFilter
      WorkflowTriggerHistoryListResult = Azure::ARM::Logic::Api_2015_02_01_preview::Models::WorkflowTriggerHistoryListResult
      WorkflowTriggerRecurrence = Azure::ARM::Logic::Api_2015_02_01_preview::Models::WorkflowTriggerRecurrence
      WorkflowTriggerHistoryFilter = Azure::ARM::Logic::Api_2015_02_01_preview::Models::WorkflowTriggerHistoryFilter
      WorkflowFilter = Azure::ARM::Logic::Api_2015_02_01_preview::Models::WorkflowFilter
      WorkflowRunTrigger = Azure::ARM::Logic::Api_2015_02_01_preview::Models::WorkflowRunTrigger
      WorkflowAccessKeyListResult = Azure::ARM::Logic::Api_2015_02_01_preview::Models::WorkflowAccessKeyListResult
      WorkflowSecretKeys = Azure::ARM::Logic::Api_2015_02_01_preview::Models::WorkflowSecretKeys
      WorkflowRunActionListResult = Azure::ARM::Logic::Api_2015_02_01_preview::Models::WorkflowRunActionListResult
      RunWorkflowParameters = Azure::ARM::Logic::Api_2015_02_01_preview::Models::RunWorkflowParameters
      RegenerateSecretKeyParameters = Azure::ARM::Logic::Api_2015_02_01_preview::Models::RegenerateSecretKeyParameters
      WorkflowRunFilter = Azure::ARM::Logic::Api_2015_02_01_preview::Models::WorkflowRunFilter
      Workflow = Azure::ARM::Logic::Api_2015_02_01_preview::Models::Workflow
      WorkflowVersion = Azure::ARM::Logic::Api_2015_02_01_preview::Models::WorkflowVersion
      WorkflowAccessKey = Azure::ARM::Logic::Api_2015_02_01_preview::Models::WorkflowAccessKey
      WorkflowTrigger = Azure::ARM::Logic::Api_2015_02_01_preview::Models::WorkflowTrigger
      WorkflowTriggerHistory = Azure::ARM::Logic::Api_2015_02_01_preview::Models::WorkflowTriggerHistory
      WorkflowOutputParameter = Azure::ARM::Logic::Api_2015_02_01_preview::Models::WorkflowOutputParameter
      WorkflowRun = Azure::ARM::Logic::Api_2015_02_01_preview::Models::WorkflowRun
      WorkflowRunAction = Azure::ARM::Logic::Api_2015_02_01_preview::Models::WorkflowRunAction
      WorkflowProvisioningState = Azure::ARM::Logic::Api_2015_02_01_preview::Models::WorkflowProvisioningState
      WorkflowState = Azure::ARM::Logic::Api_2015_02_01_preview::Models::WorkflowState
      SkuName = Azure::ARM::Logic::Api_2015_02_01_preview::Models::SkuName
      ParameterType = Azure::ARM::Logic::Api_2015_02_01_preview::Models::ParameterType
      WorkflowTriggerProvisioningState = Azure::ARM::Logic::Api_2015_02_01_preview::Models::WorkflowTriggerProvisioningState
      WorkflowStatus = Azure::ARM::Logic::Api_2015_02_01_preview::Models::WorkflowStatus
      RecurrenceFrequency = Azure::ARM::Logic::Api_2015_02_01_preview::Models::RecurrenceFrequency
      KeyType = Azure::ARM::Logic::Api_2015_02_01_preview::Models::KeyType
    end

    #
    # Logic
    #
    class LogicClass
      attr_accessor :workflows, :workflow_versions, :workflow_access_keys, :workflow_triggers, :workflow_trigger_histories, :workflow_runs, :workflow_run_actions, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::Logic::Api_2015_02_01_preview::LogicManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.workflows = Azure::ARM::Logic::Api_2015_02_01_preview::Workflows.new(client)
        self.workflow_versions = Azure::ARM::Logic::Api_2015_02_01_preview::WorkflowVersions.new(client)
        self.workflow_access_keys = Azure::ARM::Logic::Api_2015_02_01_preview::WorkflowAccessKeys.new(client)
        self.workflow_triggers = Azure::ARM::Logic::Api_2015_02_01_preview::WorkflowTriggers.new(client)
        self.workflow_trigger_histories = Azure::ARM::Logic::Api_2015_02_01_preview::WorkflowTriggerHistories.new(client)
        self.workflow_runs = Azure::ARM::Logic::Api_2015_02_01_preview::WorkflowRuns.new(client)
        self.workflow_run_actions = Azure::ARM::Logic::Api_2015_02_01_preview::WorkflowRunActions.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2015-02-01-preview'
            client = Azure::ARM::Logic::Api_2015_02_01_preview::LogicManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def workflow_trigger_filter
          Azure::ARM::Logic::Api_2015_02_01_preview::Models::WorkflowTriggerFilter
        end
        def workflow_trigger_list_result
          Azure::ARM::Logic::Api_2015_02_01_preview::Models::WorkflowTriggerListResult
        end
        def sku
          Azure::ARM::Logic::Api_2015_02_01_preview::Models::Sku
        end
        def resource_reference
          Azure::ARM::Logic::Api_2015_02_01_preview::Models::ResourceReference
        end
        def content_link
          Azure::ARM::Logic::Api_2015_02_01_preview::Models::ContentLink
        end
        def content_hash
          Azure::ARM::Logic::Api_2015_02_01_preview::Models::ContentHash
        end
        def workflow_parameter
          Azure::ARM::Logic::Api_2015_02_01_preview::Models::WorkflowParameter
        end
        def workflow_list_result
          Azure::ARM::Logic::Api_2015_02_01_preview::Models::WorkflowListResult
        end
        def workflow_run_list_result
          Azure::ARM::Logic::Api_2015_02_01_preview::Models::WorkflowRunListResult
        end
        def workflow_run_action_filter
          Azure::ARM::Logic::Api_2015_02_01_preview::Models::WorkflowRunActionFilter
        end
        def workflow_trigger_history_list_result
          Azure::ARM::Logic::Api_2015_02_01_preview::Models::WorkflowTriggerHistoryListResult
        end
        def workflow_trigger_recurrence
          Azure::ARM::Logic::Api_2015_02_01_preview::Models::WorkflowTriggerRecurrence
        end
        def workflow_trigger_history_filter
          Azure::ARM::Logic::Api_2015_02_01_preview::Models::WorkflowTriggerHistoryFilter
        end
        def workflow_filter
          Azure::ARM::Logic::Api_2015_02_01_preview::Models::WorkflowFilter
        end
        def workflow_run_trigger
          Azure::ARM::Logic::Api_2015_02_01_preview::Models::WorkflowRunTrigger
        end
        def workflow_access_key_list_result
          Azure::ARM::Logic::Api_2015_02_01_preview::Models::WorkflowAccessKeyListResult
        end
        def workflow_secret_keys
          Azure::ARM::Logic::Api_2015_02_01_preview::Models::WorkflowSecretKeys
        end
        def workflow_run_action_list_result
          Azure::ARM::Logic::Api_2015_02_01_preview::Models::WorkflowRunActionListResult
        end
        def run_workflow_parameters
          Azure::ARM::Logic::Api_2015_02_01_preview::Models::RunWorkflowParameters
        end
        def regenerate_secret_key_parameters
          Azure::ARM::Logic::Api_2015_02_01_preview::Models::RegenerateSecretKeyParameters
        end
        def workflow_run_filter
          Azure::ARM::Logic::Api_2015_02_01_preview::Models::WorkflowRunFilter
        end
        def workflow
          Azure::ARM::Logic::Api_2015_02_01_preview::Models::Workflow
        end
        def workflow_version
          Azure::ARM::Logic::Api_2015_02_01_preview::Models::WorkflowVersion
        end
        def workflow_access_key
          Azure::ARM::Logic::Api_2015_02_01_preview::Models::WorkflowAccessKey
        end
        def workflow_trigger
          Azure::ARM::Logic::Api_2015_02_01_preview::Models::WorkflowTrigger
        end
        def workflow_trigger_history
          Azure::ARM::Logic::Api_2015_02_01_preview::Models::WorkflowTriggerHistory
        end
        def workflow_output_parameter
          Azure::ARM::Logic::Api_2015_02_01_preview::Models::WorkflowOutputParameter
        end
        def workflow_run
          Azure::ARM::Logic::Api_2015_02_01_preview::Models::WorkflowRun
        end
        def workflow_run_action
          Azure::ARM::Logic::Api_2015_02_01_preview::Models::WorkflowRunAction
        end
        def workflow_provisioning_state
          Azure::ARM::Logic::Api_2015_02_01_preview::Models::WorkflowProvisioningState
        end
        def workflow_state
          Azure::ARM::Logic::Api_2015_02_01_preview::Models::WorkflowState
        end
        def sku_name
          Azure::ARM::Logic::Api_2015_02_01_preview::Models::SkuName
        end
        def parameter_type
          Azure::ARM::Logic::Api_2015_02_01_preview::Models::ParameterType
        end
        def workflow_trigger_provisioning_state
          Azure::ARM::Logic::Api_2015_02_01_preview::Models::WorkflowTriggerProvisioningState
        end
        def workflow_status
          Azure::ARM::Logic::Api_2015_02_01_preview::Models::WorkflowStatus
        end
        def recurrence_frequency
          Azure::ARM::Logic::Api_2015_02_01_preview::Models::RecurrenceFrequency
        end
        def key_type
          Azure::ARM::Logic::Api_2015_02_01_preview::Models::KeyType
        end
      end
    end
  end
end
