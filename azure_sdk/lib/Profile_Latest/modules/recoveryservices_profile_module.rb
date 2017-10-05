# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_recovery_services'


module Azure::Profiles::Management::Profile_Latest
  module RecoveryServices
    BackupVaultConfigs = Azure::ARM::RecoveryServices::Api_2016_12_01::BackupVaultConfigs
    BackupStorageConfigs = Azure::ARM::RecoveryServices::Api_2016_12_01::BackupStorageConfigs
    RecoveryServicesBackupClient = Azure::ARM::RecoveryServices::Api_2016_12_01::RecoveryServicesBackupClient

    module Models
      UpgradeDetails = Azure::ARM::RecoveryServices::Api_2016_12_01::Models::UpgradeDetails
      VaultProperties = Azure::ARM::RecoveryServices::Api_2016_12_01::Models::VaultProperties
      Sku = Azure::ARM::RecoveryServices::Api_2016_12_01::Models::Sku
      Resource = Azure::ARM::RecoveryServices::Api_2016_12_01::Models::Resource
      BackupStorageConfig = Azure::ARM::RecoveryServices::Api_2016_12_01::Models::BackupStorageConfig
      BackupVaultConfig = Azure::ARM::RecoveryServices::Api_2016_12_01::Models::BackupVaultConfig
      VaultExtendedInfoResource = Azure::ARM::RecoveryServices::Api_2016_12_01::Models::VaultExtendedInfoResource
      TrackedResource = Azure::ARM::RecoveryServices::Api_2016_12_01::Models::TrackedResource
      Vault = Azure::ARM::RecoveryServices::Api_2016_12_01::Models::Vault
      StorageModelType = Azure::ARM::RecoveryServices::Api_2016_12_01::Models::StorageModelType
      StorageType = Azure::ARM::RecoveryServices::Api_2016_12_01::Models::StorageType
      StorageTypeState = Azure::ARM::RecoveryServices::Api_2016_12_01::Models::StorageTypeState
      EnhancedSecurityState = Azure::ARM::RecoveryServices::Api_2016_12_01::Models::EnhancedSecurityState
      SkuName = Azure::ARM::RecoveryServices::Api_2016_12_01::Models::SkuName
      VaultUpgradeState = Azure::ARM::RecoveryServices::Api_2016_12_01::Models::VaultUpgradeState
      TriggerType = Azure::ARM::RecoveryServices::Api_2016_12_01::Models::TriggerType
    end

    #
    # RecoveryServices
    #
    class RecoveryServicesClass
      attr_accessor :backup_vault_configs, :backup_storage_configs, :recovery_services_backup_client, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = .new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.backup_vault_configs = Azure::ARM::RecoveryServices::Api_2016_12_01::BackupVaultConfigs.new(client)
        self.backup_storage_configs = Azure::ARM::RecoveryServices::Api_2016_12_01::BackupStorageConfigs.new(client)
        self.recovery_services_backup_client = Azure::ARM::RecoveryServices::Api_2016_12_01::RecoveryServicesBackupClient.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def upgrade_details
          Azure::ARM::RecoveryServices::Api_2016_12_01::Models::UpgradeDetails
        end
        def vault_properties
          Azure::ARM::RecoveryServices::Api_2016_12_01::Models::VaultProperties
        end
        def sku
          Azure::ARM::RecoveryServices::Api_2016_12_01::Models::Sku
        end
        def resource
          Azure::ARM::RecoveryServices::Api_2016_12_01::Models::Resource
        end
        def backup_storage_config
          Azure::ARM::RecoveryServices::Api_2016_12_01::Models::BackupStorageConfig
        end
        def backup_vault_config
          Azure::ARM::RecoveryServices::Api_2016_12_01::Models::BackupVaultConfig
        end
        def vault_extended_info_resource
          Azure::ARM::RecoveryServices::Api_2016_12_01::Models::VaultExtendedInfoResource
        end
        def tracked_resource
          Azure::ARM::RecoveryServices::Api_2016_12_01::Models::TrackedResource
        end
        def vault
          Azure::ARM::RecoveryServices::Api_2016_12_01::Models::Vault
        end
        def storage_model_type
          Azure::ARM::RecoveryServices::Api_2016_12_01::Models::StorageModelType
        end
        def storage_type
          Azure::ARM::RecoveryServices::Api_2016_12_01::Models::StorageType
        end
        def storage_type_state
          Azure::ARM::RecoveryServices::Api_2016_12_01::Models::StorageTypeState
        end
        def enhanced_security_state
          Azure::ARM::RecoveryServices::Api_2016_12_01::Models::EnhancedSecurityState
        end
        def sku_name
          Azure::ARM::RecoveryServices::Api_2016_12_01::Models::SkuName
        end
        def vault_upgrade_state
          Azure::ARM::RecoveryServices::Api_2016_12_01::Models::VaultUpgradeState
        end
        def trigger_type
          Azure::ARM::RecoveryServices::Api_2016_12_01::Models::TriggerType
        end
      end
    end
  end
end
