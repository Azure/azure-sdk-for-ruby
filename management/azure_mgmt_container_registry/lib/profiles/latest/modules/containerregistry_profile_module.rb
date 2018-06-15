# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_container_registry'

module Azure::ContainerRegistry::Profiles::Latest
  module Mgmt
    Registries = Azure::ContainerRegistry::Mgmt::V2017_10_01::Registries
    Operations = Azure::ContainerRegistry::Mgmt::V2017_10_01::Operations
    Replications = Azure::ContainerRegistry::Mgmt::V2017_10_01::Replications
    Webhooks = Azure::ContainerRegistry::Mgmt::V2017_10_01::Webhooks

    module Models
      RegistryUsageListResult = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryUsageListResult
      ImportSource = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ImportSource
      RegistryNameCheckRequest = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryNameCheckRequest
      ReplicationUpdateParameters = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ReplicationUpdateParameters
      OperationDisplayDefinition = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::OperationDisplayDefinition
      ReplicationListResult = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ReplicationListResult
      OperationListResult = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::OperationListResult
      Resource = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Resource
      Status = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Status
      WebhookCreateParameters = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookCreateParameters
      EventListResult = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventListResult
      RegistryUpdateParameters = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryUpdateParameters
      WebhookUpdateParameters = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookUpdateParameters
      RegistryPassword = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryPassword
      WebhookListResult = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookListResult
      RegenerateCredentialParameters = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegenerateCredentialParameters
      EventInfo = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventInfo
      ImportImageParameters = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ImportImageParameters
      CallbackConfig = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::CallbackConfig
      OperationDefinition = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::OperationDefinition
      Target = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Target
      StorageAccountProperties = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::StorageAccountProperties
      Request = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Request
      RegistryListCredentialsResult = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryListCredentialsResult
      Actor = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Actor
      RegistryNameStatus = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryNameStatus
      Source = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Source
      RegistryListResult = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryListResult
      EventContent = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventContent
      Sku = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Sku
      EventRequestMessage = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventRequestMessage
      RegistryUsage = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryUsage
      EventResponseMessage = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventResponseMessage
      Registry = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Registry
      Replication = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Replication
      Webhook = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Webhook
      Event = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Event
      ImportMode = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ImportMode
      SkuName = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::SkuName
      SkuTier = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::SkuTier
      ProvisioningState = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ProvisioningState
      PasswordName = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::PasswordName
      RegistryUsageUnit = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryUsageUnit
      WebhookStatus = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookStatus
      WebhookAction = Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookAction
    end

    #
    # ContainerRegistryManagementClass
    #
    class ContainerRegistryManagementClass
      attr_reader :registries, :operations, :replications, :webhooks, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::ContainerRegistry::Mgmt::V2017_10_01::ContainerRegistryManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @registries = @client_0.registries
        @operations = @client_0.operations
        @replications = @client_0.replications
        @webhooks = @client_0.webhooks

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/ContainerRegistry/Mgmt'
        client.add_user_agent_information(profile_information)
      end

      def method_missing(method, *args)
        if @client_0.respond_to?method
          @client_0.send(method, *args)
        else
          super
        end
      end

    end

    class ModelClasses
      def registry_usage_list_result
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryUsageListResult
      end
      def import_source
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ImportSource
      end
      def registry_name_check_request
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryNameCheckRequest
      end
      def replication_update_parameters
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ReplicationUpdateParameters
      end
      def operation_display_definition
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::OperationDisplayDefinition
      end
      def replication_list_result
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ReplicationListResult
      end
      def operation_list_result
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::OperationListResult
      end
      def resource
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Resource
      end
      def status
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Status
      end
      def webhook_create_parameters
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookCreateParameters
      end
      def event_list_result
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventListResult
      end
      def registry_update_parameters
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryUpdateParameters
      end
      def webhook_update_parameters
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookUpdateParameters
      end
      def registry_password
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryPassword
      end
      def webhook_list_result
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::WebhookListResult
      end
      def regenerate_credential_parameters
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegenerateCredentialParameters
      end
      def event_info
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventInfo
      end
      def import_image_parameters
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ImportImageParameters
      end
      def callback_config
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::CallbackConfig
      end
      def operation_definition
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::OperationDefinition
      end
      def target
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Target
      end
      def storage_account_properties
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::StorageAccountProperties
      end
      def request
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Request
      end
      def registry_list_credentials_result
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryListCredentialsResult
      end
      def actor
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Actor
      end
      def registry_name_status
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryNameStatus
      end
      def source
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Source
      end
      def registry_list_result
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryListResult
      end
      def event_content
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventContent
      end
      def sku
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::Sku
      end
      def event_request_message
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventRequestMessage
      end
      def registry_usage
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::RegistryUsage
      end
      def event_response_message
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::EventResponseMessage
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
      def import_mode
        Azure::ContainerRegistry::Mgmt::V2017_10_01::Models::ImportMode
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
