# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_managed_applications'

module Azure::ManagedApplications::Profiles::Latest
  module Mgmt
    Applications = Azure::ManagedApplications::Mgmt::V2018_06_01::Applications
    ApplicationDefinitions = Azure::ManagedApplications::Mgmt::V2018_06_01::ApplicationDefinitions

    module Models
      Sku = Azure::ManagedApplications::Mgmt::V2018_06_01::Models::Sku
      Plan = Azure::ManagedApplications::Mgmt::V2018_06_01::Models::Plan
      Identity = Azure::ManagedApplications::Mgmt::V2018_06_01::Models::Identity
      PlanPatchable = Azure::ManagedApplications::Mgmt::V2018_06_01::Models::PlanPatchable
      ErrorResponse = Azure::ManagedApplications::Mgmt::V2018_06_01::Models::ErrorResponse
      ApplicationProviderAuthorization = Azure::ManagedApplications::Mgmt::V2018_06_01::Models::ApplicationProviderAuthorization
      ApplicationDefinitionListResult = Azure::ManagedApplications::Mgmt::V2018_06_01::Models::ApplicationDefinitionListResult
      ApplicationListResult = Azure::ManagedApplications::Mgmt::V2018_06_01::Models::ApplicationListResult
      ApplicationArtifact = Azure::ManagedApplications::Mgmt::V2018_06_01::Models::ApplicationArtifact
      Resource = Azure::ManagedApplications::Mgmt::V2018_06_01::Models::Resource
      GenericResource = Azure::ManagedApplications::Mgmt::V2018_06_01::Models::GenericResource
      Application = Azure::ManagedApplications::Mgmt::V2018_06_01::Models::Application
      ApplicationPatchable = Azure::ManagedApplications::Mgmt::V2018_06_01::Models::ApplicationPatchable
      ApplicationDefinition = Azure::ManagedApplications::Mgmt::V2018_06_01::Models::ApplicationDefinition
      ProvisioningState = Azure::ManagedApplications::Mgmt::V2018_06_01::Models::ProvisioningState
      ApplicationLockLevel = Azure::ManagedApplications::Mgmt::V2018_06_01::Models::ApplicationLockLevel
      ApplicationArtifactType = Azure::ManagedApplications::Mgmt::V2018_06_01::Models::ApplicationArtifactType
      ResourceIdentityType = Azure::ManagedApplications::Mgmt::V2018_06_01::Models::ResourceIdentityType
    end

    #
    # ManagedApplicationsManagementClass
    #
    class ManagedApplicationsManagementClass
      attr_reader :applications, :application_definitions, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        @options = if options.is_a?(Hash) && options.empty?
                     setup_default_options
                   else
                     options
                   end

        reset!(options)

        @configurable = self
        @base_url = options[:base_url].nil? ? nil : options[:base_url]
        @options = options[:options].nil? ? nil : options[:options]

        @client_0 = Azure::ManagedApplications::Mgmt::V2018_06_01::ApplicationClient.new(configurable.credentials, base_url, options)
        if @client_0.respond_to?(:subscription_id)
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @applications = @client_0.applications
        @application_definitions = @client_0.application_definitions

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/ManagedApplications/Mgmt'
        client.add_user_agent_information(profile_information)
      end

      def method_missing(method, *args)
        if @client_0.respond_to? method
          @client_0.send(method, *args)
        else
          super
        end
      end
    end

    class ModelClasses
      def sku
        Azure::ManagedApplications::Mgmt::V2018_06_01::Models::Sku
      end

      def plan
        Azure::ManagedApplications::Mgmt::V2018_06_01::Models::Plan
      end

      def identity
        Azure::ManagedApplications::Mgmt::V2018_06_01::Models::Identity
      end

      def plan_patchable
        Azure::ManagedApplications::Mgmt::V2018_06_01::Models::PlanPatchable
      end

      def error_response
        Azure::ManagedApplications::Mgmt::V2018_06_01::Models::ErrorResponse
      end

      def application_provider_authorization
        Azure::ManagedApplications::Mgmt::V2018_06_01::Models::ApplicationProviderAuthorization
      end

      def application_definition_list_result
        Azure::ManagedApplications::Mgmt::V2018_06_01::Models::ApplicationDefinitionListResult
      end

      def application_list_result
        Azure::ManagedApplications::Mgmt::V2018_06_01::Models::ApplicationListResult
      end

      def application_artifact
        Azure::ManagedApplications::Mgmt::V2018_06_01::Models::ApplicationArtifact
      end

      def resource
        Azure::ManagedApplications::Mgmt::V2018_06_01::Models::Resource
      end

      def generic_resource
        Azure::ManagedApplications::Mgmt::V2018_06_01::Models::GenericResource
      end

      def application
        Azure::ManagedApplications::Mgmt::V2018_06_01::Models::Application
      end

      def application_patchable
        Azure::ManagedApplications::Mgmt::V2018_06_01::Models::ApplicationPatchable
      end

      def application_definition
        Azure::ManagedApplications::Mgmt::V2018_06_01::Models::ApplicationDefinition
      end

      def provisioning_state
        Azure::ManagedApplications::Mgmt::V2018_06_01::Models::ProvisioningState
      end

      def application_lock_level
        Azure::ManagedApplications::Mgmt::V2018_06_01::Models::ApplicationLockLevel
      end

      def application_artifact_type
        Azure::ManagedApplications::Mgmt::V2018_06_01::Models::ApplicationArtifactType
      end

      def resource_identity_type
        Azure::ManagedApplications::Mgmt::V2018_06_01::Models::ResourceIdentityType
      end
    end
  end
end
