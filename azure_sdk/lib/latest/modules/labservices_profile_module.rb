# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_labservices'

module Azure::Profiles::Latest
  module Labservices
    module Mgmt
      ProviderOperations = Azure::Labservices::Mgmt::V2018_10_15::ProviderOperations
      GlobalUsers = Azure::Labservices::Mgmt::V2018_10_15::GlobalUsers
      LabAccounts = Azure::Labservices::Mgmt::V2018_10_15::LabAccounts
      Operations = Azure::Labservices::Mgmt::V2018_10_15::Operations
      GalleryImages = Azure::Labservices::Mgmt::V2018_10_15::GalleryImages
      Labs = Azure::Labservices::Mgmt::V2018_10_15::Labs
      EnvironmentSettings = Azure::Labservices::Mgmt::V2018_10_15::EnvironmentSettings
      Environments = Azure::Labservices::Mgmt::V2018_10_15::Environments
      Users = Azure::Labservices::Mgmt::V2018_10_15::Users

      module Models
        SizeAvailability = Azure::Labservices::Mgmt::V2018_10_15::Models::SizeAvailability
        RegionalAvailability = Azure::Labservices::Mgmt::V2018_10_15::Models::RegionalAvailability
        GetRegionalAvailabilityResponse = Azure::Labservices::Mgmt::V2018_10_15::Models::GetRegionalAvailabilityResponse
        ReferenceVmCreationParameters = Azure::Labservices::Mgmt::V2018_10_15::Models::ReferenceVmCreationParameters
        AddUsersPayload = Azure::Labservices::Mgmt::V2018_10_15::Models::AddUsersPayload
        EnvironmentSettingCreationParameters = Azure::Labservices::Mgmt::V2018_10_15::Models::EnvironmentSettingCreationParameters
        CreateLabProperties = Azure::Labservices::Mgmt::V2018_10_15::Models::CreateLabProperties
        ResourceSettingCreationParameters = Azure::Labservices::Mgmt::V2018_10_15::Models::ResourceSettingCreationParameters
        NetworkInterface = Azure::Labservices::Mgmt::V2018_10_15::Models::NetworkInterface
        SizeConfigurationPropertiesFragment = Azure::Labservices::Mgmt::V2018_10_15::Models::SizeConfigurationPropertiesFragment
        LabCreationParameters = Azure::Labservices::Mgmt::V2018_10_15::Models::LabCreationParameters
        ResourceSet = Azure::Labservices::Mgmt::V2018_10_15::Models::ResourceSet
        EnvironmentDetails = Azure::Labservices::Mgmt::V2018_10_15::Models::EnvironmentDetails
        LatestOperationResult = Azure::Labservices::Mgmt::V2018_10_15::Models::LatestOperationResult
        ResponseWithContinuationGalleryImage = Azure::Labservices::Mgmt::V2018_10_15::Models::ResponseWithContinuationGalleryImage
        RegisterPayload = Azure::Labservices::Mgmt::V2018_10_15::Models::RegisterPayload
        VmStateDetails = Azure::Labservices::Mgmt::V2018_10_15::Models::VmStateDetails
        SizeConfigurationProperties = Azure::Labservices::Mgmt::V2018_10_15::Models::SizeConfigurationProperties
        ResourceSettings = Azure::Labservices::Mgmt::V2018_10_15::Models::ResourceSettings
        ResponseWithContinuationUser = Azure::Labservices::Mgmt::V2018_10_15::Models::ResponseWithContinuationUser
        ReferenceVmFragment = Azure::Labservices::Mgmt::V2018_10_15::Models::ReferenceVmFragment
        ResponseWithContinuationLabAccount = Azure::Labservices::Mgmt::V2018_10_15::Models::ResponseWithContinuationLabAccount
        ResponseWithContinuationEnvironment = Azure::Labservices::Mgmt::V2018_10_15::Models::ResponseWithContinuationEnvironment
        LabDetails = Azure::Labservices::Mgmt::V2018_10_15::Models::LabDetails
        EnvironmentSize = Azure::Labservices::Mgmt::V2018_10_15::Models::EnvironmentSize
        ResponseWithContinuationLab = Azure::Labservices::Mgmt::V2018_10_15::Models::ResponseWithContinuationLab
        EnvironmentSizeFragment = Azure::Labservices::Mgmt::V2018_10_15::Models::EnvironmentSizeFragment
        ListEnvironmentsPayload = Azure::Labservices::Mgmt::V2018_10_15::Models::ListEnvironmentsPayload
        Resource = Azure::Labservices::Mgmt::V2018_10_15::Models::Resource
        ListEnvironmentsResponse = Azure::Labservices::Mgmt::V2018_10_15::Models::ListEnvironmentsResponse
        GalleryImageReferenceFragment = Azure::Labservices::Mgmt::V2018_10_15::Models::GalleryImageReferenceFragment
        ListLabsResponse = Azure::Labservices::Mgmt::V2018_10_15::Models::ListLabsResponse
        GetPersonalPreferencesResponse = Azure::Labservices::Mgmt::V2018_10_15::Models::GetPersonalPreferencesResponse
        OperationBatchStatusPayload = Azure::Labservices::Mgmt::V2018_10_15::Models::OperationBatchStatusPayload
        ResourceSetFragment = Azure::Labservices::Mgmt::V2018_10_15::Models::ResourceSetFragment
        OperationBatchStatusResponseItem = Azure::Labservices::Mgmt::V2018_10_15::Models::OperationBatchStatusResponseItem
        ReferenceVm = Azure::Labservices::Mgmt::V2018_10_15::Models::ReferenceVm
        OperationBatchStatusResponse = Azure::Labservices::Mgmt::V2018_10_15::Models::OperationBatchStatusResponse
        ResourceSettingsFragment = Azure::Labservices::Mgmt::V2018_10_15::Models::ResourceSettingsFragment
        OperationError = Azure::Labservices::Mgmt::V2018_10_15::Models::OperationError
        SizeInfoFragment = Azure::Labservices::Mgmt::V2018_10_15::Models::SizeInfoFragment
        OperationMetadataDisplay = Azure::Labservices::Mgmt::V2018_10_15::Models::OperationMetadataDisplay
        ResetPasswordPayload = Azure::Labservices::Mgmt::V2018_10_15::Models::ResetPasswordPayload
        OperationMetadata = Azure::Labservices::Mgmt::V2018_10_15::Models::OperationMetadata
        VirtualMachineDetails = Azure::Labservices::Mgmt::V2018_10_15::Models::VirtualMachineDetails
        OperationResult = Azure::Labservices::Mgmt::V2018_10_15::Models::OperationResult
        ResponseWithContinuationEnvironmentSetting = Azure::Labservices::Mgmt::V2018_10_15::Models::ResponseWithContinuationEnvironmentSetting
        OperationStatusPayload = Azure::Labservices::Mgmt::V2018_10_15::Models::OperationStatusPayload
        GalleryImageReference = Azure::Labservices::Mgmt::V2018_10_15::Models::GalleryImageReference
        OperationStatusResponse = Azure::Labservices::Mgmt::V2018_10_15::Models::OperationStatusResponse
        EnvironmentOperationsPayload = Azure::Labservices::Mgmt::V2018_10_15::Models::EnvironmentOperationsPayload
        PersonalPreferencesOperationsPayload = Azure::Labservices::Mgmt::V2018_10_15::Models::PersonalPreferencesOperationsPayload
        GetEnvironmentResponse = Azure::Labservices::Mgmt::V2018_10_15::Models::GetEnvironmentResponse
        ProviderOperationResult = Azure::Labservices::Mgmt::V2018_10_15::Models::ProviderOperationResult
        SizeInfo = Azure::Labservices::Mgmt::V2018_10_15::Models::SizeInfo
        PublishPayload = Azure::Labservices::Mgmt::V2018_10_15::Models::PublishPayload
        Environment = Azure::Labservices::Mgmt::V2018_10_15::Models::Environment
        EnvironmentFragment = Azure::Labservices::Mgmt::V2018_10_15::Models::EnvironmentFragment
        EnvironmentSetting = Azure::Labservices::Mgmt::V2018_10_15::Models::EnvironmentSetting
        EnvironmentSettingFragment = Azure::Labservices::Mgmt::V2018_10_15::Models::EnvironmentSettingFragment
        GalleryImage = Azure::Labservices::Mgmt::V2018_10_15::Models::GalleryImage
        GalleryImageFragment = Azure::Labservices::Mgmt::V2018_10_15::Models::GalleryImageFragment
        Lab = Azure::Labservices::Mgmt::V2018_10_15::Models::Lab
        LabAccount = Azure::Labservices::Mgmt::V2018_10_15::Models::LabAccount
        LabAccountFragment = Azure::Labservices::Mgmt::V2018_10_15::Models::LabAccountFragment
        LabFragment = Azure::Labservices::Mgmt::V2018_10_15::Models::LabFragment
        User = Azure::Labservices::Mgmt::V2018_10_15::Models::User
        UserFragment = Azure::Labservices::Mgmt::V2018_10_15::Models::UserFragment
        ManagedLabVmSize = Azure::Labservices::Mgmt::V2018_10_15::Models::ManagedLabVmSize
        PublishingState = Azure::Labservices::Mgmt::V2018_10_15::Models::PublishingState
        ConfigurationState = Azure::Labservices::Mgmt::V2018_10_15::Models::ConfigurationState
        LabUserAccessMode = Azure::Labservices::Mgmt::V2018_10_15::Models::LabUserAccessMode
        AddRemove = Azure::Labservices::Mgmt::V2018_10_15::Models::AddRemove
      end

      class LabservicesManagementClass
        attr_reader :provider_operations, :global_users, :lab_accounts, :operations, :gallery_images, :labs, :environment_settings, :environments, :users, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Labservices::Mgmt::V2018_10_15::ManagedLabsClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @provider_operations = @client_0.provider_operations
          @global_users = @client_0.global_users
          @lab_accounts = @client_0.lab_accounts
          @operations = @client_0.operations
          @gallery_images = @client_0.gallery_images
          @labs = @client_0.labs
          @environment_settings = @client_0.environment_settings
          @environments = @client_0.environments
          @users = @client_0.users

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Labservices/Mgmt"
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
          def size_availability
            Azure::Labservices::Mgmt::V2018_10_15::Models::SizeAvailability
          end
          def regional_availability
            Azure::Labservices::Mgmt::V2018_10_15::Models::RegionalAvailability
          end
          def get_regional_availability_response
            Azure::Labservices::Mgmt::V2018_10_15::Models::GetRegionalAvailabilityResponse
          end
          def reference_vm_creation_parameters
            Azure::Labservices::Mgmt::V2018_10_15::Models::ReferenceVmCreationParameters
          end
          def add_users_payload
            Azure::Labservices::Mgmt::V2018_10_15::Models::AddUsersPayload
          end
          def environment_setting_creation_parameters
            Azure::Labservices::Mgmt::V2018_10_15::Models::EnvironmentSettingCreationParameters
          end
          def create_lab_properties
            Azure::Labservices::Mgmt::V2018_10_15::Models::CreateLabProperties
          end
          def resource_setting_creation_parameters
            Azure::Labservices::Mgmt::V2018_10_15::Models::ResourceSettingCreationParameters
          end
          def network_interface
            Azure::Labservices::Mgmt::V2018_10_15::Models::NetworkInterface
          end
          def size_configuration_properties_fragment
            Azure::Labservices::Mgmt::V2018_10_15::Models::SizeConfigurationPropertiesFragment
          end
          def lab_creation_parameters
            Azure::Labservices::Mgmt::V2018_10_15::Models::LabCreationParameters
          end
          def resource_set
            Azure::Labservices::Mgmt::V2018_10_15::Models::ResourceSet
          end
          def environment_details
            Azure::Labservices::Mgmt::V2018_10_15::Models::EnvironmentDetails
          end
          def latest_operation_result
            Azure::Labservices::Mgmt::V2018_10_15::Models::LatestOperationResult
          end
          def response_with_continuation_gallery_image
            Azure::Labservices::Mgmt::V2018_10_15::Models::ResponseWithContinuationGalleryImage
          end
          def register_payload
            Azure::Labservices::Mgmt::V2018_10_15::Models::RegisterPayload
          end
          def vm_state_details
            Azure::Labservices::Mgmt::V2018_10_15::Models::VmStateDetails
          end
          def size_configuration_properties
            Azure::Labservices::Mgmt::V2018_10_15::Models::SizeConfigurationProperties
          end
          def resource_settings
            Azure::Labservices::Mgmt::V2018_10_15::Models::ResourceSettings
          end
          def response_with_continuation_user
            Azure::Labservices::Mgmt::V2018_10_15::Models::ResponseWithContinuationUser
          end
          def reference_vm_fragment
            Azure::Labservices::Mgmt::V2018_10_15::Models::ReferenceVmFragment
          end
          def response_with_continuation_lab_account
            Azure::Labservices::Mgmt::V2018_10_15::Models::ResponseWithContinuationLabAccount
          end
          def response_with_continuation_environment
            Azure::Labservices::Mgmt::V2018_10_15::Models::ResponseWithContinuationEnvironment
          end
          def lab_details
            Azure::Labservices::Mgmt::V2018_10_15::Models::LabDetails
          end
          def environment_size
            Azure::Labservices::Mgmt::V2018_10_15::Models::EnvironmentSize
          end
          def response_with_continuation_lab
            Azure::Labservices::Mgmt::V2018_10_15::Models::ResponseWithContinuationLab
          end
          def environment_size_fragment
            Azure::Labservices::Mgmt::V2018_10_15::Models::EnvironmentSizeFragment
          end
          def list_environments_payload
            Azure::Labservices::Mgmt::V2018_10_15::Models::ListEnvironmentsPayload
          end
          def resource
            Azure::Labservices::Mgmt::V2018_10_15::Models::Resource
          end
          def list_environments_response
            Azure::Labservices::Mgmt::V2018_10_15::Models::ListEnvironmentsResponse
          end
          def gallery_image_reference_fragment
            Azure::Labservices::Mgmt::V2018_10_15::Models::GalleryImageReferenceFragment
          end
          def list_labs_response
            Azure::Labservices::Mgmt::V2018_10_15::Models::ListLabsResponse
          end
          def get_personal_preferences_response
            Azure::Labservices::Mgmt::V2018_10_15::Models::GetPersonalPreferencesResponse
          end
          def operation_batch_status_payload
            Azure::Labservices::Mgmt::V2018_10_15::Models::OperationBatchStatusPayload
          end
          def resource_set_fragment
            Azure::Labservices::Mgmt::V2018_10_15::Models::ResourceSetFragment
          end
          def operation_batch_status_response_item
            Azure::Labservices::Mgmt::V2018_10_15::Models::OperationBatchStatusResponseItem
          end
          def reference_vm
            Azure::Labservices::Mgmt::V2018_10_15::Models::ReferenceVm
          end
          def operation_batch_status_response
            Azure::Labservices::Mgmt::V2018_10_15::Models::OperationBatchStatusResponse
          end
          def resource_settings_fragment
            Azure::Labservices::Mgmt::V2018_10_15::Models::ResourceSettingsFragment
          end
          def operation_error
            Azure::Labservices::Mgmt::V2018_10_15::Models::OperationError
          end
          def size_info_fragment
            Azure::Labservices::Mgmt::V2018_10_15::Models::SizeInfoFragment
          end
          def operation_metadata_display
            Azure::Labservices::Mgmt::V2018_10_15::Models::OperationMetadataDisplay
          end
          def reset_password_payload
            Azure::Labservices::Mgmt::V2018_10_15::Models::ResetPasswordPayload
          end
          def operation_metadata
            Azure::Labservices::Mgmt::V2018_10_15::Models::OperationMetadata
          end
          def virtual_machine_details
            Azure::Labservices::Mgmt::V2018_10_15::Models::VirtualMachineDetails
          end
          def operation_result
            Azure::Labservices::Mgmt::V2018_10_15::Models::OperationResult
          end
          def response_with_continuation_environment_setting
            Azure::Labservices::Mgmt::V2018_10_15::Models::ResponseWithContinuationEnvironmentSetting
          end
          def operation_status_payload
            Azure::Labservices::Mgmt::V2018_10_15::Models::OperationStatusPayload
          end
          def gallery_image_reference
            Azure::Labservices::Mgmt::V2018_10_15::Models::GalleryImageReference
          end
          def operation_status_response
            Azure::Labservices::Mgmt::V2018_10_15::Models::OperationStatusResponse
          end
          def environment_operations_payload
            Azure::Labservices::Mgmt::V2018_10_15::Models::EnvironmentOperationsPayload
          end
          def personal_preferences_operations_payload
            Azure::Labservices::Mgmt::V2018_10_15::Models::PersonalPreferencesOperationsPayload
          end
          def get_environment_response
            Azure::Labservices::Mgmt::V2018_10_15::Models::GetEnvironmentResponse
          end
          def provider_operation_result
            Azure::Labservices::Mgmt::V2018_10_15::Models::ProviderOperationResult
          end
          def size_info
            Azure::Labservices::Mgmt::V2018_10_15::Models::SizeInfo
          end
          def publish_payload
            Azure::Labservices::Mgmt::V2018_10_15::Models::PublishPayload
          end
          def environment
            Azure::Labservices::Mgmt::V2018_10_15::Models::Environment
          end
          def environment_fragment
            Azure::Labservices::Mgmt::V2018_10_15::Models::EnvironmentFragment
          end
          def environment_setting
            Azure::Labservices::Mgmt::V2018_10_15::Models::EnvironmentSetting
          end
          def environment_setting_fragment
            Azure::Labservices::Mgmt::V2018_10_15::Models::EnvironmentSettingFragment
          end
          def gallery_image
            Azure::Labservices::Mgmt::V2018_10_15::Models::GalleryImage
          end
          def gallery_image_fragment
            Azure::Labservices::Mgmt::V2018_10_15::Models::GalleryImageFragment
          end
          def lab
            Azure::Labservices::Mgmt::V2018_10_15::Models::Lab
          end
          def lab_account
            Azure::Labservices::Mgmt::V2018_10_15::Models::LabAccount
          end
          def lab_account_fragment
            Azure::Labservices::Mgmt::V2018_10_15::Models::LabAccountFragment
          end
          def lab_fragment
            Azure::Labservices::Mgmt::V2018_10_15::Models::LabFragment
          end
          def user
            Azure::Labservices::Mgmt::V2018_10_15::Models::User
          end
          def user_fragment
            Azure::Labservices::Mgmt::V2018_10_15::Models::UserFragment
          end
          def managed_lab_vm_size
            Azure::Labservices::Mgmt::V2018_10_15::Models::ManagedLabVmSize
          end
          def publishing_state
            Azure::Labservices::Mgmt::V2018_10_15::Models::PublishingState
          end
          def configuration_state
            Azure::Labservices::Mgmt::V2018_10_15::Models::ConfigurationState
          end
          def lab_user_access_mode
            Azure::Labservices::Mgmt::V2018_10_15::Models::LabUserAccessMode
          end
          def add_remove
            Azure::Labservices::Mgmt::V2018_10_15::Models::AddRemove
          end
        end
      end
    end
  end
end
