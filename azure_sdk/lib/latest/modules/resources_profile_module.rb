# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_resources'

module Azure::Profiles::Latest
  module Resources
    module Mgmt
      Resources = Azure::Resources::Mgmt::V2018_05_01::Resources
      Operations = Azure::Resources::Mgmt::V2018_05_01::Operations
      Deployments = Azure::Resources::Mgmt::V2018_05_01::Deployments
      Providers = Azure::Resources::Mgmt::V2018_05_01::Providers
      ResourceGroups = Azure::Resources::Mgmt::V2018_05_01::ResourceGroups
      Tags = Azure::Resources::Mgmt::V2018_05_01::Tags
      DeploymentOperations = Azure::Resources::Mgmt::V2018_05_01::DeploymentOperations

      module Models
        Plan = Azure::Resources::Mgmt::V2018_05_01::Models::Plan
        ResourceIdentityType = Azure::Resources::Mgmt::V2018_05_01::Models::ResourceIdentityType
        Sku = Azure::Resources::Mgmt::V2018_05_01::Models::Sku
        Dependency = Azure::Resources::Mgmt::V2018_05_01::Models::Dependency
        GenericResourceFilter = Azure::Resources::Mgmt::V2018_05_01::Models::GenericResourceFilter
        Identity = Azure::Resources::Mgmt::V2018_05_01::Models::Identity
        TemplateLink = Azure::Resources::Mgmt::V2018_05_01::Models::TemplateLink
        ParametersLink = Azure::Resources::Mgmt::V2018_05_01::Models::ParametersLink
        OnErrorDeployment = Azure::Resources::Mgmt::V2018_05_01::Models::OnErrorDeployment
        Deployment = Azure::Resources::Mgmt::V2018_05_01::Models::Deployment
        ResourceGroupProperties = Azure::Resources::Mgmt::V2018_05_01::Models::ResourceGroupProperties
        ResourceManagementErrorWithDetails = Azure::Resources::Mgmt::V2018_05_01::Models::ResourceManagementErrorWithDetails
        ResourceGroup = Azure::Resources::Mgmt::V2018_05_01::Models::ResourceGroup
        AliasType = Azure::Resources::Mgmt::V2018_05_01::Models::AliasType
        ResourceGroupPatchable = Azure::Resources::Mgmt::V2018_05_01::Models::ResourceGroupPatchable
        Provider = Azure::Resources::Mgmt::V2018_05_01::Models::Provider
        ResourceGroupListResult = Azure::Resources::Mgmt::V2018_05_01::Models::ResourceGroupListResult
        ResourcesMoveInfo = Azure::Resources::Mgmt::V2018_05_01::Models::ResourcesMoveInfo
        DeploymentPropertiesExtended = Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentPropertiesExtended
        IdentityUserAssignedIdentitiesValue = Azure::Resources::Mgmt::V2018_05_01::Models::IdentityUserAssignedIdentitiesValue
        ExportTemplateRequest = Azure::Resources::Mgmt::V2018_05_01::Models::ExportTemplateRequest
        TagCount = Azure::Resources::Mgmt::V2018_05_01::Models::TagCount
        ProviderListResult = Azure::Resources::Mgmt::V2018_05_01::Models::ProviderListResult
        DeploymentExtended = Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentExtended
        ResourceGroupFilter = Azure::Resources::Mgmt::V2018_05_01::Models::ResourceGroupFilter
        TagDetails = Azure::Resources::Mgmt::V2018_05_01::Models::TagDetails
        TagValue = Azure::Resources::Mgmt::V2018_05_01::Models::TagValue
        TagsListResult = Azure::Resources::Mgmt::V2018_05_01::Models::TagsListResult
        AliasPathType = Azure::Resources::Mgmt::V2018_05_01::Models::AliasPathType
        TargetResource = Azure::Resources::Mgmt::V2018_05_01::Models::TargetResource
        BasicDependency = Azure::Resources::Mgmt::V2018_05_01::Models::BasicDependency
        HttpMessage = Azure::Resources::Mgmt::V2018_05_01::Models::HttpMessage
        DeploymentProperties = Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentProperties
        DeploymentOperationProperties = Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentOperationProperties
        DeploymentExtendedFilter = Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentExtendedFilter
        DeploymentOperation = Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentOperation
        DeploymentExportResult = Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentExportResult
        DeploymentOperationsListResult = Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentOperationsListResult
        DeploymentValidateResult = Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentValidateResult
        ResourceProviderOperationDisplayProperties = Azure::Resources::Mgmt::V2018_05_01::Models::ResourceProviderOperationDisplayProperties
        DebugSetting = Azure::Resources::Mgmt::V2018_05_01::Models::DebugSetting
        Resource = Azure::Resources::Mgmt::V2018_05_01::Models::Resource
        ProviderResourceType = Azure::Resources::Mgmt::V2018_05_01::Models::ProviderResourceType
        ResourceGroupExportResult = Azure::Resources::Mgmt::V2018_05_01::Models::ResourceGroupExportResult
        DeploymentListResult = Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentListResult
        GenericResource = Azure::Resources::Mgmt::V2018_05_01::Models::GenericResource
        OperationDisplay = Azure::Resources::Mgmt::V2018_05_01::Models::OperationDisplay
        OnErrorDeploymentType = Azure::Resources::Mgmt::V2018_05_01::Models::OnErrorDeploymentType
        Operation = Azure::Resources::Mgmt::V2018_05_01::Models::Operation
        OperationListResult = Azure::Resources::Mgmt::V2018_05_01::Models::OperationListResult
        SubResource = Azure::Resources::Mgmt::V2018_05_01::Models::SubResource
        ResourceListResult = Azure::Resources::Mgmt::V2018_05_01::Models::ResourceListResult
        DeploymentMode = Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentMode
        OnErrorDeploymentExtended = Azure::Resources::Mgmt::V2018_05_01::Models::OnErrorDeploymentExtended
      end

      class ResourcesManagementClass
        attr_reader :resources, :operations, :deployments, :providers, :resource_groups, :tags, :deployment_operations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Resources::Mgmt::V2018_05_01::ResourceManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @resources = @client_0.resources
          @operations = @client_0.operations
          @deployments = @client_0.deployments
          @providers = @client_0.providers
          @resource_groups = @client_0.resource_groups
          @tags = @client_0.tags
          @deployment_operations = @client_0.deployment_operations

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
          def plan
            Azure::Resources::Mgmt::V2018_05_01::Models::Plan
          end
          def resource_identity_type
            Azure::Resources::Mgmt::V2018_05_01::Models::ResourceIdentityType
          end
          def sku
            Azure::Resources::Mgmt::V2018_05_01::Models::Sku
          end
          def dependency
            Azure::Resources::Mgmt::V2018_05_01::Models::Dependency
          end
          def generic_resource_filter
            Azure::Resources::Mgmt::V2018_05_01::Models::GenericResourceFilter
          end
          def identity
            Azure::Resources::Mgmt::V2018_05_01::Models::Identity
          end
          def template_link
            Azure::Resources::Mgmt::V2018_05_01::Models::TemplateLink
          end
          def parameters_link
            Azure::Resources::Mgmt::V2018_05_01::Models::ParametersLink
          end
          def on_error_deployment
            Azure::Resources::Mgmt::V2018_05_01::Models::OnErrorDeployment
          end
          def deployment
            Azure::Resources::Mgmt::V2018_05_01::Models::Deployment
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
          def resource_group_patchable
            Azure::Resources::Mgmt::V2018_05_01::Models::ResourceGroupPatchable
          end
          def provider
            Azure::Resources::Mgmt::V2018_05_01::Models::Provider
          end
          def resource_group_list_result
            Azure::Resources::Mgmt::V2018_05_01::Models::ResourceGroupListResult
          end
          def resources_move_info
            Azure::Resources::Mgmt::V2018_05_01::Models::ResourcesMoveInfo
          end
          def deployment_properties_extended
            Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentPropertiesExtended
          end
          def identity_user_assigned_identities_value
            Azure::Resources::Mgmt::V2018_05_01::Models::IdentityUserAssignedIdentitiesValue
          end
          def export_template_request
            Azure::Resources::Mgmt::V2018_05_01::Models::ExportTemplateRequest
          end
          def tag_count
            Azure::Resources::Mgmt::V2018_05_01::Models::TagCount
          end
          def provider_list_result
            Azure::Resources::Mgmt::V2018_05_01::Models::ProviderListResult
          end
          def deployment_extended
            Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentExtended
          end
          def resource_group_filter
            Azure::Resources::Mgmt::V2018_05_01::Models::ResourceGroupFilter
          end
          def tag_details
            Azure::Resources::Mgmt::V2018_05_01::Models::TagDetails
          end
          def tag_value
            Azure::Resources::Mgmt::V2018_05_01::Models::TagValue
          end
          def tags_list_result
            Azure::Resources::Mgmt::V2018_05_01::Models::TagsListResult
          end
          def alias_path_type
            Azure::Resources::Mgmt::V2018_05_01::Models::AliasPathType
          end
          def target_resource
            Azure::Resources::Mgmt::V2018_05_01::Models::TargetResource
          end
          def basic_dependency
            Azure::Resources::Mgmt::V2018_05_01::Models::BasicDependency
          end
          def http_message
            Azure::Resources::Mgmt::V2018_05_01::Models::HttpMessage
          end
          def deployment_properties
            Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentProperties
          end
          def deployment_operation_properties
            Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentOperationProperties
          end
          def deployment_extended_filter
            Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentExtendedFilter
          end
          def deployment_operation
            Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentOperation
          end
          def deployment_export_result
            Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentExportResult
          end
          def deployment_operations_list_result
            Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentOperationsListResult
          end
          def deployment_validate_result
            Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentValidateResult
          end
          def resource_provider_operation_display_properties
            Azure::Resources::Mgmt::V2018_05_01::Models::ResourceProviderOperationDisplayProperties
          end
          def debug_setting
            Azure::Resources::Mgmt::V2018_05_01::Models::DebugSetting
          end
          def resource
            Azure::Resources::Mgmt::V2018_05_01::Models::Resource
          end
          def provider_resource_type
            Azure::Resources::Mgmt::V2018_05_01::Models::ProviderResourceType
          end
          def resource_group_export_result
            Azure::Resources::Mgmt::V2018_05_01::Models::ResourceGroupExportResult
          end
          def deployment_list_result
            Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentListResult
          end
          def generic_resource
            Azure::Resources::Mgmt::V2018_05_01::Models::GenericResource
          end
          def operation_display
            Azure::Resources::Mgmt::V2018_05_01::Models::OperationDisplay
          end
          def on_error_deployment_type
            Azure::Resources::Mgmt::V2018_05_01::Models::OnErrorDeploymentType
          end
          def operation
            Azure::Resources::Mgmt::V2018_05_01::Models::Operation
          end
          def operation_list_result
            Azure::Resources::Mgmt::V2018_05_01::Models::OperationListResult
          end
          def sub_resource
            Azure::Resources::Mgmt::V2018_05_01::Models::SubResource
          end
          def resource_list_result
            Azure::Resources::Mgmt::V2018_05_01::Models::ResourceListResult
          end
          def deployment_mode
            Azure::Resources::Mgmt::V2018_05_01::Models::DeploymentMode
          end
          def on_error_deployment_extended
            Azure::Resources::Mgmt::V2018_05_01::Models::OnErrorDeploymentExtended
          end
        end
      end
    end
  end
end
