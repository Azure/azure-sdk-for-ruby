# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_network'


module Azure::Profiles::NetworkModule::Management::Profile_2017_03_30
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
    class NetworkClass
      attr_accessor :network_interfaces, :public_ipaddresses, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::Network::Api_2017_03_30::NetworkManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.network_interfaces = Azure::ARM::Network::Api_2017_03_30::NetworkInterfaces.new(client)
        self.public_ipaddresses = Azure::ARM::Network::Api_2017_03_30::PublicIPAddresses.new(client)
        self.model_classes = ModelClasses.new
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

      class ModelClasses
        def service_endpoint_properties_format
          Azure::ARM::Network::Api_2017_03_30::Models::ServiceEndpointPropertiesFormat
        end
        def network_interface_list_result
          Azure::ARM::Network::Api_2017_03_30::Models::NetworkInterfaceListResult
        end
        def public_ipaddress_dns_settings
          Azure::ARM::Network::Api_2017_03_30::Models::PublicIPAddressDnsSettings
        end
        def public_ipaddress_sku
          Azure::ARM::Network::Api_2017_03_30::Models::PublicIPAddressSku
        end
        def public_ipaddress_list_result
          Azure::ARM::Network::Api_2017_03_30::Models::PublicIPAddressListResult
        end
        def network_interface_dns_settings
          Azure::ARM::Network::Api_2017_03_30::Models::NetworkInterfaceDnsSettings
        end
        def application_gateway_backend_address
          Azure::ARM::Network::Api_2017_03_30::Models::ApplicationGatewayBackendAddress
        end
        def application_security_group
          Azure::ARM::Network::Api_2017_03_30::Models::ApplicationSecurityGroup
        end
        def resource_navigation_link
          Azure::ARM::Network::Api_2017_03_30::Models::ResourceNavigationLink
        end
        def route
          Azure::ARM::Network::Api_2017_03_30::Models::Route
        end
        def security_rule
          Azure::ARM::Network::Api_2017_03_30::Models::SecurityRule
        end
        def application_gateway_backend_address_pool
          Azure::ARM::Network::Api_2017_03_30::Models::ApplicationGatewayBackendAddressPool
        end
        def backend_address_pool
          Azure::ARM::Network::Api_2017_03_30::Models::BackendAddressPool
        end
        def inbound_nat_rule
          Azure::ARM::Network::Api_2017_03_30::Models::InboundNatRule
        end
        def ipconfiguration
          Azure::ARM::Network::Api_2017_03_30::Models::IPConfiguration
        end
        def public_ipaddress
          Azure::ARM::Network::Api_2017_03_30::Models::PublicIPAddress
        end
        def network_interface_ipconfiguration
          Azure::ARM::Network::Api_2017_03_30::Models::NetworkInterfaceIPConfiguration
        end
        def network_interface
          Azure::ARM::Network::Api_2017_03_30::Models::NetworkInterface
        end
        def network_security_group
          Azure::ARM::Network::Api_2017_03_30::Models::NetworkSecurityGroup
        end
        def route_table
          Azure::ARM::Network::Api_2017_03_30::Models::RouteTable
        end
        def subnet
          Azure::ARM::Network::Api_2017_03_30::Models::Subnet
        end
        def route_next_hop_type
          Azure::ARM::Network::Api_2017_03_30::Models::RouteNextHopType
        end
        def security_rule_protocol
          Azure::ARM::Network::Api_2017_03_30::Models::SecurityRuleProtocol
        end
        def security_rule_access
          Azure::ARM::Network::Api_2017_03_30::Models::SecurityRuleAccess
        end
        def security_rule_direction
          Azure::ARM::Network::Api_2017_03_30::Models::SecurityRuleDirection
        end
        def transport_protocol
          Azure::ARM::Network::Api_2017_03_30::Models::TransportProtocol
        end
        def ipallocation_method
          Azure::ARM::Network::Api_2017_03_30::Models::IPAllocationMethod
        end
        def ipversion
          Azure::ARM::Network::Api_2017_03_30::Models::IPVersion
        end
        def public_ipaddress_sku_name
          Azure::ARM::Network::Api_2017_03_30::Models::PublicIPAddressSkuName
        end
      end
    end
  end
end
