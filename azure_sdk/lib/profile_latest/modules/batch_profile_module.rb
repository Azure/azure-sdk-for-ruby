# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_batch'

module Azure::Profiles::Management::Profile_Latest
  module Batch
    BatchAccountOperations = Azure::ARM::Batch::Api_2017_05_01::BatchAccountOperations
    ApplicationPackageOperations = Azure::ARM::Batch::Api_2017_05_01::ApplicationPackageOperations
    ApplicationOperations = Azure::ARM::Batch::Api_2017_05_01::ApplicationOperations
    Location = Azure::ARM::Batch::Api_2017_05_01::Location
    Operations = Azure::ARM::Batch::Api_2017_05_01::Operations

    module Models
      ApplicationPackage = Azure::ARM::Batch::Api_2017_05_01::Models::ApplicationPackage
      Application = Azure::ARM::Batch::Api_2017_05_01::Models::Application
      KeyVaultReference = Azure::ARM::Batch::Api_2017_05_01::Models::KeyVaultReference
      ListApplicationsResult = Azure::ARM::Batch::Api_2017_05_01::Models::ListApplicationsResult
      BatchAccountCreateParameters = Azure::ARM::Batch::Api_2017_05_01::Models::BatchAccountCreateParameters
      CheckNameAvailabilityParameters = Azure::ARM::Batch::Api_2017_05_01::Models::CheckNameAvailabilityParameters
      BatchAccountUpdateParameters = Azure::ARM::Batch::Api_2017_05_01::Models::BatchAccountUpdateParameters
      ApplicationUpdateParameters = Azure::ARM::Batch::Api_2017_05_01::Models::ApplicationUpdateParameters
      BatchAccountRegenerateKeyParameters = Azure::ARM::Batch::Api_2017_05_01::Models::BatchAccountRegenerateKeyParameters
      BatchLocationQuota = Azure::ARM::Batch::Api_2017_05_01::Models::BatchLocationQuota
      ActivateApplicationPackageParameters = Azure::ARM::Batch::Api_2017_05_01::Models::ActivateApplicationPackageParameters
      Resource = Azure::ARM::Batch::Api_2017_05_01::Models::Resource
      AutoStorageBaseProperties = Azure::ARM::Batch::Api_2017_05_01::Models::AutoStorageBaseProperties
      BatchAccountListResult = Azure::ARM::Batch::Api_2017_05_01::Models::BatchAccountListResult
      ApplicationCreateParameters = Azure::ARM::Batch::Api_2017_05_01::Models::ApplicationCreateParameters
      OperationDisplay = Azure::ARM::Batch::Api_2017_05_01::Models::OperationDisplay
      BatchAccountKeys = Azure::ARM::Batch::Api_2017_05_01::Models::BatchAccountKeys
      Operation = Azure::ARM::Batch::Api_2017_05_01::Models::Operation
      CheckNameAvailabilityResult = Azure::ARM::Batch::Api_2017_05_01::Models::CheckNameAvailabilityResult
      OperationListResult = Azure::ARM::Batch::Api_2017_05_01::Models::OperationListResult
      AutoStorageProperties = Azure::ARM::Batch::Api_2017_05_01::Models::AutoStorageProperties
      BatchAccount = Azure::ARM::Batch::Api_2017_05_01::Models::BatchAccount
      PoolAllocationMode = Azure::ARM::Batch::Api_2017_05_01::Models::PoolAllocationMode
      ProvisioningState = Azure::ARM::Batch::Api_2017_05_01::Models::ProvisioningState
      AccountKeyType = Azure::ARM::Batch::Api_2017_05_01::Models::AccountKeyType
      PackageState = Azure::ARM::Batch::Api_2017_05_01::Models::PackageState
      NameAvailabilityReason = Azure::ARM::Batch::Api_2017_05_01::Models::NameAvailabilityReason
    end

    #
    # Batch
    #
    class BatchClass
      attr_reader :batch_account_operations, :application_package_operations, :application_operations, :location, :operations, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        client_0 = Azure::ARM::Batch::Api_2017_05_01::BatchManagementClient.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        @batch_account_operations = client_0.batch_account_operations
        @application_package_operations = client_0.application_package_operations
        @application_operations = client_0.application_operations
        @location = client_0.location
        @operations = client_0.operations

        @model_classes = ModelClasses.new
      end

      #
      # Method to get the client object
      #
      # @return Client object
      #
      def get_client(version = '2017-05-01')
        case version
          when '2017-05-01'
            client = Azure::ARM::Batch::Api_2017_05_01::BatchManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def application_package
          Azure::ARM::Batch::Api_2017_05_01::Models::ApplicationPackage
        end
        def application
          Azure::ARM::Batch::Api_2017_05_01::Models::Application
        end
        def key_vault_reference
          Azure::ARM::Batch::Api_2017_05_01::Models::KeyVaultReference
        end
        def list_applications_result
          Azure::ARM::Batch::Api_2017_05_01::Models::ListApplicationsResult
        end
        def batch_account_create_parameters
          Azure::ARM::Batch::Api_2017_05_01::Models::BatchAccountCreateParameters
        end
        def check_name_availability_parameters
          Azure::ARM::Batch::Api_2017_05_01::Models::CheckNameAvailabilityParameters
        end
        def batch_account_update_parameters
          Azure::ARM::Batch::Api_2017_05_01::Models::BatchAccountUpdateParameters
        end
        def application_update_parameters
          Azure::ARM::Batch::Api_2017_05_01::Models::ApplicationUpdateParameters
        end
        def batch_account_regenerate_key_parameters
          Azure::ARM::Batch::Api_2017_05_01::Models::BatchAccountRegenerateKeyParameters
        end
        def batch_location_quota
          Azure::ARM::Batch::Api_2017_05_01::Models::BatchLocationQuota
        end
        def activate_application_package_parameters
          Azure::ARM::Batch::Api_2017_05_01::Models::ActivateApplicationPackageParameters
        end
        def resource
          Azure::ARM::Batch::Api_2017_05_01::Models::Resource
        end
        def auto_storage_base_properties
          Azure::ARM::Batch::Api_2017_05_01::Models::AutoStorageBaseProperties
        end
        def batch_account_list_result
          Azure::ARM::Batch::Api_2017_05_01::Models::BatchAccountListResult
        end
        def application_create_parameters
          Azure::ARM::Batch::Api_2017_05_01::Models::ApplicationCreateParameters
        end
        def operation_display
          Azure::ARM::Batch::Api_2017_05_01::Models::OperationDisplay
        end
        def batch_account_keys
          Azure::ARM::Batch::Api_2017_05_01::Models::BatchAccountKeys
        end
        def operation
          Azure::ARM::Batch::Api_2017_05_01::Models::Operation
        end
        def check_name_availability_result
          Azure::ARM::Batch::Api_2017_05_01::Models::CheckNameAvailabilityResult
        end
        def operation_list_result
          Azure::ARM::Batch::Api_2017_05_01::Models::OperationListResult
        end
        def auto_storage_properties
          Azure::ARM::Batch::Api_2017_05_01::Models::AutoStorageProperties
        end
        def batch_account
          Azure::ARM::Batch::Api_2017_05_01::Models::BatchAccount
        end
        def pool_allocation_mode
          Azure::ARM::Batch::Api_2017_05_01::Models::PoolAllocationMode
        end
        def provisioning_state
          Azure::ARM::Batch::Api_2017_05_01::Models::ProvisioningState
        end
        def account_key_type
          Azure::ARM::Batch::Api_2017_05_01::Models::AccountKeyType
        end
        def package_state
          Azure::ARM::Batch::Api_2017_05_01::Models::PackageState
        end
        def name_availability_reason
          Azure::ARM::Batch::Api_2017_05_01::Models::NameAvailabilityReason
        end
      end
    end
  end
end
