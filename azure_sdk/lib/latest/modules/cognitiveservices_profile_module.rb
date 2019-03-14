# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_cognitive_services'

module Azure::Profiles::Latest
  module CognitiveServices
    module Mgmt
      Operations = Azure::CognitiveServices::Mgmt::V2017_04_18::Operations
      Accounts = Azure::CognitiveServices::Mgmt::V2017_04_18::Accounts
      ResourceSkus = Azure::CognitiveServices::Mgmt::V2017_04_18::ResourceSkus
      CheckSkuAvailability = Azure::CognitiveServices::Mgmt::V2017_04_18::CheckSkuAvailability

      module Models
        Sku = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Sku
        ResourceSkuRestrictionsType = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSkuRestrictionsType
        ErrorBody = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ErrorBody
        CognitiveServicesAccountUpdateParameters = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountUpdateParameters
        OperationDisplayInfo = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::OperationDisplayInfo
        CognitiveServicesAccountListResult = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountListResult
        OperationEntity = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::OperationEntity
        RegenerateKeyParameters = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::RegenerateKeyParameters
        OperationEntityListResult = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::OperationEntityListResult
        CognitiveServicesAccountEnumerateSkusResult = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountEnumerateSkusResult
        CheckSkuAvailabilityParameter = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckSkuAvailabilityParameter
        CheckSkuAvailabilityResult = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckSkuAvailabilityResult
        CognitiveServicesAccountCreateParameters = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountCreateParameters
        CheckSkuAvailabilityResultList = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckSkuAvailabilityResultList
        CognitiveServicesAccountKeys = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountKeys
        ResourceSkuRestrictionInfo = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSkuRestrictionInfo
        MetricName = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::MetricName
        CognitiveServicesAccount = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccount
        UsagesResult = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::UsagesResult
        CognitiveServicesResourceAndSku = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesResourceAndSku
        KeyName = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::KeyName
        UnitType = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::UnitType
        QuotaUsageStatus = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::QuotaUsageStatus
        ResourceSkuRestrictionsReasonCode = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSkuRestrictionsReasonCode
        ProvisioningState = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ProvisioningState
        ResourceSkuRestrictions = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSkuRestrictions
        SkuName = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::SkuName
        ResourceSku = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSku
        Usage = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Usage
        ResourceSkusResult = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSkusResult
        Kind = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Kind
        SkuTier = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::SkuTier
        Error = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Error
      end

      class CognitiveServicesManagementClass
        attr_reader :operations, :accounts, :resource_skus, :check_sku_availability, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::CognitiveServices::Mgmt::V2017_04_18::CognitiveServicesManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @operations = @client_0.operations
          @accounts = @client_0.accounts
          @resource_skus = @client_0.resource_skus
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
          def sku
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Sku
          end
          def resource_sku_restrictions_type
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSkuRestrictionsType
          end
          def error_body
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ErrorBody
          end
          def cognitive_services_account_update_parameters
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountUpdateParameters
          end
          def operation_display_info
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::OperationDisplayInfo
          end
          def cognitive_services_account_list_result
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountListResult
          end
          def operation_entity
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::OperationEntity
          end
          def regenerate_key_parameters
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::RegenerateKeyParameters
          end
          def operation_entity_list_result
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::OperationEntityListResult
          end
          def cognitive_services_account_enumerate_skus_result
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountEnumerateSkusResult
          end
          def check_sku_availability_parameter
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckSkuAvailabilityParameter
          end
          def check_sku_availability_result
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckSkuAvailabilityResult
          end
          def cognitive_services_account_create_parameters
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountCreateParameters
          end
          def check_sku_availability_result_list
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckSkuAvailabilityResultList
          end
          def cognitive_services_account_keys
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountKeys
          end
          def resource_sku_restriction_info
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSkuRestrictionInfo
          end
          def metric_name
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::MetricName
          end
          def cognitive_services_account
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccount
          end
          def usages_result
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::UsagesResult
          end
          def cognitive_services_resource_and_sku
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesResourceAndSku
          end
          def key_name
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::KeyName
          end
          def unit_type
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::UnitType
          end
          def quota_usage_status
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::QuotaUsageStatus
          end
          def resource_sku_restrictions_reason_code
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSkuRestrictionsReasonCode
          end
          def provisioning_state
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ProvisioningState
          end
          def resource_sku_restrictions
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSkuRestrictions
          end
          def sku_name
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::SkuName
          end
          def resource_sku
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSku
          end
          def usage
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Usage
          end
          def resource_skus_result
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSkusResult
          end
          def kind
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Kind
          end
          def sku_tier
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::SkuTier
          end
          def error
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Error
          end
        end
      end
    end
  end
end
