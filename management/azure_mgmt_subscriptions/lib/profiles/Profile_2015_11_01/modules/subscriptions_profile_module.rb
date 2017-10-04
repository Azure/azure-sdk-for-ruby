# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_subscriptions'


module Azure
  module Profiles
    module SubscriptionsModule
    module Management
      module Profile_2015_11_01
        module Subscriptions
          Subscriptions = Azure::ARM::Subscriptions::Api_2015_11_01::Subscriptions
          Tenants = Azure::ARM::Subscriptions::Api_2015_11_01::Tenants
          SubscriptionClient = Azure::ARM::Subscriptions::Api_2015_11_01::SubscriptionClient

          module Models
            Subscription = Azure::ARM::Subscriptions::Api_2015_11_01::Models::Subscription
            SubscriptionListResult = Azure::ARM::Subscriptions::Api_2015_11_01::Models::SubscriptionListResult
            LocationListResult = Azure::ARM::Subscriptions::Api_2015_11_01::Models::LocationListResult
            TenantIdDescription = Azure::ARM::Subscriptions::Api_2015_11_01::Models::TenantIdDescription
            Location = Azure::ARM::Subscriptions::Api_2015_11_01::Models::Location
            TenantListResult = Azure::ARM::Subscriptions::Api_2015_11_01::Models::TenantListResult
            SubscriptionPolicies = Azure::ARM::Subscriptions::Api_2015_11_01::Models::SubscriptionPolicies
          end

          #
          # Subscriptions
          #
          class Subscriptions
            attr_accessor :subscriptions, :tenants, :subscription_client, :configurable, :base_url, :options, :model_classes

            def initialize(configurable, base_url, options)
              @configurable, @base_url, @options = configurable, base_url, options
              client = .new(configurable.credentials, base_url, options)
              client.subscription_id = configurable.subscription_id
              self.subscriptions = Azure::ARM::Subscriptions::Api_2015_11_01::Subscriptions.new(client)
              self.tenants = Azure::ARM::Subscriptions::Api_2015_11_01::Tenants.new(client)
              self.subscription_client = Azure::ARM::Subscriptions::Api_2015_11_01::SubscriptionClient.new(client)
              self.model_classes = ModelClasses.new
            end

            def get_client(version)
              case version
                else
                  raise "No client of version #{version} could be found in this profile."
              end
            end

            class ModelClasses
              def subscription
                Azure::ARM::Subscriptions::Api_2015_11_01::Models::Subscription
              end
              def subscription_list_result
                Azure::ARM::Subscriptions::Api_2015_11_01::Models::SubscriptionListResult
              end
              def location_list_result
                Azure::ARM::Subscriptions::Api_2015_11_01::Models::LocationListResult
              end
              def tenant_id_description
                Azure::ARM::Subscriptions::Api_2015_11_01::Models::TenantIdDescription
              end
              def location
                Azure::ARM::Subscriptions::Api_2015_11_01::Models::Location
              end
              def tenant_list_result
                Azure::ARM::Subscriptions::Api_2015_11_01::Models::TenantListResult
              end
              def subscription_policies
                Azure::ARM::Subscriptions::Api_2015_11_01::Models::SubscriptionPolicies
              end
            end
          end
        end
      end
    end
    end
  end
end
