# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_container_registry'

module Azure::ContainerRegistry::Profiles::Latest
  module Mgmt
    Operations = Azure::ContainerRegistry::Mgmt::V2019_05_01::Operations
    Replications = Azure::ContainerRegistry::Mgmt::V2019_05_01::Replications
    Webhooks = Azure::ContainerRegistry::Mgmt::V2019_05_01::Webhooks
    Registries = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Registries
    Runs = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Runs
    Tasks = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Tasks

    module Models
      RegistryPassword = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::RegistryPassword
      RegistryListCredentialsResult = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::RegistryListCredentialsResult
      ImportSource = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::ImportSource
      RegenerateCredentialParameters = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::RegenerateCredentialParameters
      RegistryNameCheckRequest = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::RegistryNameCheckRequest
      RegistryUsage = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::RegistryUsage
      OperationDisplayDefinition = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::OperationDisplayDefinition
      RegistryUsageListResult = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::RegistryUsageListResult
      OperationServiceSpecificationDefinition = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::OperationServiceSpecificationDefinition
      OperationMetricSpecificationDefinition = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::OperationMetricSpecificationDefinition
      OperationDefinition = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::OperationDefinition
      Sku = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::Sku
      StorageAccountProperties = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::StorageAccountProperties
      ReplicationUpdateParameters = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::ReplicationUpdateParameters
      IPRule = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::IPRule
      ReplicationListResult = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::ReplicationListResult
      QuarantinePolicy = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::QuarantinePolicy
      RetentionPolicy = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::RetentionPolicy
      WebhookCreateParameters = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::WebhookCreateParameters
      EventListResult = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::EventListResult
      RegistryUpdateParameters = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::RegistryUpdateParameters
      WebhookUpdateParameters = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::WebhookUpdateParameters
      ImportSourceCredentials = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::ImportSourceCredentials
      WebhookListResult = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::WebhookListResult
      RegistryNameStatus = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::RegistryNameStatus
      EventInfo = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::EventInfo
      Status = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::Status
      CallbackConfig = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::CallbackConfig
      NetworkRuleSet = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::NetworkRuleSet
      Target = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::Target
      Policies = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::Policies
      Request = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::Request
      ImportImageParameters = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::ImportImageParameters
      Actor = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::Actor
      VirtualNetworkRule = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::VirtualNetworkRule
      Source = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::Source
      RegistryListResult = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::RegistryListResult
      EventContent = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::EventContent
      TrustPolicy = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::TrustPolicy
      EventRequestMessage = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::EventRequestMessage
      OperationListResult = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::OperationListResult
      EventResponseMessage = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::EventResponseMessage
      Registry = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::Registry
      Replication = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::Replication
      Webhook = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::Webhook
      Event = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::Event
      ImportMode = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::ImportMode
      SkuName = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::SkuName
      SkuTier = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::SkuTier
      DefaultAction = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::DefaultAction
      Action = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::Action
      PolicyStatus = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::PolicyStatus
      TrustPolicyType = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::TrustPolicyType
      PasswordName = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::PasswordName
      RegistryUsageUnit = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::RegistryUsageUnit
      WebhookStatus = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::WebhookStatus
      WebhookAction = Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::WebhookAction
      Credentials = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::Credentials
      BaseImageTrigger = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::BaseImageTrigger
      TriggerProperties = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::TriggerProperties
      ImageUpdateTrigger = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::ImageUpdateTrigger
      SourceRegistryCredentials = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::SourceRegistryCredentials
      TimerTriggerDescriptor = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::TimerTriggerDescriptor
      SecretObject = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::SecretObject
      AgentProperties = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::AgentProperties
      CustomRegistryCredentials = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::CustomRegistryCredentials
      SourceUploadDefinition = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::SourceUploadDefinition
      RunRequest = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::RunRequest
      RunFilter = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::RunFilter
      RunGetLogResult = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::RunGetLogResult
      TaskListResult = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::TaskListResult
      IdentityProperties = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::IdentityProperties
      PlatformUpdateParameters = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::PlatformUpdateParameters
      TaskStepProperties = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::TaskStepProperties
      TaskStepUpdateParameters = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::TaskStepUpdateParameters
      AuthInfo = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::AuthInfo
      TimerTriggerUpdateParameters = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::TimerTriggerUpdateParameters
      SourceTrigger = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::SourceTrigger
      AuthInfoUpdateParameters = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::AuthInfoUpdateParameters
      SourceTriggerDescriptor = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::SourceTriggerDescriptor
      SourceUpdateParameters = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::SourceUpdateParameters
      SetValue = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::SetValue
      RunListResult = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::RunListResult
      SourceTriggerUpdateParameters = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::SourceTriggerUpdateParameters
      UserIdentityProperties = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::UserIdentityProperties
      BaseImageTriggerUpdateParameters = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::BaseImageTriggerUpdateParameters
      TimerTrigger = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::TimerTrigger
      TriggerUpdateParameters = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::TriggerUpdateParameters
      ImageDescriptor = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::ImageDescriptor
      TaskUpdateParameters = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::TaskUpdateParameters
      RunUpdateParameters = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::RunUpdateParameters
      Resource = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::Resource
      SourceProperties = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::SourceProperties
      ProxyResource = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::ProxyResource
      BaseImageDependency = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::BaseImageDependency
      Argument = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::Argument
      PlatformProperties = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::PlatformProperties
      OverrideTaskStepProperties = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::OverrideTaskStepProperties
      Run = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::Run
      Task = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::Task
      DockerBuildRequest = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::DockerBuildRequest
      FileTaskRunRequest = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::FileTaskRunRequest
      TaskRunRequest = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::TaskRunRequest
      EncodedTaskRunRequest = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::EncodedTaskRunRequest
      DockerBuildStep = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::DockerBuildStep
      FileTaskStep = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::FileTaskStep
      EncodedTaskStep = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::EncodedTaskStep
      DockerBuildStepUpdateParameters = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::DockerBuildStepUpdateParameters
      FileTaskStepUpdateParameters = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::FileTaskStepUpdateParameters
      EncodedTaskStepUpdateParameters = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::EncodedTaskStepUpdateParameters
      RunStatus = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::RunStatus
      RunType = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::RunType
      OS = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::OS
      Architecture = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::Architecture
      Variant = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::Variant
      ProvisioningState = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::ProvisioningState
      ResourceIdentityType = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::ResourceIdentityType
      TaskStatus = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::TaskStatus
      BaseImageDependencyType = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::BaseImageDependencyType
      TriggerStatus = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::TriggerStatus
      SourceControlType = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::SourceControlType
      TokenType = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::TokenType
      SourceTriggerEvent = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::SourceTriggerEvent
      BaseImageTriggerType = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::BaseImageTriggerType
      UpdateTriggerPayloadType = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::UpdateTriggerPayloadType
      SourceRegistryLoginMode = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::SourceRegistryLoginMode
      SecretObjectType = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::SecretObjectType
    end

    #
    # ContainerRegistryManagementClass
    #
    class ContainerRegistryManagementClass
      attr_reader :operations, :replications, :webhooks, :registries, :runs, :tasks, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        if options.is_a?(Hash) && options.length == 0
          @options = setup_default_options
        else
          @options = options
        end

        reset!(options)

        @configurable = self
        @base_url = options[:base_url].nil? ? nil:options[:base_url]
        @options = options[:options].nil? ? nil:options[:options]

        @client_0 = Azure::ContainerRegistry::Mgmt::V2019_05_01::ContainerRegistryManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @operations = @client_0.operations
        @replications = @client_0.replications
        @webhooks = @client_0.webhooks

        @client_1 = Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::ContainerRegistryManagementClient.new(configurable.credentials, base_url, options)
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
        profile_information = 'Profiles/Latest/ContainerRegistry/Mgmt'
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

    end

    class ModelClasses
      def registry_password
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::RegistryPassword
      end
      def registry_list_credentials_result
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::RegistryListCredentialsResult
      end
      def import_source
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::ImportSource
      end
      def regenerate_credential_parameters
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::RegenerateCredentialParameters
      end
      def registry_name_check_request
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::RegistryNameCheckRequest
      end
      def registry_usage
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::RegistryUsage
      end
      def operation_display_definition
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::OperationDisplayDefinition
      end
      def registry_usage_list_result
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::RegistryUsageListResult
      end
      def operation_service_specification_definition
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::OperationServiceSpecificationDefinition
      end
      def operation_metric_specification_definition
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::OperationMetricSpecificationDefinition
      end
      def operation_definition
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::OperationDefinition
      end
      def sku
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::Sku
      end
      def storage_account_properties
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::StorageAccountProperties
      end
      def replication_update_parameters
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::ReplicationUpdateParameters
      end
      def iprule
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::IPRule
      end
      def replication_list_result
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::ReplicationListResult
      end
      def quarantine_policy
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::QuarantinePolicy
      end
      def retention_policy
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::RetentionPolicy
      end
      def webhook_create_parameters
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::WebhookCreateParameters
      end
      def event_list_result
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::EventListResult
      end
      def registry_update_parameters
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::RegistryUpdateParameters
      end
      def webhook_update_parameters
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::WebhookUpdateParameters
      end
      def import_source_credentials
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::ImportSourceCredentials
      end
      def webhook_list_result
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::WebhookListResult
      end
      def registry_name_status
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::RegistryNameStatus
      end
      def event_info
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::EventInfo
      end
      def status
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::Status
      end
      def callback_config
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::CallbackConfig
      end
      def network_rule_set
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::NetworkRuleSet
      end
      def target
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::Target
      end
      def policies
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::Policies
      end
      def request
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::Request
      end
      def import_image_parameters
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::ImportImageParameters
      end
      def actor
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::Actor
      end
      def virtual_network_rule
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::VirtualNetworkRule
      end
      def source
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::Source
      end
      def registry_list_result
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::RegistryListResult
      end
      def event_content
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::EventContent
      end
      def trust_policy
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::TrustPolicy
      end
      def event_request_message
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::EventRequestMessage
      end
      def operation_list_result
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::OperationListResult
      end
      def event_response_message
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::EventResponseMessage
      end
      def registry
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::Registry
      end
      def replication
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::Replication
      end
      def webhook
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::Webhook
      end
      def event
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::Event
      end
      def import_mode
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::ImportMode
      end
      def sku_name
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::SkuName
      end
      def sku_tier
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::SkuTier
      end
      def default_action
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::DefaultAction
      end
      def action
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::Action
      end
      def policy_status
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::PolicyStatus
      end
      def trust_policy_type
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::TrustPolicyType
      end
      def password_name
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::PasswordName
      end
      def registry_usage_unit
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::RegistryUsageUnit
      end
      def webhook_status
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::WebhookStatus
      end
      def webhook_action
        Azure::ContainerRegistry::Mgmt::V2019_05_01::Models::WebhookAction
      end
      def credentials
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::Credentials
      end
      def base_image_trigger
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::BaseImageTrigger
      end
      def trigger_properties
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::TriggerProperties
      end
      def image_update_trigger
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::ImageUpdateTrigger
      end
      def source_registry_credentials
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::SourceRegistryCredentials
      end
      def timer_trigger_descriptor
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::TimerTriggerDescriptor
      end
      def secret_object
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::SecretObject
      end
      def agent_properties
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::AgentProperties
      end
      def custom_registry_credentials
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::CustomRegistryCredentials
      end
      def source_upload_definition
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::SourceUploadDefinition
      end
      def run_request
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::RunRequest
      end
      def run_filter
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::RunFilter
      end
      def run_get_log_result
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::RunGetLogResult
      end
      def task_list_result
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::TaskListResult
      end
      def identity_properties
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::IdentityProperties
      end
      def platform_update_parameters
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::PlatformUpdateParameters
      end
      def task_step_properties
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::TaskStepProperties
      end
      def task_step_update_parameters
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::TaskStepUpdateParameters
      end
      def auth_info
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::AuthInfo
      end
      def timer_trigger_update_parameters
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::TimerTriggerUpdateParameters
      end
      def source_trigger
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::SourceTrigger
      end
      def auth_info_update_parameters
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::AuthInfoUpdateParameters
      end
      def source_trigger_descriptor
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::SourceTriggerDescriptor
      end
      def source_update_parameters
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::SourceUpdateParameters
      end
      def set_value
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::SetValue
      end
      def run_list_result
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::RunListResult
      end
      def source_trigger_update_parameters
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::SourceTriggerUpdateParameters
      end
      def user_identity_properties
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::UserIdentityProperties
      end
      def base_image_trigger_update_parameters
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::BaseImageTriggerUpdateParameters
      end
      def timer_trigger
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::TimerTrigger
      end
      def trigger_update_parameters
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::TriggerUpdateParameters
      end
      def image_descriptor
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::ImageDescriptor
      end
      def task_update_parameters
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::TaskUpdateParameters
      end
      def run_update_parameters
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::RunUpdateParameters
      end
      def resource
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::Resource
      end
      def source_properties
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::SourceProperties
      end
      def proxy_resource
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::ProxyResource
      end
      def base_image_dependency
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::BaseImageDependency
      end
      def argument
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::Argument
      end
      def platform_properties
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::PlatformProperties
      end
      def override_task_step_properties
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::OverrideTaskStepProperties
      end
      def run
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::Run
      end
      def task
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::Task
      end
      def docker_build_request
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::DockerBuildRequest
      end
      def file_task_run_request
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::FileTaskRunRequest
      end
      def task_run_request
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::TaskRunRequest
      end
      def encoded_task_run_request
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::EncodedTaskRunRequest
      end
      def docker_build_step
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::DockerBuildStep
      end
      def file_task_step
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::FileTaskStep
      end
      def encoded_task_step
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::EncodedTaskStep
      end
      def docker_build_step_update_parameters
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::DockerBuildStepUpdateParameters
      end
      def file_task_step_update_parameters
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::FileTaskStepUpdateParameters
      end
      def encoded_task_step_update_parameters
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::EncodedTaskStepUpdateParameters
      end
      def run_status
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::RunStatus
      end
      def run_type
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::RunType
      end
      def os
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::OS
      end
      def architecture
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::Architecture
      end
      def variant
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::Variant
      end
      def provisioning_state
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::ProvisioningState
      end
      def resource_identity_type
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::ResourceIdentityType
      end
      def task_status
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::TaskStatus
      end
      def base_image_dependency_type
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::BaseImageDependencyType
      end
      def trigger_status
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::TriggerStatus
      end
      def source_control_type
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::SourceControlType
      end
      def token_type
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::TokenType
      end
      def source_trigger_event
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::SourceTriggerEvent
      end
      def base_image_trigger_type
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::BaseImageTriggerType
      end
      def update_trigger_payload_type
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::UpdateTriggerPayloadType
      end
      def source_registry_login_mode
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::SourceRegistryLoginMode
      end
      def secret_object_type
        Azure::ContainerRegistry::Mgmt::V2019_06_01_preview::Models::SecretObjectType
      end
    end
  end
end
