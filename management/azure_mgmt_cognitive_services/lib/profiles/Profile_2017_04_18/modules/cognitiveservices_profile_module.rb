# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_cognitive_services'


module Azure::Profiles::CognitiveServicesModule::Management::Profile_2017_04_18
  module CognitiveServices
    Accounts = Azure::ARM::CognitiveServices::Api_2017_04_18::Accounts
    Operations = Azure::ARM::CognitiveServices::Api_2017_04_18::Operations
    CheckSkuAvailability = Azure::ARM::CognitiveServices::Api_2017_04_18::CheckSkuAvailability

    module Models
      CognitiveServicesAccountEnumerateSkusResult = Azure::ARM::CognitiveServices::Api_2017_04_18::Models::CognitiveServicesAccountEnumerateSkusResult
      ErrorBody = Azure::ARM::CognitiveServices::Api_2017_04_18::Models::ErrorBody
      CognitiveServicesAccountCreateParameters = Azure::ARM::CognitiveServices::Api_2017_04_18::Models::CognitiveServicesAccountCreateParameters
      Error = Azure::ARM::CognitiveServices::Api_2017_04_18::Models::Error
      CognitiveServicesAccount = Azure::ARM::CognitiveServices::Api_2017_04_18::Models::CognitiveServicesAccount
      OperationDisplayInfo = Azure::ARM::CognitiveServices::Api_2017_04_18::Models::OperationDisplayInfo
      CognitiveServicesAccountKeys = Azure::ARM::CognitiveServices::Api_2017_04_18::Models::CognitiveServicesAccountKeys
      OperationEntity = Azure::ARM::CognitiveServices::Api_2017_04_18::Models::OperationEntity
      CognitiveServicesResourceAndSku = Azure::ARM::CognitiveServices::Api_2017_04_18::Models::CognitiveServicesResourceAndSku
      OperationEntityListResult = Azure::ARM::CognitiveServices::Api_2017_04_18::Models::OperationEntityListResult
      CognitiveServicesAccountUpdateParameters = Azure::ARM::CognitiveServices::Api_2017_04_18::Models::CognitiveServicesAccountUpdateParameters
      CheckSkuAvailabilityParameter = Azure::ARM::CognitiveServices::Api_2017_04_18::Models::CheckSkuAvailabilityParameter
      RegenerateKeyParameters = Azure::ARM::CognitiveServices::Api_2017_04_18::Models::RegenerateKeyParameters
      CheckSkuAvailabilityResult = Azure::ARM::CognitiveServices::Api_2017_04_18::Models::CheckSkuAvailabilityResult
      CognitiveServicesAccountListResult = Azure::ARM::CognitiveServices::Api_2017_04_18::Models::CognitiveServicesAccountListResult
      CheckSkuAvailabilityResultList = Azure::ARM::CognitiveServices::Api_2017_04_18::Models::CheckSkuAvailabilityResultList
      Sku = Azure::ARM::CognitiveServices::Api_2017_04_18::Models::Sku
      SkuName = Azure::ARM::CognitiveServices::Api_2017_04_18::Models::SkuName
      SkuTier = Azure::ARM::CognitiveServices::Api_2017_04_18::Models::SkuTier
      Kind = Azure::ARM::CognitiveServices::Api_2017_04_18::Models::Kind
      ProvisioningState = Azure::ARM::CognitiveServices::Api_2017_04_18::Models::ProvisioningState
      KeyName = Azure::ARM::CognitiveServices::Api_2017_04_18::Models::KeyName
    end

    #
    # CognitiveServices
    #
    class CognitiveServicesClass
      attr_accessor :accounts, :operations, :check_sku_availability, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::CognitiveServices::Api_2017_04_18::CognitiveServicesManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.accounts = Azure::ARM::CognitiveServices::Api_2017_04_18::Accounts.new(client)
        self.operations = Azure::ARM::CognitiveServices::Api_2017_04_18::Operations.new(client)
        self.check_sku_availability = Azure::ARM::CognitiveServices::Api_2017_04_18::CheckSkuAvailability.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2017-04-18'
            client = Azure::ARM::CognitiveServices::Api_2017_04_18::CognitiveServicesManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def cognitive_services_account_enumerate_skus_result
          Azure::ARM::CognitiveServices::Api_2017_04_18::Models::CognitiveServicesAccountEnumerateSkusResult
        end
        def error_body
          Azure::ARM::CognitiveServices::Api_2017_04_18::Models::ErrorBody
        end
        def cognitive_services_account_create_parameters
          Azure::ARM::CognitiveServices::Api_2017_04_18::Models::CognitiveServicesAccountCreateParameters
        end
        def error
          Azure::ARM::CognitiveServices::Api_2017_04_18::Models::Error
        end
        def cognitive_services_account
          Azure::ARM::CognitiveServices::Api_2017_04_18::Models::CognitiveServicesAccount
        end
        def operation_display_info
          Azure::ARM::CognitiveServices::Api_2017_04_18::Models::OperationDisplayInfo
        end
        def cognitive_services_account_keys
          Azure::ARM::CognitiveServices::Api_2017_04_18::Models::CognitiveServicesAccountKeys
        end
        def operation_entity
          Azure::ARM::CognitiveServices::Api_2017_04_18::Models::OperationEntity
        end
        def cognitive_services_resource_and_sku
          Azure::ARM::CognitiveServices::Api_2017_04_18::Models::CognitiveServicesResourceAndSku
        end
        def operation_entity_list_result
          Azure::ARM::CognitiveServices::Api_2017_04_18::Models::OperationEntityListResult
        end
        def cognitive_services_account_update_parameters
          Azure::ARM::CognitiveServices::Api_2017_04_18::Models::CognitiveServicesAccountUpdateParameters
        end
        def check_sku_availability_parameter
          Azure::ARM::CognitiveServices::Api_2017_04_18::Models::CheckSkuAvailabilityParameter
        end
        def regenerate_key_parameters
          Azure::ARM::CognitiveServices::Api_2017_04_18::Models::RegenerateKeyParameters
        end
        def check_sku_availability_result
          Azure::ARM::CognitiveServices::Api_2017_04_18::Models::CheckSkuAvailabilityResult
        end
        def cognitive_services_account_list_result
          Azure::ARM::CognitiveServices::Api_2017_04_18::Models::CognitiveServicesAccountListResult
        end
        def check_sku_availability_result_list
          Azure::ARM::CognitiveServices::Api_2017_04_18::Models::CheckSkuAvailabilityResultList
        end
        def sku
          Azure::ARM::CognitiveServices::Api_2017_04_18::Models::Sku
        end
        def sku_name
          Azure::ARM::CognitiveServices::Api_2017_04_18::Models::SkuName
        end
        def sku_tier
          Azure::ARM::CognitiveServices::Api_2017_04_18::Models::SkuTier
        end
        def kind
          Azure::ARM::CognitiveServices::Api_2017_04_18::Models::Kind
        end
        def provisioning_state
          Azure::ARM::CognitiveServices::Api_2017_04_18::Models::ProvisioningState
        end
        def key_name
          Azure::ARM::CognitiveServices::Api_2017_04_18::Models::KeyName
        end
      end
    end
  end
end
