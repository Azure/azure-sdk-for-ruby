# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_resources'


module Azure::Profiles::ResourcesModule::Management::Profile_Latest
  module Resources
    Deployments = Azure::ARM::Resources::Api_2017_05_10::Deployments
    Providers = Azure::ARM::Resources::Api_2017_05_10::Providers
    Resources = Azure::ARM::Resources::Api_2017_05_10::Resources
    ResourceGroups = Azure::ARM::Resources::Api_2017_05_10::ResourceGroups
    Tags = Azure::ARM::Resources::Api_2017_05_10::Tags
    DeploymentOperations = Azure::ARM::Resources::Api_2017_05_10::DeploymentOperations

    module Models
      Sku = Azure::ARM::Resources::Api_2017_05_10::Models::Sku
      Identity = Azure::ARM::Resources::Api_2017_05_10::Models::Identity
      GenericResourceFilter = Azure::ARM::Resources::Api_2017_05_10::Models::GenericResourceFilter
      ResourceGroupFilter = Azure::ARM::Resources::Api_2017_05_10::Models::ResourceGroupFilter
      ParametersLink = Azure::ARM::Resources::Api_2017_05_10::Models::ParametersLink
      ResourceListResult = Azure::ARM::Resources::Api_2017_05_10::Models::ResourceListResult
      DeploymentProperties = Azure::ARM::Resources::Api_2017_05_10::Models::DeploymentProperties
      ResourceGroupProperties = Azure::ARM::Resources::Api_2017_05_10::Models::ResourceGroupProperties
      DeploymentExportResult = Azure::ARM::Resources::Api_2017_05_10::Models::DeploymentExportResult
      ResourceGroup = Azure::ARM::Resources::Api_2017_05_10::Models::ResourceGroup
      AliasPathType = Azure::ARM::Resources::Api_2017_05_10::Models::AliasPathType
      ResourceGroupPatchable = Azure::ARM::Resources::Api_2017_05_10::Models::ResourceGroupPatchable
      ProviderResourceType = Azure::ARM::Resources::Api_2017_05_10::Models::ProviderResourceType
      ResourceGroupListResult = Azure::ARM::Resources::Api_2017_05_10::Models::ResourceGroupListResult
      BasicDependency = Azure::ARM::Resources::Api_2017_05_10::Models::BasicDependency
      ResourcesMoveInfo = Azure::ARM::Resources::Api_2017_05_10::Models::ResourcesMoveInfo
      DeploymentPropertiesExtended = Azure::ARM::Resources::Api_2017_05_10::Models::DeploymentPropertiesExtended
      ExportTemplateRequest = Azure::ARM::Resources::Api_2017_05_10::Models::ExportTemplateRequest
      DeploymentExtended = Azure::ARM::Resources::Api_2017_05_10::Models::DeploymentExtended
      TagCount = Azure::ARM::Resources::Api_2017_05_10::Models::TagCount
      ProviderListResult = Azure::ARM::Resources::Api_2017_05_10::Models::ProviderListResult
      TagValue = Azure::ARM::Resources::Api_2017_05_10::Models::TagValue
      DeploymentExtendedFilter = Azure::ARM::Resources::Api_2017_05_10::Models::DeploymentExtendedFilter
      TagDetails = Azure::ARM::Resources::Api_2017_05_10::Models::TagDetails
      DebugSetting = Azure::ARM::Resources::Api_2017_05_10::Models::DebugSetting
      TagsListResult = Azure::ARM::Resources::Api_2017_05_10::Models::TagsListResult
      ResourceManagementErrorWithDetails = Azure::ARM::Resources::Api_2017_05_10::Models::ResourceManagementErrorWithDetails
      TargetResource = Azure::ARM::Resources::Api_2017_05_10::Models::TargetResource
      Provider = Azure::ARM::Resources::Api_2017_05_10::Models::Provider
      HttpMessage = Azure::ARM::Resources::Api_2017_05_10::Models::HttpMessage
      DeploymentValidateResult = Azure::ARM::Resources::Api_2017_05_10::Models::DeploymentValidateResult
      DeploymentOperationProperties = Azure::ARM::Resources::Api_2017_05_10::Models::DeploymentOperationProperties
      Plan = Azure::ARM::Resources::Api_2017_05_10::Models::Plan
      DeploymentOperation = Azure::ARM::Resources::Api_2017_05_10::Models::DeploymentOperation
      Deployment = Azure::ARM::Resources::Api_2017_05_10::Models::Deployment
      DeploymentOperationsListResult = Azure::ARM::Resources::Api_2017_05_10::Models::DeploymentOperationsListResult
      Dependency = Azure::ARM::Resources::Api_2017_05_10::Models::Dependency
      ResourceProviderOperationDisplayProperties = Azure::ARM::Resources::Api_2017_05_10::Models::ResourceProviderOperationDisplayProperties
      TemplateLink = Azure::ARM::Resources::Api_2017_05_10::Models::TemplateLink
      DeploymentListResult = Azure::ARM::Resources::Api_2017_05_10::Models::DeploymentListResult
      AliasType = Azure::ARM::Resources::Api_2017_05_10::Models::AliasType
      ResourceGroupExportResult = Azure::ARM::Resources::Api_2017_05_10::Models::ResourceGroupExportResult
      GenericResource = Azure::ARM::Resources::Api_2017_05_10::Models::GenericResource
      DeploymentMode = Azure::ARM::Resources::Api_2017_05_10::Models::DeploymentMode
      ResourceIdentityType = Azure::ARM::Resources::Api_2017_05_10::Models::ResourceIdentityType
    end

    #
    # Resources
    #
    class ResourcesClass
      attr_accessor :deployments, :providers, :resources, :resource_groups, :tags, :deployment_operations, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::Resources::Api_2017_05_10::ResourceManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.deployments = Azure::ARM::Resources::Api_2017_05_10::Deployments.new(client)
        self.providers = Azure::ARM::Resources::Api_2017_05_10::Providers.new(client)
        self.resources = Azure::ARM::Resources::Api_2017_05_10::Resources.new(client)
        self.resource_groups = Azure::ARM::Resources::Api_2017_05_10::ResourceGroups.new(client)
        self.tags = Azure::ARM::Resources::Api_2017_05_10::Tags.new(client)
        self.deployment_operations = Azure::ARM::Resources::Api_2017_05_10::DeploymentOperations.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2017-05-10'
            client = Azure::ARM::Resources::Api_2017_05_10::ResourceManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def sku
          Azure::ARM::Resources::Api_2017_05_10::Models::Sku
        end
        def identity
          Azure::ARM::Resources::Api_2017_05_10::Models::Identity
        end
        def generic_resource_filter
          Azure::ARM::Resources::Api_2017_05_10::Models::GenericResourceFilter
        end
        def resource_group_filter
          Azure::ARM::Resources::Api_2017_05_10::Models::ResourceGroupFilter
        end
        def parameters_link
          Azure::ARM::Resources::Api_2017_05_10::Models::ParametersLink
        end
        def resource_list_result
          Azure::ARM::Resources::Api_2017_05_10::Models::ResourceListResult
        end
        def deployment_properties
          Azure::ARM::Resources::Api_2017_05_10::Models::DeploymentProperties
        end
        def resource_group_properties
          Azure::ARM::Resources::Api_2017_05_10::Models::ResourceGroupProperties
        end
        def deployment_export_result
          Azure::ARM::Resources::Api_2017_05_10::Models::DeploymentExportResult
        end
        def resource_group
          Azure::ARM::Resources::Api_2017_05_10::Models::ResourceGroup
        end
        def alias_path_type
          Azure::ARM::Resources::Api_2017_05_10::Models::AliasPathType
        end
        def resource_group_patchable
          Azure::ARM::Resources::Api_2017_05_10::Models::ResourceGroupPatchable
        end
        def provider_resource_type
          Azure::ARM::Resources::Api_2017_05_10::Models::ProviderResourceType
        end
        def resource_group_list_result
          Azure::ARM::Resources::Api_2017_05_10::Models::ResourceGroupListResult
        end
        def basic_dependency
          Azure::ARM::Resources::Api_2017_05_10::Models::BasicDependency
        end
        def resources_move_info
          Azure::ARM::Resources::Api_2017_05_10::Models::ResourcesMoveInfo
        end
        def deployment_properties_extended
          Azure::ARM::Resources::Api_2017_05_10::Models::DeploymentPropertiesExtended
        end
        def export_template_request
          Azure::ARM::Resources::Api_2017_05_10::Models::ExportTemplateRequest
        end
        def deployment_extended
          Azure::ARM::Resources::Api_2017_05_10::Models::DeploymentExtended
        end
        def tag_count
          Azure::ARM::Resources::Api_2017_05_10::Models::TagCount
        end
        def provider_list_result
          Azure::ARM::Resources::Api_2017_05_10::Models::ProviderListResult
        end
        def tag_value
          Azure::ARM::Resources::Api_2017_05_10::Models::TagValue
        end
        def deployment_extended_filter
          Azure::ARM::Resources::Api_2017_05_10::Models::DeploymentExtendedFilter
        end
        def tag_details
          Azure::ARM::Resources::Api_2017_05_10::Models::TagDetails
        end
        def debug_setting
          Azure::ARM::Resources::Api_2017_05_10::Models::DebugSetting
        end
        def tags_list_result
          Azure::ARM::Resources::Api_2017_05_10::Models::TagsListResult
        end
        def resource_management_error_with_details
          Azure::ARM::Resources::Api_2017_05_10::Models::ResourceManagementErrorWithDetails
        end
        def target_resource
          Azure::ARM::Resources::Api_2017_05_10::Models::TargetResource
        end
        def provider
          Azure::ARM::Resources::Api_2017_05_10::Models::Provider
        end
        def http_message
          Azure::ARM::Resources::Api_2017_05_10::Models::HttpMessage
        end
        def deployment_validate_result
          Azure::ARM::Resources::Api_2017_05_10::Models::DeploymentValidateResult
        end
        def deployment_operation_properties
          Azure::ARM::Resources::Api_2017_05_10::Models::DeploymentOperationProperties
        end
        def plan
          Azure::ARM::Resources::Api_2017_05_10::Models::Plan
        end
        def deployment_operation
          Azure::ARM::Resources::Api_2017_05_10::Models::DeploymentOperation
        end
        def deployment
          Azure::ARM::Resources::Api_2017_05_10::Models::Deployment
        end
        def deployment_operations_list_result
          Azure::ARM::Resources::Api_2017_05_10::Models::DeploymentOperationsListResult
        end
        def dependency
          Azure::ARM::Resources::Api_2017_05_10::Models::Dependency
        end
        def resource_provider_operation_display_properties
          Azure::ARM::Resources::Api_2017_05_10::Models::ResourceProviderOperationDisplayProperties
        end
        def template_link
          Azure::ARM::Resources::Api_2017_05_10::Models::TemplateLink
        end
        def deployment_list_result
          Azure::ARM::Resources::Api_2017_05_10::Models::DeploymentListResult
        end
        def alias_type
          Azure::ARM::Resources::Api_2017_05_10::Models::AliasType
        end
        def resource_group_export_result
          Azure::ARM::Resources::Api_2017_05_10::Models::ResourceGroupExportResult
        end
        def generic_resource
          Azure::ARM::Resources::Api_2017_05_10::Models::GenericResource
        end
        def deployment_mode
          Azure::ARM::Resources::Api_2017_05_10::Models::DeploymentMode
        end
        def resource_identity_type
          Azure::ARM::Resources::Api_2017_05_10::Models::ResourceIdentityType
        end
      end
    end
  end
end
