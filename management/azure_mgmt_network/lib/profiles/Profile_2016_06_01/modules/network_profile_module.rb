# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_network'


module Azure::Profiles::NetworkModule::Management::Profile_2016_06_01
  module Network
    ApplicationGateways = Azure::ARM::Network::Api_2016_06_01::ApplicationGateways
    ExpressRouteCircuitAuthorizations = Azure::ARM::Network::Api_2016_06_01::ExpressRouteCircuitAuthorizations
    ExpressRouteCircuitPeerings = Azure::ARM::Network::Api_2016_06_01::ExpressRouteCircuitPeerings
    ExpressRouteCircuits = Azure::ARM::Network::Api_2016_06_01::ExpressRouteCircuits
    ExpressRouteServiceProviders = Azure::ARM::Network::Api_2016_06_01::ExpressRouteServiceProviders
    LoadBalancers = Azure::ARM::Network::Api_2016_06_01::LoadBalancers
    LocalNetworkGateways = Azure::ARM::Network::Api_2016_06_01::LocalNetworkGateways
    NetworkInterfaces = Azure::ARM::Network::Api_2016_06_01::NetworkInterfaces
    NetworkSecurityGroups = Azure::ARM::Network::Api_2016_06_01::NetworkSecurityGroups
    PublicIPAddresses = Azure::ARM::Network::Api_2016_06_01::PublicIPAddresses
    RouteTables = Azure::ARM::Network::Api_2016_06_01::RouteTables
    Routes = Azure::ARM::Network::Api_2016_06_01::Routes
    SecurityRules = Azure::ARM::Network::Api_2016_06_01::SecurityRules
    Subnets = Azure::ARM::Network::Api_2016_06_01::Subnets
    VirtualNetworkPeerings = Azure::ARM::Network::Api_2016_06_01::VirtualNetworkPeerings
    Usages = Azure::ARM::Network::Api_2016_06_01::Usages
    VirtualNetworkGatewayConnections = Azure::ARM::Network::Api_2016_06_01::VirtualNetworkGatewayConnections
    VirtualNetworkGateways = Azure::ARM::Network::Api_2016_06_01::VirtualNetworkGateways
    VirtualNetworks = Azure::ARM::Network::Api_2016_06_01::VirtualNetworks

    module Models
      ExpressRouteCircuitsRoutesTableListResult = Azure::ARM::Network::Api_2016_06_01::Models::ExpressRouteCircuitsRoutesTableListResult
      ApplicationGatewaySku = Azure::ARM::Network::Api_2016_06_01::Models::ApplicationGatewaySku
      ExpressRouteCircuitRoutesTableSummary = Azure::ARM::Network::Api_2016_06_01::Models::ExpressRouteCircuitRoutesTableSummary
      ExpressRouteCircuitsRoutesTableSummaryListResult = Azure::ARM::Network::Api_2016_06_01::Models::ExpressRouteCircuitsRoutesTableSummaryListResult
      EffectiveNetworkSecurityGroup = Azure::ARM::Network::Api_2016_06_01::Models::EffectiveNetworkSecurityGroup
      AuthorizationListResult = Azure::ARM::Network::Api_2016_06_01::Models::AuthorizationListResult
      VirtualNetworkGatewayConnectionListResult = Azure::ARM::Network::Api_2016_06_01::Models::VirtualNetworkGatewayConnectionListResult
      ExpressRouteCircuitPeeringConfig = Azure::ARM::Network::Api_2016_06_01::Models::ExpressRouteCircuitPeeringConfig
      ApplicationGatewayBackendAddress = Azure::ARM::Network::Api_2016_06_01::Models::ApplicationGatewayBackendAddress
      ExpressRouteCircuitStats = Azure::ARM::Network::Api_2016_06_01::Models::ExpressRouteCircuitStats
      VpnClientConfiguration = Azure::ARM::Network::Api_2016_06_01::Models::VpnClientConfiguration
      EffectiveNetworkSecurityRule = Azure::ARM::Network::Api_2016_06_01::Models::EffectiveNetworkSecurityRule
      VirtualNetworkGatewayListResult = Azure::ARM::Network::Api_2016_06_01::Models::VirtualNetworkGatewayListResult
      ExpressRouteCircuitPeeringListResult = Azure::ARM::Network::Api_2016_06_01::Models::ExpressRouteCircuitPeeringListResult
      VirtualNetworkGatewaySku = Azure::ARM::Network::Api_2016_06_01::Models::VirtualNetworkGatewaySku
      ExpressRouteCircuitSku = Azure::ARM::Network::Api_2016_06_01::Models::ExpressRouteCircuitSku
      UsagesListResult = Azure::ARM::Network::Api_2016_06_01::Models::UsagesListResult
      ExpressRouteCircuitServiceProviderProperties = Azure::ARM::Network::Api_2016_06_01::Models::ExpressRouteCircuitServiceProviderProperties
      PublicIPAddressDnsSettings = Azure::ARM::Network::Api_2016_06_01::Models::PublicIPAddressDnsSettings
      EffectiveNetworkSecurityGroupAssociation = Azure::ARM::Network::Api_2016_06_01::Models::EffectiveNetworkSecurityGroupAssociation
      VirtualNetworkPeeringListResult = Azure::ARM::Network::Api_2016_06_01::Models::VirtualNetworkPeeringListResult
      ExpressRouteCircuitArpTable = Azure::ARM::Network::Api_2016_06_01::Models::ExpressRouteCircuitArpTable
      VirtualNetworkListResult = Azure::ARM::Network::Api_2016_06_01::Models::VirtualNetworkListResult
      ExpressRouteCircuitsArpTableListResult = Azure::ARM::Network::Api_2016_06_01::Models::ExpressRouteCircuitsArpTableListResult
      RouteListResult = Azure::ARM::Network::Api_2016_06_01::Models::RouteListResult
      ExpressRouteCircuitRoutesTable = Azure::ARM::Network::Api_2016_06_01::Models::ExpressRouteCircuitRoutesTable
      EffectiveRouteListResult = Azure::ARM::Network::Api_2016_06_01::Models::EffectiveRouteListResult
      ApplicationGatewaySslPolicy = Azure::ARM::Network::Api_2016_06_01::Models::ApplicationGatewaySslPolicy
      PublicIPAddressListResult = Azure::ARM::Network::Api_2016_06_01::Models::PublicIPAddressListResult
      NetworkSecurityGroupListResult = Azure::ARM::Network::Api_2016_06_01::Models::NetworkSecurityGroupListResult
      DnsNameAvailabilityResult = Azure::ARM::Network::Api_2016_06_01::Models::DnsNameAvailabilityResult
      ApplicationGatewayListResult = Azure::ARM::Network::Api_2016_06_01::Models::ApplicationGatewayListResult
      NetworkInterfaceListResult = Azure::ARM::Network::Api_2016_06_01::Models::NetworkInterfaceListResult
      VpnClientParameters = Azure::ARM::Network::Api_2016_06_01::Models::VpnClientParameters
      ExpressRouteCircuitListResult = Azure::ARM::Network::Api_2016_06_01::Models::ExpressRouteCircuitListResult
      ConnectionSharedKey = Azure::ARM::Network::Api_2016_06_01::Models::ConnectionSharedKey
      ExpressRouteServiceProviderBandwidthsOffered = Azure::ARM::Network::Api_2016_06_01::Models::ExpressRouteServiceProviderBandwidthsOffered
      DhcpOptions = Azure::ARM::Network::Api_2016_06_01::Models::DhcpOptions
      LocalNetworkGatewayListResult = Azure::ARM::Network::Api_2016_06_01::Models::LocalNetworkGatewayListResult
      UsageName = Azure::ARM::Network::Api_2016_06_01::Models::UsageName
      ExpressRouteServiceProviderListResult = Azure::ARM::Network::Api_2016_06_01::Models::ExpressRouteServiceProviderListResult
      SecurityRuleListResult = Azure::ARM::Network::Api_2016_06_01::Models::SecurityRuleListResult
      EffectiveRoute = Azure::ARM::Network::Api_2016_06_01::Models::EffectiveRoute
      ConnectionSharedKeyResult = Azure::ARM::Network::Api_2016_06_01::Models::ConnectionSharedKeyResult
      AzureAsyncOperationResult = Azure::ARM::Network::Api_2016_06_01::Models::AzureAsyncOperationResult
      NetworkInterfaceDnsSettings = Azure::ARM::Network::Api_2016_06_01::Models::NetworkInterfaceDnsSettings
      Error = Azure::ARM::Network::Api_2016_06_01::Models::Error
      SubnetListResult = Azure::ARM::Network::Api_2016_06_01::Models::SubnetListResult
      ErrorDetails = Azure::ARM::Network::Api_2016_06_01::Models::ErrorDetails
      EffectiveNetworkSecurityGroupListResult = Azure::ARM::Network::Api_2016_06_01::Models::EffectiveNetworkSecurityGroupListResult
      IPAddressAvailabilityResult = Azure::ARM::Network::Api_2016_06_01::Models::IPAddressAvailabilityResult
      Usage = Azure::ARM::Network::Api_2016_06_01::Models::Usage
      LoadBalancerListResult = Azure::ARM::Network::Api_2016_06_01::Models::LoadBalancerListResult
      ConnectionResetSharedKey = Azure::ARM::Network::Api_2016_06_01::Models::ConnectionResetSharedKey
      AddressSpace = Azure::ARM::Network::Api_2016_06_01::Models::AddressSpace
      RouteTableListResult = Azure::ARM::Network::Api_2016_06_01::Models::RouteTableListResult
      BgpSettings = Azure::ARM::Network::Api_2016_06_01::Models::BgpSettings
      ApplicationGatewayIPConfiguration = Azure::ARM::Network::Api_2016_06_01::Models::ApplicationGatewayIPConfiguration
      ApplicationGatewayAuthenticationCertificate = Azure::ARM::Network::Api_2016_06_01::Models::ApplicationGatewayAuthenticationCertificate
      ApplicationGatewaySslCertificate = Azure::ARM::Network::Api_2016_06_01::Models::ApplicationGatewaySslCertificate
      ApplicationGatewayFrontendIPConfiguration = Azure::ARM::Network::Api_2016_06_01::Models::ApplicationGatewayFrontendIPConfiguration
      ApplicationGatewayFrontendPort = Azure::ARM::Network::Api_2016_06_01::Models::ApplicationGatewayFrontendPort
      ApplicationGatewayBackendAddressPool = Azure::ARM::Network::Api_2016_06_01::Models::ApplicationGatewayBackendAddressPool
      BackendAddressPool = Azure::ARM::Network::Api_2016_06_01::Models::BackendAddressPool
      InboundNatRule = Azure::ARM::Network::Api_2016_06_01::Models::InboundNatRule
      SecurityRule = Azure::ARM::Network::Api_2016_06_01::Models::SecurityRule
      NetworkInterface = Azure::ARM::Network::Api_2016_06_01::Models::NetworkInterface
      NetworkSecurityGroup = Azure::ARM::Network::Api_2016_06_01::Models::NetworkSecurityGroup
      Route = Azure::ARM::Network::Api_2016_06_01::Models::Route
      RouteTable = Azure::ARM::Network::Api_2016_06_01::Models::RouteTable
      PublicIPAddress = Azure::ARM::Network::Api_2016_06_01::Models::PublicIPAddress
      IPConfiguration = Azure::ARM::Network::Api_2016_06_01::Models::IPConfiguration
      ResourceNavigationLink = Azure::ARM::Network::Api_2016_06_01::Models::ResourceNavigationLink
      Subnet = Azure::ARM::Network::Api_2016_06_01::Models::Subnet
      NetworkInterfaceIPConfiguration = Azure::ARM::Network::Api_2016_06_01::Models::NetworkInterfaceIPConfiguration
      ApplicationGatewayBackendHttpSettings = Azure::ARM::Network::Api_2016_06_01::Models::ApplicationGatewayBackendHttpSettings
      ApplicationGatewayHttpListener = Azure::ARM::Network::Api_2016_06_01::Models::ApplicationGatewayHttpListener
      ApplicationGatewayPathRule = Azure::ARM::Network::Api_2016_06_01::Models::ApplicationGatewayPathRule
      ApplicationGatewayProbe = Azure::ARM::Network::Api_2016_06_01::Models::ApplicationGatewayProbe
      ApplicationGatewayRequestRoutingRule = Azure::ARM::Network::Api_2016_06_01::Models::ApplicationGatewayRequestRoutingRule
      ApplicationGatewayUrlPathMap = Azure::ARM::Network::Api_2016_06_01::Models::ApplicationGatewayUrlPathMap
      ApplicationGateway = Azure::ARM::Network::Api_2016_06_01::Models::ApplicationGateway
      ExpressRouteCircuitAuthorization = Azure::ARM::Network::Api_2016_06_01::Models::ExpressRouteCircuitAuthorization
      ExpressRouteCircuitPeering = Azure::ARM::Network::Api_2016_06_01::Models::ExpressRouteCircuitPeering
      ExpressRouteCircuit = Azure::ARM::Network::Api_2016_06_01::Models::ExpressRouteCircuit
      ExpressRouteServiceProvider = Azure::ARM::Network::Api_2016_06_01::Models::ExpressRouteServiceProvider
      FrontendIPConfiguration = Azure::ARM::Network::Api_2016_06_01::Models::FrontendIPConfiguration
      LoadBalancingRule = Azure::ARM::Network::Api_2016_06_01::Models::LoadBalancingRule
      Probe = Azure::ARM::Network::Api_2016_06_01::Models::Probe
      InboundNatPool = Azure::ARM::Network::Api_2016_06_01::Models::InboundNatPool
      OutboundNatRule = Azure::ARM::Network::Api_2016_06_01::Models::OutboundNatRule
      LoadBalancer = Azure::ARM::Network::Api_2016_06_01::Models::LoadBalancer
      LocalNetworkGateway = Azure::ARM::Network::Api_2016_06_01::Models::LocalNetworkGateway
      VirtualNetworkPeering = Azure::ARM::Network::Api_2016_06_01::Models::VirtualNetworkPeering
      VirtualNetworkGatewayIPConfiguration = Azure::ARM::Network::Api_2016_06_01::Models::VirtualNetworkGatewayIPConfiguration
      VpnClientRootCertificate = Azure::ARM::Network::Api_2016_06_01::Models::VpnClientRootCertificate
      VpnClientRevokedCertificate = Azure::ARM::Network::Api_2016_06_01::Models::VpnClientRevokedCertificate
      VirtualNetworkGateway = Azure::ARM::Network::Api_2016_06_01::Models::VirtualNetworkGateway
      VirtualNetworkGatewayConnection = Azure::ARM::Network::Api_2016_06_01::Models::VirtualNetworkGatewayConnection
      VirtualNetwork = Azure::ARM::Network::Api_2016_06_01::Models::VirtualNetwork
      ApplicationGatewaySkuName = Azure::ARM::Network::Api_2016_06_01::Models::ApplicationGatewaySkuName
      ApplicationGatewayTier = Azure::ARM::Network::Api_2016_06_01::Models::ApplicationGatewayTier
      ApplicationGatewaySslProtocol = Azure::ARM::Network::Api_2016_06_01::Models::ApplicationGatewaySslProtocol
      IPAllocationMethod = Azure::ARM::Network::Api_2016_06_01::Models::IPAllocationMethod
      TransportProtocol = Azure::ARM::Network::Api_2016_06_01::Models::TransportProtocol
      IPVersion = Azure::ARM::Network::Api_2016_06_01::Models::IPVersion
      SecurityRuleProtocol = Azure::ARM::Network::Api_2016_06_01::Models::SecurityRuleProtocol
      SecurityRuleAccess = Azure::ARM::Network::Api_2016_06_01::Models::SecurityRuleAccess
      SecurityRuleDirection = Azure::ARM::Network::Api_2016_06_01::Models::SecurityRuleDirection
      RouteNextHopType = Azure::ARM::Network::Api_2016_06_01::Models::RouteNextHopType
      ApplicationGatewayProtocol = Azure::ARM::Network::Api_2016_06_01::Models::ApplicationGatewayProtocol
      ApplicationGatewayCookieBasedAffinity = Azure::ARM::Network::Api_2016_06_01::Models::ApplicationGatewayCookieBasedAffinity
      ApplicationGatewayRequestRoutingRuleType = Azure::ARM::Network::Api_2016_06_01::Models::ApplicationGatewayRequestRoutingRuleType
      ApplicationGatewayOperationalState = Azure::ARM::Network::Api_2016_06_01::Models::ApplicationGatewayOperationalState
      AuthorizationUseStatus = Azure::ARM::Network::Api_2016_06_01::Models::AuthorizationUseStatus
      ExpressRouteCircuitPeeringAdvertisedPublicPrefixState = Azure::ARM::Network::Api_2016_06_01::Models::ExpressRouteCircuitPeeringAdvertisedPublicPrefixState
      ExpressRouteCircuitPeeringType = Azure::ARM::Network::Api_2016_06_01::Models::ExpressRouteCircuitPeeringType
      ExpressRouteCircuitPeeringState = Azure::ARM::Network::Api_2016_06_01::Models::ExpressRouteCircuitPeeringState
      ExpressRouteCircuitSkuTier = Azure::ARM::Network::Api_2016_06_01::Models::ExpressRouteCircuitSkuTier
      ExpressRouteCircuitSkuFamily = Azure::ARM::Network::Api_2016_06_01::Models::ExpressRouteCircuitSkuFamily
      ServiceProviderProvisioningState = Azure::ARM::Network::Api_2016_06_01::Models::ServiceProviderProvisioningState
      LoadDistribution = Azure::ARM::Network::Api_2016_06_01::Models::LoadDistribution
      ProbeProtocol = Azure::ARM::Network::Api_2016_06_01::Models::ProbeProtocol
      EffectiveRouteSource = Azure::ARM::Network::Api_2016_06_01::Models::EffectiveRouteSource
      EffectiveRouteState = Azure::ARM::Network::Api_2016_06_01::Models::EffectiveRouteState
      VirtualNetworkPeeringState = Azure::ARM::Network::Api_2016_06_01::Models::VirtualNetworkPeeringState
      VirtualNetworkGatewayType = Azure::ARM::Network::Api_2016_06_01::Models::VirtualNetworkGatewayType
      VpnType = Azure::ARM::Network::Api_2016_06_01::Models::VpnType
      VirtualNetworkGatewaySkuName = Azure::ARM::Network::Api_2016_06_01::Models::VirtualNetworkGatewaySkuName
      VirtualNetworkGatewaySkuTier = Azure::ARM::Network::Api_2016_06_01::Models::VirtualNetworkGatewaySkuTier
      ProcessorArchitecture = Azure::ARM::Network::Api_2016_06_01::Models::ProcessorArchitecture
      VirtualNetworkGatewayConnectionType = Azure::ARM::Network::Api_2016_06_01::Models::VirtualNetworkGatewayConnectionType
      VirtualNetworkGatewayConnectionStatus = Azure::ARM::Network::Api_2016_06_01::Models::VirtualNetworkGatewayConnectionStatus
      NetworkOperationStatus = Azure::ARM::Network::Api_2016_06_01::Models::NetworkOperationStatus
    end

    #
    # Network
    #
    class NetworkClass
      attr_accessor :application_gateways, :express_route_circuit_authorizations, :express_route_circuit_peerings, :express_route_circuits, :express_route_service_providers, :load_balancers, :local_network_gateways, :network_interfaces, :network_security_groups, :public_ipaddresses, :route_tables, :routes, :security_rules, :subnets, :virtual_network_peerings, :usages, :virtual_network_gateway_connections, :virtual_network_gateways, :virtual_networks, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::Network::Api_2016_06_01::NetworkManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.application_gateways = Azure::ARM::Network::Api_2016_06_01::ApplicationGateways.new(client)
        self.express_route_circuit_authorizations = Azure::ARM::Network::Api_2016_06_01::ExpressRouteCircuitAuthorizations.new(client)
        self.express_route_circuit_peerings = Azure::ARM::Network::Api_2016_06_01::ExpressRouteCircuitPeerings.new(client)
        self.express_route_circuits = Azure::ARM::Network::Api_2016_06_01::ExpressRouteCircuits.new(client)
        self.express_route_service_providers = Azure::ARM::Network::Api_2016_06_01::ExpressRouteServiceProviders.new(client)
        self.load_balancers = Azure::ARM::Network::Api_2016_06_01::LoadBalancers.new(client)
        self.local_network_gateways = Azure::ARM::Network::Api_2016_06_01::LocalNetworkGateways.new(client)
        self.network_interfaces = Azure::ARM::Network::Api_2016_06_01::NetworkInterfaces.new(client)
        self.network_security_groups = Azure::ARM::Network::Api_2016_06_01::NetworkSecurityGroups.new(client)
        self.public_ipaddresses = Azure::ARM::Network::Api_2016_06_01::PublicIPAddresses.new(client)
        self.route_tables = Azure::ARM::Network::Api_2016_06_01::RouteTables.new(client)
        self.routes = Azure::ARM::Network::Api_2016_06_01::Routes.new(client)
        self.security_rules = Azure::ARM::Network::Api_2016_06_01::SecurityRules.new(client)
        self.subnets = Azure::ARM::Network::Api_2016_06_01::Subnets.new(client)
        self.virtual_network_peerings = Azure::ARM::Network::Api_2016_06_01::VirtualNetworkPeerings.new(client)
        self.usages = Azure::ARM::Network::Api_2016_06_01::Usages.new(client)
        self.virtual_network_gateway_connections = Azure::ARM::Network::Api_2016_06_01::VirtualNetworkGatewayConnections.new(client)
        self.virtual_network_gateways = Azure::ARM::Network::Api_2016_06_01::VirtualNetworkGateways.new(client)
        self.virtual_networks = Azure::ARM::Network::Api_2016_06_01::VirtualNetworks.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2016-06-01'
            client = Azure::ARM::Network::Api_2016_06_01::NetworkManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def express_route_circuits_routes_table_list_result
          Azure::ARM::Network::Api_2016_06_01::Models::ExpressRouteCircuitsRoutesTableListResult
        end
        def application_gateway_sku
          Azure::ARM::Network::Api_2016_06_01::Models::ApplicationGatewaySku
        end
        def express_route_circuit_routes_table_summary
          Azure::ARM::Network::Api_2016_06_01::Models::ExpressRouteCircuitRoutesTableSummary
        end
        def express_route_circuits_routes_table_summary_list_result
          Azure::ARM::Network::Api_2016_06_01::Models::ExpressRouteCircuitsRoutesTableSummaryListResult
        end
        def effective_network_security_group
          Azure::ARM::Network::Api_2016_06_01::Models::EffectiveNetworkSecurityGroup
        end
        def authorization_list_result
          Azure::ARM::Network::Api_2016_06_01::Models::AuthorizationListResult
        end
        def virtual_network_gateway_connection_list_result
          Azure::ARM::Network::Api_2016_06_01::Models::VirtualNetworkGatewayConnectionListResult
        end
        def express_route_circuit_peering_config
          Azure::ARM::Network::Api_2016_06_01::Models::ExpressRouteCircuitPeeringConfig
        end
        def application_gateway_backend_address
          Azure::ARM::Network::Api_2016_06_01::Models::ApplicationGatewayBackendAddress
        end
        def express_route_circuit_stats
          Azure::ARM::Network::Api_2016_06_01::Models::ExpressRouteCircuitStats
        end
        def vpn_client_configuration
          Azure::ARM::Network::Api_2016_06_01::Models::VpnClientConfiguration
        end
        def effective_network_security_rule
          Azure::ARM::Network::Api_2016_06_01::Models::EffectiveNetworkSecurityRule
        end
        def virtual_network_gateway_list_result
          Azure::ARM::Network::Api_2016_06_01::Models::VirtualNetworkGatewayListResult
        end
        def express_route_circuit_peering_list_result
          Azure::ARM::Network::Api_2016_06_01::Models::ExpressRouteCircuitPeeringListResult
        end
        def virtual_network_gateway_sku
          Azure::ARM::Network::Api_2016_06_01::Models::VirtualNetworkGatewaySku
        end
        def express_route_circuit_sku
          Azure::ARM::Network::Api_2016_06_01::Models::ExpressRouteCircuitSku
        end
        def usages_list_result
          Azure::ARM::Network::Api_2016_06_01::Models::UsagesListResult
        end
        def express_route_circuit_service_provider_properties
          Azure::ARM::Network::Api_2016_06_01::Models::ExpressRouteCircuitServiceProviderProperties
        end
        def public_ipaddress_dns_settings
          Azure::ARM::Network::Api_2016_06_01::Models::PublicIPAddressDnsSettings
        end
        def effective_network_security_group_association
          Azure::ARM::Network::Api_2016_06_01::Models::EffectiveNetworkSecurityGroupAssociation
        end
        def virtual_network_peering_list_result
          Azure::ARM::Network::Api_2016_06_01::Models::VirtualNetworkPeeringListResult
        end
        def express_route_circuit_arp_table
          Azure::ARM::Network::Api_2016_06_01::Models::ExpressRouteCircuitArpTable
        end
        def virtual_network_list_result
          Azure::ARM::Network::Api_2016_06_01::Models::VirtualNetworkListResult
        end
        def express_route_circuits_arp_table_list_result
          Azure::ARM::Network::Api_2016_06_01::Models::ExpressRouteCircuitsArpTableListResult
        end
        def route_list_result
          Azure::ARM::Network::Api_2016_06_01::Models::RouteListResult
        end
        def express_route_circuit_routes_table
          Azure::ARM::Network::Api_2016_06_01::Models::ExpressRouteCircuitRoutesTable
        end
        def effective_route_list_result
          Azure::ARM::Network::Api_2016_06_01::Models::EffectiveRouteListResult
        end
        def application_gateway_ssl_policy
          Azure::ARM::Network::Api_2016_06_01::Models::ApplicationGatewaySslPolicy
        end
        def public_ipaddress_list_result
          Azure::ARM::Network::Api_2016_06_01::Models::PublicIPAddressListResult
        end
        def network_security_group_list_result
          Azure::ARM::Network::Api_2016_06_01::Models::NetworkSecurityGroupListResult
        end
        def dns_name_availability_result
          Azure::ARM::Network::Api_2016_06_01::Models::DnsNameAvailabilityResult
        end
        def application_gateway_list_result
          Azure::ARM::Network::Api_2016_06_01::Models::ApplicationGatewayListResult
        end
        def network_interface_list_result
          Azure::ARM::Network::Api_2016_06_01::Models::NetworkInterfaceListResult
        end
        def vpn_client_parameters
          Azure::ARM::Network::Api_2016_06_01::Models::VpnClientParameters
        end
        def express_route_circuit_list_result
          Azure::ARM::Network::Api_2016_06_01::Models::ExpressRouteCircuitListResult
        end
        def connection_shared_key
          Azure::ARM::Network::Api_2016_06_01::Models::ConnectionSharedKey
        end
        def express_route_service_provider_bandwidths_offered
          Azure::ARM::Network::Api_2016_06_01::Models::ExpressRouteServiceProviderBandwidthsOffered
        end
        def dhcp_options
          Azure::ARM::Network::Api_2016_06_01::Models::DhcpOptions
        end
        def local_network_gateway_list_result
          Azure::ARM::Network::Api_2016_06_01::Models::LocalNetworkGatewayListResult
        end
        def usage_name
          Azure::ARM::Network::Api_2016_06_01::Models::UsageName
        end
        def express_route_service_provider_list_result
          Azure::ARM::Network::Api_2016_06_01::Models::ExpressRouteServiceProviderListResult
        end
        def security_rule_list_result
          Azure::ARM::Network::Api_2016_06_01::Models::SecurityRuleListResult
        end
        def effective_route
          Azure::ARM::Network::Api_2016_06_01::Models::EffectiveRoute
        end
        def connection_shared_key_result
          Azure::ARM::Network::Api_2016_06_01::Models::ConnectionSharedKeyResult
        end
        def azure_async_operation_result
          Azure::ARM::Network::Api_2016_06_01::Models::AzureAsyncOperationResult
        end
        def network_interface_dns_settings
          Azure::ARM::Network::Api_2016_06_01::Models::NetworkInterfaceDnsSettings
        end
        def error
          Azure::ARM::Network::Api_2016_06_01::Models::Error
        end
        def subnet_list_result
          Azure::ARM::Network::Api_2016_06_01::Models::SubnetListResult
        end
        def error_details
          Azure::ARM::Network::Api_2016_06_01::Models::ErrorDetails
        end
        def effective_network_security_group_list_result
          Azure::ARM::Network::Api_2016_06_01::Models::EffectiveNetworkSecurityGroupListResult
        end
        def ipaddress_availability_result
          Azure::ARM::Network::Api_2016_06_01::Models::IPAddressAvailabilityResult
        end
        def usage
          Azure::ARM::Network::Api_2016_06_01::Models::Usage
        end
        def load_balancer_list_result
          Azure::ARM::Network::Api_2016_06_01::Models::LoadBalancerListResult
        end
        def connection_reset_shared_key
          Azure::ARM::Network::Api_2016_06_01::Models::ConnectionResetSharedKey
        end
        def address_space
          Azure::ARM::Network::Api_2016_06_01::Models::AddressSpace
        end
        def route_table_list_result
          Azure::ARM::Network::Api_2016_06_01::Models::RouteTableListResult
        end
        def bgp_settings
          Azure::ARM::Network::Api_2016_06_01::Models::BgpSettings
        end
        def application_gateway_ipconfiguration
          Azure::ARM::Network::Api_2016_06_01::Models::ApplicationGatewayIPConfiguration
        end
        def application_gateway_authentication_certificate
          Azure::ARM::Network::Api_2016_06_01::Models::ApplicationGatewayAuthenticationCertificate
        end
        def application_gateway_ssl_certificate
          Azure::ARM::Network::Api_2016_06_01::Models::ApplicationGatewaySslCertificate
        end
        def application_gateway_frontend_ipconfiguration
          Azure::ARM::Network::Api_2016_06_01::Models::ApplicationGatewayFrontendIPConfiguration
        end
        def application_gateway_frontend_port
          Azure::ARM::Network::Api_2016_06_01::Models::ApplicationGatewayFrontendPort
        end
        def application_gateway_backend_address_pool
          Azure::ARM::Network::Api_2016_06_01::Models::ApplicationGatewayBackendAddressPool
        end
        def backend_address_pool
          Azure::ARM::Network::Api_2016_06_01::Models::BackendAddressPool
        end
        def inbound_nat_rule
          Azure::ARM::Network::Api_2016_06_01::Models::InboundNatRule
        end
        def security_rule
          Azure::ARM::Network::Api_2016_06_01::Models::SecurityRule
        end
        def network_interface
          Azure::ARM::Network::Api_2016_06_01::Models::NetworkInterface
        end
        def network_security_group
          Azure::ARM::Network::Api_2016_06_01::Models::NetworkSecurityGroup
        end
        def route
          Azure::ARM::Network::Api_2016_06_01::Models::Route
        end
        def route_table
          Azure::ARM::Network::Api_2016_06_01::Models::RouteTable
        end
        def public_ipaddress
          Azure::ARM::Network::Api_2016_06_01::Models::PublicIPAddress
        end
        def ipconfiguration
          Azure::ARM::Network::Api_2016_06_01::Models::IPConfiguration
        end
        def resource_navigation_link
          Azure::ARM::Network::Api_2016_06_01::Models::ResourceNavigationLink
        end
        def subnet
          Azure::ARM::Network::Api_2016_06_01::Models::Subnet
        end
        def network_interface_ipconfiguration
          Azure::ARM::Network::Api_2016_06_01::Models::NetworkInterfaceIPConfiguration
        end
        def application_gateway_backend_http_settings
          Azure::ARM::Network::Api_2016_06_01::Models::ApplicationGatewayBackendHttpSettings
        end
        def application_gateway_http_listener
          Azure::ARM::Network::Api_2016_06_01::Models::ApplicationGatewayHttpListener
        end
        def application_gateway_path_rule
          Azure::ARM::Network::Api_2016_06_01::Models::ApplicationGatewayPathRule
        end
        def application_gateway_probe
          Azure::ARM::Network::Api_2016_06_01::Models::ApplicationGatewayProbe
        end
        def application_gateway_request_routing_rule
          Azure::ARM::Network::Api_2016_06_01::Models::ApplicationGatewayRequestRoutingRule
        end
        def application_gateway_url_path_map
          Azure::ARM::Network::Api_2016_06_01::Models::ApplicationGatewayUrlPathMap
        end
        def application_gateway
          Azure::ARM::Network::Api_2016_06_01::Models::ApplicationGateway
        end
        def express_route_circuit_authorization
          Azure::ARM::Network::Api_2016_06_01::Models::ExpressRouteCircuitAuthorization
        end
        def express_route_circuit_peering
          Azure::ARM::Network::Api_2016_06_01::Models::ExpressRouteCircuitPeering
        end
        def express_route_circuit
          Azure::ARM::Network::Api_2016_06_01::Models::ExpressRouteCircuit
        end
        def express_route_service_provider
          Azure::ARM::Network::Api_2016_06_01::Models::ExpressRouteServiceProvider
        end
        def frontend_ipconfiguration
          Azure::ARM::Network::Api_2016_06_01::Models::FrontendIPConfiguration
        end
        def load_balancing_rule
          Azure::ARM::Network::Api_2016_06_01::Models::LoadBalancingRule
        end
        def probe
          Azure::ARM::Network::Api_2016_06_01::Models::Probe
        end
        def inbound_nat_pool
          Azure::ARM::Network::Api_2016_06_01::Models::InboundNatPool
        end
        def outbound_nat_rule
          Azure::ARM::Network::Api_2016_06_01::Models::OutboundNatRule
        end
        def load_balancer
          Azure::ARM::Network::Api_2016_06_01::Models::LoadBalancer
        end
        def local_network_gateway
          Azure::ARM::Network::Api_2016_06_01::Models::LocalNetworkGateway
        end
        def virtual_network_peering
          Azure::ARM::Network::Api_2016_06_01::Models::VirtualNetworkPeering
        end
        def virtual_network_gateway_ipconfiguration
          Azure::ARM::Network::Api_2016_06_01::Models::VirtualNetworkGatewayIPConfiguration
        end
        def vpn_client_root_certificate
          Azure::ARM::Network::Api_2016_06_01::Models::VpnClientRootCertificate
        end
        def vpn_client_revoked_certificate
          Azure::ARM::Network::Api_2016_06_01::Models::VpnClientRevokedCertificate
        end
        def virtual_network_gateway
          Azure::ARM::Network::Api_2016_06_01::Models::VirtualNetworkGateway
        end
        def virtual_network_gateway_connection
          Azure::ARM::Network::Api_2016_06_01::Models::VirtualNetworkGatewayConnection
        end
        def virtual_network
          Azure::ARM::Network::Api_2016_06_01::Models::VirtualNetwork
        end
        def application_gateway_sku_name
          Azure::ARM::Network::Api_2016_06_01::Models::ApplicationGatewaySkuName
        end
        def application_gateway_tier
          Azure::ARM::Network::Api_2016_06_01::Models::ApplicationGatewayTier
        end
        def application_gateway_ssl_protocol
          Azure::ARM::Network::Api_2016_06_01::Models::ApplicationGatewaySslProtocol
        end
        def ipallocation_method
          Azure::ARM::Network::Api_2016_06_01::Models::IPAllocationMethod
        end
        def transport_protocol
          Azure::ARM::Network::Api_2016_06_01::Models::TransportProtocol
        end
        def ipversion
          Azure::ARM::Network::Api_2016_06_01::Models::IPVersion
        end
        def security_rule_protocol
          Azure::ARM::Network::Api_2016_06_01::Models::SecurityRuleProtocol
        end
        def security_rule_access
          Azure::ARM::Network::Api_2016_06_01::Models::SecurityRuleAccess
        end
        def security_rule_direction
          Azure::ARM::Network::Api_2016_06_01::Models::SecurityRuleDirection
        end
        def route_next_hop_type
          Azure::ARM::Network::Api_2016_06_01::Models::RouteNextHopType
        end
        def application_gateway_protocol
          Azure::ARM::Network::Api_2016_06_01::Models::ApplicationGatewayProtocol
        end
        def application_gateway_cookie_based_affinity
          Azure::ARM::Network::Api_2016_06_01::Models::ApplicationGatewayCookieBasedAffinity
        end
        def application_gateway_request_routing_rule_type
          Azure::ARM::Network::Api_2016_06_01::Models::ApplicationGatewayRequestRoutingRuleType
        end
        def application_gateway_operational_state
          Azure::ARM::Network::Api_2016_06_01::Models::ApplicationGatewayOperationalState
        end
        def authorization_use_status
          Azure::ARM::Network::Api_2016_06_01::Models::AuthorizationUseStatus
        end
        def express_route_circuit_peering_advertised_public_prefix_state
          Azure::ARM::Network::Api_2016_06_01::Models::ExpressRouteCircuitPeeringAdvertisedPublicPrefixState
        end
        def express_route_circuit_peering_type
          Azure::ARM::Network::Api_2016_06_01::Models::ExpressRouteCircuitPeeringType
        end
        def express_route_circuit_peering_state
          Azure::ARM::Network::Api_2016_06_01::Models::ExpressRouteCircuitPeeringState
        end
        def express_route_circuit_sku_tier
          Azure::ARM::Network::Api_2016_06_01::Models::ExpressRouteCircuitSkuTier
        end
        def express_route_circuit_sku_family
          Azure::ARM::Network::Api_2016_06_01::Models::ExpressRouteCircuitSkuFamily
        end
        def service_provider_provisioning_state
          Azure::ARM::Network::Api_2016_06_01::Models::ServiceProviderProvisioningState
        end
        def load_distribution
          Azure::ARM::Network::Api_2016_06_01::Models::LoadDistribution
        end
        def probe_protocol
          Azure::ARM::Network::Api_2016_06_01::Models::ProbeProtocol
        end
        def effective_route_source
          Azure::ARM::Network::Api_2016_06_01::Models::EffectiveRouteSource
        end
        def effective_route_state
          Azure::ARM::Network::Api_2016_06_01::Models::EffectiveRouteState
        end
        def virtual_network_peering_state
          Azure::ARM::Network::Api_2016_06_01::Models::VirtualNetworkPeeringState
        end
        def virtual_network_gateway_type
          Azure::ARM::Network::Api_2016_06_01::Models::VirtualNetworkGatewayType
        end
        def vpn_type
          Azure::ARM::Network::Api_2016_06_01::Models::VpnType
        end
        def virtual_network_gateway_sku_name
          Azure::ARM::Network::Api_2016_06_01::Models::VirtualNetworkGatewaySkuName
        end
        def virtual_network_gateway_sku_tier
          Azure::ARM::Network::Api_2016_06_01::Models::VirtualNetworkGatewaySkuTier
        end
        def processor_architecture
          Azure::ARM::Network::Api_2016_06_01::Models::ProcessorArchitecture
        end
        def virtual_network_gateway_connection_type
          Azure::ARM::Network::Api_2016_06_01::Models::VirtualNetworkGatewayConnectionType
        end
        def virtual_network_gateway_connection_status
          Azure::ARM::Network::Api_2016_06_01::Models::VirtualNetworkGatewayConnectionStatus
        end
        def network_operation_status
          Azure::ARM::Network::Api_2016_06_01::Models::NetworkOperationStatus
        end
      end
    end
  end
end
