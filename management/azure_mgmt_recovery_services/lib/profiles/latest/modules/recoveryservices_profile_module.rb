# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_recovery_services'

module Azure::RecoveryServices::Profiles::Latest::Mgmt
    VaultCertificates = Azure::RecoveryServices::Mgmt::V2016_06_01::VaultCertificates
    RegisteredIdentities = Azure::RecoveryServices::Mgmt::V2016_06_01::RegisteredIdentities
    ReplicationUsages = Azure::RecoveryServices::Mgmt::V2016_06_01::ReplicationUsages
    Vaults = Azure::RecoveryServices::Mgmt::V2016_06_01::Vaults
    Operations = Azure::RecoveryServices::Mgmt::V2016_06_01::Operations
    VaultExtendedInfoOperations = Azure::RecoveryServices::Mgmt::V2016_06_01::VaultExtendedInfoOperations
    Usages = Azure::RecoveryServices::Mgmt::V2016_06_01::Usages
    BackupVaultConfigs = Azure::RecoveryServices::Mgmt::V2016_12_01::BackupVaultConfigs
    BackupStorageConfigs = Azure::RecoveryServices::Mgmt::V2016_12_01::BackupStorageConfigs

    module Models
      ClientDiscoveryForProperties = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryForProperties
      ClientDiscoveryValueForSingleApi = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryValueForSingleApi
      CertificateRequest = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::CertificateRequest
      ClientDiscoveryResponse = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryResponse
      RawCertificateData = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::RawCertificateData
      ResourceCertificateDetails = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ResourceCertificateDetails
      VaultList = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultList
      JobsSummary = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::JobsSummary
      ReplicationUsage = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ReplicationUsage
      ClientDiscoveryDisplay = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryDisplay
      ClientDiscoveryForServiceSpecification = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryForServiceSpecification
      VaultUsageList = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultUsageList
      MonitoringSummary = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::MonitoringSummary
      ClientDiscoveryForLogSpecification = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryForLogSpecification
      ReplicationUsageList = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ReplicationUsageList
      VaultUsage = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultUsage
      VaultCertificateResponse = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultCertificateResponse
      NameInfo = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::NameInfo
      ResourceCertificateAndAadDetails = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ResourceCertificateAndAadDetails
      ResourceCertificateAndAcsDetails = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ResourceCertificateAndAcsDetails
      AuthType = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::AuthType
      UsagesUnit = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::UsagesUnit
      UpgradeDetails = Azure::RecoveryServices::Mgmt::V2016_12_01::Models::UpgradeDetails
      VaultProperties = Azure::RecoveryServices::Mgmt::V2016_12_01::Models::VaultProperties
      Sku = Azure::RecoveryServices::Mgmt::V2016_12_01::Models::Sku
      Resource = Azure::RecoveryServices::Mgmt::V2016_12_01::Models::Resource
      BackupStorageConfig = Azure::RecoveryServices::Mgmt::V2016_12_01::Models::BackupStorageConfig
      BackupVaultConfig = Azure::RecoveryServices::Mgmt::V2016_12_01::Models::BackupVaultConfig
      VaultExtendedInfoResource = Azure::RecoveryServices::Mgmt::V2016_12_01::Models::VaultExtendedInfoResource
      TrackedResource = Azure::RecoveryServices::Mgmt::V2016_12_01::Models::TrackedResource
      Vault = Azure::RecoveryServices::Mgmt::V2016_12_01::Models::Vault
      StorageModelType = Azure::RecoveryServices::Mgmt::V2016_12_01::Models::StorageModelType
      StorageType = Azure::RecoveryServices::Mgmt::V2016_12_01::Models::StorageType
      StorageTypeState = Azure::RecoveryServices::Mgmt::V2016_12_01::Models::StorageTypeState
      EnhancedSecurityState = Azure::RecoveryServices::Mgmt::V2016_12_01::Models::EnhancedSecurityState
      SkuName = Azure::RecoveryServices::Mgmt::V2016_12_01::Models::SkuName
      VaultUpgradeState = Azure::RecoveryServices::Mgmt::V2016_12_01::Models::VaultUpgradeState
      TriggerType = Azure::RecoveryServices::Mgmt::V2016_12_01::Models::TriggerType
    end

    #
    # RecoveryServices
    #
    class RecoveryServicesClass
      attr_reader :vault_certificates, :registered_identities, :replication_usages, :vaults, :operations, :vault_extended_info_operations, :usages, :backup_vault_configs, :backup_storage_configs, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        if options.is_a?(Hash) && options.length == 0
          @options = setup_options
        else
          @options = options
        end

        reset!(options)

        @configurable, @base_url, @options = self, nil, nil

        client_0 = Azure::RecoveryServices::Mgmt::V2016_06_01::RecoveryServicesClient.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        @vault_certificates = client_0.vault_certificates
        @registered_identities = client_0.registered_identities
        @replication_usages = client_0.replication_usages
        @vaults = client_0.vaults
        @operations = client_0.operations
        @vault_extended_info_operations = client_0.vault_extended_info_operations
        @usages = client_0.usages

        client_1 = Azure::RecoveryServices::Mgmt::V2016_12_01::RecoveryServicesBackupClient.new(configurable.credentials, base_url, options)
        if(client_1.respond_to?(:subscription_id))
          client_1.subscription_id = configurable.subscription_id
        end
        @backup_vault_configs = client_1.backup_vault_configs
        @backup_storage_configs = client_1.backup_storage_configs

        @model_classes = ModelClasses.new
      end

      #
      # Method to get the client object
      #
      # @return Client object
      #
      def get_client(version = '2016-12-01')
        case version
          when '2016-06-01'
            client = Azure::RecoveryServices::Mgmt::V2016_06_01::RecoveryServicesClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          when '2016-12-01'
            client = Azure::RecoveryServices::Mgmt::V2016_12_01::RecoveryServicesBackupClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def client_discovery_for_properties
          Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryForProperties
        end
        def client_discovery_value_for_single_api
          Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryValueForSingleApi
        end
        def certificate_request
          Azure::RecoveryServices::Mgmt::V2016_06_01::Models::CertificateRequest
        end
        def client_discovery_response
          Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryResponse
        end
        def raw_certificate_data
          Azure::RecoveryServices::Mgmt::V2016_06_01::Models::RawCertificateData
        end
        def resource_certificate_details
          Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ResourceCertificateDetails
        end
        def vault_list
          Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultList
        end
        def jobs_summary
          Azure::RecoveryServices::Mgmt::V2016_06_01::Models::JobsSummary
        end
        def replication_usage
          Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ReplicationUsage
        end
        def client_discovery_display
          Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryDisplay
        end
        def client_discovery_for_service_specification
          Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryForServiceSpecification
        end
        def vault_usage_list
          Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultUsageList
        end
        def monitoring_summary
          Azure::RecoveryServices::Mgmt::V2016_06_01::Models::MonitoringSummary
        end
        def client_discovery_for_log_specification
          Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryForLogSpecification
        end
        def replication_usage_list
          Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ReplicationUsageList
        end
        def vault_usage
          Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultUsage
        end
        def vault_certificate_response
          Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultCertificateResponse
        end
        def name_info
          Azure::RecoveryServices::Mgmt::V2016_06_01::Models::NameInfo
        end
        def resource_certificate_and_aad_details
          Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ResourceCertificateAndAadDetails
        end
        def resource_certificate_and_acs_details
          Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ResourceCertificateAndAcsDetails
        end
        def auth_type
          Azure::RecoveryServices::Mgmt::V2016_06_01::Models::AuthType
        end
        def usages_unit
          Azure::RecoveryServices::Mgmt::V2016_06_01::Models::UsagesUnit
        end
        def upgrade_details
          Azure::RecoveryServices::Mgmt::V2016_12_01::Models::UpgradeDetails
        end
        def vault_properties
          Azure::RecoveryServices::Mgmt::V2016_12_01::Models::VaultProperties
        end
        def sku
          Azure::RecoveryServices::Mgmt::V2016_12_01::Models::Sku
        end
        def resource
          Azure::RecoveryServices::Mgmt::V2016_12_01::Models::Resource
        end
        def backup_storage_config
          Azure::RecoveryServices::Mgmt::V2016_12_01::Models::BackupStorageConfig
        end
        def backup_vault_config
          Azure::RecoveryServices::Mgmt::V2016_12_01::Models::BackupVaultConfig
        end
        def vault_extended_info_resource
          Azure::RecoveryServices::Mgmt::V2016_12_01::Models::VaultExtendedInfoResource
        end
        def tracked_resource
          Azure::RecoveryServices::Mgmt::V2016_12_01::Models::TrackedResource
        end
        def vault
          Azure::RecoveryServices::Mgmt::V2016_12_01::Models::Vault
        end
        def storage_model_type
          Azure::RecoveryServices::Mgmt::V2016_12_01::Models::StorageModelType
        end
        def storage_type
          Azure::RecoveryServices::Mgmt::V2016_12_01::Models::StorageType
        end
        def storage_type_state
          Azure::RecoveryServices::Mgmt::V2016_12_01::Models::StorageTypeState
        end
        def enhanced_security_state
          Azure::RecoveryServices::Mgmt::V2016_12_01::Models::EnhancedSecurityState
        end
        def sku_name
          Azure::RecoveryServices::Mgmt::V2016_12_01::Models::SkuName
        end
        def vault_upgrade_state
          Azure::RecoveryServices::Mgmt::V2016_12_01::Models::VaultUpgradeState
        end
        def trigger_type
          Azure::RecoveryServices::Mgmt::V2016_12_01::Models::TriggerType
        end
      end
    end
end
