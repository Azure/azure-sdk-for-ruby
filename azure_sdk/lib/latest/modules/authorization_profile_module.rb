# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_authorization'

module Azure::Profiles::Latest
  module Authorization
    module Mgmt
      ClassicAdministrators = Azure::Authorization::Mgmt::V2015_06_01_preview::ClassicAdministrators
      RoleDefinitions = Azure::Authorization::Mgmt::V2018_01_01_preview::RoleDefinitions
      Permissions = Azure::Authorization::Mgmt::V2018_01_01_preview::Permissions
      ProviderOperationsMetadataOperations = Azure::Authorization::Mgmt::V2018_01_01_preview::ProviderOperationsMetadataOperations
      DenyAssignments = Azure::Authorization::Mgmt::V2018_07_01_preview::DenyAssignments
      RoleAssignments = Azure::Authorization::Mgmt::V2018_09_01_preview::RoleAssignments

      module Models
        ClassicAdministrator = Azure::Authorization::Mgmt::V2015_06_01_preview::Models::ClassicAdministrator
        ClassicAdministratorListResult = Azure::Authorization::Mgmt::V2015_06_01_preview::Models::ClassicAdministratorListResult
        RoleDefinitionListResult = Azure::Authorization::Mgmt::V2018_01_01_preview::Models::RoleDefinitionListResult
        ProviderOperation = Azure::Authorization::Mgmt::V2018_01_01_preview::Models::ProviderOperation
        ProviderOperationsMetadata = Azure::Authorization::Mgmt::V2018_01_01_preview::Models::ProviderOperationsMetadata
        Permission = Azure::Authorization::Mgmt::V2018_01_01_preview::Models::Permission
        RoleDefinitionFilter = Azure::Authorization::Mgmt::V2018_01_01_preview::Models::RoleDefinitionFilter
        PermissionGetResult = Azure::Authorization::Mgmt::V2018_01_01_preview::Models::PermissionGetResult
        ResourceType = Azure::Authorization::Mgmt::V2018_01_01_preview::Models::ResourceType
        ProviderOperationsMetadataListResult = Azure::Authorization::Mgmt::V2018_01_01_preview::Models::ProviderOperationsMetadataListResult
        RoleDefinition = Azure::Authorization::Mgmt::V2018_01_01_preview::Models::RoleDefinition
        DenyAssignmentPermission = Azure::Authorization::Mgmt::V2018_07_01_preview::Models::DenyAssignmentPermission
        DenyAssignmentListResult = Azure::Authorization::Mgmt::V2018_07_01_preview::Models::DenyAssignmentListResult
        DenyAssignmentFilter = Azure::Authorization::Mgmt::V2018_07_01_preview::Models::DenyAssignmentFilter
        Principal = Azure::Authorization::Mgmt::V2018_07_01_preview::Models::Principal
        DenyAssignment = Azure::Authorization::Mgmt::V2018_07_01_preview::Models::DenyAssignment
        PrincipalType = Azure::Authorization::Mgmt::V2018_09_01_preview::Models::PrincipalType
        RoleAssignmentCreateParameters = Azure::Authorization::Mgmt::V2018_09_01_preview::Models::RoleAssignmentCreateParameters
        RoleAssignment = Azure::Authorization::Mgmt::V2018_09_01_preview::Models::RoleAssignment
        RoleAssignmentListResult = Azure::Authorization::Mgmt::V2018_09_01_preview::Models::RoleAssignmentListResult
        RoleAssignmentFilter = Azure::Authorization::Mgmt::V2018_09_01_preview::Models::RoleAssignmentFilter
      end

      class AuthorizationManagementClass
        attr_reader :classic_administrators, :role_definitions, :permissions, :provider_operations_metadata_operations, :deny_assignments, :role_assignments, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Authorization::Mgmt::V2015_06_01_preview::AuthorizationManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @classic_administrators = @client_0.classic_administrators

          @client_1 = Azure::Authorization::Mgmt::V2018_01_01_preview::AuthorizationManagementClient.new(configurable.credentials, base_url, options)
          if(@client_1.respond_to?(:subscription_id))
            @client_1.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_1)
          @role_definitions = @client_1.role_definitions
          @permissions = @client_1.permissions
          @provider_operations_metadata_operations = @client_1.provider_operations_metadata_operations

          @client_2 = Azure::Authorization::Mgmt::V2018_07_01_preview::AuthorizationManagementClient.new(configurable.credentials, base_url, options)
          if(@client_2.respond_to?(:subscription_id))
            @client_2.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_2)
          @deny_assignments = @client_2.deny_assignments

          @client_3 = Azure::Authorization::Mgmt::V2018_09_01_preview::AuthorizationManagementClient.new(configurable.credentials, base_url, options)
          if(@client_3.respond_to?(:subscription_id))
            @client_3.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_3)
          @role_assignments = @client_3.role_assignments

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Authorization/Mgmt"
          client.add_user_agent_information(profile_information)
        end

        def method_missing(method, *args)
          if @client_3.respond_to?method
            @client_3.send(method, *args)
          elsif @client_2.respond_to?method
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
          def classic_administrator
            Azure::Authorization::Mgmt::V2015_06_01_preview::Models::ClassicAdministrator
          end
          def classic_administrator_list_result
            Azure::Authorization::Mgmt::V2015_06_01_preview::Models::ClassicAdministratorListResult
          end
          def role_definition_list_result
            Azure::Authorization::Mgmt::V2018_01_01_preview::Models::RoleDefinitionListResult
          end
          def provider_operation
            Azure::Authorization::Mgmt::V2018_01_01_preview::Models::ProviderOperation
          end
          def provider_operations_metadata
            Azure::Authorization::Mgmt::V2018_01_01_preview::Models::ProviderOperationsMetadata
          end
          def permission
            Azure::Authorization::Mgmt::V2018_01_01_preview::Models::Permission
          end
          def role_definition_filter
            Azure::Authorization::Mgmt::V2018_01_01_preview::Models::RoleDefinitionFilter
          end
          def permission_get_result
            Azure::Authorization::Mgmt::V2018_01_01_preview::Models::PermissionGetResult
          end
          def resource_type
            Azure::Authorization::Mgmt::V2018_01_01_preview::Models::ResourceType
          end
          def provider_operations_metadata_list_result
            Azure::Authorization::Mgmt::V2018_01_01_preview::Models::ProviderOperationsMetadataListResult
          end
          def role_definition
            Azure::Authorization::Mgmt::V2018_01_01_preview::Models::RoleDefinition
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
          def principal
            Azure::Authorization::Mgmt::V2018_07_01_preview::Models::Principal
          end
          def deny_assignment
            Azure::Authorization::Mgmt::V2018_07_01_preview::Models::DenyAssignment
          end
          def principal_type
            Azure::Authorization::Mgmt::V2018_09_01_preview::Models::PrincipalType
          end
          def role_assignment_create_parameters
            Azure::Authorization::Mgmt::V2018_09_01_preview::Models::RoleAssignmentCreateParameters
          end
          def role_assignment
            Azure::Authorization::Mgmt::V2018_09_01_preview::Models::RoleAssignment
          end
          def role_assignment_list_result
            Azure::Authorization::Mgmt::V2018_09_01_preview::Models::RoleAssignmentListResult
          end
          def role_assignment_filter
            Azure::Authorization::Mgmt::V2018_09_01_preview::Models::RoleAssignmentFilter
          end
        end
      end
    end
  end
end
