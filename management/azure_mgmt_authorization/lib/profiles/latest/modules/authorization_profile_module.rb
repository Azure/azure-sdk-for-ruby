# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_authorization'

module Azure::Authorization::Profiles::Latest
  module Mgmt
    ClassicAdministrators = Azure::Authorization::Mgmt::V2015_06_01_preview::ClassicAdministrators
    ProviderOperationsMetadataOperations = Azure::Authorization::Mgmt::V2018_01_01_preview::ProviderOperationsMetadataOperations
    RoleAssignments = Azure::Authorization::Mgmt::V2018_01_01_preview::RoleAssignments
    Permissions = Azure::Authorization::Mgmt::V2018_01_01_preview::Permissions
    RoleDefinitions = Azure::Authorization::Mgmt::V2018_01_01_preview::RoleDefinitions

    module Models
      ClassicAdministrator = Azure::Authorization::Mgmt::V2015_06_01_preview::Models::ClassicAdministrator
      ClassicAdministratorListResult = Azure::Authorization::Mgmt::V2015_06_01_preview::Models::ClassicAdministratorListResult
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
      RoleAssignmentListResult = Azure::Authorization::Mgmt::V2018_01_01_preview::Models::RoleAssignmentListResult
      RoleAssignmentCreateParameters = Azure::Authorization::Mgmt::V2018_01_01_preview::Models::RoleAssignmentCreateParameters
      ResourceType = Azure::Authorization::Mgmt::V2018_01_01_preview::Models::ResourceType
    end

    #
    # AuthorizationManagementClass
    #
    class AuthorizationManagementClass
      attr_reader :classic_administrators, :provider_operations_metadata_operations, :role_assignments, :permissions, :role_definitions, :configurable, :base_url, :options, :model_classes

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
        @provider_operations_metadata_operations = @client_1.provider_operations_metadata_operations
        @role_assignments = @client_1.role_assignments
        @permissions = @client_1.permissions
        @role_definitions = @client_1.role_definitions

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/Authorization/Mgmt'
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
      def classic_administrator
        Azure::Authorization::Mgmt::V2015_06_01_preview::Models::ClassicAdministrator
      end
      def classic_administrator_list_result
        Azure::Authorization::Mgmt::V2015_06_01_preview::Models::ClassicAdministratorListResult
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
      def role_assignment_list_result
        Azure::Authorization::Mgmt::V2018_01_01_preview::Models::RoleAssignmentListResult
      end
      def role_assignment_create_parameters
        Azure::Authorization::Mgmt::V2018_01_01_preview::Models::RoleAssignmentCreateParameters
      end
      def resource_type
        Azure::Authorization::Mgmt::V2018_01_01_preview::Models::ResourceType
      end
    end
  end
end
