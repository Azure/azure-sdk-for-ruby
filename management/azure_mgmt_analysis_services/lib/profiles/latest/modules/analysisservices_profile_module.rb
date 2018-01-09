# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_analysis_services'

module Azure::AnalysisServices::Profiles::Latest
  module Mgmt
    Servers = Azure::AnalysisServices::Mgmt::V2017_07_14::Servers

    module Models
      AnalysisServicesServerUpdateParameters = Azure::AnalysisServices::Mgmt::V2017_07_14::Models::AnalysisServicesServerUpdateParameters
      GatewayListStatusLive = Azure::AnalysisServices::Mgmt::V2017_07_14::Models::GatewayListStatusLive
      Resource = Azure::AnalysisServices::Mgmt::V2017_07_14::Models::Resource
      GatewayError = Azure::AnalysisServices::Mgmt::V2017_07_14::Models::GatewayError
      AnalysisServicesServers = Azure::AnalysisServices::Mgmt::V2017_07_14::Models::AnalysisServicesServers
      GatewayListStatusError = Azure::AnalysisServices::Mgmt::V2017_07_14::Models::GatewayListStatusError
      GatewayDetails = Azure::AnalysisServices::Mgmt::V2017_07_14::Models::GatewayDetails
      SkuEnumerationForNewResourceResult = Azure::AnalysisServices::Mgmt::V2017_07_14::Models::SkuEnumerationForNewResourceResult
      ServerAdministrators = Azure::AnalysisServices::Mgmt::V2017_07_14::Models::ServerAdministrators
      SkuDetailsForExistingResource = Azure::AnalysisServices::Mgmt::V2017_07_14::Models::SkuDetailsForExistingResource
      ResourceSku = Azure::AnalysisServices::Mgmt::V2017_07_14::Models::ResourceSku
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
        add_telemetry(client_0)
        @servers = client_0.servers

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Mgmt/AnalysisServices'
        profile_information = "#{profile_information}/Latest"
        client.add_user_agent_information(profile_information)
      end

    end

    class ModelClasses
      def analysis_services_server_update_parameters
        Azure::AnalysisServices::Mgmt::V2017_07_14::Models::AnalysisServicesServerUpdateParameters
      end
      def gateway_list_status_live
        Azure::AnalysisServices::Mgmt::V2017_07_14::Models::GatewayListStatusLive
      end
      def resource
        Azure::AnalysisServices::Mgmt::V2017_07_14::Models::Resource
      end
      def gateway_error
        Azure::AnalysisServices::Mgmt::V2017_07_14::Models::GatewayError
      end
      def analysis_services_servers
        Azure::AnalysisServices::Mgmt::V2017_07_14::Models::AnalysisServicesServers
      end
      def gateway_list_status_error
        Azure::AnalysisServices::Mgmt::V2017_07_14::Models::GatewayListStatusError
      end
      def gateway_details
        Azure::AnalysisServices::Mgmt::V2017_07_14::Models::GatewayDetails
      end
      def sku_enumeration_for_new_resource_result
        Azure::AnalysisServices::Mgmt::V2017_07_14::Models::SkuEnumerationForNewResourceResult
      end
      def server_administrators
        Azure::AnalysisServices::Mgmt::V2017_07_14::Models::ServerAdministrators
      end
      def sku_details_for_existing_resource
        Azure::AnalysisServices::Mgmt::V2017_07_14::Models::SkuDetailsForExistingResource
      end
      def resource_sku
        Azure::AnalysisServices::Mgmt::V2017_07_14::Models::ResourceSku
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
