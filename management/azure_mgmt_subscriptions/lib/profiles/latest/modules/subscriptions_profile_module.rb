# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_subscriptions'

module Azure::Subscriptions::Profiles::Latest
  module Mgmt
    Operations = Azure::Subscriptions::Mgmt::V2016_06_01::Operations
    Tenants = Azure::Subscriptions::Mgmt::V2016_06_01::Tenants
    SubscriptionDefinitionsOperationMetadata = Azure::Subscriptions::Mgmt::V2017_11_01_preview::SubscriptionDefinitionsOperationMetadata
    SubscriptionDefinitions = Azure::Subscriptions::Mgmt::V2017_11_01_preview::SubscriptionDefinitions
    SubscriptionOperations = Azure::Subscriptions::Mgmt::V2018_03_01_preview::SubscriptionOperations
    SubscriptionOperationOperations = Azure::Subscriptions::Mgmt::V2018_11_01_preview::SubscriptionOperationOperations
    SubscriptionFactory = Azure::Subscriptions::Mgmt::V2018_11_01_preview::SubscriptionFactory
    Subscriptions = Azure::Subscriptions::Mgmt::V2019_03_01_preview::Subscriptions

    module Models
      TenantIdDescription = Azure::Subscriptions::Mgmt::V2016_06_01::Models::TenantIdDescription
      Location = Azure::Subscriptions::Mgmt::V2016_06_01::Models::Location
      TenantListResult = Azure::Subscriptions::Mgmt::V2016_06_01::Models::TenantListResult
      SubscriptionPolicies = Azure::Subscriptions::Mgmt::V2016_06_01::Models::SubscriptionPolicies
      SubscriptionListResult = Azure::Subscriptions::Mgmt::V2016_06_01::Models::SubscriptionListResult
      Subscription = Azure::Subscriptions::Mgmt::V2016_06_01::Models::Subscription
      LocationListResult = Azure::Subscriptions::Mgmt::V2016_06_01::Models::LocationListResult
      SubscriptionState = Azure::Subscriptions::Mgmt::V2016_06_01::Models::SubscriptionState
      SpendingLimit = Azure::Subscriptions::Mgmt::V2016_06_01::Models::SpendingLimit
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
      OperationDisplay = Azure::Subscriptions::Mgmt::V2019_03_01_preview::Models::OperationDisplay
      CanceledSubscriptionId = Azure::Subscriptions::Mgmt::V2019_03_01_preview::Models::CanceledSubscriptionId
      Operation = Azure::Subscriptions::Mgmt::V2019_03_01_preview::Models::Operation
      ErrorResponse = Azure::Subscriptions::Mgmt::V2019_03_01_preview::Models::ErrorResponse
      OperationListResult = Azure::Subscriptions::Mgmt::V2019_03_01_preview::Models::OperationListResult
      RenamedSubscriptionId = Azure::Subscriptions::Mgmt::V2019_03_01_preview::Models::RenamedSubscriptionId
    end

    #
    # SubscriptionsManagementClass
    #
    class SubscriptionsManagementClass
      attr_reader :operations, :tenants, :subscription_definitions_operation_metadata, :subscription_definitions, :subscription_operations, :subscription_operation_operations, :subscription_factory, :subscriptions, :configurable, :base_url, :options, :model_classes

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
        @operations = @client_0.operations
        @tenants = @client_0.tenants

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
        @subscriptions = @client_4.subscriptions

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/Subscriptions/Mgmt'
        client.add_user_agent_information(profile_information)
      end

      def method_missing(method, *args)
        if @client_4.respond_to?method
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
      def tenant_id_description
        Azure::Subscriptions::Mgmt::V2016_06_01::Models::TenantIdDescription
      end
      def location
        Azure::Subscriptions::Mgmt::V2016_06_01::Models::Location
      end
      def tenant_list_result
        Azure::Subscriptions::Mgmt::V2016_06_01::Models::TenantListResult
      end
      def subscription_policies
        Azure::Subscriptions::Mgmt::V2016_06_01::Models::SubscriptionPolicies
      end
      def subscription_list_result
        Azure::Subscriptions::Mgmt::V2016_06_01::Models::SubscriptionListResult
      end
      def subscription
        Azure::Subscriptions::Mgmt::V2016_06_01::Models::Subscription
      end
      def location_list_result
        Azure::Subscriptions::Mgmt::V2016_06_01::Models::LocationListResult
      end
      def subscription_state
        Azure::Subscriptions::Mgmt::V2016_06_01::Models::SubscriptionState
      end
      def spending_limit
        Azure::Subscriptions::Mgmt::V2016_06_01::Models::SpendingLimit
      end
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
      def operation_display
        Azure::Subscriptions::Mgmt::V2019_03_01_preview::Models::OperationDisplay
      end
      def canceled_subscription_id
        Azure::Subscriptions::Mgmt::V2019_03_01_preview::Models::CanceledSubscriptionId
      end
      def operation
        Azure::Subscriptions::Mgmt::V2019_03_01_preview::Models::Operation
      end
      def error_response
        Azure::Subscriptions::Mgmt::V2019_03_01_preview::Models::ErrorResponse
      end
      def operation_list_result
        Azure::Subscriptions::Mgmt::V2019_03_01_preview::Models::OperationListResult
      end
      def renamed_subscription_id
        Azure::Subscriptions::Mgmt::V2019_03_01_preview::Models::RenamedSubscriptionId
      end
    end
  end
end
