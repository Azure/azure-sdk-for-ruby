# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_graph_rbac'

module Azure::Profiles::Latest
  module GraphRbac
    Groups = Azure::GraphRbac::V1_6::Groups
    ServicePrincipals = Azure::GraphRbac::V1_6::ServicePrincipals
    Objects = Azure::GraphRbac::V1_6::Objects
    Domains = Azure::GraphRbac::V1_6::Domains
    OAuth2 = Azure::GraphRbac::V1_6::OAuth2
    Users = Azure::GraphRbac::V1_6::Users
    SignedInUser = Azure::GraphRbac::V1_6::SignedInUser
    Applications = Azure::GraphRbac::V1_6::Applications
    DeletedApplications = Azure::GraphRbac::V1_6::DeletedApplications

    module Models
      Application = Azure::GraphRbac::V1_6::Models::Application
      User = Azure::GraphRbac::V1_6::Models::User
      Permissions = Azure::GraphRbac::V1_6::Models::Permissions
      ApplicationCreateParameters = Azure::GraphRbac::V1_6::Models::ApplicationCreateParameters
      ApplicationUpdateParameters = Azure::GraphRbac::V1_6::Models::ApplicationUpdateParameters
      GetObjectsResult = Azure::GraphRbac::V1_6::Models::GetObjectsResult
      GroupAddMemberParameters = Azure::GraphRbac::V1_6::Models::GroupAddMemberParameters
      DirectoryObject = Azure::GraphRbac::V1_6::Models::DirectoryObject
      PasswordCredential = Azure::GraphRbac::V1_6::Models::PasswordCredential
      RequiredResourceAccess = Azure::GraphRbac::V1_6::Models::RequiredResourceAccess
      GroupListResult = Azure::GraphRbac::V1_6::Models::GroupListResult
      GroupGetMemberGroupsParameters = Azure::GraphRbac::V1_6::Models::GroupGetMemberGroupsParameters
      AppRole = Azure::GraphRbac::V1_6::Models::AppRole
      UserGetMemberGroupsResult = Azure::GraphRbac::V1_6::Models::UserGetMemberGroupsResult
      AddOwnerParameters = Azure::GraphRbac::V1_6::Models::AddOwnerParameters
      GroupGetMemberGroupsResult = Azure::GraphRbac::V1_6::Models::GroupGetMemberGroupsResult
      KeyCredentialListResult = Azure::GraphRbac::V1_6::Models::KeyCredentialListResult
      CheckGroupMembershipParameters = Azure::GraphRbac::V1_6::Models::CheckGroupMembershipParameters
      KeyCredentialsUpdateParameters = Azure::GraphRbac::V1_6::Models::KeyCredentialsUpdateParameters
      CheckGroupMembershipResult = Azure::GraphRbac::V1_6::Models::CheckGroupMembershipResult
      PasswordCredentialsUpdateParameters = Azure::GraphRbac::V1_6::Models::PasswordCredentialsUpdateParameters
      ServicePrincipalCreateParameters = Azure::GraphRbac::V1_6::Models::ServicePrincipalCreateParameters
      GraphError = Azure::GraphRbac::V1_6::Models::GraphError
      ResourceAccess = Azure::GraphRbac::V1_6::Models::ResourceAccess
      ServicePrincipalListResult = Azure::GraphRbac::V1_6::Models::ServicePrincipalListResult
      UserCreateParameters = Azure::GraphRbac::V1_6::Models::UserCreateParameters
      ApplicationListResult = Azure::GraphRbac::V1_6::Models::ApplicationListResult
      PasswordProfile = Azure::GraphRbac::V1_6::Models::PasswordProfile
      DirectoryObjectListResult = Azure::GraphRbac::V1_6::Models::DirectoryObjectListResult
      UserBase = Azure::GraphRbac::V1_6::Models::UserBase
      AADObject = Azure::GraphRbac::V1_6::Models::AADObject
      Domain = Azure::GraphRbac::V1_6::Models::Domain
      PasswordCredentialListResult = Azure::GraphRbac::V1_6::Models::PasswordCredentialListResult
      SignInName = Azure::GraphRbac::V1_6::Models::SignInName
      UserListResult = Azure::GraphRbac::V1_6::Models::UserListResult
      GetObjectsParameters = Azure::GraphRbac::V1_6::Models::GetObjectsParameters
      KeyCredential = Azure::GraphRbac::V1_6::Models::KeyCredential
      UserGetMemberGroupsParameters = Azure::GraphRbac::V1_6::Models::UserGetMemberGroupsParameters
      ApplicationAddOwnerParameters = Azure::GraphRbac::V1_6::Models::ApplicationAddOwnerParameters
      ADGroup = Azure::GraphRbac::V1_6::Models::ADGroup
      GroupCreateParameters = Azure::GraphRbac::V1_6::Models::GroupCreateParameters
      ServicePrincipal = Azure::GraphRbac::V1_6::Models::ServicePrincipal
      UserType = Azure::GraphRbac::V1_6::Models::UserType
      DomainListResult = Azure::GraphRbac::V1_6::Models::DomainListResult
      UserUpdateParameters = Azure::GraphRbac::V1_6::Models::UserUpdateParameters
    end

    class GraphRbacDataClass
      attr_reader :groups, :service_principals, :objects, :domains, :oauth2, :users, :signed_in_user, :applications, :deleted_applications, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        @client_0 = Azure::GraphRbac::V1_6::GraphRbacClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @groups = @client_0.groups
        @service_principals = @client_0.service_principals
        @objects = @client_0.objects
        @domains = @client_0.domains
        @oauth2 = @client_0.oauth2
        @users = @client_0.users
        @signed_in_user = @client_0.signed_in_user
        @applications = @client_0.applications
        @deleted_applications = @client_0.deleted_applications

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
        def application
          Azure::GraphRbac::V1_6::Models::Application
        end
        def user
          Azure::GraphRbac::V1_6::Models::User
        end
        def permissions
          Azure::GraphRbac::V1_6::Models::Permissions
        end
        def application_create_parameters
          Azure::GraphRbac::V1_6::Models::ApplicationCreateParameters
        end
        def application_update_parameters
          Azure::GraphRbac::V1_6::Models::ApplicationUpdateParameters
        end
        def get_objects_result
          Azure::GraphRbac::V1_6::Models::GetObjectsResult
        end
        def group_add_member_parameters
          Azure::GraphRbac::V1_6::Models::GroupAddMemberParameters
        end
        def directory_object
          Azure::GraphRbac::V1_6::Models::DirectoryObject
        end
        def password_credential
          Azure::GraphRbac::V1_6::Models::PasswordCredential
        end
        def required_resource_access
          Azure::GraphRbac::V1_6::Models::RequiredResourceAccess
        end
        def group_list_result
          Azure::GraphRbac::V1_6::Models::GroupListResult
        end
        def group_get_member_groups_parameters
          Azure::GraphRbac::V1_6::Models::GroupGetMemberGroupsParameters
        end
        def app_role
          Azure::GraphRbac::V1_6::Models::AppRole
        end
        def user_get_member_groups_result
          Azure::GraphRbac::V1_6::Models::UserGetMemberGroupsResult
        end
        def add_owner_parameters
          Azure::GraphRbac::V1_6::Models::AddOwnerParameters
        end
        def group_get_member_groups_result
          Azure::GraphRbac::V1_6::Models::GroupGetMemberGroupsResult
        end
        def key_credential_list_result
          Azure::GraphRbac::V1_6::Models::KeyCredentialListResult
        end
        def check_group_membership_parameters
          Azure::GraphRbac::V1_6::Models::CheckGroupMembershipParameters
        end
        def key_credentials_update_parameters
          Azure::GraphRbac::V1_6::Models::KeyCredentialsUpdateParameters
        end
        def check_group_membership_result
          Azure::GraphRbac::V1_6::Models::CheckGroupMembershipResult
        end
        def password_credentials_update_parameters
          Azure::GraphRbac::V1_6::Models::PasswordCredentialsUpdateParameters
        end
        def service_principal_create_parameters
          Azure::GraphRbac::V1_6::Models::ServicePrincipalCreateParameters
        end
        def graph_error
          Azure::GraphRbac::V1_6::Models::GraphError
        end
        def resource_access
          Azure::GraphRbac::V1_6::Models::ResourceAccess
        end
        def service_principal_list_result
          Azure::GraphRbac::V1_6::Models::ServicePrincipalListResult
        end
        def user_create_parameters
          Azure::GraphRbac::V1_6::Models::UserCreateParameters
        end
        def application_list_result
          Azure::GraphRbac::V1_6::Models::ApplicationListResult
        end
        def password_profile
          Azure::GraphRbac::V1_6::Models::PasswordProfile
        end
        def directory_object_list_result
          Azure::GraphRbac::V1_6::Models::DirectoryObjectListResult
        end
        def user_base
          Azure::GraphRbac::V1_6::Models::UserBase
        end
        def aadobject
          Azure::GraphRbac::V1_6::Models::AADObject
        end
        def domain
          Azure::GraphRbac::V1_6::Models::Domain
        end
        def password_credential_list_result
          Azure::GraphRbac::V1_6::Models::PasswordCredentialListResult
        end
        def sign_in_name
          Azure::GraphRbac::V1_6::Models::SignInName
        end
        def user_list_result
          Azure::GraphRbac::V1_6::Models::UserListResult
        end
        def get_objects_parameters
          Azure::GraphRbac::V1_6::Models::GetObjectsParameters
        end
        def key_credential
          Azure::GraphRbac::V1_6::Models::KeyCredential
        end
        def user_get_member_groups_parameters
          Azure::GraphRbac::V1_6::Models::UserGetMemberGroupsParameters
        end
        def application_add_owner_parameters
          Azure::GraphRbac::V1_6::Models::ApplicationAddOwnerParameters
        end
        def adgroup
          Azure::GraphRbac::V1_6::Models::ADGroup
        end
        def group_create_parameters
          Azure::GraphRbac::V1_6::Models::GroupCreateParameters
        end
        def service_principal
          Azure::GraphRbac::V1_6::Models::ServicePrincipal
        end
        def user_type
          Azure::GraphRbac::V1_6::Models::UserType
        end
        def domain_list_result
          Azure::GraphRbac::V1_6::Models::DomainListResult
        end
        def user_update_parameters
          Azure::GraphRbac::V1_6::Models::UserUpdateParameters
        end
      end
    end
  end
end
