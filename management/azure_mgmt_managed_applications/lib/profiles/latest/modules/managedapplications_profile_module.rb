# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_managed_applications'

module Azure::ManagedApplications::Profiles::Latest
  module Mgmt
    Appliances = Azure::ManagedApplications::Mgmt::V2016_09_01_preview::Appliances
    ApplianceDefinitions = Azure::ManagedApplications::Mgmt::V2016_09_01_preview::ApplianceDefinitions

    module Models
      Sku = Azure::ManagedApplications::Mgmt::V2016_09_01_preview::Models::Sku
      Plan = Azure::ManagedApplications::Mgmt::V2016_09_01_preview::Models::Plan
      Identity = Azure::ManagedApplications::Mgmt::V2016_09_01_preview::Models::Identity
      PlanPatchable = Azure::ManagedApplications::Mgmt::V2016_09_01_preview::Models::PlanPatchable
      ErrorResponse = Azure::ManagedApplications::Mgmt::V2016_09_01_preview::Models::ErrorResponse
      ApplianceProviderAuthorization = Azure::ManagedApplications::Mgmt::V2016_09_01_preview::Models::ApplianceProviderAuthorization
      ApplianceDefinitionListResult = Azure::ManagedApplications::Mgmt::V2016_09_01_preview::Models::ApplianceDefinitionListResult
      ApplianceListResult = Azure::ManagedApplications::Mgmt::V2016_09_01_preview::Models::ApplianceListResult
      ApplianceArtifact = Azure::ManagedApplications::Mgmt::V2016_09_01_preview::Models::ApplianceArtifact
      Resource = Azure::ManagedApplications::Mgmt::V2016_09_01_preview::Models::Resource
      GenericResource = Azure::ManagedApplications::Mgmt::V2016_09_01_preview::Models::GenericResource
      Appliance = Azure::ManagedApplications::Mgmt::V2016_09_01_preview::Models::Appliance
      AppliancePatchable = Azure::ManagedApplications::Mgmt::V2016_09_01_preview::Models::AppliancePatchable
      ApplianceDefinition = Azure::ManagedApplications::Mgmt::V2016_09_01_preview::Models::ApplianceDefinition
      ProvisioningState = Azure::ManagedApplications::Mgmt::V2016_09_01_preview::Models::ProvisioningState
      ApplianceLockLevel = Azure::ManagedApplications::Mgmt::V2016_09_01_preview::Models::ApplianceLockLevel
      ApplianceArtifactType = Azure::ManagedApplications::Mgmt::V2016_09_01_preview::Models::ApplianceArtifactType
      ResourceIdentityType = Azure::ManagedApplications::Mgmt::V2016_09_01_preview::Models::ResourceIdentityType
    end

    #
    # ManagedApplicationsManagementClass
    #
    class ManagedApplicationsManagementClass
      attr_reader :appliances, :appliance_definitions, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        if options.is_a?(Hash) && options.length == 0
          @options = setup_default_options
        else
          @options = options
        end

        reset!(options)

        @configurable, @base_url, @options = self, nil, nil

        client_0 = Azure::ManagedApplications::Mgmt::V2016_09_01_preview::ManagedApplicationClient.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(client_0)
        @appliances = client_0.appliances
        @appliance_definitions = client_0.appliance_definitions

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Mgmt/ManagedApplications'
        profile_information = "#{profile_information}/Latest"
        client.add_user_agent_information(profile_information)
      end

    end

    class ModelClasses
      def sku
        Azure::ManagedApplications::Mgmt::V2016_09_01_preview::Models::Sku
      end
      def plan
        Azure::ManagedApplications::Mgmt::V2016_09_01_preview::Models::Plan
      end
      def identity
        Azure::ManagedApplications::Mgmt::V2016_09_01_preview::Models::Identity
      end
      def plan_patchable
        Azure::ManagedApplications::Mgmt::V2016_09_01_preview::Models::PlanPatchable
      end
      def error_response
        Azure::ManagedApplications::Mgmt::V2016_09_01_preview::Models::ErrorResponse
      end
      def appliance_provider_authorization
        Azure::ManagedApplications::Mgmt::V2016_09_01_preview::Models::ApplianceProviderAuthorization
      end
      def appliance_definition_list_result
        Azure::ManagedApplications::Mgmt::V2016_09_01_preview::Models::ApplianceDefinitionListResult
      end
      def appliance_list_result
        Azure::ManagedApplications::Mgmt::V2016_09_01_preview::Models::ApplianceListResult
      end
      def appliance_artifact
        Azure::ManagedApplications::Mgmt::V2016_09_01_preview::Models::ApplianceArtifact
      end
      def resource
        Azure::ManagedApplications::Mgmt::V2016_09_01_preview::Models::Resource
      end
      def generic_resource
        Azure::ManagedApplications::Mgmt::V2016_09_01_preview::Models::GenericResource
      end
      def appliance
        Azure::ManagedApplications::Mgmt::V2016_09_01_preview::Models::Appliance
      end
      def appliance_patchable
        Azure::ManagedApplications::Mgmt::V2016_09_01_preview::Models::AppliancePatchable
      end
      def appliance_definition
        Azure::ManagedApplications::Mgmt::V2016_09_01_preview::Models::ApplianceDefinition
      end
      def provisioning_state
        Azure::ManagedApplications::Mgmt::V2016_09_01_preview::Models::ProvisioningState
      end
      def appliance_lock_level
        Azure::ManagedApplications::Mgmt::V2016_09_01_preview::Models::ApplianceLockLevel
      end
      def appliance_artifact_type
        Azure::ManagedApplications::Mgmt::V2016_09_01_preview::Models::ApplianceArtifactType
      end
      def resource_identity_type
        Azure::ManagedApplications::Mgmt::V2016_09_01_preview::Models::ResourceIdentityType
      end
    end
  end
end
