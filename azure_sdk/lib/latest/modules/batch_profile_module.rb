# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_batch'

module Azure::Profiles::Latest
  module Batch
    module Mgmt
      BatchAccountOperations = Azure::Batch::Mgmt::V2017_05_01::BatchAccountOperations
      ApplicationPackageOperations = Azure::Batch::Mgmt::V2017_05_01::ApplicationPackageOperations
      ApplicationOperations = Azure::Batch::Mgmt::V2017_05_01::ApplicationOperations
      Location = Azure::Batch::Mgmt::V2017_05_01::Location
      Operations = Azure::Batch::Mgmt::V2017_05_01::Operations

      module Models
        ApplicationPackage = Azure::Batch::Mgmt::V2017_05_01::Models::ApplicationPackage
        Application = Azure::Batch::Mgmt::V2017_05_01::Models::Application
        KeyVaultReference = Azure::Batch::Mgmt::V2017_05_01::Models::KeyVaultReference
        ListApplicationsResult = Azure::Batch::Mgmt::V2017_05_01::Models::ListApplicationsResult
        BatchAccountCreateParameters = Azure::Batch::Mgmt::V2017_05_01::Models::BatchAccountCreateParameters
        CheckNameAvailabilityParameters = Azure::Batch::Mgmt::V2017_05_01::Models::CheckNameAvailabilityParameters
        BatchAccountUpdateParameters = Azure::Batch::Mgmt::V2017_05_01::Models::BatchAccountUpdateParameters
        ApplicationUpdateParameters = Azure::Batch::Mgmt::V2017_05_01::Models::ApplicationUpdateParameters
        BatchAccountRegenerateKeyParameters = Azure::Batch::Mgmt::V2017_05_01::Models::BatchAccountRegenerateKeyParameters
        BatchLocationQuota = Azure::Batch::Mgmt::V2017_05_01::Models::BatchLocationQuota
        ActivateApplicationPackageParameters = Azure::Batch::Mgmt::V2017_05_01::Models::ActivateApplicationPackageParameters
        Resource = Azure::Batch::Mgmt::V2017_05_01::Models::Resource
        AutoStorageBaseProperties = Azure::Batch::Mgmt::V2017_05_01::Models::AutoStorageBaseProperties
        BatchAccountListResult = Azure::Batch::Mgmt::V2017_05_01::Models::BatchAccountListResult
        ApplicationCreateParameters = Azure::Batch::Mgmt::V2017_05_01::Models::ApplicationCreateParameters
        OperationDisplay = Azure::Batch::Mgmt::V2017_05_01::Models::OperationDisplay
        BatchAccountKeys = Azure::Batch::Mgmt::V2017_05_01::Models::BatchAccountKeys
        Operation = Azure::Batch::Mgmt::V2017_05_01::Models::Operation
        CheckNameAvailabilityResult = Azure::Batch::Mgmt::V2017_05_01::Models::CheckNameAvailabilityResult
        OperationListResult = Azure::Batch::Mgmt::V2017_05_01::Models::OperationListResult
        AutoStorageProperties = Azure::Batch::Mgmt::V2017_05_01::Models::AutoStorageProperties
        BatchAccount = Azure::Batch::Mgmt::V2017_05_01::Models::BatchAccount
        PoolAllocationMode = Azure::Batch::Mgmt::V2017_05_01::Models::PoolAllocationMode
        ProvisioningState = Azure::Batch::Mgmt::V2017_05_01::Models::ProvisioningState
        AccountKeyType = Azure::Batch::Mgmt::V2017_05_01::Models::AccountKeyType
        PackageState = Azure::Batch::Mgmt::V2017_05_01::Models::PackageState
        NameAvailabilityReason = Azure::Batch::Mgmt::V2017_05_01::Models::NameAvailabilityReason
      end

      class BatchManagementClass
        attr_reader :batch_account_operations, :application_package_operations, :application_operations, :location, :operations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          client_0 = Azure::Batch::Mgmt::V2017_05_01::BatchManagementClient.new(configurable.credentials, base_url, options)
          if(client_0.respond_to?(:subscription_id))
            client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(client_0)
          @batch_account_operations = client_0.batch_account_operations
          @application_package_operations = client_0.application_package_operations
          @application_operations = client_0.application_operations
          @location = client_0.location
          @operations = client_0.operations

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = 'Profiles/azure_sdk/Latest/Batch/Mgmt'
          client.add_user_agent_information(profile_information)
        end

        class ModelClasses
          def application_package
            Azure::Batch::Mgmt::V2017_05_01::Models::ApplicationPackage
          end
          def application
            Azure::Batch::Mgmt::V2017_05_01::Models::Application
          end
          def key_vault_reference
            Azure::Batch::Mgmt::V2017_05_01::Models::KeyVaultReference
          end
          def list_applications_result
            Azure::Batch::Mgmt::V2017_05_01::Models::ListApplicationsResult
          end
          def batch_account_create_parameters
            Azure::Batch::Mgmt::V2017_05_01::Models::BatchAccountCreateParameters
          end
          def check_name_availability_parameters
            Azure::Batch::Mgmt::V2017_05_01::Models::CheckNameAvailabilityParameters
          end
          def batch_account_update_parameters
            Azure::Batch::Mgmt::V2017_05_01::Models::BatchAccountUpdateParameters
          end
          def application_update_parameters
            Azure::Batch::Mgmt::V2017_05_01::Models::ApplicationUpdateParameters
          end
          def batch_account_regenerate_key_parameters
            Azure::Batch::Mgmt::V2017_05_01::Models::BatchAccountRegenerateKeyParameters
          end
          def batch_location_quota
            Azure::Batch::Mgmt::V2017_05_01::Models::BatchLocationQuota
          end
          def activate_application_package_parameters
            Azure::Batch::Mgmt::V2017_05_01::Models::ActivateApplicationPackageParameters
          end
          def resource
            Azure::Batch::Mgmt::V2017_05_01::Models::Resource
          end
          def auto_storage_base_properties
            Azure::Batch::Mgmt::V2017_05_01::Models::AutoStorageBaseProperties
          end
          def batch_account_list_result
            Azure::Batch::Mgmt::V2017_05_01::Models::BatchAccountListResult
          end
          def application_create_parameters
            Azure::Batch::Mgmt::V2017_05_01::Models::ApplicationCreateParameters
          end
          def operation_display
            Azure::Batch::Mgmt::V2017_05_01::Models::OperationDisplay
          end
          def batch_account_keys
            Azure::Batch::Mgmt::V2017_05_01::Models::BatchAccountKeys
          end
          def operation
            Azure::Batch::Mgmt::V2017_05_01::Models::Operation
          end
          def check_name_availability_result
            Azure::Batch::Mgmt::V2017_05_01::Models::CheckNameAvailabilityResult
          end
          def operation_list_result
            Azure::Batch::Mgmt::V2017_05_01::Models::OperationListResult
          end
          def auto_storage_properties
            Azure::Batch::Mgmt::V2017_05_01::Models::AutoStorageProperties
          end
          def batch_account
            Azure::Batch::Mgmt::V2017_05_01::Models::BatchAccount
          end
          def pool_allocation_mode
            Azure::Batch::Mgmt::V2017_05_01::Models::PoolAllocationMode
          end
          def provisioning_state
            Azure::Batch::Mgmt::V2017_05_01::Models::ProvisioningState
          end
          def account_key_type
            Azure::Batch::Mgmt::V2017_05_01::Models::AccountKeyType
          end
          def package_state
            Azure::Batch::Mgmt::V2017_05_01::Models::PackageState
          end
          def name_availability_reason
            Azure::Batch::Mgmt::V2017_05_01::Models::NameAvailabilityReason
          end
        end
      end
    end
  end
end
