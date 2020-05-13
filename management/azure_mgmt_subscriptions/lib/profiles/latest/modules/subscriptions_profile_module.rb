# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_subscriptions'

module Azure::Subscriptions::Profiles::Latest
  module Mgmt
    SubscriptionDefinitionsOperationMetadata = Azure::Subscriptions::Mgmt::V2017_11_01_preview::SubscriptionDefinitionsOperationMetadata
    SubscriptionDefinitions = Azure::Subscriptions::Mgmt::V2017_11_01_preview::SubscriptionDefinitions
    SubscriptionOperations = Azure::Subscriptions::Mgmt::V2018_03_01_preview::SubscriptionOperations
    SubscriptionOperationOperations = Azure::Subscriptions::Mgmt::V2018_11_01_preview::SubscriptionOperationOperations
    SubscriptionFactory = Azure::Subscriptions::Mgmt::V2018_11_01_preview::SubscriptionFactory
    Operations = Azure::Subscriptions::Mgmt::V2019_11_01::Operations
    Subscriptions = Azure::Subscriptions::Mgmt::V2019_11_01::Subscriptions
    Tenants = Azure::Subscriptions::Mgmt::V2019_11_01::Tenants

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
      SubscriptionName = Azure::Subscriptions::Mgmt::V2019_03_01_preview::Models::SubscriptionName
      CanceledSubscriptionId = Azure::Subscriptions::Mgmt::V2019_03_01_preview::Models::CanceledSubscriptionId
      ErrorResponse = Azure::Subscriptions::Mgmt::V2019_03_01_preview::Models::ErrorResponse
      RenamedSubscriptionId = Azure::Subscriptions::Mgmt::V2019_03_01_preview::Models::RenamedSubscriptionId
      Subscription = Azure::Subscriptions::Mgmt::V2019_11_01::Models::Subscription
      SubscriptionListResult = Azure::Subscriptions::Mgmt::V2019_11_01::Models::SubscriptionListResult
      LocationMetadata = Azure::Subscriptions::Mgmt::V2019_11_01::Models::LocationMetadata
      TenantIdDescription = Azure::Subscriptions::Mgmt::V2019_11_01::Models::TenantIdDescription
      LocationListResult = Azure::Subscriptions::Mgmt::V2019_11_01::Models::LocationListResult
      TenantListResult = Azure::Subscriptions::Mgmt::V2019_11_01::Models::TenantListResult
      ManagedByTenant = Azure::Subscriptions::Mgmt::V2019_11_01::Models::ManagedByTenant
      OperationDisplay = Azure::Subscriptions::Mgmt::V2019_11_01::Models::OperationDisplay
      Location = Azure::Subscriptions::Mgmt::V2019_11_01::Models::Location
      Operation = Azure::Subscriptions::Mgmt::V2019_11_01::Models::Operation
      PairedRegion = Azure::Subscriptions::Mgmt::V2019_11_01::Models::PairedRegion
      OperationListResult = Azure::Subscriptions::Mgmt::V2019_11_01::Models::OperationListResult
      SubscriptionPolicies = Azure::Subscriptions::Mgmt::V2019_11_01::Models::SubscriptionPolicies
      RegionType = Azure::Subscriptions::Mgmt::V2019_11_01::Models::RegionType
      RegionCategory = Azure::Subscriptions::Mgmt::V2019_11_01::Models::RegionCategory
      SubscriptionState = Azure::Subscriptions::Mgmt::V2019_11_01::Models::SubscriptionState
      SpendingLimit = Azure::Subscriptions::Mgmt::V2019_11_01::Models::SpendingLimit
      TenantCategory = Azure::Subscriptions::Mgmt::V2019_11_01::Models::TenantCategory
    end

    #
    # SubscriptionsManagementClass
    #
    class SubscriptionsManagementClass
      attr_reader :subscription_definitions_operation_metadata, :subscription_definitions, :subscription_operations, :subscription_operation_operations, :subscription_factory, :operations, :subscriptions, :tenants, :configurable, :base_url, :options, :model_classes

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

        @client_6 = Azure::Subscriptions::Mgmt::V2019_11_01::SubscriptionClient.new(configurable.credentials, base_url, options)
        if(@client_6.respond_to?(:subscription_id))
          @client_6.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_6)
        @operations = @client_6.operations
        @subscriptions = @client_6.subscriptions
        @tenants = @client_6.tenants

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/Subscriptions/Mgmt'
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
      def subscription_name
        Azure::Subscriptions::Mgmt::V2019_03_01_preview::Models::SubscriptionName
      end
      def canceled_subscription_id
        Azure::Subscriptions::Mgmt::V2019_03_01_preview::Models::CanceledSubscriptionId
      end
      def error_response
        Azure::Subscriptions::Mgmt::V2019_03_01_preview::Models::ErrorResponse
      end
      def renamed_subscription_id
        Azure::Subscriptions::Mgmt::V2019_03_01_preview::Models::RenamedSubscriptionId
      end
      def subscription
        Azure::Subscriptions::Mgmt::V2019_11_01::Models::Subscription
      end
      def subscription_list_result
        Azure::Subscriptions::Mgmt::V2019_11_01::Models::SubscriptionListResult
      end
      def location_metadata
        Azure::Subscriptions::Mgmt::V2019_11_01::Models::LocationMetadata
      end
      def tenant_id_description
        Azure::Subscriptions::Mgmt::V2019_11_01::Models::TenantIdDescription
      end
      def location_list_result
        Azure::Subscriptions::Mgmt::V2019_11_01::Models::LocationListResult
      end
      def tenant_list_result
        Azure::Subscriptions::Mgmt::V2019_11_01::Models::TenantListResult
      end
      def managed_by_tenant
        Azure::Subscriptions::Mgmt::V2019_11_01::Models::ManagedByTenant
      end
      def operation_display
        Azure::Subscriptions::Mgmt::V2019_11_01::Models::OperationDisplay
      end
      def location
        Azure::Subscriptions::Mgmt::V2019_11_01::Models::Location
      end
      def operation
        Azure::Subscriptions::Mgmt::V2019_11_01::Models::Operation
      end
      def paired_region
        Azure::Subscriptions::Mgmt::V2019_11_01::Models::PairedRegion
      end
      def operation_list_result
        Azure::Subscriptions::Mgmt::V2019_11_01::Models::OperationListResult
      end
      def subscription_policies
        Azure::Subscriptions::Mgmt::V2019_11_01::Models::SubscriptionPolicies
      end
      def region_type
        Azure::Subscriptions::Mgmt::V2019_11_01::Models::RegionType
      end
      def region_category
        Azure::Subscriptions::Mgmt::V2019_11_01::Models::RegionCategory
      end
      def subscription_state
        Azure::Subscriptions::Mgmt::V2019_11_01::Models::SubscriptionState
      end
      def spending_limit
        Azure::Subscriptions::Mgmt::V2019_11_01::Models::SpendingLimit
      end
      def tenant_category
        Azure::Subscriptions::Mgmt::V2019_11_01::Models::TenantCategory
      end
    end
  end
end
