# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_network'


module Azure::Profiles::NetworkModule::Management::Profile_2016_12_01
  module Network
    NetworkInterfaces = Azure::ARM::Network::Api_2016_12_01::NetworkInterfaces
    ApplicationGateways = Azure::ARM::Network::Api_2016_12_01::ApplicationGateways
    ExpressRouteCircuitAuthorizations = Azure::ARM::Network::Api_2016_12_01::ExpressRouteCircuitAuthorizations
    ExpressRouteCircuitPeerings = Azure::ARM::Network::Api_2016_12_01::ExpressRouteCircuitPeerings
    ExpressRouteCircuits = Azure::ARM::Network::Api_2016_12_01::ExpressRouteCircuits
    ExpressRouteServiceProviders = Azure::ARM::Network::Api_2016_12_01::ExpressRouteServiceProviders
    LoadBalancers = Azure::ARM::Network::Api_2016_12_01::LoadBalancers
    NetworkSecurityGroups = Azure::ARM::Network::Api_2016_12_01::NetworkSecurityGroups
    SecurityRules = Azure::ARM::Network::Api_2016_12_01::SecurityRules
    NetworkWatchers = Azure::ARM::Network::Api_2016_12_01::NetworkWatchers
    PacketCaptures = Azure::ARM::Network::Api_2016_12_01::PacketCaptures
    PublicIPAddresses = Azure::ARM::Network::Api_2016_12_01::PublicIPAddresses
    RouteFilters = Azure::ARM::Network::Api_2016_12_01::RouteFilters
    RouteFilterRules = Azure::ARM::Network::Api_2016_12_01::RouteFilterRules
    RouteTables = Azure::ARM::Network::Api_2016_12_01::RouteTables
    Routes = Azure::ARM::Network::Api_2016_12_01::Routes
    BgpServiceCommunities = Azure::ARM::Network::Api_2016_12_01::BgpServiceCommunities
    Usages = Azure::ARM::Network::Api_2016_12_01::Usages
    VirtualNetworks = Azure::ARM::Network::Api_2016_12_01::VirtualNetworks
    Subnets = Azure::ARM::Network::Api_2016_12_01::Subnets
    VirtualNetworkPeerings = Azure::ARM::Network::Api_2016_12_01::VirtualNetworkPeerings
    VirtualNetworkGateways = Azure::ARM::Network::Api_2016_12_01::VirtualNetworkGateways
    VirtualNetworkGatewayConnections = Azure::ARM::Network::Api_2016_12_01::VirtualNetworkGatewayConnections
    LocalNetworkGateways = Azure::ARM::Network::Api_2016_12_01::LocalNetworkGateways

    module Models
      EffectiveRoute = Azure::ARM::Network::Api_2016_12_01::Models::EffectiveRoute
      EffectiveRouteListResult = Azure::ARM::Network::Api_2016_12_01::Models::EffectiveRouteListResult
      SecurityRuleListResult = Azure::ARM::Network::Api_2016_12_01::Models::SecurityRuleListResult
      ExpressRouteCircuitRoutesTable = Azure::ARM::Network::Api_2016_12_01::Models::ExpressRouteCircuitRoutesTable
      ExpressRouteCircuitsRoutesTableListResult = Azure::ARM::Network::Api_2016_12_01::Models::ExpressRouteCircuitsRoutesTableListResult
      ApplicationGatewayBackendAddress = Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewayBackendAddress
      ExpressRouteCircuitRoutesTableSummary = Azure::ARM::Network::Api_2016_12_01::Models::ExpressRouteCircuitRoutesTableSummary
      ConnectionResetSharedKey = Azure::ARM::Network::Api_2016_12_01::Models::ConnectionResetSharedKey
      ExpressRouteCircuitsRoutesTableSummaryListResult = Azure::ARM::Network::Api_2016_12_01::Models::ExpressRouteCircuitsRoutesTableSummaryListResult
      TunnelConnectionHealth = Azure::ARM::Network::Api_2016_12_01::Models::TunnelConnectionHealth
      ExpressRouteCircuitListResult = Azure::ARM::Network::Api_2016_12_01::Models::ExpressRouteCircuitListResult
      BgpPeerStatusListResult = Azure::ARM::Network::Api_2016_12_01::Models::BgpPeerStatusListResult
      ExpressRouteServiceProviderBandwidthsOffered = Azure::ARM::Network::Api_2016_12_01::Models::ExpressRouteServiceProviderBandwidthsOffered
      VpnClientParameters = Azure::ARM::Network::Api_2016_12_01::Models::VpnClientParameters
      RouteFilterListResult = Azure::ARM::Network::Api_2016_12_01::Models::RouteFilterListResult
      BgpPeerStatus = Azure::ARM::Network::Api_2016_12_01::Models::BgpPeerStatus
      ExpressRouteServiceProviderListResult = Azure::ARM::Network::Api_2016_12_01::Models::ExpressRouteServiceProviderListResult
      ApplicationGatewayConnectionDraining = Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewayConnectionDraining
      PublicIPAddressListResult = Azure::ARM::Network::Api_2016_12_01::Models::PublicIPAddressListResult
      ApplicationGatewayBackendHealthServer = Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewayBackendHealthServer
      FlowLogInformation = Azure::ARM::Network::Api_2016_12_01::Models::FlowLogInformation
      ApplicationGatewayBackendHealthPool = Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewayBackendHealthPool
      FlowLogStatusParameters = Azure::ARM::Network::Api_2016_12_01::Models::FlowLogStatusParameters
      ApplicationGatewaySku = Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewaySku
      RetentionPolicyParameters = Azure::ARM::Network::Api_2016_12_01::Models::RetentionPolicyParameters
      VpnClientConfiguration = Azure::ARM::Network::Api_2016_12_01::Models::VpnClientConfiguration
      TroubleshootingResult = Azure::ARM::Network::Api_2016_12_01::Models::TroubleshootingResult
      IPAddressAvailabilityResult = Azure::ARM::Network::Api_2016_12_01::Models::IPAddressAvailabilityResult
      TroubleshootingDetails = Azure::ARM::Network::Api_2016_12_01::Models::TroubleshootingDetails
      DhcpOptions = Azure::ARM::Network::Api_2016_12_01::Models::DhcpOptions
      LoadBalancerListResult = Azure::ARM::Network::Api_2016_12_01::Models::LoadBalancerListResult
      VirtualNetworkPeeringListResult = Azure::ARM::Network::Api_2016_12_01::Models::VirtualNetworkPeeringListResult
      ErrorDetails = Azure::ARM::Network::Api_2016_12_01::Models::ErrorDetails
      UsagesListResult = Azure::ARM::Network::Api_2016_12_01::Models::UsagesListResult
      Error = Azure::ARM::Network::Api_2016_12_01::Models::Error
      ApplicationGatewayWebApplicationFirewallConfiguration = Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewayWebApplicationFirewallConfiguration
      AzureAsyncOperationResult = Azure::ARM::Network::Api_2016_12_01::Models::AzureAsyncOperationResult
      ApplicationGatewayListResult = Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewayListResult
      EffectiveNetworkSecurityGroupAssociation = Azure::ARM::Network::Api_2016_12_01::Models::EffectiveNetworkSecurityGroupAssociation
      BgpServiceCommunityListResult = Azure::ARM::Network::Api_2016_12_01::Models::BgpServiceCommunityListResult
      EffectiveNetworkSecurityRule = Azure::ARM::Network::Api_2016_12_01::Models::EffectiveNetworkSecurityRule
      ExpressRouteCircuitPeeringConfig = Azure::ARM::Network::Api_2016_12_01::Models::ExpressRouteCircuitPeeringConfig
      EffectiveNetworkSecurityGroup = Azure::ARM::Network::Api_2016_12_01::Models::EffectiveNetworkSecurityGroup
      BGPCommunity = Azure::ARM::Network::Api_2016_12_01::Models::BGPCommunity
      EffectiveNetworkSecurityGroupListResult = Azure::ARM::Network::Api_2016_12_01::Models::EffectiveNetworkSecurityGroupListResult
      RouteTableListResult = Azure::ARM::Network::Api_2016_12_01::Models::RouteTableListResult
      NetworkInterfaceDnsSettings = Azure::ARM::Network::Api_2016_12_01::Models::NetworkInterfaceDnsSettings
      ExpressRouteCircuitSku = Azure::ARM::Network::Api_2016_12_01::Models::ExpressRouteCircuitSku
      PublicIPAddressDnsSettings = Azure::ARM::Network::Api_2016_12_01::Models::PublicIPAddressDnsSettings
      RouteFilterRuleListResult = Azure::ARM::Network::Api_2016_12_01::Models::RouteFilterRuleListResult
      TroubleshootingRecommendedActions = Azure::ARM::Network::Api_2016_12_01::Models::TroubleshootingRecommendedActions
      ExpressRouteCircuitsArpTableListResult = Azure::ARM::Network::Api_2016_12_01::Models::ExpressRouteCircuitsArpTableListResult
      NetworkSecurityGroupListResult = Azure::ARM::Network::Api_2016_12_01::Models::NetworkSecurityGroupListResult
      ConnectionSharedKey = Azure::ARM::Network::Api_2016_12_01::Models::ConnectionSharedKey
      QueryTroubleshootingParameters = Azure::ARM::Network::Api_2016_12_01::Models::QueryTroubleshootingParameters
      GatewayRouteListResult = Azure::ARM::Network::Api_2016_12_01::Models::GatewayRouteListResult
      NetworkWatcherListResult = Azure::ARM::Network::Api_2016_12_01::Models::NetworkWatcherListResult
      GatewayRoute = Azure::ARM::Network::Api_2016_12_01::Models::GatewayRoute
      TopologyParameters = Azure::ARM::Network::Api_2016_12_01::Models::TopologyParameters
      BgpSettings = Azure::ARM::Network::Api_2016_12_01::Models::BgpSettings
      TopologyAssociation = Azure::ARM::Network::Api_2016_12_01::Models::TopologyAssociation
      ApplicationGatewayBackendHealth = Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewayBackendHealth
      TopologyResource = Azure::ARM::Network::Api_2016_12_01::Models::TopologyResource
      VirtualNetworkGatewaySku = Azure::ARM::Network::Api_2016_12_01::Models::VirtualNetworkGatewaySku
      Topology = Azure::ARM::Network::Api_2016_12_01::Models::Topology
      AddressSpace = Azure::ARM::Network::Api_2016_12_01::Models::AddressSpace
      VerificationIPFlowParameters = Azure::ARM::Network::Api_2016_12_01::Models::VerificationIPFlowParameters
      Usage = Azure::ARM::Network::Api_2016_12_01::Models::Usage
      VerificationIPFlowResult = Azure::ARM::Network::Api_2016_12_01::Models::VerificationIPFlowResult
      DnsNameAvailabilityResult = Azure::ARM::Network::Api_2016_12_01::Models::DnsNameAvailabilityResult
      NextHopParameters = Azure::ARM::Network::Api_2016_12_01::Models::NextHopParameters
      ExpressRouteCircuitStats = Azure::ARM::Network::Api_2016_12_01::Models::ExpressRouteCircuitStats
      NextHopResult = Azure::ARM::Network::Api_2016_12_01::Models::NextHopResult
      ExpressRouteCircuitPeeringListResult = Azure::ARM::Network::Api_2016_12_01::Models::ExpressRouteCircuitPeeringListResult
      SecurityGroupViewParameters = Azure::ARM::Network::Api_2016_12_01::Models::SecurityGroupViewParameters
      ExpressRouteCircuitArpTable = Azure::ARM::Network::Api_2016_12_01::Models::ExpressRouteCircuitArpTable
      NetworkInterfaceAssociation = Azure::ARM::Network::Api_2016_12_01::Models::NetworkInterfaceAssociation
      VirtualNetworkGatewayConnectionListResult = Azure::ARM::Network::Api_2016_12_01::Models::VirtualNetworkGatewayConnectionListResult
      SubnetAssociation = Azure::ARM::Network::Api_2016_12_01::Models::SubnetAssociation
      NetworkInterfaceListResult = Azure::ARM::Network::Api_2016_12_01::Models::NetworkInterfaceListResult
      SecurityRuleAssociations = Azure::ARM::Network::Api_2016_12_01::Models::SecurityRuleAssociations
      ApplicationGatewaySslPolicy = Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewaySslPolicy
      SecurityGroupNetworkInterface = Azure::ARM::Network::Api_2016_12_01::Models::SecurityGroupNetworkInterface
      SubnetListResult = Azure::ARM::Network::Api_2016_12_01::Models::SubnetListResult
      SecurityGroupViewResult = Azure::ARM::Network::Api_2016_12_01::Models::SecurityGroupViewResult
      AuthorizationListResult = Azure::ARM::Network::Api_2016_12_01::Models::AuthorizationListResult
      PacketCaptureStorageLocation = Azure::ARM::Network::Api_2016_12_01::Models::PacketCaptureStorageLocation
      ExpressRouteCircuitServiceProviderProperties = Azure::ARM::Network::Api_2016_12_01::Models::ExpressRouteCircuitServiceProviderProperties
      PacketCaptureFilter = Azure::ARM::Network::Api_2016_12_01::Models::PacketCaptureFilter
      VirtualNetworkGatewayListResult = Azure::ARM::Network::Api_2016_12_01::Models::VirtualNetworkGatewayListResult
      PacketCaptureParameters = Azure::ARM::Network::Api_2016_12_01::Models::PacketCaptureParameters
      VirtualNetworkListResult = Azure::ARM::Network::Api_2016_12_01::Models::VirtualNetworkListResult
      PacketCapture = Azure::ARM::Network::Api_2016_12_01::Models::PacketCapture
      RouteListResult = Azure::ARM::Network::Api_2016_12_01::Models::RouteListResult
      PacketCaptureResult = Azure::ARM::Network::Api_2016_12_01::Models::PacketCaptureResult
      ApplicationGatewayBackendHealthHttpSettings = Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewayBackendHealthHttpSettings
      PacketCaptureListResult = Azure::ARM::Network::Api_2016_12_01::Models::PacketCaptureListResult
      LocalNetworkGatewayListResult = Azure::ARM::Network::Api_2016_12_01::Models::LocalNetworkGatewayListResult
      PacketCaptureQueryStatusResult = Azure::ARM::Network::Api_2016_12_01::Models::PacketCaptureQueryStatusResult
      UsageName = Azure::ARM::Network::Api_2016_12_01::Models::UsageName
      TroubleshootingParameters = Azure::ARM::Network::Api_2016_12_01::Models::TroubleshootingParameters
      ResourceNavigationLink = Azure::ARM::Network::Api_2016_12_01::Models::ResourceNavigationLink
      Route = Azure::ARM::Network::Api_2016_12_01::Models::Route
      SecurityRule = Azure::ARM::Network::Api_2016_12_01::Models::SecurityRule
      ApplicationGatewayBackendAddressPool = Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewayBackendAddressPool
      BackendAddressPool = Azure::ARM::Network::Api_2016_12_01::Models::BackendAddressPool
      InboundNatRule = Azure::ARM::Network::Api_2016_12_01::Models::InboundNatRule
      IPConfiguration = Azure::ARM::Network::Api_2016_12_01::Models::IPConfiguration
      PublicIPAddress = Azure::ARM::Network::Api_2016_12_01::Models::PublicIPAddress
      NetworkInterfaceIPConfiguration = Azure::ARM::Network::Api_2016_12_01::Models::NetworkInterfaceIPConfiguration
      NetworkInterface = Azure::ARM::Network::Api_2016_12_01::Models::NetworkInterface
      NetworkSecurityGroup = Azure::ARM::Network::Api_2016_12_01::Models::NetworkSecurityGroup
      RouteTable = Azure::ARM::Network::Api_2016_12_01::Models::RouteTable
      Subnet = Azure::ARM::Network::Api_2016_12_01::Models::Subnet
      ApplicationGatewayBackendHttpSettings = Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewayBackendHttpSettings
      ApplicationGatewayIPConfiguration = Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewayIPConfiguration
      ApplicationGatewayAuthenticationCertificate = Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewayAuthenticationCertificate
      ApplicationGatewaySslCertificate = Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewaySslCertificate
      ApplicationGatewayFrontendIPConfiguration = Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewayFrontendIPConfiguration
      ApplicationGatewayFrontendPort = Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewayFrontendPort
      ApplicationGatewayHttpListener = Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewayHttpListener
      ApplicationGatewayPathRule = Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewayPathRule
      ApplicationGatewayProbe = Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewayProbe
      ApplicationGatewayRequestRoutingRule = Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewayRequestRoutingRule
      ApplicationGatewayUrlPathMap = Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewayUrlPathMap
      ApplicationGateway = Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGateway
      ExpressRouteCircuitAuthorization = Azure::ARM::Network::Api_2016_12_01::Models::ExpressRouteCircuitAuthorization
      RouteFilterRule = Azure::ARM::Network::Api_2016_12_01::Models::RouteFilterRule
      ExpressRouteCircuitPeering = Azure::ARM::Network::Api_2016_12_01::Models::ExpressRouteCircuitPeering
      RouteFilter = Azure::ARM::Network::Api_2016_12_01::Models::RouteFilter
      ExpressRouteCircuit = Azure::ARM::Network::Api_2016_12_01::Models::ExpressRouteCircuit
      ExpressRouteServiceProvider = Azure::ARM::Network::Api_2016_12_01::Models::ExpressRouteServiceProvider
      FrontendIPConfiguration = Azure::ARM::Network::Api_2016_12_01::Models::FrontendIPConfiguration
      LoadBalancingRule = Azure::ARM::Network::Api_2016_12_01::Models::LoadBalancingRule
      Probe = Azure::ARM::Network::Api_2016_12_01::Models::Probe
      InboundNatPool = Azure::ARM::Network::Api_2016_12_01::Models::InboundNatPool
      OutboundNatRule = Azure::ARM::Network::Api_2016_12_01::Models::OutboundNatRule
      LoadBalancer = Azure::ARM::Network::Api_2016_12_01::Models::LoadBalancer
      NetworkWatcher = Azure::ARM::Network::Api_2016_12_01::Models::NetworkWatcher
      PatchRouteFilterRule = Azure::ARM::Network::Api_2016_12_01::Models::PatchRouteFilterRule
      PatchRouteFilter = Azure::ARM::Network::Api_2016_12_01::Models::PatchRouteFilter
      BgpServiceCommunity = Azure::ARM::Network::Api_2016_12_01::Models::BgpServiceCommunity
      VirtualNetworkPeering = Azure::ARM::Network::Api_2016_12_01::Models::VirtualNetworkPeering
      VirtualNetwork = Azure::ARM::Network::Api_2016_12_01::Models::VirtualNetwork
      VirtualNetworkGatewayIPConfiguration = Azure::ARM::Network::Api_2016_12_01::Models::VirtualNetworkGatewayIPConfiguration
      VpnClientRootCertificate = Azure::ARM::Network::Api_2016_12_01::Models::VpnClientRootCertificate
      VpnClientRevokedCertificate = Azure::ARM::Network::Api_2016_12_01::Models::VpnClientRevokedCertificate
      VirtualNetworkGateway = Azure::ARM::Network::Api_2016_12_01::Models::VirtualNetworkGateway
      LocalNetworkGateway = Azure::ARM::Network::Api_2016_12_01::Models::LocalNetworkGateway
      VirtualNetworkGatewayConnection = Azure::ARM::Network::Api_2016_12_01::Models::VirtualNetworkGatewayConnection
      RouteNextHopType = Azure::ARM::Network::Api_2016_12_01::Models::RouteNextHopType
      SecurityRuleProtocol = Azure::ARM::Network::Api_2016_12_01::Models::SecurityRuleProtocol
      SecurityRuleAccess = Azure::ARM::Network::Api_2016_12_01::Models::SecurityRuleAccess
      SecurityRuleDirection = Azure::ARM::Network::Api_2016_12_01::Models::SecurityRuleDirection
      TransportProtocol = Azure::ARM::Network::Api_2016_12_01::Models::TransportProtocol
      IPAllocationMethod = Azure::ARM::Network::Api_2016_12_01::Models::IPAllocationMethod
      IPVersion = Azure::ARM::Network::Api_2016_12_01::Models::IPVersion
      ApplicationGatewayProtocol = Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewayProtocol
      ApplicationGatewayCookieBasedAffinity = Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewayCookieBasedAffinity
      ApplicationGatewayBackendHealthServerHealth = Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewayBackendHealthServerHealth
      ApplicationGatewaySkuName = Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewaySkuName
      ApplicationGatewayTier = Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewayTier
      ApplicationGatewaySslProtocol = Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewaySslProtocol
      ApplicationGatewayRequestRoutingRuleType = Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewayRequestRoutingRuleType
      ApplicationGatewayOperationalState = Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewayOperationalState
      ApplicationGatewayFirewallMode = Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewayFirewallMode
      AuthorizationUseStatus = Azure::ARM::Network::Api_2016_12_01::Models::AuthorizationUseStatus
      ExpressRouteCircuitPeeringAdvertisedPublicPrefixState = Azure::ARM::Network::Api_2016_12_01::Models::ExpressRouteCircuitPeeringAdvertisedPublicPrefixState
      ExpressRouteCircuitPeeringType = Azure::ARM::Network::Api_2016_12_01::Models::ExpressRouteCircuitPeeringType
      ExpressRouteCircuitPeeringState = Azure::ARM::Network::Api_2016_12_01::Models::ExpressRouteCircuitPeeringState
      Access = Azure::ARM::Network::Api_2016_12_01::Models::Access
      ExpressRouteCircuitSkuTier = Azure::ARM::Network::Api_2016_12_01::Models::ExpressRouteCircuitSkuTier
      ExpressRouteCircuitSkuFamily = Azure::ARM::Network::Api_2016_12_01::Models::ExpressRouteCircuitSkuFamily
      ServiceProviderProvisioningState = Azure::ARM::Network::Api_2016_12_01::Models::ServiceProviderProvisioningState
      LoadDistribution = Azure::ARM::Network::Api_2016_12_01::Models::LoadDistribution
      ProbeProtocol = Azure::ARM::Network::Api_2016_12_01::Models::ProbeProtocol
      NetworkOperationStatus = Azure::ARM::Network::Api_2016_12_01::Models::NetworkOperationStatus
      EffectiveRouteSource = Azure::ARM::Network::Api_2016_12_01::Models::EffectiveRouteSource
      EffectiveRouteState = Azure::ARM::Network::Api_2016_12_01::Models::EffectiveRouteState
      ProvisioningState = Azure::ARM::Network::Api_2016_12_01::Models::ProvisioningState
      AssociationType = Azure::ARM::Network::Api_2016_12_01::Models::AssociationType
      Direction = Azure::ARM::Network::Api_2016_12_01::Models::Direction
      Protocol = Azure::ARM::Network::Api_2016_12_01::Models::Protocol
      NextHopType = Azure::ARM::Network::Api_2016_12_01::Models::NextHopType
      PcProtocol = Azure::ARM::Network::Api_2016_12_01::Models::PcProtocol
      PcStatus = Azure::ARM::Network::Api_2016_12_01::Models::PcStatus
      PcError = Azure::ARM::Network::Api_2016_12_01::Models::PcError
      VirtualNetworkPeeringState = Azure::ARM::Network::Api_2016_12_01::Models::VirtualNetworkPeeringState
      VirtualNetworkGatewayType = Azure::ARM::Network::Api_2016_12_01::Models::VirtualNetworkGatewayType
      VpnType = Azure::ARM::Network::Api_2016_12_01::Models::VpnType
      VirtualNetworkGatewaySkuName = Azure::ARM::Network::Api_2016_12_01::Models::VirtualNetworkGatewaySkuName
      VirtualNetworkGatewaySkuTier = Azure::ARM::Network::Api_2016_12_01::Models::VirtualNetworkGatewaySkuTier
      BgpPeerState = Azure::ARM::Network::Api_2016_12_01::Models::BgpPeerState
      ProcessorArchitecture = Azure::ARM::Network::Api_2016_12_01::Models::ProcessorArchitecture
      VirtualNetworkGatewayConnectionStatus = Azure::ARM::Network::Api_2016_12_01::Models::VirtualNetworkGatewayConnectionStatus
      VirtualNetworkGatewayConnectionType = Azure::ARM::Network::Api_2016_12_01::Models::VirtualNetworkGatewayConnectionType
    end

    #
    # Network
    #
    class NetworkClass
      attr_accessor :network_interfaces, :application_gateways, :express_route_circuit_authorizations, :express_route_circuit_peerings, :express_route_circuits, :express_route_service_providers, :load_balancers, :network_security_groups, :security_rules, :network_watchers, :packet_captures, :public_ipaddresses, :route_filters, :route_filter_rules, :route_tables, :routes, :bgp_service_communities, :usages, :virtual_networks, :subnets, :virtual_network_peerings, :virtual_network_gateways, :virtual_network_gateway_connections, :local_network_gateways, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::Network::Api_2016_12_01::NetworkManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.network_interfaces = Azure::ARM::Network::Api_2016_12_01::NetworkInterfaces.new(client)
        self.application_gateways = Azure::ARM::Network::Api_2016_12_01::ApplicationGateways.new(client)
        self.express_route_circuit_authorizations = Azure::ARM::Network::Api_2016_12_01::ExpressRouteCircuitAuthorizations.new(client)
        self.express_route_circuit_peerings = Azure::ARM::Network::Api_2016_12_01::ExpressRouteCircuitPeerings.new(client)
        self.express_route_circuits = Azure::ARM::Network::Api_2016_12_01::ExpressRouteCircuits.new(client)
        self.express_route_service_providers = Azure::ARM::Network::Api_2016_12_01::ExpressRouteServiceProviders.new(client)
        self.load_balancers = Azure::ARM::Network::Api_2016_12_01::LoadBalancers.new(client)
        self.network_security_groups = Azure::ARM::Network::Api_2016_12_01::NetworkSecurityGroups.new(client)
        self.security_rules = Azure::ARM::Network::Api_2016_12_01::SecurityRules.new(client)
        self.network_watchers = Azure::ARM::Network::Api_2016_12_01::NetworkWatchers.new(client)
        self.packet_captures = Azure::ARM::Network::Api_2016_12_01::PacketCaptures.new(client)
        self.public_ipaddresses = Azure::ARM::Network::Api_2016_12_01::PublicIPAddresses.new(client)
        self.route_filters = Azure::ARM::Network::Api_2016_12_01::RouteFilters.new(client)
        self.route_filter_rules = Azure::ARM::Network::Api_2016_12_01::RouteFilterRules.new(client)
        self.route_tables = Azure::ARM::Network::Api_2016_12_01::RouteTables.new(client)
        self.routes = Azure::ARM::Network::Api_2016_12_01::Routes.new(client)
        self.bgp_service_communities = Azure::ARM::Network::Api_2016_12_01::BgpServiceCommunities.new(client)
        self.usages = Azure::ARM::Network::Api_2016_12_01::Usages.new(client)
        self.virtual_networks = Azure::ARM::Network::Api_2016_12_01::VirtualNetworks.new(client)
        self.subnets = Azure::ARM::Network::Api_2016_12_01::Subnets.new(client)
        self.virtual_network_peerings = Azure::ARM::Network::Api_2016_12_01::VirtualNetworkPeerings.new(client)
        self.virtual_network_gateways = Azure::ARM::Network::Api_2016_12_01::VirtualNetworkGateways.new(client)
        self.virtual_network_gateway_connections = Azure::ARM::Network::Api_2016_12_01::VirtualNetworkGatewayConnections.new(client)
        self.local_network_gateways = Azure::ARM::Network::Api_2016_12_01::LocalNetworkGateways.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2016-12-01'
            client = Azure::ARM::Network::Api_2016_12_01::NetworkManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def effective_route
          Azure::ARM::Network::Api_2016_12_01::Models::EffectiveRoute
        end
        def effective_route_list_result
          Azure::ARM::Network::Api_2016_12_01::Models::EffectiveRouteListResult
        end
        def security_rule_list_result
          Azure::ARM::Network::Api_2016_12_01::Models::SecurityRuleListResult
        end
        def express_route_circuit_routes_table
          Azure::ARM::Network::Api_2016_12_01::Models::ExpressRouteCircuitRoutesTable
        end
        def express_route_circuits_routes_table_list_result
          Azure::ARM::Network::Api_2016_12_01::Models::ExpressRouteCircuitsRoutesTableListResult
        end
        def application_gateway_backend_address
          Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewayBackendAddress
        end
        def express_route_circuit_routes_table_summary
          Azure::ARM::Network::Api_2016_12_01::Models::ExpressRouteCircuitRoutesTableSummary
        end
        def connection_reset_shared_key
          Azure::ARM::Network::Api_2016_12_01::Models::ConnectionResetSharedKey
        end
        def express_route_circuits_routes_table_summary_list_result
          Azure::ARM::Network::Api_2016_12_01::Models::ExpressRouteCircuitsRoutesTableSummaryListResult
        end
        def tunnel_connection_health
          Azure::ARM::Network::Api_2016_12_01::Models::TunnelConnectionHealth
        end
        def express_route_circuit_list_result
          Azure::ARM::Network::Api_2016_12_01::Models::ExpressRouteCircuitListResult
        end
        def bgp_peer_status_list_result
          Azure::ARM::Network::Api_2016_12_01::Models::BgpPeerStatusListResult
        end
        def express_route_service_provider_bandwidths_offered
          Azure::ARM::Network::Api_2016_12_01::Models::ExpressRouteServiceProviderBandwidthsOffered
        end
        def vpn_client_parameters
          Azure::ARM::Network::Api_2016_12_01::Models::VpnClientParameters
        end
        def route_filter_list_result
          Azure::ARM::Network::Api_2016_12_01::Models::RouteFilterListResult
        end
        def bgp_peer_status
          Azure::ARM::Network::Api_2016_12_01::Models::BgpPeerStatus
        end
        def express_route_service_provider_list_result
          Azure::ARM::Network::Api_2016_12_01::Models::ExpressRouteServiceProviderListResult
        end
        def application_gateway_connection_draining
          Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewayConnectionDraining
        end
        def public_ipaddress_list_result
          Azure::ARM::Network::Api_2016_12_01::Models::PublicIPAddressListResult
        end
        def application_gateway_backend_health_server
          Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewayBackendHealthServer
        end
        def flow_log_information
          Azure::ARM::Network::Api_2016_12_01::Models::FlowLogInformation
        end
        def application_gateway_backend_health_pool
          Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewayBackendHealthPool
        end
        def flow_log_status_parameters
          Azure::ARM::Network::Api_2016_12_01::Models::FlowLogStatusParameters
        end
        def application_gateway_sku
          Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewaySku
        end
        def retention_policy_parameters
          Azure::ARM::Network::Api_2016_12_01::Models::RetentionPolicyParameters
        end
        def vpn_client_configuration
          Azure::ARM::Network::Api_2016_12_01::Models::VpnClientConfiguration
        end
        def troubleshooting_result
          Azure::ARM::Network::Api_2016_12_01::Models::TroubleshootingResult
        end
        def ipaddress_availability_result
          Azure::ARM::Network::Api_2016_12_01::Models::IPAddressAvailabilityResult
        end
        def troubleshooting_details
          Azure::ARM::Network::Api_2016_12_01::Models::TroubleshootingDetails
        end
        def dhcp_options
          Azure::ARM::Network::Api_2016_12_01::Models::DhcpOptions
        end
        def load_balancer_list_result
          Azure::ARM::Network::Api_2016_12_01::Models::LoadBalancerListResult
        end
        def virtual_network_peering_list_result
          Azure::ARM::Network::Api_2016_12_01::Models::VirtualNetworkPeeringListResult
        end
        def error_details
          Azure::ARM::Network::Api_2016_12_01::Models::ErrorDetails
        end
        def usages_list_result
          Azure::ARM::Network::Api_2016_12_01::Models::UsagesListResult
        end
        def error
          Azure::ARM::Network::Api_2016_12_01::Models::Error
        end
        def application_gateway_web_application_firewall_configuration
          Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewayWebApplicationFirewallConfiguration
        end
        def azure_async_operation_result
          Azure::ARM::Network::Api_2016_12_01::Models::AzureAsyncOperationResult
        end
        def application_gateway_list_result
          Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewayListResult
        end
        def effective_network_security_group_association
          Azure::ARM::Network::Api_2016_12_01::Models::EffectiveNetworkSecurityGroupAssociation
        end
        def bgp_service_community_list_result
          Azure::ARM::Network::Api_2016_12_01::Models::BgpServiceCommunityListResult
        end
        def effective_network_security_rule
          Azure::ARM::Network::Api_2016_12_01::Models::EffectiveNetworkSecurityRule
        end
        def express_route_circuit_peering_config
          Azure::ARM::Network::Api_2016_12_01::Models::ExpressRouteCircuitPeeringConfig
        end
        def effective_network_security_group
          Azure::ARM::Network::Api_2016_12_01::Models::EffectiveNetworkSecurityGroup
        end
        def bgpcommunity
          Azure::ARM::Network::Api_2016_12_01::Models::BGPCommunity
        end
        def effective_network_security_group_list_result
          Azure::ARM::Network::Api_2016_12_01::Models::EffectiveNetworkSecurityGroupListResult
        end
        def route_table_list_result
          Azure::ARM::Network::Api_2016_12_01::Models::RouteTableListResult
        end
        def network_interface_dns_settings
          Azure::ARM::Network::Api_2016_12_01::Models::NetworkInterfaceDnsSettings
        end
        def express_route_circuit_sku
          Azure::ARM::Network::Api_2016_12_01::Models::ExpressRouteCircuitSku
        end
        def public_ipaddress_dns_settings
          Azure::ARM::Network::Api_2016_12_01::Models::PublicIPAddressDnsSettings
        end
        def route_filter_rule_list_result
          Azure::ARM::Network::Api_2016_12_01::Models::RouteFilterRuleListResult
        end
        def troubleshooting_recommended_actions
          Azure::ARM::Network::Api_2016_12_01::Models::TroubleshootingRecommendedActions
        end
        def express_route_circuits_arp_table_list_result
          Azure::ARM::Network::Api_2016_12_01::Models::ExpressRouteCircuitsArpTableListResult
        end
        def network_security_group_list_result
          Azure::ARM::Network::Api_2016_12_01::Models::NetworkSecurityGroupListResult
        end
        def connection_shared_key
          Azure::ARM::Network::Api_2016_12_01::Models::ConnectionSharedKey
        end
        def query_troubleshooting_parameters
          Azure::ARM::Network::Api_2016_12_01::Models::QueryTroubleshootingParameters
        end
        def gateway_route_list_result
          Azure::ARM::Network::Api_2016_12_01::Models::GatewayRouteListResult
        end
        def network_watcher_list_result
          Azure::ARM::Network::Api_2016_12_01::Models::NetworkWatcherListResult
        end
        def gateway_route
          Azure::ARM::Network::Api_2016_12_01::Models::GatewayRoute
        end
        def topology_parameters
          Azure::ARM::Network::Api_2016_12_01::Models::TopologyParameters
        end
        def bgp_settings
          Azure::ARM::Network::Api_2016_12_01::Models::BgpSettings
        end
        def topology_association
          Azure::ARM::Network::Api_2016_12_01::Models::TopologyAssociation
        end
        def application_gateway_backend_health
          Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewayBackendHealth
        end
        def topology_resource
          Azure::ARM::Network::Api_2016_12_01::Models::TopologyResource
        end
        def virtual_network_gateway_sku
          Azure::ARM::Network::Api_2016_12_01::Models::VirtualNetworkGatewaySku
        end
        def topology
          Azure::ARM::Network::Api_2016_12_01::Models::Topology
        end
        def address_space
          Azure::ARM::Network::Api_2016_12_01::Models::AddressSpace
        end
        def verification_ipflow_parameters
          Azure::ARM::Network::Api_2016_12_01::Models::VerificationIPFlowParameters
        end
        def usage
          Azure::ARM::Network::Api_2016_12_01::Models::Usage
        end
        def verification_ipflow_result
          Azure::ARM::Network::Api_2016_12_01::Models::VerificationIPFlowResult
        end
        def dns_name_availability_result
          Azure::ARM::Network::Api_2016_12_01::Models::DnsNameAvailabilityResult
        end
        def next_hop_parameters
          Azure::ARM::Network::Api_2016_12_01::Models::NextHopParameters
        end
        def express_route_circuit_stats
          Azure::ARM::Network::Api_2016_12_01::Models::ExpressRouteCircuitStats
        end
        def next_hop_result
          Azure::ARM::Network::Api_2016_12_01::Models::NextHopResult
        end
        def express_route_circuit_peering_list_result
          Azure::ARM::Network::Api_2016_12_01::Models::ExpressRouteCircuitPeeringListResult
        end
        def security_group_view_parameters
          Azure::ARM::Network::Api_2016_12_01::Models::SecurityGroupViewParameters
        end
        def express_route_circuit_arp_table
          Azure::ARM::Network::Api_2016_12_01::Models::ExpressRouteCircuitArpTable
        end
        def network_interface_association
          Azure::ARM::Network::Api_2016_12_01::Models::NetworkInterfaceAssociation
        end
        def virtual_network_gateway_connection_list_result
          Azure::ARM::Network::Api_2016_12_01::Models::VirtualNetworkGatewayConnectionListResult
        end
        def subnet_association
          Azure::ARM::Network::Api_2016_12_01::Models::SubnetAssociation
        end
        def network_interface_list_result
          Azure::ARM::Network::Api_2016_12_01::Models::NetworkInterfaceListResult
        end
        def security_rule_associations
          Azure::ARM::Network::Api_2016_12_01::Models::SecurityRuleAssociations
        end
        def application_gateway_ssl_policy
          Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewaySslPolicy
        end
        def security_group_network_interface
          Azure::ARM::Network::Api_2016_12_01::Models::SecurityGroupNetworkInterface
        end
        def subnet_list_result
          Azure::ARM::Network::Api_2016_12_01::Models::SubnetListResult
        end
        def security_group_view_result
          Azure::ARM::Network::Api_2016_12_01::Models::SecurityGroupViewResult
        end
        def authorization_list_result
          Azure::ARM::Network::Api_2016_12_01::Models::AuthorizationListResult
        end
        def packet_capture_storage_location
          Azure::ARM::Network::Api_2016_12_01::Models::PacketCaptureStorageLocation
        end
        def express_route_circuit_service_provider_properties
          Azure::ARM::Network::Api_2016_12_01::Models::ExpressRouteCircuitServiceProviderProperties
        end
        def packet_capture_filter
          Azure::ARM::Network::Api_2016_12_01::Models::PacketCaptureFilter
        end
        def virtual_network_gateway_list_result
          Azure::ARM::Network::Api_2016_12_01::Models::VirtualNetworkGatewayListResult
        end
        def packet_capture_parameters
          Azure::ARM::Network::Api_2016_12_01::Models::PacketCaptureParameters
        end
        def virtual_network_list_result
          Azure::ARM::Network::Api_2016_12_01::Models::VirtualNetworkListResult
        end
        def packet_capture
          Azure::ARM::Network::Api_2016_12_01::Models::PacketCapture
        end
        def route_list_result
          Azure::ARM::Network::Api_2016_12_01::Models::RouteListResult
        end
        def packet_capture_result
          Azure::ARM::Network::Api_2016_12_01::Models::PacketCaptureResult
        end
        def application_gateway_backend_health_http_settings
          Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewayBackendHealthHttpSettings
        end
        def packet_capture_list_result
          Azure::ARM::Network::Api_2016_12_01::Models::PacketCaptureListResult
        end
        def local_network_gateway_list_result
          Azure::ARM::Network::Api_2016_12_01::Models::LocalNetworkGatewayListResult
        end
        def packet_capture_query_status_result
          Azure::ARM::Network::Api_2016_12_01::Models::PacketCaptureQueryStatusResult
        end
        def usage_name
          Azure::ARM::Network::Api_2016_12_01::Models::UsageName
        end
        def troubleshooting_parameters
          Azure::ARM::Network::Api_2016_12_01::Models::TroubleshootingParameters
        end
        def resource_navigation_link
          Azure::ARM::Network::Api_2016_12_01::Models::ResourceNavigationLink
        end
        def route
          Azure::ARM::Network::Api_2016_12_01::Models::Route
        end
        def security_rule
          Azure::ARM::Network::Api_2016_12_01::Models::SecurityRule
        end
        def application_gateway_backend_address_pool
          Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewayBackendAddressPool
        end
        def backend_address_pool
          Azure::ARM::Network::Api_2016_12_01::Models::BackendAddressPool
        end
        def inbound_nat_rule
          Azure::ARM::Network::Api_2016_12_01::Models::InboundNatRule
        end
        def ipconfiguration
          Azure::ARM::Network::Api_2016_12_01::Models::IPConfiguration
        end
        def public_ipaddress
          Azure::ARM::Network::Api_2016_12_01::Models::PublicIPAddress
        end
        def network_interface_ipconfiguration
          Azure::ARM::Network::Api_2016_12_01::Models::NetworkInterfaceIPConfiguration
        end
        def network_interface
          Azure::ARM::Network::Api_2016_12_01::Models::NetworkInterface
        end
        def network_security_group
          Azure::ARM::Network::Api_2016_12_01::Models::NetworkSecurityGroup
        end
        def route_table
          Azure::ARM::Network::Api_2016_12_01::Models::RouteTable
        end
        def subnet
          Azure::ARM::Network::Api_2016_12_01::Models::Subnet
        end
        def application_gateway_backend_http_settings
          Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewayBackendHttpSettings
        end
        def application_gateway_ipconfiguration
          Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewayIPConfiguration
        end
        def application_gateway_authentication_certificate
          Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewayAuthenticationCertificate
        end
        def application_gateway_ssl_certificate
          Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewaySslCertificate
        end
        def application_gateway_frontend_ipconfiguration
          Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewayFrontendIPConfiguration
        end
        def application_gateway_frontend_port
          Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewayFrontendPort
        end
        def application_gateway_http_listener
          Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewayHttpListener
        end
        def application_gateway_path_rule
          Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewayPathRule
        end
        def application_gateway_probe
          Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewayProbe
        end
        def application_gateway_request_routing_rule
          Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewayRequestRoutingRule
        end
        def application_gateway_url_path_map
          Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewayUrlPathMap
        end
        def application_gateway
          Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGateway
        end
        def express_route_circuit_authorization
          Azure::ARM::Network::Api_2016_12_01::Models::ExpressRouteCircuitAuthorization
        end
        def route_filter_rule
          Azure::ARM::Network::Api_2016_12_01::Models::RouteFilterRule
        end
        def express_route_circuit_peering
          Azure::ARM::Network::Api_2016_12_01::Models::ExpressRouteCircuitPeering
        end
        def route_filter
          Azure::ARM::Network::Api_2016_12_01::Models::RouteFilter
        end
        def express_route_circuit
          Azure::ARM::Network::Api_2016_12_01::Models::ExpressRouteCircuit
        end
        def express_route_service_provider
          Azure::ARM::Network::Api_2016_12_01::Models::ExpressRouteServiceProvider
        end
        def frontend_ipconfiguration
          Azure::ARM::Network::Api_2016_12_01::Models::FrontendIPConfiguration
        end
        def load_balancing_rule
          Azure::ARM::Network::Api_2016_12_01::Models::LoadBalancingRule
        end
        def probe
          Azure::ARM::Network::Api_2016_12_01::Models::Probe
        end
        def inbound_nat_pool
          Azure::ARM::Network::Api_2016_12_01::Models::InboundNatPool
        end
        def outbound_nat_rule
          Azure::ARM::Network::Api_2016_12_01::Models::OutboundNatRule
        end
        def load_balancer
          Azure::ARM::Network::Api_2016_12_01::Models::LoadBalancer
        end
        def network_watcher
          Azure::ARM::Network::Api_2016_12_01::Models::NetworkWatcher
        end
        def patch_route_filter_rule
          Azure::ARM::Network::Api_2016_12_01::Models::PatchRouteFilterRule
        end
        def patch_route_filter
          Azure::ARM::Network::Api_2016_12_01::Models::PatchRouteFilter
        end
        def bgp_service_community
          Azure::ARM::Network::Api_2016_12_01::Models::BgpServiceCommunity
        end
        def virtual_network_peering
          Azure::ARM::Network::Api_2016_12_01::Models::VirtualNetworkPeering
        end
        def virtual_network
          Azure::ARM::Network::Api_2016_12_01::Models::VirtualNetwork
        end
        def virtual_network_gateway_ipconfiguration
          Azure::ARM::Network::Api_2016_12_01::Models::VirtualNetworkGatewayIPConfiguration
        end
        def vpn_client_root_certificate
          Azure::ARM::Network::Api_2016_12_01::Models::VpnClientRootCertificate
        end
        def vpn_client_revoked_certificate
          Azure::ARM::Network::Api_2016_12_01::Models::VpnClientRevokedCertificate
        end
        def virtual_network_gateway
          Azure::ARM::Network::Api_2016_12_01::Models::VirtualNetworkGateway
        end
        def local_network_gateway
          Azure::ARM::Network::Api_2016_12_01::Models::LocalNetworkGateway
        end
        def virtual_network_gateway_connection
          Azure::ARM::Network::Api_2016_12_01::Models::VirtualNetworkGatewayConnection
        end
        def route_next_hop_type
          Azure::ARM::Network::Api_2016_12_01::Models::RouteNextHopType
        end
        def security_rule_protocol
          Azure::ARM::Network::Api_2016_12_01::Models::SecurityRuleProtocol
        end
        def security_rule_access
          Azure::ARM::Network::Api_2016_12_01::Models::SecurityRuleAccess
        end
        def security_rule_direction
          Azure::ARM::Network::Api_2016_12_01::Models::SecurityRuleDirection
        end
        def transport_protocol
          Azure::ARM::Network::Api_2016_12_01::Models::TransportProtocol
        end
        def ipallocation_method
          Azure::ARM::Network::Api_2016_12_01::Models::IPAllocationMethod
        end
        def ipversion
          Azure::ARM::Network::Api_2016_12_01::Models::IPVersion
        end
        def application_gateway_protocol
          Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewayProtocol
        end
        def application_gateway_cookie_based_affinity
          Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewayCookieBasedAffinity
        end
        def application_gateway_backend_health_server_health
          Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewayBackendHealthServerHealth
        end
        def application_gateway_sku_name
          Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewaySkuName
        end
        def application_gateway_tier
          Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewayTier
        end
        def application_gateway_ssl_protocol
          Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewaySslProtocol
        end
        def application_gateway_request_routing_rule_type
          Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewayRequestRoutingRuleType
        end
        def application_gateway_operational_state
          Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewayOperationalState
        end
        def application_gateway_firewall_mode
          Azure::ARM::Network::Api_2016_12_01::Models::ApplicationGatewayFirewallMode
        end
        def authorization_use_status
          Azure::ARM::Network::Api_2016_12_01::Models::AuthorizationUseStatus
        end
        def express_route_circuit_peering_advertised_public_prefix_state
          Azure::ARM::Network::Api_2016_12_01::Models::ExpressRouteCircuitPeeringAdvertisedPublicPrefixState
        end
        def express_route_circuit_peering_type
          Azure::ARM::Network::Api_2016_12_01::Models::ExpressRouteCircuitPeeringType
        end
        def express_route_circuit_peering_state
          Azure::ARM::Network::Api_2016_12_01::Models::ExpressRouteCircuitPeeringState
        end
        def access
          Azure::ARM::Network::Api_2016_12_01::Models::Access
        end
        def express_route_circuit_sku_tier
          Azure::ARM::Network::Api_2016_12_01::Models::ExpressRouteCircuitSkuTier
        end
        def express_route_circuit_sku_family
          Azure::ARM::Network::Api_2016_12_01::Models::ExpressRouteCircuitSkuFamily
        end
        def service_provider_provisioning_state
          Azure::ARM::Network::Api_2016_12_01::Models::ServiceProviderProvisioningState
        end
        def load_distribution
          Azure::ARM::Network::Api_2016_12_01::Models::LoadDistribution
        end
        def probe_protocol
          Azure::ARM::Network::Api_2016_12_01::Models::ProbeProtocol
        end
        def network_operation_status
          Azure::ARM::Network::Api_2016_12_01::Models::NetworkOperationStatus
        end
        def effective_route_source
          Azure::ARM::Network::Api_2016_12_01::Models::EffectiveRouteSource
        end
        def effective_route_state
          Azure::ARM::Network::Api_2016_12_01::Models::EffectiveRouteState
        end
        def provisioning_state
          Azure::ARM::Network::Api_2016_12_01::Models::ProvisioningState
        end
        def association_type
          Azure::ARM::Network::Api_2016_12_01::Models::AssociationType
        end
        def direction
          Azure::ARM::Network::Api_2016_12_01::Models::Direction
        end
        def protocol
          Azure::ARM::Network::Api_2016_12_01::Models::Protocol
        end
        def next_hop_type
          Azure::ARM::Network::Api_2016_12_01::Models::NextHopType
        end
        def pc_protocol
          Azure::ARM::Network::Api_2016_12_01::Models::PcProtocol
        end
        def pc_status
          Azure::ARM::Network::Api_2016_12_01::Models::PcStatus
        end
        def pc_error
          Azure::ARM::Network::Api_2016_12_01::Models::PcError
        end
        def virtual_network_peering_state
          Azure::ARM::Network::Api_2016_12_01::Models::VirtualNetworkPeeringState
        end
        def virtual_network_gateway_type
          Azure::ARM::Network::Api_2016_12_01::Models::VirtualNetworkGatewayType
        end
        def vpn_type
          Azure::ARM::Network::Api_2016_12_01::Models::VpnType
        end
        def virtual_network_gateway_sku_name
          Azure::ARM::Network::Api_2016_12_01::Models::VirtualNetworkGatewaySkuName
        end
        def virtual_network_gateway_sku_tier
          Azure::ARM::Network::Api_2016_12_01::Models::VirtualNetworkGatewaySkuTier
        end
        def bgp_peer_state
          Azure::ARM::Network::Api_2016_12_01::Models::BgpPeerState
        end
        def processor_architecture
          Azure::ARM::Network::Api_2016_12_01::Models::ProcessorArchitecture
        end
        def virtual_network_gateway_connection_status
          Azure::ARM::Network::Api_2016_12_01::Models::VirtualNetworkGatewayConnectionStatus
        end
        def virtual_network_gateway_connection_type
          Azure::ARM::Network::Api_2016_12_01::Models::VirtualNetworkGatewayConnectionType
        end
      end
    end
  end
end
