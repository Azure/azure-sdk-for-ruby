# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_recovery_services'

module Azure::Profiles::Latest
  module RecoveryServices
    module Mgmt
      VaultCertificates = Azure::RecoveryServices::Mgmt::V2016_06_01::VaultCertificates
      RegisteredIdentities = Azure::RecoveryServices::Mgmt::V2016_06_01::RegisteredIdentities
      ReplicationUsages = Azure::RecoveryServices::Mgmt::V2016_06_01::ReplicationUsages
      Operations = Azure::RecoveryServices::Mgmt::V2016_06_01::Operations
      Vaults = Azure::RecoveryServices::Mgmt::V2016_06_01::Vaults
      VaultExtendedInfoOperations = Azure::RecoveryServices::Mgmt::V2016_06_01::VaultExtendedInfoOperations
      Usages = Azure::RecoveryServices::Mgmt::V2016_06_01::Usages

      module Models
        Sku = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::Sku
        TrackedResource = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::TrackedResource
        ClientDiscoveryValueForSingleApi = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryValueForSingleApi
        ClientDiscoveryResponse = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryResponse
        CertificateRequest = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::CertificateRequest
        ClientDiscoveryForProperties = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryForProperties
        RawCertificateData = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::RawCertificateData
        Resource = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::Resource
        VaultCertificateResponse = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultCertificateResponse
        JobsSummary = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::JobsSummary
        VaultList = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultList
        ReplicationUsage = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ReplicationUsage
        ClientDiscoveryForServiceSpecification = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryForServiceSpecification
        VaultUsageList = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultUsageList
        MonitoringSummary = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::MonitoringSummary
        VaultUsage = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultUsage
        ClientDiscoveryForLogSpecification = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryForLogSpecification
        UpgradeDetails = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::UpgradeDetails
        ReplicationUsageList = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ReplicationUsageList
        ResourceCertificateDetails = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ResourceCertificateDetails
        VaultProperties = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultProperties
        NameInfo = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::NameInfo
        ResourceCertificateAndAadDetails = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ResourceCertificateAndAadDetails
        ResourceCertificateAndAcsDetails = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ResourceCertificateAndAcsDetails
        PatchTrackedResource = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::PatchTrackedResource
        PatchVault = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::PatchVault
        ClientDiscoveryDisplay = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryDisplay
        AuthType = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::AuthType
        VaultExtendedInfoResource = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultExtendedInfoResource
        TriggerType = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::TriggerType
        VaultUpgradeState = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultUpgradeState
        UsagesUnit = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::UsagesUnit
        Vault = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::Vault
        SkuName = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::SkuName
      end

      class RecoveryServicesManagementClass
        attr_reader :vault_certificates, :registered_identities, :replication_usages, :operations, :vaults, :vault_extended_info_operations, :usages, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::RecoveryServices::Mgmt::V2016_06_01::RecoveryServicesClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @vault_certificates = @client_0.vault_certificates
          @registered_identities = @client_0.registered_identities
          @replication_usages = @client_0.replication_usages
          @operations = @client_0.operations
          @vaults = @client_0.vaults
          @vault_extended_info_operations = @client_0.vault_extended_info_operations
          @usages = @client_0.usages

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/RecoveryServices/Mgmt"
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
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::Sku
          end
          def tracked_resource
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::TrackedResource
          end
          def client_discovery_value_for_single_api
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryValueForSingleApi
          end
          def client_discovery_response
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryResponse
          end
          def certificate_request
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::CertificateRequest
          end
          def client_discovery_for_properties
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryForProperties
          end
          def raw_certificate_data
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::RawCertificateData
          end
          def resource
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::Resource
          end
          def vault_certificate_response
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultCertificateResponse
          end
          def jobs_summary
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::JobsSummary
          end
          def vault_list
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultList
          end
          def replication_usage
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ReplicationUsage
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
          def vault_usage
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultUsage
          end
          def client_discovery_for_log_specification
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryForLogSpecification
          end
          def upgrade_details
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::UpgradeDetails
          end
          def replication_usage_list
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ReplicationUsageList
          end
          def resource_certificate_details
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ResourceCertificateDetails
          end
          def vault_properties
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultProperties
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
          def patch_tracked_resource
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::PatchTrackedResource
          end
          def patch_vault
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::PatchVault
          end
          def client_discovery_display
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryDisplay
          end
          def auth_type
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::AuthType
          end
          def vault_extended_info_resource
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultExtendedInfoResource
          end
          def trigger_type
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::TriggerType
          end
          def vault_upgrade_state
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultUpgradeState
          end
          def usages_unit
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::UsagesUnit
          end
          def vault
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::Vault
          end
          def sku_name
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::SkuName
          end
        end
      end
    end
  end
end
