# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_key_vault'

module Azure::Profiles::Latest
  module KeyVault
    module Mgmt
      Vaults = Azure::KeyVault::Mgmt::V2016_10_01::Vaults
      Operations = Azure::KeyVault::Mgmt::V2016_10_01::Operations

      module Models
        Sku = Azure::KeyVault::Mgmt::V2016_10_01::Models::Sku
        Permissions = Azure::KeyVault::Mgmt::V2016_10_01::Models::Permissions
        DeletedVault = Azure::KeyVault::Mgmt::V2016_10_01::Models::DeletedVault
        VaultListResult = Azure::KeyVault::Mgmt::V2016_10_01::Models::VaultListResult
        DeletedVaultListResult = Azure::KeyVault::Mgmt::V2016_10_01::Models::DeletedVaultListResult
        VaultProperties = Azure::KeyVault::Mgmt::V2016_10_01::Models::VaultProperties
        VaultAccessPolicyProperties = Azure::KeyVault::Mgmt::V2016_10_01::Models::VaultAccessPolicyProperties
        VaultCreateOrUpdateParameters = Azure::KeyVault::Mgmt::V2016_10_01::Models::VaultCreateOrUpdateParameters
        VaultCheckNameAvailabilityParameters = Azure::KeyVault::Mgmt::V2016_10_01::Models::VaultCheckNameAvailabilityParameters
        Resource = Azure::KeyVault::Mgmt::V2016_10_01::Models::Resource
        VaultAccessPolicyParameters = Azure::KeyVault::Mgmt::V2016_10_01::Models::VaultAccessPolicyParameters
        LogSpecification = Azure::KeyVault::Mgmt::V2016_10_01::Models::LogSpecification
        VaultPatchParameters = Azure::KeyVault::Mgmt::V2016_10_01::Models::VaultPatchParameters
        ServiceSpecification = Azure::KeyVault::Mgmt::V2016_10_01::Models::ServiceSpecification
        AccessPolicyEntry = Azure::KeyVault::Mgmt::V2016_10_01::Models::AccessPolicyEntry
        DeletedVaultProperties = Azure::KeyVault::Mgmt::V2016_10_01::Models::DeletedVaultProperties
        VaultPatchProperties = Azure::KeyVault::Mgmt::V2016_10_01::Models::VaultPatchProperties
        Vault = Azure::KeyVault::Mgmt::V2016_10_01::Models::Vault
        CheckNameAvailabilityResult = Azure::KeyVault::Mgmt::V2016_10_01::Models::CheckNameAvailabilityResult
        SecretPermissions = Azure::KeyVault::Mgmt::V2016_10_01::Models::SecretPermissions
        OperationDisplay = Azure::KeyVault::Mgmt::V2016_10_01::Models::OperationDisplay
        SkuName = Azure::KeyVault::Mgmt::V2016_10_01::Models::SkuName
        OperationListResult = Azure::KeyVault::Mgmt::V2016_10_01::Models::OperationListResult
        KeyPermissions = Azure::KeyVault::Mgmt::V2016_10_01::Models::KeyPermissions
        CreateMode = Azure::KeyVault::Mgmt::V2016_10_01::Models::CreateMode
        CertificatePermissions = Azure::KeyVault::Mgmt::V2016_10_01::Models::CertificatePermissions
        StoragePermissions = Azure::KeyVault::Mgmt::V2016_10_01::Models::StoragePermissions
        AccessPolicyUpdateKind = Azure::KeyVault::Mgmt::V2016_10_01::Models::AccessPolicyUpdateKind
        Reason = Azure::KeyVault::Mgmt::V2016_10_01::Models::Reason
        Operation = Azure::KeyVault::Mgmt::V2016_10_01::Models::Operation
        ResourceListResult = Azure::KeyVault::Mgmt::V2016_10_01::Models::ResourceListResult
      end

      class KeyVaultManagementClass
        attr_reader :vaults, :operations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::KeyVault::Mgmt::V2016_10_01::KeyVaultManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @vaults = @client_0.vaults
          @operations = @client_0.operations

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/KeyVault/Mgmt"
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
            Azure::KeyVault::Mgmt::V2016_10_01::Models::Sku
          end
          def permissions
            Azure::KeyVault::Mgmt::V2016_10_01::Models::Permissions
          end
          def deleted_vault
            Azure::KeyVault::Mgmt::V2016_10_01::Models::DeletedVault
          end
          def vault_list_result
            Azure::KeyVault::Mgmt::V2016_10_01::Models::VaultListResult
          end
          def deleted_vault_list_result
            Azure::KeyVault::Mgmt::V2016_10_01::Models::DeletedVaultListResult
          end
          def vault_properties
            Azure::KeyVault::Mgmt::V2016_10_01::Models::VaultProperties
          end
          def vault_access_policy_properties
            Azure::KeyVault::Mgmt::V2016_10_01::Models::VaultAccessPolicyProperties
          end
          def vault_create_or_update_parameters
            Azure::KeyVault::Mgmt::V2016_10_01::Models::VaultCreateOrUpdateParameters
          end
          def vault_check_name_availability_parameters
            Azure::KeyVault::Mgmt::V2016_10_01::Models::VaultCheckNameAvailabilityParameters
          end
          def resource
            Azure::KeyVault::Mgmt::V2016_10_01::Models::Resource
          end
          def vault_access_policy_parameters
            Azure::KeyVault::Mgmt::V2016_10_01::Models::VaultAccessPolicyParameters
          end
          def log_specification
            Azure::KeyVault::Mgmt::V2016_10_01::Models::LogSpecification
          end
          def vault_patch_parameters
            Azure::KeyVault::Mgmt::V2016_10_01::Models::VaultPatchParameters
          end
          def service_specification
            Azure::KeyVault::Mgmt::V2016_10_01::Models::ServiceSpecification
          end
          def access_policy_entry
            Azure::KeyVault::Mgmt::V2016_10_01::Models::AccessPolicyEntry
          end
          def deleted_vault_properties
            Azure::KeyVault::Mgmt::V2016_10_01::Models::DeletedVaultProperties
          end
          def vault_patch_properties
            Azure::KeyVault::Mgmt::V2016_10_01::Models::VaultPatchProperties
          end
          def vault
            Azure::KeyVault::Mgmt::V2016_10_01::Models::Vault
          end
          def check_name_availability_result
            Azure::KeyVault::Mgmt::V2016_10_01::Models::CheckNameAvailabilityResult
          end
          def secret_permissions
            Azure::KeyVault::Mgmt::V2016_10_01::Models::SecretPermissions
          end
          def operation_display
            Azure::KeyVault::Mgmt::V2016_10_01::Models::OperationDisplay
          end
          def sku_name
            Azure::KeyVault::Mgmt::V2016_10_01::Models::SkuName
          end
          def operation_list_result
            Azure::KeyVault::Mgmt::V2016_10_01::Models::OperationListResult
          end
          def key_permissions
            Azure::KeyVault::Mgmt::V2016_10_01::Models::KeyPermissions
          end
          def create_mode
            Azure::KeyVault::Mgmt::V2016_10_01::Models::CreateMode
          end
          def certificate_permissions
            Azure::KeyVault::Mgmt::V2016_10_01::Models::CertificatePermissions
          end
          def storage_permissions
            Azure::KeyVault::Mgmt::V2016_10_01::Models::StoragePermissions
          end
          def access_policy_update_kind
            Azure::KeyVault::Mgmt::V2016_10_01::Models::AccessPolicyUpdateKind
          end
          def reason
            Azure::KeyVault::Mgmt::V2016_10_01::Models::Reason
          end
          def operation
            Azure::KeyVault::Mgmt::V2016_10_01::Models::Operation
          end
          def resource_list_result
            Azure::KeyVault::Mgmt::V2016_10_01::Models::ResourceListResult
          end
        end
      end
    end
  end
end
