# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_traffic_manager'

module Azure::TrafficManager::Management::Profile_2015_11_01
    Endpoints = Azure::ARM::TrafficManager::Api_2015_11_01::Endpoints
    Profiles = Azure::ARM::TrafficManager::Api_2015_11_01::Profiles

    module Models
      Endpoint = Azure::ARM::TrafficManager::Api_2015_11_01::Models::Endpoint
      ProfileListResult = Azure::ARM::TrafficManager::Api_2015_11_01::Models::ProfileListResult
      DnsConfig = Azure::ARM::TrafficManager::Api_2015_11_01::Models::DnsConfig
      TrafficManagerNameAvailability = Azure::ARM::TrafficManager::Api_2015_11_01::Models::TrafficManagerNameAvailability
      CheckTrafficManagerRelativeDnsNameAvailabilityParameters = Azure::ARM::TrafficManager::Api_2015_11_01::Models::CheckTrafficManagerRelativeDnsNameAvailabilityParameters
      Resource = Azure::ARM::TrafficManager::Api_2015_11_01::Models::Resource
      MonitorConfig = Azure::ARM::TrafficManager::Api_2015_11_01::Models::MonitorConfig
      Profile = Azure::ARM::TrafficManager::Api_2015_11_01::Models::Profile
    end

    #
    # TrafficManager
    #
    class TrafficManagerClass
      attr_reader :endpoints, :profiles, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        client_0 = Azure::ARM::TrafficManager::Api_2015_11_01::TrafficManagerManagementClient.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        @endpoints = client_0.endpoints
        @profiles = client_0.profiles

        @model_classes = ModelClasses.new
      end

      #
      # Method to get the client object
      #
      # @return Client object
      #
      def get_client(version = '2015-11-01')
        case version
          when '2015-11-01'
            client = Azure::ARM::TrafficManager::Api_2015_11_01::TrafficManagerManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def endpoint
          Azure::ARM::TrafficManager::Api_2015_11_01::Models::Endpoint
        end
        def profile_list_result
          Azure::ARM::TrafficManager::Api_2015_11_01::Models::ProfileListResult
        end
        def dns_config
          Azure::ARM::TrafficManager::Api_2015_11_01::Models::DnsConfig
        end
        def traffic_manager_name_availability
          Azure::ARM::TrafficManager::Api_2015_11_01::Models::TrafficManagerNameAvailability
        end
        def check_traffic_manager_relative_dns_name_availability_parameters
          Azure::ARM::TrafficManager::Api_2015_11_01::Models::CheckTrafficManagerRelativeDnsNameAvailabilityParameters
        end
        def resource
          Azure::ARM::TrafficManager::Api_2015_11_01::Models::Resource
        end
        def monitor_config
          Azure::ARM::TrafficManager::Api_2015_11_01::Models::MonitorConfig
        end
        def profile
          Azure::ARM::TrafficManager::Api_2015_11_01::Models::Profile
        end
      end
    end
end
