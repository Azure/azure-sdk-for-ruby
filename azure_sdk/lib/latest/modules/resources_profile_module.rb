# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_resources'

module Azure::Profiles::Latest
  module Resources
    module Mgmt
      ResourceGroups = Azure::Resources::Mgmt::V2018_05_01::ResourceGroups
      Tags = Azure::Resources::Mgmt::V2018_05_01::Tags
      DeploymentOperations = Azure::Resources::Mgmt::V2018_05_01::DeploymentOperations
      Resources = Azure::Resources::Mgmt::V2018_05_01::Resources
      Deployments = Azure::Resources::Mgmt::V2018_05_01::Deployments
      Providers = Azure::Resources::Mgmt::V2018_05_01::Providers

      module Models
        Dependency = Azure::Resources::Mgmt::V2018_05_01::Models::Dependency
        Plan = Azure::Resources::Mgmt::V2018_05_01::Models::Plan
        IdentityUserAssignedIdentitiesValue = Azure::Resources::Mgmt::V2018_05_01::Models::IdentityUserAssignedIdentitiesValue
        ResourceGroupPatchable = Azure::Resources::Mgmt::V2018_05_01::Models::ResourceGroupPatchable
        OnErrorDeploymentExtended = Azure::Resources::Mgmt::V2018_05_01::Models::OnErrorDeploymentExtended
        OnErrorDeployment = Azure::Resources::Mgmt::V2018_05_01::Models::OnErrorDeployment
        OnErrorDeploymentType = Azure::Resources::Mgmt::V2018_05_01::Models::OnErrorDeploymentType
        DeploymentExtendedFilter = Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentExtendedFilter
        Identity = Azure::Resources::Mgmt::V2018_05_01::Models::Identity
        ResourceGroupFilter = Azure::Resources::Mgmt::V2018_05_01::Models::ResourceGroupFilter
        TemplateLink = Azure::Resources::Mgmt::V2018_05_01::Models::TemplateLink
        DebugSetting = Azure::Resources::Mgmt::V2018_05_01::Models::DebugSetting
        ResourceListResult = Azure::Resources::Mgmt::V2018_05_01::Models::ResourceListResult
        Sku = Azure::Resources::Mgmt::V2018_05_01::Models::Sku
        ResourceGroupProperties = Azure::Resources::Mgmt::V2018_05_01::Models::ResourceGroupProperties
        ResourceManagementErrorWithDetails = Azure::Resources::Mgmt::V2018_05_01::Models::ResourceManagementErrorWithDetails
        ResourceGroup = Azure::Resources::Mgmt::V2018_05_01::Models::ResourceGroup
        AliasType = Azure::Resources::Mgmt::V2018_05_01::Models::AliasType
        ResourceGroupListResult = Azure::Resources::Mgmt::V2018_05_01::Models::ResourceGroupListResult
        Deployment = Azure::Resources::Mgmt::V2018_05_01::Models::Deployment
        ResourcesMoveInfo = Azure::Resources::Mgmt::V2018_05_01::Models::ResourcesMoveInfo
        ExportTemplateRequest = Azure::Resources::Mgmt::V2018_05_01::Models::ExportTemplateRequest
        DeploymentValidateResult = Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentValidateResult
        TagCount = Azure::Resources::Mgmt::V2018_05_01::Models::TagCount
        DeploymentListResult = Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentListResult
        TagValue = Azure::Resources::Mgmt::V2018_05_01::Models::TagValue
        TagDetails = Azure::Resources::Mgmt::V2018_05_01::Models::TagDetails
        ParametersLink = Azure::Resources::Mgmt::V2018_05_01::Models::ParametersLink
        TagsListResult = Azure::Resources::Mgmt::V2018_05_01::Models::TagsListResult
        DeploymentExportResult = Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentExportResult
        TargetResource = Azure::Resources::Mgmt::V2018_05_01::Models::TargetResource
        ProviderResourceType = Azure::Resources::Mgmt::V2018_05_01::Models::ProviderResourceType
        HttpMessage = Azure::Resources::Mgmt::V2018_05_01::Models::HttpMessage
        DeploymentPropertiesExtended = Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentPropertiesExtended
        DeploymentOperationProperties = Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentOperationProperties
        ProviderListResult = Azure::Resources::Mgmt::V2018_05_01::Models::ProviderListResult
        DeploymentOperation = Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentOperation
        DeploymentProperties = Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentProperties
        DeploymentOperationsListResult = Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentOperationsListResult
        BasicDependency = Azure::Resources::Mgmt::V2018_05_01::Models::BasicDependency
        ResourceProviderOperationDisplayProperties = Azure::Resources::Mgmt::V2018_05_01::Models::ResourceProviderOperationDisplayProperties
        GenericResourceFilter = Azure::Resources::Mgmt::V2018_05_01::Models::GenericResourceFilter
        DeploymentExtended = Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentExtended
        AliasPathType = Azure::Resources::Mgmt::V2018_05_01::Models::AliasPathType
        ResourceGroupExportResult = Azure::Resources::Mgmt::V2018_05_01::Models::ResourceGroupExportResult
        GenericResource = Azure::Resources::Mgmt::V2018_05_01::Models::GenericResource
        DeploymentMode = Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentMode
        Provider = Azure::Resources::Mgmt::V2018_05_01::Models::Provider
        Resource = Azure::Resources::Mgmt::V2018_05_01::Models::Resource
        ResourceIdentityType = Azure::Resources::Mgmt::V2018_05_01::Models::ResourceIdentityType
        SubResource = Azure::Resources::Mgmt::V2018_05_01::Models::SubResource
      end

      class ResourcesManagementClass
        attr_reader :resource_groups, :tags, :deployment_operations, :resources, :deployments, :providers, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Resources::Mgmt::V2018_05_01::ResourceManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @resource_groups = @client_0.resource_groups
          @tags = @client_0.tags
          @deployment_operations = @client_0.deployment_operations
          @resources = @client_0.resources
          @deployments = @client_0.deployments
          @providers = @client_0.providers

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Resources/Mgmt"
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
          def dependency
            Azure::Resources::Mgmt::V2018_05_01::Models::Dependency
          end
          def plan
            Azure::Resources::Mgmt::V2018_05_01::Models::Plan
          end
          def identity_user_assigned_identities_value
            Azure::Resources::Mgmt::V2018_05_01::Models::IdentityUserAssignedIdentitiesValue
          end
          def resource_group_patchable
            Azure::Resources::Mgmt::V2018_05_01::Models::ResourceGroupPatchable
          end
          def on_error_deployment_extended
            Azure::Resources::Mgmt::V2018_05_01::Models::OnErrorDeploymentExtended
          end
          def on_error_deployment
            Azure::Resources::Mgmt::V2018_05_01::Models::OnErrorDeployment
          end
          def on_error_deployment_type
            Azure::Resources::Mgmt::V2018_05_01::Models::OnErrorDeploymentType
          end
          def deployment_extended_filter
            Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentExtendedFilter
          end
          def identity
            Azure::Resources::Mgmt::V2018_05_01::Models::Identity
          end
          def resource_group_filter
            Azure::Resources::Mgmt::V2018_05_01::Models::ResourceGroupFilter
          end
          def template_link
            Azure::Resources::Mgmt::V2018_05_01::Models::TemplateLink
          end
          def debug_setting
            Azure::Resources::Mgmt::V2018_05_01::Models::DebugSetting
          end
          def resource_list_result
            Azure::Resources::Mgmt::V2018_05_01::Models::ResourceListResult
          end
          def sku
            Azure::Resources::Mgmt::V2018_05_01::Models::Sku
          end
          def resource_group_properties
            Azure::Resources::Mgmt::V2018_05_01::Models::ResourceGroupProperties
          end
          def resource_management_error_with_details
            Azure::Resources::Mgmt::V2018_05_01::Models::ResourceManagementErrorWithDetails
          end
          def resource_group
            Azure::Resources::Mgmt::V2018_05_01::Models::ResourceGroup
          end
          def alias_type
            Azure::Resources::Mgmt::V2018_05_01::Models::AliasType
          end
          def resource_group_list_result
            Azure::Resources::Mgmt::V2018_05_01::Models::ResourceGroupListResult
          end
          def deployment
            Azure::Resources::Mgmt::V2018_05_01::Models::Deployment
          end
          def resources_move_info
            Azure::Resources::Mgmt::V2018_05_01::Models::ResourcesMoveInfo
          end
          def export_template_request
            Azure::Resources::Mgmt::V2018_05_01::Models::ExportTemplateRequest
          end
          def deployment_validate_result
            Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentValidateResult
          end
          def tag_count
            Azure::Resources::Mgmt::V2018_05_01::Models::TagCount
          end
          def deployment_list_result
            Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentListResult
          end
          def tag_value
            Azure::Resources::Mgmt::V2018_05_01::Models::TagValue
          end
          def tag_details
            Azure::Resources::Mgmt::V2018_05_01::Models::TagDetails
          end
          def parameters_link
            Azure::Resources::Mgmt::V2018_05_01::Models::ParametersLink
          end
          def tags_list_result
            Azure::Resources::Mgmt::V2018_05_01::Models::TagsListResult
          end
          def deployment_export_result
            Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentExportResult
          end
          def target_resource
            Azure::Resources::Mgmt::V2018_05_01::Models::TargetResource
          end
          def provider_resource_type
            Azure::Resources::Mgmt::V2018_05_01::Models::ProviderResourceType
          end
          def http_message
            Azure::Resources::Mgmt::V2018_05_01::Models::HttpMessage
          end
          def deployment_properties_extended
            Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentPropertiesExtended
          end
          def deployment_operation_properties
            Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentOperationProperties
          end
          def provider_list_result
            Azure::Resources::Mgmt::V2018_05_01::Models::ProviderListResult
          end
          def deployment_operation
            Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentOperation
          end
          def deployment_properties
            Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentProperties
          end
          def deployment_operations_list_result
            Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentOperationsListResult
          end
          def basic_dependency
            Azure::Resources::Mgmt::V2018_05_01::Models::BasicDependency
          end
          def resource_provider_operation_display_properties
            Azure::Resources::Mgmt::V2018_05_01::Models::ResourceProviderOperationDisplayProperties
          end
          def generic_resource_filter
            Azure::Resources::Mgmt::V2018_05_01::Models::GenericResourceFilter
          end
          def deployment_extended
            Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentExtended
          end
          def alias_path_type
            Azure::Resources::Mgmt::V2018_05_01::Models::AliasPathType
          end
          def resource_group_export_result
            Azure::Resources::Mgmt::V2018_05_01::Models::ResourceGroupExportResult
          end
          def generic_resource
            Azure::Resources::Mgmt::V2018_05_01::Models::GenericResource
          end
          def deployment_mode
            Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentMode
          end
          def provider
            Azure::Resources::Mgmt::V2018_05_01::Models::Provider
          end
          def resource
            Azure::Resources::Mgmt::V2018_05_01::Models::Resource
          end
          def resource_identity_type
            Azure::Resources::Mgmt::V2018_05_01::Models::ResourceIdentityType
          end
          def sub_resource
            Azure::Resources::Mgmt::V2018_05_01::Models::SubResource
          end
        end
      end
    end
  end
end
