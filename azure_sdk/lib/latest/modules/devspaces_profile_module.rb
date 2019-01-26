# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_dev_spaces'

module Azure::Profiles::Latest
  module DevSpaces
    module Mgmt
      Controllers = Azure::DevSpaces::Mgmt::V2018_06_01_preview::Controllers
      Operations = Azure::DevSpaces::Mgmt::V2018_06_01_preview::Operations

      module Models
        ErrorResponse = Azure::DevSpaces::Mgmt::V2018_06_01_preview::Models::ErrorResponse
        TrackedResource = Azure::DevSpaces::Mgmt::V2018_06_01_preview::Models::TrackedResource
        Resource = Azure::DevSpaces::Mgmt::V2018_06_01_preview::Models::Resource
        ControllerConnectionDetailsList = Azure::DevSpaces::Mgmt::V2018_06_01_preview::Models::ControllerConnectionDetailsList
        ResourceProviderOperationDisplay = Azure::DevSpaces::Mgmt::V2018_06_01_preview::Models::ResourceProviderOperationDisplay
        OrchestratorSpecificConnectionDetails = Azure::DevSpaces::Mgmt::V2018_06_01_preview::Models::OrchestratorSpecificConnectionDetails
        ResourceProviderOperationDefinition = Azure::DevSpaces::Mgmt::V2018_06_01_preview::Models::ResourceProviderOperationDefinition
        ResourceProviderOperationList = Azure::DevSpaces::Mgmt::V2018_06_01_preview::Models::ResourceProviderOperationList
        ControllerConnectionDetails = Azure::DevSpaces::Mgmt::V2018_06_01_preview::Models::ControllerConnectionDetails
        Sku = Azure::DevSpaces::Mgmt::V2018_06_01_preview::Models::Sku
        ControllerList = Azure::DevSpaces::Mgmt::V2018_06_01_preview::Models::ControllerList
        Controller = Azure::DevSpaces::Mgmt::V2018_06_01_preview::Models::Controller
        ErrorDetails = Azure::DevSpaces::Mgmt::V2018_06_01_preview::Models::ErrorDetails
        ControllerUpdateParameters = Azure::DevSpaces::Mgmt::V2018_06_01_preview::Models::ControllerUpdateParameters
        KubernetesConnectionDetails = Azure::DevSpaces::Mgmt::V2018_06_01_preview::Models::KubernetesConnectionDetails
        ProvisioningState = Azure::DevSpaces::Mgmt::V2018_06_01_preview::Models::ProvisioningState
        SkuTier = Azure::DevSpaces::Mgmt::V2018_06_01_preview::Models::SkuTier
      end

      class DevSpacesManagementClass
        attr_reader :controllers, :operations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::DevSpaces::Mgmt::V2018_06_01_preview::DevSpacesManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @controllers = @client_0.controllers
          @operations = @client_0.operations

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/DevSpaces/Mgmt"
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
          def error_response
            Azure::DevSpaces::Mgmt::V2018_06_01_preview::Models::ErrorResponse
          end
          def tracked_resource
            Azure::DevSpaces::Mgmt::V2018_06_01_preview::Models::TrackedResource
          end
          def resource
            Azure::DevSpaces::Mgmt::V2018_06_01_preview::Models::Resource
          end
          def controller_connection_details_list
            Azure::DevSpaces::Mgmt::V2018_06_01_preview::Models::ControllerConnectionDetailsList
          end
          def resource_provider_operation_display
            Azure::DevSpaces::Mgmt::V2018_06_01_preview::Models::ResourceProviderOperationDisplay
          end
          def orchestrator_specific_connection_details
            Azure::DevSpaces::Mgmt::V2018_06_01_preview::Models::OrchestratorSpecificConnectionDetails
          end
          def resource_provider_operation_definition
            Azure::DevSpaces::Mgmt::V2018_06_01_preview::Models::ResourceProviderOperationDefinition
          end
          def resource_provider_operation_list
            Azure::DevSpaces::Mgmt::V2018_06_01_preview::Models::ResourceProviderOperationList
          end
          def controller_connection_details
            Azure::DevSpaces::Mgmt::V2018_06_01_preview::Models::ControllerConnectionDetails
          end
          def sku
            Azure::DevSpaces::Mgmt::V2018_06_01_preview::Models::Sku
          end
          def controller_list
            Azure::DevSpaces::Mgmt::V2018_06_01_preview::Models::ControllerList
          end
          def controller
            Azure::DevSpaces::Mgmt::V2018_06_01_preview::Models::Controller
          end
          def error_details
            Azure::DevSpaces::Mgmt::V2018_06_01_preview::Models::ErrorDetails
          end
          def controller_update_parameters
            Azure::DevSpaces::Mgmt::V2018_06_01_preview::Models::ControllerUpdateParameters
          end
          def kubernetes_connection_details
            Azure::DevSpaces::Mgmt::V2018_06_01_preview::Models::KubernetesConnectionDetails
          end
          def provisioning_state
            Azure::DevSpaces::Mgmt::V2018_06_01_preview::Models::ProvisioningState
          end
          def sku_tier
            Azure::DevSpaces::Mgmt::V2018_06_01_preview::Models::SkuTier
          end
        end
      end
    end
  end
end
