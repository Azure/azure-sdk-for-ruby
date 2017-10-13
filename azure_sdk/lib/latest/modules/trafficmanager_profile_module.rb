# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_traffic_manager'

module Azure::Profiles::Latest
  module TrafficManager::Mgmt
    Endpoints = Azure::TrafficManager::Mgmt::V2017_05_01::Endpoints
    Profiles = Azure::TrafficManager::Mgmt::V2017_05_01::Profiles
    GeographicHierarchies = Azure::TrafficManager::Mgmt::V2017_05_01::GeographicHierarchies
    HeatMap = Azure::TrafficManager::Mgmt::V2017_09_01_preview::HeatMap
    TrafficManagerUserMetricsKeys = Azure::TrafficManager::Mgmt::V2017_09_01_preview::TrafficManagerUserMetricsKeys

    module Models
      TrafficManagerNameAvailability = Azure::TrafficManager::Mgmt::V2017_05_01::Models::TrafficManagerNameAvailability
      Region = Azure::TrafficManager::Mgmt::V2017_05_01::Models::Region
      ProfileListResult = Azure::TrafficManager::Mgmt::V2017_05_01::Models::ProfileListResult
      CheckTrafficManagerRelativeDnsNameAvailabilityParameters = Azure::TrafficManager::Mgmt::V2017_05_01::Models::CheckTrafficManagerRelativeDnsNameAvailabilityParameters
      MonitorConfig = Azure::TrafficManager::Mgmt::V2017_05_01::Models::MonitorConfig
      DnsConfig = Azure::TrafficManager::Mgmt::V2017_05_01::Models::DnsConfig
      Endpoint = Azure::TrafficManager::Mgmt::V2017_05_01::Models::Endpoint
      TrafficManagerGeographicHierarchy = Azure::TrafficManager::Mgmt::V2017_05_01::Models::TrafficManagerGeographicHierarchy
      Profile = Azure::TrafficManager::Mgmt::V2017_05_01::Models::Profile
      EndpointStatus = Azure::TrafficManager::Mgmt::V2017_05_01::Models::EndpointStatus
      EndpointMonitorStatus = Azure::TrafficManager::Mgmt::V2017_05_01::Models::EndpointMonitorStatus
      ProfileMonitorStatus = Azure::TrafficManager::Mgmt::V2017_05_01::Models::ProfileMonitorStatus
      MonitorProtocol = Azure::TrafficManager::Mgmt::V2017_05_01::Models::MonitorProtocol
      ProfileStatus = Azure::TrafficManager::Mgmt::V2017_05_01::Models::ProfileStatus
      TrafficRoutingMethod = Azure::TrafficManager::Mgmt::V2017_05_01::Models::TrafficRoutingMethod
      DeleteOperationResult = Azure::TrafficManager::Mgmt::V2017_09_01_preview::Models::DeleteOperationResult
      HeatMapEndpoint = Azure::TrafficManager::Mgmt::V2017_09_01_preview::Models::HeatMapEndpoint
      Resource = Azure::TrafficManager::Mgmt::V2017_09_01_preview::Models::Resource
      TrafficFlow = Azure::TrafficManager::Mgmt::V2017_09_01_preview::Models::TrafficFlow
      QueryExperience = Azure::TrafficManager::Mgmt::V2017_09_01_preview::Models::QueryExperience
      TrackedResource = Azure::TrafficManager::Mgmt::V2017_09_01_preview::Models::TrackedResource
      ProxyResource = Azure::TrafficManager::Mgmt::V2017_09_01_preview::Models::ProxyResource
      HeatMapModel = Azure::TrafficManager::Mgmt::V2017_09_01_preview::Models::HeatMapModel
      TrafficManagerUserMetricsKeyModel = Azure::TrafficManager::Mgmt::V2017_09_01_preview::Models::TrafficManagerUserMetricsKeyModel
    end

    #
    # TrafficManager
    #
    class TrafficManagerClass
      attr_reader :endpoints, :profiles, :geographic_hierarchies, :heat_map, :traffic_manager_user_metrics_keys, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        client_0 = Azure::TrafficManager::Mgmt::V2017_05_01::TrafficManagerManagementClient.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        @endpoints = client_0.endpoints
        @profiles = client_0.profiles
        @geographic_hierarchies = client_0.geographic_hierarchies

        client_1 = Azure::TrafficManager::Mgmt::V2017_09_01_preview::TrafficManagerManagementClient.new(configurable.credentials, base_url, options)
        if(client_1.respond_to?(:subscription_id))
          client_1.subscription_id = configurable.subscription_id
        end
        @heat_map = client_1.heat_map
        @traffic_manager_user_metrics_keys = client_1.traffic_manager_user_metrics_keys

        @model_classes = ModelClasses.new
      end

      #
      # Method to get the client object
      #
      # @return Client object
      #
      def get_client(version = '2017-09-01-preview')
        case version
          when '2017-05-01'
            client = Azure::TrafficManager::Mgmt::V2017_05_01::TrafficManagerManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          when '2017-09-01-preview'
            client = Azure::TrafficManager::Mgmt::V2017_09_01_preview::TrafficManagerManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def traffic_manager_name_availability
          Azure::TrafficManager::Mgmt::V2017_05_01::Models::TrafficManagerNameAvailability
        end
        def region
          Azure::TrafficManager::Mgmt::V2017_05_01::Models::Region
        end
        def profile_list_result
          Azure::TrafficManager::Mgmt::V2017_05_01::Models::ProfileListResult
        end
        def check_traffic_manager_relative_dns_name_availability_parameters
          Azure::TrafficManager::Mgmt::V2017_05_01::Models::CheckTrafficManagerRelativeDnsNameAvailabilityParameters
        end
        def monitor_config
          Azure::TrafficManager::Mgmt::V2017_05_01::Models::MonitorConfig
        end
        def dns_config
          Azure::TrafficManager::Mgmt::V2017_05_01::Models::DnsConfig
        end
        def endpoint
          Azure::TrafficManager::Mgmt::V2017_05_01::Models::Endpoint
        end
        def traffic_manager_geographic_hierarchy
          Azure::TrafficManager::Mgmt::V2017_05_01::Models::TrafficManagerGeographicHierarchy
        end
        def profile
          Azure::TrafficManager::Mgmt::V2017_05_01::Models::Profile
        end
        def endpoint_status
          Azure::TrafficManager::Mgmt::V2017_05_01::Models::EndpointStatus
        end
        def endpoint_monitor_status
          Azure::TrafficManager::Mgmt::V2017_05_01::Models::EndpointMonitorStatus
        end
        def profile_monitor_status
          Azure::TrafficManager::Mgmt::V2017_05_01::Models::ProfileMonitorStatus
        end
        def monitor_protocol
          Azure::TrafficManager::Mgmt::V2017_05_01::Models::MonitorProtocol
        end
        def profile_status
          Azure::TrafficManager::Mgmt::V2017_05_01::Models::ProfileStatus
        end
        def traffic_routing_method
          Azure::TrafficManager::Mgmt::V2017_05_01::Models::TrafficRoutingMethod
        end
        def delete_operation_result
          Azure::TrafficManager::Mgmt::V2017_09_01_preview::Models::DeleteOperationResult
        end
        def heat_map_endpoint
          Azure::TrafficManager::Mgmt::V2017_09_01_preview::Models::HeatMapEndpoint
        end
        def resource
          Azure::TrafficManager::Mgmt::V2017_09_01_preview::Models::Resource
        end
        def traffic_flow
          Azure::TrafficManager::Mgmt::V2017_09_01_preview::Models::TrafficFlow
        end
        def query_experience
          Azure::TrafficManager::Mgmt::V2017_09_01_preview::Models::QueryExperience
        end
        def tracked_resource
          Azure::TrafficManager::Mgmt::V2017_09_01_preview::Models::TrackedResource
        end
        def proxy_resource
          Azure::TrafficManager::Mgmt::V2017_09_01_preview::Models::ProxyResource
        end
        def heat_map_model
          Azure::TrafficManager::Mgmt::V2017_09_01_preview::Models::HeatMapModel
        end
        def traffic_manager_user_metrics_key_model
          Azure::TrafficManager::Mgmt::V2017_09_01_preview::Models::TrafficManagerUserMetricsKeyModel
        end
      end
    end
  end
end
