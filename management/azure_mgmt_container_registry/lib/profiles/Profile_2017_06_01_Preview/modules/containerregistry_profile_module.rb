# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_container_registry'


module Azure::Profiles::ContainerRegistryModule::Management::Profile_2017_06_01_Preview
  module ContainerRegistry
    Registries = Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Registries
    Operations = Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Operations
    Replications = Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Replications
    Webhooks = Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Webhooks

    module Models
      ReplicationUpdateParameters = Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::ReplicationUpdateParameters
      ReplicationListResult = Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::ReplicationListResult
      RegistryNameStatus = Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::RegistryNameStatus
      OperationDisplayDefinition = Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::OperationDisplayDefinition
      OperationDefinition = Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::OperationDefinition
      Sku = Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::Sku
      WebhookCreateParameters = Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::WebhookCreateParameters
      StorageAccountProperties = Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::StorageAccountProperties
      WebhookUpdateParameters = Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::WebhookUpdateParameters
      RegistryUpdateParameters = Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::RegistryUpdateParameters
      WebhookListResult = Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::WebhookListResult
      RegistryPassword = Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::RegistryPassword
      EventInfo = Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::EventInfo
      RegenerateCredentialParameters = Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::RegenerateCredentialParameters
      CallbackConfig = Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::CallbackConfig
      RegistryUsageListResult = Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::RegistryUsageListResult
      Target = Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::Target
      RegistryNameCheckRequest = Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::RegistryNameCheckRequest
      Request = Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::Request
      Status = Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::Status
      Actor = Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::Actor
      RegistryListResult = Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::RegistryListResult
      Source = Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::Source
      RegistryUsage = Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::RegistryUsage
      EventContent = Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::EventContent
      OperationListResult = Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::OperationListResult
      EventRequestMessage = Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::EventRequestMessage
      RegistryListCredentialsResult = Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::RegistryListCredentialsResult
      EventResponseMessage = Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::EventResponseMessage
      EventListResult = Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::EventListResult
      Registry = Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::Registry
      Replication = Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::Replication
      Webhook = Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::Webhook
      Event = Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::Event
      SkuName = Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::SkuName
      SkuTier = Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::SkuTier
      ProvisioningState = Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::ProvisioningState
      PasswordName = Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::PasswordName
      RegistryUsageUnit = Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::RegistryUsageUnit
      WebhookStatus = Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::WebhookStatus
      WebhookAction = Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::WebhookAction
    end

    #
    # ContainerRegistry
    #
    class ContainerRegistryClass
      attr_accessor :registries, :operations, :replications, :webhooks, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::ContainerRegistryManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.registries = Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Registries.new(client)
        self.operations = Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Operations.new(client)
        self.replications = Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Replications.new(client)
        self.webhooks = Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Webhooks.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2017-06-01-preview'
            client = Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::ContainerRegistryManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def replication_update_parameters
          Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::ReplicationUpdateParameters
        end
        def replication_list_result
          Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::ReplicationListResult
        end
        def registry_name_status
          Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::RegistryNameStatus
        end
        def operation_display_definition
          Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::OperationDisplayDefinition
        end
        def operation_definition
          Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::OperationDefinition
        end
        def sku
          Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::Sku
        end
        def webhook_create_parameters
          Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::WebhookCreateParameters
        end
        def storage_account_properties
          Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::StorageAccountProperties
        end
        def webhook_update_parameters
          Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::WebhookUpdateParameters
        end
        def registry_update_parameters
          Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::RegistryUpdateParameters
        end
        def webhook_list_result
          Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::WebhookListResult
        end
        def registry_password
          Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::RegistryPassword
        end
        def event_info
          Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::EventInfo
        end
        def regenerate_credential_parameters
          Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::RegenerateCredentialParameters
        end
        def callback_config
          Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::CallbackConfig
        end
        def registry_usage_list_result
          Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::RegistryUsageListResult
        end
        def target
          Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::Target
        end
        def registry_name_check_request
          Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::RegistryNameCheckRequest
        end
        def request
          Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::Request
        end
        def status
          Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::Status
        end
        def actor
          Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::Actor
        end
        def registry_list_result
          Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::RegistryListResult
        end
        def source
          Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::Source
        end
        def registry_usage
          Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::RegistryUsage
        end
        def event_content
          Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::EventContent
        end
        def operation_list_result
          Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::OperationListResult
        end
        def event_request_message
          Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::EventRequestMessage
        end
        def registry_list_credentials_result
          Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::RegistryListCredentialsResult
        end
        def event_response_message
          Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::EventResponseMessage
        end
        def event_list_result
          Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::EventListResult
        end
        def registry
          Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::Registry
        end
        def replication
          Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::Replication
        end
        def webhook
          Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::Webhook
        end
        def event
          Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::Event
        end
        def sku_name
          Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::SkuName
        end
        def sku_tier
          Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::SkuTier
        end
        def provisioning_state
          Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::ProvisioningState
        end
        def password_name
          Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::PasswordName
        end
        def registry_usage_unit
          Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::RegistryUsageUnit
        end
        def webhook_status
          Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::WebhookStatus
        end
        def webhook_action
          Azure::ARM::ContainerRegistry::Api_2017_06_01_preview::Models::WebhookAction
        end
      end
    end
  end
end
