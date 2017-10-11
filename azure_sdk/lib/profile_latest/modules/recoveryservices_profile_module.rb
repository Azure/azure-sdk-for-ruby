# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_recovery_services'

module Azure::Profiles::Management::Profile_Latest
  module RecoveryServices
    VaultCertificates = Azure::ARM::RecoveryServices::Api_2016_06_01::VaultCertificates
    RegisteredIdentities = Azure::ARM::RecoveryServices::Api_2016_06_01::RegisteredIdentities
    ReplicationUsages = Azure::ARM::RecoveryServices::Api_2016_06_01::ReplicationUsages
    Vaults = Azure::ARM::RecoveryServices::Api_2016_06_01::Vaults
    Operations = Azure::ARM::RecoveryServices::Api_2016_06_01::Operations
    VaultExtendedInfoOperations = Azure::ARM::RecoveryServices::Api_2016_06_01::VaultExtendedInfoOperations
    Usages = Azure::ARM::RecoveryServices::Api_2016_06_01::Usages
    BackupVaultConfigs = Azure::ARM::RecoveryServices::Api_2016_12_01::BackupVaultConfigs
    BackupStorageConfigs = Azure::ARM::RecoveryServices::Api_2016_12_01::BackupStorageConfigs

    module Models
      ClientDiscoveryForProperties = Azure::ARM::RecoveryServices::Api_2016_06_01::Models::ClientDiscoveryForProperties
      ClientDiscoveryValueForSingleApi = Azure::ARM::RecoveryServices::Api_2016_06_01::Models::ClientDiscoveryValueForSingleApi
      CertificateRequest = Azure::ARM::RecoveryServices::Api_2016_06_01::Models::CertificateRequest
      ClientDiscoveryResponse = Azure::ARM::RecoveryServices::Api_2016_06_01::Models::ClientDiscoveryResponse
      RawCertificateData = Azure::ARM::RecoveryServices::Api_2016_06_01::Models::RawCertificateData
      ResourceCertificateDetails = Azure::ARM::RecoveryServices::Api_2016_06_01::Models::ResourceCertificateDetails
      VaultList = Azure::ARM::RecoveryServices::Api_2016_06_01::Models::VaultList
      JobsSummary = Azure::ARM::RecoveryServices::Api_2016_06_01::Models::JobsSummary
      ReplicationUsage = Azure::ARM::RecoveryServices::Api_2016_06_01::Models::ReplicationUsage
      ClientDiscoveryDisplay = Azure::ARM::RecoveryServices::Api_2016_06_01::Models::ClientDiscoveryDisplay
      ClientDiscoveryForServiceSpecification = Azure::ARM::RecoveryServices::Api_2016_06_01::Models::ClientDiscoveryForServiceSpecification
      VaultUsageList = Azure::ARM::RecoveryServices::Api_2016_06_01::Models::VaultUsageList
      MonitoringSummary = Azure::ARM::RecoveryServices::Api_2016_06_01::Models::MonitoringSummary
      ClientDiscoveryForLogSpecification = Azure::ARM::RecoveryServices::Api_2016_06_01::Models::ClientDiscoveryForLogSpecification
      ReplicationUsageList = Azure::ARM::RecoveryServices::Api_2016_06_01::Models::ReplicationUsageList
      VaultUsage = Azure::ARM::RecoveryServices::Api_2016_06_01::Models::VaultUsage
      VaultCertificateResponse = Azure::ARM::RecoveryServices::Api_2016_06_01::Models::VaultCertificateResponse
      NameInfo = Azure::ARM::RecoveryServices::Api_2016_06_01::Models::NameInfo
      ResourceCertificateAndAadDetails = Azure::ARM::RecoveryServices::Api_2016_06_01::Models::ResourceCertificateAndAadDetails
      ResourceCertificateAndAcsDetails = Azure::ARM::RecoveryServices::Api_2016_06_01::Models::ResourceCertificateAndAcsDetails
      AuthType = Azure::ARM::RecoveryServices::Api_2016_06_01::Models::AuthType
      UsagesUnit = Azure::ARM::RecoveryServices::Api_2016_06_01::Models::UsagesUnit
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
      attr_reader :vault_certificates, :registered_identities, :replication_usages, :vaults, :operations, :vault_extended_info_operations, :usages, :backup_vault_configs, :backup_storage_configs, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        client_0 = Azure::ARM::RecoveryServices::Api_2016_06_01::RecoveryServicesClient.new(configurable.credentials, base_url, options)
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

        client_1 = Azure::ARM::RecoveryServices::Api_2016_12_01::RecoveryServicesBackupClient.new(configurable.credentials, base_url, options)
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
            client = Azure::ARM::RecoveryServices::Api_2016_06_01::RecoveryServicesClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          when '2016-12-01'
            client = Azure::ARM::RecoveryServices::Api_2016_12_01::RecoveryServicesBackupClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def client_discovery_for_properties
          Azure::ARM::RecoveryServices::Api_2016_06_01::Models::ClientDiscoveryForProperties
        end
        def client_discovery_value_for_single_api
          Azure::ARM::RecoveryServices::Api_2016_06_01::Models::ClientDiscoveryValueForSingleApi
        end
        def certificate_request
          Azure::ARM::RecoveryServices::Api_2016_06_01::Models::CertificateRequest
        end
        def client_discovery_response
          Azure::ARM::RecoveryServices::Api_2016_06_01::Models::ClientDiscoveryResponse
        end
        def raw_certificate_data
          Azure::ARM::RecoveryServices::Api_2016_06_01::Models::RawCertificateData
        end
        def resource_certificate_details
          Azure::ARM::RecoveryServices::Api_2016_06_01::Models::ResourceCertificateDetails
        end
        def vault_list
          Azure::ARM::RecoveryServices::Api_2016_06_01::Models::VaultList
        end
        def jobs_summary
          Azure::ARM::RecoveryServices::Api_2016_06_01::Models::JobsSummary
        end
        def replication_usage
          Azure::ARM::RecoveryServices::Api_2016_06_01::Models::ReplicationUsage
        end
        def client_discovery_display
          Azure::ARM::RecoveryServices::Api_2016_06_01::Models::ClientDiscoveryDisplay
        end
        def client_discovery_for_service_specification
          Azure::ARM::RecoveryServices::Api_2016_06_01::Models::ClientDiscoveryForServiceSpecification
        end
        def vault_usage_list
          Azure::ARM::RecoveryServices::Api_2016_06_01::Models::VaultUsageList
        end
        def monitoring_summary
          Azure::ARM::RecoveryServices::Api_2016_06_01::Models::MonitoringSummary
        end
        def client_discovery_for_log_specification
          Azure::ARM::RecoveryServices::Api_2016_06_01::Models::ClientDiscoveryForLogSpecification
        end
        def replication_usage_list
          Azure::ARM::RecoveryServices::Api_2016_06_01::Models::ReplicationUsageList
        end
        def vault_usage
          Azure::ARM::RecoveryServices::Api_2016_06_01::Models::VaultUsage
        end
        def vault_certificate_response
          Azure::ARM::RecoveryServices::Api_2016_06_01::Models::VaultCertificateResponse
        end
        def name_info
          Azure::ARM::RecoveryServices::Api_2016_06_01::Models::NameInfo
        end
        def resource_certificate_and_aad_details
          Azure::ARM::RecoveryServices::Api_2016_06_01::Models::ResourceCertificateAndAadDetails
        end
        def resource_certificate_and_acs_details
          Azure::ARM::RecoveryServices::Api_2016_06_01::Models::ResourceCertificateAndAcsDetails
        end
        def auth_type
          Azure::ARM::RecoveryServices::Api_2016_06_01::Models::AuthType
        end
        def usages_unit
          Azure::ARM::RecoveryServices::Api_2016_06_01::Models::UsagesUnit
        end
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
