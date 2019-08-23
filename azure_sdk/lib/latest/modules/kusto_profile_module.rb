# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_kusto'

module Azure::Profiles::Latest
  module Kusto
    module Mgmt
      Clusters = Azure::Kusto::Mgmt::V2019_05_15::Clusters
      Databases = Azure::Kusto::Mgmt::V2019_05_15::Databases
      DataConnections = Azure::Kusto::Mgmt::V2019_05_15::DataConnections
      Operations = Azure::Kusto::Mgmt::V2019_05_15::Operations

      module Models
        DatabasePrincipalListRequest = Azure::Kusto::Mgmt::V2019_05_15::Models::DatabasePrincipalListRequest
        TrustedExternalTenant = Azure::Kusto::Mgmt::V2019_05_15::Models::TrustedExternalTenant
        DataConnectionValidation = Azure::Kusto::Mgmt::V2019_05_15::Models::DataConnectionValidation
        VirtualNetworkConfiguration = Azure::Kusto::Mgmt::V2019_05_15::Models::VirtualNetworkConfiguration
        DataConnectionValidationResult = Azure::Kusto::Mgmt::V2019_05_15::Models::DataConnectionValidationResult
        AzureCapacity = Azure::Kusto::Mgmt::V2019_05_15::Models::AzureCapacity
        OptimizedAutoscale = Azure::Kusto::Mgmt::V2019_05_15::Models::OptimizedAutoscale
        SkuLocationInfoItem = Azure::Kusto::Mgmt::V2019_05_15::Models::SkuLocationInfoItem
        AzureSku = Azure::Kusto::Mgmt::V2019_05_15::Models::AzureSku
        SkuDescriptionList = Azure::Kusto::Mgmt::V2019_05_15::Models::SkuDescriptionList
        Resource = Azure::Kusto::Mgmt::V2019_05_15::Models::Resource
        SkuDescription = Azure::Kusto::Mgmt::V2019_05_15::Models::SkuDescription
        OperationDisplay = Azure::Kusto::Mgmt::V2019_05_15::Models::OperationDisplay
        DatabaseStatistics = Azure::Kusto::Mgmt::V2019_05_15::Models::DatabaseStatistics
        CheckNameResult = Azure::Kusto::Mgmt::V2019_05_15::Models::CheckNameResult
        DatabaseCheckNameRequest = Azure::Kusto::Mgmt::V2019_05_15::Models::DatabaseCheckNameRequest
        ClusterListResult = Azure::Kusto::Mgmt::V2019_05_15::Models::ClusterListResult
        OperationListResult = Azure::Kusto::Mgmt::V2019_05_15::Models::OperationListResult
        DatabasePrincipalListResult = Azure::Kusto::Mgmt::V2019_05_15::Models::DatabasePrincipalListResult
        Operation = Azure::Kusto::Mgmt::V2019_05_15::Models::Operation
        AzureResourceSku = Azure::Kusto::Mgmt::V2019_05_15::Models::AzureResourceSku
        DataConnectionValidationListResult = Azure::Kusto::Mgmt::V2019_05_15::Models::DataConnectionValidationListResult
        DatabasePrincipal = Azure::Kusto::Mgmt::V2019_05_15::Models::DatabasePrincipal
        DataConnectionListResult = Azure::Kusto::Mgmt::V2019_05_15::Models::DataConnectionListResult
        DataConnectionCheckNameRequest = Azure::Kusto::Mgmt::V2019_05_15::Models::DataConnectionCheckNameRequest
        DatabaseListResult = Azure::Kusto::Mgmt::V2019_05_15::Models::DatabaseListResult
        ListResourceSkusResult = Azure::Kusto::Mgmt::V2019_05_15::Models::ListResourceSkusResult
        ClusterCheckNameRequest = Azure::Kusto::Mgmt::V2019_05_15::Models::ClusterCheckNameRequest
        Cluster = Azure::Kusto::Mgmt::V2019_05_15::Models::Cluster
        ClusterUpdate = Azure::Kusto::Mgmt::V2019_05_15::Models::ClusterUpdate
        Database = Azure::Kusto::Mgmt::V2019_05_15::Models::Database
        DatabaseUpdate = Azure::Kusto::Mgmt::V2019_05_15::Models::DatabaseUpdate
        DataConnection = Azure::Kusto::Mgmt::V2019_05_15::Models::DataConnection
        EventHubDataConnection = Azure::Kusto::Mgmt::V2019_05_15::Models::EventHubDataConnection
        IotHubDataConnection = Azure::Kusto::Mgmt::V2019_05_15::Models::IotHubDataConnection
        EventGridDataConnection = Azure::Kusto::Mgmt::V2019_05_15::Models::EventGridDataConnection
        TrackedResource = Azure::Kusto::Mgmt::V2019_05_15::Models::TrackedResource
        AzureEntityResource = Azure::Kusto::Mgmt::V2019_05_15::Models::AzureEntityResource
        ProxyResource = Azure::Kusto::Mgmt::V2019_05_15::Models::ProxyResource
        State = Azure::Kusto::Mgmt::V2019_05_15::Models::State
        ProvisioningState = Azure::Kusto::Mgmt::V2019_05_15::Models::ProvisioningState
        AzureSkuName = Azure::Kusto::Mgmt::V2019_05_15::Models::AzureSkuName
        AzureSkuTier = Azure::Kusto::Mgmt::V2019_05_15::Models::AzureSkuTier
        AzureScaleType = Azure::Kusto::Mgmt::V2019_05_15::Models::AzureScaleType
        DataFormat = Azure::Kusto::Mgmt::V2019_05_15::Models::DataFormat
        DatabasePrincipalRole = Azure::Kusto::Mgmt::V2019_05_15::Models::DatabasePrincipalRole
        DatabasePrincipalType = Azure::Kusto::Mgmt::V2019_05_15::Models::DatabasePrincipalType
        Reason = Azure::Kusto::Mgmt::V2019_05_15::Models::Reason
      end

      class KustoManagementClass
        attr_reader :clusters, :databases, :data_connections, :operations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Kusto::Mgmt::V2019_05_15::KustoManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @clusters = @client_0.clusters
          @databases = @client_0.databases
          @data_connections = @client_0.data_connections
          @operations = @client_0.operations

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Kusto/Mgmt"
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
          def database_principal_list_request
            Azure::Kusto::Mgmt::V2019_05_15::Models::DatabasePrincipalListRequest
          end
          def trusted_external_tenant
            Azure::Kusto::Mgmt::V2019_05_15::Models::TrustedExternalTenant
          end
          def data_connection_validation
            Azure::Kusto::Mgmt::V2019_05_15::Models::DataConnectionValidation
          end
          def virtual_network_configuration
            Azure::Kusto::Mgmt::V2019_05_15::Models::VirtualNetworkConfiguration
          end
          def data_connection_validation_result
            Azure::Kusto::Mgmt::V2019_05_15::Models::DataConnectionValidationResult
          end
          def azure_capacity
            Azure::Kusto::Mgmt::V2019_05_15::Models::AzureCapacity
          end
          def optimized_autoscale
            Azure::Kusto::Mgmt::V2019_05_15::Models::OptimizedAutoscale
          end
          def sku_location_info_item
            Azure::Kusto::Mgmt::V2019_05_15::Models::SkuLocationInfoItem
          end
          def azure_sku
            Azure::Kusto::Mgmt::V2019_05_15::Models::AzureSku
          end
          def sku_description_list
            Azure::Kusto::Mgmt::V2019_05_15::Models::SkuDescriptionList
          end
          def resource
            Azure::Kusto::Mgmt::V2019_05_15::Models::Resource
          end
          def sku_description
            Azure::Kusto::Mgmt::V2019_05_15::Models::SkuDescription
          end
          def operation_display
            Azure::Kusto::Mgmt::V2019_05_15::Models::OperationDisplay
          end
          def database_statistics
            Azure::Kusto::Mgmt::V2019_05_15::Models::DatabaseStatistics
          end
          def check_name_result
            Azure::Kusto::Mgmt::V2019_05_15::Models::CheckNameResult
          end
          def database_check_name_request
            Azure::Kusto::Mgmt::V2019_05_15::Models::DatabaseCheckNameRequest
          end
          def cluster_list_result
            Azure::Kusto::Mgmt::V2019_05_15::Models::ClusterListResult
          end
          def operation_list_result
            Azure::Kusto::Mgmt::V2019_05_15::Models::OperationListResult
          end
          def database_principal_list_result
            Azure::Kusto::Mgmt::V2019_05_15::Models::DatabasePrincipalListResult
          end
          def operation
            Azure::Kusto::Mgmt::V2019_05_15::Models::Operation
          end
          def azure_resource_sku
            Azure::Kusto::Mgmt::V2019_05_15::Models::AzureResourceSku
          end
          def data_connection_validation_list_result
            Azure::Kusto::Mgmt::V2019_05_15::Models::DataConnectionValidationListResult
          end
          def database_principal
            Azure::Kusto::Mgmt::V2019_05_15::Models::DatabasePrincipal
          end
          def data_connection_list_result
            Azure::Kusto::Mgmt::V2019_05_15::Models::DataConnectionListResult
          end
          def data_connection_check_name_request
            Azure::Kusto::Mgmt::V2019_05_15::Models::DataConnectionCheckNameRequest
          end
          def database_list_result
            Azure::Kusto::Mgmt::V2019_05_15::Models::DatabaseListResult
          end
          def list_resource_skus_result
            Azure::Kusto::Mgmt::V2019_05_15::Models::ListResourceSkusResult
          end
          def cluster_check_name_request
            Azure::Kusto::Mgmt::V2019_05_15::Models::ClusterCheckNameRequest
          end
          def cluster
            Azure::Kusto::Mgmt::V2019_05_15::Models::Cluster
          end
          def cluster_update
            Azure::Kusto::Mgmt::V2019_05_15::Models::ClusterUpdate
          end
          def database
            Azure::Kusto::Mgmt::V2019_05_15::Models::Database
          end
          def database_update
            Azure::Kusto::Mgmt::V2019_05_15::Models::DatabaseUpdate
          end
          def data_connection
            Azure::Kusto::Mgmt::V2019_05_15::Models::DataConnection
          end
          def event_hub_data_connection
            Azure::Kusto::Mgmt::V2019_05_15::Models::EventHubDataConnection
          end
          def iot_hub_data_connection
            Azure::Kusto::Mgmt::V2019_05_15::Models::IotHubDataConnection
          end
          def event_grid_data_connection
            Azure::Kusto::Mgmt::V2019_05_15::Models::EventGridDataConnection
          end
          def tracked_resource
            Azure::Kusto::Mgmt::V2019_05_15::Models::TrackedResource
          end
          def azure_entity_resource
            Azure::Kusto::Mgmt::V2019_05_15::Models::AzureEntityResource
          end
          def proxy_resource
            Azure::Kusto::Mgmt::V2019_05_15::Models::ProxyResource
          end
          def state
            Azure::Kusto::Mgmt::V2019_05_15::Models::State
          end
          def provisioning_state
            Azure::Kusto::Mgmt::V2019_05_15::Models::ProvisioningState
          end
          def azure_sku_name
            Azure::Kusto::Mgmt::V2019_05_15::Models::AzureSkuName
          end
          def azure_sku_tier
            Azure::Kusto::Mgmt::V2019_05_15::Models::AzureSkuTier
          end
          def azure_scale_type
            Azure::Kusto::Mgmt::V2019_05_15::Models::AzureScaleType
          end
          def data_format
            Azure::Kusto::Mgmt::V2019_05_15::Models::DataFormat
          end
          def database_principal_role
            Azure::Kusto::Mgmt::V2019_05_15::Models::DatabasePrincipalRole
          end
          def database_principal_type
            Azure::Kusto::Mgmt::V2019_05_15::Models::DatabasePrincipalType
          end
          def reason
            Azure::Kusto::Mgmt::V2019_05_15::Models::Reason
          end
        end
      end
    end
  end
end
