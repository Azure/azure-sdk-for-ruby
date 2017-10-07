# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_traffic_manager'

module Azure::Profiles::TrafficManagerModule::Management::Profile_2017_09_01_Preview
  module TrafficManager
    Endpoints = Azure::ARM::TrafficManager::Api_2017_09_01_preview::Endpoints
    Profiles = Azure::ARM::TrafficManager::Api_2017_09_01_preview::Profiles
    GeographicHierarchies = Azure::ARM::TrafficManager::Api_2017_09_01_preview::GeographicHierarchies
    HeatMap = Azure::ARM::TrafficManager::Api_2017_09_01_preview::HeatMap

    module Models
      TrafficManagerNameAvailability = Azure::ARM::TrafficManager::Api_2017_09_01_preview::Models::TrafficManagerNameAvailability
      Region = Azure::ARM::TrafficManager::Api_2017_09_01_preview::Models::Region
      DeleteOperationResult = Azure::ARM::TrafficManager::Api_2017_09_01_preview::Models::DeleteOperationResult
      DnsConfig = Azure::ARM::TrafficManager::Api_2017_09_01_preview::Models::DnsConfig
      TrafficFlow = Azure::ARM::TrafficManager::Api_2017_09_01_preview::Models::TrafficFlow
      HeatMapEndpoint = Azure::ARM::TrafficManager::Api_2017_09_01_preview::Models::HeatMapEndpoint
      Resource = Azure::ARM::TrafficManager::Api_2017_09_01_preview::Models::Resource
      CheckTrafficManagerRelativeDnsNameAvailabilityParameters = Azure::ARM::TrafficManager::Api_2017_09_01_preview::Models::CheckTrafficManagerRelativeDnsNameAvailabilityParameters
      QueryExperience = Azure::ARM::TrafficManager::Api_2017_09_01_preview::Models::QueryExperience
      ProfileListResult = Azure::ARM::TrafficManager::Api_2017_09_01_preview::Models::ProfileListResult
      MonitorConfig = Azure::ARM::TrafficManager::Api_2017_09_01_preview::Models::MonitorConfig
      ProxyResource = Azure::ARM::TrafficManager::Api_2017_09_01_preview::Models::ProxyResource
      Endpoint = Azure::ARM::TrafficManager::Api_2017_09_01_preview::Models::Endpoint
      Profile = Azure::ARM::TrafficManager::Api_2017_09_01_preview::Models::Profile
      TrafficManagerGeographicHierarchy = Azure::ARM::TrafficManager::Api_2017_09_01_preview::Models::TrafficManagerGeographicHierarchy
      TrackedResource = Azure::ARM::TrafficManager::Api_2017_09_01_preview::Models::TrackedResource
      HeatMapModel = Azure::ARM::TrafficManager::Api_2017_09_01_preview::Models::HeatMapModel
      EndpointStatus = Azure::ARM::TrafficManager::Api_2017_09_01_preview::Models::EndpointStatus
      EndpointMonitorStatus = Azure::ARM::TrafficManager::Api_2017_09_01_preview::Models::EndpointMonitorStatus
      ProfileMonitorStatus = Azure::ARM::TrafficManager::Api_2017_09_01_preview::Models::ProfileMonitorStatus
      MonitorProtocol = Azure::ARM::TrafficManager::Api_2017_09_01_preview::Models::MonitorProtocol
      ProfileStatus = Azure::ARM::TrafficManager::Api_2017_09_01_preview::Models::ProfileStatus
      TrafficRoutingMethod = Azure::ARM::TrafficManager::Api_2017_09_01_preview::Models::TrafficRoutingMethod
    end

    #
    # TrafficManager
    #
    class TrafficManagerClass
      attr_accessor :endpoints, :profiles, :geographic_hierarchies, :heat_map, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::TrafficManager::Api_2017_09_01_preview::TrafficManagerManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.endpoints = Azure::ARM::TrafficManager::Api_2017_09_01_preview::Endpoints.new(client)
        self.profiles = Azure::ARM::TrafficManager::Api_2017_09_01_preview::Profiles.new(client)
        self.geographic_hierarchies = Azure::ARM::TrafficManager::Api_2017_09_01_preview::GeographicHierarchies.new(client)
        self.heat_map = Azure::ARM::TrafficManager::Api_2017_09_01_preview::HeatMap.new(client)
        self.model_classes = ModelClasses.new
      end

      #
      # Method to get the client object based on the version
      # If the version is invalid, an exception is raised
      #
      # @param version [String] The version of the required
      # client object.
      #
      # @return Client object
      #
      def get_client(version)
        case version
          when '2017-09-01-preview'
            client = Azure::ARM::TrafficManager::Api_2017_09_01_preview::TrafficManagerManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def traffic_manager_name_availability
          Azure::ARM::TrafficManager::Api_2017_09_01_preview::Models::TrafficManagerNameAvailability
        end
        def region
          Azure::ARM::TrafficManager::Api_2017_09_01_preview::Models::Region
        end
        def delete_operation_result
          Azure::ARM::TrafficManager::Api_2017_09_01_preview::Models::DeleteOperationResult
        end
        def dns_config
          Azure::ARM::TrafficManager::Api_2017_09_01_preview::Models::DnsConfig
        end
        def traffic_flow
          Azure::ARM::TrafficManager::Api_2017_09_01_preview::Models::TrafficFlow
        end
        def heat_map_endpoint
          Azure::ARM::TrafficManager::Api_2017_09_01_preview::Models::HeatMapEndpoint
        end
        def resource
          Azure::ARM::TrafficManager::Api_2017_09_01_preview::Models::Resource
        end
        def check_traffic_manager_relative_dns_name_availability_parameters
          Azure::ARM::TrafficManager::Api_2017_09_01_preview::Models::CheckTrafficManagerRelativeDnsNameAvailabilityParameters
        end
        def query_experience
          Azure::ARM::TrafficManager::Api_2017_09_01_preview::Models::QueryExperience
        end
        def profile_list_result
          Azure::ARM::TrafficManager::Api_2017_09_01_preview::Models::ProfileListResult
        end
        def monitor_config
          Azure::ARM::TrafficManager::Api_2017_09_01_preview::Models::MonitorConfig
        end
        def proxy_resource
          Azure::ARM::TrafficManager::Api_2017_09_01_preview::Models::ProxyResource
        end
        def endpoint
          Azure::ARM::TrafficManager::Api_2017_09_01_preview::Models::Endpoint
        end
        def profile
          Azure::ARM::TrafficManager::Api_2017_09_01_preview::Models::Profile
        end
        def traffic_manager_geographic_hierarchy
          Azure::ARM::TrafficManager::Api_2017_09_01_preview::Models::TrafficManagerGeographicHierarchy
        end
        def tracked_resource
          Azure::ARM::TrafficManager::Api_2017_09_01_preview::Models::TrackedResource
        end
        def heat_map_model
          Azure::ARM::TrafficManager::Api_2017_09_01_preview::Models::HeatMapModel
        end
        def endpoint_status
          Azure::ARM::TrafficManager::Api_2017_09_01_preview::Models::EndpointStatus
        end
        def endpoint_monitor_status
          Azure::ARM::TrafficManager::Api_2017_09_01_preview::Models::EndpointMonitorStatus
        end
        def profile_monitor_status
          Azure::ARM::TrafficManager::Api_2017_09_01_preview::Models::ProfileMonitorStatus
        end
        def monitor_protocol
          Azure::ARM::TrafficManager::Api_2017_09_01_preview::Models::MonitorProtocol
        end
        def profile_status
          Azure::ARM::TrafficManager::Api_2017_09_01_preview::Models::ProfileStatus
        end
        def traffic_routing_method
          Azure::ARM::TrafficManager::Api_2017_09_01_preview::Models::TrafficRoutingMethod
        end
      end
    end
  end
end
