# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_authorization'

module Azure::Profiles::Latest
  module Authorization
    module Mgmt
      ClassicAdministrators = Azure::Authorization::Mgmt::V2015_07_01::ClassicAdministrators
      Permissions = Azure::Authorization::Mgmt::V2015_07_01::Permissions
      ProviderOperationsMetadataOperations = Azure::Authorization::Mgmt::V2015_07_01::ProviderOperationsMetadataOperations
      RoleAssignments = Azure::Authorization::Mgmt::V2015_07_01::RoleAssignments
      RoleDefinitions = Azure::Authorization::Mgmt::V2015_07_01::RoleDefinitions

      module Models
        ProviderOperationsMetadata = Azure::Authorization::Mgmt::V2015_07_01::Models::ProviderOperationsMetadata
        ProviderOperationsMetadataListResult = Azure::Authorization::Mgmt::V2015_07_01::Models::ProviderOperationsMetadataListResult
        RoleDefinitionFilter = Azure::Authorization::Mgmt::V2015_07_01::Models::RoleDefinitionFilter
        RoleAssignmentPropertiesWithScope = Azure::Authorization::Mgmt::V2015_07_01::Models::RoleAssignmentPropertiesWithScope
        ClassicAdministrator = Azure::Authorization::Mgmt::V2015_07_01::Models::ClassicAdministrator
        RoleAssignment = Azure::Authorization::Mgmt::V2015_07_01::Models::RoleAssignment
        Permission = Azure::Authorization::Mgmt::V2015_07_01::Models::Permission
        RoleAssignmentListResult = Azure::Authorization::Mgmt::V2015_07_01::Models::RoleAssignmentListResult
        ProviderOperation = Azure::Authorization::Mgmt::V2015_07_01::Models::ProviderOperation
        RoleAssignmentProperties = Azure::Authorization::Mgmt::V2015_07_01::Models::RoleAssignmentProperties
        RoleAssignmentFilter = Azure::Authorization::Mgmt::V2015_07_01::Models::RoleAssignmentFilter
        RoleAssignmentCreateParameters = Azure::Authorization::Mgmt::V2015_07_01::Models::RoleAssignmentCreateParameters
        ClassicAdministratorListResult = Azure::Authorization::Mgmt::V2015_07_01::Models::ClassicAdministratorListResult
        RoleDefinitionProperties = Azure::Authorization::Mgmt::V2015_07_01::Models::RoleDefinitionProperties
        ResourceType = Azure::Authorization::Mgmt::V2015_07_01::Models::ResourceType
        RoleDefinition = Azure::Authorization::Mgmt::V2015_07_01::Models::RoleDefinition
        PermissionGetResult = Azure::Authorization::Mgmt::V2015_07_01::Models::PermissionGetResult
        RoleDefinitionListResult = Azure::Authorization::Mgmt::V2015_07_01::Models::RoleDefinitionListResult
        ClassicAdministratorProperties = Azure::Authorization::Mgmt::V2015_07_01::Models::ClassicAdministratorProperties
      end

      class AuthorizationManagementClass
        attr_reader :classic_administrators, :permissions, :provider_operations_metadata_operations, :role_assignments, :role_definitions, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Authorization::Mgmt::V2015_07_01::AuthorizationManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @classic_administrators = @client_0.classic_administrators
          @permissions = @client_0.permissions
          @provider_operations_metadata_operations = @client_0.provider_operations_metadata_operations
          @role_assignments = @client_0.role_assignments
          @role_definitions = @client_0.role_definitions

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Authorization/Mgmt"
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
          def provider_operations_metadata
            Azure::Authorization::Mgmt::V2015_07_01::Models::ProviderOperationsMetadata
          end
          def provider_operations_metadata_list_result
            Azure::Authorization::Mgmt::V2015_07_01::Models::ProviderOperationsMetadataListResult
          end
          def role_definition_filter
            Azure::Authorization::Mgmt::V2015_07_01::Models::RoleDefinitionFilter
          end
          def role_assignment_properties_with_scope
            Azure::Authorization::Mgmt::V2015_07_01::Models::RoleAssignmentPropertiesWithScope
          end
          def classic_administrator
            Azure::Authorization::Mgmt::V2015_07_01::Models::ClassicAdministrator
          end
          def role_assignment
            Azure::Authorization::Mgmt::V2015_07_01::Models::RoleAssignment
          end
          def permission
            Azure::Authorization::Mgmt::V2015_07_01::Models::Permission
          end
          def role_assignment_list_result
            Azure::Authorization::Mgmt::V2015_07_01::Models::RoleAssignmentListResult
          end
          def provider_operation
            Azure::Authorization::Mgmt::V2015_07_01::Models::ProviderOperation
          end
          def role_assignment_properties
            Azure::Authorization::Mgmt::V2015_07_01::Models::RoleAssignmentProperties
          end
          def role_assignment_filter
            Azure::Authorization::Mgmt::V2015_07_01::Models::RoleAssignmentFilter
          end
          def role_assignment_create_parameters
            Azure::Authorization::Mgmt::V2015_07_01::Models::RoleAssignmentCreateParameters
          end
          def classic_administrator_list_result
            Azure::Authorization::Mgmt::V2015_07_01::Models::ClassicAdministratorListResult
          end
          def role_definition_properties
            Azure::Authorization::Mgmt::V2015_07_01::Models::RoleDefinitionProperties
          end
          def resource_type
            Azure::Authorization::Mgmt::V2015_07_01::Models::ResourceType
          end
          def role_definition
            Azure::Authorization::Mgmt::V2015_07_01::Models::RoleDefinition
          end
          def permission_get_result
            Azure::Authorization::Mgmt::V2015_07_01::Models::PermissionGetResult
          end
          def role_definition_list_result
            Azure::Authorization::Mgmt::V2015_07_01::Models::RoleDefinitionListResult
          end
          def classic_administrator_properties
            Azure::Authorization::Mgmt::V2015_07_01::Models::ClassicAdministratorProperties
          end
        end
      end
    end
  end
end
