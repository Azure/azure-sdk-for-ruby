# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_analysis_services'


module Azure::Profiles::AnalysisServicesModule::Management::Profile_Latest
  module AnalysisServices
    Servers = Azure::ARM::AnalysisServices::Api_2017_07_14::Servers

    module Models
      AnalysisServicesServerUpdateParameters = Azure::ARM::AnalysisServices::Api_2017_07_14::Models::AnalysisServicesServerUpdateParameters
      GatewayListStatusLive = Azure::ARM::AnalysisServices::Api_2017_07_14::Models::GatewayListStatusLive
      Resource = Azure::ARM::AnalysisServices::Api_2017_07_14::Models::Resource
      GatewayError = Azure::ARM::AnalysisServices::Api_2017_07_14::Models::GatewayError
      AnalysisServicesServers = Azure::ARM::AnalysisServices::Api_2017_07_14::Models::AnalysisServicesServers
      GatewayListStatusError = Azure::ARM::AnalysisServices::Api_2017_07_14::Models::GatewayListStatusError
      GatewayDetails = Azure::ARM::AnalysisServices::Api_2017_07_14::Models::GatewayDetails
      SkuEnumerationForNewResourceResult = Azure::ARM::AnalysisServices::Api_2017_07_14::Models::SkuEnumerationForNewResourceResult
      ServerAdministrators = Azure::ARM::AnalysisServices::Api_2017_07_14::Models::ServerAdministrators
      SkuDetailsForExistingResource = Azure::ARM::AnalysisServices::Api_2017_07_14::Models::SkuDetailsForExistingResource
      ResourceSku = Azure::ARM::AnalysisServices::Api_2017_07_14::Models::ResourceSku
      SkuEnumerationForExistingResourceResult = Azure::ARM::AnalysisServices::Api_2017_07_14::Models::SkuEnumerationForExistingResourceResult
      AnalysisServicesServer = Azure::ARM::AnalysisServices::Api_2017_07_14::Models::AnalysisServicesServer
      SkuTier = Azure::ARM::AnalysisServices::Api_2017_07_14::Models::SkuTier
      State = Azure::ARM::AnalysisServices::Api_2017_07_14::Models::State
      ProvisioningState = Azure::ARM::AnalysisServices::Api_2017_07_14::Models::ProvisioningState
      Status = Azure::ARM::AnalysisServices::Api_2017_07_14::Models::Status
    end

    #
    # AnalysisServices
    #
    class AnalysisServicesClass
      attr_accessor :servers, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::AnalysisServices::Api_2017_07_14::AnalysisServicesManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.servers = Azure::ARM::AnalysisServices::Api_2017_07_14::Servers.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2017-07-14'
            client = Azure::ARM::AnalysisServices::Api_2017_07_14::AnalysisServicesManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def analysis_services_server_update_parameters
          Azure::ARM::AnalysisServices::Api_2017_07_14::Models::AnalysisServicesServerUpdateParameters
        end
        def gateway_list_status_live
          Azure::ARM::AnalysisServices::Api_2017_07_14::Models::GatewayListStatusLive
        end
        def resource
          Azure::ARM::AnalysisServices::Api_2017_07_14::Models::Resource
        end
        def gateway_error
          Azure::ARM::AnalysisServices::Api_2017_07_14::Models::GatewayError
        end
        def analysis_services_servers
          Azure::ARM::AnalysisServices::Api_2017_07_14::Models::AnalysisServicesServers
        end
        def gateway_list_status_error
          Azure::ARM::AnalysisServices::Api_2017_07_14::Models::GatewayListStatusError
        end
        def gateway_details
          Azure::ARM::AnalysisServices::Api_2017_07_14::Models::GatewayDetails
        end
        def sku_enumeration_for_new_resource_result
          Azure::ARM::AnalysisServices::Api_2017_07_14::Models::SkuEnumerationForNewResourceResult
        end
        def server_administrators
          Azure::ARM::AnalysisServices::Api_2017_07_14::Models::ServerAdministrators
        end
        def sku_details_for_existing_resource
          Azure::ARM::AnalysisServices::Api_2017_07_14::Models::SkuDetailsForExistingResource
        end
        def resource_sku
          Azure::ARM::AnalysisServices::Api_2017_07_14::Models::ResourceSku
        end
        def sku_enumeration_for_existing_resource_result
          Azure::ARM::AnalysisServices::Api_2017_07_14::Models::SkuEnumerationForExistingResourceResult
        end
        def analysis_services_server
          Azure::ARM::AnalysisServices::Api_2017_07_14::Models::AnalysisServicesServer
        end
        def sku_tier
          Azure::ARM::AnalysisServices::Api_2017_07_14::Models::SkuTier
        end
        def state
          Azure::ARM::AnalysisServices::Api_2017_07_14::Models::State
        end
        def provisioning_state
          Azure::ARM::AnalysisServices::Api_2017_07_14::Models::ProvisioningState
        end
        def status
          Azure::ARM::AnalysisServices::Api_2017_07_14::Models::Status
        end
      end
    end
  end
end
