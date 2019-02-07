# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_kusto'

module Azure::Profiles::Latest
  module Kusto
    module Mgmt
      Databases = Azure::Kusto::Mgmt::V2018_09_07_preview::Databases
      EventHubConnections = Azure::Kusto::Mgmt::V2018_09_07_preview::EventHubConnections
      Operations = Azure::Kusto::Mgmt::V2018_09_07_preview::Operations
      Clusters = Azure::Kusto::Mgmt::V2018_09_07_preview::Clusters

      module Models
        EventHubConnectionUpdate = Azure::Kusto::Mgmt::V2018_09_07_preview::Models::EventHubConnectionUpdate
        EventHubConnection = Azure::Kusto::Mgmt::V2018_09_07_preview::Models::EventHubConnection
        TrackedResource = Azure::Kusto::Mgmt::V2018_09_07_preview::Models::TrackedResource
        AzureSkuName = Azure::Kusto::Mgmt::V2018_09_07_preview::Models::AzureSkuName
        ProxyResource = Azure::Kusto::Mgmt::V2018_09_07_preview::Models::ProxyResource
        AzureEntityResource = Azure::Kusto::Mgmt::V2018_09_07_preview::Models::AzureEntityResource
        AzureScaleType = Azure::Kusto::Mgmt::V2018_09_07_preview::Models::AzureScaleType
        DataFormat = Azure::Kusto::Mgmt::V2018_09_07_preview::Models::DataFormat
        DatabasePrincipalRole = Azure::Kusto::Mgmt::V2018_09_07_preview::Models::DatabasePrincipalRole
        DatabasePrincipalType = Azure::Kusto::Mgmt::V2018_09_07_preview::Models::DatabasePrincipalType
        Resource = Azure::Kusto::Mgmt::V2018_09_07_preview::Models::Resource
        ProvisioningState = Azure::Kusto::Mgmt::V2018_09_07_preview::Models::ProvisioningState
        Database = Azure::Kusto::Mgmt::V2018_09_07_preview::Models::Database
        OperationDisplay = Azure::Kusto::Mgmt::V2018_09_07_preview::Models::OperationDisplay
        Operation = Azure::Kusto::Mgmt::V2018_09_07_preview::Models::Operation
        OperationListResult = Azure::Kusto::Mgmt::V2018_09_07_preview::Models::OperationListResult
        ClusterListResult = Azure::Kusto::Mgmt::V2018_09_07_preview::Models::ClusterListResult
        State = Azure::Kusto::Mgmt::V2018_09_07_preview::Models::State
        Cluster = Azure::Kusto::Mgmt::V2018_09_07_preview::Models::Cluster
        DatabasePrincipalListResult = Azure::Kusto::Mgmt::V2018_09_07_preview::Models::DatabasePrincipalListResult
        DatabasePrincipalListRequest = Azure::Kusto::Mgmt::V2018_09_07_preview::Models::DatabasePrincipalListRequest
        AzureSku = Azure::Kusto::Mgmt::V2018_09_07_preview::Models::AzureSku
        EventHubConnectionValidationListResult = Azure::Kusto::Mgmt::V2018_09_07_preview::Models::EventHubConnectionValidationListResult
        AzureResourceSku = Azure::Kusto::Mgmt::V2018_09_07_preview::Models::AzureResourceSku
        EventHubConnectionListResult = Azure::Kusto::Mgmt::V2018_09_07_preview::Models::EventHubConnectionListResult
        EventHubConnectionValidation = Azure::Kusto::Mgmt::V2018_09_07_preview::Models::EventHubConnectionValidation
        TrustedExternalTenant = Azure::Kusto::Mgmt::V2018_09_07_preview::Models::TrustedExternalTenant
        AzureCapacity = Azure::Kusto::Mgmt::V2018_09_07_preview::Models::AzureCapacity
        DatabaseStatistics = Azure::Kusto::Mgmt::V2018_09_07_preview::Models::DatabaseStatistics
        ListResourceSkusResult = Azure::Kusto::Mgmt::V2018_09_07_preview::Models::ListResourceSkusResult
        ListSkusResult = Azure::Kusto::Mgmt::V2018_09_07_preview::Models::ListSkusResult
        EventHubConnectionValidationResult = Azure::Kusto::Mgmt::V2018_09_07_preview::Models::EventHubConnectionValidationResult
        ClusterCheckNameRequest = Azure::Kusto::Mgmt::V2018_09_07_preview::Models::ClusterCheckNameRequest
        DatabasePrincipal = Azure::Kusto::Mgmt::V2018_09_07_preview::Models::DatabasePrincipal
        DatabaseCheckNameRequest = Azure::Kusto::Mgmt::V2018_09_07_preview::Models::DatabaseCheckNameRequest
        DatabaseListResult = Azure::Kusto::Mgmt::V2018_09_07_preview::Models::DatabaseListResult
        CheckNameResult = Azure::Kusto::Mgmt::V2018_09_07_preview::Models::CheckNameResult
        ClusterUpdate = Azure::Kusto::Mgmt::V2018_09_07_preview::Models::ClusterUpdate
        DatabaseUpdate = Azure::Kusto::Mgmt::V2018_09_07_preview::Models::DatabaseUpdate
      end

      class KustoManagementClass
        attr_reader :databases, :event_hub_connections, :operations, :clusters, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Kusto::Mgmt::V2018_09_07_preview::KustoManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @databases = @client_0.databases
          @event_hub_connections = @client_0.event_hub_connections
          @operations = @client_0.operations
          @clusters = @client_0.clusters

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
          def event_hub_connection_update
            Azure::Kusto::Mgmt::V2018_09_07_preview::Models::EventHubConnectionUpdate
          end
          def event_hub_connection
            Azure::Kusto::Mgmt::V2018_09_07_preview::Models::EventHubConnection
          end
          def tracked_resource
            Azure::Kusto::Mgmt::V2018_09_07_preview::Models::TrackedResource
          end
          def azure_sku_name
            Azure::Kusto::Mgmt::V2018_09_07_preview::Models::AzureSkuName
          end
          def proxy_resource
            Azure::Kusto::Mgmt::V2018_09_07_preview::Models::ProxyResource
          end
          def azure_entity_resource
            Azure::Kusto::Mgmt::V2018_09_07_preview::Models::AzureEntityResource
          end
          def azure_scale_type
            Azure::Kusto::Mgmt::V2018_09_07_preview::Models::AzureScaleType
          end
          def data_format
            Azure::Kusto::Mgmt::V2018_09_07_preview::Models::DataFormat
          end
          def database_principal_role
            Azure::Kusto::Mgmt::V2018_09_07_preview::Models::DatabasePrincipalRole
          end
          def database_principal_type
            Azure::Kusto::Mgmt::V2018_09_07_preview::Models::DatabasePrincipalType
          end
          def resource
            Azure::Kusto::Mgmt::V2018_09_07_preview::Models::Resource
          end
          def provisioning_state
            Azure::Kusto::Mgmt::V2018_09_07_preview::Models::ProvisioningState
          end
          def database
            Azure::Kusto::Mgmt::V2018_09_07_preview::Models::Database
          end
          def operation_display
            Azure::Kusto::Mgmt::V2018_09_07_preview::Models::OperationDisplay
          end
          def operation
            Azure::Kusto::Mgmt::V2018_09_07_preview::Models::Operation
          end
          def operation_list_result
            Azure::Kusto::Mgmt::V2018_09_07_preview::Models::OperationListResult
          end
          def cluster_list_result
            Azure::Kusto::Mgmt::V2018_09_07_preview::Models::ClusterListResult
          end
          def state
            Azure::Kusto::Mgmt::V2018_09_07_preview::Models::State
          end
          def cluster
            Azure::Kusto::Mgmt::V2018_09_07_preview::Models::Cluster
          end
          def database_principal_list_result
            Azure::Kusto::Mgmt::V2018_09_07_preview::Models::DatabasePrincipalListResult
          end
          def database_principal_list_request
            Azure::Kusto::Mgmt::V2018_09_07_preview::Models::DatabasePrincipalListRequest
          end
          def azure_sku
            Azure::Kusto::Mgmt::V2018_09_07_preview::Models::AzureSku
          end
          def event_hub_connection_validation_list_result
            Azure::Kusto::Mgmt::V2018_09_07_preview::Models::EventHubConnectionValidationListResult
          end
          def azure_resource_sku
            Azure::Kusto::Mgmt::V2018_09_07_preview::Models::AzureResourceSku
          end
          def event_hub_connection_list_result
            Azure::Kusto::Mgmt::V2018_09_07_preview::Models::EventHubConnectionListResult
          end
          def event_hub_connection_validation
            Azure::Kusto::Mgmt::V2018_09_07_preview::Models::EventHubConnectionValidation
          end
          def trusted_external_tenant
            Azure::Kusto::Mgmt::V2018_09_07_preview::Models::TrustedExternalTenant
          end
          def azure_capacity
            Azure::Kusto::Mgmt::V2018_09_07_preview::Models::AzureCapacity
          end
          def database_statistics
            Azure::Kusto::Mgmt::V2018_09_07_preview::Models::DatabaseStatistics
          end
          def list_resource_skus_result
            Azure::Kusto::Mgmt::V2018_09_07_preview::Models::ListResourceSkusResult
          end
          def list_skus_result
            Azure::Kusto::Mgmt::V2018_09_07_preview::Models::ListSkusResult
          end
          def event_hub_connection_validation_result
            Azure::Kusto::Mgmt::V2018_09_07_preview::Models::EventHubConnectionValidationResult
          end
          def cluster_check_name_request
            Azure::Kusto::Mgmt::V2018_09_07_preview::Models::ClusterCheckNameRequest
          end
          def database_principal
            Azure::Kusto::Mgmt::V2018_09_07_preview::Models::DatabasePrincipal
          end
          def database_check_name_request
            Azure::Kusto::Mgmt::V2018_09_07_preview::Models::DatabaseCheckNameRequest
          end
          def database_list_result
            Azure::Kusto::Mgmt::V2018_09_07_preview::Models::DatabaseListResult
          end
          def check_name_result
            Azure::Kusto::Mgmt::V2018_09_07_preview::Models::CheckNameResult
          end
          def cluster_update
            Azure::Kusto::Mgmt::V2018_09_07_preview::Models::ClusterUpdate
          end
          def database_update
            Azure::Kusto::Mgmt::V2018_09_07_preview::Models::DatabaseUpdate
          end
        end
      end
    end
  end
end
