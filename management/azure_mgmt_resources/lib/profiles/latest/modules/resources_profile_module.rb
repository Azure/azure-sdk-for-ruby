# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_resources'

module Azure::Resources::Profiles::Latest
  module Mgmt
    Operations = Azure::Resources::Mgmt::V2019_05_10::Operations
    Deployments = Azure::Resources::Mgmt::V2019_05_10::Deployments
    Providers = Azure::Resources::Mgmt::V2019_05_10::Providers
    Resources = Azure::Resources::Mgmt::V2019_05_10::Resources
    ResourceGroups = Azure::Resources::Mgmt::V2019_05_10::ResourceGroups
    Tags = Azure::Resources::Mgmt::V2019_05_10::Tags
    DeploymentOperations = Azure::Resources::Mgmt::V2019_05_10::DeploymentOperations

    module Models
      IdentityUserAssignedIdentitiesValue = Azure::Resources::Mgmt::V2019_05_10::Models::IdentityUserAssignedIdentitiesValue
      Identity = Azure::Resources::Mgmt::V2019_05_10::Models::Identity
      GenericResourceFilter = Azure::Resources::Mgmt::V2019_05_10::Models::GenericResourceFilter
      ResourceGroupFilter = Azure::Resources::Mgmt::V2019_05_10::Models::ResourceGroupFilter
      ParametersLink = Azure::Resources::Mgmt::V2019_05_10::Models::ParametersLink
      ResourceListResult = Azure::Resources::Mgmt::V2019_05_10::Models::ResourceListResult
      OnErrorDeployment = Azure::Resources::Mgmt::V2019_05_10::Models::OnErrorDeployment
      ResourceGroupProperties = Azure::Resources::Mgmt::V2019_05_10::Models::ResourceGroupProperties
      Deployment = Azure::Resources::Mgmt::V2019_05_10::Models::Deployment
      ResourceGroup = Azure::Resources::Mgmt::V2019_05_10::Models::ResourceGroup
      ResourceManagementErrorWithDetails = Azure::Resources::Mgmt::V2019_05_10::Models::ResourceManagementErrorWithDetails
      ResourceGroupPatchable = Azure::Resources::Mgmt::V2019_05_10::Models::ResourceGroupPatchable
      AliasType = Azure::Resources::Mgmt::V2019_05_10::Models::AliasType
      ResourceGroupListResult = Azure::Resources::Mgmt::V2019_05_10::Models::ResourceGroupListResult
      Provider = Azure::Resources::Mgmt::V2019_05_10::Models::Provider
      ResourcesMoveInfo = Azure::Resources::Mgmt::V2019_05_10::Models::ResourcesMoveInfo
      Dependency = Azure::Resources::Mgmt::V2019_05_10::Models::Dependency
      ExportTemplateRequest = Azure::Resources::Mgmt::V2019_05_10::Models::ExportTemplateRequest
      DeploymentPropertiesExtended = Azure::Resources::Mgmt::V2019_05_10::Models::DeploymentPropertiesExtended
      TagCount = Azure::Resources::Mgmt::V2019_05_10::Models::TagCount
      DeploymentExtended = Azure::Resources::Mgmt::V2019_05_10::Models::DeploymentExtended
      TagValue = Azure::Resources::Mgmt::V2019_05_10::Models::TagValue
      ProviderListResult = Azure::Resources::Mgmt::V2019_05_10::Models::ProviderListResult
      TagDetails = Azure::Resources::Mgmt::V2019_05_10::Models::TagDetails
      Sku = Azure::Resources::Mgmt::V2019_05_10::Models::Sku
      TagsListResult = Azure::Resources::Mgmt::V2019_05_10::Models::TagsListResult
      TemplateLink = Azure::Resources::Mgmt::V2019_05_10::Models::TemplateLink
      TargetResource = Azure::Resources::Mgmt::V2019_05_10::Models::TargetResource
      DeploymentProperties = Azure::Resources::Mgmt::V2019_05_10::Models::DeploymentProperties
      HttpMessage = Azure::Resources::Mgmt::V2019_05_10::Models::HttpMessage
      AliasPathType = Azure::Resources::Mgmt::V2019_05_10::Models::AliasPathType
      DeploymentOperationProperties = Azure::Resources::Mgmt::V2019_05_10::Models::DeploymentOperationProperties
      BasicDependency = Azure::Resources::Mgmt::V2019_05_10::Models::BasicDependency
      DeploymentOperation = Azure::Resources::Mgmt::V2019_05_10::Models::DeploymentOperation
      DeploymentValidateResult = Azure::Resources::Mgmt::V2019_05_10::Models::DeploymentValidateResult
      DeploymentOperationsListResult = Azure::Resources::Mgmt::V2019_05_10::Models::DeploymentOperationsListResult
      Plan = Azure::Resources::Mgmt::V2019_05_10::Models::Plan
      ResourceProviderOperationDisplayProperties = Azure::Resources::Mgmt::V2019_05_10::Models::ResourceProviderOperationDisplayProperties
      DebugSetting = Azure::Resources::Mgmt::V2019_05_10::Models::DebugSetting
      Resource = Azure::Resources::Mgmt::V2019_05_10::Models::Resource
      ProviderResourceType = Azure::Resources::Mgmt::V2019_05_10::Models::ProviderResourceType
      SubResource = Azure::Resources::Mgmt::V2019_05_10::Models::SubResource
      DeploymentListResult = Azure::Resources::Mgmt::V2019_05_10::Models::DeploymentListResult
      ResourceGroupExportResult = Azure::Resources::Mgmt::V2019_05_10::Models::ResourceGroupExportResult
      DeploymentExportResult = Azure::Resources::Mgmt::V2019_05_10::Models::DeploymentExportResult
      OperationDisplay = Azure::Resources::Mgmt::V2019_05_10::Models::OperationDisplay
      DeploymentExtendedFilter = Azure::Resources::Mgmt::V2019_05_10::Models::DeploymentExtendedFilter
      Operation = Azure::Resources::Mgmt::V2019_05_10::Models::Operation
      OnErrorDeploymentExtended = Azure::Resources::Mgmt::V2019_05_10::Models::OnErrorDeploymentExtended
      OperationListResult = Azure::Resources::Mgmt::V2019_05_10::Models::OperationListResult
      GenericResource = Azure::Resources::Mgmt::V2019_05_10::Models::GenericResource
      DeploymentMode = Azure::Resources::Mgmt::V2019_05_10::Models::DeploymentMode
      OnErrorDeploymentType = Azure::Resources::Mgmt::V2019_05_10::Models::OnErrorDeploymentType
      ResourceIdentityType = Azure::Resources::Mgmt::V2019_05_10::Models::ResourceIdentityType
    end

    #
    # ResourcesManagementClass
    #
    class ResourcesManagementClass
      attr_reader :operations, :deployments, :providers, :resources, :resource_groups, :tags, :deployment_operations, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::Resources::Mgmt::V2019_05_10::ResourceManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @operations = @client_0.operations
        @deployments = @client_0.deployments
        @providers = @client_0.providers
        @resources = @client_0.resources
        @resource_groups = @client_0.resource_groups
        @tags = @client_0.tags
        @deployment_operations = @client_0.deployment_operations

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/Resources/Mgmt'
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
      def identity_user_assigned_identities_value
        Azure::Resources::Mgmt::V2019_05_10::Models::IdentityUserAssignedIdentitiesValue
      end
      def identity
        Azure::Resources::Mgmt::V2019_05_10::Models::Identity
      end
      def generic_resource_filter
        Azure::Resources::Mgmt::V2019_05_10::Models::GenericResourceFilter
      end
      def resource_group_filter
        Azure::Resources::Mgmt::V2019_05_10::Models::ResourceGroupFilter
      end
      def parameters_link
        Azure::Resources::Mgmt::V2019_05_10::Models::ParametersLink
      end
      def resource_list_result
        Azure::Resources::Mgmt::V2019_05_10::Models::ResourceListResult
      end
      def on_error_deployment
        Azure::Resources::Mgmt::V2019_05_10::Models::OnErrorDeployment
      end
      def resource_group_properties
        Azure::Resources::Mgmt::V2019_05_10::Models::ResourceGroupProperties
      end
      def deployment
        Azure::Resources::Mgmt::V2019_05_10::Models::Deployment
      end
      def resource_group
        Azure::Resources::Mgmt::V2019_05_10::Models::ResourceGroup
      end
      def resource_management_error_with_details
        Azure::Resources::Mgmt::V2019_05_10::Models::ResourceManagementErrorWithDetails
      end
      def resource_group_patchable
        Azure::Resources::Mgmt::V2019_05_10::Models::ResourceGroupPatchable
      end
      def alias_type
        Azure::Resources::Mgmt::V2019_05_10::Models::AliasType
      end
      def resource_group_list_result
        Azure::Resources::Mgmt::V2019_05_10::Models::ResourceGroupListResult
      end
      def provider
        Azure::Resources::Mgmt::V2019_05_10::Models::Provider
      end
      def resources_move_info
        Azure::Resources::Mgmt::V2019_05_10::Models::ResourcesMoveInfo
      end
      def dependency
        Azure::Resources::Mgmt::V2019_05_10::Models::Dependency
      end
      def export_template_request
        Azure::Resources::Mgmt::V2019_05_10::Models::ExportTemplateRequest
      end
      def deployment_properties_extended
        Azure::Resources::Mgmt::V2019_05_10::Models::DeploymentPropertiesExtended
      end
      def tag_count
        Azure::Resources::Mgmt::V2019_05_10::Models::TagCount
      end
      def deployment_extended
        Azure::Resources::Mgmt::V2019_05_10::Models::DeploymentExtended
      end
      def tag_value
        Azure::Resources::Mgmt::V2019_05_10::Models::TagValue
      end
      def provider_list_result
        Azure::Resources::Mgmt::V2019_05_10::Models::ProviderListResult
      end
      def tag_details
        Azure::Resources::Mgmt::V2019_05_10::Models::TagDetails
      end
      def sku
        Azure::Resources::Mgmt::V2019_05_10::Models::Sku
      end
      def tags_list_result
        Azure::Resources::Mgmt::V2019_05_10::Models::TagsListResult
      end
      def template_link
        Azure::Resources::Mgmt::V2019_05_10::Models::TemplateLink
      end
      def target_resource
        Azure::Resources::Mgmt::V2019_05_10::Models::TargetResource
      end
      def deployment_properties
        Azure::Resources::Mgmt::V2019_05_10::Models::DeploymentProperties
      end
      def http_message
        Azure::Resources::Mgmt::V2019_05_10::Models::HttpMessage
      end
      def alias_path_type
        Azure::Resources::Mgmt::V2019_05_10::Models::AliasPathType
      end
      def deployment_operation_properties
        Azure::Resources::Mgmt::V2019_05_10::Models::DeploymentOperationProperties
      end
      def basic_dependency
        Azure::Resources::Mgmt::V2019_05_10::Models::BasicDependency
      end
      def deployment_operation
        Azure::Resources::Mgmt::V2019_05_10::Models::DeploymentOperation
      end
      def deployment_validate_result
        Azure::Resources::Mgmt::V2019_05_10::Models::DeploymentValidateResult
      end
      def deployment_operations_list_result
        Azure::Resources::Mgmt::V2019_05_10::Models::DeploymentOperationsListResult
      end
      def plan
        Azure::Resources::Mgmt::V2019_05_10::Models::Plan
      end
      def resource_provider_operation_display_properties
        Azure::Resources::Mgmt::V2019_05_10::Models::ResourceProviderOperationDisplayProperties
      end
      def debug_setting
        Azure::Resources::Mgmt::V2019_05_10::Models::DebugSetting
      end
      def resource
        Azure::Resources::Mgmt::V2019_05_10::Models::Resource
      end
      def provider_resource_type
        Azure::Resources::Mgmt::V2019_05_10::Models::ProviderResourceType
      end
      def sub_resource
        Azure::Resources::Mgmt::V2019_05_10::Models::SubResource
      end
      def deployment_list_result
        Azure::Resources::Mgmt::V2019_05_10::Models::DeploymentListResult
      end
      def resource_group_export_result
        Azure::Resources::Mgmt::V2019_05_10::Models::ResourceGroupExportResult
      end
      def deployment_export_result
        Azure::Resources::Mgmt::V2019_05_10::Models::DeploymentExportResult
      end
      def operation_display
        Azure::Resources::Mgmt::V2019_05_10::Models::OperationDisplay
      end
      def deployment_extended_filter
        Azure::Resources::Mgmt::V2019_05_10::Models::DeploymentExtendedFilter
      end
      def operation
        Azure::Resources::Mgmt::V2019_05_10::Models::Operation
      end
      def on_error_deployment_extended
        Azure::Resources::Mgmt::V2019_05_10::Models::OnErrorDeploymentExtended
      end
      def operation_list_result
        Azure::Resources::Mgmt::V2019_05_10::Models::OperationListResult
      end
      def generic_resource
        Azure::Resources::Mgmt::V2019_05_10::Models::GenericResource
      end
      def deployment_mode
        Azure::Resources::Mgmt::V2019_05_10::Models::DeploymentMode
      end
      def on_error_deployment_type
        Azure::Resources::Mgmt::V2019_05_10::Models::OnErrorDeploymentType
      end
      def resource_identity_type
        Azure::Resources::Mgmt::V2019_05_10::Models::ResourceIdentityType
      end
    end
  end
end
