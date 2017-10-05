# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_recovery_services'


module Azure::Profiles::RecoveryServicesModule::Management::Profile_2016_06_01
  module RecoveryServices
    VaultCertificates = Azure::ARM::RecoveryServices::Api_2016_06_01::VaultCertificates
    RegisteredIdentities = Azure::ARM::RecoveryServices::Api_2016_06_01::RegisteredIdentities
    ReplicationUsages = Azure::ARM::RecoveryServices::Api_2016_06_01::ReplicationUsages
    Vaults = Azure::ARM::RecoveryServices::Api_2016_06_01::Vaults
    Operations = Azure::ARM::RecoveryServices::Api_2016_06_01::Operations
    VaultExtendedInfoOperations = Azure::ARM::RecoveryServices::Api_2016_06_01::VaultExtendedInfoOperations
    Usages = Azure::ARM::RecoveryServices::Api_2016_06_01::Usages
    RecoveryServicesClient = Azure::ARM::RecoveryServices::Api_2016_06_01::RecoveryServicesClient

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
      Resource = Azure::ARM::RecoveryServices::Api_2016_06_01::Models::Resource
      ClientDiscoveryDisplay = Azure::ARM::RecoveryServices::Api_2016_06_01::Models::ClientDiscoveryDisplay
      Sku = Azure::ARM::RecoveryServices::Api_2016_06_01::Models::Sku
      ClientDiscoveryForServiceSpecification = Azure::ARM::RecoveryServices::Api_2016_06_01::Models::ClientDiscoveryForServiceSpecification
      VaultUsageList = Azure::ARM::RecoveryServices::Api_2016_06_01::Models::VaultUsageList
      MonitoringSummary = Azure::ARM::RecoveryServices::Api_2016_06_01::Models::MonitoringSummary
      UpgradeDetails = Azure::ARM::RecoveryServices::Api_2016_06_01::Models::UpgradeDetails
      ClientDiscoveryForLogSpecification = Azure::ARM::RecoveryServices::Api_2016_06_01::Models::ClientDiscoveryForLogSpecification
      VaultProperties = Azure::ARM::RecoveryServices::Api_2016_06_01::Models::VaultProperties
      ReplicationUsageList = Azure::ARM::RecoveryServices::Api_2016_06_01::Models::ReplicationUsageList
      VaultUsage = Azure::ARM::RecoveryServices::Api_2016_06_01::Models::VaultUsage
      VaultCertificateResponse = Azure::ARM::RecoveryServices::Api_2016_06_01::Models::VaultCertificateResponse
      NameInfo = Azure::ARM::RecoveryServices::Api_2016_06_01::Models::NameInfo
      ResourceCertificateAndAadDetails = Azure::ARM::RecoveryServices::Api_2016_06_01::Models::ResourceCertificateAndAadDetails
      ResourceCertificateAndAcsDetails = Azure::ARM::RecoveryServices::Api_2016_06_01::Models::ResourceCertificateAndAcsDetails
      TrackedResource = Azure::ARM::RecoveryServices::Api_2016_06_01::Models::TrackedResource
      Vault = Azure::ARM::RecoveryServices::Api_2016_06_01::Models::Vault
      VaultExtendedInfoResource = Azure::ARM::RecoveryServices::Api_2016_06_01::Models::VaultExtendedInfoResource
      AuthType = Azure::ARM::RecoveryServices::Api_2016_06_01::Models::AuthType
      SkuName = Azure::ARM::RecoveryServices::Api_2016_06_01::Models::SkuName
      VaultUpgradeState = Azure::ARM::RecoveryServices::Api_2016_06_01::Models::VaultUpgradeState
      TriggerType = Azure::ARM::RecoveryServices::Api_2016_06_01::Models::TriggerType
      UsagesUnit = Azure::ARM::RecoveryServices::Api_2016_06_01::Models::UsagesUnit
    end

    #
    # RecoveryServices
    #
    class RecoveryServicesClass
      attr_accessor :vault_certificates, :registered_identities, :replication_usages, :vaults, :operations, :vault_extended_info_operations, :usages, :recovery_services_client, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = .new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.vault_certificates = Azure::ARM::RecoveryServices::Api_2016_06_01::VaultCertificates.new(client)
        self.registered_identities = Azure::ARM::RecoveryServices::Api_2016_06_01::RegisteredIdentities.new(client)
        self.replication_usages = Azure::ARM::RecoveryServices::Api_2016_06_01::ReplicationUsages.new(client)
        self.vaults = Azure::ARM::RecoveryServices::Api_2016_06_01::Vaults.new(client)
        self.operations = Azure::ARM::RecoveryServices::Api_2016_06_01::Operations.new(client)
        self.vault_extended_info_operations = Azure::ARM::RecoveryServices::Api_2016_06_01::VaultExtendedInfoOperations.new(client)
        self.usages = Azure::ARM::RecoveryServices::Api_2016_06_01::Usages.new(client)
        self.recovery_services_client = Azure::ARM::RecoveryServices::Api_2016_06_01::RecoveryServicesClient.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
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
        def resource
          Azure::ARM::RecoveryServices::Api_2016_06_01::Models::Resource
        end
        def client_discovery_display
          Azure::ARM::RecoveryServices::Api_2016_06_01::Models::ClientDiscoveryDisplay
        end
        def sku
          Azure::ARM::RecoveryServices::Api_2016_06_01::Models::Sku
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
        def upgrade_details
          Azure::ARM::RecoveryServices::Api_2016_06_01::Models::UpgradeDetails
        end
        def client_discovery_for_log_specification
          Azure::ARM::RecoveryServices::Api_2016_06_01::Models::ClientDiscoveryForLogSpecification
        end
        def vault_properties
          Azure::ARM::RecoveryServices::Api_2016_06_01::Models::VaultProperties
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
        def tracked_resource
          Azure::ARM::RecoveryServices::Api_2016_06_01::Models::TrackedResource
        end
        def vault
          Azure::ARM::RecoveryServices::Api_2016_06_01::Models::Vault
        end
        def vault_extended_info_resource
          Azure::ARM::RecoveryServices::Api_2016_06_01::Models::VaultExtendedInfoResource
        end
        def auth_type
          Azure::ARM::RecoveryServices::Api_2016_06_01::Models::AuthType
        end
        def sku_name
          Azure::ARM::RecoveryServices::Api_2016_06_01::Models::SkuName
        end
        def vault_upgrade_state
          Azure::ARM::RecoveryServices::Api_2016_06_01::Models::VaultUpgradeState
        end
        def trigger_type
          Azure::ARM::RecoveryServices::Api_2016_06_01::Models::TriggerType
        end
        def usages_unit
          Azure::ARM::RecoveryServices::Api_2016_06_01::Models::UsagesUnit
        end
      end
    end
  end
end
