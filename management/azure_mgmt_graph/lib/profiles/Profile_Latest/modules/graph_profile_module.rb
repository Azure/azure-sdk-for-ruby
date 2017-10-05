# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_graph'


module Azure::Profiles::GraphModule::Management::Profile_Latest
  module Graph
    Objects = Azure::ARM::Graph::Api_1_6::Objects
    Applications = Azure::ARM::Graph::Api_1_6::Applications
    Groups = Azure::ARM::Graph::Api_1_6::Groups
    ServicePrincipals = Azure::ARM::Graph::Api_1_6::ServicePrincipals
    Users = Azure::ARM::Graph::Api_1_6::Users
    Domains = Azure::ARM::Graph::Api_1_6::Domains

    module Models
      GroupGetMemberGroupsResult = Azure::ARM::Graph::Api_1_6::Models::GroupGetMemberGroupsResult
      GraphError = Azure::ARM::Graph::Api_1_6::Models::GraphError
      CheckGroupMembershipParameters = Azure::ARM::Graph::Api_1_6::Models::CheckGroupMembershipParameters
      PasswordCredential = Azure::ARM::Graph::Api_1_6::Models::PasswordCredential
      CheckGroupMembershipResult = Azure::ARM::Graph::Api_1_6::Models::CheckGroupMembershipResult
      ApplicationUpdateParameters = Azure::ARM::Graph::Api_1_6::Models::ApplicationUpdateParameters
      ServicePrincipalCreateParameters = Azure::ARM::Graph::Api_1_6::Models::ServicePrincipalCreateParameters
      ApplicationListResult = Azure::ARM::Graph::Api_1_6::Models::ApplicationListResult
      ServicePrincipal = Azure::ARM::Graph::Api_1_6::Models::ServicePrincipal
      KeyCredentialsUpdateParameters = Azure::ARM::Graph::Api_1_6::Models::KeyCredentialsUpdateParameters
      ServicePrincipalListResult = Azure::ARM::Graph::Api_1_6::Models::ServicePrincipalListResult
      PasswordCredentialsUpdateParameters = Azure::ARM::Graph::Api_1_6::Models::PasswordCredentialsUpdateParameters
      PasswordProfile = Azure::ARM::Graph::Api_1_6::Models::PasswordProfile
      GetObjectsResult = Azure::ARM::Graph::Api_1_6::Models::GetObjectsResult
      UserBase = Azure::ARM::Graph::Api_1_6::Models::UserBase
      GroupCreateParameters = Azure::ARM::Graph::Api_1_6::Models::GroupCreateParameters
      GroupAddMemberParameters = Azure::ARM::Graph::Api_1_6::Models::GroupAddMemberParameters
      ADGroup = Azure::ARM::Graph::Api_1_6::Models::ADGroup
      GroupGetMemberGroupsParameters = Azure::ARM::Graph::Api_1_6::Models::GroupGetMemberGroupsParameters
      ApplicationCreateParameters = Azure::ARM::Graph::Api_1_6::Models::ApplicationCreateParameters
      DomainListResult = Azure::ARM::Graph::Api_1_6::Models::DomainListResult
      KeyCredentialListResult = Azure::ARM::Graph::Api_1_6::Models::KeyCredentialListResult
      SignInName = Azure::ARM::Graph::Api_1_6::Models::SignInName
      AADObject = Azure::ARM::Graph::Api_1_6::Models::AADObject
      Domain = Azure::ARM::Graph::Api_1_6::Models::Domain
      KeyCredential = Azure::ARM::Graph::Api_1_6::Models::KeyCredential
      UserGetMemberGroupsParameters = Azure::ARM::Graph::Api_1_6::Models::UserGetMemberGroupsParameters
      PasswordCredentialListResult = Azure::ARM::Graph::Api_1_6::Models::PasswordCredentialListResult
      UserGetMemberGroupsResult = Azure::ARM::Graph::Api_1_6::Models::UserGetMemberGroupsResult
      Application = Azure::ARM::Graph::Api_1_6::Models::Application
      UserListResult = Azure::ARM::Graph::Api_1_6::Models::UserListResult
      GroupListResult = Azure::ARM::Graph::Api_1_6::Models::GroupListResult
      GetObjectsParameters = Azure::ARM::Graph::Api_1_6::Models::GetObjectsParameters
      UserCreateParameters = Azure::ARM::Graph::Api_1_6::Models::UserCreateParameters
      UserUpdateParameters = Azure::ARM::Graph::Api_1_6::Models::UserUpdateParameters
      User = Azure::ARM::Graph::Api_1_6::Models::User
      UserType = Azure::ARM::Graph::Api_1_6::Models::UserType
    end

    #
    # Graph
    #
    class GraphClass
      attr_accessor :objects, :applications, :groups, :service_principals, :users, :domains, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::Graph::Api_1_6::GraphRbacManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.objects = Azure::ARM::Graph::Api_1_6::Objects.new(client)
        self.applications = Azure::ARM::Graph::Api_1_6::Applications.new(client)
        self.groups = Azure::ARM::Graph::Api_1_6::Groups.new(client)
        self.service_principals = Azure::ARM::Graph::Api_1_6::ServicePrincipals.new(client)
        self.users = Azure::ARM::Graph::Api_1_6::Users.new(client)
        self.domains = Azure::ARM::Graph::Api_1_6::Domains.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '1.6'
            client = Azure::ARM::Graph::Api_1_6::GraphRbacManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def group_get_member_groups_result
          Azure::ARM::Graph::Api_1_6::Models::GroupGetMemberGroupsResult
        end
        def graph_error
          Azure::ARM::Graph::Api_1_6::Models::GraphError
        end
        def check_group_membership_parameters
          Azure::ARM::Graph::Api_1_6::Models::CheckGroupMembershipParameters
        end
        def password_credential
          Azure::ARM::Graph::Api_1_6::Models::PasswordCredential
        end
        def check_group_membership_result
          Azure::ARM::Graph::Api_1_6::Models::CheckGroupMembershipResult
        end
        def application_update_parameters
          Azure::ARM::Graph::Api_1_6::Models::ApplicationUpdateParameters
        end
        def service_principal_create_parameters
          Azure::ARM::Graph::Api_1_6::Models::ServicePrincipalCreateParameters
        end
        def application_list_result
          Azure::ARM::Graph::Api_1_6::Models::ApplicationListResult
        end
        def service_principal
          Azure::ARM::Graph::Api_1_6::Models::ServicePrincipal
        end
        def key_credentials_update_parameters
          Azure::ARM::Graph::Api_1_6::Models::KeyCredentialsUpdateParameters
        end
        def service_principal_list_result
          Azure::ARM::Graph::Api_1_6::Models::ServicePrincipalListResult
        end
        def password_credentials_update_parameters
          Azure::ARM::Graph::Api_1_6::Models::PasswordCredentialsUpdateParameters
        end
        def password_profile
          Azure::ARM::Graph::Api_1_6::Models::PasswordProfile
        end
        def get_objects_result
          Azure::ARM::Graph::Api_1_6::Models::GetObjectsResult
        end
        def user_base
          Azure::ARM::Graph::Api_1_6::Models::UserBase
        end
        def group_create_parameters
          Azure::ARM::Graph::Api_1_6::Models::GroupCreateParameters
        end
        def group_add_member_parameters
          Azure::ARM::Graph::Api_1_6::Models::GroupAddMemberParameters
        end
        def adgroup
          Azure::ARM::Graph::Api_1_6::Models::ADGroup
        end
        def group_get_member_groups_parameters
          Azure::ARM::Graph::Api_1_6::Models::GroupGetMemberGroupsParameters
        end
        def application_create_parameters
          Azure::ARM::Graph::Api_1_6::Models::ApplicationCreateParameters
        end
        def domain_list_result
          Azure::ARM::Graph::Api_1_6::Models::DomainListResult
        end
        def key_credential_list_result
          Azure::ARM::Graph::Api_1_6::Models::KeyCredentialListResult
        end
        def sign_in_name
          Azure::ARM::Graph::Api_1_6::Models::SignInName
        end
        def aadobject
          Azure::ARM::Graph::Api_1_6::Models::AADObject
        end
        def domain
          Azure::ARM::Graph::Api_1_6::Models::Domain
        end
        def key_credential
          Azure::ARM::Graph::Api_1_6::Models::KeyCredential
        end
        def user_get_member_groups_parameters
          Azure::ARM::Graph::Api_1_6::Models::UserGetMemberGroupsParameters
        end
        def password_credential_list_result
          Azure::ARM::Graph::Api_1_6::Models::PasswordCredentialListResult
        end
        def user_get_member_groups_result
          Azure::ARM::Graph::Api_1_6::Models::UserGetMemberGroupsResult
        end
        def application
          Azure::ARM::Graph::Api_1_6::Models::Application
        end
        def user_list_result
          Azure::ARM::Graph::Api_1_6::Models::UserListResult
        end
        def group_list_result
          Azure::ARM::Graph::Api_1_6::Models::GroupListResult
        end
        def get_objects_parameters
          Azure::ARM::Graph::Api_1_6::Models::GetObjectsParameters
        end
        def user_create_parameters
          Azure::ARM::Graph::Api_1_6::Models::UserCreateParameters
        end
        def user_update_parameters
          Azure::ARM::Graph::Api_1_6::Models::UserUpdateParameters
        end
        def user
          Azure::ARM::Graph::Api_1_6::Models::User
        end
        def user_type
          Azure::ARM::Graph::Api_1_6::Models::UserType
        end
      end
    end
  end
end
