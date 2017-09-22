# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_network'

module Azure
  module Profiles
    module Management
      module Network
        NetworkInterfaces = Azure::ARM::Network::Api_2017_03_30::NetworkInterfaces
        PublicIPAddresses = Azure::ARM::Network::Api_2017_03_30::PublicIPAddresses

        module Models
          ServiceEndpointPropertiesFormat = Azure::ARM::Network::Api_2017_03_30::Models::ServiceEndpointPropertiesFormat
          NetworkInterfaceListResult = Azure::ARM::Network::Api_2017_03_30::Models::NetworkInterfaceListResult
          PublicIPAddressDnsSettings = Azure::ARM::Network::Api_2017_03_30::Models::PublicIPAddressDnsSettings
          PublicIPAddressSku = Azure::ARM::Network::Api_2017_03_30::Models::PublicIPAddressSku
          PublicIPAddressListResult = Azure::ARM::Network::Api_2017_03_30::Models::PublicIPAddressListResult
          NetworkInterfaceDnsSettings = Azure::ARM::Network::Api_2017_03_30::Models::NetworkInterfaceDnsSettings
          ApplicationGatewayBackendAddress = Azure::ARM::Network::Api_2017_03_30::Models::ApplicationGatewayBackendAddress
          ApplicationSecurityGroup = Azure::ARM::Network::Api_2017_03_30::Models::ApplicationSecurityGroup
          ResourceNavigationLink = Azure::ARM::Network::Api_2017_03_30::Models::ResourceNavigationLink
          Route = Azure::ARM::Network::Api_2017_03_30::Models::Route
          SecurityRule = Azure::ARM::Network::Api_2017_03_30::Models::SecurityRule
          ApplicationGatewayBackendAddressPool = Azure::ARM::Network::Api_2017_03_30::Models::ApplicationGatewayBackendAddressPool
          BackendAddressPool = Azure::ARM::Network::Api_2017_03_30::Models::BackendAddressPool
          InboundNatRule = Azure::ARM::Network::Api_2017_03_30::Models::InboundNatRule
          IPConfiguration = Azure::ARM::Network::Api_2017_03_30::Models::IPConfiguration
          PublicIPAddress = Azure::ARM::Network::Api_2017_03_30::Models::PublicIPAddress
          NetworkInterfaceIPConfiguration = Azure::ARM::Network::Api_2017_03_30::Models::NetworkInterfaceIPConfiguration
          NetworkInterface = Azure::ARM::Network::Api_2017_03_30::Models::NetworkInterface
          NetworkSecurityGroup = Azure::ARM::Network::Api_2017_03_30::Models::NetworkSecurityGroup
          RouteTable = Azure::ARM::Network::Api_2017_03_30::Models::RouteTable
          Subnet = Azure::ARM::Network::Api_2017_03_30::Models::Subnet
          RouteNextHopType = Azure::ARM::Network::Api_2017_03_30::Models::RouteNextHopType
          SecurityRuleProtocol = Azure::ARM::Network::Api_2017_03_30::Models::SecurityRuleProtocol
          SecurityRuleAccess = Azure::ARM::Network::Api_2017_03_30::Models::SecurityRuleAccess
          SecurityRuleDirection = Azure::ARM::Network::Api_2017_03_30::Models::SecurityRuleDirection
          TransportProtocol = Azure::ARM::Network::Api_2017_03_30::Models::TransportProtocol
          IPAllocationMethod = Azure::ARM::Network::Api_2017_03_30::Models::IPAllocationMethod
          IPVersion = Azure::ARM::Network::Api_2017_03_30::Models::IPVersion
          PublicIPAddressSkuName = Azure::ARM::Network::Api_2017_03_30::Models::PublicIPAddressSkuName
        end

        #
        # Network
        #
        class Network
          attr_accessor :network_interfaces, :public_ipaddresses, :configurable, :base_url, :options

          def initialize(configurable, base_url, options)
            @configurable, @base_url, @options = configurable, base_url, options
            client = Azure::ARM::Network::Api_2017_03_30::NetworkManagementClient.new(configurable.credentials, base_url, options)
            client.subscription_id = configurable.subscription_id
            self.network_interfaces = Azure::ARM::Network::Api_2017_03_30::NetworkInterfaces.new(client)
            self.public_ipaddresses = Azure::ARM::Network::Api_2017_03_30::PublicIPAddresses.new(client)
          end

          def get_client(version)
            case version
              when '2017-03-30'
                client = Azure::ARM::Network::Api_2017_03_30::NetworkManagementClient.new(@configurable.credentials, @base_url, @options)
                client.subscription_id = configurable.subscription_id
                return client
              else
                raise "No client of version #{version} could be found in this profile."
            end
          end

        end
      end
    end
  end
end
