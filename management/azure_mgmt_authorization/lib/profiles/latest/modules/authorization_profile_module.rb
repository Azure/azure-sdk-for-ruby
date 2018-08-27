# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_authorization'

module Azure::Authorization::Profiles::Latest
  module Mgmt
    ClassicAdministrators = Azure::Authorization::Mgmt::V2015_06_01_preview::ClassicAdministrators
    RoleDefinitions = Azure::Authorization::Mgmt::V2018_01_01_preview::RoleDefinitions
    ProviderOperationsMetadataOperations = Azure::Authorization::Mgmt::V2018_01_01_preview::ProviderOperationsMetadataOperations
    Permissions = Azure::Authorization::Mgmt::V2018_01_01_preview::Permissions
    RoleAssignments = Azure::Authorization::Mgmt::V2018_01_01_preview::RoleAssignments

    module Models
      ClassicAdministrator = Azure::Authorization::Mgmt::V2015_06_01_preview::Models::ClassicAdministrator
      ClassicAdministratorListResult = Azure::Authorization::Mgmt::V2015_06_01_preview::Models::ClassicAdministratorListResult
      RoleDefinitionFilter = Azure::Authorization::Mgmt::V2018_01_01_preview::Models::RoleDefinitionFilter
      RoleDefinition = Azure::Authorization::Mgmt::V2018_01_01_preview::Models::RoleDefinition
      ResourceType = Azure::Authorization::Mgmt::V2018_01_01_preview::Models::ResourceType
      RoleDefinitionListResult = Azure::Authorization::Mgmt::V2018_01_01_preview::Models::RoleDefinitionListResult
      ProviderOperationsMetadataListResult = Azure::Authorization::Mgmt::V2018_01_01_preview::Models::ProviderOperationsMetadataListResult
      RoleAssignmentFilter = Azure::Authorization::Mgmt::V2018_01_01_preview::Models::RoleAssignmentFilter
      PermissionGetResult = Azure::Authorization::Mgmt::V2018_01_01_preview::Models::PermissionGetResult
      RoleAssignment = Azure::Authorization::Mgmt::V2018_01_01_preview::Models::RoleAssignment
      ProviderOperationsMetadata = Azure::Authorization::Mgmt::V2018_01_01_preview::Models::ProviderOperationsMetadata
      RoleAssignmentListResult = Azure::Authorization::Mgmt::V2018_01_01_preview::Models::RoleAssignmentListResult
      ProviderOperation = Azure::Authorization::Mgmt::V2018_01_01_preview::Models::ProviderOperation
      RoleAssignmentCreateParameters = Azure::Authorization::Mgmt::V2018_01_01_preview::Models::RoleAssignmentCreateParameters
      Permission = Azure::Authorization::Mgmt::V2018_01_01_preview::Models::Permission
    end

    #
    # AuthorizationManagementClass
    #
    class AuthorizationManagementClass
      attr_reader :classic_administrators, :role_definitions, :provider_operations_metadata_operations, :permissions, :role_assignments, :configurable, :base_url, :options, :model_classes

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
        @role_definitions = @client_1.role_definitions
        @provider_operations_metadata_operations = @client_1.provider_operations_metadata_operations
        @permissions = @client_1.permissions
        @role_assignments = @client_1.role_assignments

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
      def role_definition
        Azure::Authorization::Mgmt::V2018_01_01_preview::Models::RoleDefinition
      end
      def resource_type
        Azure::Authorization::Mgmt::V2018_01_01_preview::Models::ResourceType
      end
      def role_definition_list_result
        Azure::Authorization::Mgmt::V2018_01_01_preview::Models::RoleDefinitionListResult
      end
      def provider_operations_metadata_list_result
        Azure::Authorization::Mgmt::V2018_01_01_preview::Models::ProviderOperationsMetadataListResult
      end
      def role_assignment_filter
        Azure::Authorization::Mgmt::V2018_01_01_preview::Models::RoleAssignmentFilter
      end
      def permission_get_result
        Azure::Authorization::Mgmt::V2018_01_01_preview::Models::PermissionGetResult
      end
      def role_assignment
        Azure::Authorization::Mgmt::V2018_01_01_preview::Models::RoleAssignment
      end
      def provider_operations_metadata
        Azure::Authorization::Mgmt::V2018_01_01_preview::Models::ProviderOperationsMetadata
      end
      def role_assignment_list_result
        Azure::Authorization::Mgmt::V2018_01_01_preview::Models::RoleAssignmentListResult
      end
      def provider_operation
        Azure::Authorization::Mgmt::V2018_01_01_preview::Models::ProviderOperation
      end
      def role_assignment_create_parameters
        Azure::Authorization::Mgmt::V2018_01_01_preview::Models::RoleAssignmentCreateParameters
      end
      def permission
        Azure::Authorization::Mgmt::V2018_01_01_preview::Models::Permission
      end
    end
  end
end
