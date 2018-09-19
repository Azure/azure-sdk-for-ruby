# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_container_registry'

module Azure::Profiles::Latest
  module ContainerRegistry
    module Mgmt
      Operations = Azure::ContainerRegistry::Mgmt::V2017_10_01::Operations
      Registries = Azure::ContainerRegistry::Mgmt::V2017_10_01::Registries
      Replications = Azure::ContainerRegistry::Mgmt::V2017_10_01::Replications
      Webhooks = Azure::ContainerRegistry::Mgmt::V2017_10_01::Webhooks

      module Models
        PasswordName = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::PasswordName
        Webhook = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Webhook
        WebhookStatus = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookStatus
        WebhookAction = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookAction
        Request = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Request
        Sku = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Sku
        Event = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Event
        Resource = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Resource
        SkuName = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::SkuName
        SkuTier = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::SkuTier
        ProvisioningState = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ProvisioningState
        ReplicationUpdateParameters = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ReplicationUpdateParameters
        ReplicationListResult = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ReplicationListResult
        RegistryNameStatus = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryNameStatus
        OperationDisplayDefinition = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::OperationDisplayDefinition
        OperationDefinition = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::OperationDefinition
        WebhookCreateParameters = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookCreateParameters
        StorageAccountProperties = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::StorageAccountProperties
        RegistryUpdateParameters = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryUpdateParameters
        RegistryPassword = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryPassword
        EventInfo = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventInfo
        RegenerateCredentialParameters = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegenerateCredentialParameters
        CallbackConfig = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::CallbackConfig
        WebhookUpdateParameters = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookUpdateParameters
        RegistryUsageListResult = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryUsageListResult
        WebhookListResult = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookListResult
        RegistryNameCheckRequest = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryNameCheckRequest
        Target = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Target
        RegistryListResult = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryListResult
        Actor = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Actor
        EventContent = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventContent
        RegistryUsage = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryUsage
        Status = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Status
        EventRequestMessage = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventRequestMessage
        RegistryListCredentialsResult = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryListCredentialsResult
        EventResponseMessage = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventResponseMessage
        OperationListResult = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::OperationListResult
        Registry = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Registry
        Replication = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Replication
        EventListResult = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventListResult
        RegistryUsageUnit = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryUsageUnit
        Source = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Source
      end

      class ContainerRegistryManagementClass
        attr_reader :operations, :registries, :replications, :webhooks, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::ContainerRegistry::Mgmt::V2017_10_01::ContainerRegistryManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @operations = @client_0.operations
          @registries = @client_0.registries
          @replications = @client_0.replications
          @webhooks = @client_0.webhooks

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/ContainerRegistry/Mgmt"
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
          def password_name
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::PasswordName
          end
          def webhook
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Webhook
          end
          def webhook_status
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookStatus
          end
          def webhook_action
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookAction
          end
          def request
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Request
          end
          def sku
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Sku
          end
          def event
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Event
          end
          def resource
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Resource
          end
          def sku_name
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::SkuName
          end
          def sku_tier
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::SkuTier
          end
          def provisioning_state
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ProvisioningState
          end
          def replication_update_parameters
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ReplicationUpdateParameters
          end
          def replication_list_result
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ReplicationListResult
          end
          def registry_name_status
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryNameStatus
          end
          def operation_display_definition
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::OperationDisplayDefinition
          end
          def operation_definition
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::OperationDefinition
          end
          def webhook_create_parameters
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookCreateParameters
          end
          def storage_account_properties
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::StorageAccountProperties
          end
          def registry_update_parameters
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryUpdateParameters
          end
          def registry_password
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryPassword
          end
          def event_info
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventInfo
          end
          def regenerate_credential_parameters
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegenerateCredentialParameters
          end
          def callback_config
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::CallbackConfig
          end
          def webhook_update_parameters
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookUpdateParameters
          end
          def registry_usage_list_result
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryUsageListResult
          end
          def webhook_list_result
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookListResult
          end
          def registry_name_check_request
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryNameCheckRequest
          end
          def target
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Target
          end
          def registry_list_result
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryListResult
          end
          def actor
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Actor
          end
          def event_content
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventContent
          end
          def registry_usage
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryUsage
          end
          def status
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Status
          end
          def event_request_message
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventRequestMessage
          end
          def registry_list_credentials_result
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryListCredentialsResult
          end
          def event_response_message
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventResponseMessage
          end
          def operation_list_result
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::OperationListResult
          end
          def registry
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Registry
          end
          def replication
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Replication
          end
          def event_list_result
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventListResult
          end
          def registry_usage_unit
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryUsageUnit
          end
          def source
            Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Source
          end
        end
      end
    end
  end
end
