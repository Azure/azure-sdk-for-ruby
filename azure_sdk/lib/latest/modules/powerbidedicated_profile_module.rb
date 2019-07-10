# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_powerbi_dedicated'

module Azure::Profiles::Latest
  module PowerBiDedicated
    module Mgmt
      Capacities = Azure::PowerBiDedicated::Mgmt::V2017_10_01::Capacities
      Operations = Azure::PowerBiDedicated::Mgmt::V2017_10_01::Operations

      module Models
        DedicatedCapacityAdministrators = Azure::PowerBiDedicated::Mgmt::V2017_10_01::Models::DedicatedCapacityAdministrators
        DedicatedCapacityUpdateParameters = Azure::PowerBiDedicated::Mgmt::V2017_10_01::Models::DedicatedCapacityUpdateParameters
        Operation = Azure::PowerBiDedicated::Mgmt::V2017_10_01::Models::Operation
        SkuEnumerationForNewResourceResult = Azure::PowerBiDedicated::Mgmt::V2017_10_01::Models::SkuEnumerationForNewResourceResult
        ResourceSku = Azure::PowerBiDedicated::Mgmt::V2017_10_01::Models::ResourceSku
        SkuDetailsForExistingResource = Azure::PowerBiDedicated::Mgmt::V2017_10_01::Models::SkuDetailsForExistingResource
        DedicatedCapacities = Azure::PowerBiDedicated::Mgmt::V2017_10_01::Models::DedicatedCapacities
        SkuEnumerationForExistingResourceResult = Azure::PowerBiDedicated::Mgmt::V2017_10_01::Models::SkuEnumerationForExistingResourceResult
        OperationListResult = Azure::PowerBiDedicated::Mgmt::V2017_10_01::Models::OperationListResult
        ErrorResponse = Azure::PowerBiDedicated::Mgmt::V2017_10_01::Models::ErrorResponse
        OperationDisplay = Azure::PowerBiDedicated::Mgmt::V2017_10_01::Models::OperationDisplay
        CheckCapacityNameAvailabilityParameters = Azure::PowerBiDedicated::Mgmt::V2017_10_01::Models::CheckCapacityNameAvailabilityParameters
        Resource = Azure::PowerBiDedicated::Mgmt::V2017_10_01::Models::Resource
        CheckCapacityNameAvailabilityResult = Azure::PowerBiDedicated::Mgmt::V2017_10_01::Models::CheckCapacityNameAvailabilityResult
        DedicatedCapacity = Azure::PowerBiDedicated::Mgmt::V2017_10_01::Models::DedicatedCapacity
        SkuTier = Azure::PowerBiDedicated::Mgmt::V2017_10_01::Models::SkuTier
        State = Azure::PowerBiDedicated::Mgmt::V2017_10_01::Models::State
        ProvisioningState = Azure::PowerBiDedicated::Mgmt::V2017_10_01::Models::ProvisioningState
      end

      class PowerBiDedicatedManagementClass
        attr_reader :capacities, :operations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::PowerBiDedicated::Mgmt::V2017_10_01::PowerBIDedicatedManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @capacities = @client_0.capacities
          @operations = @client_0.operations

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/PowerBiDedicated/Mgmt"
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
          def dedicated_capacity_administrators
            Azure::PowerBiDedicated::Mgmt::V2017_10_01::Models::DedicatedCapacityAdministrators
          end
          def dedicated_capacity_update_parameters
            Azure::PowerBiDedicated::Mgmt::V2017_10_01::Models::DedicatedCapacityUpdateParameters
          end
          def operation
            Azure::PowerBiDedicated::Mgmt::V2017_10_01::Models::Operation
          end
          def sku_enumeration_for_new_resource_result
            Azure::PowerBiDedicated::Mgmt::V2017_10_01::Models::SkuEnumerationForNewResourceResult
          end
          def resource_sku
            Azure::PowerBiDedicated::Mgmt::V2017_10_01::Models::ResourceSku
          end
          def sku_details_for_existing_resource
            Azure::PowerBiDedicated::Mgmt::V2017_10_01::Models::SkuDetailsForExistingResource
          end
          def dedicated_capacities
            Azure::PowerBiDedicated::Mgmt::V2017_10_01::Models::DedicatedCapacities
          end
          def sku_enumeration_for_existing_resource_result
            Azure::PowerBiDedicated::Mgmt::V2017_10_01::Models::SkuEnumerationForExistingResourceResult
          end
          def operation_list_result
            Azure::PowerBiDedicated::Mgmt::V2017_10_01::Models::OperationListResult
          end
          def error_response
            Azure::PowerBiDedicated::Mgmt::V2017_10_01::Models::ErrorResponse
          end
          def operation_display
            Azure::PowerBiDedicated::Mgmt::V2017_10_01::Models::OperationDisplay
          end
          def check_capacity_name_availability_parameters
            Azure::PowerBiDedicated::Mgmt::V2017_10_01::Models::CheckCapacityNameAvailabilityParameters
          end
          def resource
            Azure::PowerBiDedicated::Mgmt::V2017_10_01::Models::Resource
          end
          def check_capacity_name_availability_result
            Azure::PowerBiDedicated::Mgmt::V2017_10_01::Models::CheckCapacityNameAvailabilityResult
          end
          def dedicated_capacity
            Azure::PowerBiDedicated::Mgmt::V2017_10_01::Models::DedicatedCapacity
          end
          def sku_tier
            Azure::PowerBiDedicated::Mgmt::V2017_10_01::Models::SkuTier
          end
          def state
            Azure::PowerBiDedicated::Mgmt::V2017_10_01::Models::State
          end
          def provisioning_state
            Azure::PowerBiDedicated::Mgmt::V2017_10_01::Models::ProvisioningState
          end
        end
      end
    end
  end
end
