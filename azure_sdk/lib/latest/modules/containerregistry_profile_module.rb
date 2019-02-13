# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_container_registry'

module Azure::Profiles::Latest
  module ContainerRegistry
    module Mgmt
      Operations = Azure::ContainerRegistry::Mgmt::V2017_10_01::Operations
      Replications = Azure::ContainerRegistry::Mgmt::V2017_10_01::Replications
      Webhooks = Azure::ContainerRegistry::Mgmt::V2017_10_01::Webhooks
      Registries = Azure::ContainerRegistry::Mgmt::V2018_09_01::Registries
      Runs = Azure::ContainerRegistry::Mgmt::V2018_09_01::Runs
      Tasks = Azure::ContainerRegistry::Mgmt::V2018_09_01::Tasks

      module Models
        Request = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Request
        Event = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Event
        RegistryUsageListResult = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryUsageListResult
        QuarantinePolicy = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::QuarantinePolicy
        ImportSource = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ImportSource
        TrustPolicy = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::TrustPolicy
        RegistryNameCheckRequest = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryNameCheckRequest
        RegistryPolicies = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryPolicies
        OperationDisplayDefinition = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::OperationDisplayDefinition
        RegistryNameStatus = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryNameStatus
        OperationMetricSpecificationDefinition = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::OperationMetricSpecificationDefinition
        OperationDefinition = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::OperationDefinition
        ReplicationUpdateParameters = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ReplicationUpdateParameters
        StorageAccountProperties = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::StorageAccountProperties
        ReplicationListResult = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ReplicationListResult
        NetworkRuleSet = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::NetworkRuleSet
        RegistryUpdateParameters = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryUpdateParameters
        WebhookCreateParameters = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookCreateParameters
        RegistryPassword = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryPassword
        WebhookUpdateParameters = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookUpdateParameters
        RegenerateCredentialParameters = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegenerateCredentialParameters
        ImportSourceCredentials = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ImportSourceCredentials
        EventInfo = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventInfo
        WebhookListResult = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookListResult
        CallbackConfig = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::CallbackConfig
        OperationServiceSpecificationDefinition = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::OperationServiceSpecificationDefinition
        EventListResult = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventListResult
        Target = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Target
        RegistryUsage = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryUsage
        RegistryListResult = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryListResult
        RegistryListCredentialsResult = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryListCredentialsResult
        Actor = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Actor
        VirtualNetworkRule = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::VirtualNetworkRule
        EventContent = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventContent
        ImportImageParameters = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ImportImageParameters
        Registry = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Registry
        Replication = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Replication
        EventResponseMessage = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventResponseMessage
        EventRequestMessage = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventRequestMessage
        DefaultAction = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::DefaultAction
        ImportMode = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ImportMode
        RegistryUsageUnit = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryUsageUnit
        PasswordName = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::PasswordName
        SkuTier = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::SkuTier
        PolicyStatus = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::PolicyStatus
        TrustPolicyType = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::TrustPolicyType
        WebhookStatus = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookStatus
        WebhookAction = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookAction
        Webhook = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Webhook
        OperationListResult = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::OperationListResult
        Status = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Status
        SkuName = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::SkuName
        Sku = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Sku
        Source = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Source
        RunFilter = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::RunFilter
        TriggerUpdateParameters = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::TriggerUpdateParameters
        RunGetLogResult = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::RunGetLogResult
        TaskUpdateParameters = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::TaskUpdateParameters
        TaskStepProperties = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::TaskStepProperties
        SourceProperties = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::SourceProperties
        BaseImageTrigger = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::BaseImageTrigger
        ProxyResource = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::ProxyResource
        Argument = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::Argument
        RunUpdateParameters = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::RunUpdateParameters
        TaskListResult = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::TaskListResult
        BaseImageDependency = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::BaseImageDependency
        ImageUpdateTrigger = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::ImageUpdateTrigger
        AuthInfo = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::AuthInfo
        SetValue = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::SetValue
        RunListResult = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::RunListResult
        SourceTrigger = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::SourceTrigger
        PlatformProperties = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::PlatformProperties
        TriggerProperties = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::TriggerProperties
        RunRequest = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::RunRequest
        Task = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::Task
        DockerBuildRequest = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::DockerBuildRequest
        Run = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::Run
        FileTaskRunRequest = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::FileTaskRunRequest
        EncodedTaskRunRequest = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::EncodedTaskRunRequest
        DockerBuildStep = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::DockerBuildStep
        TaskRunRequest = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::TaskRunRequest
        FileTaskStep = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::FileTaskStep
        DockerBuildStepUpdateParameters = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::DockerBuildStepUpdateParameters
        FileTaskStepUpdateParameters = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::FileTaskStepUpdateParameters
        EncodedTaskStep = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::EncodedTaskStep
        EncodedTaskStepUpdateParameters = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::EncodedTaskStepUpdateParameters
        RunStatus = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::RunStatus
        RunType = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::RunType
        OS = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::OS
        Architecture = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::Architecture
        Variant = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::Variant
        TaskStatus = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::TaskStatus
        ProvisioningState = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::ProvisioningState
        SourceControlType = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::SourceControlType
        BaseImageDependencyType = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::BaseImageDependencyType
        SourceTriggerEvent = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::SourceTriggerEvent
        TokenType = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::TokenType
        BaseImageTriggerType = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::BaseImageTriggerType
        TriggerStatus = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::TriggerStatus
        Resource = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::Resource
        PlatformUpdateParameters = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::PlatformUpdateParameters
        TaskStepUpdateParameters = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::TaskStepUpdateParameters
        ImageDescriptor = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::ImageDescriptor
        AuthInfoUpdateParameters = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::AuthInfoUpdateParameters
        SourceTriggerDescriptor = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::SourceTriggerDescriptor
        SourceUpdateParameters = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::SourceUpdateParameters
        AgentProperties = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::AgentProperties
        SourceTriggerUpdateParameters = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::SourceTriggerUpdateParameters
        SourceUploadDefinition = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::SourceUploadDefinition
        BaseImageTriggerUpdateParameters = Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::BaseImageTriggerUpdateParameters
      end

      class ContainerRegistryManagementClass
        attr_reader :operations, :replications, :webhooks, :registries, :runs, :tasks, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::ContainerRegistry::Mgmt::V2017_10_01::ContainerRegistryManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @operations = @client_0.operations
          @replications = @client_0.replications
          @webhooks = @client_0.webhooks

          @client_1 = Azure::ContainerRegistry::Mgmt::V2018_09_01::ContainerRegistryManagementClient.new(configurable.credentials, base_url, options)
          if(@client_1.respond_to?(:subscription_id))
            @client_1.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_1)
          @registries = @client_1.registries
          @runs = @client_1.runs
          @tasks = @client_1.tasks

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/ContainerRegistry/Mgmt"
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
          def request
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Request
          end
          def event
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Event
          end
          def registry_usage_list_result
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryUsageListResult
          end
          def quarantine_policy
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::QuarantinePolicy
          end
          def import_source
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ImportSource
          end
          def trust_policy
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::TrustPolicy
          end
          def registry_name_check_request
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryNameCheckRequest
          end
          def registry_policies
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryPolicies
          end
          def operation_display_definition
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::OperationDisplayDefinition
          end
          def registry_name_status
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryNameStatus
          end
          def operation_metric_specification_definition
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::OperationMetricSpecificationDefinition
          end
          def operation_definition
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::OperationDefinition
          end
          def replication_update_parameters
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ReplicationUpdateParameters
          end
          def storage_account_properties
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::StorageAccountProperties
          end
          def replication_list_result
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ReplicationListResult
          end
          def network_rule_set
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::NetworkRuleSet
          end
          def registry_update_parameters
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryUpdateParameters
          end
          def webhook_create_parameters
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookCreateParameters
          end
          def registry_password
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryPassword
          end
          def webhook_update_parameters
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookUpdateParameters
          end
          def regenerate_credential_parameters
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegenerateCredentialParameters
          end
          def import_source_credentials
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ImportSourceCredentials
          end
          def event_info
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventInfo
          end
          def webhook_list_result
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookListResult
          end
          def callback_config
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::CallbackConfig
          end
          def operation_service_specification_definition
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::OperationServiceSpecificationDefinition
          end
          def event_list_result
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventListResult
          end
          def target
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Target
          end
          def registry_usage
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryUsage
          end
          def registry_list_result
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryListResult
          end
          def registry_list_credentials_result
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryListCredentialsResult
          end
          def actor
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Actor
          end
          def virtual_network_rule
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::VirtualNetworkRule
          end
          def event_content
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventContent
          end
          def import_image_parameters
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ImportImageParameters
          end
          def registry
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Registry
          end
          def replication
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Replication
          end
          def event_response_message
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventResponseMessage
          end
          def event_request_message
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventRequestMessage
          end
          def default_action
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::DefaultAction
          end
          def import_mode
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ImportMode
          end
          def registry_usage_unit
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryUsageUnit
          end
          def password_name
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::PasswordName
          end
          def sku_tier
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::SkuTier
          end
          def policy_status
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::PolicyStatus
          end
          def trust_policy_type
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::TrustPolicyType
          end
          def webhook_status
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookStatus
          end
          def webhook_action
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookAction
          end
          def webhook
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Webhook
          end
          def operation_list_result
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::OperationListResult
          end
          def status
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Status
          end
          def sku_name
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::SkuName
          end
          def sku
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Sku
          end
          def source
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Source
          end
          def run_filter
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::RunFilter
          end
          def trigger_update_parameters
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::TriggerUpdateParameters
          end
          def run_get_log_result
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::RunGetLogResult
          end
          def task_update_parameters
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::TaskUpdateParameters
          end
          def task_step_properties
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::TaskStepProperties
          end
          def source_properties
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::SourceProperties
          end
          def base_image_trigger
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::BaseImageTrigger
          end
          def proxy_resource
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::ProxyResource
          end
          def argument
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::Argument
          end
          def run_update_parameters
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::RunUpdateParameters
          end
          def task_list_result
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::TaskListResult
          end
          def base_image_dependency
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::BaseImageDependency
          end
          def image_update_trigger
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::ImageUpdateTrigger
          end
          def auth_info
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::AuthInfo
          end
          def set_value
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::SetValue
          end
          def run_list_result
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::RunListResult
          end
          def source_trigger
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::SourceTrigger
          end
          def platform_properties
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::PlatformProperties
          end
          def trigger_properties
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::TriggerProperties
          end
          def run_request
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::RunRequest
          end
          def task
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::Task
          end
          def docker_build_request
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::DockerBuildRequest
          end
          def run
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::Run
          end
          def file_task_run_request
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::FileTaskRunRequest
          end
          def encoded_task_run_request
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::EncodedTaskRunRequest
          end
          def docker_build_step
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::DockerBuildStep
          end
          def task_run_request
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::TaskRunRequest
          end
          def file_task_step
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::FileTaskStep
          end
          def docker_build_step_update_parameters
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::DockerBuildStepUpdateParameters
          end
          def file_task_step_update_parameters
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::FileTaskStepUpdateParameters
          end
          def encoded_task_step
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::EncodedTaskStep
          end
          def encoded_task_step_update_parameters
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::EncodedTaskStepUpdateParameters
          end
          def run_status
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::RunStatus
          end
          def run_type
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::RunType
          end
          def os
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::OS
          end
          def architecture
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::Architecture
          end
          def variant
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::Variant
          end
          def task_status
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::TaskStatus
          end
          def provisioning_state
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::ProvisioningState
          end
          def source_control_type
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::SourceControlType
          end
          def base_image_dependency_type
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::BaseImageDependencyType
          end
          def source_trigger_event
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::SourceTriggerEvent
          end
          def token_type
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::TokenType
          end
          def base_image_trigger_type
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::BaseImageTriggerType
          end
          def trigger_status
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::TriggerStatus
          end
          def resource
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::Resource
          end
          def platform_update_parameters
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::PlatformUpdateParameters
          end
          def task_step_update_parameters
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::TaskStepUpdateParameters
          end
          def image_descriptor
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::ImageDescriptor
          end
          def auth_info_update_parameters
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::AuthInfoUpdateParameters
          end
          def source_trigger_descriptor
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::SourceTriggerDescriptor
          end
          def source_update_parameters
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::SourceUpdateParameters
          end
          def agent_properties
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::AgentProperties
          end
          def source_trigger_update_parameters
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::SourceTriggerUpdateParameters
          end
          def source_upload_definition
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::SourceUploadDefinition
          end
          def base_image_trigger_update_parameters
            Azure::ContainerRegistry::Mgmt::V2018_09_01::Models::BaseImageTriggerUpdateParameters
          end
        end
      end
    end
  end
end
