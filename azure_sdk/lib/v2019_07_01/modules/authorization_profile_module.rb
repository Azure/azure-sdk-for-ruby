# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_authorization'

module Azure::Profiles::V2019_07_01
  module Authorization
    module Mgmt
      DenyAssignments = Azure::Authorization::Mgmt::V2018_07_01_preview::DenyAssignments
      ProviderOperationsMetadataOperations = Azure::Authorization::Mgmt::V2018_01_01_preview::ProviderOperationsMetadataOperations
      RoleAssignments = Azure::Authorization::Mgmt::V2018_01_01_preview::RoleAssignments
      Permissions = Azure::Authorization::Mgmt::V2018_01_01_preview::Permissions
      RoleDefinitions = Azure::Authorization::Mgmt::V2018_01_01_preview::RoleDefinitions
      ClassicAdministrators = Azure::Authorization::Mgmt::V2015_06_01_preview::ClassicAdministrators

      module Models
        Principal = Azure::Authorization::Mgmt::V2018_07_01_preview::Models::Principal
        DenyAssignment = Azure::Authorization::Mgmt::V2018_07_01_preview::Models::DenyAssignment
        DenyAssignmentPermission = Azure::Authorization::Mgmt::V2018_07_01_preview::Models::DenyAssignmentPermission
        DenyAssignmentListResult = Azure::Authorization::Mgmt::V2018_07_01_preview::Models::DenyAssignmentListResult
        DenyAssignmentFilter = Azure::Authorization::Mgmt::V2018_07_01_preview::Models::DenyAssignmentFilter
        RoleAssignmentListResult = Azure::Authorization::Mgmt::V2018_01_01_preview::Models::RoleAssignmentListResult
        RoleAssignmentCreateParameters = Azure::Authorization::Mgmt::V2018_01_01_preview::Models::RoleAssignmentCreateParameters
        ResourceType = Azure::Authorization::Mgmt::V2018_01_01_preview::Models::ResourceType
        RoleDefinitionFilter = Azure::Authorization::Mgmt::V2018_01_01_preview::Models::RoleDefinitionFilter
        ProviderOperationsMetadataListResult = Azure::Authorization::Mgmt::V2018_01_01_preview::Models::ProviderOperationsMetadataListResult
        Permission = Azure::Authorization::Mgmt::V2018_01_01_preview::Models::Permission
        RoleAssignment = Azure::Authorization::Mgmt::V2018_01_01_preview::Models::RoleAssignment
        RoleDefinition = Azure::Authorization::Mgmt::V2018_01_01_preview::Models::RoleDefinition
        ProviderOperationsMetadata = Azure::Authorization::Mgmt::V2018_01_01_preview::Models::ProviderOperationsMetadata
        RoleDefinitionListResult = Azure::Authorization::Mgmt::V2018_01_01_preview::Models::RoleDefinitionListResult
        ProviderOperation = Azure::Authorization::Mgmt::V2018_01_01_preview::Models::ProviderOperation
        PermissionGetResult = Azure::Authorization::Mgmt::V2018_01_01_preview::Models::PermissionGetResult
        RoleAssignmentFilter = Azure::Authorization::Mgmt::V2018_01_01_preview::Models::RoleAssignmentFilter
        ClassicAdministratorListResult = Azure::Authorization::Mgmt::V2015_06_01_preview::Models::ClassicAdministratorListResult
        ClassicAdministrator = Azure::Authorization::Mgmt::V2015_06_01_preview::Models::ClassicAdministrator
      end

      class AuthorizationManagementClass
        attr_reader :deny_assignments, :provider_operations_metadata_operations, :role_assignments, :permissions, :role_definitions, :classic_administrators, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Authorization::Mgmt::V2018_07_01_preview::AuthorizationManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @deny_assignments = @client_0.deny_assignments

          @client_1 = Azure::Authorization::Mgmt::V2018_01_01_preview::AuthorizationManagementClient.new(configurable.credentials, base_url, options)
          if(@client_1.respond_to?(:subscription_id))
            @client_1.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_1)
          @provider_operations_metadata_operations = @client_1.provider_operations_metadata_operations
          @role_assignments = @client_1.role_assignments
          @permissions = @client_1.permissions
          @role_definitions = @client_1.role_definitions

          @client_2 = Azure::Authorization::Mgmt::V2015_06_01_preview::AuthorizationManagementClient.new(configurable.credentials, base_url, options)
          if(@client_2.respond_to?(:subscription_id))
            @client_2.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_2)
          @classic_administrators = @client_2.classic_administrators

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/V2019_07_01/Authorization/Mgmt"
          client.add_user_agent_information(profile_information)
        end

        def method_missing(method, *args)
          if @client_2.respond_to?method
            @client_2.send(method, *args)
          elsif @client_1.respond_to?method
            @client_1.send(method, *args)
          elsif @client_0.respond_to?method
            @client_0.send(method, *args)
          else
            super
          end
        end

        class ModelClasses
          def principal
            Azure::Authorization::Mgmt::V2018_07_01_preview::Models::Principal
          end
          def deny_assignment
            Azure::Authorization::Mgmt::V2018_07_01_preview::Models::DenyAssignment
          end
          def deny_assignment_permission
            Azure::Authorization::Mgmt::V2018_07_01_preview::Models::DenyAssignmentPermission
          end
          def deny_assignment_list_result
            Azure::Authorization::Mgmt::V2018_07_01_preview::Models::DenyAssignmentListResult
          end
          def deny_assignment_filter
            Azure::Authorization::Mgmt::V2018_07_01_preview::Models::DenyAssignmentFilter
          end
          def role_assignment_list_result
            Azure::Authorization::Mgmt::V2018_01_01_preview::Models::RoleAssignmentListResult
          end
          def role_assignment_create_parameters
            Azure::Authorization::Mgmt::V2018_01_01_preview::Models::RoleAssignmentCreateParameters
          end
          def resource_type
            Azure::Authorization::Mgmt::V2018_01_01_preview::Models::ResourceType
          end
          def role_definition_filter
            Azure::Authorization::Mgmt::V2018_01_01_preview::Models::RoleDefinitionFilter
          end
          def provider_operations_metadata_list_result
            Azure::Authorization::Mgmt::V2018_01_01_preview::Models::ProviderOperationsMetadataListResult
          end
          def permission
            Azure::Authorization::Mgmt::V2018_01_01_preview::Models::Permission
          end
          def role_assignment
            Azure::Authorization::Mgmt::V2018_01_01_preview::Models::RoleAssignment
          end
          def role_definition
            Azure::Authorization::Mgmt::V2018_01_01_preview::Models::RoleDefinition
          end
          def provider_operations_metadata
            Azure::Authorization::Mgmt::V2018_01_01_preview::Models::ProviderOperationsMetadata
          end
          def role_definition_list_result
            Azure::Authorization::Mgmt::V2018_01_01_preview::Models::RoleDefinitionListResult
          end
          def provider_operation
            Azure::Authorization::Mgmt::V2018_01_01_preview::Models::ProviderOperation
          end
          def permission_get_result
            Azure::Authorization::Mgmt::V2018_01_01_preview::Models::PermissionGetResult
          end
          def role_assignment_filter
            Azure::Authorization::Mgmt::V2018_01_01_preview::Models::RoleAssignmentFilter
          end
          def classic_administrator_list_result
            Azure::Authorization::Mgmt::V2015_06_01_preview::Models::ClassicAdministratorListResult
          end
          def classic_administrator
            Azure::Authorization::Mgmt::V2015_06_01_preview::Models::ClassicAdministrator
          end
        end
      end
    end
  end
end
