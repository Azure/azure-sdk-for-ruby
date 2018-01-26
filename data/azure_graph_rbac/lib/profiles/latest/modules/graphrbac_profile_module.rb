# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_graph_rbac'

module Azure::GraphRbac::Profiles::Latest
  Objects = Azure::GraphRbac::V1_6::Objects
  Applications = Azure::GraphRbac::V1_6::Applications
  Groups = Azure::GraphRbac::V1_6::Groups
  ServicePrincipals = Azure::GraphRbac::V1_6::ServicePrincipals
  Users = Azure::GraphRbac::V1_6::Users
  Domains = Azure::GraphRbac::V1_6::Domains

  module Models
    GroupGetMemberGroupsParameters = Azure::GraphRbac::V1_6::Models::GroupGetMemberGroupsParameters
    GraphError = Azure::GraphRbac::V1_6::Models::GraphError
    GroupGetMemberGroupsResult = Azure::GraphRbac::V1_6::Models::GroupGetMemberGroupsResult
    PasswordCredential = Azure::GraphRbac::V1_6::Models::PasswordCredential
    CheckGroupMembershipParameters = Azure::GraphRbac::V1_6::Models::CheckGroupMembershipParameters
    RequiredResourceAccess = Azure::GraphRbac::V1_6::Models::RequiredResourceAccess
    CheckGroupMembershipResult = Azure::GraphRbac::V1_6::Models::CheckGroupMembershipResult
    ApplicationUpdateParameters = Azure::GraphRbac::V1_6::Models::ApplicationUpdateParameters
    ServicePrincipalCreateParameters = Azure::GraphRbac::V1_6::Models::ServicePrincipalCreateParameters
    ApplicationListResult = Azure::GraphRbac::V1_6::Models::ApplicationListResult
    ServicePrincipal = Azure::GraphRbac::V1_6::Models::ServicePrincipal
    KeyCredentialsUpdateParameters = Azure::GraphRbac::V1_6::Models::KeyCredentialsUpdateParameters
    ServicePrincipalListResult = Azure::GraphRbac::V1_6::Models::ServicePrincipalListResult
    PasswordCredentialsUpdateParameters = Azure::GraphRbac::V1_6::Models::PasswordCredentialsUpdateParameters
    PasswordProfile = Azure::GraphRbac::V1_6::Models::PasswordProfile
    GetObjectsResult = Azure::GraphRbac::V1_6::Models::GetObjectsResult
    UserBase = Azure::GraphRbac::V1_6::Models::UserBase
    GroupCreateParameters = Azure::GraphRbac::V1_6::Models::GroupCreateParameters
    GroupAddMemberParameters = Azure::GraphRbac::V1_6::Models::GroupAddMemberParameters
    ADGroup = Azure::GraphRbac::V1_6::Models::ADGroup
    KeyCredential = Azure::GraphRbac::V1_6::Models::KeyCredential
    ApplicationCreateParameters = Azure::GraphRbac::V1_6::Models::ApplicationCreateParameters
    DomainListResult = Azure::GraphRbac::V1_6::Models::DomainListResult
    KeyCredentialListResult = Azure::GraphRbac::V1_6::Models::KeyCredentialListResult
    SignInName = Azure::GraphRbac::V1_6::Models::SignInName
    AADObject = Azure::GraphRbac::V1_6::Models::AADObject
    Domain = Azure::GraphRbac::V1_6::Models::Domain
    ResourceAccess = Azure::GraphRbac::V1_6::Models::ResourceAccess
    UserGetMemberGroupsParameters = Azure::GraphRbac::V1_6::Models::UserGetMemberGroupsParameters
    PasswordCredentialListResult = Azure::GraphRbac::V1_6::Models::PasswordCredentialListResult
    UserGetMemberGroupsResult = Azure::GraphRbac::V1_6::Models::UserGetMemberGroupsResult
    Application = Azure::GraphRbac::V1_6::Models::Application
    UserListResult = Azure::GraphRbac::V1_6::Models::UserListResult
    GroupListResult = Azure::GraphRbac::V1_6::Models::GroupListResult
    GetObjectsParameters = Azure::GraphRbac::V1_6::Models::GetObjectsParameters
    UserCreateParameters = Azure::GraphRbac::V1_6::Models::UserCreateParameters
    UserUpdateParameters = Azure::GraphRbac::V1_6::Models::UserUpdateParameters
    User = Azure::GraphRbac::V1_6::Models::User
    UserType = Azure::GraphRbac::V1_6::Models::UserType
  end

  #
  # GraphRbacDataClass
  #
  class GraphRbacDataClass
    attr_reader :objects, :applications, :groups, :service_principals, :users, :domains, :configurable, :base_url, :options, :model_classes

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

      client_0 = Azure::GraphRbac::V1_6::GraphRbacClient.new(configurable.credentials, options)
      if(client_0.respond_to?(:subscription_id))
        client_0.subscription_id = configurable.subscription_id
      end
      add_telemetry(client_0)
      @objects = client_0.objects
      @applications = client_0.applications
      @groups = client_0.groups
      @service_principals = client_0.service_principals
      @users = client_0.users
      @domains = client_0.domains

      @model_classes = ModelClasses.new
    end

    def add_telemetry(client)
      profile_information = 'Profiles/Latest/GraphRbac'
      client.add_user_agent_information(profile_information)
    end

  end

  class ModelClasses
    def group_get_member_groups_parameters
      Azure::GraphRbac::V1_6::Models::GroupGetMemberGroupsParameters
    end
    def graph_error
      Azure::GraphRbac::V1_6::Models::GraphError
    end
    def group_get_member_groups_result
      Azure::GraphRbac::V1_6::Models::GroupGetMemberGroupsResult
    end
    def password_credential
      Azure::GraphRbac::V1_6::Models::PasswordCredential
    end
    def check_group_membership_parameters
      Azure::GraphRbac::V1_6::Models::CheckGroupMembershipParameters
    end
    def required_resource_access
      Azure::GraphRbac::V1_6::Models::RequiredResourceAccess
    end
    def check_group_membership_result
      Azure::GraphRbac::V1_6::Models::CheckGroupMembershipResult
    end
    def application_update_parameters
      Azure::GraphRbac::V1_6::Models::ApplicationUpdateParameters
    end
    def service_principal_create_parameters
      Azure::GraphRbac::V1_6::Models::ServicePrincipalCreateParameters
    end
    def application_list_result
      Azure::GraphRbac::V1_6::Models::ApplicationListResult
    end
    def service_principal
      Azure::GraphRbac::V1_6::Models::ServicePrincipal
    end
    def key_credentials_update_parameters
      Azure::GraphRbac::V1_6::Models::KeyCredentialsUpdateParameters
    end
    def service_principal_list_result
      Azure::GraphRbac::V1_6::Models::ServicePrincipalListResult
    end
    def password_credentials_update_parameters
      Azure::GraphRbac::V1_6::Models::PasswordCredentialsUpdateParameters
    end
    def password_profile
      Azure::GraphRbac::V1_6::Models::PasswordProfile
    end
    def get_objects_result
      Azure::GraphRbac::V1_6::Models::GetObjectsResult
    end
    def user_base
      Azure::GraphRbac::V1_6::Models::UserBase
    end
    def group_create_parameters
      Azure::GraphRbac::V1_6::Models::GroupCreateParameters
    end
    def group_add_member_parameters
      Azure::GraphRbac::V1_6::Models::GroupAddMemberParameters
    end
    def adgroup
      Azure::GraphRbac::V1_6::Models::ADGroup
    end
    def key_credential
      Azure::GraphRbac::V1_6::Models::KeyCredential
    end
    def application_create_parameters
      Azure::GraphRbac::V1_6::Models::ApplicationCreateParameters
    end
    def domain_list_result
      Azure::GraphRbac::V1_6::Models::DomainListResult
    end
    def key_credential_list_result
      Azure::GraphRbac::V1_6::Models::KeyCredentialListResult
    end
    def sign_in_name
      Azure::GraphRbac::V1_6::Models::SignInName
    end
    def aadobject
      Azure::GraphRbac::V1_6::Models::AADObject
    end
    def domain
      Azure::GraphRbac::V1_6::Models::Domain
    end
    def resource_access
      Azure::GraphRbac::V1_6::Models::ResourceAccess
    end
    def user_get_member_groups_parameters
      Azure::GraphRbac::V1_6::Models::UserGetMemberGroupsParameters
    end
    def password_credential_list_result
      Azure::GraphRbac::V1_6::Models::PasswordCredentialListResult
    end
    def user_get_member_groups_result
      Azure::GraphRbac::V1_6::Models::UserGetMemberGroupsResult
    end
    def application
      Azure::GraphRbac::V1_6::Models::Application
    end
    def user_list_result
      Azure::GraphRbac::V1_6::Models::UserListResult
    end
    def group_list_result
      Azure::GraphRbac::V1_6::Models::GroupListResult
    end
    def get_objects_parameters
      Azure::GraphRbac::V1_6::Models::GetObjectsParameters
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
  end
end
