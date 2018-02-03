# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_key_vault'

module Azure::Profiles::Latest
  module KeyVault
    module Mgmt
      Vaults = Azure::KeyVault::Mgmt::V2016_10_01::Vaults

      module Models
        VaultCreateOrUpdateParameters = Azure::KeyVault::Mgmt::V2016_10_01::Models::VaultCreateOrUpdateParameters
        Permissions = Azure::KeyVault::Mgmt::V2016_10_01::Models::Permissions
        DeletedVault = Azure::KeyVault::Mgmt::V2016_10_01::Models::DeletedVault
        VaultProperties = Azure::KeyVault::Mgmt::V2016_10_01::Models::VaultProperties
        VaultListResult = Azure::KeyVault::Mgmt::V2016_10_01::Models::VaultListResult
        Sku = Azure::KeyVault::Mgmt::V2016_10_01::Models::Sku
        DeletedVaultListResult = Azure::KeyVault::Mgmt::V2016_10_01::Models::DeletedVaultListResult
        DeletedVaultProperties = Azure::KeyVault::Mgmt::V2016_10_01::Models::DeletedVaultProperties
        Resource = Azure::KeyVault::Mgmt::V2016_10_01::Models::Resource
        AccessPolicyEntry = Azure::KeyVault::Mgmt::V2016_10_01::Models::AccessPolicyEntry
        ResourceListResult = Azure::KeyVault::Mgmt::V2016_10_01::Models::ResourceListResult
        Vault = Azure::KeyVault::Mgmt::V2016_10_01::Models::Vault
        SkuName = Azure::KeyVault::Mgmt::V2016_10_01::Models::SkuName
        KeyPermissions = Azure::KeyVault::Mgmt::V2016_10_01::Models::KeyPermissions
        SecretPermissions = Azure::KeyVault::Mgmt::V2016_10_01::Models::SecretPermissions
        CertificatePermissions = Azure::KeyVault::Mgmt::V2016_10_01::Models::CertificatePermissions
        StoragePermissions = Azure::KeyVault::Mgmt::V2016_10_01::Models::StoragePermissions
        CreateMode = Azure::KeyVault::Mgmt::V2016_10_01::Models::CreateMode
      end

      class KeyVaultManagementClass
        attr_reader :vaults, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::KeyVault::Mgmt::V2016_10_01::KeyVaultManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @vaults = @client_0.vaults

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = 'Profiles/azure_sdk/Latest/KeyVault/Mgmt'
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
          def vault_create_or_update_parameters
            Azure::KeyVault::Mgmt::V2016_10_01::Models::VaultCreateOrUpdateParameters
          end
          def permissions
            Azure::KeyVault::Mgmt::V2016_10_01::Models::Permissions
          end
          def deleted_vault
            Azure::KeyVault::Mgmt::V2016_10_01::Models::DeletedVault
          end
          def vault_properties
            Azure::KeyVault::Mgmt::V2016_10_01::Models::VaultProperties
          end
          def vault_list_result
            Azure::KeyVault::Mgmt::V2016_10_01::Models::VaultListResult
          end
          def sku
            Azure::KeyVault::Mgmt::V2016_10_01::Models::Sku
          end
          def deleted_vault_list_result
            Azure::KeyVault::Mgmt::V2016_10_01::Models::DeletedVaultListResult
          end
          def deleted_vault_properties
            Azure::KeyVault::Mgmt::V2016_10_01::Models::DeletedVaultProperties
          end
          def resource
            Azure::KeyVault::Mgmt::V2016_10_01::Models::Resource
          end
          def access_policy_entry
            Azure::KeyVault::Mgmt::V2016_10_01::Models::AccessPolicyEntry
          end
          def resource_list_result
            Azure::KeyVault::Mgmt::V2016_10_01::Models::ResourceListResult
          end
          def vault
            Azure::KeyVault::Mgmt::V2016_10_01::Models::Vault
          end
          def sku_name
            Azure::KeyVault::Mgmt::V2016_10_01::Models::SkuName
          end
          def key_permissions
            Azure::KeyVault::Mgmt::V2016_10_01::Models::KeyPermissions
          end
          def secret_permissions
            Azure::KeyVault::Mgmt::V2016_10_01::Models::SecretPermissions
          end
          def certificate_permissions
            Azure::KeyVault::Mgmt::V2016_10_01::Models::CertificatePermissions
          end
          def storage_permissions
            Azure::KeyVault::Mgmt::V2016_10_01::Models::StoragePermissions
          end
          def create_mode
            Azure::KeyVault::Mgmt::V2016_10_01::Models::CreateMode
          end
        end
      end
    end
  end
end
