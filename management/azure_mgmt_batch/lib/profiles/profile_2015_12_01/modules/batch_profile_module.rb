# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_batch'

module Azure::Batch::Management::Profile_2015_12_01
    BatchAccountOperations = Azure::ARM::Batch::Api_2015_12_01::BatchAccountOperations
    ApplicationPackageOperations = Azure::ARM::Batch::Api_2015_12_01::ApplicationPackageOperations
    ApplicationOperations = Azure::ARM::Batch::Api_2015_12_01::ApplicationOperations
    Location = Azure::ARM::Batch::Api_2015_12_01::Location

    module Models
      ActivateApplicationPackageParameters = Azure::ARM::Batch::Api_2015_12_01::Models::ActivateApplicationPackageParameters
      AutoStorageBaseProperties = Azure::ARM::Batch::Api_2015_12_01::Models::AutoStorageBaseProperties
      AddApplicationParameters = Azure::ARM::Batch::Api_2015_12_01::Models::AddApplicationParameters
      AutoStorageProperties = Azure::ARM::Batch::Api_2015_12_01::Models::AutoStorageProperties
      ApplicationPackage = Azure::ARM::Batch::Api_2015_12_01::Models::ApplicationPackage
      BatchAccountUpdateParameters = Azure::ARM::Batch::Api_2015_12_01::Models::BatchAccountUpdateParameters
      Application = Azure::ARM::Batch::Api_2015_12_01::Models::Application
      BatchAccountRegenerateKeyParameters = Azure::ARM::Batch::Api_2015_12_01::Models::BatchAccountRegenerateKeyParameters
      ListApplicationsResult = Azure::ARM::Batch::Api_2015_12_01::Models::ListApplicationsResult
      BatchAccountCreateParameters = Azure::ARM::Batch::Api_2015_12_01::Models::BatchAccountCreateParameters
      UpdateApplicationParameters = Azure::ARM::Batch::Api_2015_12_01::Models::UpdateApplicationParameters
      BatchAccountListResult = Azure::ARM::Batch::Api_2015_12_01::Models::BatchAccountListResult
      BatchLocationQuota = Azure::ARM::Batch::Api_2015_12_01::Models::BatchLocationQuota
      BatchAccountKeys = Azure::ARM::Batch::Api_2015_12_01::Models::BatchAccountKeys
      BatchAccount = Azure::ARM::Batch::Api_2015_12_01::Models::BatchAccount
      ProvisioningState = Azure::ARM::Batch::Api_2015_12_01::Models::ProvisioningState
      AccountKeyType = Azure::ARM::Batch::Api_2015_12_01::Models::AccountKeyType
      PackageState = Azure::ARM::Batch::Api_2015_12_01::Models::PackageState
    end

    #
    # Batch
    #
    class BatchClass
      attr_reader :batch_account_operations, :application_package_operations, :application_operations, :location, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        client_0 = Azure::ARM::Batch::Api_2015_12_01::BatchManagementClient.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        @batch_account_operations = client_0.batch_account_operations
        @application_package_operations = client_0.application_package_operations
        @application_operations = client_0.application_operations
        @location = client_0.location

        @model_classes = ModelClasses.new
      end

      #
      # Method to get the client object
      #
      # @return Client object
      #
      def get_client(version = '2015-12-01')
        case version
          when '2015-12-01'
            client = Azure::ARM::Batch::Api_2015_12_01::BatchManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def activate_application_package_parameters
          Azure::ARM::Batch::Api_2015_12_01::Models::ActivateApplicationPackageParameters
        end
        def auto_storage_base_properties
          Azure::ARM::Batch::Api_2015_12_01::Models::AutoStorageBaseProperties
        end
        def add_application_parameters
          Azure::ARM::Batch::Api_2015_12_01::Models::AddApplicationParameters
        end
        def auto_storage_properties
          Azure::ARM::Batch::Api_2015_12_01::Models::AutoStorageProperties
        end
        def application_package
          Azure::ARM::Batch::Api_2015_12_01::Models::ApplicationPackage
        end
        def batch_account_update_parameters
          Azure::ARM::Batch::Api_2015_12_01::Models::BatchAccountUpdateParameters
        end
        def application
          Azure::ARM::Batch::Api_2015_12_01::Models::Application
        end
        def batch_account_regenerate_key_parameters
          Azure::ARM::Batch::Api_2015_12_01::Models::BatchAccountRegenerateKeyParameters
        end
        def list_applications_result
          Azure::ARM::Batch::Api_2015_12_01::Models::ListApplicationsResult
        end
        def batch_account_create_parameters
          Azure::ARM::Batch::Api_2015_12_01::Models::BatchAccountCreateParameters
        end
        def update_application_parameters
          Azure::ARM::Batch::Api_2015_12_01::Models::UpdateApplicationParameters
        end
        def batch_account_list_result
          Azure::ARM::Batch::Api_2015_12_01::Models::BatchAccountListResult
        end
        def batch_location_quota
          Azure::ARM::Batch::Api_2015_12_01::Models::BatchLocationQuota
        end
        def batch_account_keys
          Azure::ARM::Batch::Api_2015_12_01::Models::BatchAccountKeys
        end
        def batch_account
          Azure::ARM::Batch::Api_2015_12_01::Models::BatchAccount
        end
        def provisioning_state
          Azure::ARM::Batch::Api_2015_12_01::Models::ProvisioningState
        end
        def account_key_type
          Azure::ARM::Batch::Api_2015_12_01::Models::AccountKeyType
        end
        def package_state
          Azure::ARM::Batch::Api_2015_12_01::Models::PackageState
        end
      end
    end
end
