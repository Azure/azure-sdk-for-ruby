# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_storagecache'

module Azure::StorageCache::Profiles::Latest
  module Mgmt
    Operations = Azure::StorageCache::Mgmt::V2020_10_01::Operations
    Skus = Azure::StorageCache::Mgmt::V2020_10_01::Skus
    UsageModels = Azure::StorageCache::Mgmt::V2020_10_01::UsageModels
    AscOperations = Azure::StorageCache::Mgmt::V2020_10_01::AscOperations
    Caches = Azure::StorageCache::Mgmt::V2020_10_01::Caches
    StorageTargets = Azure::StorageCache::Mgmt::V2020_10_01::StorageTargets

    module Models
      CacheUsernameDownloadSettingsCredentials = Azure::StorageCache::Mgmt::V2020_10_01::Models::CacheUsernameDownloadSettingsCredentials
      CacheUsernameDownloadSettings = Azure::StorageCache::Mgmt::V2020_10_01::Models::CacheUsernameDownloadSettings
      MetricDimension = Azure::StorageCache::Mgmt::V2020_10_01::Models::MetricDimension
      CacheDirectorySettings = Azure::StorageCache::Mgmt::V2020_10_01::Models::CacheDirectorySettings
      ApiOperationPropertiesServiceSpecification = Azure::StorageCache::Mgmt::V2020_10_01::Models::ApiOperationPropertiesServiceSpecification
      CacheSku = Azure::StorageCache::Mgmt::V2020_10_01::Models::CacheSku
      ApiOperationListResult = Azure::StorageCache::Mgmt::V2020_10_01::Models::ApiOperationListResult
      Cache = Azure::StorageCache::Mgmt::V2020_10_01::Models::Cache
      CachesListResult = Azure::StorageCache::Mgmt::V2020_10_01::Models::CachesListResult
      AscOperation = Azure::StorageCache::Mgmt::V2020_10_01::Models::AscOperation
      NamespaceJunction = Azure::StorageCache::Mgmt::V2020_10_01::Models::NamespaceJunction
      SystemData = Azure::StorageCache::Mgmt::V2020_10_01::Models::SystemData
      Nfs3Target = Azure::StorageCache::Mgmt::V2020_10_01::Models::Nfs3Target
      CacheUpgradeStatus = Azure::StorageCache::Mgmt::V2020_10_01::Models::CacheUpgradeStatus
      ClfsTarget = Azure::StorageCache::Mgmt::V2020_10_01::Models::ClfsTarget
      KeyVaultKeyReferenceSourceVault = Azure::StorageCache::Mgmt::V2020_10_01::Models::KeyVaultKeyReferenceSourceVault
      UnknownTarget = Azure::StorageCache::Mgmt::V2020_10_01::Models::UnknownTarget
      CacheEncryptionSettings = Azure::StorageCache::Mgmt::V2020_10_01::Models::CacheEncryptionSettings
      StorageTargetProperties = Azure::StorageCache::Mgmt::V2020_10_01::Models::StorageTargetProperties
      NfsAccessPolicy = Azure::StorageCache::Mgmt::V2020_10_01::Models::NfsAccessPolicy
      NfsAccessRule = Azure::StorageCache::Mgmt::V2020_10_01::Models::NfsAccessRule
      CacheActiveDirectorySettingsCredentials = Azure::StorageCache::Mgmt::V2020_10_01::Models::CacheActiveDirectorySettingsCredentials
      CacheSecuritySettings = Azure::StorageCache::Mgmt::V2020_10_01::Models::CacheSecuritySettings
      ApiOperationDisplay = Azure::StorageCache::Mgmt::V2020_10_01::Models::ApiOperationDisplay
      UsageModelsResult = Azure::StorageCache::Mgmt::V2020_10_01::Models::UsageModelsResult
      ApiOperation = Azure::StorageCache::Mgmt::V2020_10_01::Models::ApiOperation
      StorageTargetResource = Azure::StorageCache::Mgmt::V2020_10_01::Models::StorageTargetResource
      ErrorResponse = Azure::StorageCache::Mgmt::V2020_10_01::Models::ErrorResponse
      UsageModel = Azure::StorageCache::Mgmt::V2020_10_01::Models::UsageModel
      CacheHealth = Azure::StorageCache::Mgmt::V2020_10_01::Models::CacheHealth
      UsageModelDisplay = Azure::StorageCache::Mgmt::V2020_10_01::Models::UsageModelDisplay
      KeyVaultKeyReference = Azure::StorageCache::Mgmt::V2020_10_01::Models::KeyVaultKeyReference
      StorageTargetsResult = Azure::StorageCache::Mgmt::V2020_10_01::Models::StorageTargetsResult
      MetricSpecification = Azure::StorageCache::Mgmt::V2020_10_01::Models::MetricSpecification
      ResourceSkuCapabilities = Azure::StorageCache::Mgmt::V2020_10_01::Models::ResourceSkuCapabilities
      CacheIdentity = Azure::StorageCache::Mgmt::V2020_10_01::Models::CacheIdentity
      ResourceSkuLocationInfo = Azure::StorageCache::Mgmt::V2020_10_01::Models::ResourceSkuLocationInfo
      CacheActiveDirectorySettings = Azure::StorageCache::Mgmt::V2020_10_01::Models::CacheActiveDirectorySettings
      Restriction = Azure::StorageCache::Mgmt::V2020_10_01::Models::Restriction
      CacheNetworkSettings = Azure::StorageCache::Mgmt::V2020_10_01::Models::CacheNetworkSettings
      ResourceSku = Azure::StorageCache::Mgmt::V2020_10_01::Models::ResourceSku
      CloudErrorBody = Azure::StorageCache::Mgmt::V2020_10_01::Models::CloudErrorBody
      ResourceSkusResult = Azure::StorageCache::Mgmt::V2020_10_01::Models::ResourceSkusResult
      StorageTarget = Azure::StorageCache::Mgmt::V2020_10_01::Models::StorageTarget
      Nfs3TargetProperties = Azure::StorageCache::Mgmt::V2020_10_01::Models::Nfs3TargetProperties
      ClfsTargetProperties = Azure::StorageCache::Mgmt::V2020_10_01::Models::ClfsTargetProperties
      UnknownTargetProperties = Azure::StorageCache::Mgmt::V2020_10_01::Models::UnknownTargetProperties
      MetricAggregationType = Azure::StorageCache::Mgmt::V2020_10_01::Models::MetricAggregationType
      CacheIdentityType = Azure::StorageCache::Mgmt::V2020_10_01::Models::CacheIdentityType
      CreatedByType = Azure::StorageCache::Mgmt::V2020_10_01::Models::CreatedByType
      HealthStateType = Azure::StorageCache::Mgmt::V2020_10_01::Models::HealthStateType
      ProvisioningStateType = Azure::StorageCache::Mgmt::V2020_10_01::Models::ProvisioningStateType
      FirmwareStatusType = Azure::StorageCache::Mgmt::V2020_10_01::Models::FirmwareStatusType
      NfsAccessRuleScope = Azure::StorageCache::Mgmt::V2020_10_01::Models::NfsAccessRuleScope
      NfsAccessRuleAccess = Azure::StorageCache::Mgmt::V2020_10_01::Models::NfsAccessRuleAccess
      DomainJoinedType = Azure::StorageCache::Mgmt::V2020_10_01::Models::DomainJoinedType
      UsernameSource = Azure::StorageCache::Mgmt::V2020_10_01::Models::UsernameSource
      UsernameDownloadedType = Azure::StorageCache::Mgmt::V2020_10_01::Models::UsernameDownloadedType
      ReasonCode = Azure::StorageCache::Mgmt::V2020_10_01::Models::ReasonCode
    end

    #
    # StorageCacheManagementClass
    #
    class StorageCacheManagementClass
      attr_reader :operations, :skus, :usage_models, :asc_operations, :caches, :storage_targets, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::StorageCache::Mgmt::V2020_10_01::StorageCacheManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @operations = @client_0.operations
        @skus = @client_0.skus
        @usage_models = @client_0.usage_models
        @asc_operations = @client_0.asc_operations
        @caches = @client_0.caches
        @storage_targets = @client_0.storage_targets

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/StorageCache/Mgmt'
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
      def cache_username_download_settings_credentials
        Azure::StorageCache::Mgmt::V2020_10_01::Models::CacheUsernameDownloadSettingsCredentials
      end
      def cache_username_download_settings
        Azure::StorageCache::Mgmt::V2020_10_01::Models::CacheUsernameDownloadSettings
      end
      def metric_dimension
        Azure::StorageCache::Mgmt::V2020_10_01::Models::MetricDimension
      end
      def cache_directory_settings
        Azure::StorageCache::Mgmt::V2020_10_01::Models::CacheDirectorySettings
      end
      def api_operation_properties_service_specification
        Azure::StorageCache::Mgmt::V2020_10_01::Models::ApiOperationPropertiesServiceSpecification
      end
      def cache_sku
        Azure::StorageCache::Mgmt::V2020_10_01::Models::CacheSku
      end
      def api_operation_list_result
        Azure::StorageCache::Mgmt::V2020_10_01::Models::ApiOperationListResult
      end
      def cache
        Azure::StorageCache::Mgmt::V2020_10_01::Models::Cache
      end
      def caches_list_result
        Azure::StorageCache::Mgmt::V2020_10_01::Models::CachesListResult
      end
      def asc_operation
        Azure::StorageCache::Mgmt::V2020_10_01::Models::AscOperation
      end
      def namespace_junction
        Azure::StorageCache::Mgmt::V2020_10_01::Models::NamespaceJunction
      end
      def system_data
        Azure::StorageCache::Mgmt::V2020_10_01::Models::SystemData
      end
      def nfs3_target
        Azure::StorageCache::Mgmt::V2020_10_01::Models::Nfs3Target
      end
      def cache_upgrade_status
        Azure::StorageCache::Mgmt::V2020_10_01::Models::CacheUpgradeStatus
      end
      def clfs_target
        Azure::StorageCache::Mgmt::V2020_10_01::Models::ClfsTarget
      end
      def key_vault_key_reference_source_vault
        Azure::StorageCache::Mgmt::V2020_10_01::Models::KeyVaultKeyReferenceSourceVault
      end
      def unknown_target
        Azure::StorageCache::Mgmt::V2020_10_01::Models::UnknownTarget
      end
      def cache_encryption_settings
        Azure::StorageCache::Mgmt::V2020_10_01::Models::CacheEncryptionSettings
      end
      def storage_target_properties
        Azure::StorageCache::Mgmt::V2020_10_01::Models::StorageTargetProperties
      end
      def nfs_access_policy
        Azure::StorageCache::Mgmt::V2020_10_01::Models::NfsAccessPolicy
      end
      def nfs_access_rule
        Azure::StorageCache::Mgmt::V2020_10_01::Models::NfsAccessRule
      end
      def cache_active_directory_settings_credentials
        Azure::StorageCache::Mgmt::V2020_10_01::Models::CacheActiveDirectorySettingsCredentials
      end
      def cache_security_settings
        Azure::StorageCache::Mgmt::V2020_10_01::Models::CacheSecuritySettings
      end
      def api_operation_display
        Azure::StorageCache::Mgmt::V2020_10_01::Models::ApiOperationDisplay
      end
      def usage_models_result
        Azure::StorageCache::Mgmt::V2020_10_01::Models::UsageModelsResult
      end
      def api_operation
        Azure::StorageCache::Mgmt::V2020_10_01::Models::ApiOperation
      end
      def storage_target_resource
        Azure::StorageCache::Mgmt::V2020_10_01::Models::StorageTargetResource
      end
      def error_response
        Azure::StorageCache::Mgmt::V2020_10_01::Models::ErrorResponse
      end
      def usage_model
        Azure::StorageCache::Mgmt::V2020_10_01::Models::UsageModel
      end
      def cache_health
        Azure::StorageCache::Mgmt::V2020_10_01::Models::CacheHealth
      end
      def usage_model_display
        Azure::StorageCache::Mgmt::V2020_10_01::Models::UsageModelDisplay
      end
      def key_vault_key_reference
        Azure::StorageCache::Mgmt::V2020_10_01::Models::KeyVaultKeyReference
      end
      def storage_targets_result
        Azure::StorageCache::Mgmt::V2020_10_01::Models::StorageTargetsResult
      end
      def metric_specification
        Azure::StorageCache::Mgmt::V2020_10_01::Models::MetricSpecification
      end
      def resource_sku_capabilities
        Azure::StorageCache::Mgmt::V2020_10_01::Models::ResourceSkuCapabilities
      end
      def cache_identity
        Azure::StorageCache::Mgmt::V2020_10_01::Models::CacheIdentity
      end
      def resource_sku_location_info
        Azure::StorageCache::Mgmt::V2020_10_01::Models::ResourceSkuLocationInfo
      end
      def cache_active_directory_settings
        Azure::StorageCache::Mgmt::V2020_10_01::Models::CacheActiveDirectorySettings
      end
      def restriction
        Azure::StorageCache::Mgmt::V2020_10_01::Models::Restriction
      end
      def cache_network_settings
        Azure::StorageCache::Mgmt::V2020_10_01::Models::CacheNetworkSettings
      end
      def resource_sku
        Azure::StorageCache::Mgmt::V2020_10_01::Models::ResourceSku
      end
      def cloud_error_body
        Azure::StorageCache::Mgmt::V2020_10_01::Models::CloudErrorBody
      end
      def resource_skus_result
        Azure::StorageCache::Mgmt::V2020_10_01::Models::ResourceSkusResult
      end
      def storage_target
        Azure::StorageCache::Mgmt::V2020_10_01::Models::StorageTarget
      end
      def nfs3_target_properties
        Azure::StorageCache::Mgmt::V2020_10_01::Models::Nfs3TargetProperties
      end
      def clfs_target_properties
        Azure::StorageCache::Mgmt::V2020_10_01::Models::ClfsTargetProperties
      end
      def unknown_target_properties
        Azure::StorageCache::Mgmt::V2020_10_01::Models::UnknownTargetProperties
      end
      def metric_aggregation_type
        Azure::StorageCache::Mgmt::V2020_10_01::Models::MetricAggregationType
      end
      def cache_identity_type
        Azure::StorageCache::Mgmt::V2020_10_01::Models::CacheIdentityType
      end
      def created_by_type
        Azure::StorageCache::Mgmt::V2020_10_01::Models::CreatedByType
      end
      def health_state_type
        Azure::StorageCache::Mgmt::V2020_10_01::Models::HealthStateType
      end
      def provisioning_state_type
        Azure::StorageCache::Mgmt::V2020_10_01::Models::ProvisioningStateType
      end
      def firmware_status_type
        Azure::StorageCache::Mgmt::V2020_10_01::Models::FirmwareStatusType
      end
      def nfs_access_rule_scope
        Azure::StorageCache::Mgmt::V2020_10_01::Models::NfsAccessRuleScope
      end
      def nfs_access_rule_access
        Azure::StorageCache::Mgmt::V2020_10_01::Models::NfsAccessRuleAccess
      end
      def domain_joined_type
        Azure::StorageCache::Mgmt::V2020_10_01::Models::DomainJoinedType
      end
      def username_source
        Azure::StorageCache::Mgmt::V2020_10_01::Models::UsernameSource
      end
      def username_downloaded_type
        Azure::StorageCache::Mgmt::V2020_10_01::Models::UsernameDownloadedType
      end
      def reason_code
        Azure::StorageCache::Mgmt::V2020_10_01::Models::ReasonCode
      end
    end
  end
end
