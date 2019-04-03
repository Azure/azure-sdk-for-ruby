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
      RecoveryServices = Azure::RecoveryServices::Mgmt::V2016_06_01::RecoveryServices
      Usages = Azure::RecoveryServices::Mgmt::V2016_06_01::Usages

      module Models
        Sku = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::Sku
        TrackedResource = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::TrackedResource
        ClientDiscoveryForProperties = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryForProperties
        RawCertificateData = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::RawCertificateData
        ClientDiscoveryValueForSingleApi = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryValueForSingleApi
        ClientDiscoveryDisplay = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryDisplay
        ClientDiscoveryForLogSpecification = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryForLogSpecification
        Resource = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::Resource
        ResourceCertificateDetails = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ResourceCertificateDetails
        ClientDiscoveryForServiceSpecification = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryForServiceSpecification
        JobsSummary = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::JobsSummary
        CertificateRequest = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::CertificateRequest
        ReplicationUsage = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ReplicationUsage
        ClientDiscoveryResponse = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryResponse
        VaultUsageList = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultUsageList
        VaultCertificateResponse = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultCertificateResponse
        ReplicationUsageList = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ReplicationUsageList
        NameInfo = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::NameInfo
        VaultList = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultList
        UpgradeDetails = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::UpgradeDetails
        MonitoringSummary = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::MonitoringSummary
        CheckNameAvailabilityParameters = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::CheckNameAvailabilityParameters
        VaultUsage = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultUsage
        VaultProperties = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultProperties
        ResourceCertificateAndAadDetails = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ResourceCertificateAndAadDetails
        ResourceCertificateAndAcsDetails = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ResourceCertificateAndAcsDetails
        CheckNameAvailabilityResult = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::CheckNameAvailabilityResult
        PatchTrackedResource = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::PatchTrackedResource
        PatchVault = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::PatchVault
        CheckNameAvailabilityResultResource = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::CheckNameAvailabilityResultResource
        AuthType = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::AuthType
        VaultUpgradeState = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultUpgradeState
        VaultExtendedInfoResource = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultExtendedInfoResource
        Vault = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::Vault
        SkuName = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::SkuName
        TriggerType = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::TriggerType
        UsagesUnit = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::UsagesUnit
      end

      class RecoveryServicesManagementClass
        attr_reader :vault_certificates, :registered_identities, :replication_usages, :operations, :vaults, :vault_extended_info_operations, :recovery_services, :usages, :configurable, :base_url, :options, :model_classes

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
          @recovery_services = @client_0.recovery_services
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
          def client_discovery_for_properties
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryForProperties
          end
          def raw_certificate_data
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::RawCertificateData
          end
          def client_discovery_value_for_single_api
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryValueForSingleApi
          end
          def client_discovery_display
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryDisplay
          end
          def client_discovery_for_log_specification
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryForLogSpecification
          end
          def resource
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::Resource
          end
          def resource_certificate_details
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ResourceCertificateDetails
          end
          def client_discovery_for_service_specification
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryForServiceSpecification
          end
          def jobs_summary
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::JobsSummary
          end
          def certificate_request
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::CertificateRequest
          end
          def replication_usage
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ReplicationUsage
          end
          def client_discovery_response
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryResponse
          end
          def vault_usage_list
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultUsageList
          end
          def vault_certificate_response
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultCertificateResponse
          end
          def replication_usage_list
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ReplicationUsageList
          end
          def name_info
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::NameInfo
          end
          def vault_list
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultList
          end
          def upgrade_details
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::UpgradeDetails
          end
          def monitoring_summary
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::MonitoringSummary
          end
          def check_name_availability_parameters
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::CheckNameAvailabilityParameters
          end
          def vault_usage
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultUsage
          end
          def vault_properties
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultProperties
          end
          def resource_certificate_and_aad_details
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ResourceCertificateAndAadDetails
          end
          def resource_certificate_and_acs_details
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ResourceCertificateAndAcsDetails
          end
          def check_name_availability_result
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::CheckNameAvailabilityResult
          end
          def patch_tracked_resource
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::PatchTrackedResource
          end
          def patch_vault
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::PatchVault
          end
          def check_name_availability_result_resource
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::CheckNameAvailabilityResultResource
          end
          def auth_type
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::AuthType
          end
          def vault_upgrade_state
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultUpgradeState
          end
          def vault_extended_info_resource
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultExtendedInfoResource
          end
          def vault
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::Vault
          end
          def sku_name
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::SkuName
          end
          def trigger_type
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::TriggerType
          end
          def usages_unit
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::UsagesUnit
          end
        end
      end
    end
  end
end
