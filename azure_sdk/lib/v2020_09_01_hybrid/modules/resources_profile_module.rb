# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_resources'

module Azure::Profiles::V2020_09_01_Hybrid
  module Resources
    module Mgmt
      Tags = Azure::Resources::Mgmt::V2018_05_01::Tags
      Operations = Azure::Resources::Mgmt::V2019_10_01::Operations
      Deployments = Azure::Resources::Mgmt::V2019_10_01::Deployments
      Providers = Azure::Resources::Mgmt::V2019_10_01::Providers
      Resources = Azure::Resources::Mgmt::V2019_10_01::Resources
      ResourceGroups = Azure::Resources::Mgmt::V2019_10_01::ResourceGroups
      TagsOperations = Azure::Resources::Mgmt::V2019_10_01::TagsOperations
      DeploymentOperations = Azure::Resources::Mgmt::V2019_10_01::DeploymentOperations

      module Models
        ResourceManagementErrorWithDetails = Azure::Resources::Mgmt::V2018_05_01::Models::ResourceManagementErrorWithDetails
        AliasPathType = Azure::Resources::Mgmt::V2018_05_01::Models::AliasPathType
        Sku = Azure::Resources::Mgmt::V2019_10_01::Models::Sku
        IdentityUserAssignedIdentitiesValue = Azure::Resources::Mgmt::V2019_10_01::Models::IdentityUserAssignedIdentitiesValue
        GenericResourceFilter = Azure::Resources::Mgmt::V2019_10_01::Models::GenericResourceFilter
        Identity = Azure::Resources::Mgmt::V2019_10_01::Models::Identity
        TemplateLink = Azure::Resources::Mgmt::V2019_10_01::Models::TemplateLink
        ParametersLink = Azure::Resources::Mgmt::V2019_10_01::Models::ParametersLink
        DebugSetting = Azure::Resources::Mgmt::V2019_10_01::Models::DebugSetting
        TagsResource = Azure::Resources::Mgmt::V2019_10_01::Models::TagsResource
        DeploymentProperties = Azure::Resources::Mgmt::V2019_10_01::Models::DeploymentProperties
        TagsPatchResource = Azure::Resources::Mgmt::V2019_10_01::Models::TagsPatchResource
        ScopedDeployment = Azure::Resources::Mgmt::V2019_10_01::Models::ScopedDeployment
        ResourceListResult = Azure::Resources::Mgmt::V2019_10_01::Models::ResourceListResult
        DeploymentWhatIfSettings = Azure::Resources::Mgmt::V2019_10_01::Models::DeploymentWhatIfSettings
        ResourceGroupProperties = Azure::Resources::Mgmt::V2019_10_01::Models::ResourceGroupProperties
        DeploymentWhatIf = Azure::Resources::Mgmt::V2019_10_01::Models::DeploymentWhatIf
        ResourceGroup = Azure::Resources::Mgmt::V2019_10_01::Models::ResourceGroup
        ErrorAdditionalInfo = Azure::Resources::Mgmt::V2019_10_01::Models::ErrorAdditionalInfo
        ResourceGroupPatchable = Azure::Resources::Mgmt::V2019_10_01::Models::ResourceGroupPatchable
        ResourceGroupListResult = Azure::Resources::Mgmt::V2019_10_01::Models::ResourceGroupListResult
        AliasPath = Azure::Resources::Mgmt::V2019_10_01::Models::AliasPath
        ResourcesMoveInfo = Azure::Resources::Mgmt::V2019_10_01::Models::ResourcesMoveInfo
        ProviderResourceType = Azure::Resources::Mgmt::V2019_10_01::Models::ProviderResourceType
        ExportTemplateRequest = Azure::Resources::Mgmt::V2019_10_01::Models::ExportTemplateRequest
        BasicDependency = Azure::Resources::Mgmt::V2019_10_01::Models::BasicDependency
        TagCount = Azure::Resources::Mgmt::V2019_10_01::Models::TagCount
        OnErrorDeploymentExtended = Azure::Resources::Mgmt::V2019_10_01::Models::OnErrorDeploymentExtended
        TagValue = Azure::Resources::Mgmt::V2019_10_01::Models::TagValue
        DeploymentPropertiesExtended = Azure::Resources::Mgmt::V2019_10_01::Models::DeploymentPropertiesExtended
        TagDetails = Azure::Resources::Mgmt::V2019_10_01::Models::TagDetails
        DeploymentExtended = Azure::Resources::Mgmt::V2019_10_01::Models::DeploymentExtended
        TagsListResult = Azure::Resources::Mgmt::V2019_10_01::Models::TagsListResult
        ProviderListResult = Azure::Resources::Mgmt::V2019_10_01::Models::ProviderListResult
        TargetResource = Azure::Resources::Mgmt::V2019_10_01::Models::TargetResource
        DeploymentExtendedFilter = Azure::Resources::Mgmt::V2019_10_01::Models::DeploymentExtendedFilter
        HttpMessage = Azure::Resources::Mgmt::V2019_10_01::Models::HttpMessage
        OnErrorDeployment = Azure::Resources::Mgmt::V2019_10_01::Models::OnErrorDeployment
        DeploymentOperationProperties = Azure::Resources::Mgmt::V2019_10_01::Models::DeploymentOperationProperties
        DeploymentExportResult = Azure::Resources::Mgmt::V2019_10_01::Models::DeploymentExportResult
        DeploymentOperation = Azure::Resources::Mgmt::V2019_10_01::Models::DeploymentOperation
        ScopedDeploymentWhatIf = Azure::Resources::Mgmt::V2019_10_01::Models::ScopedDeploymentWhatIf
        DeploymentOperationsListResult = Azure::Resources::Mgmt::V2019_10_01::Models::DeploymentOperationsListResult
        AliasPattern = Azure::Resources::Mgmt::V2019_10_01::Models::AliasPattern
        ResourceProviderOperationDisplayProperties = Azure::Resources::Mgmt::V2019_10_01::Models::ResourceProviderOperationDisplayProperties
        Provider = Azure::Resources::Mgmt::V2019_10_01::Models::Provider
        Resource = Azure::Resources::Mgmt::V2019_10_01::Models::Resource
        ResourceReference = Azure::Resources::Mgmt::V2019_10_01::Models::ResourceReference
        SubResource = Azure::Resources::Mgmt::V2019_10_01::Models::SubResource
        DeploymentListResult = Azure::Resources::Mgmt::V2019_10_01::Models::DeploymentListResult
        ResourceGroupExportResult = Azure::Resources::Mgmt::V2019_10_01::Models::ResourceGroupExportResult
        ResourceGroupFilter = Azure::Resources::Mgmt::V2019_10_01::Models::ResourceGroupFilter
        OperationDisplay = Azure::Resources::Mgmt::V2019_10_01::Models::OperationDisplay
        Tags = Azure::Resources::Mgmt::V2019_10_01::Models::Tags
        ErrorResponse = Azure::Resources::Mgmt::V2019_10_01::Models::ErrorResponse
        Operation = Azure::Resources::Mgmt::V2019_10_01::Models::Operation
        Dependency = Azure::Resources::Mgmt::V2019_10_01::Models::Dependency
        OperationListResult = Azure::Resources::Mgmt::V2019_10_01::Models::OperationListResult
        Plan = Azure::Resources::Mgmt::V2019_10_01::Models::Plan
        TemplateHashResult = Azure::Resources::Mgmt::V2019_10_01::Models::TemplateHashResult
        AliasModel = Azure::Resources::Mgmt::V2019_10_01::Models::AliasModel
        WhatIfPropertyChange = Azure::Resources::Mgmt::V2019_10_01::Models::WhatIfPropertyChange
        Deployment = Azure::Resources::Mgmt::V2019_10_01::Models::Deployment
        WhatIfChange = Azure::Resources::Mgmt::V2019_10_01::Models::WhatIfChange
        DeploymentValidateResult = Azure::Resources::Mgmt::V2019_10_01::Models::DeploymentValidateResult
        WhatIfOperationResult = Azure::Resources::Mgmt::V2019_10_01::Models::WhatIfOperationResult
        DeploymentWhatIfProperties = Azure::Resources::Mgmt::V2019_10_01::Models::DeploymentWhatIfProperties
        GenericResource = Azure::Resources::Mgmt::V2019_10_01::Models::GenericResource
        GenericResourceExpanded = Azure::Resources::Mgmt::V2019_10_01::Models::GenericResourceExpanded
        DeploymentMode = Azure::Resources::Mgmt::V2019_10_01::Models::DeploymentMode
        OnErrorDeploymentType = Azure::Resources::Mgmt::V2019_10_01::Models::OnErrorDeploymentType
        WhatIfResultFormat = Azure::Resources::Mgmt::V2019_10_01::Models::WhatIfResultFormat
        AliasPatternType = Azure::Resources::Mgmt::V2019_10_01::Models::AliasPatternType
        AliasType = Azure::Resources::Mgmt::V2019_10_01::Models::AliasType
        ResourceIdentityType = Azure::Resources::Mgmt::V2019_10_01::Models::ResourceIdentityType
        ProvisioningOperation = Azure::Resources::Mgmt::V2019_10_01::Models::ProvisioningOperation
        PropertyChangeType = Azure::Resources::Mgmt::V2019_10_01::Models::PropertyChangeType
        ChangeType = Azure::Resources::Mgmt::V2019_10_01::Models::ChangeType
        TagsPatchOperation = Azure::Resources::Mgmt::V2019_10_01::Models::TagsPatchOperation
      end

      class ResourcesManagementClass
        attr_reader :tags, :operations, :deployments, :providers, :resources, :resource_groups, :tags_operations, :deployment_operations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Resources::Mgmt::V2018_05_01::ResourceManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @tags = @client_0.tags

          @client_1 = Azure::Resources::Mgmt::V2019_10_01::ResourceManagementClient.new(configurable.credentials, base_url, options)
          if(@client_1.respond_to?(:subscription_id))
            @client_1.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_1)
          @operations = @client_1.operations
          @deployments = @client_1.deployments
          @providers = @client_1.providers
          @resources = @client_1.resources
          @resource_groups = @client_1.resource_groups
          @tags_operations = @client_1.tags_operations
          @deployment_operations = @client_1.deployment_operations

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/V2020_09_01_Hybrid/Resources/Mgmt"
          client.add_user_agent_information(profile_information)
        end

        def method_missing(method, *args)
          if @client_1.respond_to?method
            @client_1.send(method, *args)
          elsif @client_0.respond_to?method
            @client_0.send(method, *args)
          else
            super
          end
        end

        class ModelClasses
          def resource_management_error_with_details
            Azure::Resources::Mgmt::V2018_05_01::Models::ResourceManagementErrorWithDetails
          end
          def alias_path_type
            Azure::Resources::Mgmt::V2018_05_01::Models::AliasPathType
          end
          def sku
            Azure::Resources::Mgmt::V2019_10_01::Models::Sku
          end
          def identity_user_assigned_identities_value
            Azure::Resources::Mgmt::V2019_10_01::Models::IdentityUserAssignedIdentitiesValue
          end
          def generic_resource_filter
            Azure::Resources::Mgmt::V2019_10_01::Models::GenericResourceFilter
          end
          def identity
            Azure::Resources::Mgmt::V2019_10_01::Models::Identity
          end
          def template_link
            Azure::Resources::Mgmt::V2019_10_01::Models::TemplateLink
          end
          def parameters_link
            Azure::Resources::Mgmt::V2019_10_01::Models::ParametersLink
          end
          def debug_setting
            Azure::Resources::Mgmt::V2019_10_01::Models::DebugSetting
          end
          def tags_resource
            Azure::Resources::Mgmt::V2019_10_01::Models::TagsResource
          end
          def deployment_properties
            Azure::Resources::Mgmt::V2019_10_01::Models::DeploymentProperties
          end
          def tags_patch_resource
            Azure::Resources::Mgmt::V2019_10_01::Models::TagsPatchResource
          end
          def scoped_deployment
            Azure::Resources::Mgmt::V2019_10_01::Models::ScopedDeployment
          end
          def resource_list_result
            Azure::Resources::Mgmt::V2019_10_01::Models::ResourceListResult
          end
          def deployment_what_if_settings
            Azure::Resources::Mgmt::V2019_10_01::Models::DeploymentWhatIfSettings
          end
          def resource_group_properties
            Azure::Resources::Mgmt::V2019_10_01::Models::ResourceGroupProperties
          end
          def deployment_what_if
            Azure::Resources::Mgmt::V2019_10_01::Models::DeploymentWhatIf
          end
          def resource_group
            Azure::Resources::Mgmt::V2019_10_01::Models::ResourceGroup
          end
          def error_additional_info
            Azure::Resources::Mgmt::V2019_10_01::Models::ErrorAdditionalInfo
          end
          def resource_group_patchable
            Azure::Resources::Mgmt::V2019_10_01::Models::ResourceGroupPatchable
          end
          def resource_group_list_result
            Azure::Resources::Mgmt::V2019_10_01::Models::ResourceGroupListResult
          end
          def alias_path
            Azure::Resources::Mgmt::V2019_10_01::Models::AliasPath
          end
          def resources_move_info
            Azure::Resources::Mgmt::V2019_10_01::Models::ResourcesMoveInfo
          end
          def provider_resource_type
            Azure::Resources::Mgmt::V2019_10_01::Models::ProviderResourceType
          end
          def export_template_request
            Azure::Resources::Mgmt::V2019_10_01::Models::ExportTemplateRequest
          end
          def basic_dependency
            Azure::Resources::Mgmt::V2019_10_01::Models::BasicDependency
          end
          def tag_count
            Azure::Resources::Mgmt::V2019_10_01::Models::TagCount
          end
          def on_error_deployment_extended
            Azure::Resources::Mgmt::V2019_10_01::Models::OnErrorDeploymentExtended
          end
          def tag_value
            Azure::Resources::Mgmt::V2019_10_01::Models::TagValue
          end
          def deployment_properties_extended
            Azure::Resources::Mgmt::V2019_10_01::Models::DeploymentPropertiesExtended
          end
          def tag_details
            Azure::Resources::Mgmt::V2019_10_01::Models::TagDetails
          end
          def deployment_extended
            Azure::Resources::Mgmt::V2019_10_01::Models::DeploymentExtended
          end
          def tags_list_result
            Azure::Resources::Mgmt::V2019_10_01::Models::TagsListResult
          end
          def provider_list_result
            Azure::Resources::Mgmt::V2019_10_01::Models::ProviderListResult
          end
          def target_resource
            Azure::Resources::Mgmt::V2019_10_01::Models::TargetResource
          end
          def deployment_extended_filter
            Azure::Resources::Mgmt::V2019_10_01::Models::DeploymentExtendedFilter
          end
          def http_message
            Azure::Resources::Mgmt::V2019_10_01::Models::HttpMessage
          end
          def on_error_deployment
            Azure::Resources::Mgmt::V2019_10_01::Models::OnErrorDeployment
          end
          def deployment_operation_properties
            Azure::Resources::Mgmt::V2019_10_01::Models::DeploymentOperationProperties
          end
          def deployment_export_result
            Azure::Resources::Mgmt::V2019_10_01::Models::DeploymentExportResult
          end
          def deployment_operation
            Azure::Resources::Mgmt::V2019_10_01::Models::DeploymentOperation
          end
          def scoped_deployment_what_if
            Azure::Resources::Mgmt::V2019_10_01::Models::ScopedDeploymentWhatIf
          end
          def deployment_operations_list_result
            Azure::Resources::Mgmt::V2019_10_01::Models::DeploymentOperationsListResult
          end
          def alias_pattern
            Azure::Resources::Mgmt::V2019_10_01::Models::AliasPattern
          end
          def resource_provider_operation_display_properties
            Azure::Resources::Mgmt::V2019_10_01::Models::ResourceProviderOperationDisplayProperties
          end
          def provider
            Azure::Resources::Mgmt::V2019_10_01::Models::Provider
          end
          def resource
            Azure::Resources::Mgmt::V2019_10_01::Models::Resource
          end
          def resource_reference
            Azure::Resources::Mgmt::V2019_10_01::Models::ResourceReference
          end
          def sub_resource
            Azure::Resources::Mgmt::V2019_10_01::Models::SubResource
          end
          def deployment_list_result
            Azure::Resources::Mgmt::V2019_10_01::Models::DeploymentListResult
          end
          def resource_group_export_result
            Azure::Resources::Mgmt::V2019_10_01::Models::ResourceGroupExportResult
          end
          def resource_group_filter
            Azure::Resources::Mgmt::V2019_10_01::Models::ResourceGroupFilter
          end
          def operation_display
            Azure::Resources::Mgmt::V2019_10_01::Models::OperationDisplay
          end
          def tags
            Azure::Resources::Mgmt::V2019_10_01::Models::Tags
          end
          def error_response
            Azure::Resources::Mgmt::V2019_10_01::Models::ErrorResponse
          end
          def operation
            Azure::Resources::Mgmt::V2019_10_01::Models::Operation
          end
          def dependency
            Azure::Resources::Mgmt::V2019_10_01::Models::Dependency
          end
          def operation_list_result
            Azure::Resources::Mgmt::V2019_10_01::Models::OperationListResult
          end
          def plan
            Azure::Resources::Mgmt::V2019_10_01::Models::Plan
          end
          def template_hash_result
            Azure::Resources::Mgmt::V2019_10_01::Models::TemplateHashResult
          end
          def alias_model
            Azure::Resources::Mgmt::V2019_10_01::Models::AliasModel
          end
          def what_if_property_change
            Azure::Resources::Mgmt::V2019_10_01::Models::WhatIfPropertyChange
          end
          def deployment
            Azure::Resources::Mgmt::V2019_10_01::Models::Deployment
          end
          def what_if_change
            Azure::Resources::Mgmt::V2019_10_01::Models::WhatIfChange
          end
          def deployment_validate_result
            Azure::Resources::Mgmt::V2019_10_01::Models::DeploymentValidateResult
          end
          def what_if_operation_result
            Azure::Resources::Mgmt::V2019_10_01::Models::WhatIfOperationResult
          end
          def deployment_what_if_properties
            Azure::Resources::Mgmt::V2019_10_01::Models::DeploymentWhatIfProperties
          end
          def generic_resource
            Azure::Resources::Mgmt::V2019_10_01::Models::GenericResource
          end
          def generic_resource_expanded
            Azure::Resources::Mgmt::V2019_10_01::Models::GenericResourceExpanded
          end
          def deployment_mode
            Azure::Resources::Mgmt::V2019_10_01::Models::DeploymentMode
          end
          def on_error_deployment_type
            Azure::Resources::Mgmt::V2019_10_01::Models::OnErrorDeploymentType
          end
          def what_if_result_format
            Azure::Resources::Mgmt::V2019_10_01::Models::WhatIfResultFormat
          end
          def alias_pattern_type
            Azure::Resources::Mgmt::V2019_10_01::Models::AliasPatternType
          end
          def alias_type
            Azure::Resources::Mgmt::V2019_10_01::Models::AliasType
          end
          def resource_identity_type
            Azure::Resources::Mgmt::V2019_10_01::Models::ResourceIdentityType
          end
          def provisioning_operation
            Azure::Resources::Mgmt::V2019_10_01::Models::ProvisioningOperation
          end
          def property_change_type
            Azure::Resources::Mgmt::V2019_10_01::Models::PropertyChangeType
          end
          def change_type
            Azure::Resources::Mgmt::V2019_10_01::Models::ChangeType
          end
          def tags_patch_operation
            Azure::Resources::Mgmt::V2019_10_01::Models::TagsPatchOperation
          end
        end
      end
    end
  end
end
