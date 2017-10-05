# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_resources_management'


module Azure::Profiles::ResourcesManagementModule::Management::Profile_2017_08_31_Preview
  module ResourcesManagement
    ManagementGroups = Azure::ARM::ResourcesManagement::Api_2017_08_31_preview::ManagementGroups
    Operations = Azure::ARM::ResourcesManagement::Api_2017_08_31_preview::Operations
    ManagementGroupsAPI = Azure::ARM::ResourcesManagement::Api_2017_08_31_preview::ManagementGroupsAPI

    module Models
      ParentGroupInfo = Azure::ARM::ResourcesManagement::Api_2017_08_31_preview::Models::ParentGroupInfo
      ErrorDetails = Azure::ARM::ResourcesManagement::Api_2017_08_31_preview::Models::ErrorDetails
      ManagementGroupDetailsProperties = Azure::ARM::ResourcesManagement::Api_2017_08_31_preview::Models::ManagementGroupDetailsProperties
      OperationDisplay = Azure::ARM::ResourcesManagement::Api_2017_08_31_preview::Models::OperationDisplay
      ManagementGroup = Azure::ARM::ResourcesManagement::Api_2017_08_31_preview::Models::ManagementGroup
      OperationListResult = Azure::ARM::ResourcesManagement::Api_2017_08_31_preview::Models::OperationListResult
      ManagementGroupChildInfo = Azure::ARM::ResourcesManagement::Api_2017_08_31_preview::Models::ManagementGroupChildInfo
      ManagementGroupListResult = Azure::ARM::ResourcesManagement::Api_2017_08_31_preview::Models::ManagementGroupListResult
      ManagementGroupWithChildren = Azure::ARM::ResourcesManagement::Api_2017_08_31_preview::Models::ManagementGroupWithChildren
      Operation = Azure::ARM::ResourcesManagement::Api_2017_08_31_preview::Models::Operation
      ManagementGroupRecursiveChildInfo = Azure::ARM::ResourcesManagement::Api_2017_08_31_preview::Models::ManagementGroupRecursiveChildInfo
      ErrorResponse = Azure::ARM::ResourcesManagement::Api_2017_08_31_preview::Models::ErrorResponse
      ManagementGroupWithHierarchy = Azure::ARM::ResourcesManagement::Api_2017_08_31_preview::Models::ManagementGroupWithHierarchy
      ManagementGroupInfo = Azure::ARM::ResourcesManagement::Api_2017_08_31_preview::Models::ManagementGroupInfo
    end

    #
    # ResourcesManagement
    #
    class ResourcesManagementClass
      attr_accessor :management_groups, :operations, :management_groups_api, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = .new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.management_groups = Azure::ARM::ResourcesManagement::Api_2017_08_31_preview::ManagementGroups.new(client)
        self.operations = Azure::ARM::ResourcesManagement::Api_2017_08_31_preview::Operations.new(client)
        self.management_groups_api = Azure::ARM::ResourcesManagement::Api_2017_08_31_preview::ManagementGroupsAPI.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def parent_group_info
          Azure::ARM::ResourcesManagement::Api_2017_08_31_preview::Models::ParentGroupInfo
        end
        def error_details
          Azure::ARM::ResourcesManagement::Api_2017_08_31_preview::Models::ErrorDetails
        end
        def management_group_details_properties
          Azure::ARM::ResourcesManagement::Api_2017_08_31_preview::Models::ManagementGroupDetailsProperties
        end
        def operation_display
          Azure::ARM::ResourcesManagement::Api_2017_08_31_preview::Models::OperationDisplay
        end
        def management_group
          Azure::ARM::ResourcesManagement::Api_2017_08_31_preview::Models::ManagementGroup
        end
        def operation_list_result
          Azure::ARM::ResourcesManagement::Api_2017_08_31_preview::Models::OperationListResult
        end
        def management_group_child_info
          Azure::ARM::ResourcesManagement::Api_2017_08_31_preview::Models::ManagementGroupChildInfo
        end
        def management_group_list_result
          Azure::ARM::ResourcesManagement::Api_2017_08_31_preview::Models::ManagementGroupListResult
        end
        def management_group_with_children
          Azure::ARM::ResourcesManagement::Api_2017_08_31_preview::Models::ManagementGroupWithChildren
        end
        def operation
          Azure::ARM::ResourcesManagement::Api_2017_08_31_preview::Models::Operation
        end
        def management_group_recursive_child_info
          Azure::ARM::ResourcesManagement::Api_2017_08_31_preview::Models::ManagementGroupRecursiveChildInfo
        end
        def error_response
          Azure::ARM::ResourcesManagement::Api_2017_08_31_preview::Models::ErrorResponse
        end
        def management_group_with_hierarchy
          Azure::ARM::ResourcesManagement::Api_2017_08_31_preview::Models::ManagementGroupWithHierarchy
        end
        def management_group_info
          Azure::ARM::ResourcesManagement::Api_2017_08_31_preview::Models::ManagementGroupInfo
        end
      end
    end
  end
end
