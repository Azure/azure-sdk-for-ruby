# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_container_registry'


module Azure::Profiles::ContainerRegistryModule::Management::Profile_2016_06_27_Preview
  module ContainerRegistry
    Registries = Azure::ARM::ContainerRegistry::Api_2016_06_27_preview::Registries

    module Models
      RegistryUpdateParameters = Azure::ARM::ContainerRegistry::Api_2016_06_27_preview::Models::RegistryUpdateParameters
      RegistryNameCheckRequest = Azure::ARM::ContainerRegistry::Api_2016_06_27_preview::Models::RegistryNameCheckRequest
      RegistryListResult = Azure::ARM::ContainerRegistry::Api_2016_06_27_preview::Models::RegistryListResult
      StorageAccountProperties = Azure::ARM::ContainerRegistry::Api_2016_06_27_preview::Models::StorageAccountProperties
      RegistryCredentials = Azure::ARM::ContainerRegistry::Api_2016_06_27_preview::Models::RegistryCredentials
      RegistryNameStatus = Azure::ARM::ContainerRegistry::Api_2016_06_27_preview::Models::RegistryNameStatus
      Registry = Azure::ARM::ContainerRegistry::Api_2016_06_27_preview::Models::Registry
    end

    #
    # ContainerRegistry
    #
    class ContainerRegistryClass
      attr_accessor :registries, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::ContainerRegistry::Api_2016_06_27_preview::ContainerRegistryManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.registries = Azure::ARM::ContainerRegistry::Api_2016_06_27_preview::Registries.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2016-06-27-preview'
            client = Azure::ARM::ContainerRegistry::Api_2016_06_27_preview::ContainerRegistryManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def registry_update_parameters
          Azure::ARM::ContainerRegistry::Api_2016_06_27_preview::Models::RegistryUpdateParameters
        end
        def registry_name_check_request
          Azure::ARM::ContainerRegistry::Api_2016_06_27_preview::Models::RegistryNameCheckRequest
        end
        def registry_list_result
          Azure::ARM::ContainerRegistry::Api_2016_06_27_preview::Models::RegistryListResult
        end
        def storage_account_properties
          Azure::ARM::ContainerRegistry::Api_2016_06_27_preview::Models::StorageAccountProperties
        end
        def registry_credentials
          Azure::ARM::ContainerRegistry::Api_2016_06_27_preview::Models::RegistryCredentials
        end
        def registry_name_status
          Azure::ARM::ContainerRegistry::Api_2016_06_27_preview::Models::RegistryNameStatus
        end
        def registry
          Azure::ARM::ContainerRegistry::Api_2016_06_27_preview::Models::Registry
        end
      end
    end
  end
end
