# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_storagecache'

module Azure::StorageCache::Profiles::Latest
  module Mgmt
    Operations = Azure::StorageCache::Mgmt::V2019_11_01::Operations
    Skus = Azure::StorageCache::Mgmt::V2019_11_01::Skus
    UsageModels = Azure::StorageCache::Mgmt::V2019_11_01::UsageModels
    Caches = Azure::StorageCache::Mgmt::V2019_11_01::Caches
    StorageTargets = Azure::StorageCache::Mgmt::V2019_11_01::StorageTargets

    module Models
      ClfsTarget = Azure::StorageCache::Mgmt::V2019_11_01::Models::ClfsTarget
      UnknownTarget = Azure::StorageCache::Mgmt::V2019_11_01::Models::UnknownTarget
      ApiOperation = Azure::StorageCache::Mgmt::V2019_11_01::Models::ApiOperation
      ResourceSkuCapabilities = Azure::StorageCache::Mgmt::V2019_11_01::Models::ResourceSkuCapabilities
      CloudErrorBody = Azure::StorageCache::Mgmt::V2019_11_01::Models::CloudErrorBody
      ResourceSkuLocationInfo = Azure::StorageCache::Mgmt::V2019_11_01::Models::ResourceSkuLocationInfo
      CacheHealth = Azure::StorageCache::Mgmt::V2019_11_01::Models::CacheHealth
      Restriction = Azure::StorageCache::Mgmt::V2019_11_01::Models::Restriction
      CacheSku = Azure::StorageCache::Mgmt::V2019_11_01::Models::CacheSku
      ResourceSku = Azure::StorageCache::Mgmt::V2019_11_01::Models::ResourceSku
      CachesListResult = Azure::StorageCache::Mgmt::V2019_11_01::Models::CachesListResult
      ResourceSkusResult = Azure::StorageCache::Mgmt::V2019_11_01::Models::ResourceSkusResult
      ApiOperationDisplay = Azure::StorageCache::Mgmt::V2019_11_01::Models::ApiOperationDisplay
      NamespaceJunction = Azure::StorageCache::Mgmt::V2019_11_01::Models::NamespaceJunction
      CloudError = Azure::StorageCache::Mgmt::V2019_11_01::Models::CloudError
      StorageTarget = Azure::StorageCache::Mgmt::V2019_11_01::Models::StorageTarget
      Cache = Azure::StorageCache::Mgmt::V2019_11_01::Models::Cache
      StorageTargetsResult = Azure::StorageCache::Mgmt::V2019_11_01::Models::StorageTargetsResult
      ApiOperationListResult = Azure::StorageCache::Mgmt::V2019_11_01::Models::ApiOperationListResult
      UsageModelDisplay = Azure::StorageCache::Mgmt::V2019_11_01::Models::UsageModelDisplay
      Nfs3Target = Azure::StorageCache::Mgmt::V2019_11_01::Models::Nfs3Target
      UsageModel = Azure::StorageCache::Mgmt::V2019_11_01::Models::UsageModel
      CacheUpgradeStatus = Azure::StorageCache::Mgmt::V2019_11_01::Models::CacheUpgradeStatus
      UsageModelsResult = Azure::StorageCache::Mgmt::V2019_11_01::Models::UsageModelsResult
      HealthStateType = Azure::StorageCache::Mgmt::V2019_11_01::Models::HealthStateType
      ProvisioningStateType = Azure::StorageCache::Mgmt::V2019_11_01::Models::ProvisioningStateType
      FirmwareStatusType = Azure::StorageCache::Mgmt::V2019_11_01::Models::FirmwareStatusType
      ReasonCode = Azure::StorageCache::Mgmt::V2019_11_01::Models::ReasonCode
      StorageTargetType = Azure::StorageCache::Mgmt::V2019_11_01::Models::StorageTargetType
    end

    #
    # StorageCacheManagementClass
    #
    class StorageCacheManagementClass
      attr_reader :operations, :skus, :usage_models, :caches, :storage_targets, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::StorageCache::Mgmt::V2019_11_01::StorageCacheManagementClient.new(configurable.credentials, base_url, options)
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
      def clfs_target
        Azure::StorageCache::Mgmt::V2019_11_01::Models::ClfsTarget
      end
      def unknown_target
        Azure::StorageCache::Mgmt::V2019_11_01::Models::UnknownTarget
      end
      def api_operation
        Azure::StorageCache::Mgmt::V2019_11_01::Models::ApiOperation
      end
      def resource_sku_capabilities
        Azure::StorageCache::Mgmt::V2019_11_01::Models::ResourceSkuCapabilities
      end
      def cloud_error_body
        Azure::StorageCache::Mgmt::V2019_11_01::Models::CloudErrorBody
      end
      def resource_sku_location_info
        Azure::StorageCache::Mgmt::V2019_11_01::Models::ResourceSkuLocationInfo
      end
      def cache_health
        Azure::StorageCache::Mgmt::V2019_11_01::Models::CacheHealth
      end
      def restriction
        Azure::StorageCache::Mgmt::V2019_11_01::Models::Restriction
      end
      def cache_sku
        Azure::StorageCache::Mgmt::V2019_11_01::Models::CacheSku
      end
      def resource_sku
        Azure::StorageCache::Mgmt::V2019_11_01::Models::ResourceSku
      end
      def caches_list_result
        Azure::StorageCache::Mgmt::V2019_11_01::Models::CachesListResult
      end
      def resource_skus_result
        Azure::StorageCache::Mgmt::V2019_11_01::Models::ResourceSkusResult
      end
      def api_operation_display
        Azure::StorageCache::Mgmt::V2019_11_01::Models::ApiOperationDisplay
      end
      def namespace_junction
        Azure::StorageCache::Mgmt::V2019_11_01::Models::NamespaceJunction
      end
      def cloud_error
        Azure::StorageCache::Mgmt::V2019_11_01::Models::CloudError
      end
      def storage_target
        Azure::StorageCache::Mgmt::V2019_11_01::Models::StorageTarget
      end
      def cache
        Azure::StorageCache::Mgmt::V2019_11_01::Models::Cache
      end
      def storage_targets_result
        Azure::StorageCache::Mgmt::V2019_11_01::Models::StorageTargetsResult
      end
      def api_operation_list_result
        Azure::StorageCache::Mgmt::V2019_11_01::Models::ApiOperationListResult
      end
      def usage_model_display
        Azure::StorageCache::Mgmt::V2019_11_01::Models::UsageModelDisplay
      end
      def nfs3_target
        Azure::StorageCache::Mgmt::V2019_11_01::Models::Nfs3Target
      end
      def usage_model
        Azure::StorageCache::Mgmt::V2019_11_01::Models::UsageModel
      end
      def cache_upgrade_status
        Azure::StorageCache::Mgmt::V2019_11_01::Models::CacheUpgradeStatus
      end
      def usage_models_result
        Azure::StorageCache::Mgmt::V2019_11_01::Models::UsageModelsResult
      end
      def health_state_type
        Azure::StorageCache::Mgmt::V2019_11_01::Models::HealthStateType
      end
      def provisioning_state_type
        Azure::StorageCache::Mgmt::V2019_11_01::Models::ProvisioningStateType
      end
      def firmware_status_type
        Azure::StorageCache::Mgmt::V2019_11_01::Models::FirmwareStatusType
      end
      def reason_code
        Azure::StorageCache::Mgmt::V2019_11_01::Models::ReasonCode
      end
      def storage_target_type
        Azure::StorageCache::Mgmt::V2019_11_01::Models::StorageTargetType
      end
    end
  end
end
