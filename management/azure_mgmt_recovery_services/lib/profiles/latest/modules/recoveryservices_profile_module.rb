# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_recovery_services'

module Azure::RecoveryServices::Profiles::Latest
  module Mgmt
    VaultCertificates = Azure::RecoveryServices::Mgmt::V2016_06_01::VaultCertificates
    RegisteredIdentities = Azure::RecoveryServices::Mgmt::V2016_06_01::RegisteredIdentities
    ReplicationUsages = Azure::RecoveryServices::Mgmt::V2016_06_01::ReplicationUsages
    CheckResourceNameAvailability = Azure::RecoveryServices::Mgmt::V2016_06_01::CheckResourceNameAvailability
    Vaults = Azure::RecoveryServices::Mgmt::V2016_06_01::Vaults
    Operations = Azure::RecoveryServices::Mgmt::V2016_06_01::Operations
    VaultExtendedInfoOperations = Azure::RecoveryServices::Mgmt::V2016_06_01::VaultExtendedInfoOperations
    Usages = Azure::RecoveryServices::Mgmt::V2016_06_01::Usages

    module Models
      Resource = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::Resource
      RawCertificateData = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::RawCertificateData
      ResourceNameAvailabilityInput = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ResourceNameAvailabilityInput
      ClientDiscoveryForProperties = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryForProperties
      ClientDiscoveryValueForSingleApi = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryValueForSingleApi
      ResourceCertificateDetails = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ResourceCertificateDetails
      ClientDiscoveryResponse = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryResponse
      JobsSummary = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::JobsSummary
      CertificateRequest = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::CertificateRequest
      ReplicationUsage = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ReplicationUsage
      VaultUsageList = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultUsageList
      ClientDiscoveryDisplay = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryDisplay
      ResourceNameAvailabilityResponse = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ResourceNameAvailabilityResponse
      ClientDiscoveryForServiceSpecification = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryForServiceSpecification
      VaultUsage = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultUsage
      VaultCertificateResponse = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultCertificateResponse
      Sku = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::Sku
      ReplicationUsageList = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ReplicationUsageList
      NameInfo = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::NameInfo
      VaultList = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultList
      ClientDiscoveryForLogSpecification = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryForLogSpecification
      UpgradeDetails = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::UpgradeDetails
      MonitoringSummary = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::MonitoringSummary
      VaultProperties = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultProperties
      ResourceCertificateAndAadDetails = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ResourceCertificateAndAadDetails
      ResourceCertificateAndAcsDetails = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ResourceCertificateAndAcsDetails
      ResourceNameAvailabilityResponseResource = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ResourceNameAvailabilityResponseResource
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
      attr_reader :vault_certificates, :registered_identities, :replication_usages, :check_resource_name_availability, :vaults, :operations, :vault_extended_info_operations, :usages, :configurable, :base_url, :options, :model_classes

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
        @vault_certificates = @client_0.vault_certificates
        @registered_identities = @client_0.registered_identities
        @replication_usages = @client_0.replication_usages
        @check_resource_name_availability = @client_0.check_resource_name_availability
        @vaults = @client_0.vaults
        @operations = @client_0.operations
        @vault_extended_info_operations = @client_0.vault_extended_info_operations
        @usages = @client_0.usages

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
      def resource
        Azure::RecoveryServices::Mgmt::V2016_06_01::Models::Resource
      end
      def raw_certificate_data
        Azure::RecoveryServices::Mgmt::V2016_06_01::Models::RawCertificateData
      end
      def resource_name_availability_input
        Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ResourceNameAvailabilityInput
      end
      def client_discovery_for_properties
        Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryForProperties
      end
      def client_discovery_value_for_single_api
        Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryValueForSingleApi
      end
      def resource_certificate_details
        Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ResourceCertificateDetails
      end
      def client_discovery_response
        Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryResponse
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
      def vault_usage_list
        Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultUsageList
      end
      def client_discovery_display
        Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryDisplay
      end
      def resource_name_availability_response
        Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ResourceNameAvailabilityResponse
      end
      def client_discovery_for_service_specification
        Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryForServiceSpecification
      end
      def vault_usage
        Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultUsage
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
      def client_discovery_for_log_specification
        Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryForLogSpecification
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
      def resource_name_availability_response_resource
        Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ResourceNameAvailabilityResponseResource
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
