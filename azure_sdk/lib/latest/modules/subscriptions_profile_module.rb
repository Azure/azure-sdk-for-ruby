# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_subscriptions'

module Azure::Profiles::Latest
  module Subscriptions
    module Mgmt
      Operations = Azure::Subscriptions::Mgmt::V2016_06_01::Operations
      Tenants = Azure::Subscriptions::Mgmt::V2016_06_01::Tenants
      Subscriptions = Azure::Subscriptions::Mgmt::V2016_06_01::Subscriptions

      module Models
        Location = Azure::Subscriptions::Mgmt::V2016_06_01::Models::Location
        SubscriptionPolicies = Azure::Subscriptions::Mgmt::V2016_06_01::Models::SubscriptionPolicies
        SubscriptionListResult = Azure::Subscriptions::Mgmt::V2016_06_01::Models::SubscriptionListResult
        Subscription = Azure::Subscriptions::Mgmt::V2016_06_01::Models::Subscription
        SubscriptionState = Azure::Subscriptions::Mgmt::V2016_06_01::Models::SubscriptionState
        TenantListResult = Azure::Subscriptions::Mgmt::V2016_06_01::Models::TenantListResult
        OperationListResult = Azure::Subscriptions::Mgmt::V2016_06_01::Models::OperationListResult
        SpendingLimit = Azure::Subscriptions::Mgmt::V2016_06_01::Models::SpendingLimit
        LocationListResult = Azure::Subscriptions::Mgmt::V2016_06_01::Models::LocationListResult
        OperationDisplay = Azure::Subscriptions::Mgmt::V2016_06_01::Models::OperationDisplay
        Operation = Azure::Subscriptions::Mgmt::V2016_06_01::Models::Operation
        TenantIdDescription = Azure::Subscriptions::Mgmt::V2016_06_01::Models::TenantIdDescription
      end

      class SubscriptionsManagementClass
        attr_reader :operations, :tenants, :subscriptions, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Subscriptions::Mgmt::V2016_06_01::SubscriptionClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @operations = @client_0.operations
          @tenants = @client_0.tenants
          @subscriptions = @client_0.subscriptions

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Subscriptions/Mgmt"
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
          def location
            Azure::Subscriptions::Mgmt::V2016_06_01::Models::Location
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
          def subscription_state
            Azure::Subscriptions::Mgmt::V2016_06_01::Models::SubscriptionState
          end
          def tenant_list_result
            Azure::Subscriptions::Mgmt::V2016_06_01::Models::TenantListResult
          end
          def operation_list_result
            Azure::Subscriptions::Mgmt::V2016_06_01::Models::OperationListResult
          end
          def spending_limit
            Azure::Subscriptions::Mgmt::V2016_06_01::Models::SpendingLimit
          end
          def location_list_result
            Azure::Subscriptions::Mgmt::V2016_06_01::Models::LocationListResult
          end
          def operation_display
            Azure::Subscriptions::Mgmt::V2016_06_01::Models::OperationDisplay
          end
          def operation
            Azure::Subscriptions::Mgmt::V2016_06_01::Models::Operation
          end
          def tenant_id_description
            Azure::Subscriptions::Mgmt::V2016_06_01::Models::TenantIdDescription
          end
        end
      end
    end
  end
end
