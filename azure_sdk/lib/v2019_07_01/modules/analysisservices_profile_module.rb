# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_analysis_services'

module Azure::Profiles::V2019_07_01
  module AnalysisServices
    module Mgmt
      Servers = Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Servers
      Operations = Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Operations

      module Models
        AnalysisServicesServerUpdateParameters = Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Models::AnalysisServicesServerUpdateParameters
        OperationDisplay = Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Models::OperationDisplay
        GatewayListStatusLive = Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Models::GatewayListStatusLive
        OperationListResult = Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Models::OperationListResult
        GatewayError = Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Models::GatewayError
        Resource = Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Models::Resource
        GatewayListStatusError = Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Models::GatewayListStatusError
        AnalysisServicesServers = Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Models::AnalysisServicesServers
        CheckServerNameAvailabilityParameters = Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Models::CheckServerNameAvailabilityParameters
        GatewayDetails = Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Models::GatewayDetails
        CheckServerNameAvailabilityResult = Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Models::CheckServerNameAvailabilityResult
        IPv4FirewallSettings = Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Models::IPv4FirewallSettings
        ErrorResponse = Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Models::ErrorResponse
        ResourceSku = Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Models::ResourceSku
        OperationStatus = Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Models::OperationStatus
        ServerAdministrators = Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Models::ServerAdministrators
        SkuEnumerationForNewResourceResult = Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Models::SkuEnumerationForNewResourceResult
        Operation = Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Models::Operation
        SkuDetailsForExistingResource = Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Models::SkuDetailsForExistingResource
        IPv4FirewallRule = Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Models::IPv4FirewallRule
        SkuEnumerationForExistingResourceResult = Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Models::SkuEnumerationForExistingResourceResult
        AnalysisServicesServer = Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Models::AnalysisServicesServer
        SkuTier = Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Models::SkuTier
        State = Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Models::State
        ProvisioningState = Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Models::ProvisioningState
        ConnectionMode = Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Models::ConnectionMode
        Status = Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Models::Status
      end

      class AnalysisServicesManagementClass
        attr_reader :servers, :operations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::AnalysisServices::Mgmt::V2017_08_01_beta::AnalysisServicesManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @servers = @client_0.servers
          @operations = @client_0.operations

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/V2019_07_01/AnalysisServices/Mgmt"
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
          def analysis_services_server_update_parameters
            Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Models::AnalysisServicesServerUpdateParameters
          end
          def operation_display
            Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Models::OperationDisplay
          end
          def gateway_list_status_live
            Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Models::GatewayListStatusLive
          end
          def operation_list_result
            Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Models::OperationListResult
          end
          def gateway_error
            Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Models::GatewayError
          end
          def resource
            Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Models::Resource
          end
          def gateway_list_status_error
            Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Models::GatewayListStatusError
          end
          def analysis_services_servers
            Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Models::AnalysisServicesServers
          end
          def check_server_name_availability_parameters
            Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Models::CheckServerNameAvailabilityParameters
          end
          def gateway_details
            Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Models::GatewayDetails
          end
          def check_server_name_availability_result
            Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Models::CheckServerNameAvailabilityResult
          end
          def ipv4_firewall_settings
            Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Models::IPv4FirewallSettings
          end
          def error_response
            Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Models::ErrorResponse
          end
          def resource_sku
            Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Models::ResourceSku
          end
          def operation_status
            Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Models::OperationStatus
          end
          def server_administrators
            Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Models::ServerAdministrators
          end
          def sku_enumeration_for_new_resource_result
            Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Models::SkuEnumerationForNewResourceResult
          end
          def operation
            Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Models::Operation
          end
          def sku_details_for_existing_resource
            Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Models::SkuDetailsForExistingResource
          end
          def ipv4_firewall_rule
            Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Models::IPv4FirewallRule
          end
          def sku_enumeration_for_existing_resource_result
            Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Models::SkuEnumerationForExistingResourceResult
          end
          def analysis_services_server
            Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Models::AnalysisServicesServer
          end
          def sku_tier
            Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Models::SkuTier
          end
          def state
            Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Models::State
          end
          def provisioning_state
            Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Models::ProvisioningState
          end
          def connection_mode
            Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Models::ConnectionMode
          end
          def status
            Azure::AnalysisServices::Mgmt::V2017_08_01_beta::Models::Status
          end
        end
      end
    end
  end
end
