# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_graph_rbac'

module Azure::GraphRbac::Profiles::Latest
  DeletedApplications = Azure::GraphRbac::V1_6::DeletedApplications
  Groups = Azure::GraphRbac::V1_6::Groups
  ServicePrincipals = Azure::GraphRbac::V1_6::ServicePrincipals
  Users = Azure::GraphRbac::V1_6::Users
  Objects = Azure::GraphRbac::V1_6::Objects
  Domains = Azure::GraphRbac::V1_6::Domains
  OAuth2 = Azure::GraphRbac::V1_6::OAuth2
  SignedInUser = Azure::GraphRbac::V1_6::SignedInUser
  Applications = Azure::GraphRbac::V1_6::Applications

  module Models
    UserListResult = Azure::GraphRbac::V1_6::Models::UserListResult
    Application = Azure::GraphRbac::V1_6::Models::Application
    ADGroup = Azure::GraphRbac::V1_6::Models::ADGroup
    ServicePrincipal = Azure::GraphRbac::V1_6::Models::ServicePrincipal
    UserCreateParameters = Azure::GraphRbac::V1_6::Models::UserCreateParameters
    UserUpdateParameters = Azure::GraphRbac::V1_6::Models::UserUpdateParameters
    User = Azure::GraphRbac::V1_6::Models::User
    UserType = Azure::GraphRbac::V1_6::Models::UserType
    GroupCreateParameters = Azure::GraphRbac::V1_6::Models::GroupCreateParameters
    InformationalUrl = Azure::GraphRbac::V1_6::Models::InformationalUrl
    PasswordCredentialsUpdateParameters = Azure::GraphRbac::V1_6::Models::PasswordCredentialsUpdateParameters
    GroupAddMemberParameters = Azure::GraphRbac::V1_6::Models::GroupAddMemberParameters
    OptionalClaims = Azure::GraphRbac::V1_6::Models::OptionalClaims
    OAuth2Permission = Azure::GraphRbac::V1_6::Models::OAuth2Permission
    PreAuthorizedApplicationExtension = Azure::GraphRbac::V1_6::Models::PreAuthorizedApplicationExtension
    GraphError = Azure::GraphRbac::V1_6::Models::GraphError
    GroupListResult = Azure::GraphRbac::V1_6::Models::GroupListResult
    KeyCredential = Azure::GraphRbac::V1_6::Models::KeyCredential
    GroupGetMemberGroupsParameters = Azure::GraphRbac::V1_6::Models::GroupGetMemberGroupsParameters
    ResourceAccess = Azure::GraphRbac::V1_6::Models::ResourceAccess
    GroupGetMemberGroupsResult = Azure::GraphRbac::V1_6::Models::GroupGetMemberGroupsResult
    AppRole = Azure::GraphRbac::V1_6::Models::AppRole
    CheckGroupMembershipParameters = Azure::GraphRbac::V1_6::Models::CheckGroupMembershipParameters
    ApplicationListResult = Azure::GraphRbac::V1_6::Models::ApplicationListResult
    CheckGroupMembershipResult = Azure::GraphRbac::V1_6::Models::CheckGroupMembershipResult
    KeyCredentialListResult = Azure::GraphRbac::V1_6::Models::KeyCredentialListResult
    PermissionsListResult = Azure::GraphRbac::V1_6::Models::PermissionsListResult
    KeyCredentialsUpdateParameters = Azure::GraphRbac::V1_6::Models::KeyCredentialsUpdateParameters
    ServicePrincipalListResult = Azure::GraphRbac::V1_6::Models::ServicePrincipalListResult
    OptionalClaim = Azure::GraphRbac::V1_6::Models::OptionalClaim
    PasswordProfile = Azure::GraphRbac::V1_6::Models::PasswordProfile
    PreAuthorizedApplication = Azure::GraphRbac::V1_6::Models::PreAuthorizedApplication
    UserBase = Azure::GraphRbac::V1_6::Models::UserBase
    PasswordCredential = Azure::GraphRbac::V1_6::Models::PasswordCredential
    Permissions = Azure::GraphRbac::V1_6::Models::Permissions
    GetObjectsParameters = Azure::GraphRbac::V1_6::Models::GetObjectsParameters
    AddOwnerParameters = Azure::GraphRbac::V1_6::Models::AddOwnerParameters
    DomainListResult = Azure::GraphRbac::V1_6::Models::DomainListResult
    PasswordCredentialListResult = Azure::GraphRbac::V1_6::Models::PasswordCredentialListResult
    SignInName = Azure::GraphRbac::V1_6::Models::SignInName
    DirectoryObject = Azure::GraphRbac::V1_6::Models::DirectoryObject
    Domain = Azure::GraphRbac::V1_6::Models::Domain
    DirectoryObjectListResult = Azure::GraphRbac::V1_6::Models::DirectoryObjectListResult
    UserGetMemberGroupsParameters = Azure::GraphRbac::V1_6::Models::UserGetMemberGroupsParameters
    RequiredResourceAccess = Azure::GraphRbac::V1_6::Models::RequiredResourceAccess
    UserGetMemberGroupsResult = Azure::GraphRbac::V1_6::Models::UserGetMemberGroupsResult
    PreAuthorizedApplicationPermission = Azure::GraphRbac::V1_6::Models::PreAuthorizedApplicationPermission
  end

  #
  # GraphRbacDataClass
  #
  class GraphRbacDataClass
    attr_reader :deleted_applications, :groups, :service_principals, :users, :objects, :domains, :oauth2, :signed_in_user, :applications, :configurable, :base_url, :options, :model_classes

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

      @client_0 = Azure::GraphRbac::V1_6::GraphRbacClient.new(configurable.credentials, base_url, options)
      if(@client_0.respond_to?(:subscription_id))
        @client_0.subscription_id = configurable.subscription_id
      end
      add_telemetry(@client_0)
      @deleted_applications = @client_0.deleted_applications
      @groups = @client_0.groups
      @service_principals = @client_0.service_principals
      @users = @client_0.users
      @objects = @client_0.objects
      @domains = @client_0.domains
      @oauth2 = @client_0.oauth2
      @signed_in_user = @client_0.signed_in_user
      @applications = @client_0.applications

      @model_classes = ModelClasses.new
    end

    def add_telemetry(client)
      profile_information = 'Profiles/Latest/GraphRbac'
      client.add_user_agent_information(profile_information)
    end

    def method_missing(method, *args)
      if @client_0.respond_to?method
        @client_0.send(method, *args)
      else
        super
      end
    end

  end

  class ModelClasses
    def user_list_result
      Azure::GraphRbac::V1_6::Models::UserListResult
    end
    def application
      Azure::GraphRbac::V1_6::Models::Application
    end
    def adgroup
      Azure::GraphRbac::V1_6::Models::ADGroup
    end
    def service_principal
      Azure::GraphRbac::V1_6::Models::ServicePrincipal
    end
    def user_create_parameters
      Azure::GraphRbac::V1_6::Models::UserCreateParameters
    end
    def user_update_parameters
      Azure::GraphRbac::V1_6::Models::UserUpdateParameters
    end
    def user
      Azure::GraphRbac::V1_6::Models::User
    end
    def user_type
      Azure::GraphRbac::V1_6::Models::UserType
    end
    def group_create_parameters
      Azure::GraphRbac::V1_6::Models::GroupCreateParameters
    end
    def informational_url
      Azure::GraphRbac::V1_6::Models::InformationalUrl
    end
    def password_credentials_update_parameters
      Azure::GraphRbac::V1_6::Models::PasswordCredentialsUpdateParameters
    end
    def group_add_member_parameters
      Azure::GraphRbac::V1_6::Models::GroupAddMemberParameters
    end
    def optional_claims
      Azure::GraphRbac::V1_6::Models::OptionalClaims
    end
    def oauth2_permission
      Azure::GraphRbac::V1_6::Models::OAuth2Permission
    end
    def pre_authorized_application_extension
      Azure::GraphRbac::V1_6::Models::PreAuthorizedApplicationExtension
    end
    def graph_error
      Azure::GraphRbac::V1_6::Models::GraphError
    end
    def group_list_result
      Azure::GraphRbac::V1_6::Models::GroupListResult
    end
    def key_credential
      Azure::GraphRbac::V1_6::Models::KeyCredential
    end
    def group_get_member_groups_parameters
      Azure::GraphRbac::V1_6::Models::GroupGetMemberGroupsParameters
    end
    def resource_access
      Azure::GraphRbac::V1_6::Models::ResourceAccess
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
    def service_principal_list_result
      Azure::GraphRbac::V1_6::Models::ServicePrincipalListResult
    end
    def optional_claim
      Azure::GraphRbac::V1_6::Models::OptionalClaim
    end
    def password_profile
      Azure::GraphRbac::V1_6::Models::PasswordProfile
    end
    def pre_authorized_application
      Azure::GraphRbac::V1_6::Models::PreAuthorizedApplication
    end
    def user_base
      Azure::GraphRbac::V1_6::Models::UserBase
    end
    def password_credential
      Azure::GraphRbac::V1_6::Models::PasswordCredential
    end
    def permissions
      Azure::GraphRbac::V1_6::Models::Permissions
    end
    def get_objects_parameters
      Azure::GraphRbac::V1_6::Models::GetObjectsParameters
    end
    def add_owner_parameters
      Azure::GraphRbac::V1_6::Models::AddOwnerParameters
    end
    def domain_list_result
      Azure::GraphRbac::V1_6::Models::DomainListResult
    end
    def password_credential_list_result
      Azure::GraphRbac::V1_6::Models::PasswordCredentialListResult
    end
    def sign_in_name
      Azure::GraphRbac::V1_6::Models::SignInName
    end
    def directory_object
      Azure::GraphRbac::V1_6::Models::DirectoryObject
    end
    def domain
      Azure::GraphRbac::V1_6::Models::Domain
    end
    def directory_object_list_result
      Azure::GraphRbac::V1_6::Models::DirectoryObjectListResult
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
    def pre_authorized_application_permission
      Azure::GraphRbac::V1_6::Models::PreAuthorizedApplicationPermission
    end
  end
end
