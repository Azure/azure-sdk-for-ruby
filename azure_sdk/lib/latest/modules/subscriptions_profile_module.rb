# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_subscriptions'

module Azure::Profiles::Latest
  module Subscriptions
    module Mgmt
      SubscriptionDefinitionsOperationMetadata = Azure::Subscriptions::Mgmt::V2017_11_01_preview::SubscriptionDefinitionsOperationMetadata
      SubscriptionDefinitions = Azure::Subscriptions::Mgmt::V2017_11_01_preview::SubscriptionDefinitions
      SubscriptionOperations = Azure::Subscriptions::Mgmt::V2018_03_01_preview::SubscriptionOperations
      SubscriptionOperationOperations = Azure::Subscriptions::Mgmt::V2018_11_01_preview::SubscriptionOperationOperations
      SubscriptionFactory = Azure::Subscriptions::Mgmt::V2018_11_01_preview::SubscriptionFactory
      Subscriptions = Azure::Subscriptions::Mgmt::V2019_06_01::Subscriptions
      Tenants = Azure::Subscriptions::Mgmt::V2019_06_01::Tenants
      Subscription = Azure::Subscriptions::Mgmt::V2020_09_01::Subscription
      Operations = Azure::Subscriptions::Mgmt::V2020_09_01::Operations
      AliasModel = Azure::Subscriptions::Mgmt::V2020_09_01::AliasModel

      module Models
        SubscriptionDefinition = Azure::Subscriptions::Mgmt::V2017_11_01_preview::Models::SubscriptionDefinition
        SubscriptionDefinitionList = Azure::Subscriptions::Mgmt::V2017_11_01_preview::Models::SubscriptionDefinitionList
        SubscriptionCreationParameters = Azure::Subscriptions::Mgmt::V2018_03_01_preview::Models::SubscriptionCreationParameters
        OfferType = Azure::Subscriptions::Mgmt::V2018_03_01_preview::Models::OfferType
        SubscriptionOperation = Azure::Subscriptions::Mgmt::V2018_11_01_preview::Models::SubscriptionOperation
        SubscriptionOperationListResult = Azure::Subscriptions::Mgmt::V2018_11_01_preview::Models::SubscriptionOperationListResult
        AdPrincipal = Azure::Subscriptions::Mgmt::V2018_11_01_preview::Models::AdPrincipal
        ModernSubscriptionCreationParameters = Azure::Subscriptions::Mgmt::V2018_11_01_preview::Models::ModernSubscriptionCreationParameters
        SubscriptionCreationResult = Azure::Subscriptions::Mgmt::V2018_11_01_preview::Models::SubscriptionCreationResult
        SubscriptionListResult = Azure::Subscriptions::Mgmt::V2019_06_01::Models::SubscriptionListResult
        TenantIdDescription = Azure::Subscriptions::Mgmt::V2019_06_01::Models::TenantIdDescription
        LocationListResult = Azure::Subscriptions::Mgmt::V2019_06_01::Models::LocationListResult
        TenantListResult = Azure::Subscriptions::Mgmt::V2019_06_01::Models::TenantListResult
        ManagedByTenant = Azure::Subscriptions::Mgmt::V2019_06_01::Models::ManagedByTenant
        Location = Azure::Subscriptions::Mgmt::V2019_06_01::Models::Location
        Subscription = Azure::Subscriptions::Mgmt::V2019_06_01::Models::Subscription
        SubscriptionPolicies = Azure::Subscriptions::Mgmt::V2019_06_01::Models::SubscriptionPolicies
        SubscriptionState = Azure::Subscriptions::Mgmt::V2019_06_01::Models::SubscriptionState
        SpendingLimit = Azure::Subscriptions::Mgmt::V2019_06_01::Models::SpendingLimit
        Operation = Azure::Subscriptions::Mgmt::V2020_09_01::Models::Operation
        ErrorResponse = Azure::Subscriptions::Mgmt::V2020_09_01::Models::ErrorResponse
        OperationListResult = Azure::Subscriptions::Mgmt::V2020_09_01::Models::OperationListResult
        CanceledSubscriptionId = Azure::Subscriptions::Mgmt::V2020_09_01::Models::CanceledSubscriptionId
        PutAliasRequestProperties = Azure::Subscriptions::Mgmt::V2020_09_01::Models::PutAliasRequestProperties
        EnabledSubscriptionId = Azure::Subscriptions::Mgmt::V2020_09_01::Models::EnabledSubscriptionId
        PutAliasRequest = Azure::Subscriptions::Mgmt::V2020_09_01::Models::PutAliasRequest
        OperationDisplay = Azure::Subscriptions::Mgmt::V2020_09_01::Models::OperationDisplay
        PutAliasResponseProperties = Azure::Subscriptions::Mgmt::V2020_09_01::Models::PutAliasResponseProperties
        RenamedSubscriptionId = Azure::Subscriptions::Mgmt::V2020_09_01::Models::RenamedSubscriptionId
        PutAliasResponse = Azure::Subscriptions::Mgmt::V2020_09_01::Models::PutAliasResponse
        ErrorResponseBody = Azure::Subscriptions::Mgmt::V2020_09_01::Models::ErrorResponseBody
        PutAliasListResult = Azure::Subscriptions::Mgmt::V2020_09_01::Models::PutAliasListResult
        SubscriptionName = Azure::Subscriptions::Mgmt::V2020_09_01::Models::SubscriptionName
        Workload = Azure::Subscriptions::Mgmt::V2020_09_01::Models::Workload
        ProvisioningState = Azure::Subscriptions::Mgmt::V2020_09_01::Models::ProvisioningState
      end

      class SubscriptionsManagementClass
        attr_reader :subscription_definitions_operation_metadata, :subscription_definitions, :subscription_operations, :subscription_operation_operations, :subscription_factory, :subscriptions, :tenants, :subscription, :operations, :alias_model, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Subscriptions::Mgmt::V2016_06_01::SubscriptionClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)

          @client_1 = Azure::Subscriptions::Mgmt::V2017_11_01_preview::SubscriptionDefinitionsClient.new(configurable.credentials, base_url, options)
          if(@client_1.respond_to?(:subscription_id))
            @client_1.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_1)
          @subscription_definitions_operation_metadata = @client_1.subscription_definitions_operation_metadata
          @subscription_definitions = @client_1.subscription_definitions

          @client_2 = Azure::Subscriptions::Mgmt::V2018_03_01_preview::SubscriptionClient.new(configurable.credentials, base_url, options)
          if(@client_2.respond_to?(:subscription_id))
            @client_2.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_2)
          @subscription_operations = @client_2.subscription_operations

          @client_3 = Azure::Subscriptions::Mgmt::V2018_11_01_preview::SubscriptionClient.new(configurable.credentials, base_url, options)
          if(@client_3.respond_to?(:subscription_id))
            @client_3.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_3)
          @subscription_operation_operations = @client_3.subscription_operation_operations
          @subscription_factory = @client_3.subscription_factory

          @client_4 = Azure::Subscriptions::Mgmt::V2019_03_01_preview::SubscriptionClient.new(configurable.credentials, base_url, options)
          if(@client_4.respond_to?(:subscription_id))
            @client_4.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_4)

          @client_5 = Azure::Subscriptions::Mgmt::V2019_06_01::SubscriptionClient.new(configurable.credentials, base_url, options)
          if(@client_5.respond_to?(:subscription_id))
            @client_5.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_5)
          @subscriptions = @client_5.subscriptions
          @tenants = @client_5.tenants

          @client_6 = Azure::Subscriptions::Mgmt::V2020_09_01::SubscriptionClient.new(configurable.credentials, base_url, options)
          if(@client_6.respond_to?(:subscription_id))
            @client_6.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_6)
          @subscription = @client_6.subscription
          @operations = @client_6.operations
          @alias_model = @client_6.alias_model

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Subscriptions/Mgmt"
          client.add_user_agent_information(profile_information)
        end

        def method_missing(method, *args)
          if @client_6.respond_to?method
            @client_6.send(method, *args)
          elsif @client_5.respond_to?method
            @client_5.send(method, *args)
          elsif @client_4.respond_to?method
            @client_4.send(method, *args)
          elsif @client_3.respond_to?method
            @client_3.send(method, *args)
          elsif @client_2.respond_to?method
            @client_2.send(method, *args)
          elsif @client_1.respond_to?method
            @client_1.send(method, *args)
          elsif @client_0.respond_to?method
            @client_0.send(method, *args)
          else
            super
          end
        end

        class ModelClasses
          def subscription_definition
            Azure::Subscriptions::Mgmt::V2017_11_01_preview::Models::SubscriptionDefinition
          end
          def subscription_definition_list
            Azure::Subscriptions::Mgmt::V2017_11_01_preview::Models::SubscriptionDefinitionList
          end
          def subscription_creation_parameters
            Azure::Subscriptions::Mgmt::V2018_03_01_preview::Models::SubscriptionCreationParameters
          end
          def offer_type
            Azure::Subscriptions::Mgmt::V2018_03_01_preview::Models::OfferType
          end
          def subscription_operation
            Azure::Subscriptions::Mgmt::V2018_11_01_preview::Models::SubscriptionOperation
          end
          def subscription_operation_list_result
            Azure::Subscriptions::Mgmt::V2018_11_01_preview::Models::SubscriptionOperationListResult
          end
          def ad_principal
            Azure::Subscriptions::Mgmt::V2018_11_01_preview::Models::AdPrincipal
          end
          def modern_subscription_creation_parameters
            Azure::Subscriptions::Mgmt::V2018_11_01_preview::Models::ModernSubscriptionCreationParameters
          end
          def subscription_creation_result
            Azure::Subscriptions::Mgmt::V2018_11_01_preview::Models::SubscriptionCreationResult
          end
          def subscription_list_result
            Azure::Subscriptions::Mgmt::V2019_06_01::Models::SubscriptionListResult
          end
          def tenant_id_description
            Azure::Subscriptions::Mgmt::V2019_06_01::Models::TenantIdDescription
          end
          def location_list_result
            Azure::Subscriptions::Mgmt::V2019_06_01::Models::LocationListResult
          end
          def tenant_list_result
            Azure::Subscriptions::Mgmt::V2019_06_01::Models::TenantListResult
          end
          def managed_by_tenant
            Azure::Subscriptions::Mgmt::V2019_06_01::Models::ManagedByTenant
          end
          def location
            Azure::Subscriptions::Mgmt::V2019_06_01::Models::Location
          end
          def subscription
            Azure::Subscriptions::Mgmt::V2019_06_01::Models::Subscription
          end
          def subscription_policies
            Azure::Subscriptions::Mgmt::V2019_06_01::Models::SubscriptionPolicies
          end
          def subscription_state
            Azure::Subscriptions::Mgmt::V2019_06_01::Models::SubscriptionState
          end
          def spending_limit
            Azure::Subscriptions::Mgmt::V2019_06_01::Models::SpendingLimit
          end
          def operation
            Azure::Subscriptions::Mgmt::V2020_09_01::Models::Operation
          end
          def error_response
            Azure::Subscriptions::Mgmt::V2020_09_01::Models::ErrorResponse
          end
          def operation_list_result
            Azure::Subscriptions::Mgmt::V2020_09_01::Models::OperationListResult
          end
          def canceled_subscription_id
            Azure::Subscriptions::Mgmt::V2020_09_01::Models::CanceledSubscriptionId
          end
          def put_alias_request_properties
            Azure::Subscriptions::Mgmt::V2020_09_01::Models::PutAliasRequestProperties
          end
          def enabled_subscription_id
            Azure::Subscriptions::Mgmt::V2020_09_01::Models::EnabledSubscriptionId
          end
          def put_alias_request
            Azure::Subscriptions::Mgmt::V2020_09_01::Models::PutAliasRequest
          end
          def operation_display
            Azure::Subscriptions::Mgmt::V2020_09_01::Models::OperationDisplay
          end
          def put_alias_response_properties
            Azure::Subscriptions::Mgmt::V2020_09_01::Models::PutAliasResponseProperties
          end
          def renamed_subscription_id
            Azure::Subscriptions::Mgmt::V2020_09_01::Models::RenamedSubscriptionId
          end
          def put_alias_response
            Azure::Subscriptions::Mgmt::V2020_09_01::Models::PutAliasResponse
          end
          def error_response_body
            Azure::Subscriptions::Mgmt::V2020_09_01::Models::ErrorResponseBody
          end
          def put_alias_list_result
            Azure::Subscriptions::Mgmt::V2020_09_01::Models::PutAliasListResult
          end
          def subscription_name
            Azure::Subscriptions::Mgmt::V2020_09_01::Models::SubscriptionName
          end
          def workload
            Azure::Subscriptions::Mgmt::V2020_09_01::Models::Workload
          end
          def provisioning_state
            Azure::Subscriptions::Mgmt::V2020_09_01::Models::ProvisioningState
          end
        end
      end
    end
  end
end
