# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_network'

module Azure::Profiles::V2017_03_09
  module Network
    module Mgmt
      LocalNetworkGateways = Azure::Network::Mgmt::V2015_06_15::LocalNetworkGateways
      ExpressRouteCircuitAuthorizations = Azure::Network::Mgmt::V2015_06_15::ExpressRouteCircuitAuthorizations
      ExpressRouteCircuitPeerings = Azure::Network::Mgmt::V2015_06_15::ExpressRouteCircuitPeerings
      ExpressRouteCircuits = Azure::Network::Mgmt::V2015_06_15::ExpressRouteCircuits
      ExpressRouteServiceProviders = Azure::Network::Mgmt::V2015_06_15::ExpressRouteServiceProviders
      LoadBalancers = Azure::Network::Mgmt::V2015_06_15::LoadBalancers
      NetworkInterfaces = Azure::Network::Mgmt::V2015_06_15::NetworkInterfaces
      PublicIPAddresses = Azure::Network::Mgmt::V2015_06_15::PublicIPAddresses
      NetworkSecurityGroups = Azure::Network::Mgmt::V2015_06_15::NetworkSecurityGroups
      SecurityRules = Azure::Network::Mgmt::V2015_06_15::SecurityRules
      RouteTables = Azure::Network::Mgmt::V2015_06_15::RouteTables
      Routes = Azure::Network::Mgmt::V2015_06_15::Routes
      Usages = Azure::Network::Mgmt::V2015_06_15::Usages
      VirtualNetworks = Azure::Network::Mgmt::V2015_06_15::VirtualNetworks
      Subnets = Azure::Network::Mgmt::V2015_06_15::Subnets
      VirtualNetworkGateways = Azure::Network::Mgmt::V2015_06_15::VirtualNetworkGateways
      ApplicationGateways = Azure::Network::Mgmt::V2015_06_15::ApplicationGateways
      VirtualNetworkGatewayConnections = Azure::Network::Mgmt::V2015_06_15::VirtualNetworkGatewayConnections

      module Models
        ExpressRouteServiceProviderBandwidthsOffered = Azure::Network::Mgmt::V2015_06_15::Models::ExpressRouteServiceProviderBandwidthsOffered
        ExpressRouteServiceProviderListResult = Azure::Network::Mgmt::V2015_06_15::Models::ExpressRouteServiceProviderListResult
        VirtualNetworkGatewayConnectionListResult = Azure::Network::Mgmt::V2015_06_15::Models::VirtualNetworkGatewayConnectionListResult
        ApplicationGatewaySku = Azure::Network::Mgmt::V2015_06_15::Models::ApplicationGatewaySku
        DhcpOptions = Azure::Network::Mgmt::V2015_06_15::Models::DhcpOptions
        UsagesListResult = Azure::Network::Mgmt::V2015_06_15::Models::UsagesListResult
        ExpressRouteCircuitPeeringConfig = Azure::Network::Mgmt::V2015_06_15::Models::ExpressRouteCircuitPeeringConfig
        ExpressRouteCircuitServiceProviderProperties = Azure::Network::Mgmt::V2015_06_15::Models::ExpressRouteCircuitServiceProviderProperties
        ExpressRouteCircuitRoutesTable = Azure::Network::Mgmt::V2015_06_15::Models::ExpressRouteCircuitRoutesTable
        ExpressRouteCircuitListResult = Azure::Network::Mgmt::V2015_06_15::Models::ExpressRouteCircuitListResult
        VpnClientParameters = Azure::Network::Mgmt::V2015_06_15::Models::VpnClientParameters
        ExpressRouteCircuitStats = Azure::Network::Mgmt::V2015_06_15::Models::ExpressRouteCircuitStats
        UsageName = Azure::Network::Mgmt::V2015_06_15::Models::UsageName
        ExpressRouteCircuitArpTable = Azure::Network::Mgmt::V2015_06_15::Models::ExpressRouteCircuitArpTable
        RouteTableListResult = Azure::Network::Mgmt::V2015_06_15::Models::RouteTableListResult
        LocalNetworkGatewayListResult = Azure::Network::Mgmt::V2015_06_15::Models::LocalNetworkGatewayListResult
        SubnetListResult = Azure::Network::Mgmt::V2015_06_15::Models::SubnetListResult
        ApplicationGatewayBackendAddress = Azure::Network::Mgmt::V2015_06_15::Models::ApplicationGatewayBackendAddress
        PublicIPAddressListResult = Azure::Network::Mgmt::V2015_06_15::Models::PublicIPAddressListResult
        VpnClientConfiguration = Azure::Network::Mgmt::V2015_06_15::Models::VpnClientConfiguration
        NetworkInterfaceListResult = Azure::Network::Mgmt::V2015_06_15::Models::NetworkInterfaceListResult
        ExpressRouteCircuitPeeringListResult = Azure::Network::Mgmt::V2015_06_15::Models::ExpressRouteCircuitPeeringListResult
        ApplicationGatewayIPConfiguration = Azure::Network::Mgmt::V2015_06_15::Models::ApplicationGatewayIPConfiguration
        NetworkInterfaceDnsSettings = Azure::Network::Mgmt::V2015_06_15::Models::NetworkInterfaceDnsSettings
        Resource = Azure::Network::Mgmt::V2015_06_15::Models::Resource
        ApplicationGatewayFrontendIPConfiguration = Azure::Network::Mgmt::V2015_06_15::Models::ApplicationGatewayFrontendIPConfiguration
        PublicIPAddressDnsSettings = Azure::Network::Mgmt::V2015_06_15::Models::PublicIPAddressDnsSettings
        ApplicationGatewayHttpListener = Azure::Network::Mgmt::V2015_06_15::Models::ApplicationGatewayHttpListener
        SecurityRule = Azure::Network::Mgmt::V2015_06_15::Models::SecurityRule
        ApplicationGatewayProbe = Azure::Network::Mgmt::V2015_06_15::Models::ApplicationGatewayProbe
        InboundNatRule = Azure::Network::Mgmt::V2015_06_15::Models::InboundNatRule
        ApplicationGatewayRequestRoutingRule = Azure::Network::Mgmt::V2015_06_15::Models::ApplicationGatewayRequestRoutingRule
        ApplicationGatewayFrontendPort = Azure::Network::Mgmt::V2015_06_15::Models::ApplicationGatewayFrontendPort
        NetworkInterfaceIPConfiguration = Azure::Network::Mgmt::V2015_06_15::Models::NetworkInterfaceIPConfiguration
        ApplicationGateway = Azure::Network::Mgmt::V2015_06_15::Models::ApplicationGateway
        NetworkSecurityGroup = Azure::Network::Mgmt::V2015_06_15::Models::NetworkSecurityGroup
        Route = Azure::Network::Mgmt::V2015_06_15::Models::Route
        Subnet = Azure::Network::Mgmt::V2015_06_15::Models::Subnet
        PublicIPAddress = Azure::Network::Mgmt::V2015_06_15::Models::PublicIPAddress
        ApplicationGatewaySslCertificate = Azure::Network::Mgmt::V2015_06_15::Models::ApplicationGatewaySslCertificate
        ExpressRouteCircuitPeering = Azure::Network::Mgmt::V2015_06_15::Models::ExpressRouteCircuitPeering
        ExpressRouteCircuitAuthorization = Azure::Network::Mgmt::V2015_06_15::Models::ExpressRouteCircuitAuthorization
        ExpressRouteCircuit = Azure::Network::Mgmt::V2015_06_15::Models::ExpressRouteCircuit
        ApplicationGatewayBackendAddressPool = Azure::Network::Mgmt::V2015_06_15::Models::ApplicationGatewayBackendAddressPool
        FrontendIPConfiguration = Azure::Network::Mgmt::V2015_06_15::Models::FrontendIPConfiguration
        LoadBalancingRule = Azure::Network::Mgmt::V2015_06_15::Models::LoadBalancingRule
        Probe = Azure::Network::Mgmt::V2015_06_15::Models::Probe
        ApplicationGatewayUrlPathMap = Azure::Network::Mgmt::V2015_06_15::Models::ApplicationGatewayUrlPathMap
        OutboundNatRule = Azure::Network::Mgmt::V2015_06_15::Models::OutboundNatRule
        LoadBalancer = Azure::Network::Mgmt::V2015_06_15::Models::LoadBalancer
        BackendAddressPool = Azure::Network::Mgmt::V2015_06_15::Models::BackendAddressPool
        RouteTable = Azure::Network::Mgmt::V2015_06_15::Models::RouteTable
        IPConfiguration = Azure::Network::Mgmt::V2015_06_15::Models::IPConfiguration
        ExpressRouteServiceProvider = Azure::Network::Mgmt::V2015_06_15::Models::ExpressRouteServiceProvider
        SecurityRuleProtocol = Azure::Network::Mgmt::V2015_06_15::Models::SecurityRuleProtocol
        VirtualNetwork = Azure::Network::Mgmt::V2015_06_15::Models::VirtualNetwork
        ApplicationGatewayPathRule = Azure::Network::Mgmt::V2015_06_15::Models::ApplicationGatewayPathRule
        ApplicationGatewayBackendHttpSettings = Azure::Network::Mgmt::V2015_06_15::Models::ApplicationGatewayBackendHttpSettings
        VpnClientRevokedCertificate = Azure::Network::Mgmt::V2015_06_15::Models::VpnClientRevokedCertificate
        VirtualNetworkGatewayIPConfiguration = Azure::Network::Mgmt::V2015_06_15::Models::VirtualNetworkGatewayIPConfiguration
        VpnClientRootCertificate = Azure::Network::Mgmt::V2015_06_15::Models::VpnClientRootCertificate
        LocalNetworkGateway = Azure::Network::Mgmt::V2015_06_15::Models::LocalNetworkGateway
        NetworkInterface = Azure::Network::Mgmt::V2015_06_15::Models::NetworkInterface
        TransportProtocol = Azure::Network::Mgmt::V2015_06_15::Models::TransportProtocol
        VirtualNetworkGatewayConnection = Azure::Network::Mgmt::V2015_06_15::Models::VirtualNetworkGatewayConnection
        VirtualNetworkGateway = Azure::Network::Mgmt::V2015_06_15::Models::VirtualNetworkGateway
        ApplicationGatewaySkuName = Azure::Network::Mgmt::V2015_06_15::Models::ApplicationGatewaySkuName
        ApplicationGatewayTier = Azure::Network::Mgmt::V2015_06_15::Models::ApplicationGatewayTier
        InboundNatPool = Azure::Network::Mgmt::V2015_06_15::Models::InboundNatPool
        SecurityRuleDirection = Azure::Network::Mgmt::V2015_06_15::Models::SecurityRuleDirection
        ApplicationGatewayCookieBasedAffinity = Azure::Network::Mgmt::V2015_06_15::Models::ApplicationGatewayCookieBasedAffinity
        IPAllocationMethod = Azure::Network::Mgmt::V2015_06_15::Models::IPAllocationMethod
        ApplicationGatewayRequestRoutingRuleType = Azure::Network::Mgmt::V2015_06_15::Models::ApplicationGatewayRequestRoutingRuleType
        ApplicationGatewayProtocol = Azure::Network::Mgmt::V2015_06_15::Models::ApplicationGatewayProtocol
        RouteNextHopType = Azure::Network::Mgmt::V2015_06_15::Models::RouteNextHopType
        ApplicationGatewayOperationalState = Azure::Network::Mgmt::V2015_06_15::Models::ApplicationGatewayOperationalState
        SecurityRuleAccess = Azure::Network::Mgmt::V2015_06_15::Models::SecurityRuleAccess
        AuthorizationUseStatus = Azure::Network::Mgmt::V2015_06_15::Models::AuthorizationUseStatus
        ExpressRouteCircuitPeeringAdvertisedPublicPrefixState = Azure::Network::Mgmt::V2015_06_15::Models::ExpressRouteCircuitPeeringAdvertisedPublicPrefixState
        ExpressRouteCircuitPeeringType = Azure::Network::Mgmt::V2015_06_15::Models::ExpressRouteCircuitPeeringType
        ExpressRouteCircuitPeeringState = Azure::Network::Mgmt::V2015_06_15::Models::ExpressRouteCircuitPeeringState
        ExpressRouteCircuitSkuTier = Azure::Network::Mgmt::V2015_06_15::Models::ExpressRouteCircuitSkuTier
        ExpressRouteCircuitSkuFamily = Azure::Network::Mgmt::V2015_06_15::Models::ExpressRouteCircuitSkuFamily
        ServiceProviderProvisioningState = Azure::Network::Mgmt::V2015_06_15::Models::ServiceProviderProvisioningState
        LoadDistribution = Azure::Network::Mgmt::V2015_06_15::Models::LoadDistribution
        ProbeProtocol = Azure::Network::Mgmt::V2015_06_15::Models::ProbeProtocol
        NetworkOperationStatus = Azure::Network::Mgmt::V2015_06_15::Models::NetworkOperationStatus
        VirtualNetworkGatewayType = Azure::Network::Mgmt::V2015_06_15::Models::VirtualNetworkGatewayType
        VpnType = Azure::Network::Mgmt::V2015_06_15::Models::VpnType
        VirtualNetworkGatewaySkuName = Azure::Network::Mgmt::V2015_06_15::Models::VirtualNetworkGatewaySkuName
        VirtualNetworkGatewaySkuTier = Azure::Network::Mgmt::V2015_06_15::Models::VirtualNetworkGatewaySkuTier
        ProcessorArchitecture = Azure::Network::Mgmt::V2015_06_15::Models::ProcessorArchitecture
        VirtualNetworkGatewayConnectionStatus = Azure::Network::Mgmt::V2015_06_15::Models::VirtualNetworkGatewayConnectionStatus
        VirtualNetworkGatewayConnectionType = Azure::Network::Mgmt::V2015_06_15::Models::VirtualNetworkGatewayConnectionType
        ExpressRouteCircuitsStatsListResult = Azure::Network::Mgmt::V2015_06_15::Models::ExpressRouteCircuitsStatsListResult
        ConnectionSharedKeyResult = Azure::Network::Mgmt::V2015_06_15::Models::ConnectionSharedKeyResult
        Error = Azure::Network::Mgmt::V2015_06_15::Models::Error
        LoadBalancerListResult = Azure::Network::Mgmt::V2015_06_15::Models::LoadBalancerListResult
        ConnectionSharedKey = Azure::Network::Mgmt::V2015_06_15::Models::ConnectionSharedKey
        ConnectionResetSharedKey = Azure::Network::Mgmt::V2015_06_15::Models::ConnectionResetSharedKey
        VirtualNetworkGatewayListResult = Azure::Network::Mgmt::V2015_06_15::Models::VirtualNetworkGatewayListResult
        ErrorDetails = Azure::Network::Mgmt::V2015_06_15::Models::ErrorDetails
        AzureAsyncOperationResult = Azure::Network::Mgmt::V2015_06_15::Models::AzureAsyncOperationResult
        BgpSettings = Azure::Network::Mgmt::V2015_06_15::Models::BgpSettings
        VirtualNetworkGatewaySku = Azure::Network::Mgmt::V2015_06_15::Models::VirtualNetworkGatewaySku
        VirtualNetworkListResult = Azure::Network::Mgmt::V2015_06_15::Models::VirtualNetworkListResult
        SubResource = Azure::Network::Mgmt::V2015_06_15::Models::SubResource
        ApplicationGatewayListResult = Azure::Network::Mgmt::V2015_06_15::Models::ApplicationGatewayListResult
        SecurityRuleListResult = Azure::Network::Mgmt::V2015_06_15::Models::SecurityRuleListResult
        NetworkSecurityGroupListResult = Azure::Network::Mgmt::V2015_06_15::Models::NetworkSecurityGroupListResult
        AddressSpace = Azure::Network::Mgmt::V2015_06_15::Models::AddressSpace
        DnsNameAvailabilityResult = Azure::Network::Mgmt::V2015_06_15::Models::DnsNameAvailabilityResult
        AuthorizationListResult = Azure::Network::Mgmt::V2015_06_15::Models::AuthorizationListResult
        Usage = Azure::Network::Mgmt::V2015_06_15::Models::Usage
        ExpressRouteCircuitSku = Azure::Network::Mgmt::V2015_06_15::Models::ExpressRouteCircuitSku
        RouteListResult = Azure::Network::Mgmt::V2015_06_15::Models::RouteListResult
        ExpressRouteCircuitsArpTableListResult = Azure::Network::Mgmt::V2015_06_15::Models::ExpressRouteCircuitsArpTableListResult
        ExpressRouteCircuitsRoutesTableListResult = Azure::Network::Mgmt::V2015_06_15::Models::ExpressRouteCircuitsRoutesTableListResult
      end

      class NetworkManagementClass
        attr_reader :local_network_gateways, :express_route_circuit_authorizations, :express_route_circuit_peerings, :express_route_circuits, :express_route_service_providers, :load_balancers, :network_interfaces, :public_ipaddresses, :network_security_groups, :security_rules, :route_tables, :routes, :usages, :virtual_networks, :subnets, :virtual_network_gateways, :application_gateways, :virtual_network_gateway_connections, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Network::Mgmt::V2015_06_15::NetworkManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @local_network_gateways = @client_0.local_network_gateways
          @express_route_circuit_authorizations = @client_0.express_route_circuit_authorizations
          @express_route_circuit_peerings = @client_0.express_route_circuit_peerings
          @express_route_circuits = @client_0.express_route_circuits
          @express_route_service_providers = @client_0.express_route_service_providers
          @load_balancers = @client_0.load_balancers
          @network_interfaces = @client_0.network_interfaces
          @public_ipaddresses = @client_0.public_ipaddresses
          @network_security_groups = @client_0.network_security_groups
          @security_rules = @client_0.security_rules
          @route_tables = @client_0.route_tables
          @routes = @client_0.routes
          @usages = @client_0.usages
          @virtual_networks = @client_0.virtual_networks
          @subnets = @client_0.subnets
          @virtual_network_gateways = @client_0.virtual_network_gateways
          @application_gateways = @client_0.application_gateways
          @virtual_network_gateway_connections = @client_0.virtual_network_gateway_connections

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/V2017_03_09/Network/Mgmt"
          client.add_user_agent_information(profile_information)
        end

        def method_missing(method, *args)
          if @client_0.respond_to?method
            @client_0.send(method, *args)
          else
            super
          end
        end

        class ModelClasses
          def express_route_service_provider_bandwidths_offered
            Azure::Network::Mgmt::V2015_06_15::Models::ExpressRouteServiceProviderBandwidthsOffered
          end
          def express_route_service_provider_list_result
            Azure::Network::Mgmt::V2015_06_15::Models::ExpressRouteServiceProviderListResult
          end
          def virtual_network_gateway_connection_list_result
            Azure::Network::Mgmt::V2015_06_15::Models::VirtualNetworkGatewayConnectionListResult
          end
          def application_gateway_sku
            Azure::Network::Mgmt::V2015_06_15::Models::ApplicationGatewaySku
          end
          def dhcp_options
            Azure::Network::Mgmt::V2015_06_15::Models::DhcpOptions
          end
          def usages_list_result
            Azure::Network::Mgmt::V2015_06_15::Models::UsagesListResult
          end
          def express_route_circuit_peering_config
            Azure::Network::Mgmt::V2015_06_15::Models::ExpressRouteCircuitPeeringConfig
          end
          def express_route_circuit_service_provider_properties
            Azure::Network::Mgmt::V2015_06_15::Models::ExpressRouteCircuitServiceProviderProperties
          end
          def express_route_circuit_routes_table
            Azure::Network::Mgmt::V2015_06_15::Models::ExpressRouteCircuitRoutesTable
          end
          def express_route_circuit_list_result
            Azure::Network::Mgmt::V2015_06_15::Models::ExpressRouteCircuitListResult
          end
          def vpn_client_parameters
            Azure::Network::Mgmt::V2015_06_15::Models::VpnClientParameters
          end
          def express_route_circuit_stats
            Azure::Network::Mgmt::V2015_06_15::Models::ExpressRouteCircuitStats
          end
          def usage_name
            Azure::Network::Mgmt::V2015_06_15::Models::UsageName
          end
          def express_route_circuit_arp_table
            Azure::Network::Mgmt::V2015_06_15::Models::ExpressRouteCircuitArpTable
          end
          def route_table_list_result
            Azure::Network::Mgmt::V2015_06_15::Models::RouteTableListResult
          end
          def local_network_gateway_list_result
            Azure::Network::Mgmt::V2015_06_15::Models::LocalNetworkGatewayListResult
          end
          def subnet_list_result
            Azure::Network::Mgmt::V2015_06_15::Models::SubnetListResult
          end
          def application_gateway_backend_address
            Azure::Network::Mgmt::V2015_06_15::Models::ApplicationGatewayBackendAddress
          end
          def public_ipaddress_list_result
            Azure::Network::Mgmt::V2015_06_15::Models::PublicIPAddressListResult
          end
          def vpn_client_configuration
            Azure::Network::Mgmt::V2015_06_15::Models::VpnClientConfiguration
          end
          def network_interface_list_result
            Azure::Network::Mgmt::V2015_06_15::Models::NetworkInterfaceListResult
          end
          def express_route_circuit_peering_list_result
            Azure::Network::Mgmt::V2015_06_15::Models::ExpressRouteCircuitPeeringListResult
          end
          def application_gateway_ipconfiguration
            Azure::Network::Mgmt::V2015_06_15::Models::ApplicationGatewayIPConfiguration
          end
          def network_interface_dns_settings
            Azure::Network::Mgmt::V2015_06_15::Models::NetworkInterfaceDnsSettings
          end
          def resource
            Azure::Network::Mgmt::V2015_06_15::Models::Resource
          end
          def application_gateway_frontend_ipconfiguration
            Azure::Network::Mgmt::V2015_06_15::Models::ApplicationGatewayFrontendIPConfiguration
          end
          def public_ipaddress_dns_settings
            Azure::Network::Mgmt::V2015_06_15::Models::PublicIPAddressDnsSettings
          end
          def application_gateway_http_listener
            Azure::Network::Mgmt::V2015_06_15::Models::ApplicationGatewayHttpListener
          end
          def security_rule
            Azure::Network::Mgmt::V2015_06_15::Models::SecurityRule
          end
          def application_gateway_probe
            Azure::Network::Mgmt::V2015_06_15::Models::ApplicationGatewayProbe
          end
          def inbound_nat_rule
            Azure::Network::Mgmt::V2015_06_15::Models::InboundNatRule
          end
          def application_gateway_request_routing_rule
            Azure::Network::Mgmt::V2015_06_15::Models::ApplicationGatewayRequestRoutingRule
          end
          def application_gateway_frontend_port
            Azure::Network::Mgmt::V2015_06_15::Models::ApplicationGatewayFrontendPort
          end
          def network_interface_ipconfiguration
            Azure::Network::Mgmt::V2015_06_15::Models::NetworkInterfaceIPConfiguration
          end
          def application_gateway
            Azure::Network::Mgmt::V2015_06_15::Models::ApplicationGateway
          end
          def network_security_group
            Azure::Network::Mgmt::V2015_06_15::Models::NetworkSecurityGroup
          end
          def route
            Azure::Network::Mgmt::V2015_06_15::Models::Route
          end
          def subnet
            Azure::Network::Mgmt::V2015_06_15::Models::Subnet
          end
          def public_ipaddress
            Azure::Network::Mgmt::V2015_06_15::Models::PublicIPAddress
          end
          def application_gateway_ssl_certificate
            Azure::Network::Mgmt::V2015_06_15::Models::ApplicationGatewaySslCertificate
          end
          def express_route_circuit_peering
            Azure::Network::Mgmt::V2015_06_15::Models::ExpressRouteCircuitPeering
          end
          def express_route_circuit_authorization
            Azure::Network::Mgmt::V2015_06_15::Models::ExpressRouteCircuitAuthorization
          end
          def express_route_circuit
            Azure::Network::Mgmt::V2015_06_15::Models::ExpressRouteCircuit
          end
          def application_gateway_backend_address_pool
            Azure::Network::Mgmt::V2015_06_15::Models::ApplicationGatewayBackendAddressPool
          end
          def frontend_ipconfiguration
            Azure::Network::Mgmt::V2015_06_15::Models::FrontendIPConfiguration
          end
          def load_balancing_rule
            Azure::Network::Mgmt::V2015_06_15::Models::LoadBalancingRule
          end
          def probe
            Azure::Network::Mgmt::V2015_06_15::Models::Probe
          end
          def application_gateway_url_path_map
            Azure::Network::Mgmt::V2015_06_15::Models::ApplicationGatewayUrlPathMap
          end
          def outbound_nat_rule
            Azure::Network::Mgmt::V2015_06_15::Models::OutboundNatRule
          end
          def load_balancer
            Azure::Network::Mgmt::V2015_06_15::Models::LoadBalancer
          end
          def backend_address_pool
            Azure::Network::Mgmt::V2015_06_15::Models::BackendAddressPool
          end
          def route_table
            Azure::Network::Mgmt::V2015_06_15::Models::RouteTable
          end
          def ipconfiguration
            Azure::Network::Mgmt::V2015_06_15::Models::IPConfiguration
          end
          def express_route_service_provider
            Azure::Network::Mgmt::V2015_06_15::Models::ExpressRouteServiceProvider
          end
          def security_rule_protocol
            Azure::Network::Mgmt::V2015_06_15::Models::SecurityRuleProtocol
          end
          def virtual_network
            Azure::Network::Mgmt::V2015_06_15::Models::VirtualNetwork
          end
          def application_gateway_path_rule
            Azure::Network::Mgmt::V2015_06_15::Models::ApplicationGatewayPathRule
          end
          def application_gateway_backend_http_settings
            Azure::Network::Mgmt::V2015_06_15::Models::ApplicationGatewayBackendHttpSettings
          end
          def vpn_client_revoked_certificate
            Azure::Network::Mgmt::V2015_06_15::Models::VpnClientRevokedCertificate
          end
          def virtual_network_gateway_ipconfiguration
            Azure::Network::Mgmt::V2015_06_15::Models::VirtualNetworkGatewayIPConfiguration
          end
          def vpn_client_root_certificate
            Azure::Network::Mgmt::V2015_06_15::Models::VpnClientRootCertificate
          end
          def local_network_gateway
            Azure::Network::Mgmt::V2015_06_15::Models::LocalNetworkGateway
          end
          def network_interface
            Azure::Network::Mgmt::V2015_06_15::Models::NetworkInterface
          end
          def transport_protocol
            Azure::Network::Mgmt::V2015_06_15::Models::TransportProtocol
          end
          def virtual_network_gateway_connection
            Azure::Network::Mgmt::V2015_06_15::Models::VirtualNetworkGatewayConnection
          end
          def virtual_network_gateway
            Azure::Network::Mgmt::V2015_06_15::Models::VirtualNetworkGateway
          end
          def application_gateway_sku_name
            Azure::Network::Mgmt::V2015_06_15::Models::ApplicationGatewaySkuName
          end
          def application_gateway_tier
            Azure::Network::Mgmt::V2015_06_15::Models::ApplicationGatewayTier
          end
          def inbound_nat_pool
            Azure::Network::Mgmt::V2015_06_15::Models::InboundNatPool
          end
          def security_rule_direction
            Azure::Network::Mgmt::V2015_06_15::Models::SecurityRuleDirection
          end
          def application_gateway_cookie_based_affinity
            Azure::Network::Mgmt::V2015_06_15::Models::ApplicationGatewayCookieBasedAffinity
          end
          def ipallocation_method
            Azure::Network::Mgmt::V2015_06_15::Models::IPAllocationMethod
          end
          def application_gateway_request_routing_rule_type
            Azure::Network::Mgmt::V2015_06_15::Models::ApplicationGatewayRequestRoutingRuleType
          end
          def application_gateway_protocol
            Azure::Network::Mgmt::V2015_06_15::Models::ApplicationGatewayProtocol
          end
          def route_next_hop_type
            Azure::Network::Mgmt::V2015_06_15::Models::RouteNextHopType
          end
          def application_gateway_operational_state
            Azure::Network::Mgmt::V2015_06_15::Models::ApplicationGatewayOperationalState
          end
          def security_rule_access
            Azure::Network::Mgmt::V2015_06_15::Models::SecurityRuleAccess
          end
          def authorization_use_status
            Azure::Network::Mgmt::V2015_06_15::Models::AuthorizationUseStatus
          end
          def express_route_circuit_peering_advertised_public_prefix_state
            Azure::Network::Mgmt::V2015_06_15::Models::ExpressRouteCircuitPeeringAdvertisedPublicPrefixState
          end
          def express_route_circuit_peering_type
            Azure::Network::Mgmt::V2015_06_15::Models::ExpressRouteCircuitPeeringType
          end
          def express_route_circuit_peering_state
            Azure::Network::Mgmt::V2015_06_15::Models::ExpressRouteCircuitPeeringState
          end
          def express_route_circuit_sku_tier
            Azure::Network::Mgmt::V2015_06_15::Models::ExpressRouteCircuitSkuTier
          end
          def express_route_circuit_sku_family
            Azure::Network::Mgmt::V2015_06_15::Models::ExpressRouteCircuitSkuFamily
          end
          def service_provider_provisioning_state
            Azure::Network::Mgmt::V2015_06_15::Models::ServiceProviderProvisioningState
          end
          def load_distribution
            Azure::Network::Mgmt::V2015_06_15::Models::LoadDistribution
          end
          def probe_protocol
            Azure::Network::Mgmt::V2015_06_15::Models::ProbeProtocol
          end
          def network_operation_status
            Azure::Network::Mgmt::V2015_06_15::Models::NetworkOperationStatus
          end
          def virtual_network_gateway_type
            Azure::Network::Mgmt::V2015_06_15::Models::VirtualNetworkGatewayType
          end
          def vpn_type
            Azure::Network::Mgmt::V2015_06_15::Models::VpnType
          end
          def virtual_network_gateway_sku_name
            Azure::Network::Mgmt::V2015_06_15::Models::VirtualNetworkGatewaySkuName
          end
          def virtual_network_gateway_sku_tier
            Azure::Network::Mgmt::V2015_06_15::Models::VirtualNetworkGatewaySkuTier
          end
          def processor_architecture
            Azure::Network::Mgmt::V2015_06_15::Models::ProcessorArchitecture
          end
          def virtual_network_gateway_connection_status
            Azure::Network::Mgmt::V2015_06_15::Models::VirtualNetworkGatewayConnectionStatus
          end
          def virtual_network_gateway_connection_type
            Azure::Network::Mgmt::V2015_06_15::Models::VirtualNetworkGatewayConnectionType
          end
          def express_route_circuits_stats_list_result
            Azure::Network::Mgmt::V2015_06_15::Models::ExpressRouteCircuitsStatsListResult
          end
          def connection_shared_key_result
            Azure::Network::Mgmt::V2015_06_15::Models::ConnectionSharedKeyResult
          end
          def error
            Azure::Network::Mgmt::V2015_06_15::Models::Error
          end
          def load_balancer_list_result
            Azure::Network::Mgmt::V2015_06_15::Models::LoadBalancerListResult
          end
          def connection_shared_key
            Azure::Network::Mgmt::V2015_06_15::Models::ConnectionSharedKey
          end
          def connection_reset_shared_key
            Azure::Network::Mgmt::V2015_06_15::Models::ConnectionResetSharedKey
          end
          def virtual_network_gateway_list_result
            Azure::Network::Mgmt::V2015_06_15::Models::VirtualNetworkGatewayListResult
          end
          def error_details
            Azure::Network::Mgmt::V2015_06_15::Models::ErrorDetails
          end
          def azure_async_operation_result
            Azure::Network::Mgmt::V2015_06_15::Models::AzureAsyncOperationResult
          end
          def bgp_settings
            Azure::Network::Mgmt::V2015_06_15::Models::BgpSettings
          end
          def virtual_network_gateway_sku
            Azure::Network::Mgmt::V2015_06_15::Models::VirtualNetworkGatewaySku
          end
          def virtual_network_list_result
            Azure::Network::Mgmt::V2015_06_15::Models::VirtualNetworkListResult
          end
          def sub_resource
            Azure::Network::Mgmt::V2015_06_15::Models::SubResource
          end
          def application_gateway_list_result
            Azure::Network::Mgmt::V2015_06_15::Models::ApplicationGatewayListResult
          end
          def security_rule_list_result
            Azure::Network::Mgmt::V2015_06_15::Models::SecurityRuleListResult
          end
          def network_security_group_list_result
            Azure::Network::Mgmt::V2015_06_15::Models::NetworkSecurityGroupListResult
          end
          def address_space
            Azure::Network::Mgmt::V2015_06_15::Models::AddressSpace
          end
          def dns_name_availability_result
            Azure::Network::Mgmt::V2015_06_15::Models::DnsNameAvailabilityResult
          end
          def authorization_list_result
            Azure::Network::Mgmt::V2015_06_15::Models::AuthorizationListResult
          end
          def usage
            Azure::Network::Mgmt::V2015_06_15::Models::Usage
          end
          def express_route_circuit_sku
            Azure::Network::Mgmt::V2015_06_15::Models::ExpressRouteCircuitSku
          end
          def route_list_result
            Azure::Network::Mgmt::V2015_06_15::Models::RouteListResult
          end
          def express_route_circuits_arp_table_list_result
            Azure::Network::Mgmt::V2015_06_15::Models::ExpressRouteCircuitsArpTableListResult
          end
          def express_route_circuits_routes_table_list_result
            Azure::Network::Mgmt::V2015_06_15::Models::ExpressRouteCircuitsRoutesTableListResult
          end
        end
      end
    end
  end
end
