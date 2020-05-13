# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_storagecache'

module Azure::Profiles::Latest
  module StorageCache
    module Mgmt
      Operations = Azure::StorageCache::Mgmt::V2020_03_01::Operations
      Skus = Azure::StorageCache::Mgmt::V2020_03_01::Skus
      UsageModels = Azure::StorageCache::Mgmt::V2020_03_01::UsageModels
      Caches = Azure::StorageCache::Mgmt::V2020_03_01::Caches
      StorageTargets = Azure::StorageCache::Mgmt::V2020_03_01::StorageTargets

      module Models
        Nfs3Target = Azure::StorageCache::Mgmt::V2020_03_01::Models::Nfs3Target
        ApiOperationDisplay = Azure::StorageCache::Mgmt::V2020_03_01::Models::ApiOperationDisplay
        ClfsTarget = Azure::StorageCache::Mgmt::V2020_03_01::Models::ClfsTarget
        ApiOperationListResult = Azure::StorageCache::Mgmt::V2020_03_01::Models::ApiOperationListResult
        UnknownTarget = Azure::StorageCache::Mgmt::V2020_03_01::Models::UnknownTarget
        StorageTargetProperties = Azure::StorageCache::Mgmt::V2020_03_01::Models::StorageTargetProperties
        CacheHealth = Azure::StorageCache::Mgmt::V2020_03_01::Models::CacheHealth
        CacheIdentity = Azure::StorageCache::Mgmt::V2020_03_01::Models::CacheIdentity
        CacheNetworkSettings = Azure::StorageCache::Mgmt::V2020_03_01::Models::CacheNetworkSettings
        CacheUpgradeStatus = Azure::StorageCache::Mgmt::V2020_03_01::Models::CacheUpgradeStatus
        KeyVaultKeyReference = Azure::StorageCache::Mgmt::V2020_03_01::Models::KeyVaultKeyReference
        UsageModelsResult = Azure::StorageCache::Mgmt::V2020_03_01::Models::UsageModelsResult
        CacheSecuritySettings = Azure::StorageCache::Mgmt::V2020_03_01::Models::CacheSecuritySettings
        StorageTargetResource = Azure::StorageCache::Mgmt::V2020_03_01::Models::StorageTargetResource
        Cache = Azure::StorageCache::Mgmt::V2020_03_01::Models::Cache
        UsageModel = Azure::StorageCache::Mgmt::V2020_03_01::Models::UsageModel
        NamespaceJunction = Azure::StorageCache::Mgmt::V2020_03_01::Models::NamespaceJunction
        UsageModelDisplay = Azure::StorageCache::Mgmt::V2020_03_01::Models::UsageModelDisplay
        CloudErrorBody = Azure::StorageCache::Mgmt::V2020_03_01::Models::CloudErrorBody
        StorageTargetsResult = Azure::StorageCache::Mgmt::V2020_03_01::Models::StorageTargetsResult
        CacheEncryptionSettings = Azure::StorageCache::Mgmt::V2020_03_01::Models::CacheEncryptionSettings
        ResourceSkuCapabilities = Azure::StorageCache::Mgmt::V2020_03_01::Models::ResourceSkuCapabilities
        CachesListResult = Azure::StorageCache::Mgmt::V2020_03_01::Models::CachesListResult
        ResourceSkuLocationInfo = Azure::StorageCache::Mgmt::V2020_03_01::Models::ResourceSkuLocationInfo
        KeyVaultKeyReferenceSourceVault = Azure::StorageCache::Mgmt::V2020_03_01::Models::KeyVaultKeyReferenceSourceVault
        Restriction = Azure::StorageCache::Mgmt::V2020_03_01::Models::Restriction
        ApiOperation = Azure::StorageCache::Mgmt::V2020_03_01::Models::ApiOperation
        ResourceSku = Azure::StorageCache::Mgmt::V2020_03_01::Models::ResourceSku
        CacheSku = Azure::StorageCache::Mgmt::V2020_03_01::Models::CacheSku
        ResourceSkusResult = Azure::StorageCache::Mgmt::V2020_03_01::Models::ResourceSkusResult
        StorageTarget = Azure::StorageCache::Mgmt::V2020_03_01::Models::StorageTarget
        Nfs3TargetProperties = Azure::StorageCache::Mgmt::V2020_03_01::Models::Nfs3TargetProperties
        ClfsTargetProperties = Azure::StorageCache::Mgmt::V2020_03_01::Models::ClfsTargetProperties
        UnknownTargetProperties = Azure::StorageCache::Mgmt::V2020_03_01::Models::UnknownTargetProperties
        CacheIdentityType = Azure::StorageCache::Mgmt::V2020_03_01::Models::CacheIdentityType
        HealthStateType = Azure::StorageCache::Mgmt::V2020_03_01::Models::HealthStateType
        ProvisioningStateType = Azure::StorageCache::Mgmt::V2020_03_01::Models::ProvisioningStateType
        FirmwareStatusType = Azure::StorageCache::Mgmt::V2020_03_01::Models::FirmwareStatusType
        StorageTargetType = Azure::StorageCache::Mgmt::V2020_03_01::Models::StorageTargetType
        ReasonCode = Azure::StorageCache::Mgmt::V2020_03_01::Models::ReasonCode
      end

      class StorageCacheManagementClass
        attr_reader :operations, :skus, :usage_models, :caches, :storage_targets, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::StorageCache::Mgmt::V2020_03_01::StorageCacheManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @operations = @client_0.operations
          @skus = @client_0.skus
          @usage_models = @client_0.usage_models
          @caches = @client_0.caches
          @storage_targets = @client_0.storage_targets

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/StorageCache/Mgmt"
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
          def nfs3_target
            Azure::StorageCache::Mgmt::V2020_03_01::Models::Nfs3Target
          end
          def api_operation_display
            Azure::StorageCache::Mgmt::V2020_03_01::Models::ApiOperationDisplay
          end
          def clfs_target
            Azure::StorageCache::Mgmt::V2020_03_01::Models::ClfsTarget
          end
          def api_operation_list_result
            Azure::StorageCache::Mgmt::V2020_03_01::Models::ApiOperationListResult
          end
          def unknown_target
            Azure::StorageCache::Mgmt::V2020_03_01::Models::UnknownTarget
          end
          def storage_target_properties
            Azure::StorageCache::Mgmt::V2020_03_01::Models::StorageTargetProperties
          end
          def cache_health
            Azure::StorageCache::Mgmt::V2020_03_01::Models::CacheHealth
          end
          def cache_identity
            Azure::StorageCache::Mgmt::V2020_03_01::Models::CacheIdentity
          end
          def cache_network_settings
            Azure::StorageCache::Mgmt::V2020_03_01::Models::CacheNetworkSettings
          end
          def cache_upgrade_status
            Azure::StorageCache::Mgmt::V2020_03_01::Models::CacheUpgradeStatus
          end
          def key_vault_key_reference
            Azure::StorageCache::Mgmt::V2020_03_01::Models::KeyVaultKeyReference
          end
          def usage_models_result
            Azure::StorageCache::Mgmt::V2020_03_01::Models::UsageModelsResult
          end
          def cache_security_settings
            Azure::StorageCache::Mgmt::V2020_03_01::Models::CacheSecuritySettings
          end
          def storage_target_resource
            Azure::StorageCache::Mgmt::V2020_03_01::Models::StorageTargetResource
          end
          def cache
            Azure::StorageCache::Mgmt::V2020_03_01::Models::Cache
          end
          def usage_model
            Azure::StorageCache::Mgmt::V2020_03_01::Models::UsageModel
          end
          def namespace_junction
            Azure::StorageCache::Mgmt::V2020_03_01::Models::NamespaceJunction
          end
          def usage_model_display
            Azure::StorageCache::Mgmt::V2020_03_01::Models::UsageModelDisplay
          end
          def cloud_error_body
            Azure::StorageCache::Mgmt::V2020_03_01::Models::CloudErrorBody
          end
          def storage_targets_result
            Azure::StorageCache::Mgmt::V2020_03_01::Models::StorageTargetsResult
          end
          def cache_encryption_settings
            Azure::StorageCache::Mgmt::V2020_03_01::Models::CacheEncryptionSettings
          end
          def resource_sku_capabilities
            Azure::StorageCache::Mgmt::V2020_03_01::Models::ResourceSkuCapabilities
          end
          def caches_list_result
            Azure::StorageCache::Mgmt::V2020_03_01::Models::CachesListResult
          end
          def resource_sku_location_info
            Azure::StorageCache::Mgmt::V2020_03_01::Models::ResourceSkuLocationInfo
          end
          def key_vault_key_reference_source_vault
            Azure::StorageCache::Mgmt::V2020_03_01::Models::KeyVaultKeyReferenceSourceVault
          end
          def restriction
            Azure::StorageCache::Mgmt::V2020_03_01::Models::Restriction
          end
          def api_operation
            Azure::StorageCache::Mgmt::V2020_03_01::Models::ApiOperation
          end
          def resource_sku
            Azure::StorageCache::Mgmt::V2020_03_01::Models::ResourceSku
          end
          def cache_sku
            Azure::StorageCache::Mgmt::V2020_03_01::Models::CacheSku
          end
          def resource_skus_result
            Azure::StorageCache::Mgmt::V2020_03_01::Models::ResourceSkusResult
          end
          def storage_target
            Azure::StorageCache::Mgmt::V2020_03_01::Models::StorageTarget
          end
          def nfs3_target_properties
            Azure::StorageCache::Mgmt::V2020_03_01::Models::Nfs3TargetProperties
          end
          def clfs_target_properties
            Azure::StorageCache::Mgmt::V2020_03_01::Models::ClfsTargetProperties
          end
          def unknown_target_properties
            Azure::StorageCache::Mgmt::V2020_03_01::Models::UnknownTargetProperties
          end
          def cache_identity_type
            Azure::StorageCache::Mgmt::V2020_03_01::Models::CacheIdentityType
          end
          def health_state_type
            Azure::StorageCache::Mgmt::V2020_03_01::Models::HealthStateType
          end
          def provisioning_state_type
            Azure::StorageCache::Mgmt::V2020_03_01::Models::ProvisioningStateType
          end
          def firmware_status_type
            Azure::StorageCache::Mgmt::V2020_03_01::Models::FirmwareStatusType
          end
          def storage_target_type
            Azure::StorageCache::Mgmt::V2020_03_01::Models::StorageTargetType
          end
          def reason_code
            Azure::StorageCache::Mgmt::V2020_03_01::Models::ReasonCode
          end
        end
      end
    end
  end
end
