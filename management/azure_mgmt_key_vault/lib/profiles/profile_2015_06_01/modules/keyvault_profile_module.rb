# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_key_vault'

module Azure::KeyVault::Management::Profile_2015_06_01
    Vaults = Azure::ARM::KeyVault::Api_2015_06_01::Vaults

    module Models
      VaultCreateOrUpdateParameters = Azure::ARM::KeyVault::Api_2015_06_01::Models::VaultCreateOrUpdateParameters
      Sku = Azure::ARM::KeyVault::Api_2015_06_01::Models::Sku
      AccessPolicyEntry = Azure::ARM::KeyVault::Api_2015_06_01::Models::AccessPolicyEntry
      VaultListResult = Azure::ARM::KeyVault::Api_2015_06_01::Models::VaultListResult
      Permissions = Azure::ARM::KeyVault::Api_2015_06_01::Models::Permissions
      VaultProperties = Azure::ARM::KeyVault::Api_2015_06_01::Models::VaultProperties
      ResourceListResult = Azure::ARM::KeyVault::Api_2015_06_01::Models::ResourceListResult
      Vault = Azure::ARM::KeyVault::Api_2015_06_01::Models::Vault
      SkuName = Azure::ARM::KeyVault::Api_2015_06_01::Models::SkuName
      KeyPermissions = Azure::ARM::KeyVault::Api_2015_06_01::Models::KeyPermissions
      SecretPermissions = Azure::ARM::KeyVault::Api_2015_06_01::Models::SecretPermissions
      CertificatePermissions = Azure::ARM::KeyVault::Api_2015_06_01::Models::CertificatePermissions
    end

    #
    # KeyVault
    #
    class KeyVaultClass
      attr_reader :vaults, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        client_0 = Azure::ARM::KeyVault::Api_2015_06_01::KeyVaultManagementClient.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        @vaults = client_0.vaults

        @model_classes = ModelClasses.new
      end

      #
      # Method to get the client object
      #
      # @return Client object
      #
      def get_client(version = '2015-06-01')
        case version
          when '2015-06-01'
            client = Azure::ARM::KeyVault::Api_2015_06_01::KeyVaultManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def vault_create_or_update_parameters
          Azure::ARM::KeyVault::Api_2015_06_01::Models::VaultCreateOrUpdateParameters
        end
        def sku
          Azure::ARM::KeyVault::Api_2015_06_01::Models::Sku
        end
        def access_policy_entry
          Azure::ARM::KeyVault::Api_2015_06_01::Models::AccessPolicyEntry
        end
        def vault_list_result
          Azure::ARM::KeyVault::Api_2015_06_01::Models::VaultListResult
        end
        def permissions
          Azure::ARM::KeyVault::Api_2015_06_01::Models::Permissions
        end
        def vault_properties
          Azure::ARM::KeyVault::Api_2015_06_01::Models::VaultProperties
        end
        def resource_list_result
          Azure::ARM::KeyVault::Api_2015_06_01::Models::ResourceListResult
        end
        def vault
          Azure::ARM::KeyVault::Api_2015_06_01::Models::Vault
        end
        def sku_name
          Azure::ARM::KeyVault::Api_2015_06_01::Models::SkuName
        end
        def key_permissions
          Azure::ARM::KeyVault::Api_2015_06_01::Models::KeyPermissions
        end
        def secret_permissions
          Azure::ARM::KeyVault::Api_2015_06_01::Models::SecretPermissions
        end
        def certificate_permissions
          Azure::ARM::KeyVault::Api_2015_06_01::Models::CertificatePermissions
        end
      end
    end
end
