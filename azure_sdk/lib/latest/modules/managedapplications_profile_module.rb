# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_managed_applications'

module Azure::Profiles::Latest
  module ManagedApplications
    module Mgmt
      Applications = Azure::ManagedApplications::Mgmt::V2018_06_01::Applications
      ApplicationDefinitions = Azure::ManagedApplications::Mgmt::V2018_06_01::ApplicationDefinitions

      module Models
        Application = Azure::ManagedApplications::Mgmt::V2018_06_01::Models::Application
        PlanPatchable = Azure::ManagedApplications::Mgmt::V2018_06_01::Models::PlanPatchable
        ApplicationProviderAuthorization = Azure::ManagedApplications::Mgmt::V2018_06_01::Models::ApplicationProviderAuthorization
        ApplicationDefinitionListResult = Azure::ManagedApplications::Mgmt::V2018_06_01::Models::ApplicationDefinitionListResult
        Identity = Azure::ManagedApplications::Mgmt::V2018_06_01::Models::Identity
        ApplicationArtifact = Azure::ManagedApplications::Mgmt::V2018_06_01::Models::ApplicationArtifact
        ApplicationPatchable = Azure::ManagedApplications::Mgmt::V2018_06_01::Models::ApplicationPatchable
        ApplicationDefinition = Azure::ManagedApplications::Mgmt::V2018_06_01::Models::ApplicationDefinition
        ApplicationLockLevel = Azure::ManagedApplications::Mgmt::V2018_06_01::Models::ApplicationLockLevel
        ApplicationArtifactType = Azure::ManagedApplications::Mgmt::V2018_06_01::Models::ApplicationArtifactType
        GenericResource = Azure::ManagedApplications::Mgmt::V2018_06_01::Models::GenericResource
        Resource = Azure::ManagedApplications::Mgmt::V2018_06_01::Models::Resource
        Plan = Azure::ManagedApplications::Mgmt::V2018_06_01::Models::Plan
        ProvisioningState = Azure::ManagedApplications::Mgmt::V2018_06_01::Models::ProvisioningState
        ResourceIdentityType = Azure::ManagedApplications::Mgmt::V2018_06_01::Models::ResourceIdentityType
        Sku = Azure::ManagedApplications::Mgmt::V2018_06_01::Models::Sku
        ErrorResponse = Azure::ManagedApplications::Mgmt::V2018_06_01::Models::ErrorResponse
        ApplicationListResult = Azure::ManagedApplications::Mgmt::V2018_06_01::Models::ApplicationListResult
      end

      class ManagedApplicationsManagementClass
        attr_reader :applications, :application_definitions, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::ManagedApplications::Mgmt::V2018_06_01::ApplicationClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @applications = @client_0.applications
          @application_definitions = @client_0.application_definitions

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/ManagedApplications/Mgmt"
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
          def application
            Azure::ManagedApplications::Mgmt::V2018_06_01::Models::Application
          end
          def plan_patchable
            Azure::ManagedApplications::Mgmt::V2018_06_01::Models::PlanPatchable
          end
          def application_provider_authorization
            Azure::ManagedApplications::Mgmt::V2018_06_01::Models::ApplicationProviderAuthorization
          end
          def application_definition_list_result
            Azure::ManagedApplications::Mgmt::V2018_06_01::Models::ApplicationDefinitionListResult
          end
          def identity
            Azure::ManagedApplications::Mgmt::V2018_06_01::Models::Identity
          end
          def application_artifact
            Azure::ManagedApplications::Mgmt::V2018_06_01::Models::ApplicationArtifact
          end
          def application_patchable
            Azure::ManagedApplications::Mgmt::V2018_06_01::Models::ApplicationPatchable
          end
          def application_definition
            Azure::ManagedApplications::Mgmt::V2018_06_01::Models::ApplicationDefinition
          end
          def application_lock_level
            Azure::ManagedApplications::Mgmt::V2018_06_01::Models::ApplicationLockLevel
          end
          def application_artifact_type
            Azure::ManagedApplications::Mgmt::V2018_06_01::Models::ApplicationArtifactType
          end
          def generic_resource
            Azure::ManagedApplications::Mgmt::V2018_06_01::Models::GenericResource
          end
          def resource
            Azure::ManagedApplications::Mgmt::V2018_06_01::Models::Resource
          end
          def plan
            Azure::ManagedApplications::Mgmt::V2018_06_01::Models::Plan
          end
          def provisioning_state
            Azure::ManagedApplications::Mgmt::V2018_06_01::Models::ProvisioningState
          end
          def resource_identity_type
            Azure::ManagedApplications::Mgmt::V2018_06_01::Models::ResourceIdentityType
          end
          def sku
            Azure::ManagedApplications::Mgmt::V2018_06_01::Models::Sku
          end
          def error_response
            Azure::ManagedApplications::Mgmt::V2018_06_01::Models::ErrorResponse
          end
          def application_list_result
            Azure::ManagedApplications::Mgmt::V2018_06_01::Models::ApplicationListResult
          end
        end
      end
    end
  end
end
