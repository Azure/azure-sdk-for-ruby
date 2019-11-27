# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_batch'

module Azure::Profiles::V2019_07_01
  module Batch
    module Mgmt
      BatchAccountOperations = Azure::Batch::Mgmt::V2019_04_01::BatchAccountOperations
      ApplicationPackageOperations = Azure::Batch::Mgmt::V2019_04_01::ApplicationPackageOperations
      ApplicationOperations = Azure::Batch::Mgmt::V2019_04_01::ApplicationOperations
      Location = Azure::Batch::Mgmt::V2019_04_01::Location
      Operations = Azure::Batch::Mgmt::V2019_04_01::Operations
      CertificateOperations = Azure::Batch::Mgmt::V2019_04_01::CertificateOperations
      PoolOperations = Azure::Batch::Mgmt::V2019_04_01::PoolOperations

      module Models
        FixedScaleSettings = Azure::Batch::Mgmt::V2019_04_01::Models::FixedScaleSettings
        AutoScaleSettings = Azure::Batch::Mgmt::V2019_04_01::Models::AutoScaleSettings
        KeyVaultReference = Azure::Batch::Mgmt::V2019_04_01::Models::KeyVaultReference
        ScaleSettings = Azure::Batch::Mgmt::V2019_04_01::Models::ScaleSettings
        DeploymentConfiguration = Azure::Batch::Mgmt::V2019_04_01::Models::DeploymentConfiguration
        VirtualMachineFamilyCoreQuota = Azure::Batch::Mgmt::V2019_04_01::Models::VirtualMachineFamilyCoreQuota
        AutoStorageBaseProperties = Azure::Batch::Mgmt::V2019_04_01::Models::AutoStorageBaseProperties
        BatchAccountUpdateParameters = Azure::Batch::Mgmt::V2019_04_01::Models::BatchAccountUpdateParameters
        BatchAccountCreateParameters = Azure::Batch::Mgmt::V2019_04_01::Models::BatchAccountCreateParameters
        BatchAccountRegenerateKeyParameters = Azure::Batch::Mgmt::V2019_04_01::Models::BatchAccountRegenerateKeyParameters
        ActivateApplicationPackageParameters = Azure::Batch::Mgmt::V2019_04_01::Models::ActivateApplicationPackageParameters
        AutoScaleRunError = Azure::Batch::Mgmt::V2019_04_01::Models::AutoScaleRunError
        OperationListResult = Azure::Batch::Mgmt::V2019_04_01::Models::OperationListResult
        AutoScaleRun = Azure::Batch::Mgmt::V2019_04_01::Models::AutoScaleRun
        ListApplicationPackagesResult = Azure::Batch::Mgmt::V2019_04_01::Models::ListApplicationPackagesResult
        NetworkSecurityGroupRule = Azure::Batch::Mgmt::V2019_04_01::Models::NetworkSecurityGroupRule
        Resource = Azure::Batch::Mgmt::V2019_04_01::Models::Resource
        InboundNatPool = Azure::Batch::Mgmt::V2019_04_01::Models::InboundNatPool
        CertificateBaseProperties = Azure::Batch::Mgmt::V2019_04_01::Models::CertificateBaseProperties
        PoolEndpointConfiguration = Azure::Batch::Mgmt::V2019_04_01::Models::PoolEndpointConfiguration
        Operation = Azure::Batch::Mgmt::V2019_04_01::Models::Operation
        NetworkConfiguration = Azure::Batch::Mgmt::V2019_04_01::Models::NetworkConfiguration
        ListCertificatesResult = Azure::Batch::Mgmt::V2019_04_01::Models::ListCertificatesResult
        TaskSchedulingPolicy = Azure::Batch::Mgmt::V2019_04_01::Models::TaskSchedulingPolicy
        ImageReference = Azure::Batch::Mgmt::V2019_04_01::Models::ImageReference
        LinuxUserConfiguration = Azure::Batch::Mgmt::V2019_04_01::Models::LinuxUserConfiguration
        DataDisk = Azure::Batch::Mgmt::V2019_04_01::Models::DataDisk
        WindowsUserConfiguration = Azure::Batch::Mgmt::V2019_04_01::Models::WindowsUserConfiguration
        ContainerConfiguration = Azure::Batch::Mgmt::V2019_04_01::Models::ContainerConfiguration
        UserAccount = Azure::Batch::Mgmt::V2019_04_01::Models::UserAccount
        CheckNameAvailabilityResult = Azure::Batch::Mgmt::V2019_04_01::Models::CheckNameAvailabilityResult
        MetadataItem = Azure::Batch::Mgmt::V2019_04_01::Models::MetadataItem
        BatchAccountKeys = Azure::Batch::Mgmt::V2019_04_01::Models::BatchAccountKeys
        ResourceFile = Azure::Batch::Mgmt::V2019_04_01::Models::ResourceFile
        ListApplicationsResult = Azure::Batch::Mgmt::V2019_04_01::Models::ListApplicationsResult
        EnvironmentSetting = Azure::Batch::Mgmt::V2019_04_01::Models::EnvironmentSetting
        ProxyResource = Azure::Batch::Mgmt::V2019_04_01::Models::ProxyResource
        AutoUserSpecification = Azure::Batch::Mgmt::V2019_04_01::Models::AutoUserSpecification
        OperationDisplay = Azure::Batch::Mgmt::V2019_04_01::Models::OperationDisplay
        UserIdentity = Azure::Batch::Mgmt::V2019_04_01::Models::UserIdentity
        WindowsConfiguration = Azure::Batch::Mgmt::V2019_04_01::Models::WindowsConfiguration
        TaskContainerSettings = Azure::Batch::Mgmt::V2019_04_01::Models::TaskContainerSettings
        VirtualMachineConfiguration = Azure::Batch::Mgmt::V2019_04_01::Models::VirtualMachineConfiguration
        StartTask = Azure::Batch::Mgmt::V2019_04_01::Models::StartTask
        CheckNameAvailabilityParameters = Azure::Batch::Mgmt::V2019_04_01::Models::CheckNameAvailabilityParameters
        CertificateReference = Azure::Batch::Mgmt::V2019_04_01::Models::CertificateReference
        DeleteCertificateError = Azure::Batch::Mgmt::V2019_04_01::Models::DeleteCertificateError
        ApplicationPackageReference = Azure::Batch::Mgmt::V2019_04_01::Models::ApplicationPackageReference
        ContainerRegistry = Azure::Batch::Mgmt::V2019_04_01::Models::ContainerRegistry
        ResizeError = Azure::Batch::Mgmt::V2019_04_01::Models::ResizeError
        BatchLocationQuota = Azure::Batch::Mgmt::V2019_04_01::Models::BatchLocationQuota
        ResizeOperationStatus = Azure::Batch::Mgmt::V2019_04_01::Models::ResizeOperationStatus
        BatchAccountListResult = Azure::Batch::Mgmt::V2019_04_01::Models::BatchAccountListResult
        CloudServiceConfiguration = Azure::Batch::Mgmt::V2019_04_01::Models::CloudServiceConfiguration
        ListPoolsResult = Azure::Batch::Mgmt::V2019_04_01::Models::ListPoolsResult
        AutoStorageProperties = Azure::Batch::Mgmt::V2019_04_01::Models::AutoStorageProperties
        BatchAccount = Azure::Batch::Mgmt::V2019_04_01::Models::BatchAccount
        Application = Azure::Batch::Mgmt::V2019_04_01::Models::Application
        ApplicationPackage = Azure::Batch::Mgmt::V2019_04_01::Models::ApplicationPackage
        Certificate = Azure::Batch::Mgmt::V2019_04_01::Models::Certificate
        CertificateCreateOrUpdateParameters = Azure::Batch::Mgmt::V2019_04_01::Models::CertificateCreateOrUpdateParameters
        Pool = Azure::Batch::Mgmt::V2019_04_01::Models::Pool
        PoolAllocationMode = Azure::Batch::Mgmt::V2019_04_01::Models::PoolAllocationMode
        ProvisioningState = Azure::Batch::Mgmt::V2019_04_01::Models::ProvisioningState
        AccountKeyType = Azure::Batch::Mgmt::V2019_04_01::Models::AccountKeyType
        PackageState = Azure::Batch::Mgmt::V2019_04_01::Models::PackageState
        CertificateFormat = Azure::Batch::Mgmt::V2019_04_01::Models::CertificateFormat
        CertificateProvisioningState = Azure::Batch::Mgmt::V2019_04_01::Models::CertificateProvisioningState
        PoolProvisioningState = Azure::Batch::Mgmt::V2019_04_01::Models::PoolProvisioningState
        AllocationState = Azure::Batch::Mgmt::V2019_04_01::Models::AllocationState
        CachingType = Azure::Batch::Mgmt::V2019_04_01::Models::CachingType
        StorageAccountType = Azure::Batch::Mgmt::V2019_04_01::Models::StorageAccountType
        ComputeNodeDeallocationOption = Azure::Batch::Mgmt::V2019_04_01::Models::ComputeNodeDeallocationOption
        InterNodeCommunicationState = Azure::Batch::Mgmt::V2019_04_01::Models::InterNodeCommunicationState
        InboundEndpointProtocol = Azure::Batch::Mgmt::V2019_04_01::Models::InboundEndpointProtocol
        NetworkSecurityGroupRuleAccess = Azure::Batch::Mgmt::V2019_04_01::Models::NetworkSecurityGroupRuleAccess
        ComputeNodeFillType = Azure::Batch::Mgmt::V2019_04_01::Models::ComputeNodeFillType
        ElevationLevel = Azure::Batch::Mgmt::V2019_04_01::Models::ElevationLevel
        LoginMode = Azure::Batch::Mgmt::V2019_04_01::Models::LoginMode
        AutoUserScope = Azure::Batch::Mgmt::V2019_04_01::Models::AutoUserScope
        CertificateStoreLocation = Azure::Batch::Mgmt::V2019_04_01::Models::CertificateStoreLocation
        CertificateVisibility = Azure::Batch::Mgmt::V2019_04_01::Models::CertificateVisibility
        NameAvailabilityReason = Azure::Batch::Mgmt::V2019_04_01::Models::NameAvailabilityReason
      end

      class BatchManagementClass
        attr_reader :batch_account_operations, :application_package_operations, :application_operations, :location, :operations, :certificate_operations, :pool_operations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Batch::Mgmt::V2019_04_01::BatchManagementClient.new(configurable.credentials, base_url, options)
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
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/V2019_07_01/Batch/Mgmt"
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
          def fixed_scale_settings
            Azure::Batch::Mgmt::V2019_04_01::Models::FixedScaleSettings
          end
          def auto_scale_settings
            Azure::Batch::Mgmt::V2019_04_01::Models::AutoScaleSettings
          end
          def key_vault_reference
            Azure::Batch::Mgmt::V2019_04_01::Models::KeyVaultReference
          end
          def scale_settings
            Azure::Batch::Mgmt::V2019_04_01::Models::ScaleSettings
          end
          def deployment_configuration
            Azure::Batch::Mgmt::V2019_04_01::Models::DeploymentConfiguration
          end
          def virtual_machine_family_core_quota
            Azure::Batch::Mgmt::V2019_04_01::Models::VirtualMachineFamilyCoreQuota
          end
          def auto_storage_base_properties
            Azure::Batch::Mgmt::V2019_04_01::Models::AutoStorageBaseProperties
          end
          def batch_account_update_parameters
            Azure::Batch::Mgmt::V2019_04_01::Models::BatchAccountUpdateParameters
          end
          def batch_account_create_parameters
            Azure::Batch::Mgmt::V2019_04_01::Models::BatchAccountCreateParameters
          end
          def batch_account_regenerate_key_parameters
            Azure::Batch::Mgmt::V2019_04_01::Models::BatchAccountRegenerateKeyParameters
          end
          def activate_application_package_parameters
            Azure::Batch::Mgmt::V2019_04_01::Models::ActivateApplicationPackageParameters
          end
          def auto_scale_run_error
            Azure::Batch::Mgmt::V2019_04_01::Models::AutoScaleRunError
          end
          def operation_list_result
            Azure::Batch::Mgmt::V2019_04_01::Models::OperationListResult
          end
          def auto_scale_run
            Azure::Batch::Mgmt::V2019_04_01::Models::AutoScaleRun
          end
          def list_application_packages_result
            Azure::Batch::Mgmt::V2019_04_01::Models::ListApplicationPackagesResult
          end
          def network_security_group_rule
            Azure::Batch::Mgmt::V2019_04_01::Models::NetworkSecurityGroupRule
          end
          def resource
            Azure::Batch::Mgmt::V2019_04_01::Models::Resource
          end
          def inbound_nat_pool
            Azure::Batch::Mgmt::V2019_04_01::Models::InboundNatPool
          end
          def certificate_base_properties
            Azure::Batch::Mgmt::V2019_04_01::Models::CertificateBaseProperties
          end
          def pool_endpoint_configuration
            Azure::Batch::Mgmt::V2019_04_01::Models::PoolEndpointConfiguration
          end
          def operation
            Azure::Batch::Mgmt::V2019_04_01::Models::Operation
          end
          def network_configuration
            Azure::Batch::Mgmt::V2019_04_01::Models::NetworkConfiguration
          end
          def list_certificates_result
            Azure::Batch::Mgmt::V2019_04_01::Models::ListCertificatesResult
          end
          def task_scheduling_policy
            Azure::Batch::Mgmt::V2019_04_01::Models::TaskSchedulingPolicy
          end
          def image_reference
            Azure::Batch::Mgmt::V2019_04_01::Models::ImageReference
          end
          def linux_user_configuration
            Azure::Batch::Mgmt::V2019_04_01::Models::LinuxUserConfiguration
          end
          def data_disk
            Azure::Batch::Mgmt::V2019_04_01::Models::DataDisk
          end
          def windows_user_configuration
            Azure::Batch::Mgmt::V2019_04_01::Models::WindowsUserConfiguration
          end
          def container_configuration
            Azure::Batch::Mgmt::V2019_04_01::Models::ContainerConfiguration
          end
          def user_account
            Azure::Batch::Mgmt::V2019_04_01::Models::UserAccount
          end
          def check_name_availability_result
            Azure::Batch::Mgmt::V2019_04_01::Models::CheckNameAvailabilityResult
          end
          def metadata_item
            Azure::Batch::Mgmt::V2019_04_01::Models::MetadataItem
          end
          def batch_account_keys
            Azure::Batch::Mgmt::V2019_04_01::Models::BatchAccountKeys
          end
          def resource_file
            Azure::Batch::Mgmt::V2019_04_01::Models::ResourceFile
          end
          def list_applications_result
            Azure::Batch::Mgmt::V2019_04_01::Models::ListApplicationsResult
          end
          def environment_setting
            Azure::Batch::Mgmt::V2019_04_01::Models::EnvironmentSetting
          end
          def proxy_resource
            Azure::Batch::Mgmt::V2019_04_01::Models::ProxyResource
          end
          def auto_user_specification
            Azure::Batch::Mgmt::V2019_04_01::Models::AutoUserSpecification
          end
          def operation_display
            Azure::Batch::Mgmt::V2019_04_01::Models::OperationDisplay
          end
          def user_identity
            Azure::Batch::Mgmt::V2019_04_01::Models::UserIdentity
          end
          def windows_configuration
            Azure::Batch::Mgmt::V2019_04_01::Models::WindowsConfiguration
          end
          def task_container_settings
            Azure::Batch::Mgmt::V2019_04_01::Models::TaskContainerSettings
          end
          def virtual_machine_configuration
            Azure::Batch::Mgmt::V2019_04_01::Models::VirtualMachineConfiguration
          end
          def start_task
            Azure::Batch::Mgmt::V2019_04_01::Models::StartTask
          end
          def check_name_availability_parameters
            Azure::Batch::Mgmt::V2019_04_01::Models::CheckNameAvailabilityParameters
          end
          def certificate_reference
            Azure::Batch::Mgmt::V2019_04_01::Models::CertificateReference
          end
          def delete_certificate_error
            Azure::Batch::Mgmt::V2019_04_01::Models::DeleteCertificateError
          end
          def application_package_reference
            Azure::Batch::Mgmt::V2019_04_01::Models::ApplicationPackageReference
          end
          def container_registry
            Azure::Batch::Mgmt::V2019_04_01::Models::ContainerRegistry
          end
          def resize_error
            Azure::Batch::Mgmt::V2019_04_01::Models::ResizeError
          end
          def batch_location_quota
            Azure::Batch::Mgmt::V2019_04_01::Models::BatchLocationQuota
          end
          def resize_operation_status
            Azure::Batch::Mgmt::V2019_04_01::Models::ResizeOperationStatus
          end
          def batch_account_list_result
            Azure::Batch::Mgmt::V2019_04_01::Models::BatchAccountListResult
          end
          def cloud_service_configuration
            Azure::Batch::Mgmt::V2019_04_01::Models::CloudServiceConfiguration
          end
          def list_pools_result
            Azure::Batch::Mgmt::V2019_04_01::Models::ListPoolsResult
          end
          def auto_storage_properties
            Azure::Batch::Mgmt::V2019_04_01::Models::AutoStorageProperties
          end
          def batch_account
            Azure::Batch::Mgmt::V2019_04_01::Models::BatchAccount
          end
          def application
            Azure::Batch::Mgmt::V2019_04_01::Models::Application
          end
          def application_package
            Azure::Batch::Mgmt::V2019_04_01::Models::ApplicationPackage
          end
          def certificate
            Azure::Batch::Mgmt::V2019_04_01::Models::Certificate
          end
          def certificate_create_or_update_parameters
            Azure::Batch::Mgmt::V2019_04_01::Models::CertificateCreateOrUpdateParameters
          end
          def pool
            Azure::Batch::Mgmt::V2019_04_01::Models::Pool
          end
          def pool_allocation_mode
            Azure::Batch::Mgmt::V2019_04_01::Models::PoolAllocationMode
          end
          def provisioning_state
            Azure::Batch::Mgmt::V2019_04_01::Models::ProvisioningState
          end
          def account_key_type
            Azure::Batch::Mgmt::V2019_04_01::Models::AccountKeyType
          end
          def package_state
            Azure::Batch::Mgmt::V2019_04_01::Models::PackageState
          end
          def certificate_format
            Azure::Batch::Mgmt::V2019_04_01::Models::CertificateFormat
          end
          def certificate_provisioning_state
            Azure::Batch::Mgmt::V2019_04_01::Models::CertificateProvisioningState
          end
          def pool_provisioning_state
            Azure::Batch::Mgmt::V2019_04_01::Models::PoolProvisioningState
          end
          def allocation_state
            Azure::Batch::Mgmt::V2019_04_01::Models::AllocationState
          end
          def caching_type
            Azure::Batch::Mgmt::V2019_04_01::Models::CachingType
          end
          def storage_account_type
            Azure::Batch::Mgmt::V2019_04_01::Models::StorageAccountType
          end
          def compute_node_deallocation_option
            Azure::Batch::Mgmt::V2019_04_01::Models::ComputeNodeDeallocationOption
          end
          def inter_node_communication_state
            Azure::Batch::Mgmt::V2019_04_01::Models::InterNodeCommunicationState
          end
          def inbound_endpoint_protocol
            Azure::Batch::Mgmt::V2019_04_01::Models::InboundEndpointProtocol
          end
          def network_security_group_rule_access
            Azure::Batch::Mgmt::V2019_04_01::Models::NetworkSecurityGroupRuleAccess
          end
          def compute_node_fill_type
            Azure::Batch::Mgmt::V2019_04_01::Models::ComputeNodeFillType
          end
          def elevation_level
            Azure::Batch::Mgmt::V2019_04_01::Models::ElevationLevel
          end
          def login_mode
            Azure::Batch::Mgmt::V2019_04_01::Models::LoginMode
          end
          def auto_user_scope
            Azure::Batch::Mgmt::V2019_04_01::Models::AutoUserScope
          end
          def certificate_store_location
            Azure::Batch::Mgmt::V2019_04_01::Models::CertificateStoreLocation
          end
          def certificate_visibility
            Azure::Batch::Mgmt::V2019_04_01::Models::CertificateVisibility
          end
          def name_availability_reason
            Azure::Batch::Mgmt::V2019_04_01::Models::NameAvailabilityReason
          end
        end
      end
    end
  end
end
