# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_graph'

module Azure::Graph::Profiles::Latest
  Objects = Azure::Graph::V1_6::Objects
  Applications = Azure::Graph::V1_6::Applications
  Groups = Azure::Graph::V1_6::Groups
  ServicePrincipals = Azure::Graph::V1_6::ServicePrincipals
  Users = Azure::Graph::V1_6::Users
  Domains = Azure::Graph::V1_6::Domains

  module Models
    GroupAddMemberParameters = Azure::Graph::V1_6::Models::GroupAddMemberParameters
    GraphError = Azure::Graph::V1_6::Models::GraphError
    GroupCreateParameters = Azure::Graph::V1_6::Models::GroupCreateParameters
    KeyCredential = Azure::Graph::V1_6::Models::KeyCredential
    ResourceAccess = Azure::Graph::V1_6::Models::ResourceAccess
    GroupListResult = Azure::Graph::V1_6::Models::GroupListResult
    ApplicationCreateParameters = Azure::Graph::V1_6::Models::ApplicationCreateParameters
    GroupGetMemberGroupsParameters = Azure::Graph::V1_6::Models::GroupGetMemberGroupsParameters
    UserGetMemberGroupsResult = Azure::Graph::V1_6::Models::UserGetMemberGroupsResult
    ApplicationListResult = Azure::Graph::V1_6::Models::ApplicationListResult
    GroupGetMemberGroupsResult = Azure::Graph::V1_6::Models::GroupGetMemberGroupsResult
    KeyCredentialListResult = Azure::Graph::V1_6::Models::KeyCredentialListResult
    CheckGroupMembershipParameters = Azure::Graph::V1_6::Models::CheckGroupMembershipParameters
    KeyCredentialsUpdateParameters = Azure::Graph::V1_6::Models::KeyCredentialsUpdateParameters
    CheckGroupMembershipResult = Azure::Graph::V1_6::Models::CheckGroupMembershipResult
    PasswordCredentialsUpdateParameters = Azure::Graph::V1_6::Models::PasswordCredentialsUpdateParameters
    ServicePrincipalCreateParameters = Azure::Graph::V1_6::Models::ServicePrincipalCreateParameters
    GetObjectsResult = Azure::Graph::V1_6::Models::GetObjectsResult
    DomainListResult = Azure::Graph::V1_6::Models::DomainListResult
    PasswordCredential = Azure::Graph::V1_6::Models::PasswordCredential
    ServicePrincipalListResult = Azure::Graph::V1_6::Models::ServicePrincipalListResult
    ApplicationUpdateParameters = Azure::Graph::V1_6::Models::ApplicationUpdateParameters
    PasswordProfile = Azure::Graph::V1_6::Models::PasswordProfile
    DirectoryObjectListResult = Azure::Graph::V1_6::Models::DirectoryObjectListResult
    UserBase = Azure::Graph::V1_6::Models::UserBase
    AADObject = Azure::Graph::V1_6::Models::AADObject
    Domain = Azure::Graph::V1_6::Models::Domain
    RequiredResourceAccess = Azure::Graph::V1_6::Models::RequiredResourceAccess
    GetObjectsParameters = Azure::Graph::V1_6::Models::GetObjectsParameters
    PasswordCredentialListResult = Azure::Graph::V1_6::Models::PasswordCredentialListResult
    SignInName = Azure::Graph::V1_6::Models::SignInName
    ApplicationAddOwnerParameters = Azure::Graph::V1_6::Models::ApplicationAddOwnerParameters
    UserListResult = Azure::Graph::V1_6::Models::UserListResult
    DirectoryObject = Azure::Graph::V1_6::Models::DirectoryObject
    UserGetMemberGroupsParameters = Azure::Graph::V1_6::Models::UserGetMemberGroupsParameters
    Application = Azure::Graph::V1_6::Models::Application
    ADGroup = Azure::Graph::V1_6::Models::ADGroup
    ServicePrincipal = Azure::Graph::V1_6::Models::ServicePrincipal
    UserCreateParameters = Azure::Graph::V1_6::Models::UserCreateParameters
    UserUpdateParameters = Azure::Graph::V1_6::Models::UserUpdateParameters
    User = Azure::Graph::V1_6::Models::User
    UserType = Azure::Graph::V1_6::Models::UserType
  end

  #
  # GraphDataClass
  #
  class GraphDataClass
    attr_reader :objects, :applications, :groups, :service_principals, :users, :domains, :configurable, :base_url, :options, :model_classes

    def initialize(options = {})
      if options.is_a?(Hash) && options.length == 0
        @options = setup_default_options
      else
        @options = options
      end

      reset!(options)

      @configurable, @base_url, @options = self, nil, nil

      client_0 = Azure::Graph::V1_6::GraphRbacManagementClient.new(configurable.credentials, base_url, options)
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
  end

  class ModelClasses
    def group_add_member_parameters
      Azure::Graph::V1_6::Models::GroupAddMemberParameters
    end
    def graph_error
      Azure::Graph::V1_6::Models::GraphError
    end
    def group_create_parameters
      Azure::Graph::V1_6::Models::GroupCreateParameters
    end
    def key_credential
      Azure::Graph::V1_6::Models::KeyCredential
    end
    def resource_access
      Azure::Graph::V1_6::Models::ResourceAccess
    end
    def group_list_result
      Azure::Graph::V1_6::Models::GroupListResult
    end
    def application_create_parameters
      Azure::Graph::V1_6::Models::ApplicationCreateParameters
    end
    def group_get_member_groups_parameters
      Azure::Graph::V1_6::Models::GroupGetMemberGroupsParameters
    end
    def user_get_member_groups_result
      Azure::Graph::V1_6::Models::UserGetMemberGroupsResult
    end
    def application_list_result
      Azure::Graph::V1_6::Models::ApplicationListResult
    end
    def group_get_member_groups_result
      Azure::Graph::V1_6::Models::GroupGetMemberGroupsResult
    end
    def key_credential_list_result
      Azure::Graph::V1_6::Models::KeyCredentialListResult
    end
    def check_group_membership_parameters
      Azure::Graph::V1_6::Models::CheckGroupMembershipParameters
    end
    def key_credentials_update_parameters
      Azure::Graph::V1_6::Models::KeyCredentialsUpdateParameters
    end
    def check_group_membership_result
      Azure::Graph::V1_6::Models::CheckGroupMembershipResult
    end
    def password_credentials_update_parameters
      Azure::Graph::V1_6::Models::PasswordCredentialsUpdateParameters
    end
    def service_principal_create_parameters
      Azure::Graph::V1_6::Models::ServicePrincipalCreateParameters
    end
    def get_objects_result
      Azure::Graph::V1_6::Models::GetObjectsResult
    end
    def domain_list_result
      Azure::Graph::V1_6::Models::DomainListResult
    end
    def password_credential
      Azure::Graph::V1_6::Models::PasswordCredential
    end
    def service_principal_list_result
      Azure::Graph::V1_6::Models::ServicePrincipalListResult
    end
    def application_update_parameters
      Azure::Graph::V1_6::Models::ApplicationUpdateParameters
    end
    def password_profile
      Azure::Graph::V1_6::Models::PasswordProfile
    end
    def directory_object_list_result
      Azure::Graph::V1_6::Models::DirectoryObjectListResult
    end
    def user_base
      Azure::Graph::V1_6::Models::UserBase
    end
    def aadobject
      Azure::Graph::V1_6::Models::AADObject
    end
    def domain
      Azure::Graph::V1_6::Models::Domain
    end
    def required_resource_access
      Azure::Graph::V1_6::Models::RequiredResourceAccess
    end
    def get_objects_parameters
      Azure::Graph::V1_6::Models::GetObjectsParameters
    end
    def password_credential_list_result
      Azure::Graph::V1_6::Models::PasswordCredentialListResult
    end
    def sign_in_name
      Azure::Graph::V1_6::Models::SignInName
    end
    def application_add_owner_parameters
      Azure::Graph::V1_6::Models::ApplicationAddOwnerParameters
    end
    def user_list_result
      Azure::Graph::V1_6::Models::UserListResult
    end
    def directory_object
      Azure::Graph::V1_6::Models::DirectoryObject
    end
    def user_get_member_groups_parameters
      Azure::Graph::V1_6::Models::UserGetMemberGroupsParameters
    end
    def application
      Azure::Graph::V1_6::Models::Application
    end
    def adgroup
      Azure::Graph::V1_6::Models::ADGroup
    end
    def service_principal
      Azure::Graph::V1_6::Models::ServicePrincipal
    end
    def user_create_parameters
      Azure::Graph::V1_6::Models::UserCreateParameters
    end
    def user_update_parameters
      Azure::Graph::V1_6::Models::UserUpdateParameters
    end
    def user
      Azure::Graph::V1_6::Models::User
    end
    def user_type
      Azure::Graph::V1_6::Models::UserType
    end
  end
end
