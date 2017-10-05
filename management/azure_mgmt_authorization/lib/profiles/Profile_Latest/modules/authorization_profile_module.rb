# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_authorization'


module Azure::Profiles::AuthorizationModule::Management::Profile_Latest
  module Authorization
    ClassicAdministrators = Azure::ARM::Authorization::Api_2015_07_01::ClassicAdministrators
    Permissions = Azure::ARM::Authorization::Api_2015_07_01::Permissions
    ProviderOperationsMetadataOperations = Azure::ARM::Authorization::Api_2015_07_01::ProviderOperationsMetadataOperations
    RoleAssignments = Azure::ARM::Authorization::Api_2015_07_01::RoleAssignments
    RoleDefinitions = Azure::ARM::Authorization::Api_2015_07_01::RoleDefinitions

    module Models
      ProviderOperationsMetadata = Azure::ARM::Authorization::Api_2015_07_01::Models::ProviderOperationsMetadata
      ProviderOperationsMetadataListResult = Azure::ARM::Authorization::Api_2015_07_01::Models::ProviderOperationsMetadataListResult
      RoleDefinitionFilter = Azure::ARM::Authorization::Api_2015_07_01::Models::RoleDefinitionFilter
      RoleAssignmentPropertiesWithScope = Azure::ARM::Authorization::Api_2015_07_01::Models::RoleAssignmentPropertiesWithScope
      ClassicAdministrator = Azure::ARM::Authorization::Api_2015_07_01::Models::ClassicAdministrator
      RoleAssignment = Azure::ARM::Authorization::Api_2015_07_01::Models::RoleAssignment
      Permission = Azure::ARM::Authorization::Api_2015_07_01::Models::Permission
      RoleAssignmentListResult = Azure::ARM::Authorization::Api_2015_07_01::Models::RoleAssignmentListResult
      ProviderOperation = Azure::ARM::Authorization::Api_2015_07_01::Models::ProviderOperation
      RoleAssignmentProperties = Azure::ARM::Authorization::Api_2015_07_01::Models::RoleAssignmentProperties
      RoleAssignmentFilter = Azure::ARM::Authorization::Api_2015_07_01::Models::RoleAssignmentFilter
      RoleAssignmentCreateParameters = Azure::ARM::Authorization::Api_2015_07_01::Models::RoleAssignmentCreateParameters
      ClassicAdministratorListResult = Azure::ARM::Authorization::Api_2015_07_01::Models::ClassicAdministratorListResult
      RoleDefinitionProperties = Azure::ARM::Authorization::Api_2015_07_01::Models::RoleDefinitionProperties
      ResourceType = Azure::ARM::Authorization::Api_2015_07_01::Models::ResourceType
      RoleDefinition = Azure::ARM::Authorization::Api_2015_07_01::Models::RoleDefinition
      PermissionGetResult = Azure::ARM::Authorization::Api_2015_07_01::Models::PermissionGetResult
      RoleDefinitionListResult = Azure::ARM::Authorization::Api_2015_07_01::Models::RoleDefinitionListResult
      ClassicAdministratorProperties = Azure::ARM::Authorization::Api_2015_07_01::Models::ClassicAdministratorProperties
    end

    #
    # Authorization
    #
    class AuthorizationClass
      attr_accessor :classic_administrators, :permissions, :provider_operations_metadata_operations, :role_assignments, :role_definitions, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::Authorization::Api_2015_07_01::AuthorizationManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.classic_administrators = Azure::ARM::Authorization::Api_2015_07_01::ClassicAdministrators.new(client)
        self.permissions = Azure::ARM::Authorization::Api_2015_07_01::Permissions.new(client)
        self.provider_operations_metadata_operations = Azure::ARM::Authorization::Api_2015_07_01::ProviderOperationsMetadataOperations.new(client)
        self.role_assignments = Azure::ARM::Authorization::Api_2015_07_01::RoleAssignments.new(client)
        self.role_definitions = Azure::ARM::Authorization::Api_2015_07_01::RoleDefinitions.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2015-07-01'
            client = Azure::ARM::Authorization::Api_2015_07_01::AuthorizationManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def provider_operations_metadata
          Azure::ARM::Authorization::Api_2015_07_01::Models::ProviderOperationsMetadata
        end
        def provider_operations_metadata_list_result
          Azure::ARM::Authorization::Api_2015_07_01::Models::ProviderOperationsMetadataListResult
        end
        def role_definition_filter
          Azure::ARM::Authorization::Api_2015_07_01::Models::RoleDefinitionFilter
        end
        def role_assignment_properties_with_scope
          Azure::ARM::Authorization::Api_2015_07_01::Models::RoleAssignmentPropertiesWithScope
        end
        def classic_administrator
          Azure::ARM::Authorization::Api_2015_07_01::Models::ClassicAdministrator
        end
        def role_assignment
          Azure::ARM::Authorization::Api_2015_07_01::Models::RoleAssignment
        end
        def permission
          Azure::ARM::Authorization::Api_2015_07_01::Models::Permission
        end
        def role_assignment_list_result
          Azure::ARM::Authorization::Api_2015_07_01::Models::RoleAssignmentListResult
        end
        def provider_operation
          Azure::ARM::Authorization::Api_2015_07_01::Models::ProviderOperation
        end
        def role_assignment_properties
          Azure::ARM::Authorization::Api_2015_07_01::Models::RoleAssignmentProperties
        end
        def role_assignment_filter
          Azure::ARM::Authorization::Api_2015_07_01::Models::RoleAssignmentFilter
        end
        def role_assignment_create_parameters
          Azure::ARM::Authorization::Api_2015_07_01::Models::RoleAssignmentCreateParameters
        end
        def classic_administrator_list_result
          Azure::ARM::Authorization::Api_2015_07_01::Models::ClassicAdministratorListResult
        end
        def role_definition_properties
          Azure::ARM::Authorization::Api_2015_07_01::Models::RoleDefinitionProperties
        end
        def resource_type
          Azure::ARM::Authorization::Api_2015_07_01::Models::ResourceType
        end
        def role_definition
          Azure::ARM::Authorization::Api_2015_07_01::Models::RoleDefinition
        end
        def permission_get_result
          Azure::ARM::Authorization::Api_2015_07_01::Models::PermissionGetResult
        end
        def role_definition_list_result
          Azure::ARM::Authorization::Api_2015_07_01::Models::RoleDefinitionListResult
        end
        def classic_administrator_properties
          Azure::ARM::Authorization::Api_2015_07_01::Models::ClassicAdministratorProperties
        end
      end
    end
  end
end
