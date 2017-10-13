# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_graph'

module Azure::Graph::Profiles::Latest::Mgmt
    Objects = Azure::Graph::Mgmt::V1_6::Objects
    Applications = Azure::Graph::Mgmt::V1_6::Applications
    Groups = Azure::Graph::Mgmt::V1_6::Groups
    ServicePrincipals = Azure::Graph::Mgmt::V1_6::ServicePrincipals
    Users = Azure::Graph::Mgmt::V1_6::Users
    Domains = Azure::Graph::Mgmt::V1_6::Domains

    module Models
      GroupGetMemberGroupsParameters = Azure::Graph::Mgmt::V1_6::Models::GroupGetMemberGroupsParameters
      GraphError = Azure::Graph::Mgmt::V1_6::Models::GraphError
      GroupGetMemberGroupsResult = Azure::Graph::Mgmt::V1_6::Models::GroupGetMemberGroupsResult
      PasswordCredential = Azure::Graph::Mgmt::V1_6::Models::PasswordCredential
      CheckGroupMembershipParameters = Azure::Graph::Mgmt::V1_6::Models::CheckGroupMembershipParameters
      RequiredResourceAccess = Azure::Graph::Mgmt::V1_6::Models::RequiredResourceAccess
      CheckGroupMembershipResult = Azure::Graph::Mgmt::V1_6::Models::CheckGroupMembershipResult
      ApplicationUpdateParameters = Azure::Graph::Mgmt::V1_6::Models::ApplicationUpdateParameters
      ServicePrincipalCreateParameters = Azure::Graph::Mgmt::V1_6::Models::ServicePrincipalCreateParameters
      ApplicationListResult = Azure::Graph::Mgmt::V1_6::Models::ApplicationListResult
      ServicePrincipal = Azure::Graph::Mgmt::V1_6::Models::ServicePrincipal
      KeyCredentialsUpdateParameters = Azure::Graph::Mgmt::V1_6::Models::KeyCredentialsUpdateParameters
      ServicePrincipalListResult = Azure::Graph::Mgmt::V1_6::Models::ServicePrincipalListResult
      PasswordCredentialsUpdateParameters = Azure::Graph::Mgmt::V1_6::Models::PasswordCredentialsUpdateParameters
      PasswordProfile = Azure::Graph::Mgmt::V1_6::Models::PasswordProfile
      GetObjectsResult = Azure::Graph::Mgmt::V1_6::Models::GetObjectsResult
      UserBase = Azure::Graph::Mgmt::V1_6::Models::UserBase
      GroupCreateParameters = Azure::Graph::Mgmt::V1_6::Models::GroupCreateParameters
      GroupAddMemberParameters = Azure::Graph::Mgmt::V1_6::Models::GroupAddMemberParameters
      ADGroup = Azure::Graph::Mgmt::V1_6::Models::ADGroup
      KeyCredential = Azure::Graph::Mgmt::V1_6::Models::KeyCredential
      ApplicationCreateParameters = Azure::Graph::Mgmt::V1_6::Models::ApplicationCreateParameters
      DomainListResult = Azure::Graph::Mgmt::V1_6::Models::DomainListResult
      KeyCredentialListResult = Azure::Graph::Mgmt::V1_6::Models::KeyCredentialListResult
      SignInName = Azure::Graph::Mgmt::V1_6::Models::SignInName
      AADObject = Azure::Graph::Mgmt::V1_6::Models::AADObject
      Domain = Azure::Graph::Mgmt::V1_6::Models::Domain
      ResourceAccess = Azure::Graph::Mgmt::V1_6::Models::ResourceAccess
      UserGetMemberGroupsParameters = Azure::Graph::Mgmt::V1_6::Models::UserGetMemberGroupsParameters
      PasswordCredentialListResult = Azure::Graph::Mgmt::V1_6::Models::PasswordCredentialListResult
      UserGetMemberGroupsResult = Azure::Graph::Mgmt::V1_6::Models::UserGetMemberGroupsResult
      Application = Azure::Graph::Mgmt::V1_6::Models::Application
      UserListResult = Azure::Graph::Mgmt::V1_6::Models::UserListResult
      GroupListResult = Azure::Graph::Mgmt::V1_6::Models::GroupListResult
      GetObjectsParameters = Azure::Graph::Mgmt::V1_6::Models::GetObjectsParameters
      UserCreateParameters = Azure::Graph::Mgmt::V1_6::Models::UserCreateParameters
      UserUpdateParameters = Azure::Graph::Mgmt::V1_6::Models::UserUpdateParameters
      User = Azure::Graph::Mgmt::V1_6::Models::User
      UserType = Azure::Graph::Mgmt::V1_6::Models::UserType
    end

    #
    # Graph
    #
    class GraphClass
      attr_reader :objects, :applications, :groups, :service_principals, :users, :domains, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        if options.is_a?(Hash) && options.length == 0
          @options = setup_options
        else
          @options = options
        end

        reset!(options)

        @configurable, @base_url, @options = self, nil, nil

        client_0 = Azure::Graph::Mgmt::V1_6::GraphRbacManagementClient.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        @objects = client_0.objects
        @applications = client_0.applications
        @groups = client_0.groups
        @service_principals = client_0.service_principals
        @users = client_0.users
        @domains = client_0.domains

        @model_classes = ModelClasses.new
      end

      #
      # Method to get the client object
      #
      # @return Client object
      #
      def get_client(version = '1.6')
        case version
          when '1.6'
            client = Azure::Graph::Mgmt::V1_6::GraphRbacManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def group_get_member_groups_parameters
          Azure::Graph::Mgmt::V1_6::Models::GroupGetMemberGroupsParameters
        end
        def graph_error
          Azure::Graph::Mgmt::V1_6::Models::GraphError
        end
        def group_get_member_groups_result
          Azure::Graph::Mgmt::V1_6::Models::GroupGetMemberGroupsResult
        end
        def password_credential
          Azure::Graph::Mgmt::V1_6::Models::PasswordCredential
        end
        def check_group_membership_parameters
          Azure::Graph::Mgmt::V1_6::Models::CheckGroupMembershipParameters
        end
        def required_resource_access
          Azure::Graph::Mgmt::V1_6::Models::RequiredResourceAccess
        end
        def check_group_membership_result
          Azure::Graph::Mgmt::V1_6::Models::CheckGroupMembershipResult
        end
        def application_update_parameters
          Azure::Graph::Mgmt::V1_6::Models::ApplicationUpdateParameters
        end
        def service_principal_create_parameters
          Azure::Graph::Mgmt::V1_6::Models::ServicePrincipalCreateParameters
        end
        def application_list_result
          Azure::Graph::Mgmt::V1_6::Models::ApplicationListResult
        end
        def service_principal
          Azure::Graph::Mgmt::V1_6::Models::ServicePrincipal
        end
        def key_credentials_update_parameters
          Azure::Graph::Mgmt::V1_6::Models::KeyCredentialsUpdateParameters
        end
        def service_principal_list_result
          Azure::Graph::Mgmt::V1_6::Models::ServicePrincipalListResult
        end
        def password_credentials_update_parameters
          Azure::Graph::Mgmt::V1_6::Models::PasswordCredentialsUpdateParameters
        end
        def password_profile
          Azure::Graph::Mgmt::V1_6::Models::PasswordProfile
        end
        def get_objects_result
          Azure::Graph::Mgmt::V1_6::Models::GetObjectsResult
        end
        def user_base
          Azure::Graph::Mgmt::V1_6::Models::UserBase
        end
        def group_create_parameters
          Azure::Graph::Mgmt::V1_6::Models::GroupCreateParameters
        end
        def group_add_member_parameters
          Azure::Graph::Mgmt::V1_6::Models::GroupAddMemberParameters
        end
        def adgroup
          Azure::Graph::Mgmt::V1_6::Models::ADGroup
        end
        def key_credential
          Azure::Graph::Mgmt::V1_6::Models::KeyCredential
        end
        def application_create_parameters
          Azure::Graph::Mgmt::V1_6::Models::ApplicationCreateParameters
        end
        def domain_list_result
          Azure::Graph::Mgmt::V1_6::Models::DomainListResult
        end
        def key_credential_list_result
          Azure::Graph::Mgmt::V1_6::Models::KeyCredentialListResult
        end
        def sign_in_name
          Azure::Graph::Mgmt::V1_6::Models::SignInName
        end
        def aadobject
          Azure::Graph::Mgmt::V1_6::Models::AADObject
        end
        def domain
          Azure::Graph::Mgmt::V1_6::Models::Domain
        end
        def resource_access
          Azure::Graph::Mgmt::V1_6::Models::ResourceAccess
        end
        def user_get_member_groups_parameters
          Azure::Graph::Mgmt::V1_6::Models::UserGetMemberGroupsParameters
        end
        def password_credential_list_result
          Azure::Graph::Mgmt::V1_6::Models::PasswordCredentialListResult
        end
        def user_get_member_groups_result
          Azure::Graph::Mgmt::V1_6::Models::UserGetMemberGroupsResult
        end
        def application
          Azure::Graph::Mgmt::V1_6::Models::Application
        end
        def user_list_result
          Azure::Graph::Mgmt::V1_6::Models::UserListResult
        end
        def group_list_result
          Azure::Graph::Mgmt::V1_6::Models::GroupListResult
        end
        def get_objects_parameters
          Azure::Graph::Mgmt::V1_6::Models::GetObjectsParameters
        end
        def user_create_parameters
          Azure::Graph::Mgmt::V1_6::Models::UserCreateParameters
        end
        def user_update_parameters
          Azure::Graph::Mgmt::V1_6::Models::UserUpdateParameters
        end
        def user
          Azure::Graph::Mgmt::V1_6::Models::User
        end
        def user_type
          Azure::Graph::Mgmt::V1_6::Models::UserType
        end
      end
    end
end
