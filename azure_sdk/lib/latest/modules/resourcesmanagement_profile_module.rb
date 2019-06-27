# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_resources_management'

module Azure::Profiles::Latest
  module ResourcesManagement
    module Mgmt
      ManagementGroupSubscriptions = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::ManagementGroupSubscriptions
      Operations = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Operations
      Entities = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Entities
      ManagementGroups = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::ManagementGroups

      module Models
        CreateManagementGroupChildInfo = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::CreateManagementGroupChildInfo
        ManagementGroup = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::ManagementGroup
        CreateManagementGroupRequest = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::CreateManagementGroupRequest
        ManagementGroupChildInfo = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::ManagementGroupChildInfo
        CheckNameAvailabilityRequest = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::CheckNameAvailabilityRequest
        ManagementGroupInfo = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::ManagementGroupInfo
        CheckNameAvailabilityResult = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::CheckNameAvailabilityResult
        ErrorResponse = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::ErrorResponse
        ErrorDetails = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::ErrorDetails
        Operation = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::Operation
        Status = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::Status
        OperationListResult = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::OperationListResult
        Reason = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::Reason
        Type = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::Type
        OperationResults = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::OperationResults
        OperationDisplayProperties = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::OperationDisplayProperties
        EntityParentGroupInfo = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::EntityParentGroupInfo
        EntityInfo = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::EntityInfo
        TenantBackfillStatusResult = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::TenantBackfillStatusResult
        EntityListResult = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::EntityListResult
        ManagementGroupListResult = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::ManagementGroupListResult
        EntityHierarchyItem = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::EntityHierarchyItem
        ManagementGroupDetails = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::ManagementGroupDetails
        PatchManagementGroupRequest = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::PatchManagementGroupRequest
        CreateParentGroupInfo = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::CreateParentGroupInfo
        CreateManagementGroupDetails = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::CreateManagementGroupDetails
        ParentGroupInfo = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::ParentGroupInfo
      end

      class ResourcesManagementManagementClass
        attr_reader :management_group_subscriptions, :operations, :entities, :management_groups, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::ManagementGroupsAPI.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @management_group_subscriptions = @client_0.management_group_subscriptions
          @operations = @client_0.operations
          @entities = @client_0.entities
          @management_groups = @client_0.management_groups

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/ResourcesManagement/Mgmt"
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
          def create_management_group_child_info
            Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::CreateManagementGroupChildInfo
          end
          def management_group
            Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::ManagementGroup
          end
          def create_management_group_request
            Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::CreateManagementGroupRequest
          end
          def management_group_child_info
            Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::ManagementGroupChildInfo
          end
          def check_name_availability_request
            Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::CheckNameAvailabilityRequest
          end
          def management_group_info
            Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::ManagementGroupInfo
          end
          def check_name_availability_result
            Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::CheckNameAvailabilityResult
          end
          def error_response
            Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::ErrorResponse
          end
          def error_details
            Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::ErrorDetails
          end
          def operation
            Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::Operation
          end
          def status
            Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::Status
          end
          def operation_list_result
            Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::OperationListResult
          end
          def reason
            Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::Reason
          end
          def type
            Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::Type
          end
          def operation_results
            Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::OperationResults
          end
          def operation_display_properties
            Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::OperationDisplayProperties
          end
          def entity_parent_group_info
            Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::EntityParentGroupInfo
          end
          def entity_info
            Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::EntityInfo
          end
          def tenant_backfill_status_result
            Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::TenantBackfillStatusResult
          end
          def entity_list_result
            Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::EntityListResult
          end
          def management_group_list_result
            Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::ManagementGroupListResult
          end
          def entity_hierarchy_item
            Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::EntityHierarchyItem
          end
          def management_group_details
            Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::ManagementGroupDetails
          end
          def patch_management_group_request
            Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::PatchManagementGroupRequest
          end
          def create_parent_group_info
            Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::CreateParentGroupInfo
          end
          def create_management_group_details
            Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::CreateManagementGroupDetails
          end
          def parent_group_info
            Azure::ResourcesManagement::Mgmt::V2018_03_01_preview::Models::ParentGroupInfo
          end
        end
      end
    end
  end
end
