# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_kusto'

module Azure::Kusto::Profiles::Latest
  module Mgmt
    Clusters = Azure::Kusto::Mgmt::V2019_01_21::Clusters
    Databases = Azure::Kusto::Mgmt::V2019_01_21::Databases
    DataConnections = Azure::Kusto::Mgmt::V2019_01_21::DataConnections
    Operations = Azure::Kusto::Mgmt::V2019_01_21::Operations

    module Models
      DataConnectionValidationResult = Azure::Kusto::Mgmt::V2019_01_21::Models::DataConnectionValidationResult
      DatabasePrincipalListRequest = Azure::Kusto::Mgmt::V2019_01_21::Models::DatabasePrincipalListRequest
      AzureSku = Azure::Kusto::Mgmt::V2019_01_21::Models::AzureSku
      DataConnectionValidation = Azure::Kusto::Mgmt::V2019_01_21::Models::DataConnectionValidation
      AzureResourceSku = Azure::Kusto::Mgmt::V2019_01_21::Models::AzureResourceSku
      Resource = Azure::Kusto::Mgmt::V2019_01_21::Models::Resource
      AzureCapacity = Azure::Kusto::Mgmt::V2019_01_21::Models::AzureCapacity
      Operation = Azure::Kusto::Mgmt::V2019_01_21::Models::Operation
      DatabaseStatistics = Azure::Kusto::Mgmt::V2019_01_21::Models::DatabaseStatistics
      ListSkusResult = Azure::Kusto::Mgmt::V2019_01_21::Models::ListSkusResult
      CheckNameResult = Azure::Kusto::Mgmt::V2019_01_21::Models::CheckNameResult
      ClusterListResult = Azure::Kusto::Mgmt::V2019_01_21::Models::ClusterListResult
      OperationListResult = Azure::Kusto::Mgmt::V2019_01_21::Models::OperationListResult
      DatabasePrincipalListResult = Azure::Kusto::Mgmt::V2019_01_21::Models::DatabasePrincipalListResult
      DataConnectionValidationListResult = Azure::Kusto::Mgmt::V2019_01_21::Models::DataConnectionValidationListResult
      TrustedExternalTenant = Azure::Kusto::Mgmt::V2019_01_21::Models::TrustedExternalTenant
      DataConnectionListResult = Azure::Kusto::Mgmt::V2019_01_21::Models::DataConnectionListResult
      DatabasePrincipal = Azure::Kusto::Mgmt::V2019_01_21::Models::DatabasePrincipal
      ListResourceSkusResult = Azure::Kusto::Mgmt::V2019_01_21::Models::ListResourceSkusResult
      DatabaseListResult = Azure::Kusto::Mgmt::V2019_01_21::Models::DatabaseListResult
      ClusterCheckNameRequest = Azure::Kusto::Mgmt::V2019_01_21::Models::ClusterCheckNameRequest
      OperationDisplay = Azure::Kusto::Mgmt::V2019_01_21::Models::OperationDisplay
      DatabaseCheckNameRequest = Azure::Kusto::Mgmt::V2019_01_21::Models::DatabaseCheckNameRequest
      Cluster = Azure::Kusto::Mgmt::V2019_01_21::Models::Cluster
      ClusterUpdate = Azure::Kusto::Mgmt::V2019_01_21::Models::ClusterUpdate
      Database = Azure::Kusto::Mgmt::V2019_01_21::Models::Database
      DatabaseUpdate = Azure::Kusto::Mgmt::V2019_01_21::Models::DatabaseUpdate
      DataConnection = Azure::Kusto::Mgmt::V2019_01_21::Models::DataConnection
      EventHubDataConnection = Azure::Kusto::Mgmt::V2019_01_21::Models::EventHubDataConnection
      EventGridDataConnection = Azure::Kusto::Mgmt::V2019_01_21::Models::EventGridDataConnection
      TrackedResource = Azure::Kusto::Mgmt::V2019_01_21::Models::TrackedResource
      AzureEntityResource = Azure::Kusto::Mgmt::V2019_01_21::Models::AzureEntityResource
      ProxyResource = Azure::Kusto::Mgmt::V2019_01_21::Models::ProxyResource
      State = Azure::Kusto::Mgmt::V2019_01_21::Models::State
      ProvisioningState = Azure::Kusto::Mgmt::V2019_01_21::Models::ProvisioningState
      AzureSkuName = Azure::Kusto::Mgmt::V2019_01_21::Models::AzureSkuName
      AzureScaleType = Azure::Kusto::Mgmt::V2019_01_21::Models::AzureScaleType
      DataFormat = Azure::Kusto::Mgmt::V2019_01_21::Models::DataFormat
      DatabasePrincipalRole = Azure::Kusto::Mgmt::V2019_01_21::Models::DatabasePrincipalRole
      DatabasePrincipalType = Azure::Kusto::Mgmt::V2019_01_21::Models::DatabasePrincipalType
    end

    #
    # KustoManagementClass
    #
    class KustoManagementClass
      attr_reader :clusters, :databases, :data_connections, :operations, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::Kusto::Mgmt::V2019_01_21::KustoManagementClient.new(configurable.credentials, base_url, options)
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
        profile_information = 'Profiles/Latest/Kusto/Mgmt'
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
      def data_connection_validation_result
        Azure::Kusto::Mgmt::V2019_01_21::Models::DataConnectionValidationResult
      end
      def database_principal_list_request
        Azure::Kusto::Mgmt::V2019_01_21::Models::DatabasePrincipalListRequest
      end
      def azure_sku
        Azure::Kusto::Mgmt::V2019_01_21::Models::AzureSku
      end
      def data_connection_validation
        Azure::Kusto::Mgmt::V2019_01_21::Models::DataConnectionValidation
      end
      def azure_resource_sku
        Azure::Kusto::Mgmt::V2019_01_21::Models::AzureResourceSku
      end
      def resource
        Azure::Kusto::Mgmt::V2019_01_21::Models::Resource
      end
      def azure_capacity
        Azure::Kusto::Mgmt::V2019_01_21::Models::AzureCapacity
      end
      def operation
        Azure::Kusto::Mgmt::V2019_01_21::Models::Operation
      end
      def database_statistics
        Azure::Kusto::Mgmt::V2019_01_21::Models::DatabaseStatistics
      end
      def list_skus_result
        Azure::Kusto::Mgmt::V2019_01_21::Models::ListSkusResult
      end
      def check_name_result
        Azure::Kusto::Mgmt::V2019_01_21::Models::CheckNameResult
      end
      def cluster_list_result
        Azure::Kusto::Mgmt::V2019_01_21::Models::ClusterListResult
      end
      def operation_list_result
        Azure::Kusto::Mgmt::V2019_01_21::Models::OperationListResult
      end
      def database_principal_list_result
        Azure::Kusto::Mgmt::V2019_01_21::Models::DatabasePrincipalListResult
      end
      def data_connection_validation_list_result
        Azure::Kusto::Mgmt::V2019_01_21::Models::DataConnectionValidationListResult
      end
      def trusted_external_tenant
        Azure::Kusto::Mgmt::V2019_01_21::Models::TrustedExternalTenant
      end
      def data_connection_list_result
        Azure::Kusto::Mgmt::V2019_01_21::Models::DataConnectionListResult
      end
      def database_principal
        Azure::Kusto::Mgmt::V2019_01_21::Models::DatabasePrincipal
      end
      def list_resource_skus_result
        Azure::Kusto::Mgmt::V2019_01_21::Models::ListResourceSkusResult
      end
      def database_list_result
        Azure::Kusto::Mgmt::V2019_01_21::Models::DatabaseListResult
      end
      def cluster_check_name_request
        Azure::Kusto::Mgmt::V2019_01_21::Models::ClusterCheckNameRequest
      end
      def operation_display
        Azure::Kusto::Mgmt::V2019_01_21::Models::OperationDisplay
      end
      def database_check_name_request
        Azure::Kusto::Mgmt::V2019_01_21::Models::DatabaseCheckNameRequest
      end
      def cluster
        Azure::Kusto::Mgmt::V2019_01_21::Models::Cluster
      end
      def cluster_update
        Azure::Kusto::Mgmt::V2019_01_21::Models::ClusterUpdate
      end
      def database
        Azure::Kusto::Mgmt::V2019_01_21::Models::Database
      end
      def database_update
        Azure::Kusto::Mgmt::V2019_01_21::Models::DatabaseUpdate
      end
      def data_connection
        Azure::Kusto::Mgmt::V2019_01_21::Models::DataConnection
      end
      def event_hub_data_connection
        Azure::Kusto::Mgmt::V2019_01_21::Models::EventHubDataConnection
      end
      def event_grid_data_connection
        Azure::Kusto::Mgmt::V2019_01_21::Models::EventGridDataConnection
      end
      def tracked_resource
        Azure::Kusto::Mgmt::V2019_01_21::Models::TrackedResource
      end
      def azure_entity_resource
        Azure::Kusto::Mgmt::V2019_01_21::Models::AzureEntityResource
      end
      def proxy_resource
        Azure::Kusto::Mgmt::V2019_01_21::Models::ProxyResource
      end
      def state
        Azure::Kusto::Mgmt::V2019_01_21::Models::State
      end
      def provisioning_state
        Azure::Kusto::Mgmt::V2019_01_21::Models::ProvisioningState
      end
      def azure_sku_name
        Azure::Kusto::Mgmt::V2019_01_21::Models::AzureSkuName
      end
      def azure_scale_type
        Azure::Kusto::Mgmt::V2019_01_21::Models::AzureScaleType
      end
      def data_format
        Azure::Kusto::Mgmt::V2019_01_21::Models::DataFormat
      end
      def database_principal_role
        Azure::Kusto::Mgmt::V2019_01_21::Models::DatabasePrincipalRole
      end
      def database_principal_type
        Azure::Kusto::Mgmt::V2019_01_21::Models::DatabasePrincipalType
      end
    end
  end
end
