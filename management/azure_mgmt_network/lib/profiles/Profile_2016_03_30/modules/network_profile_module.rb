# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_network'


module Azure::Profiles::NetworkModule::Management::Profile_2016_03_30
  module Network
    ApplicationGateways = Azure::ARM::Network::Api_2016_03_30::ApplicationGateways
    ExpressRouteCircuitAuthorizations = Azure::ARM::Network::Api_2016_03_30::ExpressRouteCircuitAuthorizations
    ExpressRouteCircuitPeerings = Azure::ARM::Network::Api_2016_03_30::ExpressRouteCircuitPeerings
    ExpressRouteCircuits = Azure::ARM::Network::Api_2016_03_30::ExpressRouteCircuits
    ExpressRouteServiceProviders = Azure::ARM::Network::Api_2016_03_30::ExpressRouteServiceProviders
    LoadBalancers = Azure::ARM::Network::Api_2016_03_30::LoadBalancers
    LocalNetworkGateways = Azure::ARM::Network::Api_2016_03_30::LocalNetworkGateways
    NetworkInterfaces = Azure::ARM::Network::Api_2016_03_30::NetworkInterfaces
    NetworkSecurityGroups = Azure::ARM::Network::Api_2016_03_30::NetworkSecurityGroups
    PublicIPAddresses = Azure::ARM::Network::Api_2016_03_30::PublicIPAddresses
    RouteTables = Azure::ARM::Network::Api_2016_03_30::RouteTables
    Routes = Azure::ARM::Network::Api_2016_03_30::Routes
    SecurityRules = Azure::ARM::Network::Api_2016_03_30::SecurityRules
    Subnets = Azure::ARM::Network::Api_2016_03_30::Subnets
    Usages = Azure::ARM::Network::Api_2016_03_30::Usages
    VirtualNetworkGatewayConnections = Azure::ARM::Network::Api_2016_03_30::VirtualNetworkGatewayConnections
    VirtualNetworkGateways = Azure::ARM::Network::Api_2016_03_30::VirtualNetworkGateways
    VirtualNetworks = Azure::ARM::Network::Api_2016_03_30::VirtualNetworks

    module Models
      ExpressRouteServiceProviderBandwidthsOffered = Azure::ARM::Network::Api_2016_03_30::Models::ExpressRouteServiceProviderBandwidthsOffered
      ApplicationGatewaySku = Azure::ARM::Network::Api_2016_03_30::Models::ApplicationGatewaySku
      ExpressRouteCircuitsArpTableListResult = Azure::ARM::Network::Api_2016_03_30::Models::ExpressRouteCircuitsArpTableListResult
      BgpSettings = Azure::ARM::Network::Api_2016_03_30::Models::BgpSettings
      AddressSpace = Azure::ARM::Network::Api_2016_03_30::Models::AddressSpace
      VpnClientParameters = Azure::ARM::Network::Api_2016_03_30::Models::VpnClientParameters
      ApplicationGatewayListResult = Azure::ARM::Network::Api_2016_03_30::Models::ApplicationGatewayListResult
      ApplicationGatewayBackendAddress = Azure::ARM::Network::Api_2016_03_30::Models::ApplicationGatewayBackendAddress
      LoadBalancerListResult = Azure::ARM::Network::Api_2016_03_30::Models::LoadBalancerListResult
      ConnectionResetSharedKey = Azure::ARM::Network::Api_2016_03_30::Models::ConnectionResetSharedKey
      AuthorizationListResult = Azure::ARM::Network::Api_2016_03_30::Models::AuthorizationListResult
      VirtualNetworkGatewaySku = Azure::ARM::Network::Api_2016_03_30::Models::VirtualNetworkGatewaySku
      ExpressRouteCircuitPeeringConfig = Azure::ARM::Network::Api_2016_03_30::Models::ExpressRouteCircuitPeeringConfig
      VirtualNetworkGatewayListResult = Azure::ARM::Network::Api_2016_03_30::Models::VirtualNetworkGatewayListResult
      ExpressRouteCircuitStats = Azure::ARM::Network::Api_2016_03_30::Models::ExpressRouteCircuitStats
      Usage = Azure::ARM::Network::Api_2016_03_30::Models::Usage
      VirtualNetworkListResult = Azure::ARM::Network::Api_2016_03_30::Models::VirtualNetworkListResult
      PublicIPAddressDnsSettings = Azure::ARM::Network::Api_2016_03_30::Models::PublicIPAddressDnsSettings
      ExpressRouteCircuitPeeringListResult = Azure::ARM::Network::Api_2016_03_30::Models::ExpressRouteCircuitPeeringListResult
      SecurityRuleListResult = Azure::ARM::Network::Api_2016_03_30::Models::SecurityRuleListResult
      ExpressRouteCircuitSku = Azure::ARM::Network::Api_2016_03_30::Models::ExpressRouteCircuitSku
      RouteTableListResult = Azure::ARM::Network::Api_2016_03_30::Models::RouteTableListResult
      ExpressRouteCircuitServiceProviderProperties = Azure::ARM::Network::Api_2016_03_30::Models::ExpressRouteCircuitServiceProviderProperties
      NetworkSecurityGroupListResult = Azure::ARM::Network::Api_2016_03_30::Models::NetworkSecurityGroupListResult
      DnsNameAvailabilityResult = Azure::ARM::Network::Api_2016_03_30::Models::DnsNameAvailabilityResult
      LocalNetworkGatewayListResult = Azure::ARM::Network::Api_2016_03_30::Models::LocalNetworkGatewayListResult
      ExpressRouteCircuitArpTable = Azure::ARM::Network::Api_2016_03_30::Models::ExpressRouteCircuitArpTable
      ConnectionSharedKeyResult = Azure::ARM::Network::Api_2016_03_30::Models::ConnectionSharedKeyResult
      ErrorDetails = Azure::ARM::Network::Api_2016_03_30::Models::ErrorDetails
      VpnClientConfiguration = Azure::ARM::Network::Api_2016_03_30::Models::VpnClientConfiguration
      ExpressRouteCircuitRoutesTable = Azure::ARM::Network::Api_2016_03_30::Models::ExpressRouteCircuitRoutesTable
      NetworkInterfaceDnsSettings = Azure::ARM::Network::Api_2016_03_30::Models::NetworkInterfaceDnsSettings
      ExpressRouteCircuitsRoutesTableListResult = Azure::ARM::Network::Api_2016_03_30::Models::ExpressRouteCircuitsRoutesTableListResult
      UsageName = Azure::ARM::Network::Api_2016_03_30::Models::UsageName
      ExpressRouteCircuitRoutesTableSummary = Azure::ARM::Network::Api_2016_03_30::Models::ExpressRouteCircuitRoutesTableSummary
      RouteListResult = Azure::ARM::Network::Api_2016_03_30::Models::RouteListResult
      ExpressRouteCircuitsRoutesTableSummaryListResult = Azure::ARM::Network::Api_2016_03_30::Models::ExpressRouteCircuitsRoutesTableSummaryListResult
      NetworkInterfaceListResult = Azure::ARM::Network::Api_2016_03_30::Models::NetworkInterfaceListResult
      ExpressRouteCircuitListResult = Azure::ARM::Network::Api_2016_03_30::Models::ExpressRouteCircuitListResult
      VirtualNetworkGatewayConnectionListResult = Azure::ARM::Network::Api_2016_03_30::Models::VirtualNetworkGatewayConnectionListResult
      UsagesListResult = Azure::ARM::Network::Api_2016_03_30::Models::UsagesListResult
      PublicIPAddressListResult = Azure::ARM::Network::Api_2016_03_30::Models::PublicIPAddressListResult
      ExpressRouteServiceProviderListResult = Azure::ARM::Network::Api_2016_03_30::Models::ExpressRouteServiceProviderListResult
      ConnectionSharedKey = Azure::ARM::Network::Api_2016_03_30::Models::ConnectionSharedKey
      DhcpOptions = Azure::ARM::Network::Api_2016_03_30::Models::DhcpOptions
      AzureAsyncOperationResult = Azure::ARM::Network::Api_2016_03_30::Models::AzureAsyncOperationResult
      SubnetListResult = Azure::ARM::Network::Api_2016_03_30::Models::SubnetListResult
      Error = Azure::ARM::Network::Api_2016_03_30::Models::Error
      ApplicationGatewayIPConfiguration = Azure::ARM::Network::Api_2016_03_30::Models::ApplicationGatewayIPConfiguration
      ApplicationGatewaySslCertificate = Azure::ARM::Network::Api_2016_03_30::Models::ApplicationGatewaySslCertificate
      ApplicationGatewayFrontendIPConfiguration = Azure::ARM::Network::Api_2016_03_30::Models::ApplicationGatewayFrontendIPConfiguration
      ApplicationGatewayFrontendPort = Azure::ARM::Network::Api_2016_03_30::Models::ApplicationGatewayFrontendPort
      ApplicationGatewayBackendAddressPool = Azure::ARM::Network::Api_2016_03_30::Models::ApplicationGatewayBackendAddressPool
      BackendAddressPool = Azure::ARM::Network::Api_2016_03_30::Models::BackendAddressPool
      InboundNatRule = Azure::ARM::Network::Api_2016_03_30::Models::InboundNatRule
      SecurityRule = Azure::ARM::Network::Api_2016_03_30::Models::SecurityRule
      NetworkInterface = Azure::ARM::Network::Api_2016_03_30::Models::NetworkInterface
      NetworkSecurityGroup = Azure::ARM::Network::Api_2016_03_30::Models::NetworkSecurityGroup
      Route = Azure::ARM::Network::Api_2016_03_30::Models::Route
      RouteTable = Azure::ARM::Network::Api_2016_03_30::Models::RouteTable
      PublicIPAddress = Azure::ARM::Network::Api_2016_03_30::Models::PublicIPAddress
      IPConfiguration = Azure::ARM::Network::Api_2016_03_30::Models::IPConfiguration
      Subnet = Azure::ARM::Network::Api_2016_03_30::Models::Subnet
      NetworkInterfaceIPConfiguration = Azure::ARM::Network::Api_2016_03_30::Models::NetworkInterfaceIPConfiguration
      ApplicationGatewayBackendHttpSettings = Azure::ARM::Network::Api_2016_03_30::Models::ApplicationGatewayBackendHttpSettings
      ApplicationGatewayHttpListener = Azure::ARM::Network::Api_2016_03_30::Models::ApplicationGatewayHttpListener
      ApplicationGatewayPathRule = Azure::ARM::Network::Api_2016_03_30::Models::ApplicationGatewayPathRule
      ApplicationGatewayProbe = Azure::ARM::Network::Api_2016_03_30::Models::ApplicationGatewayProbe
      ApplicationGatewayRequestRoutingRule = Azure::ARM::Network::Api_2016_03_30::Models::ApplicationGatewayRequestRoutingRule
      ApplicationGatewayUrlPathMap = Azure::ARM::Network::Api_2016_03_30::Models::ApplicationGatewayUrlPathMap
      ApplicationGateway = Azure::ARM::Network::Api_2016_03_30::Models::ApplicationGateway
      ExpressRouteCircuitAuthorization = Azure::ARM::Network::Api_2016_03_30::Models::ExpressRouteCircuitAuthorization
      ExpressRouteCircuitPeering = Azure::ARM::Network::Api_2016_03_30::Models::ExpressRouteCircuitPeering
      ExpressRouteCircuit = Azure::ARM::Network::Api_2016_03_30::Models::ExpressRouteCircuit
      ExpressRouteServiceProvider = Azure::ARM::Network::Api_2016_03_30::Models::ExpressRouteServiceProvider
      FrontendIPConfiguration = Azure::ARM::Network::Api_2016_03_30::Models::FrontendIPConfiguration
      LoadBalancingRule = Azure::ARM::Network::Api_2016_03_30::Models::LoadBalancingRule
      Probe = Azure::ARM::Network::Api_2016_03_30::Models::Probe
      InboundNatPool = Azure::ARM::Network::Api_2016_03_30::Models::InboundNatPool
      OutboundNatRule = Azure::ARM::Network::Api_2016_03_30::Models::OutboundNatRule
      LoadBalancer = Azure::ARM::Network::Api_2016_03_30::Models::LoadBalancer
      LocalNetworkGateway = Azure::ARM::Network::Api_2016_03_30::Models::LocalNetworkGateway
      VirtualNetworkGatewayIPConfiguration = Azure::ARM::Network::Api_2016_03_30::Models::VirtualNetworkGatewayIPConfiguration
      VpnClientRootCertificate = Azure::ARM::Network::Api_2016_03_30::Models::VpnClientRootCertificate
      VpnClientRevokedCertificate = Azure::ARM::Network::Api_2016_03_30::Models::VpnClientRevokedCertificate
      VirtualNetworkGateway = Azure::ARM::Network::Api_2016_03_30::Models::VirtualNetworkGateway
      VirtualNetworkGatewayConnection = Azure::ARM::Network::Api_2016_03_30::Models::VirtualNetworkGatewayConnection
      VirtualNetwork = Azure::ARM::Network::Api_2016_03_30::Models::VirtualNetwork
      ApplicationGatewaySkuName = Azure::ARM::Network::Api_2016_03_30::Models::ApplicationGatewaySkuName
      ApplicationGatewayTier = Azure::ARM::Network::Api_2016_03_30::Models::ApplicationGatewayTier
      IPAllocationMethod = Azure::ARM::Network::Api_2016_03_30::Models::IPAllocationMethod
      TransportProtocol = Azure::ARM::Network::Api_2016_03_30::Models::TransportProtocol
      IPVersion = Azure::ARM::Network::Api_2016_03_30::Models::IPVersion
      SecurityRuleProtocol = Azure::ARM::Network::Api_2016_03_30::Models::SecurityRuleProtocol
      SecurityRuleAccess = Azure::ARM::Network::Api_2016_03_30::Models::SecurityRuleAccess
      SecurityRuleDirection = Azure::ARM::Network::Api_2016_03_30::Models::SecurityRuleDirection
      RouteNextHopType = Azure::ARM::Network::Api_2016_03_30::Models::RouteNextHopType
      ApplicationGatewayProtocol = Azure::ARM::Network::Api_2016_03_30::Models::ApplicationGatewayProtocol
      ApplicationGatewayCookieBasedAffinity = Azure::ARM::Network::Api_2016_03_30::Models::ApplicationGatewayCookieBasedAffinity
      ApplicationGatewayRequestRoutingRuleType = Azure::ARM::Network::Api_2016_03_30::Models::ApplicationGatewayRequestRoutingRuleType
      ApplicationGatewayOperationalState = Azure::ARM::Network::Api_2016_03_30::Models::ApplicationGatewayOperationalState
      AuthorizationUseStatus = Azure::ARM::Network::Api_2016_03_30::Models::AuthorizationUseStatus
      ExpressRouteCircuitPeeringAdvertisedPublicPrefixState = Azure::ARM::Network::Api_2016_03_30::Models::ExpressRouteCircuitPeeringAdvertisedPublicPrefixState
      ExpressRouteCircuitPeeringType = Azure::ARM::Network::Api_2016_03_30::Models::ExpressRouteCircuitPeeringType
      ExpressRouteCircuitPeeringState = Azure::ARM::Network::Api_2016_03_30::Models::ExpressRouteCircuitPeeringState
      ExpressRouteCircuitSkuTier = Azure::ARM::Network::Api_2016_03_30::Models::ExpressRouteCircuitSkuTier
      ExpressRouteCircuitSkuFamily = Azure::ARM::Network::Api_2016_03_30::Models::ExpressRouteCircuitSkuFamily
      ServiceProviderProvisioningState = Azure::ARM::Network::Api_2016_03_30::Models::ServiceProviderProvisioningState
      LoadDistribution = Azure::ARM::Network::Api_2016_03_30::Models::LoadDistribution
      ProbeProtocol = Azure::ARM::Network::Api_2016_03_30::Models::ProbeProtocol
      VirtualNetworkGatewayType = Azure::ARM::Network::Api_2016_03_30::Models::VirtualNetworkGatewayType
      VpnType = Azure::ARM::Network::Api_2016_03_30::Models::VpnType
      VirtualNetworkGatewaySkuName = Azure::ARM::Network::Api_2016_03_30::Models::VirtualNetworkGatewaySkuName
      VirtualNetworkGatewaySkuTier = Azure::ARM::Network::Api_2016_03_30::Models::VirtualNetworkGatewaySkuTier
      ProcessorArchitecture = Azure::ARM::Network::Api_2016_03_30::Models::ProcessorArchitecture
      VirtualNetworkGatewayConnectionType = Azure::ARM::Network::Api_2016_03_30::Models::VirtualNetworkGatewayConnectionType
      VirtualNetworkGatewayConnectionStatus = Azure::ARM::Network::Api_2016_03_30::Models::VirtualNetworkGatewayConnectionStatus
      NetworkOperationStatus = Azure::ARM::Network::Api_2016_03_30::Models::NetworkOperationStatus
    end

    #
    # Network
    #
    class NetworkClass
      attr_accessor :application_gateways, :express_route_circuit_authorizations, :express_route_circuit_peerings, :express_route_circuits, :express_route_service_providers, :load_balancers, :local_network_gateways, :network_interfaces, :network_security_groups, :public_ipaddresses, :route_tables, :routes, :security_rules, :subnets, :usages, :virtual_network_gateway_connections, :virtual_network_gateways, :virtual_networks, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::Network::Api_2016_03_30::NetworkManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.application_gateways = Azure::ARM::Network::Api_2016_03_30::ApplicationGateways.new(client)
        self.express_route_circuit_authorizations = Azure::ARM::Network::Api_2016_03_30::ExpressRouteCircuitAuthorizations.new(client)
        self.express_route_circuit_peerings = Azure::ARM::Network::Api_2016_03_30::ExpressRouteCircuitPeerings.new(client)
        self.express_route_circuits = Azure::ARM::Network::Api_2016_03_30::ExpressRouteCircuits.new(client)
        self.express_route_service_providers = Azure::ARM::Network::Api_2016_03_30::ExpressRouteServiceProviders.new(client)
        self.load_balancers = Azure::ARM::Network::Api_2016_03_30::LoadBalancers.new(client)
        self.local_network_gateways = Azure::ARM::Network::Api_2016_03_30::LocalNetworkGateways.new(client)
        self.network_interfaces = Azure::ARM::Network::Api_2016_03_30::NetworkInterfaces.new(client)
        self.network_security_groups = Azure::ARM::Network::Api_2016_03_30::NetworkSecurityGroups.new(client)
        self.public_ipaddresses = Azure::ARM::Network::Api_2016_03_30::PublicIPAddresses.new(client)
        self.route_tables = Azure::ARM::Network::Api_2016_03_30::RouteTables.new(client)
        self.routes = Azure::ARM::Network::Api_2016_03_30::Routes.new(client)
        self.security_rules = Azure::ARM::Network::Api_2016_03_30::SecurityRules.new(client)
        self.subnets = Azure::ARM::Network::Api_2016_03_30::Subnets.new(client)
        self.usages = Azure::ARM::Network::Api_2016_03_30::Usages.new(client)
        self.virtual_network_gateway_connections = Azure::ARM::Network::Api_2016_03_30::VirtualNetworkGatewayConnections.new(client)
        self.virtual_network_gateways = Azure::ARM::Network::Api_2016_03_30::VirtualNetworkGateways.new(client)
        self.virtual_networks = Azure::ARM::Network::Api_2016_03_30::VirtualNetworks.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2016-03-30'
            client = Azure::ARM::Network::Api_2016_03_30::NetworkManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def express_route_service_provider_bandwidths_offered
          Azure::ARM::Network::Api_2016_03_30::Models::ExpressRouteServiceProviderBandwidthsOffered
        end
        def application_gateway_sku
          Azure::ARM::Network::Api_2016_03_30::Models::ApplicationGatewaySku
        end
        def express_route_circuits_arp_table_list_result
          Azure::ARM::Network::Api_2016_03_30::Models::ExpressRouteCircuitsArpTableListResult
        end
        def bgp_settings
          Azure::ARM::Network::Api_2016_03_30::Models::BgpSettings
        end
        def address_space
          Azure::ARM::Network::Api_2016_03_30::Models::AddressSpace
        end
        def vpn_client_parameters
          Azure::ARM::Network::Api_2016_03_30::Models::VpnClientParameters
        end
        def application_gateway_list_result
          Azure::ARM::Network::Api_2016_03_30::Models::ApplicationGatewayListResult
        end
        def application_gateway_backend_address
          Azure::ARM::Network::Api_2016_03_30::Models::ApplicationGatewayBackendAddress
        end
        def load_balancer_list_result
          Azure::ARM::Network::Api_2016_03_30::Models::LoadBalancerListResult
        end
        def connection_reset_shared_key
          Azure::ARM::Network::Api_2016_03_30::Models::ConnectionResetSharedKey
        end
        def authorization_list_result
          Azure::ARM::Network::Api_2016_03_30::Models::AuthorizationListResult
        end
        def virtual_network_gateway_sku
          Azure::ARM::Network::Api_2016_03_30::Models::VirtualNetworkGatewaySku
        end
        def express_route_circuit_peering_config
          Azure::ARM::Network::Api_2016_03_30::Models::ExpressRouteCircuitPeeringConfig
        end
        def virtual_network_gateway_list_result
          Azure::ARM::Network::Api_2016_03_30::Models::VirtualNetworkGatewayListResult
        end
        def express_route_circuit_stats
          Azure::ARM::Network::Api_2016_03_30::Models::ExpressRouteCircuitStats
        end
        def usage
          Azure::ARM::Network::Api_2016_03_30::Models::Usage
        end
        def virtual_network_list_result
          Azure::ARM::Network::Api_2016_03_30::Models::VirtualNetworkListResult
        end
        def public_ipaddress_dns_settings
          Azure::ARM::Network::Api_2016_03_30::Models::PublicIPAddressDnsSettings
        end
        def express_route_circuit_peering_list_result
          Azure::ARM::Network::Api_2016_03_30::Models::ExpressRouteCircuitPeeringListResult
        end
        def security_rule_list_result
          Azure::ARM::Network::Api_2016_03_30::Models::SecurityRuleListResult
        end
        def express_route_circuit_sku
          Azure::ARM::Network::Api_2016_03_30::Models::ExpressRouteCircuitSku
        end
        def route_table_list_result
          Azure::ARM::Network::Api_2016_03_30::Models::RouteTableListResult
        end
        def express_route_circuit_service_provider_properties
          Azure::ARM::Network::Api_2016_03_30::Models::ExpressRouteCircuitServiceProviderProperties
        end
        def network_security_group_list_result
          Azure::ARM::Network::Api_2016_03_30::Models::NetworkSecurityGroupListResult
        end
        def dns_name_availability_result
          Azure::ARM::Network::Api_2016_03_30::Models::DnsNameAvailabilityResult
        end
        def local_network_gateway_list_result
          Azure::ARM::Network::Api_2016_03_30::Models::LocalNetworkGatewayListResult
        end
        def express_route_circuit_arp_table
          Azure::ARM::Network::Api_2016_03_30::Models::ExpressRouteCircuitArpTable
        end
        def connection_shared_key_result
          Azure::ARM::Network::Api_2016_03_30::Models::ConnectionSharedKeyResult
        end
        def error_details
          Azure::ARM::Network::Api_2016_03_30::Models::ErrorDetails
        end
        def vpn_client_configuration
          Azure::ARM::Network::Api_2016_03_30::Models::VpnClientConfiguration
        end
        def express_route_circuit_routes_table
          Azure::ARM::Network::Api_2016_03_30::Models::ExpressRouteCircuitRoutesTable
        end
        def network_interface_dns_settings
          Azure::ARM::Network::Api_2016_03_30::Models::NetworkInterfaceDnsSettings
        end
        def express_route_circuits_routes_table_list_result
          Azure::ARM::Network::Api_2016_03_30::Models::ExpressRouteCircuitsRoutesTableListResult
        end
        def usage_name
          Azure::ARM::Network::Api_2016_03_30::Models::UsageName
        end
        def express_route_circuit_routes_table_summary
          Azure::ARM::Network::Api_2016_03_30::Models::ExpressRouteCircuitRoutesTableSummary
        end
        def route_list_result
          Azure::ARM::Network::Api_2016_03_30::Models::RouteListResult
        end
        def express_route_circuits_routes_table_summary_list_result
          Azure::ARM::Network::Api_2016_03_30::Models::ExpressRouteCircuitsRoutesTableSummaryListResult
        end
        def network_interface_list_result
          Azure::ARM::Network::Api_2016_03_30::Models::NetworkInterfaceListResult
        end
        def express_route_circuit_list_result
          Azure::ARM::Network::Api_2016_03_30::Models::ExpressRouteCircuitListResult
        end
        def virtual_network_gateway_connection_list_result
          Azure::ARM::Network::Api_2016_03_30::Models::VirtualNetworkGatewayConnectionListResult
        end
        def usages_list_result
          Azure::ARM::Network::Api_2016_03_30::Models::UsagesListResult
        end
        def public_ipaddress_list_result
          Azure::ARM::Network::Api_2016_03_30::Models::PublicIPAddressListResult
        end
        def express_route_service_provider_list_result
          Azure::ARM::Network::Api_2016_03_30::Models::ExpressRouteServiceProviderListResult
        end
        def connection_shared_key
          Azure::ARM::Network::Api_2016_03_30::Models::ConnectionSharedKey
        end
        def dhcp_options
          Azure::ARM::Network::Api_2016_03_30::Models::DhcpOptions
        end
        def azure_async_operation_result
          Azure::ARM::Network::Api_2016_03_30::Models::AzureAsyncOperationResult
        end
        def subnet_list_result
          Azure::ARM::Network::Api_2016_03_30::Models::SubnetListResult
        end
        def error
          Azure::ARM::Network::Api_2016_03_30::Models::Error
        end
        def application_gateway_ipconfiguration
          Azure::ARM::Network::Api_2016_03_30::Models::ApplicationGatewayIPConfiguration
        end
        def application_gateway_ssl_certificate
          Azure::ARM::Network::Api_2016_03_30::Models::ApplicationGatewaySslCertificate
        end
        def application_gateway_frontend_ipconfiguration
          Azure::ARM::Network::Api_2016_03_30::Models::ApplicationGatewayFrontendIPConfiguration
        end
        def application_gateway_frontend_port
          Azure::ARM::Network::Api_2016_03_30::Models::ApplicationGatewayFrontendPort
        end
        def application_gateway_backend_address_pool
          Azure::ARM::Network::Api_2016_03_30::Models::ApplicationGatewayBackendAddressPool
        end
        def backend_address_pool
          Azure::ARM::Network::Api_2016_03_30::Models::BackendAddressPool
        end
        def inbound_nat_rule
          Azure::ARM::Network::Api_2016_03_30::Models::InboundNatRule
        end
        def security_rule
          Azure::ARM::Network::Api_2016_03_30::Models::SecurityRule
        end
        def network_interface
          Azure::ARM::Network::Api_2016_03_30::Models::NetworkInterface
        end
        def network_security_group
          Azure::ARM::Network::Api_2016_03_30::Models::NetworkSecurityGroup
        end
        def route
          Azure::ARM::Network::Api_2016_03_30::Models::Route
        end
        def route_table
          Azure::ARM::Network::Api_2016_03_30::Models::RouteTable
        end
        def public_ipaddress
          Azure::ARM::Network::Api_2016_03_30::Models::PublicIPAddress
        end
        def ipconfiguration
          Azure::ARM::Network::Api_2016_03_30::Models::IPConfiguration
        end
        def subnet
          Azure::ARM::Network::Api_2016_03_30::Models::Subnet
        end
        def network_interface_ipconfiguration
          Azure::ARM::Network::Api_2016_03_30::Models::NetworkInterfaceIPConfiguration
        end
        def application_gateway_backend_http_settings
          Azure::ARM::Network::Api_2016_03_30::Models::ApplicationGatewayBackendHttpSettings
        end
        def application_gateway_http_listener
          Azure::ARM::Network::Api_2016_03_30::Models::ApplicationGatewayHttpListener
        end
        def application_gateway_path_rule
          Azure::ARM::Network::Api_2016_03_30::Models::ApplicationGatewayPathRule
        end
        def application_gateway_probe
          Azure::ARM::Network::Api_2016_03_30::Models::ApplicationGatewayProbe
        end
        def application_gateway_request_routing_rule
          Azure::ARM::Network::Api_2016_03_30::Models::ApplicationGatewayRequestRoutingRule
        end
        def application_gateway_url_path_map
          Azure::ARM::Network::Api_2016_03_30::Models::ApplicationGatewayUrlPathMap
        end
        def application_gateway
          Azure::ARM::Network::Api_2016_03_30::Models::ApplicationGateway
        end
        def express_route_circuit_authorization
          Azure::ARM::Network::Api_2016_03_30::Models::ExpressRouteCircuitAuthorization
        end
        def express_route_circuit_peering
          Azure::ARM::Network::Api_2016_03_30::Models::ExpressRouteCircuitPeering
        end
        def express_route_circuit
          Azure::ARM::Network::Api_2016_03_30::Models::ExpressRouteCircuit
        end
        def express_route_service_provider
          Azure::ARM::Network::Api_2016_03_30::Models::ExpressRouteServiceProvider
        end
        def frontend_ipconfiguration
          Azure::ARM::Network::Api_2016_03_30::Models::FrontendIPConfiguration
        end
        def load_balancing_rule
          Azure::ARM::Network::Api_2016_03_30::Models::LoadBalancingRule
        end
        def probe
          Azure::ARM::Network::Api_2016_03_30::Models::Probe
        end
        def inbound_nat_pool
          Azure::ARM::Network::Api_2016_03_30::Models::InboundNatPool
        end
        def outbound_nat_rule
          Azure::ARM::Network::Api_2016_03_30::Models::OutboundNatRule
        end
        def load_balancer
          Azure::ARM::Network::Api_2016_03_30::Models::LoadBalancer
        end
        def local_network_gateway
          Azure::ARM::Network::Api_2016_03_30::Models::LocalNetworkGateway
        end
        def virtual_network_gateway_ipconfiguration
          Azure::ARM::Network::Api_2016_03_30::Models::VirtualNetworkGatewayIPConfiguration
        end
        def vpn_client_root_certificate
          Azure::ARM::Network::Api_2016_03_30::Models::VpnClientRootCertificate
        end
        def vpn_client_revoked_certificate
          Azure::ARM::Network::Api_2016_03_30::Models::VpnClientRevokedCertificate
        end
        def virtual_network_gateway
          Azure::ARM::Network::Api_2016_03_30::Models::VirtualNetworkGateway
        end
        def virtual_network_gateway_connection
          Azure::ARM::Network::Api_2016_03_30::Models::VirtualNetworkGatewayConnection
        end
        def virtual_network
          Azure::ARM::Network::Api_2016_03_30::Models::VirtualNetwork
        end
        def application_gateway_sku_name
          Azure::ARM::Network::Api_2016_03_30::Models::ApplicationGatewaySkuName
        end
        def application_gateway_tier
          Azure::ARM::Network::Api_2016_03_30::Models::ApplicationGatewayTier
        end
        def ipallocation_method
          Azure::ARM::Network::Api_2016_03_30::Models::IPAllocationMethod
        end
        def transport_protocol
          Azure::ARM::Network::Api_2016_03_30::Models::TransportProtocol
        end
        def ipversion
          Azure::ARM::Network::Api_2016_03_30::Models::IPVersion
        end
        def security_rule_protocol
          Azure::ARM::Network::Api_2016_03_30::Models::SecurityRuleProtocol
        end
        def security_rule_access
          Azure::ARM::Network::Api_2016_03_30::Models::SecurityRuleAccess
        end
        def security_rule_direction
          Azure::ARM::Network::Api_2016_03_30::Models::SecurityRuleDirection
        end
        def route_next_hop_type
          Azure::ARM::Network::Api_2016_03_30::Models::RouteNextHopType
        end
        def application_gateway_protocol
          Azure::ARM::Network::Api_2016_03_30::Models::ApplicationGatewayProtocol
        end
        def application_gateway_cookie_based_affinity
          Azure::ARM::Network::Api_2016_03_30::Models::ApplicationGatewayCookieBasedAffinity
        end
        def application_gateway_request_routing_rule_type
          Azure::ARM::Network::Api_2016_03_30::Models::ApplicationGatewayRequestRoutingRuleType
        end
        def application_gateway_operational_state
          Azure::ARM::Network::Api_2016_03_30::Models::ApplicationGatewayOperationalState
        end
        def authorization_use_status
          Azure::ARM::Network::Api_2016_03_30::Models::AuthorizationUseStatus
        end
        def express_route_circuit_peering_advertised_public_prefix_state
          Azure::ARM::Network::Api_2016_03_30::Models::ExpressRouteCircuitPeeringAdvertisedPublicPrefixState
        end
        def express_route_circuit_peering_type
          Azure::ARM::Network::Api_2016_03_30::Models::ExpressRouteCircuitPeeringType
        end
        def express_route_circuit_peering_state
          Azure::ARM::Network::Api_2016_03_30::Models::ExpressRouteCircuitPeeringState
        end
        def express_route_circuit_sku_tier
          Azure::ARM::Network::Api_2016_03_30::Models::ExpressRouteCircuitSkuTier
        end
        def express_route_circuit_sku_family
          Azure::ARM::Network::Api_2016_03_30::Models::ExpressRouteCircuitSkuFamily
        end
        def service_provider_provisioning_state
          Azure::ARM::Network::Api_2016_03_30::Models::ServiceProviderProvisioningState
        end
        def load_distribution
          Azure::ARM::Network::Api_2016_03_30::Models::LoadDistribution
        end
        def probe_protocol
          Azure::ARM::Network::Api_2016_03_30::Models::ProbeProtocol
        end
        def virtual_network_gateway_type
          Azure::ARM::Network::Api_2016_03_30::Models::VirtualNetworkGatewayType
        end
        def vpn_type
          Azure::ARM::Network::Api_2016_03_30::Models::VpnType
        end
        def virtual_network_gateway_sku_name
          Azure::ARM::Network::Api_2016_03_30::Models::VirtualNetworkGatewaySkuName
        end
        def virtual_network_gateway_sku_tier
          Azure::ARM::Network::Api_2016_03_30::Models::VirtualNetworkGatewaySkuTier
        end
        def processor_architecture
          Azure::ARM::Network::Api_2016_03_30::Models::ProcessorArchitecture
        end
        def virtual_network_gateway_connection_type
          Azure::ARM::Network::Api_2016_03_30::Models::VirtualNetworkGatewayConnectionType
        end
        def virtual_network_gateway_connection_status
          Azure::ARM::Network::Api_2016_03_30::Models::VirtualNetworkGatewayConnectionStatus
        end
        def network_operation_status
          Azure::ARM::Network::Api_2016_03_30::Models::NetworkOperationStatus
        end
      end
    end
  end
end
