# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_network'


module Azure::Profiles::NetworkModule::Management::Profile_2015_05_01_Preview
  module Network
    ApplicationGateways = Azure::ARM::Network::Api_2015_05_01_preview::ApplicationGateways
    ExpressRouteCircuits = Azure::ARM::Network::Api_2015_05_01_preview::ExpressRouteCircuits
    ExpressRouteServiceProviders = Azure::ARM::Network::Api_2015_05_01_preview::ExpressRouteServiceProviders
    ExpressRouteCircuitPeerings = Azure::ARM::Network::Api_2015_05_01_preview::ExpressRouteCircuitPeerings
    LoadBalancers = Azure::ARM::Network::Api_2015_05_01_preview::LoadBalancers
    LocalNetworkGateways = Azure::ARM::Network::Api_2015_05_01_preview::LocalNetworkGateways
    NetworkInterfaces = Azure::ARM::Network::Api_2015_05_01_preview::NetworkInterfaces
    RouteTables = Azure::ARM::Network::Api_2015_05_01_preview::RouteTables
    NetworkSecurityGroups = Azure::ARM::Network::Api_2015_05_01_preview::NetworkSecurityGroups
    PublicIpAddresses = Azure::ARM::Network::Api_2015_05_01_preview::PublicIpAddresses
    Routes = Azure::ARM::Network::Api_2015_05_01_preview::Routes
    SecurityRules = Azure::ARM::Network::Api_2015_05_01_preview::SecurityRules
    ExpressRouteCircuitAuthorizations = Azure::ARM::Network::Api_2015_05_01_preview::ExpressRouteCircuitAuthorizations
    Subnets = Azure::ARM::Network::Api_2015_05_01_preview::Subnets
    Usages = Azure::ARM::Network::Api_2015_05_01_preview::Usages
    VirtualNetworkGatewayConnections = Azure::ARM::Network::Api_2015_05_01_preview::VirtualNetworkGatewayConnections
    VirtualNetworkGateways = Azure::ARM::Network::Api_2015_05_01_preview::VirtualNetworkGateways
    VirtualNetworks = Azure::ARM::Network::Api_2015_05_01_preview::VirtualNetworks

    module Models
      LoadBalancerListResult = Azure::ARM::Network::Api_2015_05_01_preview::Models::LoadBalancerListResult
      AddressSpace = Azure::ARM::Network::Api_2015_05_01_preview::Models::AddressSpace
      ExpressRouteCircuitPeeringListResult = Azure::ARM::Network::Api_2015_05_01_preview::Models::ExpressRouteCircuitPeeringListResult
      VirtualNetworkGatewayListResult = Azure::ARM::Network::Api_2015_05_01_preview::Models::VirtualNetworkGatewayListResult
      ExpressRouteServiceProviderBandwidthsOffered = Azure::ARM::Network::Api_2015_05_01_preview::Models::ExpressRouteServiceProviderBandwidthsOffered
      ExpressRouteServiceProviderPropertiesFormat = Azure::ARM::Network::Api_2015_05_01_preview::Models::ExpressRouteServiceProviderPropertiesFormat
      ApplicationGatewayBackendAddress = Azure::ARM::Network::Api_2015_05_01_preview::Models::ApplicationGatewayBackendAddress
      ExpressRouteServiceProvider = Azure::ARM::Network::Api_2015_05_01_preview::Models::ExpressRouteServiceProvider
      RouteListResult = Azure::ARM::Network::Api_2015_05_01_preview::Models::RouteListResult
      ExpressRouteServiceProviderListResult = Azure::ARM::Network::Api_2015_05_01_preview::Models::ExpressRouteServiceProviderListResult
      DhcpOptions = Azure::ARM::Network::Api_2015_05_01_preview::Models::DhcpOptions
      PublicIpAddressDnsSettings = Azure::ARM::Network::Api_2015_05_01_preview::Models::PublicIpAddressDnsSettings
      ErrorDetails = Azure::ARM::Network::Api_2015_05_01_preview::Models::ErrorDetails
      ExpressRouteCircuitSku = Azure::ARM::Network::Api_2015_05_01_preview::Models::ExpressRouteCircuitSku
      RouteTableListResult = Azure::ARM::Network::Api_2015_05_01_preview::Models::RouteTableListResult
      ExpressRouteCircuitPeeringConfig = Azure::ARM::Network::Api_2015_05_01_preview::Models::ExpressRouteCircuitPeeringConfig
      UsageName = Azure::ARM::Network::Api_2015_05_01_preview::Models::UsageName
      VirtualNetworkListResult = Azure::ARM::Network::Api_2015_05_01_preview::Models::VirtualNetworkListResult
      SubnetListResult = Azure::ARM::Network::Api_2015_05_01_preview::Models::SubnetListResult
      DnsNameAvailabilityResult = Azure::ARM::Network::Api_2015_05_01_preview::Models::DnsNameAvailabilityResult
      ConnectionSharedKey = Azure::ARM::Network::Api_2015_05_01_preview::Models::ConnectionSharedKey
      ExpressRouteCircuitsArpTableListResult = Azure::ARM::Network::Api_2015_05_01_preview::Models::ExpressRouteCircuitsArpTableListResult
      VirtualNetworkGatewayConnectionListResult = Azure::ARM::Network::Api_2015_05_01_preview::Models::VirtualNetworkGatewayConnectionListResult
      ExpressRouteCircuitsRoutesTableListResult = Azure::ARM::Network::Api_2015_05_01_preview::Models::ExpressRouteCircuitsRoutesTableListResult
      ConnectionResetSharedKey = Azure::ARM::Network::Api_2015_05_01_preview::Models::ConnectionResetSharedKey
      ExpressRouteCircuitListResult = Azure::ARM::Network::Api_2015_05_01_preview::Models::ExpressRouteCircuitListResult
      UsagesListResult = Azure::ARM::Network::Api_2015_05_01_preview::Models::UsagesListResult
      SecurityRuleListResult = Azure::ARM::Network::Api_2015_05_01_preview::Models::SecurityRuleListResult
      Usage = Azure::ARM::Network::Api_2015_05_01_preview::Models::Usage
      ApplicationGatewayListResult = Azure::ARM::Network::Api_2015_05_01_preview::Models::ApplicationGatewayListResult
      ApplicationGatewaySku = Azure::ARM::Network::Api_2015_05_01_preview::Models::ApplicationGatewaySku
      ExpressRouteCircuitStats = Azure::ARM::Network::Api_2015_05_01_preview::Models::ExpressRouteCircuitStats
      ExpressRouteCircuitServiceProviderProperties = Azure::ARM::Network::Api_2015_05_01_preview::Models::ExpressRouteCircuitServiceProviderProperties
      Error = Azure::ARM::Network::Api_2015_05_01_preview::Models::Error
      ExpressRouteCircuitRoutesTable = Azure::ARM::Network::Api_2015_05_01_preview::Models::ExpressRouteCircuitRoutesTable
      AuthorizationListResult = Azure::ARM::Network::Api_2015_05_01_preview::Models::AuthorizationListResult
      LocalNetworkGatewayListResult = Azure::ARM::Network::Api_2015_05_01_preview::Models::LocalNetworkGatewayListResult
      NetworkSecurityGroupListResult = Azure::ARM::Network::Api_2015_05_01_preview::Models::NetworkSecurityGroupListResult
      ExpressRouteCircuitsStatsListResult = Azure::ARM::Network::Api_2015_05_01_preview::Models::ExpressRouteCircuitsStatsListResult
      NetworkInterfaceDnsSettings = Azure::ARM::Network::Api_2015_05_01_preview::Models::NetworkInterfaceDnsSettings
      ExpressRouteCircuitArpTable = Azure::ARM::Network::Api_2015_05_01_preview::Models::ExpressRouteCircuitArpTable
      AzureAsyncOperationResult = Azure::ARM::Network::Api_2015_05_01_preview::Models::AzureAsyncOperationResult
      PublicIpAddressListResult = Azure::ARM::Network::Api_2015_05_01_preview::Models::PublicIpAddressListResult
      NetworkInterfaceListResult = Azure::ARM::Network::Api_2015_05_01_preview::Models::NetworkInterfaceListResult
      ApplicationGatewayIPConfiguration = Azure::ARM::Network::Api_2015_05_01_preview::Models::ApplicationGatewayIPConfiguration
      ApplicationGatewaySslCertificate = Azure::ARM::Network::Api_2015_05_01_preview::Models::ApplicationGatewaySslCertificate
      ApplicationGatewayFrontendIPConfiguration = Azure::ARM::Network::Api_2015_05_01_preview::Models::ApplicationGatewayFrontendIPConfiguration
      ApplicationGatewayFrontendPort = Azure::ARM::Network::Api_2015_05_01_preview::Models::ApplicationGatewayFrontendPort
      ApplicationGatewayBackendAddressPool = Azure::ARM::Network::Api_2015_05_01_preview::Models::ApplicationGatewayBackendAddressPool
      ApplicationGatewayBackendHttpSettings = Azure::ARM::Network::Api_2015_05_01_preview::Models::ApplicationGatewayBackendHttpSettings
      ApplicationGatewayHttpListener = Azure::ARM::Network::Api_2015_05_01_preview::Models::ApplicationGatewayHttpListener
      ApplicationGatewayRequestRoutingRule = Azure::ARM::Network::Api_2015_05_01_preview::Models::ApplicationGatewayRequestRoutingRule
      ApplicationGateway = Azure::ARM::Network::Api_2015_05_01_preview::Models::ApplicationGateway
      ExpressRouteCircuitAuthorization = Azure::ARM::Network::Api_2015_05_01_preview::Models::ExpressRouteCircuitAuthorization
      ExpressRouteCircuitPeering = Azure::ARM::Network::Api_2015_05_01_preview::Models::ExpressRouteCircuitPeering
      ExpressRouteCircuit = Azure::ARM::Network::Api_2015_05_01_preview::Models::ExpressRouteCircuit
      FrontendIpConfiguration = Azure::ARM::Network::Api_2015_05_01_preview::Models::FrontendIpConfiguration
      BackendAddressPool = Azure::ARM::Network::Api_2015_05_01_preview::Models::BackendAddressPool
      LoadBalancingRule = Azure::ARM::Network::Api_2015_05_01_preview::Models::LoadBalancingRule
      Probe = Azure::ARM::Network::Api_2015_05_01_preview::Models::Probe
      InboundNatRule = Azure::ARM::Network::Api_2015_05_01_preview::Models::InboundNatRule
      InboundNatPool = Azure::ARM::Network::Api_2015_05_01_preview::Models::InboundNatPool
      OutboundNatRule = Azure::ARM::Network::Api_2015_05_01_preview::Models::OutboundNatRule
      LoadBalancer = Azure::ARM::Network::Api_2015_05_01_preview::Models::LoadBalancer
      LocalNetworkGateway = Azure::ARM::Network::Api_2015_05_01_preview::Models::LocalNetworkGateway
      NetworkInterfaceIpConfiguration = Azure::ARM::Network::Api_2015_05_01_preview::Models::NetworkInterfaceIpConfiguration
      NetworkInterface = Azure::ARM::Network::Api_2015_05_01_preview::Models::NetworkInterface
      Route = Azure::ARM::Network::Api_2015_05_01_preview::Models::Route
      RouteTable = Azure::ARM::Network::Api_2015_05_01_preview::Models::RouteTable
      SecurityRule = Azure::ARM::Network::Api_2015_05_01_preview::Models::SecurityRule
      NetworkSecurityGroup = Azure::ARM::Network::Api_2015_05_01_preview::Models::NetworkSecurityGroup
      PublicIpAddress = Azure::ARM::Network::Api_2015_05_01_preview::Models::PublicIpAddress
      Subnet = Azure::ARM::Network::Api_2015_05_01_preview::Models::Subnet
      VirtualNetworkGatewayIpConfiguration = Azure::ARM::Network::Api_2015_05_01_preview::Models::VirtualNetworkGatewayIpConfiguration
      VirtualNetworkGateway = Azure::ARM::Network::Api_2015_05_01_preview::Models::VirtualNetworkGateway
      VirtualNetworkGatewayConnection = Azure::ARM::Network::Api_2015_05_01_preview::Models::VirtualNetworkGatewayConnection
      VirtualNetwork = Azure::ARM::Network::Api_2015_05_01_preview::Models::VirtualNetwork
      ApplicationGatewaySkuName = Azure::ARM::Network::Api_2015_05_01_preview::Models::ApplicationGatewaySkuName
      ApplicationGatewayTier = Azure::ARM::Network::Api_2015_05_01_preview::Models::ApplicationGatewayTier
      IpAllocationMethod = Azure::ARM::Network::Api_2015_05_01_preview::Models::IpAllocationMethod
      ApplicationGatewayProtocol = Azure::ARM::Network::Api_2015_05_01_preview::Models::ApplicationGatewayProtocol
      ApplicationGatewayCookieBasedAffinity = Azure::ARM::Network::Api_2015_05_01_preview::Models::ApplicationGatewayCookieBasedAffinity
      ApplicationGatewayRequestRoutingRuleType = Azure::ARM::Network::Api_2015_05_01_preview::Models::ApplicationGatewayRequestRoutingRuleType
      ApplicationGatewayOperationalState = Azure::ARM::Network::Api_2015_05_01_preview::Models::ApplicationGatewayOperationalState
      ExpressRouteCircuitSkuTier = Azure::ARM::Network::Api_2015_05_01_preview::Models::ExpressRouteCircuitSkuTier
      ExpressRouteCircuitSkuFamily = Azure::ARM::Network::Api_2015_05_01_preview::Models::ExpressRouteCircuitSkuFamily
      AuthorizationUseStatus = Azure::ARM::Network::Api_2015_05_01_preview::Models::AuthorizationUseStatus
      ExpressRouteCircuitPeeringAdvertisedPublicPrefixState = Azure::ARM::Network::Api_2015_05_01_preview::Models::ExpressRouteCircuitPeeringAdvertisedPublicPrefixState
      ExpressRouteCircuitPeeringType = Azure::ARM::Network::Api_2015_05_01_preview::Models::ExpressRouteCircuitPeeringType
      ExpressRouteCircuitPeeringState = Azure::ARM::Network::Api_2015_05_01_preview::Models::ExpressRouteCircuitPeeringState
      ServiceProviderProvisioningState = Azure::ARM::Network::Api_2015_05_01_preview::Models::ServiceProviderProvisioningState
      RouteNextHopType = Azure::ARM::Network::Api_2015_05_01_preview::Models::RouteNextHopType
      TransportProtocol = Azure::ARM::Network::Api_2015_05_01_preview::Models::TransportProtocol
      LoadDistribution = Azure::ARM::Network::Api_2015_05_01_preview::Models::LoadDistribution
      ProbeProtocol = Azure::ARM::Network::Api_2015_05_01_preview::Models::ProbeProtocol
      SecurityRuleProtocol = Azure::ARM::Network::Api_2015_05_01_preview::Models::SecurityRuleProtocol
      SecurityRuleAccess = Azure::ARM::Network::Api_2015_05_01_preview::Models::SecurityRuleAccess
      SecurityRuleDirection = Azure::ARM::Network::Api_2015_05_01_preview::Models::SecurityRuleDirection
      VirtualNetworkGatewayType = Azure::ARM::Network::Api_2015_05_01_preview::Models::VirtualNetworkGatewayType
      VpnType = Azure::ARM::Network::Api_2015_05_01_preview::Models::VpnType
      VirtualNetworkGatewayConnectionType = Azure::ARM::Network::Api_2015_05_01_preview::Models::VirtualNetworkGatewayConnectionType
      VirtualNetworkGatewayConnectionStatus = Azure::ARM::Network::Api_2015_05_01_preview::Models::VirtualNetworkGatewayConnectionStatus
      NetworkOperationStatus = Azure::ARM::Network::Api_2015_05_01_preview::Models::NetworkOperationStatus
    end

    #
    # Network
    #
    class NetworkClass
      attr_accessor :application_gateways, :express_route_circuits, :express_route_service_providers, :express_route_circuit_peerings, :load_balancers, :local_network_gateways, :network_interfaces, :route_tables, :network_security_groups, :public_ip_addresses, :routes, :security_rules, :express_route_circuit_authorizations, :subnets, :usages, :virtual_network_gateway_connections, :virtual_network_gateways, :virtual_networks, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::Network::Api_2015_05_01_preview::NetworkManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.application_gateways = Azure::ARM::Network::Api_2015_05_01_preview::ApplicationGateways.new(client)
        self.express_route_circuits = Azure::ARM::Network::Api_2015_05_01_preview::ExpressRouteCircuits.new(client)
        self.express_route_service_providers = Azure::ARM::Network::Api_2015_05_01_preview::ExpressRouteServiceProviders.new(client)
        self.express_route_circuit_peerings = Azure::ARM::Network::Api_2015_05_01_preview::ExpressRouteCircuitPeerings.new(client)
        self.load_balancers = Azure::ARM::Network::Api_2015_05_01_preview::LoadBalancers.new(client)
        self.local_network_gateways = Azure::ARM::Network::Api_2015_05_01_preview::LocalNetworkGateways.new(client)
        self.network_interfaces = Azure::ARM::Network::Api_2015_05_01_preview::NetworkInterfaces.new(client)
        self.route_tables = Azure::ARM::Network::Api_2015_05_01_preview::RouteTables.new(client)
        self.network_security_groups = Azure::ARM::Network::Api_2015_05_01_preview::NetworkSecurityGroups.new(client)
        self.public_ip_addresses = Azure::ARM::Network::Api_2015_05_01_preview::PublicIpAddresses.new(client)
        self.routes = Azure::ARM::Network::Api_2015_05_01_preview::Routes.new(client)
        self.security_rules = Azure::ARM::Network::Api_2015_05_01_preview::SecurityRules.new(client)
        self.express_route_circuit_authorizations = Azure::ARM::Network::Api_2015_05_01_preview::ExpressRouteCircuitAuthorizations.new(client)
        self.subnets = Azure::ARM::Network::Api_2015_05_01_preview::Subnets.new(client)
        self.usages = Azure::ARM::Network::Api_2015_05_01_preview::Usages.new(client)
        self.virtual_network_gateway_connections = Azure::ARM::Network::Api_2015_05_01_preview::VirtualNetworkGatewayConnections.new(client)
        self.virtual_network_gateways = Azure::ARM::Network::Api_2015_05_01_preview::VirtualNetworkGateways.new(client)
        self.virtual_networks = Azure::ARM::Network::Api_2015_05_01_preview::VirtualNetworks.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2015-05-01-preview'
            client = Azure::ARM::Network::Api_2015_05_01_preview::NetworkManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def load_balancer_list_result
          Azure::ARM::Network::Api_2015_05_01_preview::Models::LoadBalancerListResult
        end
        def address_space
          Azure::ARM::Network::Api_2015_05_01_preview::Models::AddressSpace
        end
        def express_route_circuit_peering_list_result
          Azure::ARM::Network::Api_2015_05_01_preview::Models::ExpressRouteCircuitPeeringListResult
        end
        def virtual_network_gateway_list_result
          Azure::ARM::Network::Api_2015_05_01_preview::Models::VirtualNetworkGatewayListResult
        end
        def express_route_service_provider_bandwidths_offered
          Azure::ARM::Network::Api_2015_05_01_preview::Models::ExpressRouteServiceProviderBandwidthsOffered
        end
        def express_route_service_provider_properties_format
          Azure::ARM::Network::Api_2015_05_01_preview::Models::ExpressRouteServiceProviderPropertiesFormat
        end
        def application_gateway_backend_address
          Azure::ARM::Network::Api_2015_05_01_preview::Models::ApplicationGatewayBackendAddress
        end
        def express_route_service_provider
          Azure::ARM::Network::Api_2015_05_01_preview::Models::ExpressRouteServiceProvider
        end
        def route_list_result
          Azure::ARM::Network::Api_2015_05_01_preview::Models::RouteListResult
        end
        def express_route_service_provider_list_result
          Azure::ARM::Network::Api_2015_05_01_preview::Models::ExpressRouteServiceProviderListResult
        end
        def dhcp_options
          Azure::ARM::Network::Api_2015_05_01_preview::Models::DhcpOptions
        end
        def public_ip_address_dns_settings
          Azure::ARM::Network::Api_2015_05_01_preview::Models::PublicIpAddressDnsSettings
        end
        def error_details
          Azure::ARM::Network::Api_2015_05_01_preview::Models::ErrorDetails
        end
        def express_route_circuit_sku
          Azure::ARM::Network::Api_2015_05_01_preview::Models::ExpressRouteCircuitSku
        end
        def route_table_list_result
          Azure::ARM::Network::Api_2015_05_01_preview::Models::RouteTableListResult
        end
        def express_route_circuit_peering_config
          Azure::ARM::Network::Api_2015_05_01_preview::Models::ExpressRouteCircuitPeeringConfig
        end
        def usage_name
          Azure::ARM::Network::Api_2015_05_01_preview::Models::UsageName
        end
        def virtual_network_list_result
          Azure::ARM::Network::Api_2015_05_01_preview::Models::VirtualNetworkListResult
        end
        def subnet_list_result
          Azure::ARM::Network::Api_2015_05_01_preview::Models::SubnetListResult
        end
        def dns_name_availability_result
          Azure::ARM::Network::Api_2015_05_01_preview::Models::DnsNameAvailabilityResult
        end
        def connection_shared_key
          Azure::ARM::Network::Api_2015_05_01_preview::Models::ConnectionSharedKey
        end
        def express_route_circuits_arp_table_list_result
          Azure::ARM::Network::Api_2015_05_01_preview::Models::ExpressRouteCircuitsArpTableListResult
        end
        def virtual_network_gateway_connection_list_result
          Azure::ARM::Network::Api_2015_05_01_preview::Models::VirtualNetworkGatewayConnectionListResult
        end
        def express_route_circuits_routes_table_list_result
          Azure::ARM::Network::Api_2015_05_01_preview::Models::ExpressRouteCircuitsRoutesTableListResult
        end
        def connection_reset_shared_key
          Azure::ARM::Network::Api_2015_05_01_preview::Models::ConnectionResetSharedKey
        end
        def express_route_circuit_list_result
          Azure::ARM::Network::Api_2015_05_01_preview::Models::ExpressRouteCircuitListResult
        end
        def usages_list_result
          Azure::ARM::Network::Api_2015_05_01_preview::Models::UsagesListResult
        end
        def security_rule_list_result
          Azure::ARM::Network::Api_2015_05_01_preview::Models::SecurityRuleListResult
        end
        def usage
          Azure::ARM::Network::Api_2015_05_01_preview::Models::Usage
        end
        def application_gateway_list_result
          Azure::ARM::Network::Api_2015_05_01_preview::Models::ApplicationGatewayListResult
        end
        def application_gateway_sku
          Azure::ARM::Network::Api_2015_05_01_preview::Models::ApplicationGatewaySku
        end
        def express_route_circuit_stats
          Azure::ARM::Network::Api_2015_05_01_preview::Models::ExpressRouteCircuitStats
        end
        def express_route_circuit_service_provider_properties
          Azure::ARM::Network::Api_2015_05_01_preview::Models::ExpressRouteCircuitServiceProviderProperties
        end
        def error
          Azure::ARM::Network::Api_2015_05_01_preview::Models::Error
        end
        def express_route_circuit_routes_table
          Azure::ARM::Network::Api_2015_05_01_preview::Models::ExpressRouteCircuitRoutesTable
        end
        def authorization_list_result
          Azure::ARM::Network::Api_2015_05_01_preview::Models::AuthorizationListResult
        end
        def local_network_gateway_list_result
          Azure::ARM::Network::Api_2015_05_01_preview::Models::LocalNetworkGatewayListResult
        end
        def network_security_group_list_result
          Azure::ARM::Network::Api_2015_05_01_preview::Models::NetworkSecurityGroupListResult
        end
        def express_route_circuits_stats_list_result
          Azure::ARM::Network::Api_2015_05_01_preview::Models::ExpressRouteCircuitsStatsListResult
        end
        def network_interface_dns_settings
          Azure::ARM::Network::Api_2015_05_01_preview::Models::NetworkInterfaceDnsSettings
        end
        def express_route_circuit_arp_table
          Azure::ARM::Network::Api_2015_05_01_preview::Models::ExpressRouteCircuitArpTable
        end
        def azure_async_operation_result
          Azure::ARM::Network::Api_2015_05_01_preview::Models::AzureAsyncOperationResult
        end
        def public_ip_address_list_result
          Azure::ARM::Network::Api_2015_05_01_preview::Models::PublicIpAddressListResult
        end
        def network_interface_list_result
          Azure::ARM::Network::Api_2015_05_01_preview::Models::NetworkInterfaceListResult
        end
        def application_gateway_ipconfiguration
          Azure::ARM::Network::Api_2015_05_01_preview::Models::ApplicationGatewayIPConfiguration
        end
        def application_gateway_ssl_certificate
          Azure::ARM::Network::Api_2015_05_01_preview::Models::ApplicationGatewaySslCertificate
        end
        def application_gateway_frontend_ipconfiguration
          Azure::ARM::Network::Api_2015_05_01_preview::Models::ApplicationGatewayFrontendIPConfiguration
        end
        def application_gateway_frontend_port
          Azure::ARM::Network::Api_2015_05_01_preview::Models::ApplicationGatewayFrontendPort
        end
        def application_gateway_backend_address_pool
          Azure::ARM::Network::Api_2015_05_01_preview::Models::ApplicationGatewayBackendAddressPool
        end
        def application_gateway_backend_http_settings
          Azure::ARM::Network::Api_2015_05_01_preview::Models::ApplicationGatewayBackendHttpSettings
        end
        def application_gateway_http_listener
          Azure::ARM::Network::Api_2015_05_01_preview::Models::ApplicationGatewayHttpListener
        end
        def application_gateway_request_routing_rule
          Azure::ARM::Network::Api_2015_05_01_preview::Models::ApplicationGatewayRequestRoutingRule
        end
        def application_gateway
          Azure::ARM::Network::Api_2015_05_01_preview::Models::ApplicationGateway
        end
        def express_route_circuit_authorization
          Azure::ARM::Network::Api_2015_05_01_preview::Models::ExpressRouteCircuitAuthorization
        end
        def express_route_circuit_peering
          Azure::ARM::Network::Api_2015_05_01_preview::Models::ExpressRouteCircuitPeering
        end
        def express_route_circuit
          Azure::ARM::Network::Api_2015_05_01_preview::Models::ExpressRouteCircuit
        end
        def frontend_ip_configuration
          Azure::ARM::Network::Api_2015_05_01_preview::Models::FrontendIpConfiguration
        end
        def backend_address_pool
          Azure::ARM::Network::Api_2015_05_01_preview::Models::BackendAddressPool
        end
        def load_balancing_rule
          Azure::ARM::Network::Api_2015_05_01_preview::Models::LoadBalancingRule
        end
        def probe
          Azure::ARM::Network::Api_2015_05_01_preview::Models::Probe
        end
        def inbound_nat_rule
          Azure::ARM::Network::Api_2015_05_01_preview::Models::InboundNatRule
        end
        def inbound_nat_pool
          Azure::ARM::Network::Api_2015_05_01_preview::Models::InboundNatPool
        end
        def outbound_nat_rule
          Azure::ARM::Network::Api_2015_05_01_preview::Models::OutboundNatRule
        end
        def load_balancer
          Azure::ARM::Network::Api_2015_05_01_preview::Models::LoadBalancer
        end
        def local_network_gateway
          Azure::ARM::Network::Api_2015_05_01_preview::Models::LocalNetworkGateway
        end
        def network_interface_ip_configuration
          Azure::ARM::Network::Api_2015_05_01_preview::Models::NetworkInterfaceIpConfiguration
        end
        def network_interface
          Azure::ARM::Network::Api_2015_05_01_preview::Models::NetworkInterface
        end
        def route
          Azure::ARM::Network::Api_2015_05_01_preview::Models::Route
        end
        def route_table
          Azure::ARM::Network::Api_2015_05_01_preview::Models::RouteTable
        end
        def security_rule
          Azure::ARM::Network::Api_2015_05_01_preview::Models::SecurityRule
        end
        def network_security_group
          Azure::ARM::Network::Api_2015_05_01_preview::Models::NetworkSecurityGroup
        end
        def public_ip_address
          Azure::ARM::Network::Api_2015_05_01_preview::Models::PublicIpAddress
        end
        def subnet
          Azure::ARM::Network::Api_2015_05_01_preview::Models::Subnet
        end
        def virtual_network_gateway_ip_configuration
          Azure::ARM::Network::Api_2015_05_01_preview::Models::VirtualNetworkGatewayIpConfiguration
        end
        def virtual_network_gateway
          Azure::ARM::Network::Api_2015_05_01_preview::Models::VirtualNetworkGateway
        end
        def virtual_network_gateway_connection
          Azure::ARM::Network::Api_2015_05_01_preview::Models::VirtualNetworkGatewayConnection
        end
        def virtual_network
          Azure::ARM::Network::Api_2015_05_01_preview::Models::VirtualNetwork
        end
        def application_gateway_sku_name
          Azure::ARM::Network::Api_2015_05_01_preview::Models::ApplicationGatewaySkuName
        end
        def application_gateway_tier
          Azure::ARM::Network::Api_2015_05_01_preview::Models::ApplicationGatewayTier
        end
        def ip_allocation_method
          Azure::ARM::Network::Api_2015_05_01_preview::Models::IpAllocationMethod
        end
        def application_gateway_protocol
          Azure::ARM::Network::Api_2015_05_01_preview::Models::ApplicationGatewayProtocol
        end
        def application_gateway_cookie_based_affinity
          Azure::ARM::Network::Api_2015_05_01_preview::Models::ApplicationGatewayCookieBasedAffinity
        end
        def application_gateway_request_routing_rule_type
          Azure::ARM::Network::Api_2015_05_01_preview::Models::ApplicationGatewayRequestRoutingRuleType
        end
        def application_gateway_operational_state
          Azure::ARM::Network::Api_2015_05_01_preview::Models::ApplicationGatewayOperationalState
        end
        def express_route_circuit_sku_tier
          Azure::ARM::Network::Api_2015_05_01_preview::Models::ExpressRouteCircuitSkuTier
        end
        def express_route_circuit_sku_family
          Azure::ARM::Network::Api_2015_05_01_preview::Models::ExpressRouteCircuitSkuFamily
        end
        def authorization_use_status
          Azure::ARM::Network::Api_2015_05_01_preview::Models::AuthorizationUseStatus
        end
        def express_route_circuit_peering_advertised_public_prefix_state
          Azure::ARM::Network::Api_2015_05_01_preview::Models::ExpressRouteCircuitPeeringAdvertisedPublicPrefixState
        end
        def express_route_circuit_peering_type
          Azure::ARM::Network::Api_2015_05_01_preview::Models::ExpressRouteCircuitPeeringType
        end
        def express_route_circuit_peering_state
          Azure::ARM::Network::Api_2015_05_01_preview::Models::ExpressRouteCircuitPeeringState
        end
        def service_provider_provisioning_state
          Azure::ARM::Network::Api_2015_05_01_preview::Models::ServiceProviderProvisioningState
        end
        def route_next_hop_type
          Azure::ARM::Network::Api_2015_05_01_preview::Models::RouteNextHopType
        end
        def transport_protocol
          Azure::ARM::Network::Api_2015_05_01_preview::Models::TransportProtocol
        end
        def load_distribution
          Azure::ARM::Network::Api_2015_05_01_preview::Models::LoadDistribution
        end
        def probe_protocol
          Azure::ARM::Network::Api_2015_05_01_preview::Models::ProbeProtocol
        end
        def security_rule_protocol
          Azure::ARM::Network::Api_2015_05_01_preview::Models::SecurityRuleProtocol
        end
        def security_rule_access
          Azure::ARM::Network::Api_2015_05_01_preview::Models::SecurityRuleAccess
        end
        def security_rule_direction
          Azure::ARM::Network::Api_2015_05_01_preview::Models::SecurityRuleDirection
        end
        def virtual_network_gateway_type
          Azure::ARM::Network::Api_2015_05_01_preview::Models::VirtualNetworkGatewayType
        end
        def vpn_type
          Azure::ARM::Network::Api_2015_05_01_preview::Models::VpnType
        end
        def virtual_network_gateway_connection_type
          Azure::ARM::Network::Api_2015_05_01_preview::Models::VirtualNetworkGatewayConnectionType
        end
        def virtual_network_gateway_connection_status
          Azure::ARM::Network::Api_2015_05_01_preview::Models::VirtualNetworkGatewayConnectionStatus
        end
        def network_operation_status
          Azure::ARM::Network::Api_2015_05_01_preview::Models::NetworkOperationStatus
        end
      end
    end
  end
end
