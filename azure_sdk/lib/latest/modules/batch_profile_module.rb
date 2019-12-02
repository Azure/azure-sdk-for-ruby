# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_batch'

module Azure::Profiles::Latest
  module Batch
    module Mgmt
      BatchAccountOperations = Azure::Batch::Mgmt::V2019_08_01::BatchAccountOperations
      ApplicationPackageOperations = Azure::Batch::Mgmt::V2019_08_01::ApplicationPackageOperations
      ApplicationOperations = Azure::Batch::Mgmt::V2019_08_01::ApplicationOperations
      Location = Azure::Batch::Mgmt::V2019_08_01::Location
      Operations = Azure::Batch::Mgmt::V2019_08_01::Operations
      CertificateOperations = Azure::Batch::Mgmt::V2019_08_01::CertificateOperations
      PoolOperations = Azure::Batch::Mgmt::V2019_08_01::PoolOperations

      module Models
        AutoScaleRunError = Azure::Batch::Mgmt::V2019_08_01::Models::AutoScaleRunError
        AutoStorageBaseProperties = Azure::Batch::Mgmt::V2019_08_01::Models::AutoStorageBaseProperties
        AutoScaleRun = Azure::Batch::Mgmt::V2019_08_01::Models::AutoScaleRun
        BatchAccountCreateParameters = Azure::Batch::Mgmt::V2019_08_01::Models::BatchAccountCreateParameters
        NetworkSecurityGroupRule = Azure::Batch::Mgmt::V2019_08_01::Models::NetworkSecurityGroupRule
        VirtualMachineFamilyCoreQuota = Azure::Batch::Mgmt::V2019_08_01::Models::VirtualMachineFamilyCoreQuota
        InboundNatPool = Azure::Batch::Mgmt::V2019_08_01::Models::InboundNatPool
        BatchAccountUpdateParameters = Azure::Batch::Mgmt::V2019_08_01::Models::BatchAccountUpdateParameters
        PoolEndpointConfiguration = Azure::Batch::Mgmt::V2019_08_01::Models::PoolEndpointConfiguration
        BatchAccountRegenerateKeyParameters = Azure::Batch::Mgmt::V2019_08_01::Models::BatchAccountRegenerateKeyParameters
        NetworkConfiguration = Azure::Batch::Mgmt::V2019_08_01::Models::NetworkConfiguration
        ActivateApplicationPackageParameters = Azure::Batch::Mgmt::V2019_08_01::Models::ActivateApplicationPackageParameters
        TaskSchedulingPolicy = Azure::Batch::Mgmt::V2019_08_01::Models::TaskSchedulingPolicy
        BatchAccountKeys = Azure::Batch::Mgmt::V2019_08_01::Models::BatchAccountKeys
        ListApplicationsResult = Azure::Batch::Mgmt::V2019_08_01::Models::ListApplicationsResult
        OperationDisplay = Azure::Batch::Mgmt::V2019_08_01::Models::OperationDisplay
        BatchLocationQuota = Azure::Batch::Mgmt::V2019_08_01::Models::BatchLocationQuota
        OperationListResult = Azure::Batch::Mgmt::V2019_08_01::Models::OperationListResult
        ProxyResource = Azure::Batch::Mgmt::V2019_08_01::Models::ProxyResource
        LinuxUserConfiguration = Azure::Batch::Mgmt::V2019_08_01::Models::LinuxUserConfiguration
        DeleteCertificateError = Azure::Batch::Mgmt::V2019_08_01::Models::DeleteCertificateError
        WindowsUserConfiguration = Azure::Batch::Mgmt::V2019_08_01::Models::WindowsUserConfiguration
        CheckNameAvailabilityParameters = Azure::Batch::Mgmt::V2019_08_01::Models::CheckNameAvailabilityParameters
        UserAccount = Azure::Batch::Mgmt::V2019_08_01::Models::UserAccount
        CloudServiceConfiguration = Azure::Batch::Mgmt::V2019_08_01::Models::CloudServiceConfiguration
        MetadataItem = Azure::Batch::Mgmt::V2019_08_01::Models::MetadataItem
        WindowsConfiguration = Azure::Batch::Mgmt::V2019_08_01::Models::WindowsConfiguration
        ResourceFile = Azure::Batch::Mgmt::V2019_08_01::Models::ResourceFile
        ContainerRegistry = Azure::Batch::Mgmt::V2019_08_01::Models::ContainerRegistry
        EnvironmentSetting = Azure::Batch::Mgmt::V2019_08_01::Models::EnvironmentSetting
        VirtualMachineConfiguration = Azure::Batch::Mgmt::V2019_08_01::Models::VirtualMachineConfiguration
        AutoUserSpecification = Azure::Batch::Mgmt::V2019_08_01::Models::AutoUserSpecification
        FixedScaleSettings = Azure::Batch::Mgmt::V2019_08_01::Models::FixedScaleSettings
        UserIdentity = Azure::Batch::Mgmt::V2019_08_01::Models::UserIdentity
        ScaleSettings = Azure::Batch::Mgmt::V2019_08_01::Models::ScaleSettings
        TaskContainerSettings = Azure::Batch::Mgmt::V2019_08_01::Models::TaskContainerSettings
        KeyVaultReference = Azure::Batch::Mgmt::V2019_08_01::Models::KeyVaultReference
        BatchAccountListResult = Azure::Batch::Mgmt::V2019_08_01::Models::BatchAccountListResult
        StartTask = Azure::Batch::Mgmt::V2019_08_01::Models::StartTask
        Resource = Azure::Batch::Mgmt::V2019_08_01::Models::Resource
        CertificateReference = Azure::Batch::Mgmt::V2019_08_01::Models::CertificateReference
        CheckNameAvailabilityResult = Azure::Batch::Mgmt::V2019_08_01::Models::CheckNameAvailabilityResult
        ApplicationPackageReference = Azure::Batch::Mgmt::V2019_08_01::Models::ApplicationPackageReference
        ImageReference = Azure::Batch::Mgmt::V2019_08_01::Models::ImageReference
        ResizeError = Azure::Batch::Mgmt::V2019_08_01::Models::ResizeError
        ContainerConfiguration = Azure::Batch::Mgmt::V2019_08_01::Models::ContainerConfiguration
        ResizeOperationStatus = Azure::Batch::Mgmt::V2019_08_01::Models::ResizeOperationStatus
        AutoScaleSettings = Azure::Batch::Mgmt::V2019_08_01::Models::AutoScaleSettings
        AzureBlobFileSystemConfiguration = Azure::Batch::Mgmt::V2019_08_01::Models::AzureBlobFileSystemConfiguration
        ListApplicationPackagesResult = Azure::Batch::Mgmt::V2019_08_01::Models::ListApplicationPackagesResult
        NFSMountConfiguration = Azure::Batch::Mgmt::V2019_08_01::Models::NFSMountConfiguration
        ListCertificatesResult = Azure::Batch::Mgmt::V2019_08_01::Models::ListCertificatesResult
        CIFSMountConfiguration = Azure::Batch::Mgmt::V2019_08_01::Models::CIFSMountConfiguration
        DeploymentConfiguration = Azure::Batch::Mgmt::V2019_08_01::Models::DeploymentConfiguration
        AzureFileShareConfiguration = Azure::Batch::Mgmt::V2019_08_01::Models::AzureFileShareConfiguration
        CertificateBaseProperties = Azure::Batch::Mgmt::V2019_08_01::Models::CertificateBaseProperties
        MountConfiguration = Azure::Batch::Mgmt::V2019_08_01::Models::MountConfiguration
        Operation = Azure::Batch::Mgmt::V2019_08_01::Models::Operation
        DataDisk = Azure::Batch::Mgmt::V2019_08_01::Models::DataDisk
        ListPoolsResult = Azure::Batch::Mgmt::V2019_08_01::Models::ListPoolsResult
        AutoStorageProperties = Azure::Batch::Mgmt::V2019_08_01::Models::AutoStorageProperties
        BatchAccount = Azure::Batch::Mgmt::V2019_08_01::Models::BatchAccount
        Application = Azure::Batch::Mgmt::V2019_08_01::Models::Application
        ApplicationPackage = Azure::Batch::Mgmt::V2019_08_01::Models::ApplicationPackage
        Certificate = Azure::Batch::Mgmt::V2019_08_01::Models::Certificate
        CertificateCreateOrUpdateParameters = Azure::Batch::Mgmt::V2019_08_01::Models::CertificateCreateOrUpdateParameters
        Pool = Azure::Batch::Mgmt::V2019_08_01::Models::Pool
        PoolAllocationMode = Azure::Batch::Mgmt::V2019_08_01::Models::PoolAllocationMode
        ProvisioningState = Azure::Batch::Mgmt::V2019_08_01::Models::ProvisioningState
        AccountKeyType = Azure::Batch::Mgmt::V2019_08_01::Models::AccountKeyType
        PackageState = Azure::Batch::Mgmt::V2019_08_01::Models::PackageState
        CertificateFormat = Azure::Batch::Mgmt::V2019_08_01::Models::CertificateFormat
        CertificateProvisioningState = Azure::Batch::Mgmt::V2019_08_01::Models::CertificateProvisioningState
        PoolProvisioningState = Azure::Batch::Mgmt::V2019_08_01::Models::PoolProvisioningState
        AllocationState = Azure::Batch::Mgmt::V2019_08_01::Models::AllocationState
        CachingType = Azure::Batch::Mgmt::V2019_08_01::Models::CachingType
        StorageAccountType = Azure::Batch::Mgmt::V2019_08_01::Models::StorageAccountType
        ComputeNodeDeallocationOption = Azure::Batch::Mgmt::V2019_08_01::Models::ComputeNodeDeallocationOption
        InterNodeCommunicationState = Azure::Batch::Mgmt::V2019_08_01::Models::InterNodeCommunicationState
        InboundEndpointProtocol = Azure::Batch::Mgmt::V2019_08_01::Models::InboundEndpointProtocol
        NetworkSecurityGroupRuleAccess = Azure::Batch::Mgmt::V2019_08_01::Models::NetworkSecurityGroupRuleAccess
        ComputeNodeFillType = Azure::Batch::Mgmt::V2019_08_01::Models::ComputeNodeFillType
        ElevationLevel = Azure::Batch::Mgmt::V2019_08_01::Models::ElevationLevel
        LoginMode = Azure::Batch::Mgmt::V2019_08_01::Models::LoginMode
        AutoUserScope = Azure::Batch::Mgmt::V2019_08_01::Models::AutoUserScope
        ContainerWorkingDirectory = Azure::Batch::Mgmt::V2019_08_01::Models::ContainerWorkingDirectory
        CertificateStoreLocation = Azure::Batch::Mgmt::V2019_08_01::Models::CertificateStoreLocation
        CertificateVisibility = Azure::Batch::Mgmt::V2019_08_01::Models::CertificateVisibility
        NameAvailabilityReason = Azure::Batch::Mgmt::V2019_08_01::Models::NameAvailabilityReason
      end

      class BatchManagementClass
        attr_reader :batch_account_operations, :application_package_operations, :application_operations, :location, :operations, :certificate_operations, :pool_operations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Batch::Mgmt::V2019_08_01::BatchManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @batch_account_operations = @client_0.batch_account_operations
          @application_package_operations = @client_0.application_package_operations
          @application_operations = @client_0.application_operations
          @location = @client_0.location
          @operations = @client_0.operations
          @certificate_operations = @client_0.certificate_operations
          @pool_operations = @client_0.pool_operations

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Batch/Mgmt"
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
          def auto_scale_run_error
            Azure::Batch::Mgmt::V2019_08_01::Models::AutoScaleRunError
          end
          def auto_storage_base_properties
            Azure::Batch::Mgmt::V2019_08_01::Models::AutoStorageBaseProperties
          end
          def auto_scale_run
            Azure::Batch::Mgmt::V2019_08_01::Models::AutoScaleRun
          end
          def batch_account_create_parameters
            Azure::Batch::Mgmt::V2019_08_01::Models::BatchAccountCreateParameters
          end
          def network_security_group_rule
            Azure::Batch::Mgmt::V2019_08_01::Models::NetworkSecurityGroupRule
          end
          def virtual_machine_family_core_quota
            Azure::Batch::Mgmt::V2019_08_01::Models::VirtualMachineFamilyCoreQuota
          end
          def inbound_nat_pool
            Azure::Batch::Mgmt::V2019_08_01::Models::InboundNatPool
          end
          def batch_account_update_parameters
            Azure::Batch::Mgmt::V2019_08_01::Models::BatchAccountUpdateParameters
          end
          def pool_endpoint_configuration
            Azure::Batch::Mgmt::V2019_08_01::Models::PoolEndpointConfiguration
          end
          def batch_account_regenerate_key_parameters
            Azure::Batch::Mgmt::V2019_08_01::Models::BatchAccountRegenerateKeyParameters
          end
          def network_configuration
            Azure::Batch::Mgmt::V2019_08_01::Models::NetworkConfiguration
          end
          def activate_application_package_parameters
            Azure::Batch::Mgmt::V2019_08_01::Models::ActivateApplicationPackageParameters
          end
          def task_scheduling_policy
            Azure::Batch::Mgmt::V2019_08_01::Models::TaskSchedulingPolicy
          end
          def batch_account_keys
            Azure::Batch::Mgmt::V2019_08_01::Models::BatchAccountKeys
          end
          def list_applications_result
            Azure::Batch::Mgmt::V2019_08_01::Models::ListApplicationsResult
          end
          def operation_display
            Azure::Batch::Mgmt::V2019_08_01::Models::OperationDisplay
          end
          def batch_location_quota
            Azure::Batch::Mgmt::V2019_08_01::Models::BatchLocationQuota
          end
          def operation_list_result
            Azure::Batch::Mgmt::V2019_08_01::Models::OperationListResult
          end
          def proxy_resource
            Azure::Batch::Mgmt::V2019_08_01::Models::ProxyResource
          end
          def linux_user_configuration
            Azure::Batch::Mgmt::V2019_08_01::Models::LinuxUserConfiguration
          end
          def delete_certificate_error
            Azure::Batch::Mgmt::V2019_08_01::Models::DeleteCertificateError
          end
          def windows_user_configuration
            Azure::Batch::Mgmt::V2019_08_01::Models::WindowsUserConfiguration
          end
          def check_name_availability_parameters
            Azure::Batch::Mgmt::V2019_08_01::Models::CheckNameAvailabilityParameters
          end
          def user_account
            Azure::Batch::Mgmt::V2019_08_01::Models::UserAccount
          end
          def cloud_service_configuration
            Azure::Batch::Mgmt::V2019_08_01::Models::CloudServiceConfiguration
          end
          def metadata_item
            Azure::Batch::Mgmt::V2019_08_01::Models::MetadataItem
          end
          def windows_configuration
            Azure::Batch::Mgmt::V2019_08_01::Models::WindowsConfiguration
          end
          def resource_file
            Azure::Batch::Mgmt::V2019_08_01::Models::ResourceFile
          end
          def container_registry
            Azure::Batch::Mgmt::V2019_08_01::Models::ContainerRegistry
          end
          def environment_setting
            Azure::Batch::Mgmt::V2019_08_01::Models::EnvironmentSetting
          end
          def virtual_machine_configuration
            Azure::Batch::Mgmt::V2019_08_01::Models::VirtualMachineConfiguration
          end
          def auto_user_specification
            Azure::Batch::Mgmt::V2019_08_01::Models::AutoUserSpecification
          end
          def fixed_scale_settings
            Azure::Batch::Mgmt::V2019_08_01::Models::FixedScaleSettings
          end
          def user_identity
            Azure::Batch::Mgmt::V2019_08_01::Models::UserIdentity
          end
          def scale_settings
            Azure::Batch::Mgmt::V2019_08_01::Models::ScaleSettings
          end
          def task_container_settings
            Azure::Batch::Mgmt::V2019_08_01::Models::TaskContainerSettings
          end
          def key_vault_reference
            Azure::Batch::Mgmt::V2019_08_01::Models::KeyVaultReference
          end
          def batch_account_list_result
            Azure::Batch::Mgmt::V2019_08_01::Models::BatchAccountListResult
          end
          def start_task
            Azure::Batch::Mgmt::V2019_08_01::Models::StartTask
          end
          def resource
            Azure::Batch::Mgmt::V2019_08_01::Models::Resource
          end
          def certificate_reference
            Azure::Batch::Mgmt::V2019_08_01::Models::CertificateReference
          end
          def check_name_availability_result
            Azure::Batch::Mgmt::V2019_08_01::Models::CheckNameAvailabilityResult
          end
          def application_package_reference
            Azure::Batch::Mgmt::V2019_08_01::Models::ApplicationPackageReference
          end
          def image_reference
            Azure::Batch::Mgmt::V2019_08_01::Models::ImageReference
          end
          def resize_error
            Azure::Batch::Mgmt::V2019_08_01::Models::ResizeError
          end
          def container_configuration
            Azure::Batch::Mgmt::V2019_08_01::Models::ContainerConfiguration
          end
          def resize_operation_status
            Azure::Batch::Mgmt::V2019_08_01::Models::ResizeOperationStatus
          end
          def auto_scale_settings
            Azure::Batch::Mgmt::V2019_08_01::Models::AutoScaleSettings
          end
          def azure_blob_file_system_configuration
            Azure::Batch::Mgmt::V2019_08_01::Models::AzureBlobFileSystemConfiguration
          end
          def list_application_packages_result
            Azure::Batch::Mgmt::V2019_08_01::Models::ListApplicationPackagesResult
          end
          def nfsmount_configuration
            Azure::Batch::Mgmt::V2019_08_01::Models::NFSMountConfiguration
          end
          def list_certificates_result
            Azure::Batch::Mgmt::V2019_08_01::Models::ListCertificatesResult
          end
          def cifsmount_configuration
            Azure::Batch::Mgmt::V2019_08_01::Models::CIFSMountConfiguration
          end
          def deployment_configuration
            Azure::Batch::Mgmt::V2019_08_01::Models::DeploymentConfiguration
          end
          def azure_file_share_configuration
            Azure::Batch::Mgmt::V2019_08_01::Models::AzureFileShareConfiguration
          end
          def certificate_base_properties
            Azure::Batch::Mgmt::V2019_08_01::Models::CertificateBaseProperties
          end
          def mount_configuration
            Azure::Batch::Mgmt::V2019_08_01::Models::MountConfiguration
          end
          def operation
            Azure::Batch::Mgmt::V2019_08_01::Models::Operation
          end
          def data_disk
            Azure::Batch::Mgmt::V2019_08_01::Models::DataDisk
          end
          def list_pools_result
            Azure::Batch::Mgmt::V2019_08_01::Models::ListPoolsResult
          end
          def auto_storage_properties
            Azure::Batch::Mgmt::V2019_08_01::Models::AutoStorageProperties
          end
          def batch_account
            Azure::Batch::Mgmt::V2019_08_01::Models::BatchAccount
          end
          def application
            Azure::Batch::Mgmt::V2019_08_01::Models::Application
          end
          def application_package
            Azure::Batch::Mgmt::V2019_08_01::Models::ApplicationPackage
          end
          def certificate
            Azure::Batch::Mgmt::V2019_08_01::Models::Certificate
          end
          def certificate_create_or_update_parameters
            Azure::Batch::Mgmt::V2019_08_01::Models::CertificateCreateOrUpdateParameters
          end
          def pool
            Azure::Batch::Mgmt::V2019_08_01::Models::Pool
          end
          def pool_allocation_mode
            Azure::Batch::Mgmt::V2019_08_01::Models::PoolAllocationMode
          end
          def provisioning_state
            Azure::Batch::Mgmt::V2019_08_01::Models::ProvisioningState
          end
          def account_key_type
            Azure::Batch::Mgmt::V2019_08_01::Models::AccountKeyType
          end
          def package_state
            Azure::Batch::Mgmt::V2019_08_01::Models::PackageState
          end
          def certificate_format
            Azure::Batch::Mgmt::V2019_08_01::Models::CertificateFormat
          end
          def certificate_provisioning_state
            Azure::Batch::Mgmt::V2019_08_01::Models::CertificateProvisioningState
          end
          def pool_provisioning_state
            Azure::Batch::Mgmt::V2019_08_01::Models::PoolProvisioningState
          end
          def allocation_state
            Azure::Batch::Mgmt::V2019_08_01::Models::AllocationState
          end
          def caching_type
            Azure::Batch::Mgmt::V2019_08_01::Models::CachingType
          end
          def storage_account_type
            Azure::Batch::Mgmt::V2019_08_01::Models::StorageAccountType
          end
          def compute_node_deallocation_option
            Azure::Batch::Mgmt::V2019_08_01::Models::ComputeNodeDeallocationOption
          end
          def inter_node_communication_state
            Azure::Batch::Mgmt::V2019_08_01::Models::InterNodeCommunicationState
          end
          def inbound_endpoint_protocol
            Azure::Batch::Mgmt::V2019_08_01::Models::InboundEndpointProtocol
          end
          def network_security_group_rule_access
            Azure::Batch::Mgmt::V2019_08_01::Models::NetworkSecurityGroupRuleAccess
          end
          def compute_node_fill_type
            Azure::Batch::Mgmt::V2019_08_01::Models::ComputeNodeFillType
          end
          def elevation_level
            Azure::Batch::Mgmt::V2019_08_01::Models::ElevationLevel
          end
          def login_mode
            Azure::Batch::Mgmt::V2019_08_01::Models::LoginMode
          end
          def auto_user_scope
            Azure::Batch::Mgmt::V2019_08_01::Models::AutoUserScope
          end
          def container_working_directory
            Azure::Batch::Mgmt::V2019_08_01::Models::ContainerWorkingDirectory
          end
          def certificate_store_location
            Azure::Batch::Mgmt::V2019_08_01::Models::CertificateStoreLocation
          end
          def certificate_visibility
            Azure::Batch::Mgmt::V2019_08_01::Models::CertificateVisibility
          end
          def name_availability_reason
            Azure::Batch::Mgmt::V2019_08_01::Models::NameAvailabilityReason
          end
        end
      end
    end
  end
end
