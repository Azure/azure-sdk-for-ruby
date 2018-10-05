# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_authorization'

module Azure::Authorization::Profiles::V2017_03_09
  module Mgmt
    RoleAssignments = Azure::Authorization::Mgmt::V2015_07_01::RoleAssignments
    ClassicAdministrators = Azure::Authorization::Mgmt::V2015_07_01::ClassicAdministrators
    Permissions = Azure::Authorization::Mgmt::V2015_07_01_preview::Permissions
    ProviderOperationsMetadataOperations = Azure::Authorization::Mgmt::V2015_07_01_preview::ProviderOperationsMetadataOperations
    RoleDefinitions = Azure::Authorization::Mgmt::V2015_07_01_preview::RoleDefinitions

    module Models
      RoleAssignment = Azure::Authorization::Mgmt::V2015_07_01::Models::RoleAssignment
      RoleAssignmentListResult = Azure::Authorization::Mgmt::V2015_07_01::Models::RoleAssignmentListResult
      RoleAssignmentProperties = Azure::Authorization::Mgmt::V2015_07_01::Models::RoleAssignmentProperties
      RoleAssignmentCreateParameters = Azure::Authorization::Mgmt::V2015_07_01::Models::RoleAssignmentCreateParameters
      RoleDefinitionProperties = Azure::Authorization::Mgmt::V2015_07_01::Models::RoleDefinitionProperties
      RoleAssignmentFilter = Azure::Authorization::Mgmt::V2015_07_01::Models::RoleAssignmentFilter
      ClassicAdministratorProperties = Azure::Authorization::Mgmt::V2015_07_01::Models::ClassicAdministratorProperties
      RoleAssignmentPropertiesWithScope = Azure::Authorization::Mgmt::V2015_07_01::Models::RoleAssignmentPropertiesWithScope
      ClassicAdministrator = Azure::Authorization::Mgmt::V2015_07_01::Models::ClassicAdministrator
      ClassicAdministratorListResult = Azure::Authorization::Mgmt::V2015_07_01::Models::ClassicAdministratorListResult
      ResourceType = Azure::Authorization::Mgmt::V2015_07_01_preview::Models::ResourceType
      ProviderOperationsMetadata = Azure::Authorization::Mgmt::V2015_07_01_preview::Models::ProviderOperationsMetadata
      Permission = Azure::Authorization::Mgmt::V2015_07_01_preview::Models::Permission
      ProviderOperationsMetadataListResult = Azure::Authorization::Mgmt::V2015_07_01_preview::Models::ProviderOperationsMetadataListResult
      ProviderOperation = Azure::Authorization::Mgmt::V2015_07_01_preview::Models::ProviderOperation
      RoleDefinition = Azure::Authorization::Mgmt::V2015_07_01_preview::Models::RoleDefinition
      PermissionGetResult = Azure::Authorization::Mgmt::V2015_07_01_preview::Models::PermissionGetResult
      RoleDefinitionListResult = Azure::Authorization::Mgmt::V2015_07_01_preview::Models::RoleDefinitionListResult
      RoleDefinitionFilter = Azure::Authorization::Mgmt::V2015_07_01_preview::Models::RoleDefinitionFilter
    end

    #
    # AuthorizationManagementClass
    #
    class AuthorizationManagementClass
      attr_reader :role_assignments, :classic_administrators, :permissions, :provider_operations_metadata_operations, :role_definitions, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::Authorization::Mgmt::V2015_07_01::AuthorizationManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @role_assignments = @client_0.role_assignments
        @classic_administrators = @client_0.classic_administrators

        @client_1 = Azure::Authorization::Mgmt::V2015_07_01_preview::AuthorizationManagementClient.new(configurable.credentials, base_url, options)
        if(@client_1.respond_to?(:subscription_id))
          @client_1.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_1)
        @permissions = @client_1.permissions
        @provider_operations_metadata_operations = @client_1.provider_operations_metadata_operations
        @role_definitions = @client_1.role_definitions

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/V2017_03_09/Authorization/Mgmt'
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

    end

    class ModelClasses
      def role_assignment
        Azure::Authorization::Mgmt::V2015_07_01::Models::RoleAssignment
      end
      def role_assignment_list_result
        Azure::Authorization::Mgmt::V2015_07_01::Models::RoleAssignmentListResult
      end
      def role_assignment_properties
        Azure::Authorization::Mgmt::V2015_07_01::Models::RoleAssignmentProperties
      end
      def role_assignment_create_parameters
        Azure::Authorization::Mgmt::V2015_07_01::Models::RoleAssignmentCreateParameters
      end
      def role_definition_properties
        Azure::Authorization::Mgmt::V2015_07_01::Models::RoleDefinitionProperties
      end
      def role_assignment_filter
        Azure::Authorization::Mgmt::V2015_07_01::Models::RoleAssignmentFilter
      end
      def classic_administrator_properties
        Azure::Authorization::Mgmt::V2015_07_01::Models::ClassicAdministratorProperties
      end
      def role_assignment_properties_with_scope
        Azure::Authorization::Mgmt::V2015_07_01::Models::RoleAssignmentPropertiesWithScope
      end
      def classic_administrator
        Azure::Authorization::Mgmt::V2015_07_01::Models::ClassicAdministrator
      end
      def classic_administrator_list_result
        Azure::Authorization::Mgmt::V2015_07_01::Models::ClassicAdministratorListResult
      end
      def resource_type
        Azure::Authorization::Mgmt::V2015_07_01_preview::Models::ResourceType
      end
      def provider_operations_metadata
        Azure::Authorization::Mgmt::V2015_07_01_preview::Models::ProviderOperationsMetadata
      end
      def permission
        Azure::Authorization::Mgmt::V2015_07_01_preview::Models::Permission
      end
      def provider_operations_metadata_list_result
        Azure::Authorization::Mgmt::V2015_07_01_preview::Models::ProviderOperationsMetadataListResult
      end
      def provider_operation
        Azure::Authorization::Mgmt::V2015_07_01_preview::Models::ProviderOperation
      end
      def role_definition
        Azure::Authorization::Mgmt::V2015_07_01_preview::Models::RoleDefinition
      end
      def permission_get_result
        Azure::Authorization::Mgmt::V2015_07_01_preview::Models::PermissionGetResult
      end
      def role_definition_list_result
        Azure::Authorization::Mgmt::V2015_07_01_preview::Models::RoleDefinitionListResult
      end
      def role_definition_filter
        Azure::Authorization::Mgmt::V2015_07_01_preview::Models::RoleDefinitionFilter
      end
    end
  end
end
