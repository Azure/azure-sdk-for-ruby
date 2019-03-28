# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_recovery_services'

module Azure::RecoveryServices::Profiles::Latest
  module Mgmt
    ReplicationUsages = Azure::RecoveryServices::Mgmt::V2016_06_01::ReplicationUsages
    Vaults = Azure::RecoveryServices::Mgmt::V2016_06_01::Vaults
    Operations = Azure::RecoveryServices::Mgmt::V2016_06_01::Operations
    VaultExtendedInfoOperations = Azure::RecoveryServices::Mgmt::V2016_06_01::VaultExtendedInfoOperations
    Usages = Azure::RecoveryServices::Mgmt::V2016_06_01::Usages
    RecoveryServices = Azure::RecoveryServices::Mgmt::V2016_06_01::RecoveryServices
    VaultCertificates = Azure::RecoveryServices::Mgmt::V2016_06_01::VaultCertificates
    RegisteredIdentities = Azure::RecoveryServices::Mgmt::V2016_06_01::RegisteredIdentities

    module Models
      ClientDiscoveryValueForSingleApi = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryValueForSingleApi
      RawCertificateData = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::RawCertificateData
      ClientDiscoveryResponse = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryResponse
      ClientDiscoveryForLogSpecification = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryForLogSpecification
      ClientDiscoveryForServiceSpecification = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryForServiceSpecification
      ResourceCertificateDetails = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ResourceCertificateDetails
      ClientDiscoveryForProperties = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryForProperties
      JobsSummary = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::JobsSummary
      CertificateRequest = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::CertificateRequest
      ReplicationUsage = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ReplicationUsage
      VaultUsage = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultUsage
      CheckNameAvailabilityResult = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::CheckNameAvailabilityResult
      Resource = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::Resource
      ClientDiscoveryDisplay = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryDisplay
      ResourceNameAvailabilityParameters = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ResourceNameAvailabilityParameters
      VaultCertificateResponse = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultCertificateResponse
      Sku = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::Sku
      ReplicationUsageList = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ReplicationUsageList
      NameInfo = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::NameInfo
      VaultList = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultList
      VaultUsageList = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultUsageList
      UpgradeDetails = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::UpgradeDetails
      MonitoringSummary = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::MonitoringSummary
      VaultProperties = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultProperties
      ResourceCertificateAndAadDetails = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ResourceCertificateAndAadDetails
      ResourceCertificateAndAcsDetails = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ResourceCertificateAndAcsDetails
      CheckNameAvailabilityResultResource = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::CheckNameAvailabilityResultResource
      TrackedResource = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::TrackedResource
      PatchTrackedResource = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::PatchTrackedResource
      Vault = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::Vault
      PatchVault = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::PatchVault
      VaultExtendedInfoResource = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultExtendedInfoResource
      AuthType = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::AuthType
      SkuName = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::SkuName
      VaultUpgradeState = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultUpgradeState
      TriggerType = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::TriggerType
      UsagesUnit = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::UsagesUnit
    end

    #
    # RecoveryServicesManagementClass
    #
    class RecoveryServicesManagementClass
      attr_reader :replication_usages, :vaults, :operations, :vault_extended_info_operations, :usages, :recovery_services, :vault_certificates, :registered_identities, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        if options.is_a?(Hash) && options.length == 0
          @options = setup_default_options
        else
          @options = options
        end

        reset!(options)

        @configurable = self
        @base_url = options[:base_url].nil? ? nil:options[:base_url]
        @options = options[:options].nil? ? nil:options[:options]

        @client_0 = Azure::RecoveryServices::Mgmt::V2016_06_01::RecoveryServicesClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @replication_usages = @client_0.replication_usages
        @vaults = @client_0.vaults
        @operations = @client_0.operations
        @vault_extended_info_operations = @client_0.vault_extended_info_operations
        @usages = @client_0.usages
        @recovery_services = @client_0.recovery_services
        @vault_certificates = @client_0.vault_certificates
        @registered_identities = @client_0.registered_identities

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/RecoveryServices/Mgmt'
        client.add_user_agent_information(profile_information)
      end

      def method_missing(method, *args)
        if @client_0.respond_to?method
          @client_0.send(method, *args)
        else
          super
        end
      end

    end

    class ModelClasses
      def client_discovery_value_for_single_api
        Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryValueForSingleApi
      end
      def raw_certificate_data
        Azure::RecoveryServices::Mgmt::V2016_06_01::Models::RawCertificateData
      end
      def client_discovery_response
        Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryResponse
      end
      def client_discovery_for_log_specification
        Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryForLogSpecification
      end
      def client_discovery_for_service_specification
        Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryForServiceSpecification
      end
      def resource_certificate_details
        Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ResourceCertificateDetails
      end
      def client_discovery_for_properties
        Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryForProperties
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
      def vault_usage
        Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultUsage
      end
      def check_name_availability_result
        Azure::RecoveryServices::Mgmt::V2016_06_01::Models::CheckNameAvailabilityResult
      end
      def resource
        Azure::RecoveryServices::Mgmt::V2016_06_01::Models::Resource
      end
      def client_discovery_display
        Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryDisplay
      end
      def resource_name_availability_parameters
        Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ResourceNameAvailabilityParameters
      end
      def vault_certificate_response
        Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultCertificateResponse
      end
      def sku
        Azure::RecoveryServices::Mgmt::V2016_06_01::Models::Sku
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
      def vault_usage_list
        Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultUsageList
      end
      def upgrade_details
        Azure::RecoveryServices::Mgmt::V2016_06_01::Models::UpgradeDetails
      end
      def monitoring_summary
        Azure::RecoveryServices::Mgmt::V2016_06_01::Models::MonitoringSummary
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
      def check_name_availability_result_resource
        Azure::RecoveryServices::Mgmt::V2016_06_01::Models::CheckNameAvailabilityResultResource
      end
      def tracked_resource
        Azure::RecoveryServices::Mgmt::V2016_06_01::Models::TrackedResource
      end
      def patch_tracked_resource
        Azure::RecoveryServices::Mgmt::V2016_06_01::Models::PatchTrackedResource
      end
      def vault
        Azure::RecoveryServices::Mgmt::V2016_06_01::Models::Vault
      end
      def patch_vault
        Azure::RecoveryServices::Mgmt::V2016_06_01::Models::PatchVault
      end
      def vault_extended_info_resource
        Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultExtendedInfoResource
      end
      def auth_type
        Azure::RecoveryServices::Mgmt::V2016_06_01::Models::AuthType
      end
      def sku_name
        Azure::RecoveryServices::Mgmt::V2016_06_01::Models::SkuName
      end
      def vault_upgrade_state
        Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultUpgradeState
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
