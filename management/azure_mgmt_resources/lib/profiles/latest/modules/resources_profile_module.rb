# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_resources'

module Azure::Resources::Profiles::Latest
  module Mgmt
    Operations = Azure::Resources::Mgmt::V2020_06_01::Operations
    Deployments = Azure::Resources::Mgmt::V2020_06_01::Deployments
    Providers = Azure::Resources::Mgmt::V2020_06_01::Providers
    Resources = Azure::Resources::Mgmt::V2020_06_01::Resources
    ResourceGroups = Azure::Resources::Mgmt::V2020_06_01::ResourceGroups
    TagsOperations = Azure::Resources::Mgmt::V2020_06_01::TagsOperations
    DeploymentOperations = Azure::Resources::Mgmt::V2020_06_01::DeploymentOperations

    module Models
      Plan = Azure::Resources::Mgmt::V2020_06_01::Models::Plan
      Sku = Azure::Resources::Mgmt::V2020_06_01::Models::Sku
      GenericResourceFilter = Azure::Resources::Mgmt::V2020_06_01::Models::GenericResourceFilter
      IdentityUserAssignedIdentitiesValue = Azure::Resources::Mgmt::V2020_06_01::Models::IdentityUserAssignedIdentitiesValue
      TemplateLink = Azure::Resources::Mgmt::V2020_06_01::Models::TemplateLink
      Identity = Azure::Resources::Mgmt::V2020_06_01::Models::Identity
      DebugSetting = Azure::Resources::Mgmt::V2020_06_01::Models::DebugSetting
      OnErrorDeployment = Azure::Resources::Mgmt::V2020_06_01::Models::OnErrorDeployment
      ExpressionEvaluationOptions = Azure::Resources::Mgmt::V2020_06_01::Models::ExpressionEvaluationOptions
      TagsResource = Azure::Resources::Mgmt::V2020_06_01::Models::TagsResource
      Deployment = Azure::Resources::Mgmt::V2020_06_01::Models::Deployment
      TagsPatchResource = Azure::Resources::Mgmt::V2020_06_01::Models::TagsPatchResource
      DeploymentExportResult = Azure::Resources::Mgmt::V2020_06_01::Models::DeploymentExportResult
      ResourceListResult = Azure::Resources::Mgmt::V2020_06_01::Models::ResourceListResult
      Tags = Azure::Resources::Mgmt::V2020_06_01::Models::Tags
      DeploymentWhatIf = Azure::Resources::Mgmt::V2020_06_01::Models::DeploymentWhatIf
      ResourceGroupProperties = Azure::Resources::Mgmt::V2020_06_01::Models::ResourceGroupProperties
      ErrorAdditionalInfo = Azure::Resources::Mgmt::V2020_06_01::Models::ErrorAdditionalInfo
      ResourceGroup = Azure::Resources::Mgmt::V2020_06_01::Models::ResourceGroup
      ResourceGroupPatchable = Azure::Resources::Mgmt::V2020_06_01::Models::ResourceGroupPatchable
      AliasPathMetadata = Azure::Resources::Mgmt::V2020_06_01::Models::AliasPathMetadata
      ResourceGroupListResult = Azure::Resources::Mgmt::V2020_06_01::Models::ResourceGroupListResult
      AliasPath = Azure::Resources::Mgmt::V2020_06_01::Models::AliasPath
      ResourcesMoveInfo = Azure::Resources::Mgmt::V2020_06_01::Models::ResourcesMoveInfo
      ProviderResourceType = Azure::Resources::Mgmt::V2020_06_01::Models::ProviderResourceType
      ExportTemplateRequest = Azure::Resources::Mgmt::V2020_06_01::Models::ExportTemplateRequest
      BasicDependency = Azure::Resources::Mgmt::V2020_06_01::Models::BasicDependency
      TagCount = Azure::Resources::Mgmt::V2020_06_01::Models::TagCount
      OnErrorDeploymentExtended = Azure::Resources::Mgmt::V2020_06_01::Models::OnErrorDeploymentExtended
      TagValue = Azure::Resources::Mgmt::V2020_06_01::Models::TagValue
      DeploymentPropertiesExtended = Azure::Resources::Mgmt::V2020_06_01::Models::DeploymentPropertiesExtended
      TagDetails = Azure::Resources::Mgmt::V2020_06_01::Models::TagDetails
      DeploymentExtended = Azure::Resources::Mgmt::V2020_06_01::Models::DeploymentExtended
      TagsListResult = Azure::Resources::Mgmt::V2020_06_01::Models::TagsListResult
      ProviderListResult = Azure::Resources::Mgmt::V2020_06_01::Models::ProviderListResult
      TargetResource = Azure::Resources::Mgmt::V2020_06_01::Models::TargetResource
      ResourceGroupFilter = Azure::Resources::Mgmt::V2020_06_01::Models::ResourceGroupFilter
      HttpMessage = Azure::Resources::Mgmt::V2020_06_01::Models::HttpMessage
      DeploymentProperties = Azure::Resources::Mgmt::V2020_06_01::Models::DeploymentProperties
      StatusMessage = Azure::Resources::Mgmt::V2020_06_01::Models::StatusMessage
      DeploymentWhatIfSettings = Azure::Resources::Mgmt::V2020_06_01::Models::DeploymentWhatIfSettings
      DeploymentOperationProperties = Azure::Resources::Mgmt::V2020_06_01::Models::DeploymentOperationProperties
      ErrorResponse = Azure::Resources::Mgmt::V2020_06_01::Models::ErrorResponse
      DeploymentOperation = Azure::Resources::Mgmt::V2020_06_01::Models::DeploymentOperation
      AliasPattern = Azure::Resources::Mgmt::V2020_06_01::Models::AliasPattern
      DeploymentOperationsListResult = Azure::Resources::Mgmt::V2020_06_01::Models::DeploymentOperationsListResult
      Provider = Azure::Resources::Mgmt::V2020_06_01::Models::Provider
      ResourceProviderOperationDisplayProperties = Azure::Resources::Mgmt::V2020_06_01::Models::ResourceProviderOperationDisplayProperties
      ResourceReference = Azure::Resources::Mgmt::V2020_06_01::Models::ResourceReference
      Resource = Azure::Resources::Mgmt::V2020_06_01::Models::Resource
      DeploymentListResult = Azure::Resources::Mgmt::V2020_06_01::Models::DeploymentListResult
      SubResource = Azure::Resources::Mgmt::V2020_06_01::Models::SubResource
      ParametersLink = Azure::Resources::Mgmt::V2020_06_01::Models::ParametersLink
      ResourceGroupExportResult = Azure::Resources::Mgmt::V2020_06_01::Models::ResourceGroupExportResult
      ScopedDeploymentWhatIf = Azure::Resources::Mgmt::V2020_06_01::Models::ScopedDeploymentWhatIf
      OperationDisplay = Azure::Resources::Mgmt::V2020_06_01::Models::OperationDisplay
      AliasModel = Azure::Resources::Mgmt::V2020_06_01::Models::AliasModel
      Operation = Azure::Resources::Mgmt::V2020_06_01::Models::Operation
      DeploymentValidateResult = Azure::Resources::Mgmt::V2020_06_01::Models::DeploymentValidateResult
      OperationListResult = Azure::Resources::Mgmt::V2020_06_01::Models::OperationListResult
      ScopedDeployment = Azure::Resources::Mgmt::V2020_06_01::Models::ScopedDeployment
      TemplateHashResult = Azure::Resources::Mgmt::V2020_06_01::Models::TemplateHashResult
      Dependency = Azure::Resources::Mgmt::V2020_06_01::Models::Dependency
      WhatIfPropertyChange = Azure::Resources::Mgmt::V2020_06_01::Models::WhatIfPropertyChange
      ApiProfile = Azure::Resources::Mgmt::V2020_06_01::Models::ApiProfile
      WhatIfChange = Azure::Resources::Mgmt::V2020_06_01::Models::WhatIfChange
      DeploymentExtendedFilter = Azure::Resources::Mgmt::V2020_06_01::Models::DeploymentExtendedFilter
      WhatIfOperationResult = Azure::Resources::Mgmt::V2020_06_01::Models::WhatIfOperationResult
      DeploymentWhatIfProperties = Azure::Resources::Mgmt::V2020_06_01::Models::DeploymentWhatIfProperties
      GenericResource = Azure::Resources::Mgmt::V2020_06_01::Models::GenericResource
      GenericResourceExpanded = Azure::Resources::Mgmt::V2020_06_01::Models::GenericResourceExpanded
      DeploymentMode = Azure::Resources::Mgmt::V2020_06_01::Models::DeploymentMode
      OnErrorDeploymentType = Azure::Resources::Mgmt::V2020_06_01::Models::OnErrorDeploymentType
      ExpressionEvaluationOptionsScopeType = Azure::Resources::Mgmt::V2020_06_01::Models::ExpressionEvaluationOptionsScopeType
      WhatIfResultFormat = Azure::Resources::Mgmt::V2020_06_01::Models::WhatIfResultFormat
      AliasPathTokenType = Azure::Resources::Mgmt::V2020_06_01::Models::AliasPathTokenType
      AliasPathAttributes = Azure::Resources::Mgmt::V2020_06_01::Models::AliasPathAttributes
      AliasPatternType = Azure::Resources::Mgmt::V2020_06_01::Models::AliasPatternType
      AliasType = Azure::Resources::Mgmt::V2020_06_01::Models::AliasType
      ProvisioningState = Azure::Resources::Mgmt::V2020_06_01::Models::ProvisioningState
      ResourceIdentityType = Azure::Resources::Mgmt::V2020_06_01::Models::ResourceIdentityType
      ProvisioningOperation = Azure::Resources::Mgmt::V2020_06_01::Models::ProvisioningOperation
      PropertyChangeType = Azure::Resources::Mgmt::V2020_06_01::Models::PropertyChangeType
      ChangeType = Azure::Resources::Mgmt::V2020_06_01::Models::ChangeType
      TagsPatchOperation = Azure::Resources::Mgmt::V2020_06_01::Models::TagsPatchOperation
    end

    #
    # ResourcesManagementClass
    #
    class ResourcesManagementClass
      attr_reader :operations, :deployments, :providers, :resources, :resource_groups, :tags_operations, :deployment_operations, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::Resources::Mgmt::V2020_06_01::ResourceManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @operations = @client_0.operations
        @deployments = @client_0.deployments
        @providers = @client_0.providers
        @resources = @client_0.resources
        @resource_groups = @client_0.resource_groups
        @tags_operations = @client_0.tags_operations
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
      def plan
        Azure::Resources::Mgmt::V2020_06_01::Models::Plan
      end
      def sku
        Azure::Resources::Mgmt::V2020_06_01::Models::Sku
      end
      def generic_resource_filter
        Azure::Resources::Mgmt::V2020_06_01::Models::GenericResourceFilter
      end
      def identity_user_assigned_identities_value
        Azure::Resources::Mgmt::V2020_06_01::Models::IdentityUserAssignedIdentitiesValue
      end
      def template_link
        Azure::Resources::Mgmt::V2020_06_01::Models::TemplateLink
      end
      def identity
        Azure::Resources::Mgmt::V2020_06_01::Models::Identity
      end
      def debug_setting
        Azure::Resources::Mgmt::V2020_06_01::Models::DebugSetting
      end
      def on_error_deployment
        Azure::Resources::Mgmt::V2020_06_01::Models::OnErrorDeployment
      end
      def expression_evaluation_options
        Azure::Resources::Mgmt::V2020_06_01::Models::ExpressionEvaluationOptions
      end
      def tags_resource
        Azure::Resources::Mgmt::V2020_06_01::Models::TagsResource
      end
      def deployment
        Azure::Resources::Mgmt::V2020_06_01::Models::Deployment
      end
      def tags_patch_resource
        Azure::Resources::Mgmt::V2020_06_01::Models::TagsPatchResource
      end
      def deployment_export_result
        Azure::Resources::Mgmt::V2020_06_01::Models::DeploymentExportResult
      end
      def resource_list_result
        Azure::Resources::Mgmt::V2020_06_01::Models::ResourceListResult
      end
      def tags
        Azure::Resources::Mgmt::V2020_06_01::Models::Tags
      end
      def deployment_what_if
        Azure::Resources::Mgmt::V2020_06_01::Models::DeploymentWhatIf
      end
      def resource_group_properties
        Azure::Resources::Mgmt::V2020_06_01::Models::ResourceGroupProperties
      end
      def error_additional_info
        Azure::Resources::Mgmt::V2020_06_01::Models::ErrorAdditionalInfo
      end
      def resource_group
        Azure::Resources::Mgmt::V2020_06_01::Models::ResourceGroup
      end
      def resource_group_patchable
        Azure::Resources::Mgmt::V2020_06_01::Models::ResourceGroupPatchable
      end
      def alias_path_metadata
        Azure::Resources::Mgmt::V2020_06_01::Models::AliasPathMetadata
      end
      def resource_group_list_result
        Azure::Resources::Mgmt::V2020_06_01::Models::ResourceGroupListResult
      end
      def alias_path
        Azure::Resources::Mgmt::V2020_06_01::Models::AliasPath
      end
      def resources_move_info
        Azure::Resources::Mgmt::V2020_06_01::Models::ResourcesMoveInfo
      end
      def provider_resource_type
        Azure::Resources::Mgmt::V2020_06_01::Models::ProviderResourceType
      end
      def export_template_request
        Azure::Resources::Mgmt::V2020_06_01::Models::ExportTemplateRequest
      end
      def basic_dependency
        Azure::Resources::Mgmt::V2020_06_01::Models::BasicDependency
      end
      def tag_count
        Azure::Resources::Mgmt::V2020_06_01::Models::TagCount
      end
      def on_error_deployment_extended
        Azure::Resources::Mgmt::V2020_06_01::Models::OnErrorDeploymentExtended
      end
      def tag_value
        Azure::Resources::Mgmt::V2020_06_01::Models::TagValue
      end
      def deployment_properties_extended
        Azure::Resources::Mgmt::V2020_06_01::Models::DeploymentPropertiesExtended
      end
      def tag_details
        Azure::Resources::Mgmt::V2020_06_01::Models::TagDetails
      end
      def deployment_extended
        Azure::Resources::Mgmt::V2020_06_01::Models::DeploymentExtended
      end
      def tags_list_result
        Azure::Resources::Mgmt::V2020_06_01::Models::TagsListResult
      end
      def provider_list_result
        Azure::Resources::Mgmt::V2020_06_01::Models::ProviderListResult
      end
      def target_resource
        Azure::Resources::Mgmt::V2020_06_01::Models::TargetResource
      end
      def resource_group_filter
        Azure::Resources::Mgmt::V2020_06_01::Models::ResourceGroupFilter
      end
      def http_message
        Azure::Resources::Mgmt::V2020_06_01::Models::HttpMessage
      end
      def deployment_properties
        Azure::Resources::Mgmt::V2020_06_01::Models::DeploymentProperties
      end
      def status_message
        Azure::Resources::Mgmt::V2020_06_01::Models::StatusMessage
      end
      def deployment_what_if_settings
        Azure::Resources::Mgmt::V2020_06_01::Models::DeploymentWhatIfSettings
      end
      def deployment_operation_properties
        Azure::Resources::Mgmt::V2020_06_01::Models::DeploymentOperationProperties
      end
      def error_response
        Azure::Resources::Mgmt::V2020_06_01::Models::ErrorResponse
      end
      def deployment_operation
        Azure::Resources::Mgmt::V2020_06_01::Models::DeploymentOperation
      end
      def alias_pattern
        Azure::Resources::Mgmt::V2020_06_01::Models::AliasPattern
      end
      def deployment_operations_list_result
        Azure::Resources::Mgmt::V2020_06_01::Models::DeploymentOperationsListResult
      end
      def provider
        Azure::Resources::Mgmt::V2020_06_01::Models::Provider
      end
      def resource_provider_operation_display_properties
        Azure::Resources::Mgmt::V2020_06_01::Models::ResourceProviderOperationDisplayProperties
      end
      def resource_reference
        Azure::Resources::Mgmt::V2020_06_01::Models::ResourceReference
      end
      def resource
        Azure::Resources::Mgmt::V2020_06_01::Models::Resource
      end
      def deployment_list_result
        Azure::Resources::Mgmt::V2020_06_01::Models::DeploymentListResult
      end
      def sub_resource
        Azure::Resources::Mgmt::V2020_06_01::Models::SubResource
      end
      def parameters_link
        Azure::Resources::Mgmt::V2020_06_01::Models::ParametersLink
      end
      def resource_group_export_result
        Azure::Resources::Mgmt::V2020_06_01::Models::ResourceGroupExportResult
      end
      def scoped_deployment_what_if
        Azure::Resources::Mgmt::V2020_06_01::Models::ScopedDeploymentWhatIf
      end
      def operation_display
        Azure::Resources::Mgmt::V2020_06_01::Models::OperationDisplay
      end
      def alias_model
        Azure::Resources::Mgmt::V2020_06_01::Models::AliasModel
      end
      def operation
        Azure::Resources::Mgmt::V2020_06_01::Models::Operation
      end
      def deployment_validate_result
        Azure::Resources::Mgmt::V2020_06_01::Models::DeploymentValidateResult
      end
      def operation_list_result
        Azure::Resources::Mgmt::V2020_06_01::Models::OperationListResult
      end
      def scoped_deployment
        Azure::Resources::Mgmt::V2020_06_01::Models::ScopedDeployment
      end
      def template_hash_result
        Azure::Resources::Mgmt::V2020_06_01::Models::TemplateHashResult
      end
      def dependency
        Azure::Resources::Mgmt::V2020_06_01::Models::Dependency
      end
      def what_if_property_change
        Azure::Resources::Mgmt::V2020_06_01::Models::WhatIfPropertyChange
      end
      def api_profile
        Azure::Resources::Mgmt::V2020_06_01::Models::ApiProfile
      end
      def what_if_change
        Azure::Resources::Mgmt::V2020_06_01::Models::WhatIfChange
      end
      def deployment_extended_filter
        Azure::Resources::Mgmt::V2020_06_01::Models::DeploymentExtendedFilter
      end
      def what_if_operation_result
        Azure::Resources::Mgmt::V2020_06_01::Models::WhatIfOperationResult
      end
      def deployment_what_if_properties
        Azure::Resources::Mgmt::V2020_06_01::Models::DeploymentWhatIfProperties
      end
      def generic_resource
        Azure::Resources::Mgmt::V2020_06_01::Models::GenericResource
      end
      def generic_resource_expanded
        Azure::Resources::Mgmt::V2020_06_01::Models::GenericResourceExpanded
      end
      def deployment_mode
        Azure::Resources::Mgmt::V2020_06_01::Models::DeploymentMode
      end
      def on_error_deployment_type
        Azure::Resources::Mgmt::V2020_06_01::Models::OnErrorDeploymentType
      end
      def expression_evaluation_options_scope_type
        Azure::Resources::Mgmt::V2020_06_01::Models::ExpressionEvaluationOptionsScopeType
      end
      def what_if_result_format
        Azure::Resources::Mgmt::V2020_06_01::Models::WhatIfResultFormat
      end
      def alias_path_token_type
        Azure::Resources::Mgmt::V2020_06_01::Models::AliasPathTokenType
      end
      def alias_path_attributes
        Azure::Resources::Mgmt::V2020_06_01::Models::AliasPathAttributes
      end
      def alias_pattern_type
        Azure::Resources::Mgmt::V2020_06_01::Models::AliasPatternType
      end
      def alias_type
        Azure::Resources::Mgmt::V2020_06_01::Models::AliasType
      end
      def provisioning_state
        Azure::Resources::Mgmt::V2020_06_01::Models::ProvisioningState
      end
      def resource_identity_type
        Azure::Resources::Mgmt::V2020_06_01::Models::ResourceIdentityType
      end
      def provisioning_operation
        Azure::Resources::Mgmt::V2020_06_01::Models::ProvisioningOperation
      end
      def property_change_type
        Azure::Resources::Mgmt::V2020_06_01::Models::PropertyChangeType
      end
      def change_type
        Azure::Resources::Mgmt::V2020_06_01::Models::ChangeType
      end
      def tags_patch_operation
        Azure::Resources::Mgmt::V2020_06_01::Models::TagsPatchOperation
      end
    end
  end
end
