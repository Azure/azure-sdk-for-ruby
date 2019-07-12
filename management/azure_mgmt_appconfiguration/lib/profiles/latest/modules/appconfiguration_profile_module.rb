# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_appconfiguration'

module Azure::Appconfiguration::Profiles::Latest
  module Mgmt
    ConfigurationStores = Azure::Appconfiguration::Mgmt::V2019_02_01_preview::ConfigurationStores
    Operations = Azure::Appconfiguration::Mgmt::V2019_02_01_preview::Operations

    module Models
      ApiKeyListResult = Azure::Appconfiguration::Mgmt::V2019_02_01_preview::Models::ApiKeyListResult
      RegenerateKeyParameters = Azure::Appconfiguration::Mgmt::V2019_02_01_preview::Models::RegenerateKeyParameters
      ConfigurationStoreListResult = Azure::Appconfiguration::Mgmt::V2019_02_01_preview::Models::ConfigurationStoreListResult
      OperationDefinitionDisplay = Azure::Appconfiguration::Mgmt::V2019_02_01_preview::Models::OperationDefinitionDisplay
      CheckNameAvailabilityParameters = Azure::Appconfiguration::Mgmt::V2019_02_01_preview::Models::CheckNameAvailabilityParameters
      OperationDefinition = Azure::Appconfiguration::Mgmt::V2019_02_01_preview::Models::OperationDefinition
      ApiKey = Azure::Appconfiguration::Mgmt::V2019_02_01_preview::Models::ApiKey
      OperationDefinitionListResult = Azure::Appconfiguration::Mgmt::V2019_02_01_preview::Models::OperationDefinitionListResult
      ConfigurationStoreUpdateParameters = Azure::Appconfiguration::Mgmt::V2019_02_01_preview::Models::ConfigurationStoreUpdateParameters
      Error = Azure::Appconfiguration::Mgmt::V2019_02_01_preview::Models::Error
      NameAvailabilityStatus = Azure::Appconfiguration::Mgmt::V2019_02_01_preview::Models::NameAvailabilityStatus
      Resource = Azure::Appconfiguration::Mgmt::V2019_02_01_preview::Models::Resource
      ConfigurationStore = Azure::Appconfiguration::Mgmt::V2019_02_01_preview::Models::ConfigurationStore
      ProvisioningState = Azure::Appconfiguration::Mgmt::V2019_02_01_preview::Models::ProvisioningState
    end

    #
    # AppconfigurationManagementClass
    #
    class AppconfigurationManagementClass
      attr_reader :configuration_stores, :operations, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::Appconfiguration::Mgmt::V2019_02_01_preview::AppConfigurationManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @configuration_stores = @client_0.configuration_stores
        @operations = @client_0.operations

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/Appconfiguration/Mgmt'
        client.add_user_agent_information(profile_information)
      end

      def method_missing(method, *args)
        if @client_0.respond_to?method
          @client_0.send(method, *args)
        else
          super
        end
      end

    end

    class ModelClasses
      def api_key_list_result
        Azure::Appconfiguration::Mgmt::V2019_02_01_preview::Models::ApiKeyListResult
      end
      def regenerate_key_parameters
        Azure::Appconfiguration::Mgmt::V2019_02_01_preview::Models::RegenerateKeyParameters
      end
      def configuration_store_list_result
        Azure::Appconfiguration::Mgmt::V2019_02_01_preview::Models::ConfigurationStoreListResult
      end
      def operation_definition_display
        Azure::Appconfiguration::Mgmt::V2019_02_01_preview::Models::OperationDefinitionDisplay
      end
      def check_name_availability_parameters
        Azure::Appconfiguration::Mgmt::V2019_02_01_preview::Models::CheckNameAvailabilityParameters
      end
      def operation_definition
        Azure::Appconfiguration::Mgmt::V2019_02_01_preview::Models::OperationDefinition
      end
      def api_key
        Azure::Appconfiguration::Mgmt::V2019_02_01_preview::Models::ApiKey
      end
      def operation_definition_list_result
        Azure::Appconfiguration::Mgmt::V2019_02_01_preview::Models::OperationDefinitionListResult
      end
      def configuration_store_update_parameters
        Azure::Appconfiguration::Mgmt::V2019_02_01_preview::Models::ConfigurationStoreUpdateParameters
      end
      def error
        Azure::Appconfiguration::Mgmt::V2019_02_01_preview::Models::Error
      end
      def name_availability_status
        Azure::Appconfiguration::Mgmt::V2019_02_01_preview::Models::NameAvailabilityStatus
      end
      def resource
        Azure::Appconfiguration::Mgmt::V2019_02_01_preview::Models::Resource
      end
      def configuration_store
        Azure::Appconfiguration::Mgmt::V2019_02_01_preview::Models::ConfigurationStore
      end
      def provisioning_state
        Azure::Appconfiguration::Mgmt::V2019_02_01_preview::Models::ProvisioningState
      end
    end
  end
end
