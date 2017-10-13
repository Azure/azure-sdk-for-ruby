# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_resources'

module Azure::Resources::Profiles::Latest::Mgmt
    Deployments = Azure::Resources::Mgmt::V2017_05_10::Deployments
    Providers = Azure::Resources::Mgmt::V2017_05_10::Providers
    Resources = Azure::Resources::Mgmt::V2017_05_10::Resources
    ResourceGroups = Azure::Resources::Mgmt::V2017_05_10::ResourceGroups
    Tags = Azure::Resources::Mgmt::V2017_05_10::Tags
    DeploymentOperations = Azure::Resources::Mgmt::V2017_05_10::DeploymentOperations

    module Models
      Sku = Azure::Resources::Mgmt::V2017_05_10::Models::Sku
      Identity = Azure::Resources::Mgmt::V2017_05_10::Models::Identity
      GenericResourceFilter = Azure::Resources::Mgmt::V2017_05_10::Models::GenericResourceFilter
      ResourceGroupFilter = Azure::Resources::Mgmt::V2017_05_10::Models::ResourceGroupFilter
      ParametersLink = Azure::Resources::Mgmt::V2017_05_10::Models::ParametersLink
      ResourceListResult = Azure::Resources::Mgmt::V2017_05_10::Models::ResourceListResult
      DeploymentProperties = Azure::Resources::Mgmt::V2017_05_10::Models::DeploymentProperties
      ResourceGroupProperties = Azure::Resources::Mgmt::V2017_05_10::Models::ResourceGroupProperties
      DeploymentExportResult = Azure::Resources::Mgmt::V2017_05_10::Models::DeploymentExportResult
      ResourceGroup = Azure::Resources::Mgmt::V2017_05_10::Models::ResourceGroup
      AliasPathType = Azure::Resources::Mgmt::V2017_05_10::Models::AliasPathType
      ResourceGroupPatchable = Azure::Resources::Mgmt::V2017_05_10::Models::ResourceGroupPatchable
      ProviderResourceType = Azure::Resources::Mgmt::V2017_05_10::Models::ProviderResourceType
      ResourceGroupListResult = Azure::Resources::Mgmt::V2017_05_10::Models::ResourceGroupListResult
      BasicDependency = Azure::Resources::Mgmt::V2017_05_10::Models::BasicDependency
      ResourcesMoveInfo = Azure::Resources::Mgmt::V2017_05_10::Models::ResourcesMoveInfo
      DeploymentPropertiesExtended = Azure::Resources::Mgmt::V2017_05_10::Models::DeploymentPropertiesExtended
      ExportTemplateRequest = Azure::Resources::Mgmt::V2017_05_10::Models::ExportTemplateRequest
      DeploymentExtended = Azure::Resources::Mgmt::V2017_05_10::Models::DeploymentExtended
      TagCount = Azure::Resources::Mgmt::V2017_05_10::Models::TagCount
      ProviderListResult = Azure::Resources::Mgmt::V2017_05_10::Models::ProviderListResult
      TagValue = Azure::Resources::Mgmt::V2017_05_10::Models::TagValue
      DeploymentExtendedFilter = Azure::Resources::Mgmt::V2017_05_10::Models::DeploymentExtendedFilter
      TagDetails = Azure::Resources::Mgmt::V2017_05_10::Models::TagDetails
      DebugSetting = Azure::Resources::Mgmt::V2017_05_10::Models::DebugSetting
      TagsListResult = Azure::Resources::Mgmt::V2017_05_10::Models::TagsListResult
      ResourceManagementErrorWithDetails = Azure::Resources::Mgmt::V2017_05_10::Models::ResourceManagementErrorWithDetails
      TargetResource = Azure::Resources::Mgmt::V2017_05_10::Models::TargetResource
      Provider = Azure::Resources::Mgmt::V2017_05_10::Models::Provider
      HttpMessage = Azure::Resources::Mgmt::V2017_05_10::Models::HttpMessage
      DeploymentValidateResult = Azure::Resources::Mgmt::V2017_05_10::Models::DeploymentValidateResult
      DeploymentOperationProperties = Azure::Resources::Mgmt::V2017_05_10::Models::DeploymentOperationProperties
      Plan = Azure::Resources::Mgmt::V2017_05_10::Models::Plan
      DeploymentOperation = Azure::Resources::Mgmt::V2017_05_10::Models::DeploymentOperation
      Deployment = Azure::Resources::Mgmt::V2017_05_10::Models::Deployment
      DeploymentOperationsListResult = Azure::Resources::Mgmt::V2017_05_10::Models::DeploymentOperationsListResult
      Dependency = Azure::Resources::Mgmt::V2017_05_10::Models::Dependency
      ResourceProviderOperationDisplayProperties = Azure::Resources::Mgmt::V2017_05_10::Models::ResourceProviderOperationDisplayProperties
      TemplateLink = Azure::Resources::Mgmt::V2017_05_10::Models::TemplateLink
      Resource = Azure::Resources::Mgmt::V2017_05_10::Models::Resource
      DeploymentListResult = Azure::Resources::Mgmt::V2017_05_10::Models::DeploymentListResult
      SubResource = Azure::Resources::Mgmt::V2017_05_10::Models::SubResource
      AliasType = Azure::Resources::Mgmt::V2017_05_10::Models::AliasType
      ResourceGroupExportResult = Azure::Resources::Mgmt::V2017_05_10::Models::ResourceGroupExportResult
      GenericResource = Azure::Resources::Mgmt::V2017_05_10::Models::GenericResource
      DeploymentMode = Azure::Resources::Mgmt::V2017_05_10::Models::DeploymentMode
      ResourceIdentityType = Azure::Resources::Mgmt::V2017_05_10::Models::ResourceIdentityType
    end

    #
    # Resources
    #
    class ResourcesClass
      attr_reader :deployments, :providers, :resources, :resource_groups, :tags, :deployment_operations, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        if options.is_a?(Hash) && options.length == 0
          @options = setup_options
        else
          @options = options
        end

        reset!(options)

        @configurable, @base_url, @options = self, nil, nil

        client_0 = Azure::Resources::Mgmt::V2017_05_10::ResourceManagementClient.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        @deployments = client_0.deployments
        @providers = client_0.providers
        @resources = client_0.resources
        @resource_groups = client_0.resource_groups
        @tags = client_0.tags
        @deployment_operations = client_0.deployment_operations

        @model_classes = ModelClasses.new
      end

      #
      # Method to get the client object
      #
      # @return Client object
      #
      def get_client(version = '2017-05-10')
        case version
          when '2017-05-10'
            client = Azure::Resources::Mgmt::V2017_05_10::ResourceManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def sku
          Azure::Resources::Mgmt::V2017_05_10::Models::Sku
        end
        def identity
          Azure::Resources::Mgmt::V2017_05_10::Models::Identity
        end
        def generic_resource_filter
          Azure::Resources::Mgmt::V2017_05_10::Models::GenericResourceFilter
        end
        def resource_group_filter
          Azure::Resources::Mgmt::V2017_05_10::Models::ResourceGroupFilter
        end
        def parameters_link
          Azure::Resources::Mgmt::V2017_05_10::Models::ParametersLink
        end
        def resource_list_result
          Azure::Resources::Mgmt::V2017_05_10::Models::ResourceListResult
        end
        def deployment_properties
          Azure::Resources::Mgmt::V2017_05_10::Models::DeploymentProperties
        end
        def resource_group_properties
          Azure::Resources::Mgmt::V2017_05_10::Models::ResourceGroupProperties
        end
        def deployment_export_result
          Azure::Resources::Mgmt::V2017_05_10::Models::DeploymentExportResult
        end
        def resource_group
          Azure::Resources::Mgmt::V2017_05_10::Models::ResourceGroup
        end
        def alias_path_type
          Azure::Resources::Mgmt::V2017_05_10::Models::AliasPathType
        end
        def resource_group_patchable
          Azure::Resources::Mgmt::V2017_05_10::Models::ResourceGroupPatchable
        end
        def provider_resource_type
          Azure::Resources::Mgmt::V2017_05_10::Models::ProviderResourceType
        end
        def resource_group_list_result
          Azure::Resources::Mgmt::V2017_05_10::Models::ResourceGroupListResult
        end
        def basic_dependency
          Azure::Resources::Mgmt::V2017_05_10::Models::BasicDependency
        end
        def resources_move_info
          Azure::Resources::Mgmt::V2017_05_10::Models::ResourcesMoveInfo
        end
        def deployment_properties_extended
          Azure::Resources::Mgmt::V2017_05_10::Models::DeploymentPropertiesExtended
        end
        def export_template_request
          Azure::Resources::Mgmt::V2017_05_10::Models::ExportTemplateRequest
        end
        def deployment_extended
          Azure::Resources::Mgmt::V2017_05_10::Models::DeploymentExtended
        end
        def tag_count
          Azure::Resources::Mgmt::V2017_05_10::Models::TagCount
        end
        def provider_list_result
          Azure::Resources::Mgmt::V2017_05_10::Models::ProviderListResult
        end
        def tag_value
          Azure::Resources::Mgmt::V2017_05_10::Models::TagValue
        end
        def deployment_extended_filter
          Azure::Resources::Mgmt::V2017_05_10::Models::DeploymentExtendedFilter
        end
        def tag_details
          Azure::Resources::Mgmt::V2017_05_10::Models::TagDetails
        end
        def debug_setting
          Azure::Resources::Mgmt::V2017_05_10::Models::DebugSetting
        end
        def tags_list_result
          Azure::Resources::Mgmt::V2017_05_10::Models::TagsListResult
        end
        def resource_management_error_with_details
          Azure::Resources::Mgmt::V2017_05_10::Models::ResourceManagementErrorWithDetails
        end
        def target_resource
          Azure::Resources::Mgmt::V2017_05_10::Models::TargetResource
        end
        def provider
          Azure::Resources::Mgmt::V2017_05_10::Models::Provider
        end
        def http_message
          Azure::Resources::Mgmt::V2017_05_10::Models::HttpMessage
        end
        def deployment_validate_result
          Azure::Resources::Mgmt::V2017_05_10::Models::DeploymentValidateResult
        end
        def deployment_operation_properties
          Azure::Resources::Mgmt::V2017_05_10::Models::DeploymentOperationProperties
        end
        def plan
          Azure::Resources::Mgmt::V2017_05_10::Models::Plan
        end
        def deployment_operation
          Azure::Resources::Mgmt::V2017_05_10::Models::DeploymentOperation
        end
        def deployment
          Azure::Resources::Mgmt::V2017_05_10::Models::Deployment
        end
        def deployment_operations_list_result
          Azure::Resources::Mgmt::V2017_05_10::Models::DeploymentOperationsListResult
        end
        def dependency
          Azure::Resources::Mgmt::V2017_05_10::Models::Dependency
        end
        def resource_provider_operation_display_properties
          Azure::Resources::Mgmt::V2017_05_10::Models::ResourceProviderOperationDisplayProperties
        end
        def template_link
          Azure::Resources::Mgmt::V2017_05_10::Models::TemplateLink
        end
        def resource
          Azure::Resources::Mgmt::V2017_05_10::Models::Resource
        end
        def deployment_list_result
          Azure::Resources::Mgmt::V2017_05_10::Models::DeploymentListResult
        end
        def sub_resource
          Azure::Resources::Mgmt::V2017_05_10::Models::SubResource
        end
        def alias_type
          Azure::Resources::Mgmt::V2017_05_10::Models::AliasType
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
        def resource_identity_type
          Azure::Resources::Mgmt::V2017_05_10::Models::ResourceIdentityType
        end
      end
    end
end
