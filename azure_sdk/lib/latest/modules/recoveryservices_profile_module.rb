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
      PrivateLinkResourcesOperations = Azure::RecoveryServices::Mgmt::V2016_06_01::PrivateLinkResourcesOperations
      RecoveryServices = Azure::RecoveryServices::Mgmt::V2016_06_01::RecoveryServices
      Vaults = Azure::RecoveryServices::Mgmt::V2016_06_01::Vaults
      Operations = Azure::RecoveryServices::Mgmt::V2016_06_01::Operations
      VaultExtendedInfoOperations = Azure::RecoveryServices::Mgmt::V2016_06_01::VaultExtendedInfoOperations
      Usages = Azure::RecoveryServices::Mgmt::V2016_06_01::Usages

      module Models
        Sku = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::Sku
        RawCertificateData = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::RawCertificateData
        ClientDiscoveryResponse = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryResponse
        Resource = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::Resource
        PrivateLinkResource = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::PrivateLinkResource
        ResourceCertificateDetails = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ResourceCertificateDetails
        CertificateRequest = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::CertificateRequest
        JobsSummary = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::JobsSummary
        ReplicationUsage = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ReplicationUsage
        VaultUsageList = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultUsageList
        CheckNameAvailabilityParameters = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::CheckNameAvailabilityParameters
        UpgradeDetails = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::UpgradeDetails
        ClientDiscoveryDisplay = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryDisplay
        IdentityData = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::IdentityData
        ClientDiscoveryForServiceSpecification = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryForServiceSpecification
        PrivateEndpoint = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::PrivateEndpoint
        ClientDiscoveryValueForSingleApi = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryValueForSingleApi
        PrivateLinkServiceConnectionState = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::PrivateLinkServiceConnectionState
        VaultCertificateResponse = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultCertificateResponse
        PrivateEndpointConnection = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::PrivateEndpointConnection
        ReplicationUsageList = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ReplicationUsageList
        PrivateEndpointConnectionVaultProperties = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::PrivateEndpointConnectionVaultProperties
        ClientDiscoveryForLogSpecification = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryForLogSpecification
        VaultProperties = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultProperties
        VaultList = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultList
        MonitoringSummary = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::MonitoringSummary
        VaultUsage = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultUsage
        ClientDiscoveryForProperties = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryForProperties
        NameInfo = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::NameInfo
        CheckNameAvailabilityResult = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::CheckNameAvailabilityResult
        PrivateLinkResources = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::PrivateLinkResources
        ResourceCertificateAndAadDetails = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ResourceCertificateAndAadDetails
        ResourceCertificateAndAcsDetails = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ResourceCertificateAndAcsDetails
        TrackedResource = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::TrackedResource
        PatchTrackedResource = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::PatchTrackedResource
        Vault = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::Vault
        PatchVault = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::PatchVault
        VaultExtendedInfoResource = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultExtendedInfoResource
        AuthType = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::AuthType
        SkuName = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::SkuName
        VaultUpgradeState = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultUpgradeState
        TriggerType = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::TriggerType
        ResourceIdentityType = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ResourceIdentityType
        ProvisioningState = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ProvisioningState
        PrivateEndpointConnectionStatus = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::PrivateEndpointConnectionStatus
        VaultPrivateEndpointState = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultPrivateEndpointState
        UsagesUnit = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::UsagesUnit
      end

      class RecoveryServicesManagementClass
        attr_reader :vault_certificates, :registered_identities, :replication_usages, :private_link_resources_operations, :recovery_services, :vaults, :operations, :vault_extended_info_operations, :usages, :configurable, :base_url, :options, :model_classes

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
          @private_link_resources_operations = @client_0.private_link_resources_operations
          @recovery_services = @client_0.recovery_services
          @vaults = @client_0.vaults
          @operations = @client_0.operations
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
          def raw_certificate_data
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::RawCertificateData
          end
          def client_discovery_response
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryResponse
          end
          def resource
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::Resource
          end
          def private_link_resource
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::PrivateLinkResource
          end
          def resource_certificate_details
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ResourceCertificateDetails
          end
          def certificate_request
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::CertificateRequest
          end
          def jobs_summary
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::JobsSummary
          end
          def replication_usage
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ReplicationUsage
          end
          def vault_usage_list
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultUsageList
          end
          def check_name_availability_parameters
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::CheckNameAvailabilityParameters
          end
          def upgrade_details
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::UpgradeDetails
          end
          def client_discovery_display
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryDisplay
          end
          def identity_data
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::IdentityData
          end
          def client_discovery_for_service_specification
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryForServiceSpecification
          end
          def private_endpoint
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::PrivateEndpoint
          end
          def client_discovery_value_for_single_api
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryValueForSingleApi
          end
          def private_link_service_connection_state
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::PrivateLinkServiceConnectionState
          end
          def vault_certificate_response
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultCertificateResponse
          end
          def private_endpoint_connection
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::PrivateEndpointConnection
          end
          def replication_usage_list
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ReplicationUsageList
          end
          def private_endpoint_connection_vault_properties
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::PrivateEndpointConnectionVaultProperties
          end
          def client_discovery_for_log_specification
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryForLogSpecification
          end
          def vault_properties
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultProperties
          end
          def vault_list
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultList
          end
          def monitoring_summary
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::MonitoringSummary
          end
          def vault_usage
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultUsage
          end
          def client_discovery_for_properties
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ClientDiscoveryForProperties
          end
          def name_info
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::NameInfo
          end
          def check_name_availability_result
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::CheckNameAvailabilityResult
          end
          def private_link_resources
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::PrivateLinkResources
          end
          def resource_certificate_and_aad_details
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ResourceCertificateAndAadDetails
          end
          def resource_certificate_and_acs_details
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ResourceCertificateAndAcsDetails
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
          def resource_identity_type
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ResourceIdentityType
          end
          def provisioning_state
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::ProvisioningState
          end
          def private_endpoint_connection_status
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::PrivateEndpointConnectionStatus
          end
          def vault_private_endpoint_state
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultPrivateEndpointState
          end
          def usages_unit
            Azure::RecoveryServices::Mgmt::V2016_06_01::Models::UsagesUnit
          end
        end
      end
    end
  end
end
