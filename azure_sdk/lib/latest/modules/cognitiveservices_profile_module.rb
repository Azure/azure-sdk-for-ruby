# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_cognitive_services'

module Azure::Profiles::Latest
  module CognitiveServices
    module Mgmt
      ResourceSkus = Azure::CognitiveServices::Mgmt::V2017_04_18::ResourceSkus
      Accounts = Azure::CognitiveServices::Mgmt::V2017_04_18::Accounts
      CheckSkuAvailability = Azure::CognitiveServices::Mgmt::V2017_04_18::CheckSkuAvailability
      Account = Azure::CognitiveServices::Mgmt::V2017_04_18::Account
      Operations = Azure::CognitiveServices::Mgmt::V2017_04_18::Operations

      module Models
        ResourceSkuRestrictionsReasonCode = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSkuRestrictionsReasonCode
        OperationDisplayInfo = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::OperationDisplayInfo
        CognitiveServicesAccountUpdateParameters = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountUpdateParameters
        OperationEntity = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::OperationEntity
        CognitiveServicesAccountListResult = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountListResult
        OperationEntityListResult = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::OperationEntityListResult
        RegenerateKeyParameters = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::RegenerateKeyParameters
        CheckSkuAvailabilityParameter = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckSkuAvailabilityParameter
        CognitiveServicesAccountEnumerateSkusResult = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountEnumerateSkusResult
        CheckDomainAvailabilityParameter = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckDomainAvailabilityParameter
        CheckSkuAvailabilityResult = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckSkuAvailabilityResult
        ErrorBody = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ErrorBody
        CheckSkuAvailabilityResultList = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckSkuAvailabilityResultList
        CognitiveServicesAccount = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccount
        CheckDomainAvailabilityResult = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckDomainAvailabilityResult
        CognitiveServicesResourceAndSku = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesResourceAndSku
        ResourceSkuRestrictionInfo = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSkuRestrictionInfo
        UsagesResult = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::UsagesResult
        CognitiveServicesAccountKeys = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountKeys
        CognitiveServicesAccountCreateParameters = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountCreateParameters
        MetricName = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::MetricName
        KeyName = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::KeyName
        ProvisioningState = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ProvisioningState
        UnitType = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::UnitType
        QuotaUsageStatus = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::QuotaUsageStatus
        ResourceSkuRestrictions = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSkuRestrictions
        ResourceSku = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSku
        Usage = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Usage
        ResourceSkusResult = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSkusResult
        Sku = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Sku
        SkuTier = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::SkuTier
        Error = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Error
        ResourceSkuRestrictionsType = Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSkuRestrictionsType
      end

      class CognitiveServicesManagementClass
        attr_reader :resource_skus, :accounts, :check_sku_availability, :account, :operations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::CognitiveServices::Mgmt::V2017_04_18::CognitiveServicesManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @resource_skus = @client_0.resource_skus
          @accounts = @client_0.accounts
          @check_sku_availability = @client_0.check_sku_availability
          @account = @client_0.account
          @operations = @client_0.operations

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
          def resource_sku_restrictions_reason_code
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSkuRestrictionsReasonCode
          end
          def operation_display_info
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::OperationDisplayInfo
          end
          def cognitive_services_account_update_parameters
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountUpdateParameters
          end
          def operation_entity
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::OperationEntity
          end
          def cognitive_services_account_list_result
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountListResult
          end
          def operation_entity_list_result
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::OperationEntityListResult
          end
          def regenerate_key_parameters
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::RegenerateKeyParameters
          end
          def check_sku_availability_parameter
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckSkuAvailabilityParameter
          end
          def cognitive_services_account_enumerate_skus_result
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountEnumerateSkusResult
          end
          def check_domain_availability_parameter
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckDomainAvailabilityParameter
          end
          def check_sku_availability_result
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckSkuAvailabilityResult
          end
          def error_body
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ErrorBody
          end
          def check_sku_availability_result_list
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckSkuAvailabilityResultList
          end
          def cognitive_services_account
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccount
          end
          def check_domain_availability_result
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CheckDomainAvailabilityResult
          end
          def cognitive_services_resource_and_sku
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesResourceAndSku
          end
          def resource_sku_restriction_info
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSkuRestrictionInfo
          end
          def usages_result
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::UsagesResult
          end
          def cognitive_services_account_keys
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountKeys
          end
          def cognitive_services_account_create_parameters
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::CognitiveServicesAccountCreateParameters
          end
          def metric_name
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::MetricName
          end
          def key_name
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::KeyName
          end
          def provisioning_state
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ProvisioningState
          end
          def unit_type
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::UnitType
          end
          def quota_usage_status
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::QuotaUsageStatus
          end
          def resource_sku_restrictions
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSkuRestrictions
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
          def sku
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Sku
          end
          def sku_tier
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::SkuTier
          end
          def error
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::Error
          end
          def resource_sku_restrictions_type
            Azure::CognitiveServices::Mgmt::V2017_04_18::Models::ResourceSkuRestrictionsType
          end
        end
      end
    end
  end
end
