# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_cognitive_services'

module Azure::Profiles::Latest
  module CognitiveServices
    module Mgmt
      Operations = Azure::CognitiveServices::Mgmt::V2017_04_18::Operations
      Accounts = Azure::CognitiveServices::Mgmt::V2017_04_18::Accounts
      CheckSkuAvailability = Azure::CognitiveServices::Mgmt::V2017_04_18::CheckSkuAvailability

      module Models
        CognitiveServicesAccountEnumerateSkusResult = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountEnumerateSkusResult
        ErrorBody = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ErrorBody
        CognitiveServicesAccountCreateParameters = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountCreateParameters
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
        KeyName = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::KeyName
        Sku = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Sku
        SkuName = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::SkuName
        SkuTier = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::SkuTier
        Error = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Error
        Kind = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Kind
        ProvisioningState = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ProvisioningState
      end

      class CognitiveServicesManagementClass
        attr_reader :operations, :accounts, :check_sku_availability, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::CognitiveServices::Mgmt::V2017_04_18::CognitiveServicesManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @operations = @client_0.operations
          @accounts = @client_0.accounts
          @check_sku_availability = @client_0.check_sku_availability

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/CognitiveServices/Mgmt"
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
          def cognitive_services_account_enumerate_skus_result
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountEnumerateSkusResult
          end
          def error_body
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ErrorBody
          end
          def cognitive_services_account_create_parameters
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountCreateParameters
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
          def key_name
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::KeyName
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
          def error
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Error
          end
          def kind
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Kind
          end
          def provisioning_state
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ProvisioningState
          end
        end
      end
    end
  end
end
