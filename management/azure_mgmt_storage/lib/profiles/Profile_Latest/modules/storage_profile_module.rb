# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_storage'


module Azure::Profiles::StorageModule::Management::Profile_Latest
  module Storage
    Operations = Azure::ARM::Storage::Api_2017_06_01::Operations
    Skus = Azure::ARM::Storage::Api_2017_06_01::Skus
    StorageAccounts = Azure::ARM::Storage::Api_2017_06_01::StorageAccounts
    UsageOperations = Azure::ARM::Storage::Api_2017_06_01::UsageOperations

    module Models
      IPRule = Azure::ARM::Storage::Api_2017_06_01::Models::IPRule
      NetworkRuleSet = Azure::ARM::Storage::Api_2017_06_01::Models::NetworkRuleSet
      Dimension = Azure::ARM::Storage::Api_2017_06_01::Models::Dimension
      Identity = Azure::ARM::Storage::Api_2017_06_01::Models::Identity
      ServiceSpecification = Azure::ARM::Storage::Api_2017_06_01::Models::ServiceSpecification
      StorageAccountCreateParameters = Azure::ARM::Storage::Api_2017_06_01::Models::StorageAccountCreateParameters
      OperationListResult = Azure::ARM::Storage::Api_2017_06_01::Models::OperationListResult
      Endpoints = Azure::ARM::Storage::Api_2017_06_01::Models::Endpoints
      SKUCapability = Azure::ARM::Storage::Api_2017_06_01::Models::SKUCapability
      Restriction = Azure::ARM::Storage::Api_2017_06_01::Models::Restriction
      StorageSkuListResult = Azure::ARM::Storage::Api_2017_06_01::Models::StorageSkuListResult
      StorageAccountKey = Azure::ARM::Storage::Api_2017_06_01::Models::StorageAccountKey
      CustomDomain = Azure::ARM::Storage::Api_2017_06_01::Models::CustomDomain
      StorageAccountListResult = Azure::ARM::Storage::Api_2017_06_01::Models::StorageAccountListResult
      EncryptionServices = Azure::ARM::Storage::Api_2017_06_01::Models::EncryptionServices
      StorageAccountListKeysResult = Azure::ARM::Storage::Api_2017_06_01::Models::StorageAccountListKeysResult
      Encryption = Azure::ARM::Storage::Api_2017_06_01::Models::Encryption
      StorageAccountRegenerateKeyParameters = Azure::ARM::Storage::Api_2017_06_01::Models::StorageAccountRegenerateKeyParameters
      OperationDisplay = Azure::ARM::Storage::Api_2017_06_01::Models::OperationDisplay
      StorageAccountUpdateParameters = Azure::ARM::Storage::Api_2017_06_01::Models::StorageAccountUpdateParameters
      Operation = Azure::ARM::Storage::Api_2017_06_01::Models::Operation
      UsageName = Azure::ARM::Storage::Api_2017_06_01::Models::UsageName
      Sku = Azure::ARM::Storage::Api_2017_06_01::Models::Sku
      Usage = Azure::ARM::Storage::Api_2017_06_01::Models::Usage
      EncryptionService = Azure::ARM::Storage::Api_2017_06_01::Models::EncryptionService
      UsageListResult = Azure::ARM::Storage::Api_2017_06_01::Models::UsageListResult
      VirtualNetworkRule = Azure::ARM::Storage::Api_2017_06_01::Models::VirtualNetworkRule
      StorageAccountCheckNameAvailabilityParameters = Azure::ARM::Storage::Api_2017_06_01::Models::StorageAccountCheckNameAvailabilityParameters
      AccountSasParameters = Azure::ARM::Storage::Api_2017_06_01::Models::AccountSasParameters
      KeyVaultProperties = Azure::ARM::Storage::Api_2017_06_01::Models::KeyVaultProperties
      ListAccountSasResponse = Azure::ARM::Storage::Api_2017_06_01::Models::ListAccountSasResponse
      CheckNameAvailabilityResult = Azure::ARM::Storage::Api_2017_06_01::Models::CheckNameAvailabilityResult
      ServiceSasParameters = Azure::ARM::Storage::Api_2017_06_01::Models::ServiceSasParameters
      MetricSpecification = Azure::ARM::Storage::Api_2017_06_01::Models::MetricSpecification
      ListServiceSasResponse = Azure::ARM::Storage::Api_2017_06_01::Models::ListServiceSasResponse
      StorageAccount = Azure::ARM::Storage::Api_2017_06_01::Models::StorageAccount
      ReasonCode = Azure::ARM::Storage::Api_2017_06_01::Models::ReasonCode
      SkuName = Azure::ARM::Storage::Api_2017_06_01::Models::SkuName
      SkuTier = Azure::ARM::Storage::Api_2017_06_01::Models::SkuTier
      Kind = Azure::ARM::Storage::Api_2017_06_01::Models::Kind
      Reason = Azure::ARM::Storage::Api_2017_06_01::Models::Reason
      KeySource = Azure::ARM::Storage::Api_2017_06_01::Models::KeySource
      Action = Azure::ARM::Storage::Api_2017_06_01::Models::Action
      State = Azure::ARM::Storage::Api_2017_06_01::Models::State
      Bypass = Azure::ARM::Storage::Api_2017_06_01::Models::Bypass
      DefaultAction = Azure::ARM::Storage::Api_2017_06_01::Models::DefaultAction
      AccessTier = Azure::ARM::Storage::Api_2017_06_01::Models::AccessTier
      ProvisioningState = Azure::ARM::Storage::Api_2017_06_01::Models::ProvisioningState
      AccountStatus = Azure::ARM::Storage::Api_2017_06_01::Models::AccountStatus
      KeyPermission = Azure::ARM::Storage::Api_2017_06_01::Models::KeyPermission
      UsageUnit = Azure::ARM::Storage::Api_2017_06_01::Models::UsageUnit
      Services = Azure::ARM::Storage::Api_2017_06_01::Models::Services
      SignedResourceTypes = Azure::ARM::Storage::Api_2017_06_01::Models::SignedResourceTypes
      Permissions = Azure::ARM::Storage::Api_2017_06_01::Models::Permissions
      HttpProtocol = Azure::ARM::Storage::Api_2017_06_01::Models::HttpProtocol
      SignedResource = Azure::ARM::Storage::Api_2017_06_01::Models::SignedResource
    end

    #
    # Storage
    #
    class StorageClass
      attr_accessor :operations, :skus, :storage_accounts, :usage_operations, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::Storage::Api_2017_06_01::StorageManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.operations = Azure::ARM::Storage::Api_2017_06_01::Operations.new(client)
        self.skus = Azure::ARM::Storage::Api_2017_06_01::Skus.new(client)
        self.storage_accounts = Azure::ARM::Storage::Api_2017_06_01::StorageAccounts.new(client)
        self.usage_operations = Azure::ARM::Storage::Api_2017_06_01::UsageOperations.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2017-06-01'
            client = Azure::ARM::Storage::Api_2017_06_01::StorageManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def iprule
          Azure::ARM::Storage::Api_2017_06_01::Models::IPRule
        end
        def network_rule_set
          Azure::ARM::Storage::Api_2017_06_01::Models::NetworkRuleSet
        end
        def dimension
          Azure::ARM::Storage::Api_2017_06_01::Models::Dimension
        end
        def identity
          Azure::ARM::Storage::Api_2017_06_01::Models::Identity
        end
        def service_specification
          Azure::ARM::Storage::Api_2017_06_01::Models::ServiceSpecification
        end
        def storage_account_create_parameters
          Azure::ARM::Storage::Api_2017_06_01::Models::StorageAccountCreateParameters
        end
        def operation_list_result
          Azure::ARM::Storage::Api_2017_06_01::Models::OperationListResult
        end
        def endpoints
          Azure::ARM::Storage::Api_2017_06_01::Models::Endpoints
        end
        def skucapability
          Azure::ARM::Storage::Api_2017_06_01::Models::SKUCapability
        end
        def restriction
          Azure::ARM::Storage::Api_2017_06_01::Models::Restriction
        end
        def storage_sku_list_result
          Azure::ARM::Storage::Api_2017_06_01::Models::StorageSkuListResult
        end
        def storage_account_key
          Azure::ARM::Storage::Api_2017_06_01::Models::StorageAccountKey
        end
        def custom_domain
          Azure::ARM::Storage::Api_2017_06_01::Models::CustomDomain
        end
        def storage_account_list_result
          Azure::ARM::Storage::Api_2017_06_01::Models::StorageAccountListResult
        end
        def encryption_services
          Azure::ARM::Storage::Api_2017_06_01::Models::EncryptionServices
        end
        def storage_account_list_keys_result
          Azure::ARM::Storage::Api_2017_06_01::Models::StorageAccountListKeysResult
        end
        def encryption
          Azure::ARM::Storage::Api_2017_06_01::Models::Encryption
        end
        def storage_account_regenerate_key_parameters
          Azure::ARM::Storage::Api_2017_06_01::Models::StorageAccountRegenerateKeyParameters
        end
        def operation_display
          Azure::ARM::Storage::Api_2017_06_01::Models::OperationDisplay
        end
        def storage_account_update_parameters
          Azure::ARM::Storage::Api_2017_06_01::Models::StorageAccountUpdateParameters
        end
        def operation
          Azure::ARM::Storage::Api_2017_06_01::Models::Operation
        end
        def usage_name
          Azure::ARM::Storage::Api_2017_06_01::Models::UsageName
        end
        def sku
          Azure::ARM::Storage::Api_2017_06_01::Models::Sku
        end
        def usage
          Azure::ARM::Storage::Api_2017_06_01::Models::Usage
        end
        def encryption_service
          Azure::ARM::Storage::Api_2017_06_01::Models::EncryptionService
        end
        def usage_list_result
          Azure::ARM::Storage::Api_2017_06_01::Models::UsageListResult
        end
        def virtual_network_rule
          Azure::ARM::Storage::Api_2017_06_01::Models::VirtualNetworkRule
        end
        def storage_account_check_name_availability_parameters
          Azure::ARM::Storage::Api_2017_06_01::Models::StorageAccountCheckNameAvailabilityParameters
        end
        def account_sas_parameters
          Azure::ARM::Storage::Api_2017_06_01::Models::AccountSasParameters
        end
        def key_vault_properties
          Azure::ARM::Storage::Api_2017_06_01::Models::KeyVaultProperties
        end
        def list_account_sas_response
          Azure::ARM::Storage::Api_2017_06_01::Models::ListAccountSasResponse
        end
        def check_name_availability_result
          Azure::ARM::Storage::Api_2017_06_01::Models::CheckNameAvailabilityResult
        end
        def service_sas_parameters
          Azure::ARM::Storage::Api_2017_06_01::Models::ServiceSasParameters
        end
        def metric_specification
          Azure::ARM::Storage::Api_2017_06_01::Models::MetricSpecification
        end
        def list_service_sas_response
          Azure::ARM::Storage::Api_2017_06_01::Models::ListServiceSasResponse
        end
        def storage_account
          Azure::ARM::Storage::Api_2017_06_01::Models::StorageAccount
        end
        def reason_code
          Azure::ARM::Storage::Api_2017_06_01::Models::ReasonCode
        end
        def sku_name
          Azure::ARM::Storage::Api_2017_06_01::Models::SkuName
        end
        def sku_tier
          Azure::ARM::Storage::Api_2017_06_01::Models::SkuTier
        end
        def kind
          Azure::ARM::Storage::Api_2017_06_01::Models::Kind
        end
        def reason
          Azure::ARM::Storage::Api_2017_06_01::Models::Reason
        end
        def key_source
          Azure::ARM::Storage::Api_2017_06_01::Models::KeySource
        end
        def action
          Azure::ARM::Storage::Api_2017_06_01::Models::Action
        end
        def state
          Azure::ARM::Storage::Api_2017_06_01::Models::State
        end
        def bypass
          Azure::ARM::Storage::Api_2017_06_01::Models::Bypass
        end
        def default_action
          Azure::ARM::Storage::Api_2017_06_01::Models::DefaultAction
        end
        def access_tier
          Azure::ARM::Storage::Api_2017_06_01::Models::AccessTier
        end
        def provisioning_state
          Azure::ARM::Storage::Api_2017_06_01::Models::ProvisioningState
        end
        def account_status
          Azure::ARM::Storage::Api_2017_06_01::Models::AccountStatus
        end
        def key_permission
          Azure::ARM::Storage::Api_2017_06_01::Models::KeyPermission
        end
        def usage_unit
          Azure::ARM::Storage::Api_2017_06_01::Models::UsageUnit
        end
        def services
          Azure::ARM::Storage::Api_2017_06_01::Models::Services
        end
        def signed_resource_types
          Azure::ARM::Storage::Api_2017_06_01::Models::SignedResourceTypes
        end
        def permissions
          Azure::ARM::Storage::Api_2017_06_01::Models::Permissions
        end
        def http_protocol
          Azure::ARM::Storage::Api_2017_06_01::Models::HttpProtocol
        end
        def signed_resource
          Azure::ARM::Storage::Api_2017_06_01::Models::SignedResource
        end
      end
    end
  end
end
