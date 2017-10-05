# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_network'


module Azure::Profiles::NetworkModule::Management::Profile_2017_09_01
  module Network
    ApplicationGateways = Azure::ARM::Network::Api_2017_09_01::ApplicationGateways
    ApplicationSecurityGroups = Azure::ARM::Network::Api_2017_09_01::ApplicationSecurityGroups
    AvailableEndpointServices = Azure::ARM::Network::Api_2017_09_01::AvailableEndpointServices
    ExpressRouteCircuitAuthorizations = Azure::ARM::Network::Api_2017_09_01::ExpressRouteCircuitAuthorizations
    ExpressRouteCircuitPeerings = Azure::ARM::Network::Api_2017_09_01::ExpressRouteCircuitPeerings
    ExpressRouteCircuits = Azure::ARM::Network::Api_2017_09_01::ExpressRouteCircuits
    ExpressRouteServiceProviders = Azure::ARM::Network::Api_2017_09_01::ExpressRouteServiceProviders
    LoadBalancers = Azure::ARM::Network::Api_2017_09_01::LoadBalancers
    LoadBalancerBackendAddressPools = Azure::ARM::Network::Api_2017_09_01::LoadBalancerBackendAddressPools
    LoadBalancerFrontendIPConfigurations = Azure::ARM::Network::Api_2017_09_01::LoadBalancerFrontendIPConfigurations
    InboundNatRules = Azure::ARM::Network::Api_2017_09_01::InboundNatRules
    LoadBalancerLoadBalancingRules = Azure::ARM::Network::Api_2017_09_01::LoadBalancerLoadBalancingRules
    LoadBalancerNetworkInterfaces = Azure::ARM::Network::Api_2017_09_01::LoadBalancerNetworkInterfaces
    LoadBalancerProbes = Azure::ARM::Network::Api_2017_09_01::LoadBalancerProbes
    NetworkInterfaces = Azure::ARM::Network::Api_2017_09_01::NetworkInterfaces
    NetworkInterfaceIPConfigurations = Azure::ARM::Network::Api_2017_09_01::NetworkInterfaceIPConfigurations
    NetworkInterfaceLoadBalancers = Azure::ARM::Network::Api_2017_09_01::NetworkInterfaceLoadBalancers
    NetworkSecurityGroups = Azure::ARM::Network::Api_2017_09_01::NetworkSecurityGroups
    SecurityRules = Azure::ARM::Network::Api_2017_09_01::SecurityRules
    DefaultSecurityRules = Azure::ARM::Network::Api_2017_09_01::DefaultSecurityRules
    NetworkWatchers = Azure::ARM::Network::Api_2017_09_01::NetworkWatchers
    PacketCaptures = Azure::ARM::Network::Api_2017_09_01::PacketCaptures
    PublicIPAddresses = Azure::ARM::Network::Api_2017_09_01::PublicIPAddresses
    RouteFilters = Azure::ARM::Network::Api_2017_09_01::RouteFilters
    RouteFilterRules = Azure::ARM::Network::Api_2017_09_01::RouteFilterRules
    BgpServiceCommunities = Azure::ARM::Network::Api_2017_09_01::BgpServiceCommunities
    RouteTables = Azure::ARM::Network::Api_2017_09_01::RouteTables
    Routes = Azure::ARM::Network::Api_2017_09_01::Routes
    Usages = Azure::ARM::Network::Api_2017_09_01::Usages
    VirtualNetworks = Azure::ARM::Network::Api_2017_09_01::VirtualNetworks
    Subnets = Azure::ARM::Network::Api_2017_09_01::Subnets
    VirtualNetworkPeerings = Azure::ARM::Network::Api_2017_09_01::VirtualNetworkPeerings
    VirtualNetworkGateways = Azure::ARM::Network::Api_2017_09_01::VirtualNetworkGateways
    VirtualNetworkGatewayConnections = Azure::ARM::Network::Api_2017_09_01::VirtualNetworkGatewayConnections
    LocalNetworkGateways = Azure::ARM::Network::Api_2017_09_01::LocalNetworkGateways

    module Models
      EffectiveNetworkSecurityGroupListResult = Azure::ARM::Network::Api_2017_09_01::Models::EffectiveNetworkSecurityGroupListResult
      EffectiveRoute = Azure::ARM::Network::Api_2017_09_01::Models::EffectiveRoute
      ExpressRouteCircuitsRoutesTableSummaryListResult = Azure::ARM::Network::Api_2017_09_01::Models::ExpressRouteCircuitsRoutesTableSummaryListResult
      ExpressRouteCircuitListResult = Azure::ARM::Network::Api_2017_09_01::Models::ExpressRouteCircuitListResult
      VpnDeviceScriptParameters = Azure::ARM::Network::Api_2017_09_01::Models::VpnDeviceScriptParameters
      ExpressRouteServiceProviderBandwidthsOffered = Azure::ARM::Network::Api_2017_09_01::Models::ExpressRouteServiceProviderBandwidthsOffered
      NetworkInterfaceDnsSettings = Azure::ARM::Network::Api_2017_09_01::Models::NetworkInterfaceDnsSettings
      RouteFilterRuleListResult = Azure::ARM::Network::Api_2017_09_01::Models::RouteFilterRuleListResult
      LocalNetworkGatewayListResult = Azure::ARM::Network::Api_2017_09_01::Models::LocalNetworkGatewayListResult
      ExpressRouteServiceProviderListResult = Azure::ARM::Network::Api_2017_09_01::Models::ExpressRouteServiceProviderListResult
      ConnectionResetSharedKey = Azure::ARM::Network::Api_2017_09_01::Models::ConnectionResetSharedKey
      LoadBalancerSku = Azure::ARM::Network::Api_2017_09_01::Models::LoadBalancerSku
      PublicIPAddressSku = Azure::ARM::Network::Api_2017_09_01::Models::PublicIPAddressSku
      RouteFilterListResult = Azure::ARM::Network::Api_2017_09_01::Models::RouteFilterListResult
      VirtualNetworkGatewayConnectionListResult = Azure::ARM::Network::Api_2017_09_01::Models::VirtualNetworkGatewayConnectionListResult
      PublicIPAddressListResult = Azure::ARM::Network::Api_2017_09_01::Models::PublicIPAddressListResult
      TunnelConnectionHealth = Azure::ARM::Network::Api_2017_09_01::Models::TunnelConnectionHealth
      AvailableProvidersList = Azure::ARM::Network::Api_2017_09_01::Models::AvailableProvidersList
      BgpPeerStatusListResult = Azure::ARM::Network::Api_2017_09_01::Models::BgpPeerStatusListResult
      AvailableProvidersListCountry = Azure::ARM::Network::Api_2017_09_01::Models::AvailableProvidersListCountry
      VirtualNetworkGatewayListResult = Azure::ARM::Network::Api_2017_09_01::Models::VirtualNetworkGatewayListResult
      AvailableProvidersListState = Azure::ARM::Network::Api_2017_09_01::Models::AvailableProvidersListState
      VpnClientParameters = Azure::ARM::Network::Api_2017_09_01::Models::VpnClientParameters
      AvailableProvidersListCity = Azure::ARM::Network::Api_2017_09_01::Models::AvailableProvidersListCity
      ApplicationGatewayBackendHealthHttpSettings = Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayBackendHealthHttpSettings
      LoadBalancerListResult = Azure::ARM::Network::Api_2017_09_01::Models::LoadBalancerListResult
      ApplicationGatewayBackendHealth = Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayBackendHealth
      InboundNatRuleListResult = Azure::ARM::Network::Api_2017_09_01::Models::InboundNatRuleListResult
      ApplicationGatewaySslPolicy = Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewaySslPolicy
      LoadBalancerBackendAddressPoolListResult = Azure::ARM::Network::Api_2017_09_01::Models::LoadBalancerBackendAddressPoolListResult
      BgpPeerStatus = Azure::ARM::Network::Api_2017_09_01::Models::BgpPeerStatus
      LoadBalancerFrontendIPConfigurationListResult = Azure::ARM::Network::Api_2017_09_01::Models::LoadBalancerFrontendIPConfigurationListResult
      VpnClientConfiguration = Azure::ARM::Network::Api_2017_09_01::Models::VpnClientConfiguration
      LoadBalancerLoadBalancingRuleListResult = Azure::ARM::Network::Api_2017_09_01::Models::LoadBalancerLoadBalancingRuleListResult
      VirtualNetworkListUsageResult = Azure::ARM::Network::Api_2017_09_01::Models::VirtualNetworkListUsageResult
      LoadBalancerProbeListResult = Azure::ARM::Network::Api_2017_09_01::Models::LoadBalancerProbeListResult
      ApplicationGatewayProbeHealthResponseMatch = Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayProbeHealthResponseMatch
      NetworkInterfaceListResult = Azure::ARM::Network::Api_2017_09_01::Models::NetworkInterfaceListResult
      IPAddressAvailabilityResult = Azure::ARM::Network::Api_2017_09_01::Models::IPAddressAvailabilityResult
      ErrorDetails = Azure::ARM::Network::Api_2017_09_01::Models::ErrorDetails
      DhcpOptions = Azure::ARM::Network::Api_2017_09_01::Models::DhcpOptions
      Error = Azure::ARM::Network::Api_2017_09_01::Models::Error
      ApplicationGatewayWebApplicationFirewallConfiguration = Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayWebApplicationFirewallConfiguration
      AzureAsyncOperationResult = Azure::ARM::Network::Api_2017_09_01::Models::AzureAsyncOperationResult
      ApplicationGatewayListResult = Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayListResult
      NetworkInterfaceIPConfigurationListResult = Azure::ARM::Network::Api_2017_09_01::Models::NetworkInterfaceIPConfigurationListResult
      ApplicationGatewayFirewallRuleGroup = Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayFirewallRuleGroup
      NetworkInterfaceLoadBalancerListResult = Azure::ARM::Network::Api_2017_09_01::Models::NetworkInterfaceLoadBalancerListResult
      ApplicationGatewayAvailableWafRuleSetsResult = Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayAvailableWafRuleSetsResult
      EffectiveNetworkSecurityGroupAssociation = Azure::ARM::Network::Api_2017_09_01::Models::EffectiveNetworkSecurityGroupAssociation
      UsagesListResult = Azure::ARM::Network::Api_2017_09_01::Models::UsagesListResult
      EffectiveNetworkSecurityRule = Azure::ARM::Network::Api_2017_09_01::Models::EffectiveNetworkSecurityRule
      EffectiveNetworkSecurityGroup = Azure::ARM::Network::Api_2017_09_01::Models::EffectiveNetworkSecurityGroup
      DnsNameAvailabilityResult = Azure::ARM::Network::Api_2017_09_01::Models::DnsNameAvailabilityResult
      EndpointServicesListResult = Azure::ARM::Network::Api_2017_09_01::Models::EndpointServicesListResult
      AvailableProvidersListParameters = Azure::ARM::Network::Api_2017_09_01::Models::AvailableProvidersListParameters
      AuthorizationListResult = Azure::ARM::Network::Api_2017_09_01::Models::AuthorizationListResult
      EffectiveRouteListResult = Azure::ARM::Network::Api_2017_09_01::Models::EffectiveRouteListResult
      RouteListResult = Azure::ARM::Network::Api_2017_09_01::Models::RouteListResult
      SecurityRuleListResult = Azure::ARM::Network::Api_2017_09_01::Models::SecurityRuleListResult
      RouteTableListResult = Azure::ARM::Network::Api_2017_09_01::Models::RouteTableListResult
      NetworkSecurityGroupListResult = Azure::ARM::Network::Api_2017_09_01::Models::NetworkSecurityGroupListResult
      Ipv6ExpressRouteCircuitPeeringConfig = Azure::ARM::Network::Api_2017_09_01::Models::Ipv6ExpressRouteCircuitPeeringConfig
      AzureReachabilityReport = Azure::ARM::Network::Api_2017_09_01::Models::AzureReachabilityReport
      ExpressRouteCircuitSku = Azure::ARM::Network::Api_2017_09_01::Models::ExpressRouteCircuitSku
      NetworkWatcherListResult = Azure::ARM::Network::Api_2017_09_01::Models::NetworkWatcherListResult
      BGPCommunity = Azure::ARM::Network::Api_2017_09_01::Models::BGPCommunity
      TopologyParameters = Azure::ARM::Network::Api_2017_09_01::Models::TopologyParameters
      ExpressRouteCircuitsArpTableListResult = Azure::ARM::Network::Api_2017_09_01::Models::ExpressRouteCircuitsArpTableListResult
      TopologyAssociation = Azure::ARM::Network::Api_2017_09_01::Models::TopologyAssociation
      ExpressRouteCircuitsRoutesTableListResult = Azure::ARM::Network::Api_2017_09_01::Models::ExpressRouteCircuitsRoutesTableListResult
      TopologyResource = Azure::ARM::Network::Api_2017_09_01::Models::TopologyResource
      Topology = Azure::ARM::Network::Api_2017_09_01::Models::Topology
      VirtualNetworkConnectionGatewayReference = Azure::ARM::Network::Api_2017_09_01::Models::VirtualNetworkConnectionGatewayReference
      VerificationIPFlowParameters = Azure::ARM::Network::Api_2017_09_01::Models::VerificationIPFlowParameters
      ServiceEndpointPropertiesFormat = Azure::ARM::Network::Api_2017_09_01::Models::ServiceEndpointPropertiesFormat
      VerificationIPFlowResult = Azure::ARM::Network::Api_2017_09_01::Models::VerificationIPFlowResult
      IpsecPolicy = Azure::ARM::Network::Api_2017_09_01::Models::IpsecPolicy
      NextHopParameters = Azure::ARM::Network::Api_2017_09_01::Models::NextHopParameters
      ApplicationGatewayBackendAddress = Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayBackendAddress
      NextHopResult = Azure::ARM::Network::Api_2017_09_01::Models::NextHopResult
      ApplicationGatewayBackendHealthServer = Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayBackendHealthServer
      SecurityGroupViewParameters = Azure::ARM::Network::Api_2017_09_01::Models::SecurityGroupViewParameters
      ApplicationGatewaySku = Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewaySku
      NetworkInterfaceAssociation = Azure::ARM::Network::Api_2017_09_01::Models::NetworkInterfaceAssociation
      BgpSettings = Azure::ARM::Network::Api_2017_09_01::Models::BgpSettings
      SubnetAssociation = Azure::ARM::Network::Api_2017_09_01::Models::SubnetAssociation
      VirtualNetworkUsage = Azure::ARM::Network::Api_2017_09_01::Models::VirtualNetworkUsage
      SecurityRuleAssociations = Azure::ARM::Network::Api_2017_09_01::Models::SecurityRuleAssociations
      VirtualNetworkListResult = Azure::ARM::Network::Api_2017_09_01::Models::VirtualNetworkListResult
      SecurityGroupNetworkInterface = Azure::ARM::Network::Api_2017_09_01::Models::SecurityGroupNetworkInterface
      AddressSpace = Azure::ARM::Network::Api_2017_09_01::Models::AddressSpace
      SecurityGroupViewResult = Azure::ARM::Network::Api_2017_09_01::Models::SecurityGroupViewResult
      VirtualNetworkPeeringListResult = Azure::ARM::Network::Api_2017_09_01::Models::VirtualNetworkPeeringListResult
      PacketCaptureStorageLocation = Azure::ARM::Network::Api_2017_09_01::Models::PacketCaptureStorageLocation
      ApplicationGatewayAvailableSslPredefinedPolicies = Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayAvailableSslPredefinedPolicies
      PacketCaptureFilter = Azure::ARM::Network::Api_2017_09_01::Models::PacketCaptureFilter
      Usage = Azure::ARM::Network::Api_2017_09_01::Models::Usage
      PacketCaptureParameters = Azure::ARM::Network::Api_2017_09_01::Models::PacketCaptureParameters
      ExpressRouteCircuitPeeringConfig = Azure::ARM::Network::Api_2017_09_01::Models::ExpressRouteCircuitPeeringConfig
      PacketCapture = Azure::ARM::Network::Api_2017_09_01::Models::PacketCapture
      BgpServiceCommunityListResult = Azure::ARM::Network::Api_2017_09_01::Models::BgpServiceCommunityListResult
      PacketCaptureResult = Azure::ARM::Network::Api_2017_09_01::Models::PacketCaptureResult
      ExpressRouteCircuitServiceProviderProperties = Azure::ARM::Network::Api_2017_09_01::Models::ExpressRouteCircuitServiceProviderProperties
      PacketCaptureListResult = Azure::ARM::Network::Api_2017_09_01::Models::PacketCaptureListResult
      ExpressRouteCircuitRoutesTable = Azure::ARM::Network::Api_2017_09_01::Models::ExpressRouteCircuitRoutesTable
      PacketCaptureQueryStatusResult = Azure::ARM::Network::Api_2017_09_01::Models::PacketCaptureQueryStatusResult
      VirtualNetworkGatewayListConnectionsResult = Azure::ARM::Network::Api_2017_09_01::Models::VirtualNetworkGatewayListConnectionsResult
      TroubleshootingParameters = Azure::ARM::Network::Api_2017_09_01::Models::TroubleshootingParameters
      PublicIPAddressDnsSettings = Azure::ARM::Network::Api_2017_09_01::Models::PublicIPAddressDnsSettings
      QueryTroubleshootingParameters = Azure::ARM::Network::Api_2017_09_01::Models::QueryTroubleshootingParameters
      ApplicationGatewayConnectionDraining = Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayConnectionDraining
      TroubleshootingRecommendedActions = Azure::ARM::Network::Api_2017_09_01::Models::TroubleshootingRecommendedActions
      GatewayRoute = Azure::ARM::Network::Api_2017_09_01::Models::GatewayRoute
      TroubleshootingDetails = Azure::ARM::Network::Api_2017_09_01::Models::TroubleshootingDetails
      VirtualNetworkUsageName = Azure::ARM::Network::Api_2017_09_01::Models::VirtualNetworkUsageName
      TroubleshootingResult = Azure::ARM::Network::Api_2017_09_01::Models::TroubleshootingResult
      ApplicationGatewayFirewallRule = Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayFirewallRule
      RetentionPolicyParameters = Azure::ARM::Network::Api_2017_09_01::Models::RetentionPolicyParameters
      ApplicationSecurityGroupListResult = Azure::ARM::Network::Api_2017_09_01::Models::ApplicationSecurityGroupListResult
      FlowLogStatusParameters = Azure::ARM::Network::Api_2017_09_01::Models::FlowLogStatusParameters
      ExpressRouteCircuitStats = Azure::ARM::Network::Api_2017_09_01::Models::ExpressRouteCircuitStats
      FlowLogInformation = Azure::ARM::Network::Api_2017_09_01::Models::FlowLogInformation
      ExpressRouteCircuitArpTable = Azure::ARM::Network::Api_2017_09_01::Models::ExpressRouteCircuitArpTable
      ConnectivitySource = Azure::ARM::Network::Api_2017_09_01::Models::ConnectivitySource
      ConnectionSharedKey = Azure::ARM::Network::Api_2017_09_01::Models::ConnectionSharedKey
      ConnectivityDestination = Azure::ARM::Network::Api_2017_09_01::Models::ConnectivityDestination
      ApplicationGatewayBackendHealthPool = Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayBackendHealthPool
      ConnectivityParameters = Azure::ARM::Network::Api_2017_09_01::Models::ConnectivityParameters
      ApplicationGatewayFirewallDisabledRuleGroup = Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayFirewallDisabledRuleGroup
      ConnectivityIssue = Azure::ARM::Network::Api_2017_09_01::Models::ConnectivityIssue
      UsageName = Azure::ARM::Network::Api_2017_09_01::Models::UsageName
      ConnectivityHop = Azure::ARM::Network::Api_2017_09_01::Models::ConnectivityHop
      ExpressRouteCircuitRoutesTableSummary = Azure::ARM::Network::Api_2017_09_01::Models::ExpressRouteCircuitRoutesTableSummary
      ConnectivityInformation = Azure::ARM::Network::Api_2017_09_01::Models::ConnectivityInformation
      VirtualNetworkGatewaySku = Azure::ARM::Network::Api_2017_09_01::Models::VirtualNetworkGatewaySku
      AzureReachabilityReportLocation = Azure::ARM::Network::Api_2017_09_01::Models::AzureReachabilityReportLocation
      ExpressRouteCircuitPeeringListResult = Azure::ARM::Network::Api_2017_09_01::Models::ExpressRouteCircuitPeeringListResult
      AzureReachabilityReportParameters = Azure::ARM::Network::Api_2017_09_01::Models::AzureReachabilityReportParameters
      SubnetListResult = Azure::ARM::Network::Api_2017_09_01::Models::SubnetListResult
      AzureReachabilityReportLatencyInfo = Azure::ARM::Network::Api_2017_09_01::Models::AzureReachabilityReportLatencyInfo
      GatewayRouteListResult = Azure::ARM::Network::Api_2017_09_01::Models::GatewayRouteListResult
      AzureReachabilityReportItem = Azure::ARM::Network::Api_2017_09_01::Models::AzureReachabilityReportItem
      BackendAddressPool = Azure::ARM::Network::Api_2017_09_01::Models::BackendAddressPool
      InboundNatRule = Azure::ARM::Network::Api_2017_09_01::Models::InboundNatRule
      ApplicationSecurityGroup = Azure::ARM::Network::Api_2017_09_01::Models::ApplicationSecurityGroup
      SecurityRule = Azure::ARM::Network::Api_2017_09_01::Models::SecurityRule
      NetworkInterface = Azure::ARM::Network::Api_2017_09_01::Models::NetworkInterface
      NetworkSecurityGroup = Azure::ARM::Network::Api_2017_09_01::Models::NetworkSecurityGroup
      Route = Azure::ARM::Network::Api_2017_09_01::Models::Route
      RouteTable = Azure::ARM::Network::Api_2017_09_01::Models::RouteTable
      PublicIPAddress = Azure::ARM::Network::Api_2017_09_01::Models::PublicIPAddress
      IPConfiguration = Azure::ARM::Network::Api_2017_09_01::Models::IPConfiguration
      ResourceNavigationLink = Azure::ARM::Network::Api_2017_09_01::Models::ResourceNavigationLink
      Subnet = Azure::ARM::Network::Api_2017_09_01::Models::Subnet
      NetworkInterfaceIPConfiguration = Azure::ARM::Network::Api_2017_09_01::Models::NetworkInterfaceIPConfiguration
      ApplicationGatewayBackendAddressPool = Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayBackendAddressPool
      ApplicationGatewayBackendHttpSettings = Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayBackendHttpSettings
      ApplicationGatewayIPConfiguration = Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayIPConfiguration
      ApplicationGatewayAuthenticationCertificate = Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayAuthenticationCertificate
      ApplicationGatewaySslCertificate = Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewaySslCertificate
      ApplicationGatewayFrontendIPConfiguration = Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayFrontendIPConfiguration
      ApplicationGatewayFrontendPort = Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayFrontendPort
      ApplicationGatewayHttpListener = Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayHttpListener
      ApplicationGatewayPathRule = Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayPathRule
      ApplicationGatewayProbe = Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayProbe
      ApplicationGatewayRequestRoutingRule = Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayRequestRoutingRule
      ApplicationGatewayRedirectConfiguration = Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayRedirectConfiguration
      ApplicationGatewayUrlPathMap = Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayUrlPathMap
      ApplicationGateway = Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGateway
      ApplicationGatewayFirewallRuleSet = Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayFirewallRuleSet
      ApplicationGatewayAvailableSslOptions = Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayAvailableSslOptions
      ApplicationGatewaySslPredefinedPolicy = Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewaySslPredefinedPolicy
      EndpointServiceResult = Azure::ARM::Network::Api_2017_09_01::Models::EndpointServiceResult
      ExpressRouteCircuitAuthorization = Azure::ARM::Network::Api_2017_09_01::Models::ExpressRouteCircuitAuthorization
      RouteFilterRule = Azure::ARM::Network::Api_2017_09_01::Models::RouteFilterRule
      ExpressRouteCircuitPeering = Azure::ARM::Network::Api_2017_09_01::Models::ExpressRouteCircuitPeering
      RouteFilter = Azure::ARM::Network::Api_2017_09_01::Models::RouteFilter
      ExpressRouteCircuit = Azure::ARM::Network::Api_2017_09_01::Models::ExpressRouteCircuit
      ExpressRouteServiceProvider = Azure::ARM::Network::Api_2017_09_01::Models::ExpressRouteServiceProvider
      FrontendIPConfiguration = Azure::ARM::Network::Api_2017_09_01::Models::FrontendIPConfiguration
      LoadBalancingRule = Azure::ARM::Network::Api_2017_09_01::Models::LoadBalancingRule
      Probe = Azure::ARM::Network::Api_2017_09_01::Models::Probe
      InboundNatPool = Azure::ARM::Network::Api_2017_09_01::Models::InboundNatPool
      OutboundNatRule = Azure::ARM::Network::Api_2017_09_01::Models::OutboundNatRule
      LoadBalancer = Azure::ARM::Network::Api_2017_09_01::Models::LoadBalancer
      NetworkWatcher = Azure::ARM::Network::Api_2017_09_01::Models::NetworkWatcher
      PatchRouteFilterRule = Azure::ARM::Network::Api_2017_09_01::Models::PatchRouteFilterRule
      PatchRouteFilter = Azure::ARM::Network::Api_2017_09_01::Models::PatchRouteFilter
      BgpServiceCommunity = Azure::ARM::Network::Api_2017_09_01::Models::BgpServiceCommunity
      VirtualNetworkPeering = Azure::ARM::Network::Api_2017_09_01::Models::VirtualNetworkPeering
      VirtualNetwork = Azure::ARM::Network::Api_2017_09_01::Models::VirtualNetwork
      VirtualNetworkGatewayIPConfiguration = Azure::ARM::Network::Api_2017_09_01::Models::VirtualNetworkGatewayIPConfiguration
      VpnClientRootCertificate = Azure::ARM::Network::Api_2017_09_01::Models::VpnClientRootCertificate
      VpnClientRevokedCertificate = Azure::ARM::Network::Api_2017_09_01::Models::VpnClientRevokedCertificate
      VirtualNetworkGateway = Azure::ARM::Network::Api_2017_09_01::Models::VirtualNetworkGateway
      LocalNetworkGateway = Azure::ARM::Network::Api_2017_09_01::Models::LocalNetworkGateway
      VirtualNetworkGatewayConnection = Azure::ARM::Network::Api_2017_09_01::Models::VirtualNetworkGatewayConnection
      VirtualNetworkGatewayConnectionListEntity = Azure::ARM::Network::Api_2017_09_01::Models::VirtualNetworkGatewayConnectionListEntity
      TransportProtocol = Azure::ARM::Network::Api_2017_09_01::Models::TransportProtocol
      IPAllocationMethod = Azure::ARM::Network::Api_2017_09_01::Models::IPAllocationMethod
      IPVersion = Azure::ARM::Network::Api_2017_09_01::Models::IPVersion
      SecurityRuleProtocol = Azure::ARM::Network::Api_2017_09_01::Models::SecurityRuleProtocol
      SecurityRuleAccess = Azure::ARM::Network::Api_2017_09_01::Models::SecurityRuleAccess
      SecurityRuleDirection = Azure::ARM::Network::Api_2017_09_01::Models::SecurityRuleDirection
      RouteNextHopType = Azure::ARM::Network::Api_2017_09_01::Models::RouteNextHopType
      PublicIPAddressSkuName = Azure::ARM::Network::Api_2017_09_01::Models::PublicIPAddressSkuName
      ApplicationGatewayProtocol = Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayProtocol
      ApplicationGatewayCookieBasedAffinity = Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayCookieBasedAffinity
      ApplicationGatewayBackendHealthServerHealth = Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayBackendHealthServerHealth
      ApplicationGatewaySkuName = Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewaySkuName
      ApplicationGatewayTier = Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayTier
      ApplicationGatewaySslProtocol = Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewaySslProtocol
      ApplicationGatewaySslPolicyType = Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewaySslPolicyType
      ApplicationGatewaySslPolicyName = Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewaySslPolicyName
      ApplicationGatewaySslCipherSuite = Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewaySslCipherSuite
      ApplicationGatewayRequestRoutingRuleType = Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayRequestRoutingRuleType
      ApplicationGatewayRedirectType = Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayRedirectType
      ApplicationGatewayOperationalState = Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayOperationalState
      ApplicationGatewayFirewallMode = Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayFirewallMode
      AuthorizationUseStatus = Azure::ARM::Network::Api_2017_09_01::Models::AuthorizationUseStatus
      ExpressRouteCircuitPeeringAdvertisedPublicPrefixState = Azure::ARM::Network::Api_2017_09_01::Models::ExpressRouteCircuitPeeringAdvertisedPublicPrefixState
      Access = Azure::ARM::Network::Api_2017_09_01::Models::Access
      ExpressRouteCircuitPeeringType = Azure::ARM::Network::Api_2017_09_01::Models::ExpressRouteCircuitPeeringType
      ExpressRouteCircuitPeeringState = Azure::ARM::Network::Api_2017_09_01::Models::ExpressRouteCircuitPeeringState
      ExpressRouteCircuitSkuTier = Azure::ARM::Network::Api_2017_09_01::Models::ExpressRouteCircuitSkuTier
      ExpressRouteCircuitSkuFamily = Azure::ARM::Network::Api_2017_09_01::Models::ExpressRouteCircuitSkuFamily
      ServiceProviderProvisioningState = Azure::ARM::Network::Api_2017_09_01::Models::ServiceProviderProvisioningState
      LoadBalancerSkuName = Azure::ARM::Network::Api_2017_09_01::Models::LoadBalancerSkuName
      LoadDistribution = Azure::ARM::Network::Api_2017_09_01::Models::LoadDistribution
      ProbeProtocol = Azure::ARM::Network::Api_2017_09_01::Models::ProbeProtocol
      NetworkOperationStatus = Azure::ARM::Network::Api_2017_09_01::Models::NetworkOperationStatus
      EffectiveSecurityRuleProtocol = Azure::ARM::Network::Api_2017_09_01::Models::EffectiveSecurityRuleProtocol
      EffectiveRouteSource = Azure::ARM::Network::Api_2017_09_01::Models::EffectiveRouteSource
      EffectiveRouteState = Azure::ARM::Network::Api_2017_09_01::Models::EffectiveRouteState
      ProvisioningState = Azure::ARM::Network::Api_2017_09_01::Models::ProvisioningState
      AssociationType = Azure::ARM::Network::Api_2017_09_01::Models::AssociationType
      Direction = Azure::ARM::Network::Api_2017_09_01::Models::Direction
      Protocol = Azure::ARM::Network::Api_2017_09_01::Models::Protocol
      NextHopType = Azure::ARM::Network::Api_2017_09_01::Models::NextHopType
      PcProtocol = Azure::ARM::Network::Api_2017_09_01::Models::PcProtocol
      PcStatus = Azure::ARM::Network::Api_2017_09_01::Models::PcStatus
      PcError = Azure::ARM::Network::Api_2017_09_01::Models::PcError
      Origin = Azure::ARM::Network::Api_2017_09_01::Models::Origin
      Severity = Azure::ARM::Network::Api_2017_09_01::Models::Severity
      IssueType = Azure::ARM::Network::Api_2017_09_01::Models::IssueType
      ConnectionStatus = Azure::ARM::Network::Api_2017_09_01::Models::ConnectionStatus
      VirtualNetworkPeeringState = Azure::ARM::Network::Api_2017_09_01::Models::VirtualNetworkPeeringState
      VirtualNetworkGatewayType = Azure::ARM::Network::Api_2017_09_01::Models::VirtualNetworkGatewayType
      VpnType = Azure::ARM::Network::Api_2017_09_01::Models::VpnType
      VirtualNetworkGatewaySkuName = Azure::ARM::Network::Api_2017_09_01::Models::VirtualNetworkGatewaySkuName
      VirtualNetworkGatewaySkuTier = Azure::ARM::Network::Api_2017_09_01::Models::VirtualNetworkGatewaySkuTier
      VpnClientProtocol = Azure::ARM::Network::Api_2017_09_01::Models::VpnClientProtocol
      BgpPeerState = Azure::ARM::Network::Api_2017_09_01::Models::BgpPeerState
      ProcessorArchitecture = Azure::ARM::Network::Api_2017_09_01::Models::ProcessorArchitecture
      AuthenticationMethod = Azure::ARM::Network::Api_2017_09_01::Models::AuthenticationMethod
      VirtualNetworkGatewayConnectionStatus = Azure::ARM::Network::Api_2017_09_01::Models::VirtualNetworkGatewayConnectionStatus
      VirtualNetworkGatewayConnectionType = Azure::ARM::Network::Api_2017_09_01::Models::VirtualNetworkGatewayConnectionType
      IpsecEncryption = Azure::ARM::Network::Api_2017_09_01::Models::IpsecEncryption
      IpsecIntegrity = Azure::ARM::Network::Api_2017_09_01::Models::IpsecIntegrity
      IkeEncryption = Azure::ARM::Network::Api_2017_09_01::Models::IkeEncryption
      IkeIntegrity = Azure::ARM::Network::Api_2017_09_01::Models::IkeIntegrity
      DhGroup = Azure::ARM::Network::Api_2017_09_01::Models::DhGroup
      PfsGroup = Azure::ARM::Network::Api_2017_09_01::Models::PfsGroup
    end

    #
    # Network
    #
    class NetworkClass
      attr_accessor :application_gateways, :application_security_groups, :available_endpoint_services, :express_route_circuit_authorizations, :express_route_circuit_peerings, :express_route_circuits, :express_route_service_providers, :load_balancers, :load_balancer_backend_address_pools, :load_balancer_frontend_ipconfigurations, :inbound_nat_rules, :load_balancer_load_balancing_rules, :load_balancer_network_interfaces, :load_balancer_probes, :network_interfaces, :network_interface_ipconfigurations, :network_interface_load_balancers, :network_security_groups, :security_rules, :default_security_rules, :network_watchers, :packet_captures, :public_ipaddresses, :route_filters, :route_filter_rules, :bgp_service_communities, :route_tables, :routes, :usages, :virtual_networks, :subnets, :virtual_network_peerings, :virtual_network_gateways, :virtual_network_gateway_connections, :local_network_gateways, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::Network::Api_2017_09_01::NetworkManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.application_gateways = Azure::ARM::Network::Api_2017_09_01::ApplicationGateways.new(client)
        self.application_security_groups = Azure::ARM::Network::Api_2017_09_01::ApplicationSecurityGroups.new(client)
        self.available_endpoint_services = Azure::ARM::Network::Api_2017_09_01::AvailableEndpointServices.new(client)
        self.express_route_circuit_authorizations = Azure::ARM::Network::Api_2017_09_01::ExpressRouteCircuitAuthorizations.new(client)
        self.express_route_circuit_peerings = Azure::ARM::Network::Api_2017_09_01::ExpressRouteCircuitPeerings.new(client)
        self.express_route_circuits = Azure::ARM::Network::Api_2017_09_01::ExpressRouteCircuits.new(client)
        self.express_route_service_providers = Azure::ARM::Network::Api_2017_09_01::ExpressRouteServiceProviders.new(client)
        self.load_balancers = Azure::ARM::Network::Api_2017_09_01::LoadBalancers.new(client)
        self.load_balancer_backend_address_pools = Azure::ARM::Network::Api_2017_09_01::LoadBalancerBackendAddressPools.new(client)
        self.load_balancer_frontend_ipconfigurations = Azure::ARM::Network::Api_2017_09_01::LoadBalancerFrontendIPConfigurations.new(client)
        self.inbound_nat_rules = Azure::ARM::Network::Api_2017_09_01::InboundNatRules.new(client)
        self.load_balancer_load_balancing_rules = Azure::ARM::Network::Api_2017_09_01::LoadBalancerLoadBalancingRules.new(client)
        self.load_balancer_network_interfaces = Azure::ARM::Network::Api_2017_09_01::LoadBalancerNetworkInterfaces.new(client)
        self.load_balancer_probes = Azure::ARM::Network::Api_2017_09_01::LoadBalancerProbes.new(client)
        self.network_interfaces = Azure::ARM::Network::Api_2017_09_01::NetworkInterfaces.new(client)
        self.network_interface_ipconfigurations = Azure::ARM::Network::Api_2017_09_01::NetworkInterfaceIPConfigurations.new(client)
        self.network_interface_load_balancers = Azure::ARM::Network::Api_2017_09_01::NetworkInterfaceLoadBalancers.new(client)
        self.network_security_groups = Azure::ARM::Network::Api_2017_09_01::NetworkSecurityGroups.new(client)
        self.security_rules = Azure::ARM::Network::Api_2017_09_01::SecurityRules.new(client)
        self.default_security_rules = Azure::ARM::Network::Api_2017_09_01::DefaultSecurityRules.new(client)
        self.network_watchers = Azure::ARM::Network::Api_2017_09_01::NetworkWatchers.new(client)
        self.packet_captures = Azure::ARM::Network::Api_2017_09_01::PacketCaptures.new(client)
        self.public_ipaddresses = Azure::ARM::Network::Api_2017_09_01::PublicIPAddresses.new(client)
        self.route_filters = Azure::ARM::Network::Api_2017_09_01::RouteFilters.new(client)
        self.route_filter_rules = Azure::ARM::Network::Api_2017_09_01::RouteFilterRules.new(client)
        self.bgp_service_communities = Azure::ARM::Network::Api_2017_09_01::BgpServiceCommunities.new(client)
        self.route_tables = Azure::ARM::Network::Api_2017_09_01::RouteTables.new(client)
        self.routes = Azure::ARM::Network::Api_2017_09_01::Routes.new(client)
        self.usages = Azure::ARM::Network::Api_2017_09_01::Usages.new(client)
        self.virtual_networks = Azure::ARM::Network::Api_2017_09_01::VirtualNetworks.new(client)
        self.subnets = Azure::ARM::Network::Api_2017_09_01::Subnets.new(client)
        self.virtual_network_peerings = Azure::ARM::Network::Api_2017_09_01::VirtualNetworkPeerings.new(client)
        self.virtual_network_gateways = Azure::ARM::Network::Api_2017_09_01::VirtualNetworkGateways.new(client)
        self.virtual_network_gateway_connections = Azure::ARM::Network::Api_2017_09_01::VirtualNetworkGatewayConnections.new(client)
        self.local_network_gateways = Azure::ARM::Network::Api_2017_09_01::LocalNetworkGateways.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2017-09-01'
            client = Azure::ARM::Network::Api_2017_09_01::NetworkManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def effective_network_security_group_list_result
          Azure::ARM::Network::Api_2017_09_01::Models::EffectiveNetworkSecurityGroupListResult
        end
        def effective_route
          Azure::ARM::Network::Api_2017_09_01::Models::EffectiveRoute
        end
        def express_route_circuits_routes_table_summary_list_result
          Azure::ARM::Network::Api_2017_09_01::Models::ExpressRouteCircuitsRoutesTableSummaryListResult
        end
        def express_route_circuit_list_result
          Azure::ARM::Network::Api_2017_09_01::Models::ExpressRouteCircuitListResult
        end
        def vpn_device_script_parameters
          Azure::ARM::Network::Api_2017_09_01::Models::VpnDeviceScriptParameters
        end
        def express_route_service_provider_bandwidths_offered
          Azure::ARM::Network::Api_2017_09_01::Models::ExpressRouteServiceProviderBandwidthsOffered
        end
        def network_interface_dns_settings
          Azure::ARM::Network::Api_2017_09_01::Models::NetworkInterfaceDnsSettings
        end
        def route_filter_rule_list_result
          Azure::ARM::Network::Api_2017_09_01::Models::RouteFilterRuleListResult
        end
        def local_network_gateway_list_result
          Azure::ARM::Network::Api_2017_09_01::Models::LocalNetworkGatewayListResult
        end
        def express_route_service_provider_list_result
          Azure::ARM::Network::Api_2017_09_01::Models::ExpressRouteServiceProviderListResult
        end
        def connection_reset_shared_key
          Azure::ARM::Network::Api_2017_09_01::Models::ConnectionResetSharedKey
        end
        def load_balancer_sku
          Azure::ARM::Network::Api_2017_09_01::Models::LoadBalancerSku
        end
        def public_ipaddress_sku
          Azure::ARM::Network::Api_2017_09_01::Models::PublicIPAddressSku
        end
        def route_filter_list_result
          Azure::ARM::Network::Api_2017_09_01::Models::RouteFilterListResult
        end
        def virtual_network_gateway_connection_list_result
          Azure::ARM::Network::Api_2017_09_01::Models::VirtualNetworkGatewayConnectionListResult
        end
        def public_ipaddress_list_result
          Azure::ARM::Network::Api_2017_09_01::Models::PublicIPAddressListResult
        end
        def tunnel_connection_health
          Azure::ARM::Network::Api_2017_09_01::Models::TunnelConnectionHealth
        end
        def available_providers_list
          Azure::ARM::Network::Api_2017_09_01::Models::AvailableProvidersList
        end
        def bgp_peer_status_list_result
          Azure::ARM::Network::Api_2017_09_01::Models::BgpPeerStatusListResult
        end
        def available_providers_list_country
          Azure::ARM::Network::Api_2017_09_01::Models::AvailableProvidersListCountry
        end
        def virtual_network_gateway_list_result
          Azure::ARM::Network::Api_2017_09_01::Models::VirtualNetworkGatewayListResult
        end
        def available_providers_list_state
          Azure::ARM::Network::Api_2017_09_01::Models::AvailableProvidersListState
        end
        def vpn_client_parameters
          Azure::ARM::Network::Api_2017_09_01::Models::VpnClientParameters
        end
        def available_providers_list_city
          Azure::ARM::Network::Api_2017_09_01::Models::AvailableProvidersListCity
        end
        def application_gateway_backend_health_http_settings
          Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayBackendHealthHttpSettings
        end
        def load_balancer_list_result
          Azure::ARM::Network::Api_2017_09_01::Models::LoadBalancerListResult
        end
        def application_gateway_backend_health
          Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayBackendHealth
        end
        def inbound_nat_rule_list_result
          Azure::ARM::Network::Api_2017_09_01::Models::InboundNatRuleListResult
        end
        def application_gateway_ssl_policy
          Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewaySslPolicy
        end
        def load_balancer_backend_address_pool_list_result
          Azure::ARM::Network::Api_2017_09_01::Models::LoadBalancerBackendAddressPoolListResult
        end
        def bgp_peer_status
          Azure::ARM::Network::Api_2017_09_01::Models::BgpPeerStatus
        end
        def load_balancer_frontend_ipconfiguration_list_result
          Azure::ARM::Network::Api_2017_09_01::Models::LoadBalancerFrontendIPConfigurationListResult
        end
        def vpn_client_configuration
          Azure::ARM::Network::Api_2017_09_01::Models::VpnClientConfiguration
        end
        def load_balancer_load_balancing_rule_list_result
          Azure::ARM::Network::Api_2017_09_01::Models::LoadBalancerLoadBalancingRuleListResult
        end
        def virtual_network_list_usage_result
          Azure::ARM::Network::Api_2017_09_01::Models::VirtualNetworkListUsageResult
        end
        def load_balancer_probe_list_result
          Azure::ARM::Network::Api_2017_09_01::Models::LoadBalancerProbeListResult
        end
        def application_gateway_probe_health_response_match
          Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayProbeHealthResponseMatch
        end
        def network_interface_list_result
          Azure::ARM::Network::Api_2017_09_01::Models::NetworkInterfaceListResult
        end
        def ipaddress_availability_result
          Azure::ARM::Network::Api_2017_09_01::Models::IPAddressAvailabilityResult
        end
        def error_details
          Azure::ARM::Network::Api_2017_09_01::Models::ErrorDetails
        end
        def dhcp_options
          Azure::ARM::Network::Api_2017_09_01::Models::DhcpOptions
        end
        def error
          Azure::ARM::Network::Api_2017_09_01::Models::Error
        end
        def application_gateway_web_application_firewall_configuration
          Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayWebApplicationFirewallConfiguration
        end
        def azure_async_operation_result
          Azure::ARM::Network::Api_2017_09_01::Models::AzureAsyncOperationResult
        end
        def application_gateway_list_result
          Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayListResult
        end
        def network_interface_ipconfiguration_list_result
          Azure::ARM::Network::Api_2017_09_01::Models::NetworkInterfaceIPConfigurationListResult
        end
        def application_gateway_firewall_rule_group
          Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayFirewallRuleGroup
        end
        def network_interface_load_balancer_list_result
          Azure::ARM::Network::Api_2017_09_01::Models::NetworkInterfaceLoadBalancerListResult
        end
        def application_gateway_available_waf_rule_sets_result
          Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayAvailableWafRuleSetsResult
        end
        def effective_network_security_group_association
          Azure::ARM::Network::Api_2017_09_01::Models::EffectiveNetworkSecurityGroupAssociation
        end
        def usages_list_result
          Azure::ARM::Network::Api_2017_09_01::Models::UsagesListResult
        end
        def effective_network_security_rule
          Azure::ARM::Network::Api_2017_09_01::Models::EffectiveNetworkSecurityRule
        end
        def effective_network_security_group
          Azure::ARM::Network::Api_2017_09_01::Models::EffectiveNetworkSecurityGroup
        end
        def dns_name_availability_result
          Azure::ARM::Network::Api_2017_09_01::Models::DnsNameAvailabilityResult
        end
        def endpoint_services_list_result
          Azure::ARM::Network::Api_2017_09_01::Models::EndpointServicesListResult
        end
        def available_providers_list_parameters
          Azure::ARM::Network::Api_2017_09_01::Models::AvailableProvidersListParameters
        end
        def authorization_list_result
          Azure::ARM::Network::Api_2017_09_01::Models::AuthorizationListResult
        end
        def effective_route_list_result
          Azure::ARM::Network::Api_2017_09_01::Models::EffectiveRouteListResult
        end
        def route_list_result
          Azure::ARM::Network::Api_2017_09_01::Models::RouteListResult
        end
        def security_rule_list_result
          Azure::ARM::Network::Api_2017_09_01::Models::SecurityRuleListResult
        end
        def route_table_list_result
          Azure::ARM::Network::Api_2017_09_01::Models::RouteTableListResult
        end
        def network_security_group_list_result
          Azure::ARM::Network::Api_2017_09_01::Models::NetworkSecurityGroupListResult
        end
        def ipv6_express_route_circuit_peering_config
          Azure::ARM::Network::Api_2017_09_01::Models::Ipv6ExpressRouteCircuitPeeringConfig
        end
        def azure_reachability_report
          Azure::ARM::Network::Api_2017_09_01::Models::AzureReachabilityReport
        end
        def express_route_circuit_sku
          Azure::ARM::Network::Api_2017_09_01::Models::ExpressRouteCircuitSku
        end
        def network_watcher_list_result
          Azure::ARM::Network::Api_2017_09_01::Models::NetworkWatcherListResult
        end
        def bgpcommunity
          Azure::ARM::Network::Api_2017_09_01::Models::BGPCommunity
        end
        def topology_parameters
          Azure::ARM::Network::Api_2017_09_01::Models::TopologyParameters
        end
        def express_route_circuits_arp_table_list_result
          Azure::ARM::Network::Api_2017_09_01::Models::ExpressRouteCircuitsArpTableListResult
        end
        def topology_association
          Azure::ARM::Network::Api_2017_09_01::Models::TopologyAssociation
        end
        def express_route_circuits_routes_table_list_result
          Azure::ARM::Network::Api_2017_09_01::Models::ExpressRouteCircuitsRoutesTableListResult
        end
        def topology_resource
          Azure::ARM::Network::Api_2017_09_01::Models::TopologyResource
        end
        def topology
          Azure::ARM::Network::Api_2017_09_01::Models::Topology
        end
        def virtual_network_connection_gateway_reference
          Azure::ARM::Network::Api_2017_09_01::Models::VirtualNetworkConnectionGatewayReference
        end
        def verification_ipflow_parameters
          Azure::ARM::Network::Api_2017_09_01::Models::VerificationIPFlowParameters
        end
        def service_endpoint_properties_format
          Azure::ARM::Network::Api_2017_09_01::Models::ServiceEndpointPropertiesFormat
        end
        def verification_ipflow_result
          Azure::ARM::Network::Api_2017_09_01::Models::VerificationIPFlowResult
        end
        def ipsec_policy
          Azure::ARM::Network::Api_2017_09_01::Models::IpsecPolicy
        end
        def next_hop_parameters
          Azure::ARM::Network::Api_2017_09_01::Models::NextHopParameters
        end
        def application_gateway_backend_address
          Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayBackendAddress
        end
        def next_hop_result
          Azure::ARM::Network::Api_2017_09_01::Models::NextHopResult
        end
        def application_gateway_backend_health_server
          Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayBackendHealthServer
        end
        def security_group_view_parameters
          Azure::ARM::Network::Api_2017_09_01::Models::SecurityGroupViewParameters
        end
        def application_gateway_sku
          Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewaySku
        end
        def network_interface_association
          Azure::ARM::Network::Api_2017_09_01::Models::NetworkInterfaceAssociation
        end
        def bgp_settings
          Azure::ARM::Network::Api_2017_09_01::Models::BgpSettings
        end
        def subnet_association
          Azure::ARM::Network::Api_2017_09_01::Models::SubnetAssociation
        end
        def virtual_network_usage
          Azure::ARM::Network::Api_2017_09_01::Models::VirtualNetworkUsage
        end
        def security_rule_associations
          Azure::ARM::Network::Api_2017_09_01::Models::SecurityRuleAssociations
        end
        def virtual_network_list_result
          Azure::ARM::Network::Api_2017_09_01::Models::VirtualNetworkListResult
        end
        def security_group_network_interface
          Azure::ARM::Network::Api_2017_09_01::Models::SecurityGroupNetworkInterface
        end
        def address_space
          Azure::ARM::Network::Api_2017_09_01::Models::AddressSpace
        end
        def security_group_view_result
          Azure::ARM::Network::Api_2017_09_01::Models::SecurityGroupViewResult
        end
        def virtual_network_peering_list_result
          Azure::ARM::Network::Api_2017_09_01::Models::VirtualNetworkPeeringListResult
        end
        def packet_capture_storage_location
          Azure::ARM::Network::Api_2017_09_01::Models::PacketCaptureStorageLocation
        end
        def application_gateway_available_ssl_predefined_policies
          Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayAvailableSslPredefinedPolicies
        end
        def packet_capture_filter
          Azure::ARM::Network::Api_2017_09_01::Models::PacketCaptureFilter
        end
        def usage
          Azure::ARM::Network::Api_2017_09_01::Models::Usage
        end
        def packet_capture_parameters
          Azure::ARM::Network::Api_2017_09_01::Models::PacketCaptureParameters
        end
        def express_route_circuit_peering_config
          Azure::ARM::Network::Api_2017_09_01::Models::ExpressRouteCircuitPeeringConfig
        end
        def packet_capture
          Azure::ARM::Network::Api_2017_09_01::Models::PacketCapture
        end
        def bgp_service_community_list_result
          Azure::ARM::Network::Api_2017_09_01::Models::BgpServiceCommunityListResult
        end
        def packet_capture_result
          Azure::ARM::Network::Api_2017_09_01::Models::PacketCaptureResult
        end
        def express_route_circuit_service_provider_properties
          Azure::ARM::Network::Api_2017_09_01::Models::ExpressRouteCircuitServiceProviderProperties
        end
        def packet_capture_list_result
          Azure::ARM::Network::Api_2017_09_01::Models::PacketCaptureListResult
        end
        def express_route_circuit_routes_table
          Azure::ARM::Network::Api_2017_09_01::Models::ExpressRouteCircuitRoutesTable
        end
        def packet_capture_query_status_result
          Azure::ARM::Network::Api_2017_09_01::Models::PacketCaptureQueryStatusResult
        end
        def virtual_network_gateway_list_connections_result
          Azure::ARM::Network::Api_2017_09_01::Models::VirtualNetworkGatewayListConnectionsResult
        end
        def troubleshooting_parameters
          Azure::ARM::Network::Api_2017_09_01::Models::TroubleshootingParameters
        end
        def public_ipaddress_dns_settings
          Azure::ARM::Network::Api_2017_09_01::Models::PublicIPAddressDnsSettings
        end
        def query_troubleshooting_parameters
          Azure::ARM::Network::Api_2017_09_01::Models::QueryTroubleshootingParameters
        end
        def application_gateway_connection_draining
          Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayConnectionDraining
        end
        def troubleshooting_recommended_actions
          Azure::ARM::Network::Api_2017_09_01::Models::TroubleshootingRecommendedActions
        end
        def gateway_route
          Azure::ARM::Network::Api_2017_09_01::Models::GatewayRoute
        end
        def troubleshooting_details
          Azure::ARM::Network::Api_2017_09_01::Models::TroubleshootingDetails
        end
        def virtual_network_usage_name
          Azure::ARM::Network::Api_2017_09_01::Models::VirtualNetworkUsageName
        end
        def troubleshooting_result
          Azure::ARM::Network::Api_2017_09_01::Models::TroubleshootingResult
        end
        def application_gateway_firewall_rule
          Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayFirewallRule
        end
        def retention_policy_parameters
          Azure::ARM::Network::Api_2017_09_01::Models::RetentionPolicyParameters
        end
        def application_security_group_list_result
          Azure::ARM::Network::Api_2017_09_01::Models::ApplicationSecurityGroupListResult
        end
        def flow_log_status_parameters
          Azure::ARM::Network::Api_2017_09_01::Models::FlowLogStatusParameters
        end
        def express_route_circuit_stats
          Azure::ARM::Network::Api_2017_09_01::Models::ExpressRouteCircuitStats
        end
        def flow_log_information
          Azure::ARM::Network::Api_2017_09_01::Models::FlowLogInformation
        end
        def express_route_circuit_arp_table
          Azure::ARM::Network::Api_2017_09_01::Models::ExpressRouteCircuitArpTable
        end
        def connectivity_source
          Azure::ARM::Network::Api_2017_09_01::Models::ConnectivitySource
        end
        def connection_shared_key
          Azure::ARM::Network::Api_2017_09_01::Models::ConnectionSharedKey
        end
        def connectivity_destination
          Azure::ARM::Network::Api_2017_09_01::Models::ConnectivityDestination
        end
        def application_gateway_backend_health_pool
          Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayBackendHealthPool
        end
        def connectivity_parameters
          Azure::ARM::Network::Api_2017_09_01::Models::ConnectivityParameters
        end
        def application_gateway_firewall_disabled_rule_group
          Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayFirewallDisabledRuleGroup
        end
        def connectivity_issue
          Azure::ARM::Network::Api_2017_09_01::Models::ConnectivityIssue
        end
        def usage_name
          Azure::ARM::Network::Api_2017_09_01::Models::UsageName
        end
        def connectivity_hop
          Azure::ARM::Network::Api_2017_09_01::Models::ConnectivityHop
        end
        def express_route_circuit_routes_table_summary
          Azure::ARM::Network::Api_2017_09_01::Models::ExpressRouteCircuitRoutesTableSummary
        end
        def connectivity_information
          Azure::ARM::Network::Api_2017_09_01::Models::ConnectivityInformation
        end
        def virtual_network_gateway_sku
          Azure::ARM::Network::Api_2017_09_01::Models::VirtualNetworkGatewaySku
        end
        def azure_reachability_report_location
          Azure::ARM::Network::Api_2017_09_01::Models::AzureReachabilityReportLocation
        end
        def express_route_circuit_peering_list_result
          Azure::ARM::Network::Api_2017_09_01::Models::ExpressRouteCircuitPeeringListResult
        end
        def azure_reachability_report_parameters
          Azure::ARM::Network::Api_2017_09_01::Models::AzureReachabilityReportParameters
        end
        def subnet_list_result
          Azure::ARM::Network::Api_2017_09_01::Models::SubnetListResult
        end
        def azure_reachability_report_latency_info
          Azure::ARM::Network::Api_2017_09_01::Models::AzureReachabilityReportLatencyInfo
        end
        def gateway_route_list_result
          Azure::ARM::Network::Api_2017_09_01::Models::GatewayRouteListResult
        end
        def azure_reachability_report_item
          Azure::ARM::Network::Api_2017_09_01::Models::AzureReachabilityReportItem
        end
        def backend_address_pool
          Azure::ARM::Network::Api_2017_09_01::Models::BackendAddressPool
        end
        def inbound_nat_rule
          Azure::ARM::Network::Api_2017_09_01::Models::InboundNatRule
        end
        def application_security_group
          Azure::ARM::Network::Api_2017_09_01::Models::ApplicationSecurityGroup
        end
        def security_rule
          Azure::ARM::Network::Api_2017_09_01::Models::SecurityRule
        end
        def network_interface
          Azure::ARM::Network::Api_2017_09_01::Models::NetworkInterface
        end
        def network_security_group
          Azure::ARM::Network::Api_2017_09_01::Models::NetworkSecurityGroup
        end
        def route
          Azure::ARM::Network::Api_2017_09_01::Models::Route
        end
        def route_table
          Azure::ARM::Network::Api_2017_09_01::Models::RouteTable
        end
        def public_ipaddress
          Azure::ARM::Network::Api_2017_09_01::Models::PublicIPAddress
        end
        def ipconfiguration
          Azure::ARM::Network::Api_2017_09_01::Models::IPConfiguration
        end
        def resource_navigation_link
          Azure::ARM::Network::Api_2017_09_01::Models::ResourceNavigationLink
        end
        def subnet
          Azure::ARM::Network::Api_2017_09_01::Models::Subnet
        end
        def network_interface_ipconfiguration
          Azure::ARM::Network::Api_2017_09_01::Models::NetworkInterfaceIPConfiguration
        end
        def application_gateway_backend_address_pool
          Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayBackendAddressPool
        end
        def application_gateway_backend_http_settings
          Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayBackendHttpSettings
        end
        def application_gateway_ipconfiguration
          Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayIPConfiguration
        end
        def application_gateway_authentication_certificate
          Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayAuthenticationCertificate
        end
        def application_gateway_ssl_certificate
          Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewaySslCertificate
        end
        def application_gateway_frontend_ipconfiguration
          Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayFrontendIPConfiguration
        end
        def application_gateway_frontend_port
          Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayFrontendPort
        end
        def application_gateway_http_listener
          Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayHttpListener
        end
        def application_gateway_path_rule
          Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayPathRule
        end
        def application_gateway_probe
          Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayProbe
        end
        def application_gateway_request_routing_rule
          Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayRequestRoutingRule
        end
        def application_gateway_redirect_configuration
          Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayRedirectConfiguration
        end
        def application_gateway_url_path_map
          Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayUrlPathMap
        end
        def application_gateway
          Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGateway
        end
        def application_gateway_firewall_rule_set
          Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayFirewallRuleSet
        end
        def application_gateway_available_ssl_options
          Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayAvailableSslOptions
        end
        def application_gateway_ssl_predefined_policy
          Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewaySslPredefinedPolicy
        end
        def endpoint_service_result
          Azure::ARM::Network::Api_2017_09_01::Models::EndpointServiceResult
        end
        def express_route_circuit_authorization
          Azure::ARM::Network::Api_2017_09_01::Models::ExpressRouteCircuitAuthorization
        end
        def route_filter_rule
          Azure::ARM::Network::Api_2017_09_01::Models::RouteFilterRule
        end
        def express_route_circuit_peering
          Azure::ARM::Network::Api_2017_09_01::Models::ExpressRouteCircuitPeering
        end
        def route_filter
          Azure::ARM::Network::Api_2017_09_01::Models::RouteFilter
        end
        def express_route_circuit
          Azure::ARM::Network::Api_2017_09_01::Models::ExpressRouteCircuit
        end
        def express_route_service_provider
          Azure::ARM::Network::Api_2017_09_01::Models::ExpressRouteServiceProvider
        end
        def frontend_ipconfiguration
          Azure::ARM::Network::Api_2017_09_01::Models::FrontendIPConfiguration
        end
        def load_balancing_rule
          Azure::ARM::Network::Api_2017_09_01::Models::LoadBalancingRule
        end
        def probe
          Azure::ARM::Network::Api_2017_09_01::Models::Probe
        end
        def inbound_nat_pool
          Azure::ARM::Network::Api_2017_09_01::Models::InboundNatPool
        end
        def outbound_nat_rule
          Azure::ARM::Network::Api_2017_09_01::Models::OutboundNatRule
        end
        def load_balancer
          Azure::ARM::Network::Api_2017_09_01::Models::LoadBalancer
        end
        def network_watcher
          Azure::ARM::Network::Api_2017_09_01::Models::NetworkWatcher
        end
        def patch_route_filter_rule
          Azure::ARM::Network::Api_2017_09_01::Models::PatchRouteFilterRule
        end
        def patch_route_filter
          Azure::ARM::Network::Api_2017_09_01::Models::PatchRouteFilter
        end
        def bgp_service_community
          Azure::ARM::Network::Api_2017_09_01::Models::BgpServiceCommunity
        end
        def virtual_network_peering
          Azure::ARM::Network::Api_2017_09_01::Models::VirtualNetworkPeering
        end
        def virtual_network
          Azure::ARM::Network::Api_2017_09_01::Models::VirtualNetwork
        end
        def virtual_network_gateway_ipconfiguration
          Azure::ARM::Network::Api_2017_09_01::Models::VirtualNetworkGatewayIPConfiguration
        end
        def vpn_client_root_certificate
          Azure::ARM::Network::Api_2017_09_01::Models::VpnClientRootCertificate
        end
        def vpn_client_revoked_certificate
          Azure::ARM::Network::Api_2017_09_01::Models::VpnClientRevokedCertificate
        end
        def virtual_network_gateway
          Azure::ARM::Network::Api_2017_09_01::Models::VirtualNetworkGateway
        end
        def local_network_gateway
          Azure::ARM::Network::Api_2017_09_01::Models::LocalNetworkGateway
        end
        def virtual_network_gateway_connection
          Azure::ARM::Network::Api_2017_09_01::Models::VirtualNetworkGatewayConnection
        end
        def virtual_network_gateway_connection_list_entity
          Azure::ARM::Network::Api_2017_09_01::Models::VirtualNetworkGatewayConnectionListEntity
        end
        def transport_protocol
          Azure::ARM::Network::Api_2017_09_01::Models::TransportProtocol
        end
        def ipallocation_method
          Azure::ARM::Network::Api_2017_09_01::Models::IPAllocationMethod
        end
        def ipversion
          Azure::ARM::Network::Api_2017_09_01::Models::IPVersion
        end
        def security_rule_protocol
          Azure::ARM::Network::Api_2017_09_01::Models::SecurityRuleProtocol
        end
        def security_rule_access
          Azure::ARM::Network::Api_2017_09_01::Models::SecurityRuleAccess
        end
        def security_rule_direction
          Azure::ARM::Network::Api_2017_09_01::Models::SecurityRuleDirection
        end
        def route_next_hop_type
          Azure::ARM::Network::Api_2017_09_01::Models::RouteNextHopType
        end
        def public_ipaddress_sku_name
          Azure::ARM::Network::Api_2017_09_01::Models::PublicIPAddressSkuName
        end
        def application_gateway_protocol
          Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayProtocol
        end
        def application_gateway_cookie_based_affinity
          Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayCookieBasedAffinity
        end
        def application_gateway_backend_health_server_health
          Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayBackendHealthServerHealth
        end
        def application_gateway_sku_name
          Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewaySkuName
        end
        def application_gateway_tier
          Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayTier
        end
        def application_gateway_ssl_protocol
          Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewaySslProtocol
        end
        def application_gateway_ssl_policy_type
          Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewaySslPolicyType
        end
        def application_gateway_ssl_policy_name
          Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewaySslPolicyName
        end
        def application_gateway_ssl_cipher_suite
          Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewaySslCipherSuite
        end
        def application_gateway_request_routing_rule_type
          Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayRequestRoutingRuleType
        end
        def application_gateway_redirect_type
          Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayRedirectType
        end
        def application_gateway_operational_state
          Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayOperationalState
        end
        def application_gateway_firewall_mode
          Azure::ARM::Network::Api_2017_09_01::Models::ApplicationGatewayFirewallMode
        end
        def authorization_use_status
          Azure::ARM::Network::Api_2017_09_01::Models::AuthorizationUseStatus
        end
        def express_route_circuit_peering_advertised_public_prefix_state
          Azure::ARM::Network::Api_2017_09_01::Models::ExpressRouteCircuitPeeringAdvertisedPublicPrefixState
        end
        def access
          Azure::ARM::Network::Api_2017_09_01::Models::Access
        end
        def express_route_circuit_peering_type
          Azure::ARM::Network::Api_2017_09_01::Models::ExpressRouteCircuitPeeringType
        end
        def express_route_circuit_peering_state
          Azure::ARM::Network::Api_2017_09_01::Models::ExpressRouteCircuitPeeringState
        end
        def express_route_circuit_sku_tier
          Azure::ARM::Network::Api_2017_09_01::Models::ExpressRouteCircuitSkuTier
        end
        def express_route_circuit_sku_family
          Azure::ARM::Network::Api_2017_09_01::Models::ExpressRouteCircuitSkuFamily
        end
        def service_provider_provisioning_state
          Azure::ARM::Network::Api_2017_09_01::Models::ServiceProviderProvisioningState
        end
        def load_balancer_sku_name
          Azure::ARM::Network::Api_2017_09_01::Models::LoadBalancerSkuName
        end
        def load_distribution
          Azure::ARM::Network::Api_2017_09_01::Models::LoadDistribution
        end
        def probe_protocol
          Azure::ARM::Network::Api_2017_09_01::Models::ProbeProtocol
        end
        def network_operation_status
          Azure::ARM::Network::Api_2017_09_01::Models::NetworkOperationStatus
        end
        def effective_security_rule_protocol
          Azure::ARM::Network::Api_2017_09_01::Models::EffectiveSecurityRuleProtocol
        end
        def effective_route_source
          Azure::ARM::Network::Api_2017_09_01::Models::EffectiveRouteSource
        end
        def effective_route_state
          Azure::ARM::Network::Api_2017_09_01::Models::EffectiveRouteState
        end
        def provisioning_state
          Azure::ARM::Network::Api_2017_09_01::Models::ProvisioningState
        end
        def association_type
          Azure::ARM::Network::Api_2017_09_01::Models::AssociationType
        end
        def direction
          Azure::ARM::Network::Api_2017_09_01::Models::Direction
        end
        def protocol
          Azure::ARM::Network::Api_2017_09_01::Models::Protocol
        end
        def next_hop_type
          Azure::ARM::Network::Api_2017_09_01::Models::NextHopType
        end
        def pc_protocol
          Azure::ARM::Network::Api_2017_09_01::Models::PcProtocol
        end
        def pc_status
          Azure::ARM::Network::Api_2017_09_01::Models::PcStatus
        end
        def pc_error
          Azure::ARM::Network::Api_2017_09_01::Models::PcError
        end
        def origin
          Azure::ARM::Network::Api_2017_09_01::Models::Origin
        end
        def severity
          Azure::ARM::Network::Api_2017_09_01::Models::Severity
        end
        def issue_type
          Azure::ARM::Network::Api_2017_09_01::Models::IssueType
        end
        def connection_status
          Azure::ARM::Network::Api_2017_09_01::Models::ConnectionStatus
        end
        def virtual_network_peering_state
          Azure::ARM::Network::Api_2017_09_01::Models::VirtualNetworkPeeringState
        end
        def virtual_network_gateway_type
          Azure::ARM::Network::Api_2017_09_01::Models::VirtualNetworkGatewayType
        end
        def vpn_type
          Azure::ARM::Network::Api_2017_09_01::Models::VpnType
        end
        def virtual_network_gateway_sku_name
          Azure::ARM::Network::Api_2017_09_01::Models::VirtualNetworkGatewaySkuName
        end
        def virtual_network_gateway_sku_tier
          Azure::ARM::Network::Api_2017_09_01::Models::VirtualNetworkGatewaySkuTier
        end
        def vpn_client_protocol
          Azure::ARM::Network::Api_2017_09_01::Models::VpnClientProtocol
        end
        def bgp_peer_state
          Azure::ARM::Network::Api_2017_09_01::Models::BgpPeerState
        end
        def processor_architecture
          Azure::ARM::Network::Api_2017_09_01::Models::ProcessorArchitecture
        end
        def authentication_method
          Azure::ARM::Network::Api_2017_09_01::Models::AuthenticationMethod
        end
        def virtual_network_gateway_connection_status
          Azure::ARM::Network::Api_2017_09_01::Models::VirtualNetworkGatewayConnectionStatus
        end
        def virtual_network_gateway_connection_type
          Azure::ARM::Network::Api_2017_09_01::Models::VirtualNetworkGatewayConnectionType
        end
        def ipsec_encryption
          Azure::ARM::Network::Api_2017_09_01::Models::IpsecEncryption
        end
        def ipsec_integrity
          Azure::ARM::Network::Api_2017_09_01::Models::IpsecIntegrity
        end
        def ike_encryption
          Azure::ARM::Network::Api_2017_09_01::Models::IkeEncryption
        end
        def ike_integrity
          Azure::ARM::Network::Api_2017_09_01::Models::IkeIntegrity
        end
        def dh_group
          Azure::ARM::Network::Api_2017_09_01::Models::DhGroup
        end
        def pfs_group
          Azure::ARM::Network::Api_2017_09_01::Models::PfsGroup
        end
      end
    end
  end
end
