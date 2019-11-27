# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_key_vault'

module Azure::Profiles::V2019_07_01
  module KeyVault
    module Mgmt
      Vaults = Azure::KeyVault::Mgmt::V2018_02_14_preview::Vaults
      Operations = Azure::KeyVault::Mgmt::V2018_02_14_preview::Operations
      Secrets = Azure::KeyVault::Mgmt::V2018_02_14_preview::Secrets

      module Models
        Resource = Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::Resource
        Sku = Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::Sku
        ResourceListResult = Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::ResourceListResult
        AccessPolicyEntry = Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::AccessPolicyEntry
        VaultCheckNameAvailabilityParameters = Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::VaultCheckNameAvailabilityParameters
        VirtualNetworkRule = Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::VirtualNetworkRule
        CheckNameAvailabilityResult = Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::CheckNameAvailabilityResult
        VaultProperties = Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::VaultProperties
        OperationDisplay = Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::OperationDisplay
        VaultAccessPolicyProperties = Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::VaultAccessPolicyProperties
        LogSpecification = Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::LogSpecification
        VaultCreateOrUpdateParameters = Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::VaultCreateOrUpdateParameters
        ServiceSpecification = Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::ServiceSpecification
        VaultAccessPolicyParameters = Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::VaultAccessPolicyParameters
        Operation = Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::Operation
        DeletedVault = Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::DeletedVault
        OperationListResult = Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::OperationListResult
        DeletedVaultListResult = Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::DeletedVaultListResult
        Attributes = Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::Attributes
        IPRule = Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::IPRule
        NetworkRuleSet = Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::NetworkRuleSet
        VaultPatchProperties = Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::VaultPatchProperties
        VaultPatchParameters = Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::VaultPatchParameters
        SecretProperties = Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::SecretProperties
        VaultListResult = Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::VaultListResult
        SecretPatchProperties = Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::SecretPatchProperties
        DeletedVaultProperties = Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::DeletedVaultProperties
        SecretCreateOrUpdateParameters = Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::SecretCreateOrUpdateParameters
        Permissions = Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::Permissions
        SecretPatchParameters = Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::SecretPatchParameters
        SecretListResult = Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::SecretListResult
        Vault = Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::Vault
        SecretAttributes = Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::SecretAttributes
        Secret = Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::Secret
        SkuName = Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::SkuName
        KeyPermissions = Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::KeyPermissions
        SecretPermissions = Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::SecretPermissions
        CertificatePermissions = Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::CertificatePermissions
        StoragePermissions = Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::StoragePermissions
        CreateMode = Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::CreateMode
        NetworkRuleBypassOptions = Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::NetworkRuleBypassOptions
        NetworkRuleAction = Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::NetworkRuleAction
        Reason = Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::Reason
        AccessPolicyUpdateKind = Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::AccessPolicyUpdateKind
      end

      class KeyVaultManagementClass
        attr_reader :vaults, :operations, :secrets, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::KeyVault::Mgmt::V2018_02_14_preview::KeyVaultManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @vaults = @client_0.vaults
          @operations = @client_0.operations
          @secrets = @client_0.secrets

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/V2019_07_01/KeyVault/Mgmt"
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
          def resource
            Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::Resource
          end
          def sku
            Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::Sku
          end
          def resource_list_result
            Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::ResourceListResult
          end
          def access_policy_entry
            Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::AccessPolicyEntry
          end
          def vault_check_name_availability_parameters
            Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::VaultCheckNameAvailabilityParameters
          end
          def virtual_network_rule
            Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::VirtualNetworkRule
          end
          def check_name_availability_result
            Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::CheckNameAvailabilityResult
          end
          def vault_properties
            Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::VaultProperties
          end
          def operation_display
            Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::OperationDisplay
          end
          def vault_access_policy_properties
            Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::VaultAccessPolicyProperties
          end
          def log_specification
            Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::LogSpecification
          end
          def vault_create_or_update_parameters
            Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::VaultCreateOrUpdateParameters
          end
          def service_specification
            Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::ServiceSpecification
          end
          def vault_access_policy_parameters
            Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::VaultAccessPolicyParameters
          end
          def operation
            Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::Operation
          end
          def deleted_vault
            Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::DeletedVault
          end
          def operation_list_result
            Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::OperationListResult
          end
          def deleted_vault_list_result
            Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::DeletedVaultListResult
          end
          def attributes
            Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::Attributes
          end
          def iprule
            Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::IPRule
          end
          def network_rule_set
            Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::NetworkRuleSet
          end
          def vault_patch_properties
            Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::VaultPatchProperties
          end
          def vault_patch_parameters
            Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::VaultPatchParameters
          end
          def secret_properties
            Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::SecretProperties
          end
          def vault_list_result
            Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::VaultListResult
          end
          def secret_patch_properties
            Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::SecretPatchProperties
          end
          def deleted_vault_properties
            Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::DeletedVaultProperties
          end
          def secret_create_or_update_parameters
            Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::SecretCreateOrUpdateParameters
          end
          def permissions
            Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::Permissions
          end
          def secret_patch_parameters
            Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::SecretPatchParameters
          end
          def secret_list_result
            Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::SecretListResult
          end
          def vault
            Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::Vault
          end
          def secret_attributes
            Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::SecretAttributes
          end
          def secret
            Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::Secret
          end
          def sku_name
            Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::SkuName
          end
          def key_permissions
            Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::KeyPermissions
          end
          def secret_permissions
            Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::SecretPermissions
          end
          def certificate_permissions
            Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::CertificatePermissions
          end
          def storage_permissions
            Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::StoragePermissions
          end
          def create_mode
            Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::CreateMode
          end
          def network_rule_bypass_options
            Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::NetworkRuleBypassOptions
          end
          def network_rule_action
            Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::NetworkRuleAction
          end
          def reason
            Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::Reason
          end
          def access_policy_update_kind
            Azure::KeyVault::Mgmt::V2018_02_14_preview::Models::AccessPolicyUpdateKind
          end
        end
      end
    end
  end
end
