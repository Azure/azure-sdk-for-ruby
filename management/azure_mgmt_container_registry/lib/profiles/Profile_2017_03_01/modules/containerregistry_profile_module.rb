# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_container_registry'


module Azure::Profiles::ContainerRegistryModule::Management::Profile_2017_03_01
  module ContainerRegistry
    Registries = Azure::ARM::ContainerRegistry::Api_2017_03_01::Registries
    Operations = Azure::ARM::ContainerRegistry::Api_2017_03_01::Operations

    module Models
      StorageAccountParameters = Azure::ARM::ContainerRegistry::Api_2017_03_01::Models::StorageAccountParameters
      RegistryNameCheckRequest = Azure::ARM::ContainerRegistry::Api_2017_03_01::Models::RegistryNameCheckRequest
      RegistryCreateParameters = Azure::ARM::ContainerRegistry::Api_2017_03_01::Models::RegistryCreateParameters
      OperationDisplayDefinition = Azure::ARM::ContainerRegistry::Api_2017_03_01::Models::OperationDisplayDefinition
      RegistryUpdateParameters = Azure::ARM::ContainerRegistry::Api_2017_03_01::Models::RegistryUpdateParameters
      OperationListResult = Azure::ARM::ContainerRegistry::Api_2017_03_01::Models::OperationListResult
      RegistryListResult = Azure::ARM::ContainerRegistry::Api_2017_03_01::Models::RegistryListResult
      StorageAccountProperties = Azure::ARM::ContainerRegistry::Api_2017_03_01::Models::StorageAccountProperties
      RegistryPassword = Azure::ARM::ContainerRegistry::Api_2017_03_01::Models::RegistryPassword
      RegistryNameStatus = Azure::ARM::ContainerRegistry::Api_2017_03_01::Models::RegistryNameStatus
      RegistryListCredentialsResult = Azure::ARM::ContainerRegistry::Api_2017_03_01::Models::RegistryListCredentialsResult
      Sku = Azure::ARM::ContainerRegistry::Api_2017_03_01::Models::Sku
      RegenerateCredentialParameters = Azure::ARM::ContainerRegistry::Api_2017_03_01::Models::RegenerateCredentialParameters
      OperationDefinition = Azure::ARM::ContainerRegistry::Api_2017_03_01::Models::OperationDefinition
      Registry = Azure::ARM::ContainerRegistry::Api_2017_03_01::Models::Registry
      SkuTier = Azure::ARM::ContainerRegistry::Api_2017_03_01::Models::SkuTier
      ProvisioningState = Azure::ARM::ContainerRegistry::Api_2017_03_01::Models::ProvisioningState
      PasswordName = Azure::ARM::ContainerRegistry::Api_2017_03_01::Models::PasswordName
    end

    #
    # ContainerRegistry
    #
    class ContainerRegistryClass
      attr_accessor :registries, :operations, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::ContainerRegistry::Api_2017_03_01::ContainerRegistryManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.registries = Azure::ARM::ContainerRegistry::Api_2017_03_01::Registries.new(client)
        self.operations = Azure::ARM::ContainerRegistry::Api_2017_03_01::Operations.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2017-03-01'
            client = Azure::ARM::ContainerRegistry::Api_2017_03_01::ContainerRegistryManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def storage_account_parameters
          Azure::ARM::ContainerRegistry::Api_2017_03_01::Models::StorageAccountParameters
        end
        def registry_name_check_request
          Azure::ARM::ContainerRegistry::Api_2017_03_01::Models::RegistryNameCheckRequest
        end
        def registry_create_parameters
          Azure::ARM::ContainerRegistry::Api_2017_03_01::Models::RegistryCreateParameters
        end
        def operation_display_definition
          Azure::ARM::ContainerRegistry::Api_2017_03_01::Models::OperationDisplayDefinition
        end
        def registry_update_parameters
          Azure::ARM::ContainerRegistry::Api_2017_03_01::Models::RegistryUpdateParameters
        end
        def operation_list_result
          Azure::ARM::ContainerRegistry::Api_2017_03_01::Models::OperationListResult
        end
        def registry_list_result
          Azure::ARM::ContainerRegistry::Api_2017_03_01::Models::RegistryListResult
        end
        def storage_account_properties
          Azure::ARM::ContainerRegistry::Api_2017_03_01::Models::StorageAccountProperties
        end
        def registry_password
          Azure::ARM::ContainerRegistry::Api_2017_03_01::Models::RegistryPassword
        end
        def registry_name_status
          Azure::ARM::ContainerRegistry::Api_2017_03_01::Models::RegistryNameStatus
        end
        def registry_list_credentials_result
          Azure::ARM::ContainerRegistry::Api_2017_03_01::Models::RegistryListCredentialsResult
        end
        def sku
          Azure::ARM::ContainerRegistry::Api_2017_03_01::Models::Sku
        end
        def regenerate_credential_parameters
          Azure::ARM::ContainerRegistry::Api_2017_03_01::Models::RegenerateCredentialParameters
        end
        def operation_definition
          Azure::ARM::ContainerRegistry::Api_2017_03_01::Models::OperationDefinition
        end
        def registry
          Azure::ARM::ContainerRegistry::Api_2017_03_01::Models::Registry
        end
        def sku_tier
          Azure::ARM::ContainerRegistry::Api_2017_03_01::Models::SkuTier
        end
        def provisioning_state
          Azure::ARM::ContainerRegistry::Api_2017_03_01::Models::ProvisioningState
        end
        def password_name
          Azure::ARM::ContainerRegistry::Api_2017_03_01::Models::PasswordName
        end
      end
    end
  end
end
