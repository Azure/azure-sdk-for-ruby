# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_traffic_manager'

module Azure::TrafficManager::Management::Profile_2017_05_01
    Endpoints = Azure::ARM::TrafficManager::Api_2017_05_01::Endpoints
    Profiles = Azure::ARM::TrafficManager::Api_2017_05_01::Profiles
    GeographicHierarchies = Azure::ARM::TrafficManager::Api_2017_05_01::GeographicHierarchies

    module Models
      TrafficManagerNameAvailability = Azure::ARM::TrafficManager::Api_2017_05_01::Models::TrafficManagerNameAvailability
      Region = Azure::ARM::TrafficManager::Api_2017_05_01::Models::Region
      ProfileListResult = Azure::ARM::TrafficManager::Api_2017_05_01::Models::ProfileListResult
      CheckTrafficManagerRelativeDnsNameAvailabilityParameters = Azure::ARM::TrafficManager::Api_2017_05_01::Models::CheckTrafficManagerRelativeDnsNameAvailabilityParameters
      DeleteOperationResult = Azure::ARM::TrafficManager::Api_2017_05_01::Models::DeleteOperationResult
      MonitorConfig = Azure::ARM::TrafficManager::Api_2017_05_01::Models::MonitorConfig
      DnsConfig = Azure::ARM::TrafficManager::Api_2017_05_01::Models::DnsConfig
      Resource = Azure::ARM::TrafficManager::Api_2017_05_01::Models::Resource
      ProxyResource = Azure::ARM::TrafficManager::Api_2017_05_01::Models::ProxyResource
      Endpoint = Azure::ARM::TrafficManager::Api_2017_05_01::Models::Endpoint
      TrafficManagerGeographicHierarchy = Azure::ARM::TrafficManager::Api_2017_05_01::Models::TrafficManagerGeographicHierarchy
      TrackedResource = Azure::ARM::TrafficManager::Api_2017_05_01::Models::TrackedResource
      Profile = Azure::ARM::TrafficManager::Api_2017_05_01::Models::Profile
      TrafficManagerUserMetricsKeyModel = Azure::ARM::TrafficManager::Api_2017_05_01::Models::TrafficManagerUserMetricsKeyModel
      EndpointStatus = Azure::ARM::TrafficManager::Api_2017_05_01::Models::EndpointStatus
      EndpointMonitorStatus = Azure::ARM::TrafficManager::Api_2017_05_01::Models::EndpointMonitorStatus
      ProfileMonitorStatus = Azure::ARM::TrafficManager::Api_2017_05_01::Models::ProfileMonitorStatus
      MonitorProtocol = Azure::ARM::TrafficManager::Api_2017_05_01::Models::MonitorProtocol
      ProfileStatus = Azure::ARM::TrafficManager::Api_2017_05_01::Models::ProfileStatus
      TrafficRoutingMethod = Azure::ARM::TrafficManager::Api_2017_05_01::Models::TrafficRoutingMethod
    end

    #
    # TrafficManager
    #
    class TrafficManagerClass
      attr_reader :endpoints, :profiles, :geographic_hierarchies, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        client_0 = Azure::ARM::TrafficManager::Api_2017_05_01::TrafficManagerManagementClient.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        @endpoints = client_0.endpoints
        @profiles = client_0.profiles
        @geographic_hierarchies = client_0.geographic_hierarchies

        @model_classes = ModelClasses.new
      end

      #
      # Method to get the client object
      #
      # @return Client object
      #
      def get_client(version = '2017-05-01')
        case version
          when '2017-05-01'
            client = Azure::ARM::TrafficManager::Api_2017_05_01::TrafficManagerManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def traffic_manager_name_availability
          Azure::ARM::TrafficManager::Api_2017_05_01::Models::TrafficManagerNameAvailability
        end
        def region
          Azure::ARM::TrafficManager::Api_2017_05_01::Models::Region
        end
        def profile_list_result
          Azure::ARM::TrafficManager::Api_2017_05_01::Models::ProfileListResult
        end
        def check_traffic_manager_relative_dns_name_availability_parameters
          Azure::ARM::TrafficManager::Api_2017_05_01::Models::CheckTrafficManagerRelativeDnsNameAvailabilityParameters
        end
        def delete_operation_result
          Azure::ARM::TrafficManager::Api_2017_05_01::Models::DeleteOperationResult
        end
        def monitor_config
          Azure::ARM::TrafficManager::Api_2017_05_01::Models::MonitorConfig
        end
        def dns_config
          Azure::ARM::TrafficManager::Api_2017_05_01::Models::DnsConfig
        end
        def resource
          Azure::ARM::TrafficManager::Api_2017_05_01::Models::Resource
        end
        def proxy_resource
          Azure::ARM::TrafficManager::Api_2017_05_01::Models::ProxyResource
        end
        def endpoint
          Azure::ARM::TrafficManager::Api_2017_05_01::Models::Endpoint
        end
        def traffic_manager_geographic_hierarchy
          Azure::ARM::TrafficManager::Api_2017_05_01::Models::TrafficManagerGeographicHierarchy
        end
        def tracked_resource
          Azure::ARM::TrafficManager::Api_2017_05_01::Models::TrackedResource
        end
        def profile
          Azure::ARM::TrafficManager::Api_2017_05_01::Models::Profile
        end
        def traffic_manager_user_metrics_key_model
          Azure::ARM::TrafficManager::Api_2017_05_01::Models::TrafficManagerUserMetricsKeyModel
        end
        def endpoint_status
          Azure::ARM::TrafficManager::Api_2017_05_01::Models::EndpointStatus
        end
        def endpoint_monitor_status
          Azure::ARM::TrafficManager::Api_2017_05_01::Models::EndpointMonitorStatus
        end
        def profile_monitor_status
          Azure::ARM::TrafficManager::Api_2017_05_01::Models::ProfileMonitorStatus
        end
        def monitor_protocol
          Azure::ARM::TrafficManager::Api_2017_05_01::Models::MonitorProtocol
        end
        def profile_status
          Azure::ARM::TrafficManager::Api_2017_05_01::Models::ProfileStatus
        end
        def traffic_routing_method
          Azure::ARM::TrafficManager::Api_2017_05_01::Models::TrafficRoutingMethod
        end
      end
    end
end
