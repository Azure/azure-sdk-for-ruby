# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_analysis_services'


module Azure::Profiles::AnalysisServicesModule::Management::Profile_2016_05_16
  module AnalysisServices
    Servers = Azure::ARM::AnalysisServices::Api_2016_05_16::Servers

    module Models
      ServerAdministrators = Azure::ARM::AnalysisServices::Api_2016_05_16::Models::ServerAdministrators
      AnalysisServicesServerUpdateParameters = Azure::ARM::AnalysisServices::Api_2016_05_16::Models::AnalysisServicesServerUpdateParameters
      Resource = Azure::ARM::AnalysisServices::Api_2016_05_16::Models::Resource
      SkuEnumerationForNewResourceResult = Azure::ARM::AnalysisServices::Api_2016_05_16::Models::SkuEnumerationForNewResourceResult
      AnalysisServicesServers = Azure::ARM::AnalysisServices::Api_2016_05_16::Models::AnalysisServicesServers
      SkuDetailsForExistingResource = Azure::ARM::AnalysisServices::Api_2016_05_16::Models::SkuDetailsForExistingResource
      ResourceSku = Azure::ARM::AnalysisServices::Api_2016_05_16::Models::ResourceSku
      SkuEnumerationForExistingResourceResult = Azure::ARM::AnalysisServices::Api_2016_05_16::Models::SkuEnumerationForExistingResourceResult
      AnalysisServicesServer = Azure::ARM::AnalysisServices::Api_2016_05_16::Models::AnalysisServicesServer
      SkuTier = Azure::ARM::AnalysisServices::Api_2016_05_16::Models::SkuTier
      State = Azure::ARM::AnalysisServices::Api_2016_05_16::Models::State
      ProvisioningState = Azure::ARM::AnalysisServices::Api_2016_05_16::Models::ProvisioningState
    end

    #
    # AnalysisServices
    #
    class AnalysisServicesClass
      attr_accessor :servers, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::AnalysisServices::Api_2016_05_16::AnalysisServicesManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.servers = Azure::ARM::AnalysisServices::Api_2016_05_16::Servers.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2016-05-16'
            client = Azure::ARM::AnalysisServices::Api_2016_05_16::AnalysisServicesManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def server_administrators
          Azure::ARM::AnalysisServices::Api_2016_05_16::Models::ServerAdministrators
        end
        def analysis_services_server_update_parameters
          Azure::ARM::AnalysisServices::Api_2016_05_16::Models::AnalysisServicesServerUpdateParameters
        end
        def resource
          Azure::ARM::AnalysisServices::Api_2016_05_16::Models::Resource
        end
        def sku_enumeration_for_new_resource_result
          Azure::ARM::AnalysisServices::Api_2016_05_16::Models::SkuEnumerationForNewResourceResult
        end
        def analysis_services_servers
          Azure::ARM::AnalysisServices::Api_2016_05_16::Models::AnalysisServicesServers
        end
        def sku_details_for_existing_resource
          Azure::ARM::AnalysisServices::Api_2016_05_16::Models::SkuDetailsForExistingResource
        end
        def resource_sku
          Azure::ARM::AnalysisServices::Api_2016_05_16::Models::ResourceSku
        end
        def sku_enumeration_for_existing_resource_result
          Azure::ARM::AnalysisServices::Api_2016_05_16::Models::SkuEnumerationForExistingResourceResult
        end
        def analysis_services_server
          Azure::ARM::AnalysisServices::Api_2016_05_16::Models::AnalysisServicesServer
        end
        def sku_tier
          Azure::ARM::AnalysisServices::Api_2016_05_16::Models::SkuTier
        end
        def state
          Azure::ARM::AnalysisServices::Api_2016_05_16::Models::State
        end
        def provisioning_state
          Azure::ARM::AnalysisServices::Api_2016_05_16::Models::ProvisioningState
        end
      end
    end
  end
end
