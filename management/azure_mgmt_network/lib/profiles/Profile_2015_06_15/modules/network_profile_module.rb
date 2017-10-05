# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_network'


module Azure::Profiles::NetworkModule::Management::Profile_2015_06_15
  module Network
    ApplicationGateways = Azure::ARM::Network::Api_2015_06_15::ApplicationGateways
    ExpressRouteCircuitAuthorizations = Azure::ARM::Network::Api_2015_06_15::ExpressRouteCircuitAuthorizations
    ExpressRouteCircuitPeerings = Azure::ARM::Network::Api_2015_06_15::ExpressRouteCircuitPeerings
    ExpressRouteCircuits = Azure::ARM::Network::Api_2015_06_15::ExpressRouteCircuits
    ExpressRouteServiceProviders = Azure::ARM::Network::Api_2015_06_15::ExpressRouteServiceProviders
    LoadBalancers = Azure::ARM::Network::Api_2015_06_15::LoadBalancers
    NetworkInterfaces = Azure::ARM::Network::Api_2015_06_15::NetworkInterfaces
    NetworkSecurityGroups = Azure::ARM::Network::Api_2015_06_15::NetworkSecurityGroups
    SecurityRules = Azure::ARM::Network::Api_2015_06_15::SecurityRules
    PublicIPAddresses = Azure::ARM::Network::Api_2015_06_15::PublicIPAddresses
    RouteTables = Azure::ARM::Network::Api_2015_06_15::RouteTables
    Routes = Azure::ARM::Network::Api_2015_06_15::Routes
    Usages = Azure::ARM::Network::Api_2015_06_15::Usages
    VirtualNetworks = Azure::ARM::Network::Api_2015_06_15::VirtualNetworks
    Subnets = Azure::ARM::Network::Api_2015_06_15::Subnets
    VirtualNetworkGateways = Azure::ARM::Network::Api_2015_06_15::VirtualNetworkGateways
    VirtualNetworkGatewayConnections = Azure::ARM::Network::Api_2015_06_15::VirtualNetworkGatewayConnections
    LocalNetworkGateways = Azure::ARM::Network::Api_2015_06_15::LocalNetworkGateways

    module Models
      ExpressRouteCircuitsStatsListResult = Azure::ARM::Network::Api_2015_06_15::Models::ExpressRouteCircuitsStatsListResult
      ExpressRouteCircuitListResult = Azure::ARM::Network::Api_2015_06_15::Models::ExpressRouteCircuitListResult
      ExpressRouteServiceProviderBandwidthsOffered = Azure::ARM::Network::Api_2015_06_15::Models::ExpressRouteServiceProviderBandwidthsOffered
      PublicIPAddressListResult = Azure::ARM::Network::Api_2015_06_15::Models::PublicIPAddressListResult
      ApplicationGatewayListResult = Azure::ARM::Network::Api_2015_06_15::Models::ApplicationGatewayListResult
      ApplicationGatewayBackendAddress = Azure::ARM::Network::Api_2015_06_15::Models::ApplicationGatewayBackendAddress
      ConnectionResetSharedKey = Azure::ARM::Network::Api_2015_06_15::Models::ConnectionResetSharedKey
      DnsNameAvailabilityResult = Azure::ARM::Network::Api_2015_06_15::Models::DnsNameAvailabilityResult
      NetworkInterfaceDnsSettings = Azure::ARM::Network::Api_2015_06_15::Models::NetworkInterfaceDnsSettings
      NetworkSecurityGroupListResult = Azure::ARM::Network::Api_2015_06_15::Models::NetworkSecurityGroupListResult
      VirtualNetworkGatewayListResult = Azure::ARM::Network::Api_2015_06_15::Models::VirtualNetworkGatewayListResult
      AuthorizationListResult = Azure::ARM::Network::Api_2015_06_15::Models::AuthorizationListResult
      BgpSettings = Azure::ARM::Network::Api_2015_06_15::Models::BgpSettings
      ExpressRouteCircuitPeeringConfig = Azure::ARM::Network::Api_2015_06_15::Models::ExpressRouteCircuitPeeringConfig
      VpnClientConfiguration = Azure::ARM::Network::Api_2015_06_15::Models::VpnClientConfiguration
      ExpressRouteCircuitStats = Azure::ARM::Network::Api_2015_06_15::Models::ExpressRouteCircuitStats
      VirtualNetworkListResult = Azure::ARM::Network::Api_2015_06_15::Models::VirtualNetworkListResult
      SecurityRuleListResult = Azure::ARM::Network::Api_2015_06_15::Models::SecurityRuleListResult
      AddressSpace = Azure::ARM::Network::Api_2015_06_15::Models::AddressSpace
      ExpressRouteCircuitPeeringListResult = Azure::ARM::Network::Api_2015_06_15::Models::ExpressRouteCircuitPeeringListResult
      UsagesListResult = Azure::ARM::Network::Api_2015_06_15::Models::UsagesListResult
      ExpressRouteCircuitSku = Azure::ARM::Network::Api_2015_06_15::Models::ExpressRouteCircuitSku
      UsageName = Azure::ARM::Network::Api_2015_06_15::Models::UsageName
      ExpressRouteCircuitServiceProviderProperties = Azure::ARM::Network::Api_2015_06_15::Models::ExpressRouteCircuitServiceProviderProperties
      RouteTableListResult = Azure::ARM::Network::Api_2015_06_15::Models::RouteTableListResult
      NetworkInterfaceListResult = Azure::ARM::Network::Api_2015_06_15::Models::NetworkInterfaceListResult
      ConnectionSharedKey = Azure::ARM::Network::Api_2015_06_15::Models::ConnectionSharedKey
      ExpressRouteCircuitArpTable = Azure::ARM::Network::Api_2015_06_15::Models::ExpressRouteCircuitArpTable
      ConnectionSharedKeyResult = Azure::ARM::Network::Api_2015_06_15::Models::ConnectionSharedKeyResult
      ExpressRouteCircuitsArpTableListResult = Azure::ARM::Network::Api_2015_06_15::Models::ExpressRouteCircuitsArpTableListResult
      PublicIPAddressDnsSettings = Azure::ARM::Network::Api_2015_06_15::Models::PublicIPAddressDnsSettings
      ExpressRouteCircuitRoutesTable = Azure::ARM::Network::Api_2015_06_15::Models::ExpressRouteCircuitRoutesTable
      DhcpOptions = Azure::ARM::Network::Api_2015_06_15::Models::DhcpOptions
      ExpressRouteCircuitsRoutesTableListResult = Azure::ARM::Network::Api_2015_06_15::Models::ExpressRouteCircuitsRoutesTableListResult
      Usage = Azure::ARM::Network::Api_2015_06_15::Models::Usage
      ApplicationGatewaySku = Azure::ARM::Network::Api_2015_06_15::Models::ApplicationGatewaySku
      LocalNetworkGatewayListResult = Azure::ARM::Network::Api_2015_06_15::Models::LocalNetworkGatewayListResult
      VirtualNetworkGatewayConnectionListResult = Azure::ARM::Network::Api_2015_06_15::Models::VirtualNetworkGatewayConnectionListResult
      LoadBalancerListResult = Azure::ARM::Network::Api_2015_06_15::Models::LoadBalancerListResult
      VirtualNetworkGatewaySku = Azure::ARM::Network::Api_2015_06_15::Models::VirtualNetworkGatewaySku
      AzureAsyncOperationResult = Azure::ARM::Network::Api_2015_06_15::Models::AzureAsyncOperationResult
      RouteListResult = Azure::ARM::Network::Api_2015_06_15::Models::RouteListResult
      Error = Azure::ARM::Network::Api_2015_06_15::Models::Error
      SubnetListResult = Azure::ARM::Network::Api_2015_06_15::Models::SubnetListResult
      ExpressRouteServiceProviderListResult = Azure::ARM::Network::Api_2015_06_15::Models::ExpressRouteServiceProviderListResult
      VpnClientParameters = Azure::ARM::Network::Api_2015_06_15::Models::VpnClientParameters
      ErrorDetails = Azure::ARM::Network::Api_2015_06_15::Models::ErrorDetails
      ApplicationGatewayIPConfiguration = Azure::ARM::Network::Api_2015_06_15::Models::ApplicationGatewayIPConfiguration
      ApplicationGatewaySslCertificate = Azure::ARM::Network::Api_2015_06_15::Models::ApplicationGatewaySslCertificate
      ApplicationGatewayFrontendIPConfiguration = Azure::ARM::Network::Api_2015_06_15::Models::ApplicationGatewayFrontendIPConfiguration
      ApplicationGatewayFrontendPort = Azure::ARM::Network::Api_2015_06_15::Models::ApplicationGatewayFrontendPort
      BackendAddressPool = Azure::ARM::Network::Api_2015_06_15::Models::BackendAddressPool
      InboundNatRule = Azure::ARM::Network::Api_2015_06_15::Models::InboundNatRule
      SecurityRule = Azure::ARM::Network::Api_2015_06_15::Models::SecurityRule
      NetworkInterface = Azure::ARM::Network::Api_2015_06_15::Models::NetworkInterface
      NetworkSecurityGroup = Azure::ARM::Network::Api_2015_06_15::Models::NetworkSecurityGroup
      Route = Azure::ARM::Network::Api_2015_06_15::Models::Route
      RouteTable = Azure::ARM::Network::Api_2015_06_15::Models::RouteTable
      PublicIPAddress = Azure::ARM::Network::Api_2015_06_15::Models::PublicIPAddress
      IPConfiguration = Azure::ARM::Network::Api_2015_06_15::Models::IPConfiguration
      Subnet = Azure::ARM::Network::Api_2015_06_15::Models::Subnet
      NetworkInterfaceIPConfiguration = Azure::ARM::Network::Api_2015_06_15::Models::NetworkInterfaceIPConfiguration
      ApplicationGatewayBackendAddressPool = Azure::ARM::Network::Api_2015_06_15::Models::ApplicationGatewayBackendAddressPool
      ApplicationGatewayBackendHttpSettings = Azure::ARM::Network::Api_2015_06_15::Models::ApplicationGatewayBackendHttpSettings
      ApplicationGatewayHttpListener = Azure::ARM::Network::Api_2015_06_15::Models::ApplicationGatewayHttpListener
      ApplicationGatewayPathRule = Azure::ARM::Network::Api_2015_06_15::Models::ApplicationGatewayPathRule
      ApplicationGatewayProbe = Azure::ARM::Network::Api_2015_06_15::Models::ApplicationGatewayProbe
      ApplicationGatewayRequestRoutingRule = Azure::ARM::Network::Api_2015_06_15::Models::ApplicationGatewayRequestRoutingRule
      ApplicationGatewayUrlPathMap = Azure::ARM::Network::Api_2015_06_15::Models::ApplicationGatewayUrlPathMap
      ApplicationGateway = Azure::ARM::Network::Api_2015_06_15::Models::ApplicationGateway
      ExpressRouteCircuitAuthorization = Azure::ARM::Network::Api_2015_06_15::Models::ExpressRouteCircuitAuthorization
      ExpressRouteCircuitPeering = Azure::ARM::Network::Api_2015_06_15::Models::ExpressRouteCircuitPeering
      ExpressRouteCircuit = Azure::ARM::Network::Api_2015_06_15::Models::ExpressRouteCircuit
      ExpressRouteServiceProvider = Azure::ARM::Network::Api_2015_06_15::Models::ExpressRouteServiceProvider
      FrontendIPConfiguration = Azure::ARM::Network::Api_2015_06_15::Models::FrontendIPConfiguration
      LoadBalancingRule = Azure::ARM::Network::Api_2015_06_15::Models::LoadBalancingRule
      Probe = Azure::ARM::Network::Api_2015_06_15::Models::Probe
      InboundNatPool = Azure::ARM::Network::Api_2015_06_15::Models::InboundNatPool
      OutboundNatRule = Azure::ARM::Network::Api_2015_06_15::Models::OutboundNatRule
      LoadBalancer = Azure::ARM::Network::Api_2015_06_15::Models::LoadBalancer
      VirtualNetwork = Azure::ARM::Network::Api_2015_06_15::Models::VirtualNetwork
      VirtualNetworkGatewayIPConfiguration = Azure::ARM::Network::Api_2015_06_15::Models::VirtualNetworkGatewayIPConfiguration
      VpnClientRootCertificate = Azure::ARM::Network::Api_2015_06_15::Models::VpnClientRootCertificate
      VpnClientRevokedCertificate = Azure::ARM::Network::Api_2015_06_15::Models::VpnClientRevokedCertificate
      VirtualNetworkGateway = Azure::ARM::Network::Api_2015_06_15::Models::VirtualNetworkGateway
      LocalNetworkGateway = Azure::ARM::Network::Api_2015_06_15::Models::LocalNetworkGateway
      VirtualNetworkGatewayConnection = Azure::ARM::Network::Api_2015_06_15::Models::VirtualNetworkGatewayConnection
      ApplicationGatewaySkuName = Azure::ARM::Network::Api_2015_06_15::Models::ApplicationGatewaySkuName
      ApplicationGatewayTier = Azure::ARM::Network::Api_2015_06_15::Models::ApplicationGatewayTier
      IPAllocationMethod = Azure::ARM::Network::Api_2015_06_15::Models::IPAllocationMethod
      TransportProtocol = Azure::ARM::Network::Api_2015_06_15::Models::TransportProtocol
      SecurityRuleProtocol = Azure::ARM::Network::Api_2015_06_15::Models::SecurityRuleProtocol
      SecurityRuleAccess = Azure::ARM::Network::Api_2015_06_15::Models::SecurityRuleAccess
      SecurityRuleDirection = Azure::ARM::Network::Api_2015_06_15::Models::SecurityRuleDirection
      RouteNextHopType = Azure::ARM::Network::Api_2015_06_15::Models::RouteNextHopType
      ApplicationGatewayProtocol = Azure::ARM::Network::Api_2015_06_15::Models::ApplicationGatewayProtocol
      ApplicationGatewayCookieBasedAffinity = Azure::ARM::Network::Api_2015_06_15::Models::ApplicationGatewayCookieBasedAffinity
      ApplicationGatewayRequestRoutingRuleType = Azure::ARM::Network::Api_2015_06_15::Models::ApplicationGatewayRequestRoutingRuleType
      ApplicationGatewayOperationalState = Azure::ARM::Network::Api_2015_06_15::Models::ApplicationGatewayOperationalState
      AuthorizationUseStatus = Azure::ARM::Network::Api_2015_06_15::Models::AuthorizationUseStatus
      ExpressRouteCircuitPeeringAdvertisedPublicPrefixState = Azure::ARM::Network::Api_2015_06_15::Models::ExpressRouteCircuitPeeringAdvertisedPublicPrefixState
      ExpressRouteCircuitPeeringType = Azure::ARM::Network::Api_2015_06_15::Models::ExpressRouteCircuitPeeringType
      ExpressRouteCircuitPeeringState = Azure::ARM::Network::Api_2015_06_15::Models::ExpressRouteCircuitPeeringState
      ExpressRouteCircuitSkuTier = Azure::ARM::Network::Api_2015_06_15::Models::ExpressRouteCircuitSkuTier
      ExpressRouteCircuitSkuFamily = Azure::ARM::Network::Api_2015_06_15::Models::ExpressRouteCircuitSkuFamily
      ServiceProviderProvisioningState = Azure::ARM::Network::Api_2015_06_15::Models::ServiceProviderProvisioningState
      LoadDistribution = Azure::ARM::Network::Api_2015_06_15::Models::LoadDistribution
      ProbeProtocol = Azure::ARM::Network::Api_2015_06_15::Models::ProbeProtocol
      NetworkOperationStatus = Azure::ARM::Network::Api_2015_06_15::Models::NetworkOperationStatus
      VirtualNetworkGatewayType = Azure::ARM::Network::Api_2015_06_15::Models::VirtualNetworkGatewayType
      VpnType = Azure::ARM::Network::Api_2015_06_15::Models::VpnType
      VirtualNetworkGatewaySkuName = Azure::ARM::Network::Api_2015_06_15::Models::VirtualNetworkGatewaySkuName
      VirtualNetworkGatewaySkuTier = Azure::ARM::Network::Api_2015_06_15::Models::VirtualNetworkGatewaySkuTier
      ProcessorArchitecture = Azure::ARM::Network::Api_2015_06_15::Models::ProcessorArchitecture
      VirtualNetworkGatewayConnectionType = Azure::ARM::Network::Api_2015_06_15::Models::VirtualNetworkGatewayConnectionType
      VirtualNetworkGatewayConnectionStatus = Azure::ARM::Network::Api_2015_06_15::Models::VirtualNetworkGatewayConnectionStatus
    end

    #
    # Network
    #
    class NetworkClass
      attr_accessor :application_gateways, :express_route_circuit_authorizations, :express_route_circuit_peerings, :express_route_circuits, :express_route_service_providers, :load_balancers, :network_interfaces, :network_security_groups, :security_rules, :public_ipaddresses, :route_tables, :routes, :usages, :virtual_networks, :subnets, :virtual_network_gateways, :virtual_network_gateway_connections, :local_network_gateways, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::Network::Api_2015_06_15::NetworkManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.application_gateways = Azure::ARM::Network::Api_2015_06_15::ApplicationGateways.new(client)
        self.express_route_circuit_authorizations = Azure::ARM::Network::Api_2015_06_15::ExpressRouteCircuitAuthorizations.new(client)
        self.express_route_circuit_peerings = Azure::ARM::Network::Api_2015_06_15::ExpressRouteCircuitPeerings.new(client)
        self.express_route_circuits = Azure::ARM::Network::Api_2015_06_15::ExpressRouteCircuits.new(client)
        self.express_route_service_providers = Azure::ARM::Network::Api_2015_06_15::ExpressRouteServiceProviders.new(client)
        self.load_balancers = Azure::ARM::Network::Api_2015_06_15::LoadBalancers.new(client)
        self.network_interfaces = Azure::ARM::Network::Api_2015_06_15::NetworkInterfaces.new(client)
        self.network_security_groups = Azure::ARM::Network::Api_2015_06_15::NetworkSecurityGroups.new(client)
        self.security_rules = Azure::ARM::Network::Api_2015_06_15::SecurityRules.new(client)
        self.public_ipaddresses = Azure::ARM::Network::Api_2015_06_15::PublicIPAddresses.new(client)
        self.route_tables = Azure::ARM::Network::Api_2015_06_15::RouteTables.new(client)
        self.routes = Azure::ARM::Network::Api_2015_06_15::Routes.new(client)
        self.usages = Azure::ARM::Network::Api_2015_06_15::Usages.new(client)
        self.virtual_networks = Azure::ARM::Network::Api_2015_06_15::VirtualNetworks.new(client)
        self.subnets = Azure::ARM::Network::Api_2015_06_15::Subnets.new(client)
        self.virtual_network_gateways = Azure::ARM::Network::Api_2015_06_15::VirtualNetworkGateways.new(client)
        self.virtual_network_gateway_connections = Azure::ARM::Network::Api_2015_06_15::VirtualNetworkGatewayConnections.new(client)
        self.local_network_gateways = Azure::ARM::Network::Api_2015_06_15::LocalNetworkGateways.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2015-06-15'
            client = Azure::ARM::Network::Api_2015_06_15::NetworkManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def express_route_circuits_stats_list_result
          Azure::ARM::Network::Api_2015_06_15::Models::ExpressRouteCircuitsStatsListResult
        end
        def express_route_circuit_list_result
          Azure::ARM::Network::Api_2015_06_15::Models::ExpressRouteCircuitListResult
        end
        def express_route_service_provider_bandwidths_offered
          Azure::ARM::Network::Api_2015_06_15::Models::ExpressRouteServiceProviderBandwidthsOffered
        end
        def public_ipaddress_list_result
          Azure::ARM::Network::Api_2015_06_15::Models::PublicIPAddressListResult
        end
        def application_gateway_list_result
          Azure::ARM::Network::Api_2015_06_15::Models::ApplicationGatewayListResult
        end
        def application_gateway_backend_address
          Azure::ARM::Network::Api_2015_06_15::Models::ApplicationGatewayBackendAddress
        end
        def connection_reset_shared_key
          Azure::ARM::Network::Api_2015_06_15::Models::ConnectionResetSharedKey
        end
        def dns_name_availability_result
          Azure::ARM::Network::Api_2015_06_15::Models::DnsNameAvailabilityResult
        end
        def network_interface_dns_settings
          Azure::ARM::Network::Api_2015_06_15::Models::NetworkInterfaceDnsSettings
        end
        def network_security_group_list_result
          Azure::ARM::Network::Api_2015_06_15::Models::NetworkSecurityGroupListResult
        end
        def virtual_network_gateway_list_result
          Azure::ARM::Network::Api_2015_06_15::Models::VirtualNetworkGatewayListResult
        end
        def authorization_list_result
          Azure::ARM::Network::Api_2015_06_15::Models::AuthorizationListResult
        end
        def bgp_settings
          Azure::ARM::Network::Api_2015_06_15::Models::BgpSettings
        end
        def express_route_circuit_peering_config
          Azure::ARM::Network::Api_2015_06_15::Models::ExpressRouteCircuitPeeringConfig
        end
        def vpn_client_configuration
          Azure::ARM::Network::Api_2015_06_15::Models::VpnClientConfiguration
        end
        def express_route_circuit_stats
          Azure::ARM::Network::Api_2015_06_15::Models::ExpressRouteCircuitStats
        end
        def virtual_network_list_result
          Azure::ARM::Network::Api_2015_06_15::Models::VirtualNetworkListResult
        end
        def security_rule_list_result
          Azure::ARM::Network::Api_2015_06_15::Models::SecurityRuleListResult
        end
        def address_space
          Azure::ARM::Network::Api_2015_06_15::Models::AddressSpace
        end
        def express_route_circuit_peering_list_result
          Azure::ARM::Network::Api_2015_06_15::Models::ExpressRouteCircuitPeeringListResult
        end
        def usages_list_result
          Azure::ARM::Network::Api_2015_06_15::Models::UsagesListResult
        end
        def express_route_circuit_sku
          Azure::ARM::Network::Api_2015_06_15::Models::ExpressRouteCircuitSku
        end
        def usage_name
          Azure::ARM::Network::Api_2015_06_15::Models::UsageName
        end
        def express_route_circuit_service_provider_properties
          Azure::ARM::Network::Api_2015_06_15::Models::ExpressRouteCircuitServiceProviderProperties
        end
        def route_table_list_result
          Azure::ARM::Network::Api_2015_06_15::Models::RouteTableListResult
        end
        def network_interface_list_result
          Azure::ARM::Network::Api_2015_06_15::Models::NetworkInterfaceListResult
        end
        def connection_shared_key
          Azure::ARM::Network::Api_2015_06_15::Models::ConnectionSharedKey
        end
        def express_route_circuit_arp_table
          Azure::ARM::Network::Api_2015_06_15::Models::ExpressRouteCircuitArpTable
        end
        def connection_shared_key_result
          Azure::ARM::Network::Api_2015_06_15::Models::ConnectionSharedKeyResult
        end
        def express_route_circuits_arp_table_list_result
          Azure::ARM::Network::Api_2015_06_15::Models::ExpressRouteCircuitsArpTableListResult
        end
        def public_ipaddress_dns_settings
          Azure::ARM::Network::Api_2015_06_15::Models::PublicIPAddressDnsSettings
        end
        def express_route_circuit_routes_table
          Azure::ARM::Network::Api_2015_06_15::Models::ExpressRouteCircuitRoutesTable
        end
        def dhcp_options
          Azure::ARM::Network::Api_2015_06_15::Models::DhcpOptions
        end
        def express_route_circuits_routes_table_list_result
          Azure::ARM::Network::Api_2015_06_15::Models::ExpressRouteCircuitsRoutesTableListResult
        end
        def usage
          Azure::ARM::Network::Api_2015_06_15::Models::Usage
        end
        def application_gateway_sku
          Azure::ARM::Network::Api_2015_06_15::Models::ApplicationGatewaySku
        end
        def local_network_gateway_list_result
          Azure::ARM::Network::Api_2015_06_15::Models::LocalNetworkGatewayListResult
        end
        def virtual_network_gateway_connection_list_result
          Azure::ARM::Network::Api_2015_06_15::Models::VirtualNetworkGatewayConnectionListResult
        end
        def load_balancer_list_result
          Azure::ARM::Network::Api_2015_06_15::Models::LoadBalancerListResult
        end
        def virtual_network_gateway_sku
          Azure::ARM::Network::Api_2015_06_15::Models::VirtualNetworkGatewaySku
        end
        def azure_async_operation_result
          Azure::ARM::Network::Api_2015_06_15::Models::AzureAsyncOperationResult
        end
        def route_list_result
          Azure::ARM::Network::Api_2015_06_15::Models::RouteListResult
        end
        def error
          Azure::ARM::Network::Api_2015_06_15::Models::Error
        end
        def subnet_list_result
          Azure::ARM::Network::Api_2015_06_15::Models::SubnetListResult
        end
        def express_route_service_provider_list_result
          Azure::ARM::Network::Api_2015_06_15::Models::ExpressRouteServiceProviderListResult
        end
        def vpn_client_parameters
          Azure::ARM::Network::Api_2015_06_15::Models::VpnClientParameters
        end
        def error_details
          Azure::ARM::Network::Api_2015_06_15::Models::ErrorDetails
        end
        def application_gateway_ipconfiguration
          Azure::ARM::Network::Api_2015_06_15::Models::ApplicationGatewayIPConfiguration
        end
        def application_gateway_ssl_certificate
          Azure::ARM::Network::Api_2015_06_15::Models::ApplicationGatewaySslCertificate
        end
        def application_gateway_frontend_ipconfiguration
          Azure::ARM::Network::Api_2015_06_15::Models::ApplicationGatewayFrontendIPConfiguration
        end
        def application_gateway_frontend_port
          Azure::ARM::Network::Api_2015_06_15::Models::ApplicationGatewayFrontendPort
        end
        def backend_address_pool
          Azure::ARM::Network::Api_2015_06_15::Models::BackendAddressPool
        end
        def inbound_nat_rule
          Azure::ARM::Network::Api_2015_06_15::Models::InboundNatRule
        end
        def security_rule
          Azure::ARM::Network::Api_2015_06_15::Models::SecurityRule
        end
        def network_interface
          Azure::ARM::Network::Api_2015_06_15::Models::NetworkInterface
        end
        def network_security_group
          Azure::ARM::Network::Api_2015_06_15::Models::NetworkSecurityGroup
        end
        def route
          Azure::ARM::Network::Api_2015_06_15::Models::Route
        end
        def route_table
          Azure::ARM::Network::Api_2015_06_15::Models::RouteTable
        end
        def public_ipaddress
          Azure::ARM::Network::Api_2015_06_15::Models::PublicIPAddress
        end
        def ipconfiguration
          Azure::ARM::Network::Api_2015_06_15::Models::IPConfiguration
        end
        def subnet
          Azure::ARM::Network::Api_2015_06_15::Models::Subnet
        end
        def network_interface_ipconfiguration
          Azure::ARM::Network::Api_2015_06_15::Models::NetworkInterfaceIPConfiguration
        end
        def application_gateway_backend_address_pool
          Azure::ARM::Network::Api_2015_06_15::Models::ApplicationGatewayBackendAddressPool
        end
        def application_gateway_backend_http_settings
          Azure::ARM::Network::Api_2015_06_15::Models::ApplicationGatewayBackendHttpSettings
        end
        def application_gateway_http_listener
          Azure::ARM::Network::Api_2015_06_15::Models::ApplicationGatewayHttpListener
        end
        def application_gateway_path_rule
          Azure::ARM::Network::Api_2015_06_15::Models::ApplicationGatewayPathRule
        end
        def application_gateway_probe
          Azure::ARM::Network::Api_2015_06_15::Models::ApplicationGatewayProbe
        end
        def application_gateway_request_routing_rule
          Azure::ARM::Network::Api_2015_06_15::Models::ApplicationGatewayRequestRoutingRule
        end
        def application_gateway_url_path_map
          Azure::ARM::Network::Api_2015_06_15::Models::ApplicationGatewayUrlPathMap
        end
        def application_gateway
          Azure::ARM::Network::Api_2015_06_15::Models::ApplicationGateway
        end
        def express_route_circuit_authorization
          Azure::ARM::Network::Api_2015_06_15::Models::ExpressRouteCircuitAuthorization
        end
        def express_route_circuit_peering
          Azure::ARM::Network::Api_2015_06_15::Models::ExpressRouteCircuitPeering
        end
        def express_route_circuit
          Azure::ARM::Network::Api_2015_06_15::Models::ExpressRouteCircuit
        end
        def express_route_service_provider
          Azure::ARM::Network::Api_2015_06_15::Models::ExpressRouteServiceProvider
        end
        def frontend_ipconfiguration
          Azure::ARM::Network::Api_2015_06_15::Models::FrontendIPConfiguration
        end
        def load_balancing_rule
          Azure::ARM::Network::Api_2015_06_15::Models::LoadBalancingRule
        end
        def probe
          Azure::ARM::Network::Api_2015_06_15::Models::Probe
        end
        def inbound_nat_pool
          Azure::ARM::Network::Api_2015_06_15::Models::InboundNatPool
        end
        def outbound_nat_rule
          Azure::ARM::Network::Api_2015_06_15::Models::OutboundNatRule
        end
        def load_balancer
          Azure::ARM::Network::Api_2015_06_15::Models::LoadBalancer
        end
        def virtual_network
          Azure::ARM::Network::Api_2015_06_15::Models::VirtualNetwork
        end
        def virtual_network_gateway_ipconfiguration
          Azure::ARM::Network::Api_2015_06_15::Models::VirtualNetworkGatewayIPConfiguration
        end
        def vpn_client_root_certificate
          Azure::ARM::Network::Api_2015_06_15::Models::VpnClientRootCertificate
        end
        def vpn_client_revoked_certificate
          Azure::ARM::Network::Api_2015_06_15::Models::VpnClientRevokedCertificate
        end
        def virtual_network_gateway
          Azure::ARM::Network::Api_2015_06_15::Models::VirtualNetworkGateway
        end
        def local_network_gateway
          Azure::ARM::Network::Api_2015_06_15::Models::LocalNetworkGateway
        end
        def virtual_network_gateway_connection
          Azure::ARM::Network::Api_2015_06_15::Models::VirtualNetworkGatewayConnection
        end
        def application_gateway_sku_name
          Azure::ARM::Network::Api_2015_06_15::Models::ApplicationGatewaySkuName
        end
        def application_gateway_tier
          Azure::ARM::Network::Api_2015_06_15::Models::ApplicationGatewayTier
        end
        def ipallocation_method
          Azure::ARM::Network::Api_2015_06_15::Models::IPAllocationMethod
        end
        def transport_protocol
          Azure::ARM::Network::Api_2015_06_15::Models::TransportProtocol
        end
        def security_rule_protocol
          Azure::ARM::Network::Api_2015_06_15::Models::SecurityRuleProtocol
        end
        def security_rule_access
          Azure::ARM::Network::Api_2015_06_15::Models::SecurityRuleAccess
        end
        def security_rule_direction
          Azure::ARM::Network::Api_2015_06_15::Models::SecurityRuleDirection
        end
        def route_next_hop_type
          Azure::ARM::Network::Api_2015_06_15::Models::RouteNextHopType
        end
        def application_gateway_protocol
          Azure::ARM::Network::Api_2015_06_15::Models::ApplicationGatewayProtocol
        end
        def application_gateway_cookie_based_affinity
          Azure::ARM::Network::Api_2015_06_15::Models::ApplicationGatewayCookieBasedAffinity
        end
        def application_gateway_request_routing_rule_type
          Azure::ARM::Network::Api_2015_06_15::Models::ApplicationGatewayRequestRoutingRuleType
        end
        def application_gateway_operational_state
          Azure::ARM::Network::Api_2015_06_15::Models::ApplicationGatewayOperationalState
        end
        def authorization_use_status
          Azure::ARM::Network::Api_2015_06_15::Models::AuthorizationUseStatus
        end
        def express_route_circuit_peering_advertised_public_prefix_state
          Azure::ARM::Network::Api_2015_06_15::Models::ExpressRouteCircuitPeeringAdvertisedPublicPrefixState
        end
        def express_route_circuit_peering_type
          Azure::ARM::Network::Api_2015_06_15::Models::ExpressRouteCircuitPeeringType
        end
        def express_route_circuit_peering_state
          Azure::ARM::Network::Api_2015_06_15::Models::ExpressRouteCircuitPeeringState
        end
        def express_route_circuit_sku_tier
          Azure::ARM::Network::Api_2015_06_15::Models::ExpressRouteCircuitSkuTier
        end
        def express_route_circuit_sku_family
          Azure::ARM::Network::Api_2015_06_15::Models::ExpressRouteCircuitSkuFamily
        end
        def service_provider_provisioning_state
          Azure::ARM::Network::Api_2015_06_15::Models::ServiceProviderProvisioningState
        end
        def load_distribution
          Azure::ARM::Network::Api_2015_06_15::Models::LoadDistribution
        end
        def probe_protocol
          Azure::ARM::Network::Api_2015_06_15::Models::ProbeProtocol
        end
        def network_operation_status
          Azure::ARM::Network::Api_2015_06_15::Models::NetworkOperationStatus
        end
        def virtual_network_gateway_type
          Azure::ARM::Network::Api_2015_06_15::Models::VirtualNetworkGatewayType
        end
        def vpn_type
          Azure::ARM::Network::Api_2015_06_15::Models::VpnType
        end
        def virtual_network_gateway_sku_name
          Azure::ARM::Network::Api_2015_06_15::Models::VirtualNetworkGatewaySkuName
        end
        def virtual_network_gateway_sku_tier
          Azure::ARM::Network::Api_2015_06_15::Models::VirtualNetworkGatewaySkuTier
        end
        def processor_architecture
          Azure::ARM::Network::Api_2015_06_15::Models::ProcessorArchitecture
        end
        def virtual_network_gateway_connection_type
          Azure::ARM::Network::Api_2015_06_15::Models::VirtualNetworkGatewayConnectionType
        end
        def virtual_network_gateway_connection_status
          Azure::ARM::Network::Api_2015_06_15::Models::VirtualNetworkGatewayConnectionStatus
        end
      end
    end
  end
end
