# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_azurestack_hci'

module Azure::AzureStackHCI::Profiles::Latest
  module Mgmt
    Operations = Azure::AzureStackHCI::Mgmt::V2020_03_01_preview::Operations
    Clusters = Azure::AzureStackHCI::Mgmt::V2020_03_01_preview::Clusters

    module Models
      OperationList = Azure::AzureStackHCI::Mgmt::V2020_03_01_preview::Models::OperationList
      Operation = Azure::AzureStackHCI::Mgmt::V2020_03_01_preview::Models::Operation
      ClusterNode = Azure::AzureStackHCI::Mgmt::V2020_03_01_preview::Models::ClusterNode
      ErrorAdditionalInfo = Azure::AzureStackHCI::Mgmt::V2020_03_01_preview::Models::ErrorAdditionalInfo
      ClusterList = Azure::AzureStackHCI::Mgmt::V2020_03_01_preview::Models::ClusterList
      OperationDisplay = Azure::AzureStackHCI::Mgmt::V2020_03_01_preview::Models::OperationDisplay
      ErrorResponse = Azure::AzureStackHCI::Mgmt::V2020_03_01_preview::Models::ErrorResponse
      ClusterUpdate = Azure::AzureStackHCI::Mgmt::V2020_03_01_preview::Models::ClusterUpdate
      Resource = Azure::AzureStackHCI::Mgmt::V2020_03_01_preview::Models::Resource
      ClusterReportedProperties = Azure::AzureStackHCI::Mgmt::V2020_03_01_preview::Models::ClusterReportedProperties
      ErrorResponseError = Azure::AzureStackHCI::Mgmt::V2020_03_01_preview::Models::ErrorResponseError
      Cluster = Azure::AzureStackHCI::Mgmt::V2020_03_01_preview::Models::Cluster
      ProxyResource = Azure::AzureStackHCI::Mgmt::V2020_03_01_preview::Models::ProxyResource
      AzureEntityResource = Azure::AzureStackHCI::Mgmt::V2020_03_01_preview::Models::AzureEntityResource
      TrackedResource = Azure::AzureStackHCI::Mgmt::V2020_03_01_preview::Models::TrackedResource
      ProvisioningState = Azure::AzureStackHCI::Mgmt::V2020_03_01_preview::Models::ProvisioningState
      Status = Azure::AzureStackHCI::Mgmt::V2020_03_01_preview::Models::Status
    end

    #
    # AzureStackHCIManagementClass
    #
    class AzureStackHCIManagementClass
      attr_reader :operations, :clusters, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::AzureStackHCI::Mgmt::V2020_03_01_preview::AzureStackHCIClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @operations = @client_0.operations
        @clusters = @client_0.clusters

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/AzureStackHCI/Mgmt'
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
      def operation_list
        Azure::AzureStackHCI::Mgmt::V2020_03_01_preview::Models::OperationList
      end
      def operation
        Azure::AzureStackHCI::Mgmt::V2020_03_01_preview::Models::Operation
      end
      def cluster_node
        Azure::AzureStackHCI::Mgmt::V2020_03_01_preview::Models::ClusterNode
      end
      def error_additional_info
        Azure::AzureStackHCI::Mgmt::V2020_03_01_preview::Models::ErrorAdditionalInfo
      end
      def cluster_list
        Azure::AzureStackHCI::Mgmt::V2020_03_01_preview::Models::ClusterList
      end
      def operation_display
        Azure::AzureStackHCI::Mgmt::V2020_03_01_preview::Models::OperationDisplay
      end
      def error_response
        Azure::AzureStackHCI::Mgmt::V2020_03_01_preview::Models::ErrorResponse
      end
      def cluster_update
        Azure::AzureStackHCI::Mgmt::V2020_03_01_preview::Models::ClusterUpdate
      end
      def resource
        Azure::AzureStackHCI::Mgmt::V2020_03_01_preview::Models::Resource
      end
      def cluster_reported_properties
        Azure::AzureStackHCI::Mgmt::V2020_03_01_preview::Models::ClusterReportedProperties
      end
      def error_response_error
        Azure::AzureStackHCI::Mgmt::V2020_03_01_preview::Models::ErrorResponseError
      end
      def cluster
        Azure::AzureStackHCI::Mgmt::V2020_03_01_preview::Models::Cluster
      end
      def proxy_resource
        Azure::AzureStackHCI::Mgmt::V2020_03_01_preview::Models::ProxyResource
      end
      def azure_entity_resource
        Azure::AzureStackHCI::Mgmt::V2020_03_01_preview::Models::AzureEntityResource
      end
      def tracked_resource
        Azure::AzureStackHCI::Mgmt::V2020_03_01_preview::Models::TrackedResource
      end
      def provisioning_state
        Azure::AzureStackHCI::Mgmt::V2020_03_01_preview::Models::ProvisioningState
      end
      def status
        Azure::AzureStackHCI::Mgmt::V2020_03_01_preview::Models::Status
      end
    end
  end
end
