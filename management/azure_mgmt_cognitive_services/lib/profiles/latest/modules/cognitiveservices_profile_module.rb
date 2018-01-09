# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_cognitive_services'

module Azure::CognitiveServices::Profiles::Latest
  module Mgmt
    Accounts = Azure::CognitiveServices::Mgmt::V2017_04_18::Accounts
    Operations = Azure::CognitiveServices::Mgmt::V2017_04_18::Operations
    CheckSkuAvailability = Azure::CognitiveServices::Mgmt::V2017_04_18::CheckSkuAvailability

    module Models
      CognitiveServicesAccountEnumerateSkusResult = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountEnumerateSkusResult
      ErrorBody = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ErrorBody
      CognitiveServicesAccountCreateParameters = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountCreateParameters
      Error = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Error
      CognitiveServicesAccount = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccount
      OperationDisplayInfo = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::OperationDisplayInfo
      CognitiveServicesAccountKeys = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountKeys
      OperationEntity = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::OperationEntity
      CognitiveServicesResourceAndSku = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesResourceAndSku
      OperationEntityListResult = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::OperationEntityListResult
      CognitiveServicesAccountUpdateParameters = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountUpdateParameters
      CheckSkuAvailabilityParameter = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckSkuAvailabilityParameter
      RegenerateKeyParameters = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::RegenerateKeyParameters
      CheckSkuAvailabilityResult = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckSkuAvailabilityResult
      CognitiveServicesAccountListResult = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountListResult
      CheckSkuAvailabilityResultList = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckSkuAvailabilityResultList
      Sku = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Sku
      SkuName = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::SkuName
      SkuTier = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::SkuTier
      Kind = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Kind
      ProvisioningState = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ProvisioningState
      KeyName = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::KeyName
    end

    #
    # CognitiveServicesManagementClass
    #
    class CognitiveServicesManagementClass
      attr_reader :accounts, :operations, :check_sku_availability, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        if options.is_a?(Hash) && options.length == 0
          @options = setup_default_options
        else
          @options = options
        end

        reset!(options)

        @configurable, @base_url, @options = self, nil, nil

        client_0 = Azure::CognitiveServices::Mgmt::V2017_04_18::CognitiveServicesManagementClient.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(client_0)
        @accounts = client_0.accounts
        @operations = client_0.operations
        @check_sku_availability = client_0.check_sku_availability

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Mgmt/CognitiveServices'
        profile_information = "#{profile_information}/Latest"
        client.add_user_agent_information(profile_information)
      end

    end

    class ModelClasses
      def cognitive_services_account_enumerate_skus_result
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountEnumerateSkusResult
      end
      def error_body
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ErrorBody
      end
      def cognitive_services_account_create_parameters
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountCreateParameters
      end
      def error
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Error
      end
      def cognitive_services_account
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccount
      end
      def operation_display_info
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::OperationDisplayInfo
      end
      def cognitive_services_account_keys
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountKeys
      end
      def operation_entity
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::OperationEntity
      end
      def cognitive_services_resource_and_sku
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesResourceAndSku
      end
      def operation_entity_list_result
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::OperationEntityListResult
      end
      def cognitive_services_account_update_parameters
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountUpdateParameters
      end
      def check_sku_availability_parameter
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckSkuAvailabilityParameter
      end
      def regenerate_key_parameters
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::RegenerateKeyParameters
      end
      def check_sku_availability_result
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckSkuAvailabilityResult
      end
      def cognitive_services_account_list_result
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountListResult
      end
      def check_sku_availability_result_list
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckSkuAvailabilityResultList
      end
      def sku
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Sku
      end
      def sku_name
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::SkuName
      end
      def sku_tier
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::SkuTier
      end
      def kind
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Kind
      end
      def provisioning_state
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ProvisioningState
      end
      def key_name
        Azure::CognitiveServices::Mgmt::V2017_04_18::Models::KeyName
      end
    end
  end
end
