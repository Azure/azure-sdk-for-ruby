# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_graph_rbac'

module Azure::Profiles::Latest
  module GraphRbac
    ServicePrincipals = Azure::GraphRbac::V1_6::ServicePrincipals
    Objects = Azure::GraphRbac::V1_6::Objects
    OAuth2 = Azure::GraphRbac::V1_6::OAuth2
    Users = Azure::GraphRbac::V1_6::Users
    Domains = Azure::GraphRbac::V1_6::Domains
    SignedInUser = Azure::GraphRbac::V1_6::SignedInUser
    Applications = Azure::GraphRbac::V1_6::Applications
    DeletedApplications = Azure::GraphRbac::V1_6::DeletedApplications
    Groups = Azure::GraphRbac::V1_6::Groups

    module Models
      DirectoryObjectListResult = Azure::GraphRbac::V1_6::Models::DirectoryObjectListResult
      DomainListResult = Azure::GraphRbac::V1_6::Models::DomainListResult
      PreAuthorizedApplicationExtension = Azure::GraphRbac::V1_6::Models::PreAuthorizedApplicationExtension
      AddOwnerParameters = Azure::GraphRbac::V1_6::Models::AddOwnerParameters
      SignInName = Azure::GraphRbac::V1_6::Models::SignInName
      KeyCredential = Azure::GraphRbac::V1_6::Models::KeyCredential
      GetObjectsParameters = Azure::GraphRbac::V1_6::Models::GetObjectsParameters
      PasswordCredentialListResult = Azure::GraphRbac::V1_6::Models::PasswordCredentialListResult
      UserGetMemberGroupsParameters = Azure::GraphRbac::V1_6::Models::UserGetMemberGroupsParameters
      ADGroup = Azure::GraphRbac::V1_6::Models::ADGroup
      ServicePrincipal = Azure::GraphRbac::V1_6::Models::ServicePrincipal
      ServicePrincipalCreateParameters = Azure::GraphRbac::V1_6::Models::ServicePrincipalCreateParameters
      UserUpdateParameters = Azure::GraphRbac::V1_6::Models::UserUpdateParameters
      UserType = Azure::GraphRbac::V1_6::Models::UserType
      Domain = Azure::GraphRbac::V1_6::Models::Domain
      GroupCreateParameters = Azure::GraphRbac::V1_6::Models::GroupCreateParameters
      Application = Azure::GraphRbac::V1_6::Models::Application
      ApplicationCreateParameters = Azure::GraphRbac::V1_6::Models::ApplicationCreateParameters
      User = Azure::GraphRbac::V1_6::Models::User
      Permissions = Azure::GraphRbac::V1_6::Models::Permissions
      UserCreateParameters = Azure::GraphRbac::V1_6::Models::UserCreateParameters
      InformationalUrl = Azure::GraphRbac::V1_6::Models::InformationalUrl
      PasswordCredentialsUpdateParameters = Azure::GraphRbac::V1_6::Models::PasswordCredentialsUpdateParameters
      OptionalClaim = Azure::GraphRbac::V1_6::Models::OptionalClaim
      GroupAddMemberParameters = Azure::GraphRbac::V1_6::Models::GroupAddMemberParameters
      PreAuthorizedApplicationPermission = Azure::GraphRbac::V1_6::Models::PreAuthorizedApplicationPermission
      OAuth2Permission = Azure::GraphRbac::V1_6::Models::OAuth2Permission
      PreAuthorizedApplication = Azure::GraphRbac::V1_6::Models::PreAuthorizedApplication
      DirectoryObject = Azure::GraphRbac::V1_6::Models::DirectoryObject
      GroupListResult = Azure::GraphRbac::V1_6::Models::GroupListResult
      PasswordCredential = Azure::GraphRbac::V1_6::Models::PasswordCredential
      GroupGetMemberGroupsParameters = Azure::GraphRbac::V1_6::Models::GroupGetMemberGroupsParameters
      RequiredResourceAccess = Azure::GraphRbac::V1_6::Models::RequiredResourceAccess
      GroupGetMemberGroupsResult = Azure::GraphRbac::V1_6::Models::GroupGetMemberGroupsResult
      AppRole = Azure::GraphRbac::V1_6::Models::AppRole
      CheckGroupMembershipParameters = Azure::GraphRbac::V1_6::Models::CheckGroupMembershipParameters
      ApplicationListResult = Azure::GraphRbac::V1_6::Models::ApplicationListResult
      CheckGroupMembershipResult = Azure::GraphRbac::V1_6::Models::CheckGroupMembershipResult
      KeyCredentialListResult = Azure::GraphRbac::V1_6::Models::KeyCredentialListResult
      PermissionsListResult = Azure::GraphRbac::V1_6::Models::PermissionsListResult
      KeyCredentialsUpdateParameters = Azure::GraphRbac::V1_6::Models::KeyCredentialsUpdateParameters
      OptionalClaims = Azure::GraphRbac::V1_6::Models::OptionalClaims
      ServicePrincipalListResult = Azure::GraphRbac::V1_6::Models::ServicePrincipalListResult
      GraphError = Azure::GraphRbac::V1_6::Models::GraphError
      PasswordProfile = Azure::GraphRbac::V1_6::Models::PasswordProfile
      ResourceAccess = Azure::GraphRbac::V1_6::Models::ResourceAccess
      UserBase = Azure::GraphRbac::V1_6::Models::UserBase
      UserListResult = Azure::GraphRbac::V1_6::Models::UserListResult
      UserGetMemberGroupsResult = Azure::GraphRbac::V1_6::Models::UserGetMemberGroupsResult
    end

    class GraphRbacDataClass
      attr_reader :service_principals, :objects, :oauth2, :users, :domains, :signed_in_user, :applications, :deleted_applications, :groups, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        @client_0 = Azure::GraphRbac::V1_6::GraphRbacClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @service_principals = @client_0.service_principals
        @objects = @client_0.objects
        @oauth2 = @client_0.oauth2
        @users = @client_0.users
        @domains = @client_0.domains
        @signed_in_user = @client_0.signed_in_user
        @applications = @client_0.applications
        @deleted_applications = @client_0.deleted_applications
        @groups = @client_0.groups

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
        def directory_object_list_result
          Azure::GraphRbac::V1_6::Models::DirectoryObjectListResult
        end
        def domain_list_result
          Azure::GraphRbac::V1_6::Models::DomainListResult
        end
        def pre_authorized_application_extension
          Azure::GraphRbac::V1_6::Models::PreAuthorizedApplicationExtension
        end
        def add_owner_parameters
          Azure::GraphRbac::V1_6::Models::AddOwnerParameters
        end
        def sign_in_name
          Azure::GraphRbac::V1_6::Models::SignInName
        end
        def key_credential
          Azure::GraphRbac::V1_6::Models::KeyCredential
        end
        def get_objects_parameters
          Azure::GraphRbac::V1_6::Models::GetObjectsParameters
        end
        def password_credential_list_result
          Azure::GraphRbac::V1_6::Models::PasswordCredentialListResult
        end
        def user_get_member_groups_parameters
          Azure::GraphRbac::V1_6::Models::UserGetMemberGroupsParameters
        end
        def adgroup
          Azure::GraphRbac::V1_6::Models::ADGroup
        end
        def service_principal
          Azure::GraphRbac::V1_6::Models::ServicePrincipal
        end
        def service_principal_create_parameters
          Azure::GraphRbac::V1_6::Models::ServicePrincipalCreateParameters
        end
        def user_update_parameters
          Azure::GraphRbac::V1_6::Models::UserUpdateParameters
        end
        def user_type
          Azure::GraphRbac::V1_6::Models::UserType
        end
        def domain
          Azure::GraphRbac::V1_6::Models::Domain
        end
        def group_create_parameters
          Azure::GraphRbac::V1_6::Models::GroupCreateParameters
        end
        def application
          Azure::GraphRbac::V1_6::Models::Application
        end
        def application_create_parameters
          Azure::GraphRbac::V1_6::Models::ApplicationCreateParameters
        end
        def user
          Azure::GraphRbac::V1_6::Models::User
        end
        def permissions
          Azure::GraphRbac::V1_6::Models::Permissions
        end
        def user_create_parameters
          Azure::GraphRbac::V1_6::Models::UserCreateParameters
        end
        def informational_url
          Azure::GraphRbac::V1_6::Models::InformationalUrl
        end
        def password_credentials_update_parameters
          Azure::GraphRbac::V1_6::Models::PasswordCredentialsUpdateParameters
        end
        def optional_claim
          Azure::GraphRbac::V1_6::Models::OptionalClaim
        end
        def group_add_member_parameters
          Azure::GraphRbac::V1_6::Models::GroupAddMemberParameters
        end
        def pre_authorized_application_permission
          Azure::GraphRbac::V1_6::Models::PreAuthorizedApplicationPermission
        end
        def oauth2_permission
          Azure::GraphRbac::V1_6::Models::OAuth2Permission
        end
        def pre_authorized_application
          Azure::GraphRbac::V1_6::Models::PreAuthorizedApplication
        end
        def directory_object
          Azure::GraphRbac::V1_6::Models::DirectoryObject
        end
        def group_list_result
          Azure::GraphRbac::V1_6::Models::GroupListResult
        end
        def password_credential
          Azure::GraphRbac::V1_6::Models::PasswordCredential
        end
        def group_get_member_groups_parameters
          Azure::GraphRbac::V1_6::Models::GroupGetMemberGroupsParameters
        end
        def required_resource_access
          Azure::GraphRbac::V1_6::Models::RequiredResourceAccess
        end
        def group_get_member_groups_result
          Azure::GraphRbac::V1_6::Models::GroupGetMemberGroupsResult
        end
        def app_role
          Azure::GraphRbac::V1_6::Models::AppRole
        end
        def check_group_membership_parameters
          Azure::GraphRbac::V1_6::Models::CheckGroupMembershipParameters
        end
        def application_list_result
          Azure::GraphRbac::V1_6::Models::ApplicationListResult
        end
        def check_group_membership_result
          Azure::GraphRbac::V1_6::Models::CheckGroupMembershipResult
        end
        def key_credential_list_result
          Azure::GraphRbac::V1_6::Models::KeyCredentialListResult
        end
        def permissions_list_result
          Azure::GraphRbac::V1_6::Models::PermissionsListResult
        end
        def key_credentials_update_parameters
          Azure::GraphRbac::V1_6::Models::KeyCredentialsUpdateParameters
        end
        def optional_claims
          Azure::GraphRbac::V1_6::Models::OptionalClaims
        end
        def service_principal_list_result
          Azure::GraphRbac::V1_6::Models::ServicePrincipalListResult
        end
        def graph_error
          Azure::GraphRbac::V1_6::Models::GraphError
        end
        def password_profile
          Azure::GraphRbac::V1_6::Models::PasswordProfile
        end
        def resource_access
          Azure::GraphRbac::V1_6::Models::ResourceAccess
        end
        def user_base
          Azure::GraphRbac::V1_6::Models::UserBase
        end
        def user_list_result
          Azure::GraphRbac::V1_6::Models::UserListResult
        end
        def user_get_member_groups_result
          Azure::GraphRbac::V1_6::Models::UserGetMemberGroupsResult
        end
      end
    end
  end
end
