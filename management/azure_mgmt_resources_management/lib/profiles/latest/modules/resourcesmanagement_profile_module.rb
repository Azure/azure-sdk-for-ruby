# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_resources_management'

module Azure::ResourcesManagement::Profiles::Latest
  module Mgmt
    ManagementGroups = Azure::ResourcesManagement::Mgmt::V2017_08_31_preview::ManagementGroups
    Operations = Azure::ResourcesManagement::Mgmt::V2017_08_31_preview::Operations

    module Models
      ParentGroupInfo = Azure::ResourcesManagement::Mgmt::V2017_08_31_preview::Models::ParentGroupInfo
      ErrorDetails = Azure::ResourcesManagement::Mgmt::V2017_08_31_preview::Models::ErrorDetails
      ManagementGroupDetailsProperties = Azure::ResourcesManagement::Mgmt::V2017_08_31_preview::Models::ManagementGroupDetailsProperties
      OperationDisplay = Azure::ResourcesManagement::Mgmt::V2017_08_31_preview::Models::OperationDisplay
      ManagementGroup = Azure::ResourcesManagement::Mgmt::V2017_08_31_preview::Models::ManagementGroup
      OperationListResult = Azure::ResourcesManagement::Mgmt::V2017_08_31_preview::Models::OperationListResult
      ManagementGroupChildInfo = Azure::ResourcesManagement::Mgmt::V2017_08_31_preview::Models::ManagementGroupChildInfo
      ManagementGroupListResult = Azure::ResourcesManagement::Mgmt::V2017_08_31_preview::Models::ManagementGroupListResult
      ManagementGroupWithChildren = Azure::ResourcesManagement::Mgmt::V2017_08_31_preview::Models::ManagementGroupWithChildren
      Operation = Azure::ResourcesManagement::Mgmt::V2017_08_31_preview::Models::Operation
      ManagementGroupRecursiveChildInfo = Azure::ResourcesManagement::Mgmt::V2017_08_31_preview::Models::ManagementGroupRecursiveChildInfo
      ErrorResponse = Azure::ResourcesManagement::Mgmt::V2017_08_31_preview::Models::ErrorResponse
      ManagementGroupWithHierarchy = Azure::ResourcesManagement::Mgmt::V2017_08_31_preview::Models::ManagementGroupWithHierarchy
      ManagementGroupInfo = Azure::ResourcesManagement::Mgmt::V2017_08_31_preview::Models::ManagementGroupInfo
    end

    #
    # ResourcesManagementManagementClass
    #
    class ResourcesManagementManagementClass
      attr_reader :management_groups, :operations, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::ResourcesManagement::Mgmt::V2017_08_31_preview::ManagementGroupsAPI.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @management_groups = @client_0.management_groups
        @operations = @client_0.operations

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/ResourcesManagement/Mgmt'
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
      def parent_group_info
        Azure::ResourcesManagement::Mgmt::V2017_08_31_preview::Models::ParentGroupInfo
      end
      def error_details
        Azure::ResourcesManagement::Mgmt::V2017_08_31_preview::Models::ErrorDetails
      end
      def management_group_details_properties
        Azure::ResourcesManagement::Mgmt::V2017_08_31_preview::Models::ManagementGroupDetailsProperties
      end
      def operation_display
        Azure::ResourcesManagement::Mgmt::V2017_08_31_preview::Models::OperationDisplay
      end
      def management_group
        Azure::ResourcesManagement::Mgmt::V2017_08_31_preview::Models::ManagementGroup
      end
      def operation_list_result
        Azure::ResourcesManagement::Mgmt::V2017_08_31_preview::Models::OperationListResult
      end
      def management_group_child_info
        Azure::ResourcesManagement::Mgmt::V2017_08_31_preview::Models::ManagementGroupChildInfo
      end
      def management_group_list_result
        Azure::ResourcesManagement::Mgmt::V2017_08_31_preview::Models::ManagementGroupListResult
      end
      def management_group_with_children
        Azure::ResourcesManagement::Mgmt::V2017_08_31_preview::Models::ManagementGroupWithChildren
      end
      def operation
        Azure::ResourcesManagement::Mgmt::V2017_08_31_preview::Models::Operation
      end
      def management_group_recursive_child_info
        Azure::ResourcesManagement::Mgmt::V2017_08_31_preview::Models::ManagementGroupRecursiveChildInfo
      end
      def error_response
        Azure::ResourcesManagement::Mgmt::V2017_08_31_preview::Models::ErrorResponse
      end
      def management_group_with_hierarchy
        Azure::ResourcesManagement::Mgmt::V2017_08_31_preview::Models::ManagementGroupWithHierarchy
      end
      def management_group_info
        Azure::ResourcesManagement::Mgmt::V2017_08_31_preview::Models::ManagementGroupInfo
      end
    end
  end
end
