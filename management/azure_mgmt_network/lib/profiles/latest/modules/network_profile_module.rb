# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_network'

module Azure::Network::Profiles::Latest
  module Mgmt
    ApplicationGateways = Azure::Network::Mgmt::V2017_09_01::ApplicationGateways
    ApplicationSecurityGroups = Azure::Network::Mgmt::V2017_09_01::ApplicationSecurityGroups
    AvailableEndpointServices = Azure::Network::Mgmt::V2017_09_01::AvailableEndpointServices
    ExpressRouteCircuitAuthorizations = Azure::Network::Mgmt::V2017_09_01::ExpressRouteCircuitAuthorizations
    ExpressRouteCircuitPeerings = Azure::Network::Mgmt::V2017_09_01::ExpressRouteCircuitPeerings
    ExpressRouteCircuits = Azure::Network::Mgmt::V2017_09_01::ExpressRouteCircuits
    ExpressRouteServiceProviders = Azure::Network::Mgmt::V2017_09_01::ExpressRouteServiceProviders
    LoadBalancers = Azure::Network::Mgmt::V2017_09_01::LoadBalancers
    LoadBalancerBackendAddressPools = Azure::Network::Mgmt::V2017_09_01::LoadBalancerBackendAddressPools
    LoadBalancerFrontendIPConfigurations = Azure::Network::Mgmt::V2017_09_01::LoadBalancerFrontendIPConfigurations
    InboundNatRules = Azure::Network::Mgmt::V2017_09_01::InboundNatRules
    LoadBalancerLoadBalancingRules = Azure::Network::Mgmt::V2017_09_01::LoadBalancerLoadBalancingRules
    LoadBalancerNetworkInterfaces = Azure::Network::Mgmt::V2017_09_01::LoadBalancerNetworkInterfaces
    LoadBalancerProbes = Azure::Network::Mgmt::V2017_09_01::LoadBalancerProbes
    NetworkInterfaces = Azure::Network::Mgmt::V2017_09_01::NetworkInterfaces
    NetworkInterfaceIPConfigurations = Azure::Network::Mgmt::V2017_09_01::NetworkInterfaceIPConfigurations
    NetworkInterfaceLoadBalancers = Azure::Network::Mgmt::V2017_09_01::NetworkInterfaceLoadBalancers
    NetworkSecurityGroups = Azure::Network::Mgmt::V2017_09_01::NetworkSecurityGroups
    SecurityRules = Azure::Network::Mgmt::V2017_09_01::SecurityRules
    DefaultSecurityRules = Azure::Network::Mgmt::V2017_09_01::DefaultSecurityRules
    NetworkWatchers = Azure::Network::Mgmt::V2017_09_01::NetworkWatchers
    PacketCaptures = Azure::Network::Mgmt::V2017_09_01::PacketCaptures
    PublicIPAddresses = Azure::Network::Mgmt::V2017_09_01::PublicIPAddresses
    RouteFilters = Azure::Network::Mgmt::V2017_09_01::RouteFilters
    RouteFilterRules = Azure::Network::Mgmt::V2017_09_01::RouteFilterRules
    BgpServiceCommunities = Azure::Network::Mgmt::V2017_09_01::BgpServiceCommunities
    RouteTables = Azure::Network::Mgmt::V2017_09_01::RouteTables
    Routes = Azure::Network::Mgmt::V2017_09_01::Routes
    Usages = Azure::Network::Mgmt::V2017_09_01::Usages
    VirtualNetworks = Azure::Network::Mgmt::V2017_09_01::VirtualNetworks
    Subnets = Azure::Network::Mgmt::V2017_09_01::Subnets
    VirtualNetworkPeerings = Azure::Network::Mgmt::V2017_09_01::VirtualNetworkPeerings
    VirtualNetworkGateways = Azure::Network::Mgmt::V2017_09_01::VirtualNetworkGateways
    VirtualNetworkGatewayConnections = Azure::Network::Mgmt::V2017_09_01::VirtualNetworkGatewayConnections
    LocalNetworkGateways = Azure::Network::Mgmt::V2017_09_01::LocalNetworkGateways

    module Models
      EffectiveNetworkSecurityGroupListResult = Azure::Network::Mgmt::V2017_09_01::Models::EffectiveNetworkSecurityGroupListResult
      SubResource = Azure::Network::Mgmt::V2017_09_01::Models::SubResource
      EffectiveRoute = Azure::Network::Mgmt::V2017_09_01::Models::EffectiveRoute
      ExpressRouteCircuitListResult = Azure::Network::Mgmt::V2017_09_01::Models::ExpressRouteCircuitListResult
      ExpressRouteServiceProviderBandwidthsOffered = Azure::Network::Mgmt::V2017_09_01::Models::ExpressRouteServiceProviderBandwidthsOffered
      NetworkInterfaceDnsSettings = Azure::Network::Mgmt::V2017_09_01::Models::NetworkInterfaceDnsSettings
      BGPCommunity = Azure::Network::Mgmt::V2017_09_01::Models::BGPCommunity
      VirtualNetworkConnectionGatewayReference = Azure::Network::Mgmt::V2017_09_01::Models::VirtualNetworkConnectionGatewayReference
      ExpressRouteServiceProviderListResult = Azure::Network::Mgmt::V2017_09_01::Models::ExpressRouteServiceProviderListResult
      ConnectionSharedKey = Azure::Network::Mgmt::V2017_09_01::Models::ConnectionSharedKey
      LoadBalancerSku = Azure::Network::Mgmt::V2017_09_01::Models::LoadBalancerSku
      PublicIPAddressSku = Azure::Network::Mgmt::V2017_09_01::Models::PublicIPAddressSku
      RouteFilterRuleListResult = Azure::Network::Mgmt::V2017_09_01::Models::RouteFilterRuleListResult
      ConnectionResetSharedKey = Azure::Network::Mgmt::V2017_09_01::Models::ConnectionResetSharedKey
      RouteFilterListResult = Azure::Network::Mgmt::V2017_09_01::Models::RouteFilterListResult
      IpsecPolicy = Azure::Network::Mgmt::V2017_09_01::Models::IpsecPolicy
      PublicIPAddressListResult = Azure::Network::Mgmt::V2017_09_01::Models::PublicIPAddressListResult
      GatewayRouteListResult = Azure::Network::Mgmt::V2017_09_01::Models::GatewayRouteListResult
      AvailableProvidersList = Azure::Network::Mgmt::V2017_09_01::Models::AvailableProvidersList
      BgpPeerStatusListResult = Azure::Network::Mgmt::V2017_09_01::Models::BgpPeerStatusListResult
      AvailableProvidersListCountry = Azure::Network::Mgmt::V2017_09_01::Models::AvailableProvidersListCountry
      VirtualNetworkGatewayListResult = Azure::Network::Mgmt::V2017_09_01::Models::VirtualNetworkGatewayListResult
      AvailableProvidersListState = Azure::Network::Mgmt::V2017_09_01::Models::AvailableProvidersListState
      ApplicationGatewayBackendHealthHttpSettings = Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayBackendHealthHttpSettings
      LoadBalancerListResult = Azure::Network::Mgmt::V2017_09_01::Models::LoadBalancerListResult
      ApplicationGatewayBackendHealth = Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayBackendHealth
      InboundNatRuleListResult = Azure::Network::Mgmt::V2017_09_01::Models::InboundNatRuleListResult
      ApplicationGatewaySslPolicy = Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewaySslPolicy
      LoadBalancerBackendAddressPoolListResult = Azure::Network::Mgmt::V2017_09_01::Models::LoadBalancerBackendAddressPoolListResult
      GatewayRoute = Azure::Network::Mgmt::V2017_09_01::Models::GatewayRoute
      LoadBalancerFrontendIPConfigurationListResult = Azure::Network::Mgmt::V2017_09_01::Models::LoadBalancerFrontendIPConfigurationListResult
      BgpSettings = Azure::Network::Mgmt::V2017_09_01::Models::BgpSettings
      LoadBalancerLoadBalancingRuleListResult = Azure::Network::Mgmt::V2017_09_01::Models::LoadBalancerLoadBalancingRuleListResult
      VirtualNetworkGatewaySku = Azure::Network::Mgmt::V2017_09_01::Models::VirtualNetworkGatewaySku
      LoadBalancerProbeListResult = Azure::Network::Mgmt::V2017_09_01::Models::LoadBalancerProbeListResult
      ApplicationGatewayProbeHealthResponseMatch = Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayProbeHealthResponseMatch
      NetworkInterfaceListResult = Azure::Network::Mgmt::V2017_09_01::Models::NetworkInterfaceListResult
      VirtualNetworkUsageName = Azure::Network::Mgmt::V2017_09_01::Models::VirtualNetworkUsageName
      ErrorDetails = Azure::Network::Mgmt::V2017_09_01::Models::ErrorDetails
      VirtualNetworkListResult = Azure::Network::Mgmt::V2017_09_01::Models::VirtualNetworkListResult
      Error = Azure::Network::Mgmt::V2017_09_01::Models::Error
      ApplicationGatewayWebApplicationFirewallConfiguration = Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayWebApplicationFirewallConfiguration
      AzureAsyncOperationResult = Azure::Network::Mgmt::V2017_09_01::Models::AzureAsyncOperationResult
      ApplicationGatewayListResult = Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayListResult
      NetworkInterfaceIPConfigurationListResult = Azure::Network::Mgmt::V2017_09_01::Models::NetworkInterfaceIPConfigurationListResult
      ApplicationGatewayFirewallRuleGroup = Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayFirewallRuleGroup
      NetworkInterfaceLoadBalancerListResult = Azure::Network::Mgmt::V2017_09_01::Models::NetworkInterfaceLoadBalancerListResult
      ApplicationGatewayAvailableWafRuleSetsResult = Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayAvailableWafRuleSetsResult
      EffectiveNetworkSecurityGroupAssociation = Azure::Network::Mgmt::V2017_09_01::Models::EffectiveNetworkSecurityGroupAssociation
      AddressSpace = Azure::Network::Mgmt::V2017_09_01::Models::AddressSpace
      EffectiveNetworkSecurityRule = Azure::Network::Mgmt::V2017_09_01::Models::EffectiveNetworkSecurityRule
      Resource = Azure::Network::Mgmt::V2017_09_01::Models::Resource
      EffectiveNetworkSecurityGroup = Azure::Network::Mgmt::V2017_09_01::Models::EffectiveNetworkSecurityGroup
      ApplicationSecurityGroupListResult = Azure::Network::Mgmt::V2017_09_01::Models::ApplicationSecurityGroupListResult
      DnsNameAvailabilityResult = Azure::Network::Mgmt::V2017_09_01::Models::DnsNameAvailabilityResult
      AzureReachabilityReport = Azure::Network::Mgmt::V2017_09_01::Models::AzureReachabilityReport
      EndpointServicesListResult = Azure::Network::Mgmt::V2017_09_01::Models::EndpointServicesListResult
      AvailableProvidersListCity = Azure::Network::Mgmt::V2017_09_01::Models::AvailableProvidersListCity
      AuthorizationListResult = Azure::Network::Mgmt::V2017_09_01::Models::AuthorizationListResult
      EffectiveRouteListResult = Azure::Network::Mgmt::V2017_09_01::Models::EffectiveRouteListResult
      UsageName = Azure::Network::Mgmt::V2017_09_01::Models::UsageName
      SecurityRuleListResult = Azure::Network::Mgmt::V2017_09_01::Models::SecurityRuleListResult
      RouteListResult = Azure::Network::Mgmt::V2017_09_01::Models::RouteListResult
      NetworkSecurityGroupListResult = Azure::Network::Mgmt::V2017_09_01::Models::NetworkSecurityGroupListResult
      Ipv6ExpressRouteCircuitPeeringConfig = Azure::Network::Mgmt::V2017_09_01::Models::Ipv6ExpressRouteCircuitPeeringConfig
      AvailableProvidersListParameters = Azure::Network::Mgmt::V2017_09_01::Models::AvailableProvidersListParameters
      ExpressRouteCircuitSku = Azure::Network::Mgmt::V2017_09_01::Models::ExpressRouteCircuitSku
      NetworkWatcherListResult = Azure::Network::Mgmt::V2017_09_01::Models::NetworkWatcherListResult
      BgpServiceCommunityListResult = Azure::Network::Mgmt::V2017_09_01::Models::BgpServiceCommunityListResult
      TopologyParameters = Azure::Network::Mgmt::V2017_09_01::Models::TopologyParameters
      ExpressRouteCircuitsArpTableListResult = Azure::Network::Mgmt::V2017_09_01::Models::ExpressRouteCircuitsArpTableListResult
      TopologyAssociation = Azure::Network::Mgmt::V2017_09_01::Models::TopologyAssociation
      ExpressRouteCircuitsRoutesTableListResult = Azure::Network::Mgmt::V2017_09_01::Models::ExpressRouteCircuitsRoutesTableListResult
      TopologyResource = Azure::Network::Mgmt::V2017_09_01::Models::TopologyResource
      ExpressRouteCircuitsRoutesTableSummaryListResult = Azure::Network::Mgmt::V2017_09_01::Models::ExpressRouteCircuitsRoutesTableSummaryListResult
      Topology = Azure::Network::Mgmt::V2017_09_01::Models::Topology
      VirtualNetworkGatewayListConnectionsResult = Azure::Network::Mgmt::V2017_09_01::Models::VirtualNetworkGatewayListConnectionsResult
      VerificationIPFlowParameters = Azure::Network::Mgmt::V2017_09_01::Models::VerificationIPFlowParameters
      ServiceEndpointPropertiesFormat = Azure::Network::Mgmt::V2017_09_01::Models::ServiceEndpointPropertiesFormat
      VerificationIPFlowResult = Azure::Network::Mgmt::V2017_09_01::Models::VerificationIPFlowResult
      VirtualNetworkGatewayConnectionListResult = Azure::Network::Mgmt::V2017_09_01::Models::VirtualNetworkGatewayConnectionListResult
      NextHopParameters = Azure::Network::Mgmt::V2017_09_01::Models::NextHopParameters
      ApplicationGatewayBackendAddress = Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayBackendAddress
      NextHopResult = Azure::Network::Mgmt::V2017_09_01::Models::NextHopResult
      ApplicationGatewayBackendHealthServer = Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayBackendHealthServer
      SecurityGroupViewParameters = Azure::Network::Mgmt::V2017_09_01::Models::SecurityGroupViewParameters
      ApplicationGatewaySku = Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewaySku
      NetworkInterfaceAssociation = Azure::Network::Mgmt::V2017_09_01::Models::NetworkInterfaceAssociation
      BgpPeerStatus = Azure::Network::Mgmt::V2017_09_01::Models::BgpPeerStatus
      SubnetAssociation = Azure::Network::Mgmt::V2017_09_01::Models::SubnetAssociation
      VirtualNetworkListUsageResult = Azure::Network::Mgmt::V2017_09_01::Models::VirtualNetworkListUsageResult
      SecurityRuleAssociations = Azure::Network::Mgmt::V2017_09_01::Models::SecurityRuleAssociations
      IPAddressAvailabilityResult = Azure::Network::Mgmt::V2017_09_01::Models::IPAddressAvailabilityResult
      SecurityGroupNetworkInterface = Azure::Network::Mgmt::V2017_09_01::Models::SecurityGroupNetworkInterface
      DhcpOptions = Azure::Network::Mgmt::V2017_09_01::Models::DhcpOptions
      SecurityGroupViewResult = Azure::Network::Mgmt::V2017_09_01::Models::SecurityGroupViewResult
      VirtualNetworkPeeringListResult = Azure::Network::Mgmt::V2017_09_01::Models::VirtualNetworkPeeringListResult
      PacketCaptureStorageLocation = Azure::Network::Mgmt::V2017_09_01::Models::PacketCaptureStorageLocation
      ApplicationGatewayAvailableSslPredefinedPolicies = Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayAvailableSslPredefinedPolicies
      PacketCaptureFilter = Azure::Network::Mgmt::V2017_09_01::Models::PacketCaptureFilter
      UsagesListResult = Azure::Network::Mgmt::V2017_09_01::Models::UsagesListResult
      PacketCaptureParameters = Azure::Network::Mgmt::V2017_09_01::Models::PacketCaptureParameters
      ExpressRouteCircuitPeeringConfig = Azure::Network::Mgmt::V2017_09_01::Models::ExpressRouteCircuitPeeringConfig
      PacketCapture = Azure::Network::Mgmt::V2017_09_01::Models::PacketCapture
      RouteTableListResult = Azure::Network::Mgmt::V2017_09_01::Models::RouteTableListResult
      PacketCaptureResult = Azure::Network::Mgmt::V2017_09_01::Models::PacketCaptureResult
      ExpressRouteCircuitServiceProviderProperties = Azure::Network::Mgmt::V2017_09_01::Models::ExpressRouteCircuitServiceProviderProperties
      PacketCaptureListResult = Azure::Network::Mgmt::V2017_09_01::Models::PacketCaptureListResult
      ExpressRouteCircuitRoutesTable = Azure::Network::Mgmt::V2017_09_01::Models::ExpressRouteCircuitRoutesTable
      PacketCaptureQueryStatusResult = Azure::Network::Mgmt::V2017_09_01::Models::PacketCaptureQueryStatusResult
      VpnDeviceScriptParameters = Azure::Network::Mgmt::V2017_09_01::Models::VpnDeviceScriptParameters
      TroubleshootingParameters = Azure::Network::Mgmt::V2017_09_01::Models::TroubleshootingParameters
      PublicIPAddressDnsSettings = Azure::Network::Mgmt::V2017_09_01::Models::PublicIPAddressDnsSettings
      QueryTroubleshootingParameters = Azure::Network::Mgmt::V2017_09_01::Models::QueryTroubleshootingParameters
      ApplicationGatewayConnectionDraining = Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayConnectionDraining
      TroubleshootingRecommendedActions = Azure::Network::Mgmt::V2017_09_01::Models::TroubleshootingRecommendedActions
      VpnClientParameters = Azure::Network::Mgmt::V2017_09_01::Models::VpnClientParameters
      TroubleshootingDetails = Azure::Network::Mgmt::V2017_09_01::Models::TroubleshootingDetails
      VirtualNetworkUsage = Azure::Network::Mgmt::V2017_09_01::Models::VirtualNetworkUsage
      TroubleshootingResult = Azure::Network::Mgmt::V2017_09_01::Models::TroubleshootingResult
      ApplicationGatewayFirewallRule = Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayFirewallRule
      RetentionPolicyParameters = Azure::Network::Mgmt::V2017_09_01::Models::RetentionPolicyParameters
      TagsObject = Azure::Network::Mgmt::V2017_09_01::Models::TagsObject
      FlowLogStatusParameters = Azure::Network::Mgmt::V2017_09_01::Models::FlowLogStatusParameters
      ExpressRouteCircuitStats = Azure::Network::Mgmt::V2017_09_01::Models::ExpressRouteCircuitStats
      FlowLogInformation = Azure::Network::Mgmt::V2017_09_01::Models::FlowLogInformation
      ExpressRouteCircuitArpTable = Azure::Network::Mgmt::V2017_09_01::Models::ExpressRouteCircuitArpTable
      ConnectivitySource = Azure::Network::Mgmt::V2017_09_01::Models::ConnectivitySource
      LocalNetworkGatewayListResult = Azure::Network::Mgmt::V2017_09_01::Models::LocalNetworkGatewayListResult
      ConnectivityDestination = Azure::Network::Mgmt::V2017_09_01::Models::ConnectivityDestination
      ApplicationGatewayBackendHealthPool = Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayBackendHealthPool
      ConnectivityParameters = Azure::Network::Mgmt::V2017_09_01::Models::ConnectivityParameters
      ApplicationGatewayFirewallDisabledRuleGroup = Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayFirewallDisabledRuleGroup
      ConnectivityIssue = Azure::Network::Mgmt::V2017_09_01::Models::ConnectivityIssue
      Usage = Azure::Network::Mgmt::V2017_09_01::Models::Usage
      ConnectivityHop = Azure::Network::Mgmt::V2017_09_01::Models::ConnectivityHop
      ExpressRouteCircuitRoutesTableSummary = Azure::Network::Mgmt::V2017_09_01::Models::ExpressRouteCircuitRoutesTableSummary
      ConnectivityInformation = Azure::Network::Mgmt::V2017_09_01::Models::ConnectivityInformation
      VpnClientConfiguration = Azure::Network::Mgmt::V2017_09_01::Models::VpnClientConfiguration
      AzureReachabilityReportLocation = Azure::Network::Mgmt::V2017_09_01::Models::AzureReachabilityReportLocation
      ExpressRouteCircuitPeeringListResult = Azure::Network::Mgmt::V2017_09_01::Models::ExpressRouteCircuitPeeringListResult
      AzureReachabilityReportParameters = Azure::Network::Mgmt::V2017_09_01::Models::AzureReachabilityReportParameters
      SubnetListResult = Azure::Network::Mgmt::V2017_09_01::Models::SubnetListResult
      AzureReachabilityReportLatencyInfo = Azure::Network::Mgmt::V2017_09_01::Models::AzureReachabilityReportLatencyInfo
      TunnelConnectionHealth = Azure::Network::Mgmt::V2017_09_01::Models::TunnelConnectionHealth
      AzureReachabilityReportItem = Azure::Network::Mgmt::V2017_09_01::Models::AzureReachabilityReportItem
      BackendAddressPool = Azure::Network::Mgmt::V2017_09_01::Models::BackendAddressPool
      InboundNatRule = Azure::Network::Mgmt::V2017_09_01::Models::InboundNatRule
      ApplicationSecurityGroup = Azure::Network::Mgmt::V2017_09_01::Models::ApplicationSecurityGroup
      SecurityRule = Azure::Network::Mgmt::V2017_09_01::Models::SecurityRule
      NetworkInterface = Azure::Network::Mgmt::V2017_09_01::Models::NetworkInterface
      NetworkSecurityGroup = Azure::Network::Mgmt::V2017_09_01::Models::NetworkSecurityGroup
      Route = Azure::Network::Mgmt::V2017_09_01::Models::Route
      RouteTable = Azure::Network::Mgmt::V2017_09_01::Models::RouteTable
      PublicIPAddress = Azure::Network::Mgmt::V2017_09_01::Models::PublicIPAddress
      IPConfiguration = Azure::Network::Mgmt::V2017_09_01::Models::IPConfiguration
      ResourceNavigationLink = Azure::Network::Mgmt::V2017_09_01::Models::ResourceNavigationLink
      Subnet = Azure::Network::Mgmt::V2017_09_01::Models::Subnet
      NetworkInterfaceIPConfiguration = Azure::Network::Mgmt::V2017_09_01::Models::NetworkInterfaceIPConfiguration
      ApplicationGatewayBackendAddressPool = Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayBackendAddressPool
      ApplicationGatewayBackendHttpSettings = Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayBackendHttpSettings
      ApplicationGatewayIPConfiguration = Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayIPConfiguration
      ApplicationGatewayAuthenticationCertificate = Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayAuthenticationCertificate
      ApplicationGatewaySslCertificate = Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewaySslCertificate
      ApplicationGatewayFrontendIPConfiguration = Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayFrontendIPConfiguration
      ApplicationGatewayFrontendPort = Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayFrontendPort
      ApplicationGatewayHttpListener = Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayHttpListener
      ApplicationGatewayPathRule = Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayPathRule
      ApplicationGatewayProbe = Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayProbe
      ApplicationGatewayRequestRoutingRule = Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayRequestRoutingRule
      ApplicationGatewayRedirectConfiguration = Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayRedirectConfiguration
      ApplicationGatewayUrlPathMap = Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayUrlPathMap
      ApplicationGateway = Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGateway
      ApplicationGatewayFirewallRuleSet = Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayFirewallRuleSet
      ApplicationGatewayAvailableSslOptions = Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayAvailableSslOptions
      ApplicationGatewaySslPredefinedPolicy = Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewaySslPredefinedPolicy
      EndpointServiceResult = Azure::Network::Mgmt::V2017_09_01::Models::EndpointServiceResult
      ExpressRouteCircuitAuthorization = Azure::Network::Mgmt::V2017_09_01::Models::ExpressRouteCircuitAuthorization
      RouteFilterRule = Azure::Network::Mgmt::V2017_09_01::Models::RouteFilterRule
      ExpressRouteCircuitPeering = Azure::Network::Mgmt::V2017_09_01::Models::ExpressRouteCircuitPeering
      RouteFilter = Azure::Network::Mgmt::V2017_09_01::Models::RouteFilter
      ExpressRouteCircuit = Azure::Network::Mgmt::V2017_09_01::Models::ExpressRouteCircuit
      ExpressRouteServiceProvider = Azure::Network::Mgmt::V2017_09_01::Models::ExpressRouteServiceProvider
      FrontendIPConfiguration = Azure::Network::Mgmt::V2017_09_01::Models::FrontendIPConfiguration
      LoadBalancingRule = Azure::Network::Mgmt::V2017_09_01::Models::LoadBalancingRule
      Probe = Azure::Network::Mgmt::V2017_09_01::Models::Probe
      InboundNatPool = Azure::Network::Mgmt::V2017_09_01::Models::InboundNatPool
      OutboundNatRule = Azure::Network::Mgmt::V2017_09_01::Models::OutboundNatRule
      LoadBalancer = Azure::Network::Mgmt::V2017_09_01::Models::LoadBalancer
      NetworkWatcher = Azure::Network::Mgmt::V2017_09_01::Models::NetworkWatcher
      PatchRouteFilterRule = Azure::Network::Mgmt::V2017_09_01::Models::PatchRouteFilterRule
      PatchRouteFilter = Azure::Network::Mgmt::V2017_09_01::Models::PatchRouteFilter
      BgpServiceCommunity = Azure::Network::Mgmt::V2017_09_01::Models::BgpServiceCommunity
      VirtualNetworkPeering = Azure::Network::Mgmt::V2017_09_01::Models::VirtualNetworkPeering
      VirtualNetwork = Azure::Network::Mgmt::V2017_09_01::Models::VirtualNetwork
      VirtualNetworkGatewayIPConfiguration = Azure::Network::Mgmt::V2017_09_01::Models::VirtualNetworkGatewayIPConfiguration
      VpnClientRootCertificate = Azure::Network::Mgmt::V2017_09_01::Models::VpnClientRootCertificate
      VpnClientRevokedCertificate = Azure::Network::Mgmt::V2017_09_01::Models::VpnClientRevokedCertificate
      VirtualNetworkGateway = Azure::Network::Mgmt::V2017_09_01::Models::VirtualNetworkGateway
      LocalNetworkGateway = Azure::Network::Mgmt::V2017_09_01::Models::LocalNetworkGateway
      VirtualNetworkGatewayConnection = Azure::Network::Mgmt::V2017_09_01::Models::VirtualNetworkGatewayConnection
      VirtualNetworkGatewayConnectionListEntity = Azure::Network::Mgmt::V2017_09_01::Models::VirtualNetworkGatewayConnectionListEntity
      TransportProtocol = Azure::Network::Mgmt::V2017_09_01::Models::TransportProtocol
      IPAllocationMethod = Azure::Network::Mgmt::V2017_09_01::Models::IPAllocationMethod
      IPVersion = Azure::Network::Mgmt::V2017_09_01::Models::IPVersion
      SecurityRuleProtocol = Azure::Network::Mgmt::V2017_09_01::Models::SecurityRuleProtocol
      SecurityRuleAccess = Azure::Network::Mgmt::V2017_09_01::Models::SecurityRuleAccess
      SecurityRuleDirection = Azure::Network::Mgmt::V2017_09_01::Models::SecurityRuleDirection
      RouteNextHopType = Azure::Network::Mgmt::V2017_09_01::Models::RouteNextHopType
      PublicIPAddressSkuName = Azure::Network::Mgmt::V2017_09_01::Models::PublicIPAddressSkuName
      ApplicationGatewayProtocol = Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayProtocol
      ApplicationGatewayCookieBasedAffinity = Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayCookieBasedAffinity
      ApplicationGatewayBackendHealthServerHealth = Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayBackendHealthServerHealth
      ApplicationGatewaySkuName = Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewaySkuName
      ApplicationGatewayTier = Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayTier
      ApplicationGatewaySslProtocol = Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewaySslProtocol
      ApplicationGatewaySslPolicyType = Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewaySslPolicyType
      ApplicationGatewaySslPolicyName = Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewaySslPolicyName
      ApplicationGatewaySslCipherSuite = Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewaySslCipherSuite
      ApplicationGatewayRequestRoutingRuleType = Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayRequestRoutingRuleType
      ApplicationGatewayRedirectType = Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayRedirectType
      ApplicationGatewayOperationalState = Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayOperationalState
      ApplicationGatewayFirewallMode = Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayFirewallMode
      AuthorizationUseStatus = Azure::Network::Mgmt::V2017_09_01::Models::AuthorizationUseStatus
      ExpressRouteCircuitPeeringAdvertisedPublicPrefixState = Azure::Network::Mgmt::V2017_09_01::Models::ExpressRouteCircuitPeeringAdvertisedPublicPrefixState
      Access = Azure::Network::Mgmt::V2017_09_01::Models::Access
      ExpressRouteCircuitPeeringType = Azure::Network::Mgmt::V2017_09_01::Models::ExpressRouteCircuitPeeringType
      ExpressRouteCircuitPeeringState = Azure::Network::Mgmt::V2017_09_01::Models::ExpressRouteCircuitPeeringState
      ExpressRouteCircuitSkuTier = Azure::Network::Mgmt::V2017_09_01::Models::ExpressRouteCircuitSkuTier
      ExpressRouteCircuitSkuFamily = Azure::Network::Mgmt::V2017_09_01::Models::ExpressRouteCircuitSkuFamily
      ServiceProviderProvisioningState = Azure::Network::Mgmt::V2017_09_01::Models::ServiceProviderProvisioningState
      LoadBalancerSkuName = Azure::Network::Mgmt::V2017_09_01::Models::LoadBalancerSkuName
      LoadDistribution = Azure::Network::Mgmt::V2017_09_01::Models::LoadDistribution
      ProbeProtocol = Azure::Network::Mgmt::V2017_09_01::Models::ProbeProtocol
      NetworkOperationStatus = Azure::Network::Mgmt::V2017_09_01::Models::NetworkOperationStatus
      EffectiveSecurityRuleProtocol = Azure::Network::Mgmt::V2017_09_01::Models::EffectiveSecurityRuleProtocol
      EffectiveRouteSource = Azure::Network::Mgmt::V2017_09_01::Models::EffectiveRouteSource
      EffectiveRouteState = Azure::Network::Mgmt::V2017_09_01::Models::EffectiveRouteState
      ProvisioningState = Azure::Network::Mgmt::V2017_09_01::Models::ProvisioningState
      AssociationType = Azure::Network::Mgmt::V2017_09_01::Models::AssociationType
      Direction = Azure::Network::Mgmt::V2017_09_01::Models::Direction
      Protocol = Azure::Network::Mgmt::V2017_09_01::Models::Protocol
      NextHopType = Azure::Network::Mgmt::V2017_09_01::Models::NextHopType
      PcProtocol = Azure::Network::Mgmt::V2017_09_01::Models::PcProtocol
      PcStatus = Azure::Network::Mgmt::V2017_09_01::Models::PcStatus
      PcError = Azure::Network::Mgmt::V2017_09_01::Models::PcError
      Origin = Azure::Network::Mgmt::V2017_09_01::Models::Origin
      Severity = Azure::Network::Mgmt::V2017_09_01::Models::Severity
      IssueType = Azure::Network::Mgmt::V2017_09_01::Models::IssueType
      ConnectionStatus = Azure::Network::Mgmt::V2017_09_01::Models::ConnectionStatus
      VirtualNetworkPeeringState = Azure::Network::Mgmt::V2017_09_01::Models::VirtualNetworkPeeringState
      VirtualNetworkGatewayType = Azure::Network::Mgmt::V2017_09_01::Models::VirtualNetworkGatewayType
      VpnType = Azure::Network::Mgmt::V2017_09_01::Models::VpnType
      VirtualNetworkGatewaySkuName = Azure::Network::Mgmt::V2017_09_01::Models::VirtualNetworkGatewaySkuName
      VirtualNetworkGatewaySkuTier = Azure::Network::Mgmt::V2017_09_01::Models::VirtualNetworkGatewaySkuTier
      VpnClientProtocol = Azure::Network::Mgmt::V2017_09_01::Models::VpnClientProtocol
      BgpPeerState = Azure::Network::Mgmt::V2017_09_01::Models::BgpPeerState
      ProcessorArchitecture = Azure::Network::Mgmt::V2017_09_01::Models::ProcessorArchitecture
      AuthenticationMethod = Azure::Network::Mgmt::V2017_09_01::Models::AuthenticationMethod
      VirtualNetworkGatewayConnectionStatus = Azure::Network::Mgmt::V2017_09_01::Models::VirtualNetworkGatewayConnectionStatus
      VirtualNetworkGatewayConnectionType = Azure::Network::Mgmt::V2017_09_01::Models::VirtualNetworkGatewayConnectionType
      IpsecEncryption = Azure::Network::Mgmt::V2017_09_01::Models::IpsecEncryption
      IpsecIntegrity = Azure::Network::Mgmt::V2017_09_01::Models::IpsecIntegrity
      IkeEncryption = Azure::Network::Mgmt::V2017_09_01::Models::IkeEncryption
      IkeIntegrity = Azure::Network::Mgmt::V2017_09_01::Models::IkeIntegrity
      DhGroup = Azure::Network::Mgmt::V2017_09_01::Models::DhGroup
      PfsGroup = Azure::Network::Mgmt::V2017_09_01::Models::PfsGroup
    end

    #
    # NetworkManagementClass
    #
    class NetworkManagementClass
      attr_reader :application_gateways, :application_security_groups, :available_endpoint_services, :express_route_circuit_authorizations, :express_route_circuit_peerings, :express_route_circuits, :express_route_service_providers, :load_balancers, :load_balancer_backend_address_pools, :load_balancer_frontend_ipconfigurations, :inbound_nat_rules, :load_balancer_load_balancing_rules, :load_balancer_network_interfaces, :load_balancer_probes, :network_interfaces, :network_interface_ipconfigurations, :network_interface_load_balancers, :network_security_groups, :security_rules, :default_security_rules, :network_watchers, :packet_captures, :public_ipaddresses, :route_filters, :route_filter_rules, :bgp_service_communities, :route_tables, :routes, :usages, :virtual_networks, :subnets, :virtual_network_peerings, :virtual_network_gateways, :virtual_network_gateway_connections, :local_network_gateways, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        if options.is_a?(Hash) && options.length == 0
          @options = setup_default_options
        else
          @options = options
        end

        reset!(options)

        @configurable, @base_url, @options = self, nil, nil

        client_0 = Azure::Network::Mgmt::V2017_09_01::NetworkManagementClient.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        @application_gateways = client_0.application_gateways
        @application_security_groups = client_0.application_security_groups
        @available_endpoint_services = client_0.available_endpoint_services
        @express_route_circuit_authorizations = client_0.express_route_circuit_authorizations
        @express_route_circuit_peerings = client_0.express_route_circuit_peerings
        @express_route_circuits = client_0.express_route_circuits
        @express_route_service_providers = client_0.express_route_service_providers
        @load_balancers = client_0.load_balancers
        @load_balancer_backend_address_pools = client_0.load_balancer_backend_address_pools
        @load_balancer_frontend_ipconfigurations = client_0.load_balancer_frontend_ipconfigurations
        @inbound_nat_rules = client_0.inbound_nat_rules
        @load_balancer_load_balancing_rules = client_0.load_balancer_load_balancing_rules
        @load_balancer_network_interfaces = client_0.load_balancer_network_interfaces
        @load_balancer_probes = client_0.load_balancer_probes
        @network_interfaces = client_0.network_interfaces
        @network_interface_ipconfigurations = client_0.network_interface_ipconfigurations
        @network_interface_load_balancers = client_0.network_interface_load_balancers
        @network_security_groups = client_0.network_security_groups
        @security_rules = client_0.security_rules
        @default_security_rules = client_0.default_security_rules
        @network_watchers = client_0.network_watchers
        @packet_captures = client_0.packet_captures
        @public_ipaddresses = client_0.public_ipaddresses
        @route_filters = client_0.route_filters
        @route_filter_rules = client_0.route_filter_rules
        @bgp_service_communities = client_0.bgp_service_communities
        @route_tables = client_0.route_tables
        @routes = client_0.routes
        @usages = client_0.usages
        @virtual_networks = client_0.virtual_networks
        @subnets = client_0.subnets
        @virtual_network_peerings = client_0.virtual_network_peerings
        @virtual_network_gateways = client_0.virtual_network_gateways
        @virtual_network_gateway_connections = client_0.virtual_network_gateway_connections
        @local_network_gateways = client_0.local_network_gateways

        @model_classes = ModelClasses.new
      end
    end

    class ModelClasses
      def effective_network_security_group_list_result
        Azure::Network::Mgmt::V2017_09_01::Models::EffectiveNetworkSecurityGroupListResult
      end
      def sub_resource
        Azure::Network::Mgmt::V2017_09_01::Models::SubResource
      end
      def effective_route
        Azure::Network::Mgmt::V2017_09_01::Models::EffectiveRoute
      end
      def express_route_circuit_list_result
        Azure::Network::Mgmt::V2017_09_01::Models::ExpressRouteCircuitListResult
      end
      def express_route_service_provider_bandwidths_offered
        Azure::Network::Mgmt::V2017_09_01::Models::ExpressRouteServiceProviderBandwidthsOffered
      end
      def network_interface_dns_settings
        Azure::Network::Mgmt::V2017_09_01::Models::NetworkInterfaceDnsSettings
      end
      def bgpcommunity
        Azure::Network::Mgmt::V2017_09_01::Models::BGPCommunity
      end
      def virtual_network_connection_gateway_reference
        Azure::Network::Mgmt::V2017_09_01::Models::VirtualNetworkConnectionGatewayReference
      end
      def express_route_service_provider_list_result
        Azure::Network::Mgmt::V2017_09_01::Models::ExpressRouteServiceProviderListResult
      end
      def connection_shared_key
        Azure::Network::Mgmt::V2017_09_01::Models::ConnectionSharedKey
      end
      def load_balancer_sku
        Azure::Network::Mgmt::V2017_09_01::Models::LoadBalancerSku
      end
      def public_ipaddress_sku
        Azure::Network::Mgmt::V2017_09_01::Models::PublicIPAddressSku
      end
      def route_filter_rule_list_result
        Azure::Network::Mgmt::V2017_09_01::Models::RouteFilterRuleListResult
      end
      def connection_reset_shared_key
        Azure::Network::Mgmt::V2017_09_01::Models::ConnectionResetSharedKey
      end
      def route_filter_list_result
        Azure::Network::Mgmt::V2017_09_01::Models::RouteFilterListResult
      end
      def ipsec_policy
        Azure::Network::Mgmt::V2017_09_01::Models::IpsecPolicy
      end
      def public_ipaddress_list_result
        Azure::Network::Mgmt::V2017_09_01::Models::PublicIPAddressListResult
      end
      def gateway_route_list_result
        Azure::Network::Mgmt::V2017_09_01::Models::GatewayRouteListResult
      end
      def available_providers_list
        Azure::Network::Mgmt::V2017_09_01::Models::AvailableProvidersList
      end
      def bgp_peer_status_list_result
        Azure::Network::Mgmt::V2017_09_01::Models::BgpPeerStatusListResult
      end
      def available_providers_list_country
        Azure::Network::Mgmt::V2017_09_01::Models::AvailableProvidersListCountry
      end
      def virtual_network_gateway_list_result
        Azure::Network::Mgmt::V2017_09_01::Models::VirtualNetworkGatewayListResult
      end
      def available_providers_list_state
        Azure::Network::Mgmt::V2017_09_01::Models::AvailableProvidersListState
      end
      def application_gateway_backend_health_http_settings
        Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayBackendHealthHttpSettings
      end
      def load_balancer_list_result
        Azure::Network::Mgmt::V2017_09_01::Models::LoadBalancerListResult
      end
      def application_gateway_backend_health
        Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayBackendHealth
      end
      def inbound_nat_rule_list_result
        Azure::Network::Mgmt::V2017_09_01::Models::InboundNatRuleListResult
      end
      def application_gateway_ssl_policy
        Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewaySslPolicy
      end
      def load_balancer_backend_address_pool_list_result
        Azure::Network::Mgmt::V2017_09_01::Models::LoadBalancerBackendAddressPoolListResult
      end
      def gateway_route
        Azure::Network::Mgmt::V2017_09_01::Models::GatewayRoute
      end
      def load_balancer_frontend_ipconfiguration_list_result
        Azure::Network::Mgmt::V2017_09_01::Models::LoadBalancerFrontendIPConfigurationListResult
      end
      def bgp_settings
        Azure::Network::Mgmt::V2017_09_01::Models::BgpSettings
      end
      def load_balancer_load_balancing_rule_list_result
        Azure::Network::Mgmt::V2017_09_01::Models::LoadBalancerLoadBalancingRuleListResult
      end
      def virtual_network_gateway_sku
        Azure::Network::Mgmt::V2017_09_01::Models::VirtualNetworkGatewaySku
      end
      def load_balancer_probe_list_result
        Azure::Network::Mgmt::V2017_09_01::Models::LoadBalancerProbeListResult
      end
      def application_gateway_probe_health_response_match
        Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayProbeHealthResponseMatch
      end
      def network_interface_list_result
        Azure::Network::Mgmt::V2017_09_01::Models::NetworkInterfaceListResult
      end
      def virtual_network_usage_name
        Azure::Network::Mgmt::V2017_09_01::Models::VirtualNetworkUsageName
      end
      def error_details
        Azure::Network::Mgmt::V2017_09_01::Models::ErrorDetails
      end
      def virtual_network_list_result
        Azure::Network::Mgmt::V2017_09_01::Models::VirtualNetworkListResult
      end
      def error
        Azure::Network::Mgmt::V2017_09_01::Models::Error
      end
      def application_gateway_web_application_firewall_configuration
        Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayWebApplicationFirewallConfiguration
      end
      def azure_async_operation_result
        Azure::Network::Mgmt::V2017_09_01::Models::AzureAsyncOperationResult
      end
      def application_gateway_list_result
        Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayListResult
      end
      def network_interface_ipconfiguration_list_result
        Azure::Network::Mgmt::V2017_09_01::Models::NetworkInterfaceIPConfigurationListResult
      end
      def application_gateway_firewall_rule_group
        Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayFirewallRuleGroup
      end
      def network_interface_load_balancer_list_result
        Azure::Network::Mgmt::V2017_09_01::Models::NetworkInterfaceLoadBalancerListResult
      end
      def application_gateway_available_waf_rule_sets_result
        Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayAvailableWafRuleSetsResult
      end
      def effective_network_security_group_association
        Azure::Network::Mgmt::V2017_09_01::Models::EffectiveNetworkSecurityGroupAssociation
      end
      def address_space
        Azure::Network::Mgmt::V2017_09_01::Models::AddressSpace
      end
      def effective_network_security_rule
        Azure::Network::Mgmt::V2017_09_01::Models::EffectiveNetworkSecurityRule
      end
      def resource
        Azure::Network::Mgmt::V2017_09_01::Models::Resource
      end
      def effective_network_security_group
        Azure::Network::Mgmt::V2017_09_01::Models::EffectiveNetworkSecurityGroup
      end
      def application_security_group_list_result
        Azure::Network::Mgmt::V2017_09_01::Models::ApplicationSecurityGroupListResult
      end
      def dns_name_availability_result
        Azure::Network::Mgmt::V2017_09_01::Models::DnsNameAvailabilityResult
      end
      def azure_reachability_report
        Azure::Network::Mgmt::V2017_09_01::Models::AzureReachabilityReport
      end
      def endpoint_services_list_result
        Azure::Network::Mgmt::V2017_09_01::Models::EndpointServicesListResult
      end
      def available_providers_list_city
        Azure::Network::Mgmt::V2017_09_01::Models::AvailableProvidersListCity
      end
      def authorization_list_result
        Azure::Network::Mgmt::V2017_09_01::Models::AuthorizationListResult
      end
      def effective_route_list_result
        Azure::Network::Mgmt::V2017_09_01::Models::EffectiveRouteListResult
      end
      def usage_name
        Azure::Network::Mgmt::V2017_09_01::Models::UsageName
      end
      def security_rule_list_result
        Azure::Network::Mgmt::V2017_09_01::Models::SecurityRuleListResult
      end
      def route_list_result
        Azure::Network::Mgmt::V2017_09_01::Models::RouteListResult
      end
      def network_security_group_list_result
        Azure::Network::Mgmt::V2017_09_01::Models::NetworkSecurityGroupListResult
      end
      def ipv6_express_route_circuit_peering_config
        Azure::Network::Mgmt::V2017_09_01::Models::Ipv6ExpressRouteCircuitPeeringConfig
      end
      def available_providers_list_parameters
        Azure::Network::Mgmt::V2017_09_01::Models::AvailableProvidersListParameters
      end
      def express_route_circuit_sku
        Azure::Network::Mgmt::V2017_09_01::Models::ExpressRouteCircuitSku
      end
      def network_watcher_list_result
        Azure::Network::Mgmt::V2017_09_01::Models::NetworkWatcherListResult
      end
      def bgp_service_community_list_result
        Azure::Network::Mgmt::V2017_09_01::Models::BgpServiceCommunityListResult
      end
      def topology_parameters
        Azure::Network::Mgmt::V2017_09_01::Models::TopologyParameters
      end
      def express_route_circuits_arp_table_list_result
        Azure::Network::Mgmt::V2017_09_01::Models::ExpressRouteCircuitsArpTableListResult
      end
      def topology_association
        Azure::Network::Mgmt::V2017_09_01::Models::TopologyAssociation
      end
      def express_route_circuits_routes_table_list_result
        Azure::Network::Mgmt::V2017_09_01::Models::ExpressRouteCircuitsRoutesTableListResult
      end
      def topology_resource
        Azure::Network::Mgmt::V2017_09_01::Models::TopologyResource
      end
      def express_route_circuits_routes_table_summary_list_result
        Azure::Network::Mgmt::V2017_09_01::Models::ExpressRouteCircuitsRoutesTableSummaryListResult
      end
      def topology
        Azure::Network::Mgmt::V2017_09_01::Models::Topology
      end
      def virtual_network_gateway_list_connections_result
        Azure::Network::Mgmt::V2017_09_01::Models::VirtualNetworkGatewayListConnectionsResult
      end
      def verification_ipflow_parameters
        Azure::Network::Mgmt::V2017_09_01::Models::VerificationIPFlowParameters
      end
      def service_endpoint_properties_format
        Azure::Network::Mgmt::V2017_09_01::Models::ServiceEndpointPropertiesFormat
      end
      def verification_ipflow_result
        Azure::Network::Mgmt::V2017_09_01::Models::VerificationIPFlowResult
      end
      def virtual_network_gateway_connection_list_result
        Azure::Network::Mgmt::V2017_09_01::Models::VirtualNetworkGatewayConnectionListResult
      end
      def next_hop_parameters
        Azure::Network::Mgmt::V2017_09_01::Models::NextHopParameters
      end
      def application_gateway_backend_address
        Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayBackendAddress
      end
      def next_hop_result
        Azure::Network::Mgmt::V2017_09_01::Models::NextHopResult
      end
      def application_gateway_backend_health_server
        Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayBackendHealthServer
      end
      def security_group_view_parameters
        Azure::Network::Mgmt::V2017_09_01::Models::SecurityGroupViewParameters
      end
      def application_gateway_sku
        Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewaySku
      end
      def network_interface_association
        Azure::Network::Mgmt::V2017_09_01::Models::NetworkInterfaceAssociation
      end
      def bgp_peer_status
        Azure::Network::Mgmt::V2017_09_01::Models::BgpPeerStatus
      end
      def subnet_association
        Azure::Network::Mgmt::V2017_09_01::Models::SubnetAssociation
      end
      def virtual_network_list_usage_result
        Azure::Network::Mgmt::V2017_09_01::Models::VirtualNetworkListUsageResult
      end
      def security_rule_associations
        Azure::Network::Mgmt::V2017_09_01::Models::SecurityRuleAssociations
      end
      def ipaddress_availability_result
        Azure::Network::Mgmt::V2017_09_01::Models::IPAddressAvailabilityResult
      end
      def security_group_network_interface
        Azure::Network::Mgmt::V2017_09_01::Models::SecurityGroupNetworkInterface
      end
      def dhcp_options
        Azure::Network::Mgmt::V2017_09_01::Models::DhcpOptions
      end
      def security_group_view_result
        Azure::Network::Mgmt::V2017_09_01::Models::SecurityGroupViewResult
      end
      def virtual_network_peering_list_result
        Azure::Network::Mgmt::V2017_09_01::Models::VirtualNetworkPeeringListResult
      end
      def packet_capture_storage_location
        Azure::Network::Mgmt::V2017_09_01::Models::PacketCaptureStorageLocation
      end
      def application_gateway_available_ssl_predefined_policies
        Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayAvailableSslPredefinedPolicies
      end
      def packet_capture_filter
        Azure::Network::Mgmt::V2017_09_01::Models::PacketCaptureFilter
      end
      def usages_list_result
        Azure::Network::Mgmt::V2017_09_01::Models::UsagesListResult
      end
      def packet_capture_parameters
        Azure::Network::Mgmt::V2017_09_01::Models::PacketCaptureParameters
      end
      def express_route_circuit_peering_config
        Azure::Network::Mgmt::V2017_09_01::Models::ExpressRouteCircuitPeeringConfig
      end
      def packet_capture
        Azure::Network::Mgmt::V2017_09_01::Models::PacketCapture
      end
      def route_table_list_result
        Azure::Network::Mgmt::V2017_09_01::Models::RouteTableListResult
      end
      def packet_capture_result
        Azure::Network::Mgmt::V2017_09_01::Models::PacketCaptureResult
      end
      def express_route_circuit_service_provider_properties
        Azure::Network::Mgmt::V2017_09_01::Models::ExpressRouteCircuitServiceProviderProperties
      end
      def packet_capture_list_result
        Azure::Network::Mgmt::V2017_09_01::Models::PacketCaptureListResult
      end
      def express_route_circuit_routes_table
        Azure::Network::Mgmt::V2017_09_01::Models::ExpressRouteCircuitRoutesTable
      end
      def packet_capture_query_status_result
        Azure::Network::Mgmt::V2017_09_01::Models::PacketCaptureQueryStatusResult
      end
      def vpn_device_script_parameters
        Azure::Network::Mgmt::V2017_09_01::Models::VpnDeviceScriptParameters
      end
      def troubleshooting_parameters
        Azure::Network::Mgmt::V2017_09_01::Models::TroubleshootingParameters
      end
      def public_ipaddress_dns_settings
        Azure::Network::Mgmt::V2017_09_01::Models::PublicIPAddressDnsSettings
      end
      def query_troubleshooting_parameters
        Azure::Network::Mgmt::V2017_09_01::Models::QueryTroubleshootingParameters
      end
      def application_gateway_connection_draining
        Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayConnectionDraining
      end
      def troubleshooting_recommended_actions
        Azure::Network::Mgmt::V2017_09_01::Models::TroubleshootingRecommendedActions
      end
      def vpn_client_parameters
        Azure::Network::Mgmt::V2017_09_01::Models::VpnClientParameters
      end
      def troubleshooting_details
        Azure::Network::Mgmt::V2017_09_01::Models::TroubleshootingDetails
      end
      def virtual_network_usage
        Azure::Network::Mgmt::V2017_09_01::Models::VirtualNetworkUsage
      end
      def troubleshooting_result
        Azure::Network::Mgmt::V2017_09_01::Models::TroubleshootingResult
      end
      def application_gateway_firewall_rule
        Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayFirewallRule
      end
      def retention_policy_parameters
        Azure::Network::Mgmt::V2017_09_01::Models::RetentionPolicyParameters
      end
      def tags_object
        Azure::Network::Mgmt::V2017_09_01::Models::TagsObject
      end
      def flow_log_status_parameters
        Azure::Network::Mgmt::V2017_09_01::Models::FlowLogStatusParameters
      end
      def express_route_circuit_stats
        Azure::Network::Mgmt::V2017_09_01::Models::ExpressRouteCircuitStats
      end
      def flow_log_information
        Azure::Network::Mgmt::V2017_09_01::Models::FlowLogInformation
      end
      def express_route_circuit_arp_table
        Azure::Network::Mgmt::V2017_09_01::Models::ExpressRouteCircuitArpTable
      end
      def connectivity_source
        Azure::Network::Mgmt::V2017_09_01::Models::ConnectivitySource
      end
      def local_network_gateway_list_result
        Azure::Network::Mgmt::V2017_09_01::Models::LocalNetworkGatewayListResult
      end
      def connectivity_destination
        Azure::Network::Mgmt::V2017_09_01::Models::ConnectivityDestination
      end
      def application_gateway_backend_health_pool
        Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayBackendHealthPool
      end
      def connectivity_parameters
        Azure::Network::Mgmt::V2017_09_01::Models::ConnectivityParameters
      end
      def application_gateway_firewall_disabled_rule_group
        Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayFirewallDisabledRuleGroup
      end
      def connectivity_issue
        Azure::Network::Mgmt::V2017_09_01::Models::ConnectivityIssue
      end
      def usage
        Azure::Network::Mgmt::V2017_09_01::Models::Usage
      end
      def connectivity_hop
        Azure::Network::Mgmt::V2017_09_01::Models::ConnectivityHop
      end
      def express_route_circuit_routes_table_summary
        Azure::Network::Mgmt::V2017_09_01::Models::ExpressRouteCircuitRoutesTableSummary
      end
      def connectivity_information
        Azure::Network::Mgmt::V2017_09_01::Models::ConnectivityInformation
      end
      def vpn_client_configuration
        Azure::Network::Mgmt::V2017_09_01::Models::VpnClientConfiguration
      end
      def azure_reachability_report_location
        Azure::Network::Mgmt::V2017_09_01::Models::AzureReachabilityReportLocation
      end
      def express_route_circuit_peering_list_result
        Azure::Network::Mgmt::V2017_09_01::Models::ExpressRouteCircuitPeeringListResult
      end
      def azure_reachability_report_parameters
        Azure::Network::Mgmt::V2017_09_01::Models::AzureReachabilityReportParameters
      end
      def subnet_list_result
        Azure::Network::Mgmt::V2017_09_01::Models::SubnetListResult
      end
      def azure_reachability_report_latency_info
        Azure::Network::Mgmt::V2017_09_01::Models::AzureReachabilityReportLatencyInfo
      end
      def tunnel_connection_health
        Azure::Network::Mgmt::V2017_09_01::Models::TunnelConnectionHealth
      end
      def azure_reachability_report_item
        Azure::Network::Mgmt::V2017_09_01::Models::AzureReachabilityReportItem
      end
      def backend_address_pool
        Azure::Network::Mgmt::V2017_09_01::Models::BackendAddressPool
      end
      def inbound_nat_rule
        Azure::Network::Mgmt::V2017_09_01::Models::InboundNatRule
      end
      def application_security_group
        Azure::Network::Mgmt::V2017_09_01::Models::ApplicationSecurityGroup
      end
      def security_rule
        Azure::Network::Mgmt::V2017_09_01::Models::SecurityRule
      end
      def network_interface
        Azure::Network::Mgmt::V2017_09_01::Models::NetworkInterface
      end
      def network_security_group
        Azure::Network::Mgmt::V2017_09_01::Models::NetworkSecurityGroup
      end
      def route
        Azure::Network::Mgmt::V2017_09_01::Models::Route
      end
      def route_table
        Azure::Network::Mgmt::V2017_09_01::Models::RouteTable
      end
      def public_ipaddress
        Azure::Network::Mgmt::V2017_09_01::Models::PublicIPAddress
      end
      def ipconfiguration
        Azure::Network::Mgmt::V2017_09_01::Models::IPConfiguration
      end
      def resource_navigation_link
        Azure::Network::Mgmt::V2017_09_01::Models::ResourceNavigationLink
      end
      def subnet
        Azure::Network::Mgmt::V2017_09_01::Models::Subnet
      end
      def network_interface_ipconfiguration
        Azure::Network::Mgmt::V2017_09_01::Models::NetworkInterfaceIPConfiguration
      end
      def application_gateway_backend_address_pool
        Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayBackendAddressPool
      end
      def application_gateway_backend_http_settings
        Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayBackendHttpSettings
      end
      def application_gateway_ipconfiguration
        Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayIPConfiguration
      end
      def application_gateway_authentication_certificate
        Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayAuthenticationCertificate
      end
      def application_gateway_ssl_certificate
        Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewaySslCertificate
      end
      def application_gateway_frontend_ipconfiguration
        Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayFrontendIPConfiguration
      end
      def application_gateway_frontend_port
        Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayFrontendPort
      end
      def application_gateway_http_listener
        Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayHttpListener
      end
      def application_gateway_path_rule
        Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayPathRule
      end
      def application_gateway_probe
        Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayProbe
      end
      def application_gateway_request_routing_rule
        Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayRequestRoutingRule
      end
      def application_gateway_redirect_configuration
        Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayRedirectConfiguration
      end
      def application_gateway_url_path_map
        Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayUrlPathMap
      end
      def application_gateway
        Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGateway
      end
      def application_gateway_firewall_rule_set
        Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayFirewallRuleSet
      end
      def application_gateway_available_ssl_options
        Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayAvailableSslOptions
      end
      def application_gateway_ssl_predefined_policy
        Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewaySslPredefinedPolicy
      end
      def endpoint_service_result
        Azure::Network::Mgmt::V2017_09_01::Models::EndpointServiceResult
      end
      def express_route_circuit_authorization
        Azure::Network::Mgmt::V2017_09_01::Models::ExpressRouteCircuitAuthorization
      end
      def route_filter_rule
        Azure::Network::Mgmt::V2017_09_01::Models::RouteFilterRule
      end
      def express_route_circuit_peering
        Azure::Network::Mgmt::V2017_09_01::Models::ExpressRouteCircuitPeering
      end
      def route_filter
        Azure::Network::Mgmt::V2017_09_01::Models::RouteFilter
      end
      def express_route_circuit
        Azure::Network::Mgmt::V2017_09_01::Models::ExpressRouteCircuit
      end
      def express_route_service_provider
        Azure::Network::Mgmt::V2017_09_01::Models::ExpressRouteServiceProvider
      end
      def frontend_ipconfiguration
        Azure::Network::Mgmt::V2017_09_01::Models::FrontendIPConfiguration
      end
      def load_balancing_rule
        Azure::Network::Mgmt::V2017_09_01::Models::LoadBalancingRule
      end
      def probe
        Azure::Network::Mgmt::V2017_09_01::Models::Probe
      end
      def inbound_nat_pool
        Azure::Network::Mgmt::V2017_09_01::Models::InboundNatPool
      end
      def outbound_nat_rule
        Azure::Network::Mgmt::V2017_09_01::Models::OutboundNatRule
      end
      def load_balancer
        Azure::Network::Mgmt::V2017_09_01::Models::LoadBalancer
      end
      def network_watcher
        Azure::Network::Mgmt::V2017_09_01::Models::NetworkWatcher
      end
      def patch_route_filter_rule
        Azure::Network::Mgmt::V2017_09_01::Models::PatchRouteFilterRule
      end
      def patch_route_filter
        Azure::Network::Mgmt::V2017_09_01::Models::PatchRouteFilter
      end
      def bgp_service_community
        Azure::Network::Mgmt::V2017_09_01::Models::BgpServiceCommunity
      end
      def virtual_network_peering
        Azure::Network::Mgmt::V2017_09_01::Models::VirtualNetworkPeering
      end
      def virtual_network
        Azure::Network::Mgmt::V2017_09_01::Models::VirtualNetwork
      end
      def virtual_network_gateway_ipconfiguration
        Azure::Network::Mgmt::V2017_09_01::Models::VirtualNetworkGatewayIPConfiguration
      end
      def vpn_client_root_certificate
        Azure::Network::Mgmt::V2017_09_01::Models::VpnClientRootCertificate
      end
      def vpn_client_revoked_certificate
        Azure::Network::Mgmt::V2017_09_01::Models::VpnClientRevokedCertificate
      end
      def virtual_network_gateway
        Azure::Network::Mgmt::V2017_09_01::Models::VirtualNetworkGateway
      end
      def local_network_gateway
        Azure::Network::Mgmt::V2017_09_01::Models::LocalNetworkGateway
      end
      def virtual_network_gateway_connection
        Azure::Network::Mgmt::V2017_09_01::Models::VirtualNetworkGatewayConnection
      end
      def virtual_network_gateway_connection_list_entity
        Azure::Network::Mgmt::V2017_09_01::Models::VirtualNetworkGatewayConnectionListEntity
      end
      def transport_protocol
        Azure::Network::Mgmt::V2017_09_01::Models::TransportProtocol
      end
      def ipallocation_method
        Azure::Network::Mgmt::V2017_09_01::Models::IPAllocationMethod
      end
      def ipversion
        Azure::Network::Mgmt::V2017_09_01::Models::IPVersion
      end
      def security_rule_protocol
        Azure::Network::Mgmt::V2017_09_01::Models::SecurityRuleProtocol
      end
      def security_rule_access
        Azure::Network::Mgmt::V2017_09_01::Models::SecurityRuleAccess
      end
      def security_rule_direction
        Azure::Network::Mgmt::V2017_09_01::Models::SecurityRuleDirection
      end
      def route_next_hop_type
        Azure::Network::Mgmt::V2017_09_01::Models::RouteNextHopType
      end
      def public_ipaddress_sku_name
        Azure::Network::Mgmt::V2017_09_01::Models::PublicIPAddressSkuName
      end
      def application_gateway_protocol
        Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayProtocol
      end
      def application_gateway_cookie_based_affinity
        Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayCookieBasedAffinity
      end
      def application_gateway_backend_health_server_health
        Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayBackendHealthServerHealth
      end
      def application_gateway_sku_name
        Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewaySkuName
      end
      def application_gateway_tier
        Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayTier
      end
      def application_gateway_ssl_protocol
        Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewaySslProtocol
      end
      def application_gateway_ssl_policy_type
        Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewaySslPolicyType
      end
      def application_gateway_ssl_policy_name
        Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewaySslPolicyName
      end
      def application_gateway_ssl_cipher_suite
        Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewaySslCipherSuite
      end
      def application_gateway_request_routing_rule_type
        Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayRequestRoutingRuleType
      end
      def application_gateway_redirect_type
        Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayRedirectType
      end
      def application_gateway_operational_state
        Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayOperationalState
      end
      def application_gateway_firewall_mode
        Azure::Network::Mgmt::V2017_09_01::Models::ApplicationGatewayFirewallMode
      end
      def authorization_use_status
        Azure::Network::Mgmt::V2017_09_01::Models::AuthorizationUseStatus
      end
      def express_route_circuit_peering_advertised_public_prefix_state
        Azure::Network::Mgmt::V2017_09_01::Models::ExpressRouteCircuitPeeringAdvertisedPublicPrefixState
      end
      def access
        Azure::Network::Mgmt::V2017_09_01::Models::Access
      end
      def express_route_circuit_peering_type
        Azure::Network::Mgmt::V2017_09_01::Models::ExpressRouteCircuitPeeringType
      end
      def express_route_circuit_peering_state
        Azure::Network::Mgmt::V2017_09_01::Models::ExpressRouteCircuitPeeringState
      end
      def express_route_circuit_sku_tier
        Azure::Network::Mgmt::V2017_09_01::Models::ExpressRouteCircuitSkuTier
      end
      def express_route_circuit_sku_family
        Azure::Network::Mgmt::V2017_09_01::Models::ExpressRouteCircuitSkuFamily
      end
      def service_provider_provisioning_state
        Azure::Network::Mgmt::V2017_09_01::Models::ServiceProviderProvisioningState
      end
      def load_balancer_sku_name
        Azure::Network::Mgmt::V2017_09_01::Models::LoadBalancerSkuName
      end
      def load_distribution
        Azure::Network::Mgmt::V2017_09_01::Models::LoadDistribution
      end
      def probe_protocol
        Azure::Network::Mgmt::V2017_09_01::Models::ProbeProtocol
      end
      def network_operation_status
        Azure::Network::Mgmt::V2017_09_01::Models::NetworkOperationStatus
      end
      def effective_security_rule_protocol
        Azure::Network::Mgmt::V2017_09_01::Models::EffectiveSecurityRuleProtocol
      end
      def effective_route_source
        Azure::Network::Mgmt::V2017_09_01::Models::EffectiveRouteSource
      end
      def effective_route_state
        Azure::Network::Mgmt::V2017_09_01::Models::EffectiveRouteState
      end
      def provisioning_state
        Azure::Network::Mgmt::V2017_09_01::Models::ProvisioningState
      end
      def association_type
        Azure::Network::Mgmt::V2017_09_01::Models::AssociationType
      end
      def direction
        Azure::Network::Mgmt::V2017_09_01::Models::Direction
      end
      def protocol
        Azure::Network::Mgmt::V2017_09_01::Models::Protocol
      end
      def next_hop_type
        Azure::Network::Mgmt::V2017_09_01::Models::NextHopType
      end
      def pc_protocol
        Azure::Network::Mgmt::V2017_09_01::Models::PcProtocol
      end
      def pc_status
        Azure::Network::Mgmt::V2017_09_01::Models::PcStatus
      end
      def pc_error
        Azure::Network::Mgmt::V2017_09_01::Models::PcError
      end
      def origin
        Azure::Network::Mgmt::V2017_09_01::Models::Origin
      end
      def severity
        Azure::Network::Mgmt::V2017_09_01::Models::Severity
      end
      def issue_type
        Azure::Network::Mgmt::V2017_09_01::Models::IssueType
      end
      def connection_status
        Azure::Network::Mgmt::V2017_09_01::Models::ConnectionStatus
      end
      def virtual_network_peering_state
        Azure::Network::Mgmt::V2017_09_01::Models::VirtualNetworkPeeringState
      end
      def virtual_network_gateway_type
        Azure::Network::Mgmt::V2017_09_01::Models::VirtualNetworkGatewayType
      end
      def vpn_type
        Azure::Network::Mgmt::V2017_09_01::Models::VpnType
      end
      def virtual_network_gateway_sku_name
        Azure::Network::Mgmt::V2017_09_01::Models::VirtualNetworkGatewaySkuName
      end
      def virtual_network_gateway_sku_tier
        Azure::Network::Mgmt::V2017_09_01::Models::VirtualNetworkGatewaySkuTier
      end
      def vpn_client_protocol
        Azure::Network::Mgmt::V2017_09_01::Models::VpnClientProtocol
      end
      def bgp_peer_state
        Azure::Network::Mgmt::V2017_09_01::Models::BgpPeerState
      end
      def processor_architecture
        Azure::Network::Mgmt::V2017_09_01::Models::ProcessorArchitecture
      end
      def authentication_method
        Azure::Network::Mgmt::V2017_09_01::Models::AuthenticationMethod
      end
      def virtual_network_gateway_connection_status
        Azure::Network::Mgmt::V2017_09_01::Models::VirtualNetworkGatewayConnectionStatus
      end
      def virtual_network_gateway_connection_type
        Azure::Network::Mgmt::V2017_09_01::Models::VirtualNetworkGatewayConnectionType
      end
      def ipsec_encryption
        Azure::Network::Mgmt::V2017_09_01::Models::IpsecEncryption
      end
      def ipsec_integrity
        Azure::Network::Mgmt::V2017_09_01::Models::IpsecIntegrity
      end
      def ike_encryption
        Azure::Network::Mgmt::V2017_09_01::Models::IkeEncryption
      end
      def ike_integrity
        Azure::Network::Mgmt::V2017_09_01::Models::IkeIntegrity
      end
      def dh_group
        Azure::Network::Mgmt::V2017_09_01::Models::DhGroup
      end
      def pfs_group
        Azure::Network::Mgmt::V2017_09_01::Models::PfsGroup
      end
    end
  end
end
