# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_resources'

module Azure::Profiles::Latest
  module Resources
    module Mgmt
      Deployments = Azure::Resources::Mgmt::V2017_05_10::Deployments
      Providers = Azure::Resources::Mgmt::V2017_05_10::Providers
      ResourceGroups = Azure::Resources::Mgmt::V2017_05_10::ResourceGroups
      Tags = Azure::Resources::Mgmt::V2017_05_10::Tags
      DeploymentOperations = Azure::Resources::Mgmt::V2017_05_10::DeploymentOperations
      Resources = Azure::Resources::Mgmt::V2017_05_10::Resources

      module Models
        Plan = Azure::Resources::Mgmt::V2017_05_10::Models::Plan
        Dependency = Azure::Resources::Mgmt::V2017_05_10::Models::Dependency
        DeploymentExtendedFilter = Azure::Resources::Mgmt::V2017_05_10::Models::DeploymentExtendedFilter
        Identity = Azure::Resources::Mgmt::V2017_05_10::Models::Identity
        ResourceGroupFilter = Azure::Resources::Mgmt::V2017_05_10::Models::ResourceGroupFilter
        TemplateLink = Azure::Resources::Mgmt::V2017_05_10::Models::TemplateLink
        DebugSetting = Azure::Resources::Mgmt::V2017_05_10::Models::DebugSetting
        ResourceListResult = Azure::Resources::Mgmt::V2017_05_10::Models::ResourceListResult
        Deployment = Azure::Resources::Mgmt::V2017_05_10::Models::Deployment
        ResourceGroupProperties = Azure::Resources::Mgmt::V2017_05_10::Models::ResourceGroupProperties
        ResourceManagementErrorWithDetails = Azure::Resources::Mgmt::V2017_05_10::Models::ResourceManagementErrorWithDetails
        ResourceGroup = Azure::Resources::Mgmt::V2017_05_10::Models::ResourceGroup
        AliasType = Azure::Resources::Mgmt::V2017_05_10::Models::AliasType
        ResourceGroupListResult = Azure::Resources::Mgmt::V2017_05_10::Models::ResourceGroupListResult
        Provider = Azure::Resources::Mgmt::V2017_05_10::Models::Provider
        ResourcesMoveInfo = Azure::Resources::Mgmt::V2017_05_10::Models::ResourcesMoveInfo
        ExportTemplateRequest = Azure::Resources::Mgmt::V2017_05_10::Models::ExportTemplateRequest
        DeploymentValidateResult = Azure::Resources::Mgmt::V2017_05_10::Models::DeploymentValidateResult
        TagCount = Azure::Resources::Mgmt::V2017_05_10::Models::TagCount
        DeploymentListResult = Azure::Resources::Mgmt::V2017_05_10::Models::DeploymentListResult
        TagValue = Azure::Resources::Mgmt::V2017_05_10::Models::TagValue
        TagDetails = Azure::Resources::Mgmt::V2017_05_10::Models::TagDetails
        Sku = Azure::Resources::Mgmt::V2017_05_10::Models::Sku
        ParametersLink = Azure::Resources::Mgmt::V2017_05_10::Models::ParametersLink
        DeploymentExportResult = Azure::Resources::Mgmt::V2017_05_10::Models::DeploymentExportResult
        TargetResource = Azure::Resources::Mgmt::V2017_05_10::Models::TargetResource
        ProviderResourceType = Azure::Resources::Mgmt::V2017_05_10::Models::ProviderResourceType
        HttpMessage = Azure::Resources::Mgmt::V2017_05_10::Models::HttpMessage
        DeploymentPropertiesExtended = Azure::Resources::Mgmt::V2017_05_10::Models::DeploymentPropertiesExtended
        TagsListResult = Azure::Resources::Mgmt::V2017_05_10::Models::TagsListResult
        ProviderListResult = Azure::Resources::Mgmt::V2017_05_10::Models::ProviderListResult
        DeploymentOperation = Azure::Resources::Mgmt::V2017_05_10::Models::DeploymentOperation
        DeploymentProperties = Azure::Resources::Mgmt::V2017_05_10::Models::DeploymentProperties
        ResourceGroupPatchable = Azure::Resources::Mgmt::V2017_05_10::Models::ResourceGroupPatchable
        BasicDependency = Azure::Resources::Mgmt::V2017_05_10::Models::BasicDependency
        DeploymentOperationProperties = Azure::Resources::Mgmt::V2017_05_10::Models::DeploymentOperationProperties
        GenericResourceFilter = Azure::Resources::Mgmt::V2017_05_10::Models::GenericResourceFilter
        DeploymentExtended = Azure::Resources::Mgmt::V2017_05_10::Models::DeploymentExtended
        AliasPathType = Azure::Resources::Mgmt::V2017_05_10::Models::AliasPathType
        DeploymentOperationsListResult = Azure::Resources::Mgmt::V2017_05_10::Models::DeploymentOperationsListResult
        Resource = Azure::Resources::Mgmt::V2017_05_10::Models::Resource
        ResourceProviderOperationDisplayProperties = Azure::Resources::Mgmt::V2017_05_10::Models::ResourceProviderOperationDisplayProperties
        ResourceGroupExportResult = Azure::Resources::Mgmt::V2017_05_10::Models::ResourceGroupExportResult
        GenericResource = Azure::Resources::Mgmt::V2017_05_10::Models::GenericResource
        DeploymentMode = Azure::Resources::Mgmt::V2017_05_10::Models::DeploymentMode
        SubResource = Azure::Resources::Mgmt::V2017_05_10::Models::SubResource
        ResourceIdentityType = Azure::Resources::Mgmt::V2017_05_10::Models::ResourceIdentityType
      end

      class ResourcesManagementClass
        attr_reader :deployments, :providers, :resource_groups, :tags, :deployment_operations, :resources, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Resources::Mgmt::V2017_05_10::ResourceManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @deployments = @client_0.deployments
          @providers = @client_0.providers
          @resource_groups = @client_0.resource_groups
          @tags = @client_0.tags
          @deployment_operations = @client_0.deployment_operations
          @resources = @client_0.resources

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
            Azure::Resources::Mgmt::V2017_05_10::Models::Plan
          end
          def dependency
            Azure::Resources::Mgmt::V2017_05_10::Models::Dependency
          end
          def deployment_extended_filter
            Azure::Resources::Mgmt::V2017_05_10::Models::DeploymentExtendedFilter
          end
          def identity
            Azure::Resources::Mgmt::V2017_05_10::Models::Identity
          end
          def resource_group_filter
            Azure::Resources::Mgmt::V2017_05_10::Models::ResourceGroupFilter
          end
          def template_link
            Azure::Resources::Mgmt::V2017_05_10::Models::TemplateLink
          end
          def debug_setting
            Azure::Resources::Mgmt::V2017_05_10::Models::DebugSetting
          end
          def resource_list_result
            Azure::Resources::Mgmt::V2017_05_10::Models::ResourceListResult
          end
          def deployment
            Azure::Resources::Mgmt::V2017_05_10::Models::Deployment
          end
          def resource_group_properties
            Azure::Resources::Mgmt::V2017_05_10::Models::ResourceGroupProperties
          end
          def resource_management_error_with_details
            Azure::Resources::Mgmt::V2017_05_10::Models::ResourceManagementErrorWithDetails
          end
          def resource_group
            Azure::Resources::Mgmt::V2017_05_10::Models::ResourceGroup
          end
          def alias_type
            Azure::Resources::Mgmt::V2017_05_10::Models::AliasType
          end
          def resource_group_list_result
            Azure::Resources::Mgmt::V2017_05_10::Models::ResourceGroupListResult
          end
          def provider
            Azure::Resources::Mgmt::V2017_05_10::Models::Provider
          end
          def resources_move_info
            Azure::Resources::Mgmt::V2017_05_10::Models::ResourcesMoveInfo
          end
          def export_template_request
            Azure::Resources::Mgmt::V2017_05_10::Models::ExportTemplateRequest
          end
          def deployment_validate_result
            Azure::Resources::Mgmt::V2017_05_10::Models::DeploymentValidateResult
          end
          def tag_count
            Azure::Resources::Mgmt::V2017_05_10::Models::TagCount
          end
          def deployment_list_result
            Azure::Resources::Mgmt::V2017_05_10::Models::DeploymentListResult
          end
          def tag_value
            Azure::Resources::Mgmt::V2017_05_10::Models::TagValue
          end
          def tag_details
            Azure::Resources::Mgmt::V2017_05_10::Models::TagDetails
          end
          def sku
            Azure::Resources::Mgmt::V2017_05_10::Models::Sku
          end
          def parameters_link
            Azure::Resources::Mgmt::V2017_05_10::Models::ParametersLink
          end
          def deployment_export_result
            Azure::Resources::Mgmt::V2017_05_10::Models::DeploymentExportResult
          end
          def target_resource
            Azure::Resources::Mgmt::V2017_05_10::Models::TargetResource
          end
          def provider_resource_type
            Azure::Resources::Mgmt::V2017_05_10::Models::ProviderResourceType
          end
          def http_message
            Azure::Resources::Mgmt::V2017_05_10::Models::HttpMessage
          end
          def deployment_properties_extended
            Azure::Resources::Mgmt::V2017_05_10::Models::DeploymentPropertiesExtended
          end
          def tags_list_result
            Azure::Resources::Mgmt::V2017_05_10::Models::TagsListResult
          end
          def provider_list_result
            Azure::Resources::Mgmt::V2017_05_10::Models::ProviderListResult
          end
          def deployment_operation
            Azure::Resources::Mgmt::V2017_05_10::Models::DeploymentOperation
          end
          def deployment_properties
            Azure::Resources::Mgmt::V2017_05_10::Models::DeploymentProperties
          end
          def resource_group_patchable
            Azure::Resources::Mgmt::V2017_05_10::Models::ResourceGroupPatchable
          end
          def basic_dependency
            Azure::Resources::Mgmt::V2017_05_10::Models::BasicDependency
          end
          def deployment_operation_properties
            Azure::Resources::Mgmt::V2017_05_10::Models::DeploymentOperationProperties
          end
          def generic_resource_filter
            Azure::Resources::Mgmt::V2017_05_10::Models::GenericResourceFilter
          end
          def deployment_extended
            Azure::Resources::Mgmt::V2017_05_10::Models::DeploymentExtended
          end
          def alias_path_type
            Azure::Resources::Mgmt::V2017_05_10::Models::AliasPathType
          end
          def deployment_operations_list_result
            Azure::Resources::Mgmt::V2017_05_10::Models::DeploymentOperationsListResult
          end
          def resource
            Azure::Resources::Mgmt::V2017_05_10::Models::Resource
          end
          def resource_provider_operation_display_properties
            Azure::Resources::Mgmt::V2017_05_10::Models::ResourceProviderOperationDisplayProperties
          end
          def resource_group_export_result
            Azure::Resources::Mgmt::V2017_05_10::Models::ResourceGroupExportResult
          end
          def generic_resource
            Azure::Resources::Mgmt::V2017_05_10::Models::GenericResource
          end
          def deployment_mode
            Azure::Resources::Mgmt::V2017_05_10::Models::DeploymentMode
          end
          def sub_resource
            Azure::Resources::Mgmt::V2017_05_10::Models::SubResource
          end
          def resource_identity_type
            Azure::Resources::Mgmt::V2017_05_10::Models::ResourceIdentityType
          end
        end
      end
    end
  end
end
