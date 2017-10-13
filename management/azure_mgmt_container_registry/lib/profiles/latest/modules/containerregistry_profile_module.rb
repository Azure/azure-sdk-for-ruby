# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_container_registry'

module Azure::ContainerRegistry::Profiles::Latest::Mgmt
    Registries = Azure::ContainerRegistry::Mgmt::V2017_10_01::Registries
    Operations = Azure::ContainerRegistry::Mgmt::V2017_10_01::Operations
    Replications = Azure::ContainerRegistry::Mgmt::V2017_10_01::Replications
    Webhooks = Azure::ContainerRegistry::Mgmt::V2017_10_01::Webhooks

    module Models
      ReplicationUpdateParameters = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ReplicationUpdateParameters
      ReplicationListResult = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ReplicationListResult
      RegistryNameStatus = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryNameStatus
      OperationDisplayDefinition = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::OperationDisplayDefinition
      OperationDefinition = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::OperationDefinition
      Sku = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Sku
      WebhookCreateParameters = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookCreateParameters
      StorageAccountProperties = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::StorageAccountProperties
      WebhookUpdateParameters = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookUpdateParameters
      RegistryUpdateParameters = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryUpdateParameters
      WebhookListResult = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookListResult
      RegistryPassword = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryPassword
      EventInfo = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventInfo
      RegenerateCredentialParameters = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegenerateCredentialParameters
      CallbackConfig = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::CallbackConfig
      RegistryUsageListResult = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryUsageListResult
      Target = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Target
      RegistryNameCheckRequest = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryNameCheckRequest
      Request = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Request
      Status = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Status
      Actor = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Actor
      RegistryListResult = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryListResult
      Source = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Source
      RegistryUsage = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryUsage
      EventContent = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventContent
      OperationListResult = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::OperationListResult
      EventRequestMessage = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventRequestMessage
      RegistryListCredentialsResult = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryListCredentialsResult
      EventResponseMessage = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventResponseMessage
      EventListResult = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventListResult
      Resource = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Resource
      Registry = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Registry
      Replication = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Replication
      Webhook = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Webhook
      Event = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Event
      SkuName = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::SkuName
      SkuTier = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::SkuTier
      ProvisioningState = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ProvisioningState
      PasswordName = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::PasswordName
      RegistryUsageUnit = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryUsageUnit
      WebhookStatus = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookStatus
      WebhookAction = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookAction
    end

    #
    # ContainerRegistry
    #
    class ContainerRegistryClass
      attr_reader :registries, :operations, :replications, :webhooks, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        if options.is_a?(Hash) && options.length == 0
          @options = setup_options
        else
          @options = options
        end

        reset!(options)

        @configurable, @base_url, @options = self, nil, nil

        client_0 = Azure::ContainerRegistry::Mgmt::V2017_10_01::ContainerRegistryManagementClient.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        @registries = client_0.registries
        @operations = client_0.operations
        @replications = client_0.replications
        @webhooks = client_0.webhooks

        @model_classes = ModelClasses.new
      end

      class ModelClasses
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
        def sku
          Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Sku
        end
        def webhook_create_parameters
          Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookCreateParameters
        end
        def storage_account_properties
          Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::StorageAccountProperties
        end
        def webhook_update_parameters
          Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookUpdateParameters
        end
        def registry_update_parameters
          Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryUpdateParameters
        end
        def webhook_list_result
          Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookListResult
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
        def registry_usage_list_result
          Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryUsageListResult
        end
        def target
          Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Target
        end
        def registry_name_check_request
          Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryNameCheckRequest
        end
        def request
          Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Request
        end
        def status
          Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Status
        end
        def actor
          Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Actor
        end
        def registry_list_result
          Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryListResult
        end
        def source
          Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Source
        end
        def registry_usage
          Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryUsage
        end
        def event_content
          Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventContent
        end
        def operation_list_result
          Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::OperationListResult
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
        def event_list_result
          Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventListResult
        end
        def resource
          Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Resource
        end
        def registry
          Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Registry
        end
        def replication
          Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Replication
        end
        def webhook
          Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Webhook
        end
        def event
          Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Event
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
        def password_name
          Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::PasswordName
        end
        def registry_usage_unit
          Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryUsageUnit
        end
        def webhook_status
          Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookStatus
        end
        def webhook_action
          Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookAction
        end
      end
    end
end
