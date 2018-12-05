# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_graph_rbac'

module Azure::Profiles::Latest
  module GraphRbac
    OAuth2 = Azure::GraphRbac::V1_6::OAuth2
    SignedInUser = Azure::GraphRbac::V1_6::SignedInUser
    Applications = Azure::GraphRbac::V1_6::Applications
    DeletedApplications = Azure::GraphRbac::V1_6::DeletedApplications
    Groups = Azure::GraphRbac::V1_6::Groups
    ServicePrincipals = Azure::GraphRbac::V1_6::ServicePrincipals
    Objects = Azure::GraphRbac::V1_6::Objects
    Users = Azure::GraphRbac::V1_6::Users
    Domains = Azure::GraphRbac::V1_6::Domains

    module Models
      GroupListResult = Azure::GraphRbac::V1_6::Models::GroupListResult
      PasswordProfile = Azure::GraphRbac::V1_6::Models::PasswordProfile
      PasswordCredential = Azure::GraphRbac::V1_6::Models::PasswordCredential
      UserBase = Azure::GraphRbac::V1_6::Models::UserBase
      DirectoryObjectListResult = Azure::GraphRbac::V1_6::Models::DirectoryObjectListResult
      Permissions = Azure::GraphRbac::V1_6::Models::Permissions
      GroupAddMemberParameters = Azure::GraphRbac::V1_6::Models::GroupAddMemberParameters
      DomainListResult = Azure::GraphRbac::V1_6::Models::DomainListResult
      DirectoryObject = Azure::GraphRbac::V1_6::Models::DirectoryObject
      SignInName = Azure::GraphRbac::V1_6::Models::SignInName
      PasswordCredentialListResult = Azure::GraphRbac::V1_6::Models::PasswordCredentialListResult
      GroupCreateParameters = Azure::GraphRbac::V1_6::Models::GroupCreateParameters
      UserGetMemberGroupsParameters = Azure::GraphRbac::V1_6::Models::UserGetMemberGroupsParameters
      RequiredResourceAccess = Azure::GraphRbac::V1_6::Models::RequiredResourceAccess
      UserGetMemberGroupsResult = Azure::GraphRbac::V1_6::Models::UserGetMemberGroupsResult
      GetObjectsParameters = Azure::GraphRbac::V1_6::Models::GetObjectsParameters
      Application = Azure::GraphRbac::V1_6::Models::Application
      ApplicationCreateParameters = Azure::GraphRbac::V1_6::Models::ApplicationCreateParameters
      ServicePrincipal = Azure::GraphRbac::V1_6::Models::ServicePrincipal
      UserType = Azure::GraphRbac::V1_6::Models::UserType
      ADGroup = Azure::GraphRbac::V1_6::Models::ADGroup
      ApplicationUpdateParameters = Azure::GraphRbac::V1_6::Models::ApplicationUpdateParameters
      UserCreateParameters = Azure::GraphRbac::V1_6::Models::UserCreateParameters
      User = Azure::GraphRbac::V1_6::Models::User
      Domain = Azure::GraphRbac::V1_6::Models::Domain
      UserUpdateParameters = Azure::GraphRbac::V1_6::Models::UserUpdateParameters
      GroupGetMemberGroupsParameters = Azure::GraphRbac::V1_6::Models::GroupGetMemberGroupsParameters
      GraphError = Azure::GraphRbac::V1_6::Models::GraphError
      GroupGetMemberGroupsResult = Azure::GraphRbac::V1_6::Models::GroupGetMemberGroupsResult
      KeyCredential = Azure::GraphRbac::V1_6::Models::KeyCredential
      CheckGroupMembershipParameters = Azure::GraphRbac::V1_6::Models::CheckGroupMembershipParameters
      ResourceAccess = Azure::GraphRbac::V1_6::Models::ResourceAccess
      CheckGroupMembershipResult = Azure::GraphRbac::V1_6::Models::CheckGroupMembershipResult
      AppRole = Azure::GraphRbac::V1_6::Models::AppRole
      ServicePrincipalCreateParameters = Azure::GraphRbac::V1_6::Models::ServicePrincipalCreateParameters
      ServicePrincipalUpdateParameters = Azure::GraphRbac::V1_6::Models::ServicePrincipalUpdateParameters
      ApplicationListResult = Azure::GraphRbac::V1_6::Models::ApplicationListResult
      KeyCredentialListResult = Azure::GraphRbac::V1_6::Models::KeyCredentialListResult
      UserListResult = Azure::GraphRbac::V1_6::Models::UserListResult
      KeyCredentialsUpdateParameters = Azure::GraphRbac::V1_6::Models::KeyCredentialsUpdateParameters
      AddOwnerParameters = Azure::GraphRbac::V1_6::Models::AddOwnerParameters
      PasswordCredentialsUpdateParameters = Azure::GraphRbac::V1_6::Models::PasswordCredentialsUpdateParameters
      ServicePrincipalListResult = Azure::GraphRbac::V1_6::Models::ServicePrincipalListResult
    end

    class GraphRbacDataClass
      attr_reader :oauth2, :signed_in_user, :applications, :deleted_applications, :groups, :service_principals, :objects, :users, :domains, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        @client_0 = Azure::GraphRbac::V1_6::GraphRbacClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @oauth2 = @client_0.oauth2
        @signed_in_user = @client_0.signed_in_user
        @applications = @client_0.applications
        @deleted_applications = @client_0.deleted_applications
        @groups = @client_0.groups
        @service_principals = @client_0.service_principals
        @objects = @client_0.objects
        @users = @client_0.users
        @domains = @client_0.domains

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/GraphRbac"
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
        def group_list_result
          Azure::GraphRbac::V1_6::Models::GroupListResult
        end
        def password_profile
          Azure::GraphRbac::V1_6::Models::PasswordProfile
        end
        def password_credential
          Azure::GraphRbac::V1_6::Models::PasswordCredential
        end
        def user_base
          Azure::GraphRbac::V1_6::Models::UserBase
        end
        def directory_object_list_result
          Azure::GraphRbac::V1_6::Models::DirectoryObjectListResult
        end
        def permissions
          Azure::GraphRbac::V1_6::Models::Permissions
        end
        def group_add_member_parameters
          Azure::GraphRbac::V1_6::Models::GroupAddMemberParameters
        end
        def domain_list_result
          Azure::GraphRbac::V1_6::Models::DomainListResult
        end
        def directory_object
          Azure::GraphRbac::V1_6::Models::DirectoryObject
        end
        def sign_in_name
          Azure::GraphRbac::V1_6::Models::SignInName
        end
        def password_credential_list_result
          Azure::GraphRbac::V1_6::Models::PasswordCredentialListResult
        end
        def group_create_parameters
          Azure::GraphRbac::V1_6::Models::GroupCreateParameters
        end
        def user_get_member_groups_parameters
          Azure::GraphRbac::V1_6::Models::UserGetMemberGroupsParameters
        end
        def required_resource_access
          Azure::GraphRbac::V1_6::Models::RequiredResourceAccess
        end
        def user_get_member_groups_result
          Azure::GraphRbac::V1_6::Models::UserGetMemberGroupsResult
        end
        def get_objects_parameters
          Azure::GraphRbac::V1_6::Models::GetObjectsParameters
        end
        def application
          Azure::GraphRbac::V1_6::Models::Application
        end
        def application_create_parameters
          Azure::GraphRbac::V1_6::Models::ApplicationCreateParameters
        end
        def service_principal
          Azure::GraphRbac::V1_6::Models::ServicePrincipal
        end
        def user_type
          Azure::GraphRbac::V1_6::Models::UserType
        end
        def adgroup
          Azure::GraphRbac::V1_6::Models::ADGroup
        end
        def application_update_parameters
          Azure::GraphRbac::V1_6::Models::ApplicationUpdateParameters
        end
        def user_create_parameters
          Azure::GraphRbac::V1_6::Models::UserCreateParameters
        end
        def user
          Azure::GraphRbac::V1_6::Models::User
        end
        def domain
          Azure::GraphRbac::V1_6::Models::Domain
        end
        def user_update_parameters
          Azure::GraphRbac::V1_6::Models::UserUpdateParameters
        end
        def group_get_member_groups_parameters
          Azure::GraphRbac::V1_6::Models::GroupGetMemberGroupsParameters
        end
        def graph_error
          Azure::GraphRbac::V1_6::Models::GraphError
        end
        def group_get_member_groups_result
          Azure::GraphRbac::V1_6::Models::GroupGetMemberGroupsResult
        end
        def key_credential
          Azure::GraphRbac::V1_6::Models::KeyCredential
        end
        def check_group_membership_parameters
          Azure::GraphRbac::V1_6::Models::CheckGroupMembershipParameters
        end
        def resource_access
          Azure::GraphRbac::V1_6::Models::ResourceAccess
        end
        def check_group_membership_result
          Azure::GraphRbac::V1_6::Models::CheckGroupMembershipResult
        end
        def app_role
          Azure::GraphRbac::V1_6::Models::AppRole
        end
        def service_principal_create_parameters
          Azure::GraphRbac::V1_6::Models::ServicePrincipalCreateParameters
        end
        def service_principal_update_parameters
          Azure::GraphRbac::V1_6::Models::ServicePrincipalUpdateParameters
        end
        def application_list_result
          Azure::GraphRbac::V1_6::Models::ApplicationListResult
        end
        def key_credential_list_result
          Azure::GraphRbac::V1_6::Models::KeyCredentialListResult
        end
        def user_list_result
          Azure::GraphRbac::V1_6::Models::UserListResult
        end
        def key_credentials_update_parameters
          Azure::GraphRbac::V1_6::Models::KeyCredentialsUpdateParameters
        end
        def add_owner_parameters
          Azure::GraphRbac::V1_6::Models::AddOwnerParameters
        end
        def password_credentials_update_parameters
          Azure::GraphRbac::V1_6::Models::PasswordCredentialsUpdateParameters
        end
        def service_principal_list_result
          Azure::GraphRbac::V1_6::Models::ServicePrincipalListResult
        end
      end
    end
  end
end
