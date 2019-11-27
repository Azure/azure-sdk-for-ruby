# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_resources'

module Azure::Profiles::V2019_07_01
  module Resources
    module Mgmt
      Applications = Azure::Resources::Mgmt::V2018_06_01::Applications
      ApplicationDefinitions = Azure::Resources::Mgmt::V2018_06_01::ApplicationDefinitions

      module Models
        Sku = Azure::Resources::Mgmt::V2018_06_01::Models::Sku
        Plan = Azure::Resources::Mgmt::V2018_06_01::Models::Plan
        Identity = Azure::Resources::Mgmt::V2018_06_01::Models::Identity
        PlanPatchable = Azure::Resources::Mgmt::V2018_06_01::Models::PlanPatchable
        ErrorResponse = Azure::Resources::Mgmt::V2018_06_01::Models::ErrorResponse
        ApplicationProviderAuthorization = Azure::Resources::Mgmt::V2018_06_01::Models::ApplicationProviderAuthorization
        ApplicationDefinitionListResult = Azure::Resources::Mgmt::V2018_06_01::Models::ApplicationDefinitionListResult
        ApplicationListResult = Azure::Resources::Mgmt::V2018_06_01::Models::ApplicationListResult
        ApplicationArtifact = Azure::Resources::Mgmt::V2018_06_01::Models::ApplicationArtifact
        Resource = Azure::Resources::Mgmt::V2018_06_01::Models::Resource
        GenericResource = Azure::Resources::Mgmt::V2018_06_01::Models::GenericResource
        Application = Azure::Resources::Mgmt::V2018_06_01::Models::Application
        ApplicationPatchable = Azure::Resources::Mgmt::V2018_06_01::Models::ApplicationPatchable
        ApplicationDefinition = Azure::Resources::Mgmt::V2018_06_01::Models::ApplicationDefinition
        ProvisioningState = Azure::Resources::Mgmt::V2018_06_01::Models::ProvisioningState
        ApplicationLockLevel = Azure::Resources::Mgmt::V2018_06_01::Models::ApplicationLockLevel
        ApplicationArtifactType = Azure::Resources::Mgmt::V2018_06_01::Models::ApplicationArtifactType
        ResourceIdentityType = Azure::Resources::Mgmt::V2018_06_01::Models::ResourceIdentityType
      end

      class ResourcesManagementClass
        attr_reader :applications, :application_definitions, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Resources::Mgmt::V2018_06_01::ApplicationClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @applications = @client_0.applications
          @application_definitions = @client_0.application_definitions

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/V2019_07_01/Resources/Mgmt"
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
          def sku
            Azure::Resources::Mgmt::V2018_06_01::Models::Sku
          end
          def plan
            Azure::Resources::Mgmt::V2018_06_01::Models::Plan
          end
          def identity
            Azure::Resources::Mgmt::V2018_06_01::Models::Identity
          end
          def plan_patchable
            Azure::Resources::Mgmt::V2018_06_01::Models::PlanPatchable
          end
          def error_response
            Azure::Resources::Mgmt::V2018_06_01::Models::ErrorResponse
          end
          def application_provider_authorization
            Azure::Resources::Mgmt::V2018_06_01::Models::ApplicationProviderAuthorization
          end
          def application_definition_list_result
            Azure::Resources::Mgmt::V2018_06_01::Models::ApplicationDefinitionListResult
          end
          def application_list_result
            Azure::Resources::Mgmt::V2018_06_01::Models::ApplicationListResult
          end
          def application_artifact
            Azure::Resources::Mgmt::V2018_06_01::Models::ApplicationArtifact
          end
          def resource
            Azure::Resources::Mgmt::V2018_06_01::Models::Resource
          end
          def generic_resource
            Azure::Resources::Mgmt::V2018_06_01::Models::GenericResource
          end
          def application
            Azure::Resources::Mgmt::V2018_06_01::Models::Application
          end
          def application_patchable
            Azure::Resources::Mgmt::V2018_06_01::Models::ApplicationPatchable
          end
          def application_definition
            Azure::Resources::Mgmt::V2018_06_01::Models::ApplicationDefinition
          end
          def provisioning_state
            Azure::Resources::Mgmt::V2018_06_01::Models::ProvisioningState
          end
          def application_lock_level
            Azure::Resources::Mgmt::V2018_06_01::Models::ApplicationLockLevel
          end
          def application_artifact_type
            Azure::Resources::Mgmt::V2018_06_01::Models::ApplicationArtifactType
          end
          def resource_identity_type
            Azure::Resources::Mgmt::V2018_06_01::Models::ResourceIdentityType
          end
        end
      end
    end
  end
end
