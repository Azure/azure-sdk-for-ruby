# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_subscriptions'

module Azure::Subscriptions::Profiles::V2017_03_09
  module Mgmt
    Operations = Azure::Subscriptions::Mgmt::V2016_06_01::Operations
    Subscriptions = Azure::Subscriptions::Mgmt::V2016_06_01::Subscriptions
    Tenants = Azure::Subscriptions::Mgmt::V2016_06_01::Tenants

    module Models
      TenantIdDescription = Azure::Subscriptions::Mgmt::V2016_06_01::Models::TenantIdDescription
      Location = Azure::Subscriptions::Mgmt::V2016_06_01::Models::Location
      TenantListResult = Azure::Subscriptions::Mgmt::V2016_06_01::Models::TenantListResult
      SubscriptionPolicies = Azure::Subscriptions::Mgmt::V2016_06_01::Models::SubscriptionPolicies
      OperationDisplay = Azure::Subscriptions::Mgmt::V2016_06_01::Models::OperationDisplay
      SubscriptionListResult = Azure::Subscriptions::Mgmt::V2016_06_01::Models::SubscriptionListResult
      Operation = Azure::Subscriptions::Mgmt::V2016_06_01::Models::Operation
      Subscription = Azure::Subscriptions::Mgmt::V2016_06_01::Models::Subscription
      OperationListResult = Azure::Subscriptions::Mgmt::V2016_06_01::Models::OperationListResult
      LocationListResult = Azure::Subscriptions::Mgmt::V2016_06_01::Models::LocationListResult
      SubscriptionState = Azure::Subscriptions::Mgmt::V2016_06_01::Models::SubscriptionState
      SpendingLimit = Azure::Subscriptions::Mgmt::V2016_06_01::Models::SpendingLimit
    end

    #
    # SubscriptionsManagementClass
    #
    class SubscriptionsManagementClass
      attr_reader :operations, :subscriptions, :tenants, :configurable, :base_url, :options, :model_classes

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
        @subscriptions = @client_0.subscriptions
        @tenants = @client_0.tenants

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/V2017_03_09/Subscriptions/Mgmt'
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
      def operation_display
        Azure::Subscriptions::Mgmt::V2016_06_01::Models::OperationDisplay
      end
      def subscription_list_result
        Azure::Subscriptions::Mgmt::V2016_06_01::Models::SubscriptionListResult
      end
      def operation
        Azure::Subscriptions::Mgmt::V2016_06_01::Models::Operation
      end
      def subscription
        Azure::Subscriptions::Mgmt::V2016_06_01::Models::Subscription
      end
      def operation_list_result
        Azure::Subscriptions::Mgmt::V2016_06_01::Models::OperationListResult
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
    end
  end
end
