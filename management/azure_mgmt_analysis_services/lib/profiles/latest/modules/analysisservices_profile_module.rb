# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_analysis_services'

module Azure::AnalysisServices::Profiles::Latest
  module Mgmt
    Servers = Azure::AnalysisServices::Mgmt::V2017_07_14::Servers

    module Models
      GatewayError = Azure::AnalysisServices::Mgmt::V2017_07_14::Models::GatewayError
      GatewayListStatusError = Azure::AnalysisServices::Mgmt::V2017_07_14::Models::GatewayListStatusError
      Resource = Azure::AnalysisServices::Mgmt::V2017_07_14::Models::Resource
      CheckServerNameAvailabilityParameters = Azure::AnalysisServices::Mgmt::V2017_07_14::Models::CheckServerNameAvailabilityParameters
      AnalysisServicesServers = Azure::AnalysisServices::Mgmt::V2017_07_14::Models::AnalysisServicesServers
      CheckServerNameAvailabilityResult = Azure::AnalysisServices::Mgmt::V2017_07_14::Models::CheckServerNameAvailabilityResult
      GatewayDetails = Azure::AnalysisServices::Mgmt::V2017_07_14::Models::GatewayDetails
      ErrorResponse = Azure::AnalysisServices::Mgmt::V2017_07_14::Models::ErrorResponse
      GatewayListStatusLive = Azure::AnalysisServices::Mgmt::V2017_07_14::Models::GatewayListStatusLive
      OperationStatus = Azure::AnalysisServices::Mgmt::V2017_07_14::Models::OperationStatus
      ServerAdministrators = Azure::AnalysisServices::Mgmt::V2017_07_14::Models::ServerAdministrators
      SkuEnumerationForNewResourceResult = Azure::AnalysisServices::Mgmt::V2017_07_14::Models::SkuEnumerationForNewResourceResult
      ResourceSku = Azure::AnalysisServices::Mgmt::V2017_07_14::Models::ResourceSku
      SkuDetailsForExistingResource = Azure::AnalysisServices::Mgmt::V2017_07_14::Models::SkuDetailsForExistingResource
      AnalysisServicesServerUpdateParameters = Azure::AnalysisServices::Mgmt::V2017_07_14::Models::AnalysisServicesServerUpdateParameters
      SkuEnumerationForExistingResourceResult = Azure::AnalysisServices::Mgmt::V2017_07_14::Models::SkuEnumerationForExistingResourceResult
      AnalysisServicesServer = Azure::AnalysisServices::Mgmt::V2017_07_14::Models::AnalysisServicesServer
      SkuTier = Azure::AnalysisServices::Mgmt::V2017_07_14::Models::SkuTier
      State = Azure::AnalysisServices::Mgmt::V2017_07_14::Models::State
      ProvisioningState = Azure::AnalysisServices::Mgmt::V2017_07_14::Models::ProvisioningState
      Status = Azure::AnalysisServices::Mgmt::V2017_07_14::Models::Status
    end

    #
    # AnalysisServicesManagementClass
    #
    class AnalysisServicesManagementClass
      attr_reader :servers, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        if options.is_a?(Hash) && options.length == 0
          @options = setup_default_options
        else
          @options = options
        end

        reset!(options)

        @configurable, @base_url, @options = self, nil, nil

        client_0 = Azure::AnalysisServices::Mgmt::V2017_07_14::AnalysisServicesManagementClient.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        @servers = client_0.servers

        @model_classes = ModelClasses.new
      end
    end

    class ModelClasses
      def gateway_error
        Azure::AnalysisServices::Mgmt::V2017_07_14::Models::GatewayError
      end
      def gateway_list_status_error
        Azure::AnalysisServices::Mgmt::V2017_07_14::Models::GatewayListStatusError
      end
      def resource
        Azure::AnalysisServices::Mgmt::V2017_07_14::Models::Resource
      end
      def check_server_name_availability_parameters
        Azure::AnalysisServices::Mgmt::V2017_07_14::Models::CheckServerNameAvailabilityParameters
      end
      def analysis_services_servers
        Azure::AnalysisServices::Mgmt::V2017_07_14::Models::AnalysisServicesServers
      end
      def check_server_name_availability_result
        Azure::AnalysisServices::Mgmt::V2017_07_14::Models::CheckServerNameAvailabilityResult
      end
      def gateway_details
        Azure::AnalysisServices::Mgmt::V2017_07_14::Models::GatewayDetails
      end
      def error_response
        Azure::AnalysisServices::Mgmt::V2017_07_14::Models::ErrorResponse
      end
      def gateway_list_status_live
        Azure::AnalysisServices::Mgmt::V2017_07_14::Models::GatewayListStatusLive
      end
      def operation_status
        Azure::AnalysisServices::Mgmt::V2017_07_14::Models::OperationStatus
      end
      def server_administrators
        Azure::AnalysisServices::Mgmt::V2017_07_14::Models::ServerAdministrators
      end
      def sku_enumeration_for_new_resource_result
        Azure::AnalysisServices::Mgmt::V2017_07_14::Models::SkuEnumerationForNewResourceResult
      end
      def resource_sku
        Azure::AnalysisServices::Mgmt::V2017_07_14::Models::ResourceSku
      end
      def sku_details_for_existing_resource
        Azure::AnalysisServices::Mgmt::V2017_07_14::Models::SkuDetailsForExistingResource
      end
      def analysis_services_server_update_parameters
        Azure::AnalysisServices::Mgmt::V2017_07_14::Models::AnalysisServicesServerUpdateParameters
      end
      def sku_enumeration_for_existing_resource_result
        Azure::AnalysisServices::Mgmt::V2017_07_14::Models::SkuEnumerationForExistingResourceResult
      end
      def analysis_services_server
        Azure::AnalysisServices::Mgmt::V2017_07_14::Models::AnalysisServicesServer
      end
      def sku_tier
        Azure::AnalysisServices::Mgmt::V2017_07_14::Models::SkuTier
      end
      def state
        Azure::AnalysisServices::Mgmt::V2017_07_14::Models::State
      end
      def provisioning_state
        Azure::AnalysisServices::Mgmt::V2017_07_14::Models::ProvisioningState
      end
      def status
        Azure::AnalysisServices::Mgmt::V2017_07_14::Models::Status
      end
    end
  end
end
