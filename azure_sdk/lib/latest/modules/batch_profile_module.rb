# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_batch'

module Azure::Profiles::Latest
  module Batch
    module Mgmt
      ApplicationPackageOperations = Azure::Batch::Mgmt::V2017_09_01::ApplicationPackageOperations
      ApplicationOperations = Azure::Batch::Mgmt::V2017_09_01::ApplicationOperations
      PoolOperations = Azure::Batch::Mgmt::V2017_09_01::PoolOperations
      Location = Azure::Batch::Mgmt::V2017_09_01::Location
      CertificateOperations = Azure::Batch::Mgmt::V2017_09_01::CertificateOperations
      Operations = Azure::Batch::Mgmt::V2017_09_01::Operations
      BatchAccountOperations = Azure::Batch::Mgmt::V2017_09_01::BatchAccountOperations

      module Models
        FixedScaleSettings = Azure::Batch::Mgmt::V2017_09_01::Models::FixedScaleSettings
        AutoStorageBaseProperties = Azure::Batch::Mgmt::V2017_09_01::Models::AutoStorageBaseProperties
        AutoScaleSettings = Azure::Batch::Mgmt::V2017_09_01::Models::AutoScaleSettings
        BatchAccountCreateParameters = Azure::Batch::Mgmt::V2017_09_01::Models::BatchAccountCreateParameters
        ScaleSettings = Azure::Batch::Mgmt::V2017_09_01::Models::ScaleSettings
        KeyVaultReference = Azure::Batch::Mgmt::V2017_09_01::Models::KeyVaultReference
        BatchAccountUpdateParameters = Azure::Batch::Mgmt::V2017_09_01::Models::BatchAccountUpdateParameters
        BatchAccountRegenerateKeyParameters = Azure::Batch::Mgmt::V2017_09_01::Models::BatchAccountRegenerateKeyParameters
        ActivateApplicationPackageParameters = Azure::Batch::Mgmt::V2017_09_01::Models::ActivateApplicationPackageParameters
        AutoScaleRunError = Azure::Batch::Mgmt::V2017_09_01::Models::AutoScaleRunError
        ApplicationPackage = Azure::Batch::Mgmt::V2017_09_01::Models::ApplicationPackage
        AutoScaleRun = Azure::Batch::Mgmt::V2017_09_01::Models::AutoScaleRun
        ListApplicationsResult = Azure::Batch::Mgmt::V2017_09_01::Models::ListApplicationsResult
        NetworkSecurityGroupRule = Azure::Batch::Mgmt::V2017_09_01::Models::NetworkSecurityGroupRule
        BatchLocationQuota = Azure::Batch::Mgmt::V2017_09_01::Models::BatchLocationQuota
        PoolEndpointConfiguration = Azure::Batch::Mgmt::V2017_09_01::Models::PoolEndpointConfiguration
        ProxyResource = Azure::Batch::Mgmt::V2017_09_01::Models::ProxyResource
        DeleteCertificateError = Azure::Batch::Mgmt::V2017_09_01::Models::DeleteCertificateError
        NetworkConfiguration = Azure::Batch::Mgmt::V2017_09_01::Models::NetworkConfiguration
        CheckNameAvailabilityParameters = Azure::Batch::Mgmt::V2017_09_01::Models::CheckNameAvailabilityParameters
        TaskSchedulingPolicy = Azure::Batch::Mgmt::V2017_09_01::Models::TaskSchedulingPolicy
        CloudServiceConfiguration = Azure::Batch::Mgmt::V2017_09_01::Models::CloudServiceConfiguration
        LinuxUserConfiguration = Azure::Batch::Mgmt::V2017_09_01::Models::LinuxUserConfiguration
        UserAccount = Azure::Batch::Mgmt::V2017_09_01::Models::UserAccount
        MetadataItem = Azure::Batch::Mgmt::V2017_09_01::Models::MetadataItem
        OSDisk = Azure::Batch::Mgmt::V2017_09_01::Models::OSDisk
        ResourceFile = Azure::Batch::Mgmt::V2017_09_01::Models::ResourceFile
        DeploymentConfiguration = Azure::Batch::Mgmt::V2017_09_01::Models::DeploymentConfiguration
        EnvironmentSetting = Azure::Batch::Mgmt::V2017_09_01::Models::EnvironmentSetting
        BatchAccountKeys = Azure::Batch::Mgmt::V2017_09_01::Models::BatchAccountKeys
        AutoUserSpecification = Azure::Batch::Mgmt::V2017_09_01::Models::AutoUserSpecification
        Application = Azure::Batch::Mgmt::V2017_09_01::Models::Application
        StartTask = Azure::Batch::Mgmt::V2017_09_01::Models::StartTask
        UserIdentity = Azure::Batch::Mgmt::V2017_09_01::Models::UserIdentity
        VirtualMachineConfiguration = Azure::Batch::Mgmt::V2017_09_01::Models::VirtualMachineConfiguration
        CertificateReference = Azure::Batch::Mgmt::V2017_09_01::Models::CertificateReference
        ApplicationCreateParameters = Azure::Batch::Mgmt::V2017_09_01::Models::ApplicationCreateParameters
        ApplicationPackageReference = Azure::Batch::Mgmt::V2017_09_01::Models::ApplicationPackageReference
        CertificateBaseProperties = Azure::Batch::Mgmt::V2017_09_01::Models::CertificateBaseProperties
        ResizeError = Azure::Batch::Mgmt::V2017_09_01::Models::ResizeError
        ApplicationUpdateParameters = Azure::Batch::Mgmt::V2017_09_01::Models::ApplicationUpdateParameters
        ResizeOperationStatus = Azure::Batch::Mgmt::V2017_09_01::Models::ResizeOperationStatus
        BatchAccountListResult = Azure::Batch::Mgmt::V2017_09_01::Models::BatchAccountListResult
        ListPoolsResult = Azure::Batch::Mgmt::V2017_09_01::Models::ListPoolsResult
        AutoStorageProperties = Azure::Batch::Mgmt::V2017_09_01::Models::AutoStorageProperties
        ListCertificatesResult = Azure::Batch::Mgmt::V2017_09_01::Models::ListCertificatesResult
        WindowsConfiguration = Azure::Batch::Mgmt::V2017_09_01::Models::WindowsConfiguration
        DataDisk = Azure::Batch::Mgmt::V2017_09_01::Models::DataDisk
        Pool = Azure::Batch::Mgmt::V2017_09_01::Models::Pool
        CertificateCreateOrUpdateParameters = Azure::Batch::Mgmt::V2017_09_01::Models::CertificateCreateOrUpdateParameters
        BatchAccount = Azure::Batch::Mgmt::V2017_09_01::Models::BatchAccount
        PackageState = Azure::Batch::Mgmt::V2017_09_01::Models::PackageState
        PoolAllocationMode = Azure::Batch::Mgmt::V2017_09_01::Models::PoolAllocationMode
        AccountKeyType = Azure::Batch::Mgmt::V2017_09_01::Models::AccountKeyType
        PoolProvisioningState = Azure::Batch::Mgmt::V2017_09_01::Models::PoolProvisioningState
        CertificateFormat = Azure::Batch::Mgmt::V2017_09_01::Models::CertificateFormat
        CertificateProvisioningState = Azure::Batch::Mgmt::V2017_09_01::Models::CertificateProvisioningState
        ProvisioningState = Azure::Batch::Mgmt::V2017_09_01::Models::ProvisioningState
        AllocationState = Azure::Batch::Mgmt::V2017_09_01::Models::AllocationState
        CachingType = Azure::Batch::Mgmt::V2017_09_01::Models::CachingType
        StorageAccountType = Azure::Batch::Mgmt::V2017_09_01::Models::StorageAccountType
        ComputeNodeDeallocationOption = Azure::Batch::Mgmt::V2017_09_01::Models::ComputeNodeDeallocationOption
        InterNodeCommunicationState = Azure::Batch::Mgmt::V2017_09_01::Models::InterNodeCommunicationState
        InboundEndpointProtocol = Azure::Batch::Mgmt::V2017_09_01::Models::InboundEndpointProtocol
        NetworkSecurityGroupRuleAccess = Azure::Batch::Mgmt::V2017_09_01::Models::NetworkSecurityGroupRuleAccess
        ComputeNodeFillType = Azure::Batch::Mgmt::V2017_09_01::Models::ComputeNodeFillType
        ElevationLevel = Azure::Batch::Mgmt::V2017_09_01::Models::ElevationLevel
        AutoUserScope = Azure::Batch::Mgmt::V2017_09_01::Models::AutoUserScope
        CertificateStoreLocation = Azure::Batch::Mgmt::V2017_09_01::Models::CertificateStoreLocation
        CertificateVisibility = Azure::Batch::Mgmt::V2017_09_01::Models::CertificateVisibility
        NameAvailabilityReason = Azure::Batch::Mgmt::V2017_09_01::Models::NameAvailabilityReason
        Resource = Azure::Batch::Mgmt::V2017_09_01::Models::Resource
        OperationDisplay = Azure::Batch::Mgmt::V2017_09_01::Models::OperationDisplay
        ImageReference = Azure::Batch::Mgmt::V2017_09_01::Models::ImageReference
        Operation = Azure::Batch::Mgmt::V2017_09_01::Models::Operation
        OperationListResult = Azure::Batch::Mgmt::V2017_09_01::Models::OperationListResult
        CheckNameAvailabilityResult = Azure::Batch::Mgmt::V2017_09_01::Models::CheckNameAvailabilityResult
        InboundNatPool = Azure::Batch::Mgmt::V2017_09_01::Models::InboundNatPool
        Certificate = Azure::Batch::Mgmt::V2017_09_01::Models::Certificate
      end

      class BatchManagementClass
        attr_reader :application_package_operations, :application_operations, :pool_operations, :location, :certificate_operations, :operations, :batch_account_operations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Batch::Mgmt::V2017_09_01::BatchManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @application_package_operations = @client_0.application_package_operations
          @application_operations = @client_0.application_operations
          @pool_operations = @client_0.pool_operations
          @location = @client_0.location
          @certificate_operations = @client_0.certificate_operations
          @operations = @client_0.operations
          @batch_account_operations = @client_0.batch_account_operations

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
          def fixed_scale_settings
            Azure::Batch::Mgmt::V2017_09_01::Models::FixedScaleSettings
          end
          def auto_storage_base_properties
            Azure::Batch::Mgmt::V2017_09_01::Models::AutoStorageBaseProperties
          end
          def auto_scale_settings
            Azure::Batch::Mgmt::V2017_09_01::Models::AutoScaleSettings
          end
          def batch_account_create_parameters
            Azure::Batch::Mgmt::V2017_09_01::Models::BatchAccountCreateParameters
          end
          def scale_settings
            Azure::Batch::Mgmt::V2017_09_01::Models::ScaleSettings
          end
          def key_vault_reference
            Azure::Batch::Mgmt::V2017_09_01::Models::KeyVaultReference
          end
          def batch_account_update_parameters
            Azure::Batch::Mgmt::V2017_09_01::Models::BatchAccountUpdateParameters
          end
          def batch_account_regenerate_key_parameters
            Azure::Batch::Mgmt::V2017_09_01::Models::BatchAccountRegenerateKeyParameters
          end
          def activate_application_package_parameters
            Azure::Batch::Mgmt::V2017_09_01::Models::ActivateApplicationPackageParameters
          end
          def auto_scale_run_error
            Azure::Batch::Mgmt::V2017_09_01::Models::AutoScaleRunError
          end
          def application_package
            Azure::Batch::Mgmt::V2017_09_01::Models::ApplicationPackage
          end
          def auto_scale_run
            Azure::Batch::Mgmt::V2017_09_01::Models::AutoScaleRun
          end
          def list_applications_result
            Azure::Batch::Mgmt::V2017_09_01::Models::ListApplicationsResult
          end
          def network_security_group_rule
            Azure::Batch::Mgmt::V2017_09_01::Models::NetworkSecurityGroupRule
          end
          def batch_location_quota
            Azure::Batch::Mgmt::V2017_09_01::Models::BatchLocationQuota
          end
          def pool_endpoint_configuration
            Azure::Batch::Mgmt::V2017_09_01::Models::PoolEndpointConfiguration
          end
          def proxy_resource
            Azure::Batch::Mgmt::V2017_09_01::Models::ProxyResource
          end
          def delete_certificate_error
            Azure::Batch::Mgmt::V2017_09_01::Models::DeleteCertificateError
          end
          def network_configuration
            Azure::Batch::Mgmt::V2017_09_01::Models::NetworkConfiguration
          end
          def check_name_availability_parameters
            Azure::Batch::Mgmt::V2017_09_01::Models::CheckNameAvailabilityParameters
          end
          def task_scheduling_policy
            Azure::Batch::Mgmt::V2017_09_01::Models::TaskSchedulingPolicy
          end
          def cloud_service_configuration
            Azure::Batch::Mgmt::V2017_09_01::Models::CloudServiceConfiguration
          end
          def linux_user_configuration
            Azure::Batch::Mgmt::V2017_09_01::Models::LinuxUserConfiguration
          end
          def user_account
            Azure::Batch::Mgmt::V2017_09_01::Models::UserAccount
          end
          def metadata_item
            Azure::Batch::Mgmt::V2017_09_01::Models::MetadataItem
          end
          def osdisk
            Azure::Batch::Mgmt::V2017_09_01::Models::OSDisk
          end
          def resource_file
            Azure::Batch::Mgmt::V2017_09_01::Models::ResourceFile
          end
          def deployment_configuration
            Azure::Batch::Mgmt::V2017_09_01::Models::DeploymentConfiguration
          end
          def environment_setting
            Azure::Batch::Mgmt::V2017_09_01::Models::EnvironmentSetting
          end
          def batch_account_keys
            Azure::Batch::Mgmt::V2017_09_01::Models::BatchAccountKeys
          end
          def auto_user_specification
            Azure::Batch::Mgmt::V2017_09_01::Models::AutoUserSpecification
          end
          def application
            Azure::Batch::Mgmt::V2017_09_01::Models::Application
          end
          def start_task
            Azure::Batch::Mgmt::V2017_09_01::Models::StartTask
          end
          def user_identity
            Azure::Batch::Mgmt::V2017_09_01::Models::UserIdentity
          end
          def virtual_machine_configuration
            Azure::Batch::Mgmt::V2017_09_01::Models::VirtualMachineConfiguration
          end
          def certificate_reference
            Azure::Batch::Mgmt::V2017_09_01::Models::CertificateReference
          end
          def application_create_parameters
            Azure::Batch::Mgmt::V2017_09_01::Models::ApplicationCreateParameters
          end
          def application_package_reference
            Azure::Batch::Mgmt::V2017_09_01::Models::ApplicationPackageReference
          end
          def certificate_base_properties
            Azure::Batch::Mgmt::V2017_09_01::Models::CertificateBaseProperties
          end
          def resize_error
            Azure::Batch::Mgmt::V2017_09_01::Models::ResizeError
          end
          def application_update_parameters
            Azure::Batch::Mgmt::V2017_09_01::Models::ApplicationUpdateParameters
          end
          def resize_operation_status
            Azure::Batch::Mgmt::V2017_09_01::Models::ResizeOperationStatus
          end
          def batch_account_list_result
            Azure::Batch::Mgmt::V2017_09_01::Models::BatchAccountListResult
          end
          def list_pools_result
            Azure::Batch::Mgmt::V2017_09_01::Models::ListPoolsResult
          end
          def auto_storage_properties
            Azure::Batch::Mgmt::V2017_09_01::Models::AutoStorageProperties
          end
          def list_certificates_result
            Azure::Batch::Mgmt::V2017_09_01::Models::ListCertificatesResult
          end
          def windows_configuration
            Azure::Batch::Mgmt::V2017_09_01::Models::WindowsConfiguration
          end
          def data_disk
            Azure::Batch::Mgmt::V2017_09_01::Models::DataDisk
          end
          def pool
            Azure::Batch::Mgmt::V2017_09_01::Models::Pool
          end
          def certificate_create_or_update_parameters
            Azure::Batch::Mgmt::V2017_09_01::Models::CertificateCreateOrUpdateParameters
          end
          def batch_account
            Azure::Batch::Mgmt::V2017_09_01::Models::BatchAccount
          end
          def package_state
            Azure::Batch::Mgmt::V2017_09_01::Models::PackageState
          end
          def pool_allocation_mode
            Azure::Batch::Mgmt::V2017_09_01::Models::PoolAllocationMode
          end
          def account_key_type
            Azure::Batch::Mgmt::V2017_09_01::Models::AccountKeyType
          end
          def pool_provisioning_state
            Azure::Batch::Mgmt::V2017_09_01::Models::PoolProvisioningState
          end
          def certificate_format
            Azure::Batch::Mgmt::V2017_09_01::Models::CertificateFormat
          end
          def certificate_provisioning_state
            Azure::Batch::Mgmt::V2017_09_01::Models::CertificateProvisioningState
          end
          def provisioning_state
            Azure::Batch::Mgmt::V2017_09_01::Models::ProvisioningState
          end
          def allocation_state
            Azure::Batch::Mgmt::V2017_09_01::Models::AllocationState
          end
          def caching_type
            Azure::Batch::Mgmt::V2017_09_01::Models::CachingType
          end
          def storage_account_type
            Azure::Batch::Mgmt::V2017_09_01::Models::StorageAccountType
          end
          def compute_node_deallocation_option
            Azure::Batch::Mgmt::V2017_09_01::Models::ComputeNodeDeallocationOption
          end
          def inter_node_communication_state
            Azure::Batch::Mgmt::V2017_09_01::Models::InterNodeCommunicationState
          end
          def inbound_endpoint_protocol
            Azure::Batch::Mgmt::V2017_09_01::Models::InboundEndpointProtocol
          end
          def network_security_group_rule_access
            Azure::Batch::Mgmt::V2017_09_01::Models::NetworkSecurityGroupRuleAccess
          end
          def compute_node_fill_type
            Azure::Batch::Mgmt::V2017_09_01::Models::ComputeNodeFillType
          end
          def elevation_level
            Azure::Batch::Mgmt::V2017_09_01::Models::ElevationLevel
          end
          def auto_user_scope
            Azure::Batch::Mgmt::V2017_09_01::Models::AutoUserScope
          end
          def certificate_store_location
            Azure::Batch::Mgmt::V2017_09_01::Models::CertificateStoreLocation
          end
          def certificate_visibility
            Azure::Batch::Mgmt::V2017_09_01::Models::CertificateVisibility
          end
          def name_availability_reason
            Azure::Batch::Mgmt::V2017_09_01::Models::NameAvailabilityReason
          end
          def resource
            Azure::Batch::Mgmt::V2017_09_01::Models::Resource
          end
          def operation_display
            Azure::Batch::Mgmt::V2017_09_01::Models::OperationDisplay
          end
          def image_reference
            Azure::Batch::Mgmt::V2017_09_01::Models::ImageReference
          end
          def operation
            Azure::Batch::Mgmt::V2017_09_01::Models::Operation
          end
          def operation_list_result
            Azure::Batch::Mgmt::V2017_09_01::Models::OperationListResult
          end
          def check_name_availability_result
            Azure::Batch::Mgmt::V2017_09_01::Models::CheckNameAvailabilityResult
          end
          def inbound_nat_pool
            Azure::Batch::Mgmt::V2017_09_01::Models::InboundNatPool
          end
          def certificate
            Azure::Batch::Mgmt::V2017_09_01::Models::Certificate
          end
        end
      end
    end
  end
end
