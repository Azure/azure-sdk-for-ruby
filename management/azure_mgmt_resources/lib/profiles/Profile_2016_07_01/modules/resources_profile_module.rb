# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_resources'


module Azure::Profiles::ResourcesModule::Management::Profile_2016_07_01
  module Resources
    Deployments = Azure::ARM::Resources::Api_2016_07_01::Deployments
    Providers = Azure::ARM::Resources::Api_2016_07_01::Providers
    ResourceGroups = Azure::ARM::Resources::Api_2016_07_01::ResourceGroups
    Resources = Azure::ARM::Resources::Api_2016_07_01::Resources
    Tags = Azure::ARM::Resources::Api_2016_07_01::Tags
    DeploymentOperations = Azure::ARM::Resources::Api_2016_07_01::DeploymentOperations

    module Models
      Sku = Azure::ARM::Resources::Api_2016_07_01::Models::Sku
      DeploymentExtendedFilter = Azure::ARM::Resources::Api_2016_07_01::Models::DeploymentExtendedFilter
      Identity = Azure::ARM::Resources::Api_2016_07_01::Models::Identity
      ResourceGroupFilter = Azure::ARM::Resources::Api_2016_07_01::Models::ResourceGroupFilter
      TemplateLink = Azure::ARM::Resources::Api_2016_07_01::Models::TemplateLink
      DebugSetting = Azure::ARM::Resources::Api_2016_07_01::Models::DebugSetting
      ResourceListResult = Azure::ARM::Resources::Api_2016_07_01::Models::ResourceListResult
      Deployment = Azure::ARM::Resources::Api_2016_07_01::Models::Deployment
      ResourceGroupProperties = Azure::ARM::Resources::Api_2016_07_01::Models::ResourceGroupProperties
      ResourceManagementErrorWithDetails = Azure::ARM::Resources::Api_2016_07_01::Models::ResourceManagementErrorWithDetails
      ResourceGroup = Azure::ARM::Resources::Api_2016_07_01::Models::ResourceGroup
      AliasType = Azure::ARM::Resources::Api_2016_07_01::Models::AliasType
      ResourceGroupListResult = Azure::ARM::Resources::Api_2016_07_01::Models::ResourceGroupListResult
      Provider = Azure::ARM::Resources::Api_2016_07_01::Models::Provider
      ResourcesMoveInfo = Azure::ARM::Resources::Api_2016_07_01::Models::ResourcesMoveInfo
      Dependency = Azure::ARM::Resources::Api_2016_07_01::Models::Dependency
      ExportTemplateRequest = Azure::ARM::Resources::Api_2016_07_01::Models::ExportTemplateRequest
      DeploymentValidateResult = Azure::ARM::Resources::Api_2016_07_01::Models::DeploymentValidateResult
      TagCount = Azure::ARM::Resources::Api_2016_07_01::Models::TagCount
      DeploymentListResult = Azure::ARM::Resources::Api_2016_07_01::Models::DeploymentListResult
      TagValue = Azure::ARM::Resources::Api_2016_07_01::Models::TagValue
      Plan = Azure::ARM::Resources::Api_2016_07_01::Models::Plan
      TagDetails = Azure::ARM::Resources::Api_2016_07_01::Models::TagDetails
      ParametersLink = Azure::ARM::Resources::Api_2016_07_01::Models::ParametersLink
      TagsListResult = Azure::ARM::Resources::Api_2016_07_01::Models::TagsListResult
      DeploymentExportResult = Azure::ARM::Resources::Api_2016_07_01::Models::DeploymentExportResult
      TargetResource = Azure::ARM::Resources::Api_2016_07_01::Models::TargetResource
      ProviderResourceType = Azure::ARM::Resources::Api_2016_07_01::Models::ProviderResourceType
      HttpMessage = Azure::ARM::Resources::Api_2016_07_01::Models::HttpMessage
      DeploymentPropertiesExtended = Azure::ARM::Resources::Api_2016_07_01::Models::DeploymentPropertiesExtended
      DeploymentOperationProperties = Azure::ARM::Resources::Api_2016_07_01::Models::DeploymentOperationProperties
      ProviderListResult = Azure::ARM::Resources::Api_2016_07_01::Models::ProviderListResult
      DeploymentOperation = Azure::ARM::Resources::Api_2016_07_01::Models::DeploymentOperation
      DeploymentProperties = Azure::ARM::Resources::Api_2016_07_01::Models::DeploymentProperties
      DeploymentOperationsListResult = Azure::ARM::Resources::Api_2016_07_01::Models::DeploymentOperationsListResult
      BasicDependency = Azure::ARM::Resources::Api_2016_07_01::Models::BasicDependency
      ResourceProviderOperationDisplayProperties = Azure::ARM::Resources::Api_2016_07_01::Models::ResourceProviderOperationDisplayProperties
      GenericResourceFilter = Azure::ARM::Resources::Api_2016_07_01::Models::GenericResourceFilter
      DeploymentExtended = Azure::ARM::Resources::Api_2016_07_01::Models::DeploymentExtended
      AliasPathType = Azure::ARM::Resources::Api_2016_07_01::Models::AliasPathType
      ResourceGroupExportResult = Azure::ARM::Resources::Api_2016_07_01::Models::ResourceGroupExportResult
      GenericResource = Azure::ARM::Resources::Api_2016_07_01::Models::GenericResource
      DeploymentMode = Azure::ARM::Resources::Api_2016_07_01::Models::DeploymentMode
      ResourceIdentityType = Azure::ARM::Resources::Api_2016_07_01::Models::ResourceIdentityType
    end

    #
    # Resources
    #
    class ResourcesClass
      attr_accessor :deployments, :providers, :resource_groups, :resources, :tags, :deployment_operations, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::Resources::Api_2016_07_01::ResourceManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.deployments = Azure::ARM::Resources::Api_2016_07_01::Deployments.new(client)
        self.providers = Azure::ARM::Resources::Api_2016_07_01::Providers.new(client)
        self.resource_groups = Azure::ARM::Resources::Api_2016_07_01::ResourceGroups.new(client)
        self.resources = Azure::ARM::Resources::Api_2016_07_01::Resources.new(client)
        self.tags = Azure::ARM::Resources::Api_2016_07_01::Tags.new(client)
        self.deployment_operations = Azure::ARM::Resources::Api_2016_07_01::DeploymentOperations.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2016-07-01'
            client = Azure::ARM::Resources::Api_2016_07_01::ResourceManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def sku
          Azure::ARM::Resources::Api_2016_07_01::Models::Sku
        end
        def deployment_extended_filter
          Azure::ARM::Resources::Api_2016_07_01::Models::DeploymentExtendedFilter
        end
        def identity
          Azure::ARM::Resources::Api_2016_07_01::Models::Identity
        end
        def resource_group_filter
          Azure::ARM::Resources::Api_2016_07_01::Models::ResourceGroupFilter
        end
        def template_link
          Azure::ARM::Resources::Api_2016_07_01::Models::TemplateLink
        end
        def debug_setting
          Azure::ARM::Resources::Api_2016_07_01::Models::DebugSetting
        end
        def resource_list_result
          Azure::ARM::Resources::Api_2016_07_01::Models::ResourceListResult
        end
        def deployment
          Azure::ARM::Resources::Api_2016_07_01::Models::Deployment
        end
        def resource_group_properties
          Azure::ARM::Resources::Api_2016_07_01::Models::ResourceGroupProperties
        end
        def resource_management_error_with_details
          Azure::ARM::Resources::Api_2016_07_01::Models::ResourceManagementErrorWithDetails
        end
        def resource_group
          Azure::ARM::Resources::Api_2016_07_01::Models::ResourceGroup
        end
        def alias_type
          Azure::ARM::Resources::Api_2016_07_01::Models::AliasType
        end
        def resource_group_list_result
          Azure::ARM::Resources::Api_2016_07_01::Models::ResourceGroupListResult
        end
        def provider
          Azure::ARM::Resources::Api_2016_07_01::Models::Provider
        end
        def resources_move_info
          Azure::ARM::Resources::Api_2016_07_01::Models::ResourcesMoveInfo
        end
        def dependency
          Azure::ARM::Resources::Api_2016_07_01::Models::Dependency
        end
        def export_template_request
          Azure::ARM::Resources::Api_2016_07_01::Models::ExportTemplateRequest
        end
        def deployment_validate_result
          Azure::ARM::Resources::Api_2016_07_01::Models::DeploymentValidateResult
        end
        def tag_count
          Azure::ARM::Resources::Api_2016_07_01::Models::TagCount
        end
        def deployment_list_result
          Azure::ARM::Resources::Api_2016_07_01::Models::DeploymentListResult
        end
        def tag_value
          Azure::ARM::Resources::Api_2016_07_01::Models::TagValue
        end
        def plan
          Azure::ARM::Resources::Api_2016_07_01::Models::Plan
        end
        def tag_details
          Azure::ARM::Resources::Api_2016_07_01::Models::TagDetails
        end
        def parameters_link
          Azure::ARM::Resources::Api_2016_07_01::Models::ParametersLink
        end
        def tags_list_result
          Azure::ARM::Resources::Api_2016_07_01::Models::TagsListResult
        end
        def deployment_export_result
          Azure::ARM::Resources::Api_2016_07_01::Models::DeploymentExportResult
        end
        def target_resource
          Azure::ARM::Resources::Api_2016_07_01::Models::TargetResource
        end
        def provider_resource_type
          Azure::ARM::Resources::Api_2016_07_01::Models::ProviderResourceType
        end
        def http_message
          Azure::ARM::Resources::Api_2016_07_01::Models::HttpMessage
        end
        def deployment_properties_extended
          Azure::ARM::Resources::Api_2016_07_01::Models::DeploymentPropertiesExtended
        end
        def deployment_operation_properties
          Azure::ARM::Resources::Api_2016_07_01::Models::DeploymentOperationProperties
        end
        def provider_list_result
          Azure::ARM::Resources::Api_2016_07_01::Models::ProviderListResult
        end
        def deployment_operation
          Azure::ARM::Resources::Api_2016_07_01::Models::DeploymentOperation
        end
        def deployment_properties
          Azure::ARM::Resources::Api_2016_07_01::Models::DeploymentProperties
        end
        def deployment_operations_list_result
          Azure::ARM::Resources::Api_2016_07_01::Models::DeploymentOperationsListResult
        end
        def basic_dependency
          Azure::ARM::Resources::Api_2016_07_01::Models::BasicDependency
        end
        def resource_provider_operation_display_properties
          Azure::ARM::Resources::Api_2016_07_01::Models::ResourceProviderOperationDisplayProperties
        end
        def generic_resource_filter
          Azure::ARM::Resources::Api_2016_07_01::Models::GenericResourceFilter
        end
        def deployment_extended
          Azure::ARM::Resources::Api_2016_07_01::Models::DeploymentExtended
        end
        def alias_path_type
          Azure::ARM::Resources::Api_2016_07_01::Models::AliasPathType
        end
        def resource_group_export_result
          Azure::ARM::Resources::Api_2016_07_01::Models::ResourceGroupExportResult
        end
        def generic_resource
          Azure::ARM::Resources::Api_2016_07_01::Models::GenericResource
        end
        def deployment_mode
          Azure::ARM::Resources::Api_2016_07_01::Models::DeploymentMode
        end
        def resource_identity_type
          Azure::ARM::Resources::Api_2016_07_01::Models::ResourceIdentityType
        end
      end
    end
  end
end
