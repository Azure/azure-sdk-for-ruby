# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_resources_management'

module Azure::Profiles::Latest
  module ResourcesManagement
    module Mgmt
      ManagementGroupSubscriptions = Azure::ResourcesManagement::Mgmt::V2017_11_01_preview::ManagementGroupSubscriptions
      Operations = Azure::ResourcesManagement::Mgmt::V2017_11_01_preview::Operations
      ManagementGroups = Azure::ResourcesManagement::Mgmt::V2017_11_01_preview::ManagementGroups

      module Models
        ManagementGroupChildInfo = Azure::ResourcesManagement::Mgmt::V2017_11_01_preview::Models::ManagementGroupChildInfo
        ManagementGroup = Azure::ResourcesManagement::Mgmt::V2017_11_01_preview::Models::ManagementGroup
        OperationDisplay = Azure::ResourcesManagement::Mgmt::V2017_11_01_preview::Models::OperationDisplay
        OperationListResult = Azure::ResourcesManagement::Mgmt::V2017_11_01_preview::Models::OperationListResult
        ErrorResponse = Azure::ResourcesManagement::Mgmt::V2017_11_01_preview::Models::ErrorResponse
        Operation = Azure::ResourcesManagement::Mgmt::V2017_11_01_preview::Models::Operation
        ManagementGroupListResult = Azure::ResourcesManagement::Mgmt::V2017_11_01_preview::Models::ManagementGroupListResult
        ParentGroupInfo = Azure::ResourcesManagement::Mgmt::V2017_11_01_preview::Models::ParentGroupInfo
        ErrorDetails = Azure::ResourcesManagement::Mgmt::V2017_11_01_preview::Models::ErrorDetails
        ManagementGroupDetails = Azure::ResourcesManagement::Mgmt::V2017_11_01_preview::Models::ManagementGroupDetails
        ManagementGroupInfo = Azure::ResourcesManagement::Mgmt::V2017_11_01_preview::Models::ManagementGroupInfo
        CreateGroupRequest = Azure::ResourcesManagement::Mgmt::V2017_11_01_preview::Models::CreateGroupRequest
      end

      class ResourcesManagementManagementClass
        attr_reader :management_group_subscriptions, :operations, :management_groups, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::ResourcesManagement::Mgmt::V2017_11_01_preview::ManagementGroupsAPI.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @management_group_subscriptions = @client_0.management_group_subscriptions
          @operations = @client_0.operations
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
          def management_group_child_info
            Azure::ResourcesManagement::Mgmt::V2017_11_01_preview::Models::ManagementGroupChildInfo
          end
          def management_group
            Azure::ResourcesManagement::Mgmt::V2017_11_01_preview::Models::ManagementGroup
          end
          def operation_display
            Azure::ResourcesManagement::Mgmt::V2017_11_01_preview::Models::OperationDisplay
          end
          def operation_list_result
            Azure::ResourcesManagement::Mgmt::V2017_11_01_preview::Models::OperationListResult
          end
          def error_response
            Azure::ResourcesManagement::Mgmt::V2017_11_01_preview::Models::ErrorResponse
          end
          def operation
            Azure::ResourcesManagement::Mgmt::V2017_11_01_preview::Models::Operation
          end
          def management_group_list_result
            Azure::ResourcesManagement::Mgmt::V2017_11_01_preview::Models::ManagementGroupListResult
          end
          def parent_group_info
            Azure::ResourcesManagement::Mgmt::V2017_11_01_preview::Models::ParentGroupInfo
          end
          def error_details
            Azure::ResourcesManagement::Mgmt::V2017_11_01_preview::Models::ErrorDetails
          end
          def management_group_details
            Azure::ResourcesManagement::Mgmt::V2017_11_01_preview::Models::ManagementGroupDetails
          end
          def management_group_info
            Azure::ResourcesManagement::Mgmt::V2017_11_01_preview::Models::ManagementGroupInfo
          end
          def create_group_request
            Azure::ResourcesManagement::Mgmt::V2017_11_01_preview::Models::CreateGroupRequest
          end
        end
      end
    end
  end
end
