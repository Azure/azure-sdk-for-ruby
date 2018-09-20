# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_network'

module Azure::Network::Profiles::Latest
  module Mgmt
    AzureFirewalls = Azure::Network::Mgmt::V2018_06_01::AzureFirewalls
    ApplicationSecurityGroups = Azure::Network::Mgmt::V2018_06_01::ApplicationSecurityGroups
    DdosProtectionPlans = Azure::Network::Mgmt::V2018_06_01::DdosProtectionPlans
    AvailableEndpointServices = Azure::Network::Mgmt::V2018_06_01::AvailableEndpointServices
    ExpressRouteCircuitConnections = Azure::Network::Mgmt::V2018_06_01::ExpressRouteCircuitConnections
    ExpressRouteCrossConnections = Azure::Network::Mgmt::V2018_06_01::ExpressRouteCrossConnections
    ExpressRouteCrossConnectionPeerings = Azure::Network::Mgmt::V2018_06_01::ExpressRouteCrossConnectionPeerings
    LoadBalancerBackendAddressPools = Azure::Network::Mgmt::V2018_06_01::LoadBalancerBackendAddressPools
    LoadBalancerFrontendIPConfigurations = Azure::Network::Mgmt::V2018_06_01::LoadBalancerFrontendIPConfigurations
    InboundNatRules = Azure::Network::Mgmt::V2018_06_01::InboundNatRules
    LoadBalancerLoadBalancingRules = Azure::Network::Mgmt::V2018_06_01::LoadBalancerLoadBalancingRules
    LoadBalancerNetworkInterfaces = Azure::Network::Mgmt::V2018_06_01::LoadBalancerNetworkInterfaces
    LoadBalancerProbes = Azure::Network::Mgmt::V2018_06_01::LoadBalancerProbes
    NetworkInterfaceIPConfigurations = Azure::Network::Mgmt::V2018_06_01::NetworkInterfaceIPConfigurations
    NetworkInterfaceLoadBalancers = Azure::Network::Mgmt::V2018_06_01::NetworkInterfaceLoadBalancers
    DefaultSecurityRules = Azure::Network::Mgmt::V2018_06_01::DefaultSecurityRules
    NetworkWatchers = Azure::Network::Mgmt::V2018_06_01::NetworkWatchers
    PacketCaptures = Azure::Network::Mgmt::V2018_06_01::PacketCaptures
    ConnectionMonitors = Azure::Network::Mgmt::V2018_06_01::ConnectionMonitors
    Operations = Azure::Network::Mgmt::V2018_06_01::Operations
    RouteFilters = Azure::Network::Mgmt::V2018_06_01::RouteFilters
    RouteFilterRules = Azure::Network::Mgmt::V2018_06_01::RouteFilterRules
    ApplicationGateways = Azure::Network::Mgmt::V2018_06_01::ApplicationGateways
    ExpressRouteCircuitAuthorizations = Azure::Network::Mgmt::V2018_06_01::ExpressRouteCircuitAuthorizations
    ExpressRouteCircuitPeerings = Azure::Network::Mgmt::V2018_06_01::ExpressRouteCircuitPeerings
    ExpressRouteCircuits = Azure::Network::Mgmt::V2018_06_01::ExpressRouteCircuits
    ExpressRouteServiceProviders = Azure::Network::Mgmt::V2018_06_01::ExpressRouteServiceProviders
    LoadBalancers = Azure::Network::Mgmt::V2018_06_01::LoadBalancers
    NetworkInterfaces = Azure::Network::Mgmt::V2018_06_01::NetworkInterfaces
    NetworkSecurityGroups = Azure::Network::Mgmt::V2018_06_01::NetworkSecurityGroups
    SecurityRules = Azure::Network::Mgmt::V2018_06_01::SecurityRules
    PublicIPAddresses = Azure::Network::Mgmt::V2018_06_01::PublicIPAddresses
    RouteTables = Azure::Network::Mgmt::V2018_06_01::RouteTables
    Routes = Azure::Network::Mgmt::V2018_06_01::Routes
    Usages = Azure::Network::Mgmt::V2018_06_01::Usages
    VirtualNetworks = Azure::Network::Mgmt::V2018_06_01::VirtualNetworks
    Subnets = Azure::Network::Mgmt::V2018_06_01::Subnets
    BgpServiceCommunities = Azure::Network::Mgmt::V2018_06_01::BgpServiceCommunities
    VirtualNetworkPeerings = Azure::Network::Mgmt::V2018_06_01::VirtualNetworkPeerings
    VirtualNetworkGatewayConnections = Azure::Network::Mgmt::V2018_06_01::VirtualNetworkGatewayConnections
    VirtualNetworkGateways = Azure::Network::Mgmt::V2018_06_01::VirtualNetworkGateways
    VpnSitesConfiguration = Azure::Network::Mgmt::V2018_06_01::VpnSitesConfiguration
    LocalNetworkGateways = Azure::Network::Mgmt::V2018_06_01::LocalNetworkGateways
    HubVirtualNetworkConnections = Azure::Network::Mgmt::V2018_06_01::HubVirtualNetworkConnections
    VpnGateways = Azure::Network::Mgmt::V2018_06_01::VpnGateways
    VirtualWANs = Azure::Network::Mgmt::V2018_06_01::VirtualWANs
    VpnSites = Azure::Network::Mgmt::V2018_06_01::VpnSites
    VirtualHubs = Azure::Network::Mgmt::V2018_06_01::VirtualHubs
    VpnConnections = Azure::Network::Mgmt::V2018_06_01::VpnConnections

    module Models
      TopologyAssociation = Azure::Network::Mgmt::V2018_06_01::Models::TopologyAssociation
      TopologyResource = Azure::Network::Mgmt::V2018_06_01::Models::TopologyResource
      AzureFirewallRCAction = Azure::Network::Mgmt::V2018_06_01::Models::AzureFirewallRCAction
      Topology = Azure::Network::Mgmt::V2018_06_01::Models::Topology
      AzureFirewallApplicationRule = Azure::Network::Mgmt::V2018_06_01::Models::AzureFirewallApplicationRule
      VerificationIPFlowParameters = Azure::Network::Mgmt::V2018_06_01::Models::VerificationIPFlowParameters
      AzureFirewallNetworkRule = Azure::Network::Mgmt::V2018_06_01::Models::AzureFirewallNetworkRule
      VerificationIPFlowResult = Azure::Network::Mgmt::V2018_06_01::Models::VerificationIPFlowResult
      AzureFirewallListResult = Azure::Network::Mgmt::V2018_06_01::Models::AzureFirewallListResult
      BgpServiceCommunityListResult = Azure::Network::Mgmt::V2018_06_01::Models::BgpServiceCommunityListResult
      BGPCommunity = Azure::Network::Mgmt::V2018_06_01::Models::BGPCommunity
      ListHubVirtualNetworkConnectionsResult = Azure::Network::Mgmt::V2018_06_01::Models::ListHubVirtualNetworkConnectionsResult
      RouteFilterRuleListResult = Azure::Network::Mgmt::V2018_06_01::Models::RouteFilterRuleListResult
      GetVpnSitesConfigurationRequest = Azure::Network::Mgmt::V2018_06_01::Models::GetVpnSitesConfigurationRequest
      PublicIPAddressSku = Azure::Network::Mgmt::V2018_06_01::Models::PublicIPAddressSku
      InboundNatRuleListResult = Azure::Network::Mgmt::V2018_06_01::Models::InboundNatRuleListResult
      IpTag = Azure::Network::Mgmt::V2018_06_01::Models::IpTag
      LoadBalancerBackendAddressPoolListResult = Azure::Network::Mgmt::V2018_06_01::Models::LoadBalancerBackendAddressPoolListResult
      DeviceProperties = Azure::Network::Mgmt::V2018_06_01::Models::DeviceProperties
      LoadBalancerFrontendIPConfigurationListResult = Azure::Network::Mgmt::V2018_06_01::Models::LoadBalancerFrontendIPConfigurationListResult
      VpnDeviceScriptParameters = Azure::Network::Mgmt::V2018_06_01::Models::VpnDeviceScriptParameters
      LoadBalancerLoadBalancingRuleListResult = Azure::Network::Mgmt::V2018_06_01::Models::LoadBalancerLoadBalancingRuleListResult
      LoadBalancerProbeListResult = Azure::Network::Mgmt::V2018_06_01::Models::LoadBalancerProbeListResult
      ApplicationGatewayConnectionDraining = Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayConnectionDraining
      ApplicationGatewayBackendHealthServer = Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayBackendHealthServer
      ApplicationGatewayBackendHealthPool = Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayBackendHealthPool
      VpnClientIPsecParameters = Azure::Network::Mgmt::V2018_06_01::Models::VpnClientIPsecParameters
      NetworkInterfaceIPConfigurationListResult = Azure::Network::Mgmt::V2018_06_01::Models::NetworkInterfaceIPConfigurationListResult
      NetworkInterfaceLoadBalancerListResult = Azure::Network::Mgmt::V2018_06_01::Models::NetworkInterfaceLoadBalancerListResult
      GatewayRouteListResult = Azure::Network::Mgmt::V2018_06_01::Models::GatewayRouteListResult
      EffectiveNetworkSecurityGroupAssociation = Azure::Network::Mgmt::V2018_06_01::Models::EffectiveNetworkSecurityGroupAssociation
      EffectiveNetworkSecurityRule = Azure::Network::Mgmt::V2018_06_01::Models::EffectiveNetworkSecurityRule
      EffectiveNetworkSecurityGroup = Azure::Network::Mgmt::V2018_06_01::Models::EffectiveNetworkSecurityGroup
      BgpPeerStatus = Azure::Network::Mgmt::V2018_06_01::Models::BgpPeerStatus
      EffectiveNetworkSecurityGroupListResult = Azure::Network::Mgmt::V2018_06_01::Models::EffectiveNetworkSecurityGroupListResult
      ApplicationGatewayFirewallDisabledRuleGroup = Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayFirewallDisabledRuleGroup
      EffectiveRoute = Azure::Network::Mgmt::V2018_06_01::Models::EffectiveRoute
      ApplicationGatewayAutoscaleBounds = Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayAutoscaleBounds
      EffectiveRouteListResult = Azure::Network::Mgmt::V2018_06_01::Models::EffectiveRouteListResult
      ApplicationGatewayFirewallRule = Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayFirewallRule
      IpsecPolicy = Azure::Network::Mgmt::V2018_06_01::Models::IpsecPolicy
      RouteFilterListResult = Azure::Network::Mgmt::V2018_06_01::Models::RouteFilterListResult
      NetworkWatcherListResult = Azure::Network::Mgmt::V2018_06_01::Models::NetworkWatcherListResult
      ApplicationGatewayAvailableSslPredefinedPolicies = Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayAvailableSslPredefinedPolicies
      TopologyParameters = Azure::Network::Mgmt::V2018_06_01::Models::TopologyParameters
      ApplicationSecurityGroupListResult = Azure::Network::Mgmt::V2018_06_01::Models::ApplicationSecurityGroupListResult
      TagsObject = Azure::Network::Mgmt::V2018_06_01::Models::TagsObject
      DdosProtectionPlanListResult = Azure::Network::Mgmt::V2018_06_01::Models::DdosProtectionPlanListResult
      OperationListResult = Azure::Network::Mgmt::V2018_06_01::Models::OperationListResult
      EndpointServicesListResult = Azure::Network::Mgmt::V2018_06_01::Models::EndpointServicesListResult
      AzureFirewallApplicationRuleProtocol = Azure::Network::Mgmt::V2018_06_01::Models::AzureFirewallApplicationRuleProtocol
      Operation = Azure::Network::Mgmt::V2018_06_01::Models::Operation
      IPAddressAvailabilityResult = Azure::Network::Mgmt::V2018_06_01::Models::IPAddressAvailabilityResult
      OperationPropertiesFormatServiceSpecification = Azure::Network::Mgmt::V2018_06_01::Models::OperationPropertiesFormatServiceSpecification
      VirtualNetworkPeeringListResult = Azure::Network::Mgmt::V2018_06_01::Models::VirtualNetworkPeeringListResult
      NextHopParameters = Azure::Network::Mgmt::V2018_06_01::Models::NextHopParameters
      NextHopResult = Azure::Network::Mgmt::V2018_06_01::Models::NextHopResult
      SecurityGroupViewParameters = Azure::Network::Mgmt::V2018_06_01::Models::SecurityGroupViewParameters
      NetworkInterfaceAssociation = Azure::Network::Mgmt::V2018_06_01::Models::NetworkInterfaceAssociation
      SubnetAssociation = Azure::Network::Mgmt::V2018_06_01::Models::SubnetAssociation
      ExpressRouteCircuitRoutesTableSummary = Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteCircuitRoutesTableSummary
      SecurityRuleAssociations = Azure::Network::Mgmt::V2018_06_01::Models::SecurityRuleAssociations
      SecurityGroupNetworkInterface = Azure::Network::Mgmt::V2018_06_01::Models::SecurityGroupNetworkInterface
      SecurityGroupViewResult = Azure::Network::Mgmt::V2018_06_01::Models::SecurityGroupViewResult
      ExpressRouteCrossConnectionRoutesTableSummary = Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteCrossConnectionRoutesTableSummary
      PacketCaptureStorageLocation = Azure::Network::Mgmt::V2018_06_01::Models::PacketCaptureStorageLocation
      ExpressRouteCircuitReference = Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteCircuitReference
      PacketCaptureFilter = Azure::Network::Mgmt::V2018_06_01::Models::PacketCaptureFilter
      PacketCaptureParameters = Azure::Network::Mgmt::V2018_06_01::Models::PacketCaptureParameters
      ExpressRouteCrossConnectionPeeringList = Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteCrossConnectionPeeringList
      PacketCapture = Azure::Network::Mgmt::V2018_06_01::Models::PacketCapture
      PacketCaptureResult = Azure::Network::Mgmt::V2018_06_01::Models::PacketCaptureResult
      ListVpnConnectionsResult = Azure::Network::Mgmt::V2018_06_01::Models::ListVpnConnectionsResult
      PacketCaptureListResult = Azure::Network::Mgmt::V2018_06_01::Models::PacketCaptureListResult
      ListVirtualHubsResult = Azure::Network::Mgmt::V2018_06_01::Models::ListVirtualHubsResult
      PacketCaptureQueryStatusResult = Azure::Network::Mgmt::V2018_06_01::Models::PacketCaptureQueryStatusResult
      TroubleshootingParameters = Azure::Network::Mgmt::V2018_06_01::Models::TroubleshootingParameters
      ListVirtualWANsResult = Azure::Network::Mgmt::V2018_06_01::Models::ListVirtualWANsResult
      QueryTroubleshootingParameters = Azure::Network::Mgmt::V2018_06_01::Models::QueryTroubleshootingParameters
      VirtualNetworkConnectionGatewayReference = Azure::Network::Mgmt::V2018_06_01::Models::VirtualNetworkConnectionGatewayReference
      TroubleshootingRecommendedActions = Azure::Network::Mgmt::V2018_06_01::Models::TroubleshootingRecommendedActions
      ApplicationGatewayBackendHealthHttpSettings = Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayBackendHealthHttpSettings
      TroubleshootingDetails = Azure::Network::Mgmt::V2018_06_01::Models::TroubleshootingDetails
      ApplicationGatewaySslPolicy = Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewaySslPolicy
      TroubleshootingResult = Azure::Network::Mgmt::V2018_06_01::Models::TroubleshootingResult
      TunnelConnectionHealth = Azure::Network::Mgmt::V2018_06_01::Models::TunnelConnectionHealth
      RetentionPolicyParameters = Azure::Network::Mgmt::V2018_06_01::Models::RetentionPolicyParameters
      ApplicationGatewayProbeHealthResponseMatch = Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayProbeHealthResponseMatch
      FlowLogStatusParameters = Azure::Network::Mgmt::V2018_06_01::Models::FlowLogStatusParameters
      TrafficAnalyticsConfigurationProperties = Azure::Network::Mgmt::V2018_06_01::Models::TrafficAnalyticsConfigurationProperties
      ApplicationGatewayAutoscaleConfiguration = Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayAutoscaleConfiguration
      TrafficAnalyticsProperties = Azure::Network::Mgmt::V2018_06_01::Models::TrafficAnalyticsProperties
      ApplicationGatewayFirewallRuleGroup = Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayFirewallRuleGroup
      FlowLogInformation = Azure::Network::Mgmt::V2018_06_01::Models::FlowLogInformation
      VirtualNetworkListUsageResult = Azure::Network::Mgmt::V2018_06_01::Models::VirtualNetworkListUsageResult
      ConnectivitySource = Azure::Network::Mgmt::V2018_06_01::Models::ConnectivitySource
      VirtualNetworkUsage = Azure::Network::Mgmt::V2018_06_01::Models::VirtualNetworkUsage
      ConnectivityDestination = Azure::Network::Mgmt::V2018_06_01::Models::ConnectivityDestination
      HTTPConfiguration = Azure::Network::Mgmt::V2018_06_01::Models::HTTPConfiguration
      ProtocolConfiguration = Azure::Network::Mgmt::V2018_06_01::Models::ProtocolConfiguration
      ConnectivityParameters = Azure::Network::Mgmt::V2018_06_01::Models::ConnectivityParameters
      ExpressRouteCircuitsRoutesTableSummaryListResult = Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteCircuitsRoutesTableSummaryListResult
      ConnectivityIssue = Azure::Network::Mgmt::V2018_06_01::Models::ConnectivityIssue
      ConnectivityHop = Azure::Network::Mgmt::V2018_06_01::Models::ConnectivityHop
      ConnectivityInformation = Azure::Network::Mgmt::V2018_06_01::Models::ConnectivityInformation
      LoadBalancerSku = Azure::Network::Mgmt::V2018_06_01::Models::LoadBalancerSku
      AzureReachabilityReportLocation = Azure::Network::Mgmt::V2018_06_01::Models::AzureReachabilityReportLocation
      ListVpnGatewaysResult = Azure::Network::Mgmt::V2018_06_01::Models::ListVpnGatewaysResult
      AzureReachabilityReportParameters = Azure::Network::Mgmt::V2018_06_01::Models::AzureReachabilityReportParameters
      ListVpnSitesResult = Azure::Network::Mgmt::V2018_06_01::Models::ListVpnSitesResult
      AzureReachabilityReportLatencyInfo = Azure::Network::Mgmt::V2018_06_01::Models::AzureReachabilityReportLatencyInfo
      AzureReachabilityReportItem = Azure::Network::Mgmt::V2018_06_01::Models::AzureReachabilityReportItem
      Error = Azure::Network::Mgmt::V2018_06_01::Models::Error
      GatewayRoute = Azure::Network::Mgmt::V2018_06_01::Models::GatewayRoute
      AvailableProvidersListParameters = Azure::Network::Mgmt::V2018_06_01::Models::AvailableProvidersListParameters
      AvailableProvidersListCity = Azure::Network::Mgmt::V2018_06_01::Models::AvailableProvidersListCity
      DdosProtectionPlan = Azure::Network::Mgmt::V2018_06_01::Models::DdosProtectionPlan
      AvailableProvidersListState = Azure::Network::Mgmt::V2018_06_01::Models::AvailableProvidersListState
      AzureReachabilityReport = Azure::Network::Mgmt::V2018_06_01::Models::AzureReachabilityReport
      AvailableProvidersListCountry = Azure::Network::Mgmt::V2018_06_01::Models::AvailableProvidersListCountry
      ConnectionMonitorSource = Azure::Network::Mgmt::V2018_06_01::Models::ConnectionMonitorSource
      ExpressRouteCrossConnectionListResult = Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteCrossConnectionListResult
      ConnectionMonitorDestination = Azure::Network::Mgmt::V2018_06_01::Models::ConnectionMonitorDestination
      ServiceEndpointPropertiesFormat = Azure::Network::Mgmt::V2018_06_01::Models::ServiceEndpointPropertiesFormat
      ConnectionMonitorParameters = Azure::Network::Mgmt::V2018_06_01::Models::ConnectionMonitorParameters
      AvailableProvidersList = Azure::Network::Mgmt::V2018_06_01::Models::AvailableProvidersList
      ApplicationGatewayBackendHealth = Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayBackendHealth
      ConnectionMonitor = Azure::Network::Mgmt::V2018_06_01::Models::ConnectionMonitor
      ApplicationGatewayWebApplicationFirewallConfiguration = Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayWebApplicationFirewallConfiguration
      ConnectionMonitorResult = Azure::Network::Mgmt::V2018_06_01::Models::ConnectionMonitorResult
      VirtualNetworkUsageName = Azure::Network::Mgmt::V2018_06_01::Models::VirtualNetworkUsageName
      ConnectionMonitorListResult = Azure::Network::Mgmt::V2018_06_01::Models::ConnectionMonitorListResult
      ConnectionStateSnapshot = Azure::Network::Mgmt::V2018_06_01::Models::ConnectionStateSnapshot
      VpnSiteId = Azure::Network::Mgmt::V2018_06_01::Models::VpnSiteId
      ConnectionMonitorQueryResult = Azure::Network::Mgmt::V2018_06_01::Models::ConnectionMonitorQueryResult
      BgpPeerStatusListResult = Azure::Network::Mgmt::V2018_06_01::Models::BgpPeerStatusListResult
      OperationDisplay = Azure::Network::Mgmt::V2018_06_01::Models::OperationDisplay
      Ipv6ExpressRouteCircuitPeeringConfig = Azure::Network::Mgmt::V2018_06_01::Models::Ipv6ExpressRouteCircuitPeeringConfig
      Availability = Azure::Network::Mgmt::V2018_06_01::Models::Availability
      VirtualNetworkGatewayListConnectionsResult = Azure::Network::Mgmt::V2018_06_01::Models::VirtualNetworkGatewayListConnectionsResult
      Dimension = Azure::Network::Mgmt::V2018_06_01::Models::Dimension
      ExpressRouteCrossConnectionsRoutesTableSummaryListResult = Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteCrossConnectionsRoutesTableSummaryListResult
      MetricSpecification = Azure::Network::Mgmt::V2018_06_01::Models::MetricSpecification
      ApplicationGatewayAvailableWafRuleSetsResult = Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayAvailableWafRuleSetsResult
      LogSpecification = Azure::Network::Mgmt::V2018_06_01::Models::LogSpecification
      AzureFirewallIPConfiguration = Azure::Network::Mgmt::V2018_06_01::Models::AzureFirewallIPConfiguration
      AzureFirewallApplicationRuleCollection = Azure::Network::Mgmt::V2018_06_01::Models::AzureFirewallApplicationRuleCollection
      AzureFirewallNetworkRuleCollection = Azure::Network::Mgmt::V2018_06_01::Models::AzureFirewallNetworkRuleCollection
      AzureFirewall = Azure::Network::Mgmt::V2018_06_01::Models::AzureFirewall
      ApplicationSecurityGroup = Azure::Network::Mgmt::V2018_06_01::Models::ApplicationSecurityGroup
      ResourceNavigationLink = Azure::Network::Mgmt::V2018_06_01::Models::ResourceNavigationLink
      ApplicationGatewayAuthenticationCertificate = Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayAuthenticationCertificate
      ApplicationGatewayRedirectConfiguration = Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayRedirectConfiguration
      ApplicationGatewayFirewallRuleSet = Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayFirewallRuleSet
      ApplicationGatewayAvailableSslOptions = Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayAvailableSslOptions
      ApplicationGatewaySslPredefinedPolicy = Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewaySslPredefinedPolicy
      HTTPHeader = Azure::Network::Mgmt::V2018_06_01::Models::HTTPHeader
      RouteFilterRule = Azure::Network::Mgmt::V2018_06_01::Models::RouteFilterRule
      EndpointServiceResult = Azure::Network::Mgmt::V2018_06_01::Models::EndpointServiceResult
      RouteFilter = Azure::Network::Mgmt::V2018_06_01::Models::RouteFilter
      ExpressRouteCircuitConnection = Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteCircuitConnection
      ExpressRouteCrossConnection = Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteCrossConnection
      ExpressRouteCrossConnectionPeering = Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteCrossConnectionPeering
      PatchRouteFilterRule = Azure::Network::Mgmt::V2018_06_01::Models::PatchRouteFilterRule
      NetworkWatcher = Azure::Network::Mgmt::V2018_06_01::Models::NetworkWatcher
      BgpServiceCommunity = Azure::Network::Mgmt::V2018_06_01::Models::BgpServiceCommunity
      PatchRouteFilter = Azure::Network::Mgmt::V2018_06_01::Models::PatchRouteFilter
      VirtualNetworkGatewayConnectionListEntity = Azure::Network::Mgmt::V2018_06_01::Models::VirtualNetworkGatewayConnectionListEntity
      VirtualNetworkPeering = Azure::Network::Mgmt::V2018_06_01::Models::VirtualNetworkPeering
      VpnSite = Azure::Network::Mgmt::V2018_06_01::Models::VpnSite
      VirtualWAN = Azure::Network::Mgmt::V2018_06_01::Models::VirtualWAN
      VirtualHub = Azure::Network::Mgmt::V2018_06_01::Models::VirtualHub
      HubVirtualNetworkConnection = Azure::Network::Mgmt::V2018_06_01::Models::HubVirtualNetworkConnection
      VpnGateway = Azure::Network::Mgmt::V2018_06_01::Models::VpnGateway
      VpnConnection = Azure::Network::Mgmt::V2018_06_01::Models::VpnConnection
      AzureFirewallRCActionType = Azure::Network::Mgmt::V2018_06_01::Models::AzureFirewallRCActionType
      ProvisioningState = Azure::Network::Mgmt::V2018_06_01::Models::ProvisioningState
      AzureFirewallNetworkRuleProtocol = Azure::Network::Mgmt::V2018_06_01::Models::AzureFirewallNetworkRuleProtocol
      AzureFirewallApplicationRuleProtocolType = Azure::Network::Mgmt::V2018_06_01::Models::AzureFirewallApplicationRuleProtocolType
      PublicIPAddressSkuName = Azure::Network::Mgmt::V2018_06_01::Models::PublicIPAddressSkuName
      IPVersion = Azure::Network::Mgmt::V2018_06_01::Models::IPVersion
      ApplicationGatewaySslProtocol = Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewaySslProtocol
      ApplicationGatewayBackendHealthServerHealth = Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayBackendHealthServerHealth
      ApplicationGatewaySslPolicyName = Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewaySslPolicyName
      ApplicationGatewaySslPolicyType = Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewaySslPolicyType
      ApplicationGatewayRedirectType = Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayRedirectType
      ApplicationGatewaySslCipherSuite = Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewaySslCipherSuite
      Access = Azure::Network::Mgmt::V2018_06_01::Models::Access
      ApplicationGatewayFirewallMode = Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayFirewallMode
      ExpressRoutePeeringState = Azure::Network::Mgmt::V2018_06_01::Models::ExpressRoutePeeringState
      ExpressRoutePeeringType = Azure::Network::Mgmt::V2018_06_01::Models::ExpressRoutePeeringType
      LoadBalancerSkuName = Azure::Network::Mgmt::V2018_06_01::Models::LoadBalancerSkuName
      CircuitConnectionStatus = Azure::Network::Mgmt::V2018_06_01::Models::CircuitConnectionStatus
      EffectiveRouteSource = Azure::Network::Mgmt::V2018_06_01::Models::EffectiveRouteSource
      EffectiveSecurityRuleProtocol = Azure::Network::Mgmt::V2018_06_01::Models::EffectiveSecurityRuleProtocol
      AssociationType = Azure::Network::Mgmt::V2018_06_01::Models::AssociationType
      EffectiveRouteState = Azure::Network::Mgmt::V2018_06_01::Models::EffectiveRouteState
      IpFlowProtocol = Azure::Network::Mgmt::V2018_06_01::Models::IpFlowProtocol
      Direction = Azure::Network::Mgmt::V2018_06_01::Models::Direction
      PcProtocol = Azure::Network::Mgmt::V2018_06_01::Models::PcProtocol
      NextHopType = Azure::Network::Mgmt::V2018_06_01::Models::NextHopType
      PcError = Azure::Network::Mgmt::V2018_06_01::Models::PcError
      PcStatus = Azure::Network::Mgmt::V2018_06_01::Models::PcStatus
      Origin = Azure::Network::Mgmt::V2018_06_01::Models::Origin
      HTTPMethod = Azure::Network::Mgmt::V2018_06_01::Models::HTTPMethod
      ConnectionStatus = Azure::Network::Mgmt::V2018_06_01::Models::ConnectionStatus
      IssueType = Azure::Network::Mgmt::V2018_06_01::Models::IssueType
      ConnectionState = Azure::Network::Mgmt::V2018_06_01::Models::ConnectionState
      ConnectionMonitorSourceStatus = Azure::Network::Mgmt::V2018_06_01::Models::ConnectionMonitorSourceStatus
      VirtualNetworkPeeringState = Azure::Network::Mgmt::V2018_06_01::Models::VirtualNetworkPeeringState
      EvaluationState = Azure::Network::Mgmt::V2018_06_01::Models::EvaluationState
      IpsecEncryption = Azure::Network::Mgmt::V2018_06_01::Models::IpsecEncryption
      VpnClientProtocol = Azure::Network::Mgmt::V2018_06_01::Models::VpnClientProtocol
      IkeEncryption = Azure::Network::Mgmt::V2018_06_01::Models::IkeEncryption
      IpsecIntegrity = Azure::Network::Mgmt::V2018_06_01::Models::IpsecIntegrity
      DhGroup = Azure::Network::Mgmt::V2018_06_01::Models::DhGroup
      IkeIntegrity = Azure::Network::Mgmt::V2018_06_01::Models::IkeIntegrity
      BgpPeerState = Azure::Network::Mgmt::V2018_06_01::Models::BgpPeerState
      PfsGroup = Azure::Network::Mgmt::V2018_06_01::Models::PfsGroup
      VpnConnectionStatus = Azure::Network::Mgmt::V2018_06_01::Models::VpnConnectionStatus
      AuthenticationMethod = Azure::Network::Mgmt::V2018_06_01::Models::AuthenticationMethod
      HubVirtualNetworkConnectionStatus = Azure::Network::Mgmt::V2018_06_01::Models::HubVirtualNetworkConnectionStatus
      TunnelConnectionStatus = Azure::Network::Mgmt::V2018_06_01::Models::TunnelConnectionStatus
      ExpressRouteCircuitListResult = Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteCircuitListResult
      SubResource = Azure::Network::Mgmt::V2018_06_01::Models::SubResource
      ExpressRouteServiceProviderBandwidthsOffered = Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteServiceProviderBandwidthsOffered
      PublicIPAddressListResult = Azure::Network::Mgmt::V2018_06_01::Models::PublicIPAddressListResult
      ApplicationGatewayListResult = Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayListResult
      ApplicationGatewayBackendAddress = Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayBackendAddress
      Resource = Azure::Network::Mgmt::V2018_06_01::Models::Resource
      ConnectionResetSharedKey = Azure::Network::Mgmt::V2018_06_01::Models::ConnectionResetSharedKey
      DnsNameAvailabilityResult = Azure::Network::Mgmt::V2018_06_01::Models::DnsNameAvailabilityResult
      NetworkInterfaceDnsSettings = Azure::Network::Mgmt::V2018_06_01::Models::NetworkInterfaceDnsSettings
      NetworkSecurityGroupListResult = Azure::Network::Mgmt::V2018_06_01::Models::NetworkSecurityGroupListResult
      VirtualNetworkGatewayListResult = Azure::Network::Mgmt::V2018_06_01::Models::VirtualNetworkGatewayListResult
      AuthorizationListResult = Azure::Network::Mgmt::V2018_06_01::Models::AuthorizationListResult
      BgpSettings = Azure::Network::Mgmt::V2018_06_01::Models::BgpSettings
      ExpressRouteCircuitPeeringConfig = Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteCircuitPeeringConfig
      VpnClientConfiguration = Azure::Network::Mgmt::V2018_06_01::Models::VpnClientConfiguration
      ExpressRouteCircuitStats = Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteCircuitStats
      VirtualNetworkListResult = Azure::Network::Mgmt::V2018_06_01::Models::VirtualNetworkListResult
      SecurityRuleListResult = Azure::Network::Mgmt::V2018_06_01::Models::SecurityRuleListResult
      AddressSpace = Azure::Network::Mgmt::V2018_06_01::Models::AddressSpace
      ExpressRouteCircuitPeeringListResult = Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteCircuitPeeringListResult
      UsagesListResult = Azure::Network::Mgmt::V2018_06_01::Models::UsagesListResult
      Policies = Azure::Network::Mgmt::V2018_06_01::Models::Policies
      UsageName = Azure::Network::Mgmt::V2018_06_01::Models::UsageName
      ExpressRouteCircuitServiceProviderProperties = Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteCircuitServiceProviderProperties
      RouteTableListResult = Azure::Network::Mgmt::V2018_06_01::Models::RouteTableListResult
      NetworkInterfaceListResult = Azure::Network::Mgmt::V2018_06_01::Models::NetworkInterfaceListResult
      ConnectionSharedKey = Azure::Network::Mgmt::V2018_06_01::Models::ConnectionSharedKey
      ExpressRouteCircuitArpTable = Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteCircuitArpTable
      ExpressRouteCircuitsArpTableListResult = Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteCircuitsArpTableListResult
      PublicIPAddressDnsSettings = Azure::Network::Mgmt::V2018_06_01::Models::PublicIPAddressDnsSettings
      ExpressRouteCircuitRoutesTable = Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteCircuitRoutesTable
      DhcpOptions = Azure::Network::Mgmt::V2018_06_01::Models::DhcpOptions
      ExpressRouteCircuitsRoutesTableListResult = Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteCircuitsRoutesTableListResult
      Usage = Azure::Network::Mgmt::V2018_06_01::Models::Usage
      ApplicationGatewaySku = Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewaySku
      LocalNetworkGatewayListResult = Azure::Network::Mgmt::V2018_06_01::Models::LocalNetworkGatewayListResult
      VirtualNetworkGatewayConnectionListResult = Azure::Network::Mgmt::V2018_06_01::Models::VirtualNetworkGatewayConnectionListResult
      LoadBalancerListResult = Azure::Network::Mgmt::V2018_06_01::Models::LoadBalancerListResult
      VirtualNetworkGatewaySku = Azure::Network::Mgmt::V2018_06_01::Models::VirtualNetworkGatewaySku
      AzureAsyncOperationResult = Azure::Network::Mgmt::V2018_06_01::Models::AzureAsyncOperationResult
      RouteListResult = Azure::Network::Mgmt::V2018_06_01::Models::RouteListResult
      ExpressRouteCircuitSku = Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteCircuitSku
      SubnetListResult = Azure::Network::Mgmt::V2018_06_01::Models::SubnetListResult
      VpnClientParameters = Azure::Network::Mgmt::V2018_06_01::Models::VpnClientParameters
      ErrorDetails = Azure::Network::Mgmt::V2018_06_01::Models::ErrorDetails
      ExpressRouteServiceProviderListResult = Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteServiceProviderListResult
      ApplicationGatewayIPConfiguration = Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayIPConfiguration
      ApplicationGatewaySslCertificate = Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewaySslCertificate
      ApplicationGatewayFrontendIPConfiguration = Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayFrontendIPConfiguration
      BackendAddressPool = Azure::Network::Mgmt::V2018_06_01::Models::BackendAddressPool
      InboundNatRule = Azure::Network::Mgmt::V2018_06_01::Models::InboundNatRule
      SecurityRule = Azure::Network::Mgmt::V2018_06_01::Models::SecurityRule
      NetworkInterface = Azure::Network::Mgmt::V2018_06_01::Models::NetworkInterface
      NetworkSecurityGroup = Azure::Network::Mgmt::V2018_06_01::Models::NetworkSecurityGroup
      Route = Azure::Network::Mgmt::V2018_06_01::Models::Route
      RouteTable = Azure::Network::Mgmt::V2018_06_01::Models::RouteTable
      PublicIPAddress = Azure::Network::Mgmt::V2018_06_01::Models::PublicIPAddress
      IPConfiguration = Azure::Network::Mgmt::V2018_06_01::Models::IPConfiguration
      Subnet = Azure::Network::Mgmt::V2018_06_01::Models::Subnet
      NetworkInterfaceIPConfiguration = Azure::Network::Mgmt::V2018_06_01::Models::NetworkInterfaceIPConfiguration
      ApplicationGatewayBackendAddressPool = Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayBackendAddressPool
      ApplicationGatewayBackendHttpSettings = Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayBackendHttpSettings
      ApplicationGatewayHttpListener = Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayHttpListener
      ApplicationGatewayFrontendPort = Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayFrontendPort
      ApplicationGatewayPathRule = Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayPathRule
      ApplicationGatewayProbe = Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayProbe
      ApplicationGatewayRequestRoutingRule = Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayRequestRoutingRule
      ApplicationGatewayUrlPathMap = Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayUrlPathMap
      ApplicationGateway = Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGateway
      ExpressRouteCircuitAuthorization = Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteCircuitAuthorization
      ExpressRouteCircuitPeering = Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteCircuitPeering
      ExpressRouteCircuit = Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteCircuit
      ExpressRouteServiceProvider = Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteServiceProvider
      FrontendIPConfiguration = Azure::Network::Mgmt::V2018_06_01::Models::FrontendIPConfiguration
      LoadBalancingRule = Azure::Network::Mgmt::V2018_06_01::Models::LoadBalancingRule
      Probe = Azure::Network::Mgmt::V2018_06_01::Models::Probe
      InboundNatPool = Azure::Network::Mgmt::V2018_06_01::Models::InboundNatPool
      OutboundNatRule = Azure::Network::Mgmt::V2018_06_01::Models::OutboundNatRule
      LoadBalancer = Azure::Network::Mgmt::V2018_06_01::Models::LoadBalancer
      VirtualNetwork = Azure::Network::Mgmt::V2018_06_01::Models::VirtualNetwork
      VirtualNetworkGatewayIPConfiguration = Azure::Network::Mgmt::V2018_06_01::Models::VirtualNetworkGatewayIPConfiguration
      VpnClientRootCertificate = Azure::Network::Mgmt::V2018_06_01::Models::VpnClientRootCertificate
      VpnClientRevokedCertificate = Azure::Network::Mgmt::V2018_06_01::Models::VpnClientRevokedCertificate
      VirtualNetworkGateway = Azure::Network::Mgmt::V2018_06_01::Models::VirtualNetworkGateway
      LocalNetworkGateway = Azure::Network::Mgmt::V2018_06_01::Models::LocalNetworkGateway
      VirtualNetworkGatewayConnection = Azure::Network::Mgmt::V2018_06_01::Models::VirtualNetworkGatewayConnection
      ApplicationGatewaySkuName = Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewaySkuName
      IPAllocationMethod = Azure::Network::Mgmt::V2018_06_01::Models::IPAllocationMethod
      TransportProtocol = Azure::Network::Mgmt::V2018_06_01::Models::TransportProtocol
      SecurityRuleProtocol = Azure::Network::Mgmt::V2018_06_01::Models::SecurityRuleProtocol
      SecurityRuleAccess = Azure::Network::Mgmt::V2018_06_01::Models::SecurityRuleAccess
      SecurityRuleDirection = Azure::Network::Mgmt::V2018_06_01::Models::SecurityRuleDirection
      RouteNextHopType = Azure::Network::Mgmt::V2018_06_01::Models::RouteNextHopType
      ApplicationGatewayProtocol = Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayProtocol
      ApplicationGatewayCookieBasedAffinity = Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayCookieBasedAffinity
      ApplicationGatewayRequestRoutingRuleType = Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayRequestRoutingRuleType
      ApplicationGatewayTier = Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayTier
      ApplicationGatewayOperationalState = Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayOperationalState
      AuthorizationUseStatus = Azure::Network::Mgmt::V2018_06_01::Models::AuthorizationUseStatus
      ExpressRouteCircuitPeeringAdvertisedPublicPrefixState = Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteCircuitPeeringAdvertisedPublicPrefixState
      ExpressRouteCircuitPeeringState = Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteCircuitPeeringState
      ExpressRouteCircuitSkuTier = Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteCircuitSkuTier
      ExpressRouteCircuitSkuFamily = Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteCircuitSkuFamily
      ServiceProviderProvisioningState = Azure::Network::Mgmt::V2018_06_01::Models::ServiceProviderProvisioningState
      LoadDistribution = Azure::Network::Mgmt::V2018_06_01::Models::LoadDistribution
      ProbeProtocol = Azure::Network::Mgmt::V2018_06_01::Models::ProbeProtocol
      NetworkOperationStatus = Azure::Network::Mgmt::V2018_06_01::Models::NetworkOperationStatus
      VirtualNetworkGatewayType = Azure::Network::Mgmt::V2018_06_01::Models::VirtualNetworkGatewayType
      VpnType = Azure::Network::Mgmt::V2018_06_01::Models::VpnType
      VirtualNetworkGatewaySkuName = Azure::Network::Mgmt::V2018_06_01::Models::VirtualNetworkGatewaySkuName
      VirtualNetworkGatewaySkuTier = Azure::Network::Mgmt::V2018_06_01::Models::VirtualNetworkGatewaySkuTier
      Protocol = Azure::Network::Mgmt::V2018_06_01::Models::Protocol
      ProcessorArchitecture = Azure::Network::Mgmt::V2018_06_01::Models::ProcessorArchitecture
      VirtualNetworkGatewayConnectionStatus = Azure::Network::Mgmt::V2018_06_01::Models::VirtualNetworkGatewayConnectionStatus
      VirtualNetworkGatewayConnectionType = Azure::Network::Mgmt::V2018_06_01::Models::VirtualNetworkGatewayConnectionType
      Severity = Azure::Network::Mgmt::V2018_06_01::Models::Severity
    end

    #
    # NetworkManagementClass
    #
    class NetworkManagementClass
      attr_reader :azure_firewalls, :application_security_groups, :ddos_protection_plans, :available_endpoint_services, :express_route_circuit_connections, :express_route_cross_connections, :express_route_cross_connection_peerings, :load_balancer_backend_address_pools, :load_balancer_frontend_ipconfigurations, :inbound_nat_rules, :load_balancer_load_balancing_rules, :load_balancer_network_interfaces, :load_balancer_probes, :network_interface_ipconfigurations, :network_interface_load_balancers, :default_security_rules, :network_watchers, :packet_captures, :connection_monitors, :operations, :route_filters, :route_filter_rules, :application_gateways, :express_route_circuit_authorizations, :express_route_circuit_peerings, :express_route_circuits, :express_route_service_providers, :load_balancers, :network_interfaces, :network_security_groups, :security_rules, :public_ipaddresses, :route_tables, :routes, :usages, :virtual_networks, :subnets, :bgp_service_communities, :virtual_network_peerings, :virtual_network_gateway_connections, :virtual_network_gateways, :vpn_sites_configuration, :local_network_gateways, :hub_virtual_network_connections, :vpn_gateways, :virtual_wans, :vpn_sites, :virtual_hubs, :vpn_connections, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        if options.is_a?(Hash) && options.length == 0
          @options = setup_default_options
        else
          @options = options
        end

        reset!(options)

        @configurable = self
        @base_url = options[:base_url].nil? ? nil:options[:base_url]
        @options = options[:options].nil? ? nil:options[:options]

        @client_0 = Azure::Network::Mgmt::V2018_06_01::NetworkManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @azure_firewalls = @client_0.azure_firewalls
        @application_security_groups = @client_0.application_security_groups
        @ddos_protection_plans = @client_0.ddos_protection_plans
        @available_endpoint_services = @client_0.available_endpoint_services
        @express_route_circuit_connections = @client_0.express_route_circuit_connections
        @express_route_cross_connections = @client_0.express_route_cross_connections
        @express_route_cross_connection_peerings = @client_0.express_route_cross_connection_peerings
        @load_balancer_backend_address_pools = @client_0.load_balancer_backend_address_pools
        @load_balancer_frontend_ipconfigurations = @client_0.load_balancer_frontend_ipconfigurations
        @inbound_nat_rules = @client_0.inbound_nat_rules
        @load_balancer_load_balancing_rules = @client_0.load_balancer_load_balancing_rules
        @load_balancer_network_interfaces = @client_0.load_balancer_network_interfaces
        @load_balancer_probes = @client_0.load_balancer_probes
        @network_interface_ipconfigurations = @client_0.network_interface_ipconfigurations
        @network_interface_load_balancers = @client_0.network_interface_load_balancers
        @default_security_rules = @client_0.default_security_rules
        @network_watchers = @client_0.network_watchers
        @packet_captures = @client_0.packet_captures
        @connection_monitors = @client_0.connection_monitors
        @operations = @client_0.operations
        @route_filters = @client_0.route_filters
        @route_filter_rules = @client_0.route_filter_rules
        @application_gateways = @client_0.application_gateways
        @express_route_circuit_authorizations = @client_0.express_route_circuit_authorizations
        @express_route_circuit_peerings = @client_0.express_route_circuit_peerings
        @express_route_circuits = @client_0.express_route_circuits
        @express_route_service_providers = @client_0.express_route_service_providers
        @load_balancers = @client_0.load_balancers
        @network_interfaces = @client_0.network_interfaces
        @network_security_groups = @client_0.network_security_groups
        @security_rules = @client_0.security_rules
        @public_ipaddresses = @client_0.public_ipaddresses
        @route_tables = @client_0.route_tables
        @routes = @client_0.routes
        @usages = @client_0.usages
        @virtual_networks = @client_0.virtual_networks
        @subnets = @client_0.subnets
        @bgp_service_communities = @client_0.bgp_service_communities
        @virtual_network_peerings = @client_0.virtual_network_peerings
        @virtual_network_gateway_connections = @client_0.virtual_network_gateway_connections
        @virtual_network_gateways = @client_0.virtual_network_gateways
        @vpn_sites_configuration = @client_0.vpn_sites_configuration
        @local_network_gateways = @client_0.local_network_gateways
        @hub_virtual_network_connections = @client_0.hub_virtual_network_connections
        @vpn_gateways = @client_0.vpn_gateways
        @virtual_wans = @client_0.virtual_wans
        @vpn_sites = @client_0.vpn_sites
        @virtual_hubs = @client_0.virtual_hubs
        @vpn_connections = @client_0.vpn_connections

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/Network/Mgmt'
        client.add_user_agent_information(profile_information)
      end

      def method_missing(method, *args)
        if @client_0.respond_to?method
          @client_0.send(method, *args)
        else
          super
        end
      end

    end

    class ModelClasses
      def topology_association
        Azure::Network::Mgmt::V2018_06_01::Models::TopologyAssociation
      end
      def topology_resource
        Azure::Network::Mgmt::V2018_06_01::Models::TopologyResource
      end
      def azure_firewall_rcaction
        Azure::Network::Mgmt::V2018_06_01::Models::AzureFirewallRCAction
      end
      def topology
        Azure::Network::Mgmt::V2018_06_01::Models::Topology
      end
      def azure_firewall_application_rule
        Azure::Network::Mgmt::V2018_06_01::Models::AzureFirewallApplicationRule
      end
      def verification_ipflow_parameters
        Azure::Network::Mgmt::V2018_06_01::Models::VerificationIPFlowParameters
      end
      def azure_firewall_network_rule
        Azure::Network::Mgmt::V2018_06_01::Models::AzureFirewallNetworkRule
      end
      def verification_ipflow_result
        Azure::Network::Mgmt::V2018_06_01::Models::VerificationIPFlowResult
      end
      def azure_firewall_list_result
        Azure::Network::Mgmt::V2018_06_01::Models::AzureFirewallListResult
      end
      def bgp_service_community_list_result
        Azure::Network::Mgmt::V2018_06_01::Models::BgpServiceCommunityListResult
      end
      def bgpcommunity
        Azure::Network::Mgmt::V2018_06_01::Models::BGPCommunity
      end
      def list_hub_virtual_network_connections_result
        Azure::Network::Mgmt::V2018_06_01::Models::ListHubVirtualNetworkConnectionsResult
      end
      def route_filter_rule_list_result
        Azure::Network::Mgmt::V2018_06_01::Models::RouteFilterRuleListResult
      end
      def get_vpn_sites_configuration_request
        Azure::Network::Mgmt::V2018_06_01::Models::GetVpnSitesConfigurationRequest
      end
      def public_ipaddress_sku
        Azure::Network::Mgmt::V2018_06_01::Models::PublicIPAddressSku
      end
      def inbound_nat_rule_list_result
        Azure::Network::Mgmt::V2018_06_01::Models::InboundNatRuleListResult
      end
      def ip_tag
        Azure::Network::Mgmt::V2018_06_01::Models::IpTag
      end
      def load_balancer_backend_address_pool_list_result
        Azure::Network::Mgmt::V2018_06_01::Models::LoadBalancerBackendAddressPoolListResult
      end
      def device_properties
        Azure::Network::Mgmt::V2018_06_01::Models::DeviceProperties
      end
      def load_balancer_frontend_ipconfiguration_list_result
        Azure::Network::Mgmt::V2018_06_01::Models::LoadBalancerFrontendIPConfigurationListResult
      end
      def vpn_device_script_parameters
        Azure::Network::Mgmt::V2018_06_01::Models::VpnDeviceScriptParameters
      end
      def load_balancer_load_balancing_rule_list_result
        Azure::Network::Mgmt::V2018_06_01::Models::LoadBalancerLoadBalancingRuleListResult
      end
      def load_balancer_probe_list_result
        Azure::Network::Mgmt::V2018_06_01::Models::LoadBalancerProbeListResult
      end
      def application_gateway_connection_draining
        Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayConnectionDraining
      end
      def application_gateway_backend_health_server
        Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayBackendHealthServer
      end
      def application_gateway_backend_health_pool
        Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayBackendHealthPool
      end
      def vpn_client_ipsec_parameters
        Azure::Network::Mgmt::V2018_06_01::Models::VpnClientIPsecParameters
      end
      def network_interface_ipconfiguration_list_result
        Azure::Network::Mgmt::V2018_06_01::Models::NetworkInterfaceIPConfigurationListResult
      end
      def network_interface_load_balancer_list_result
        Azure::Network::Mgmt::V2018_06_01::Models::NetworkInterfaceLoadBalancerListResult
      end
      def gateway_route_list_result
        Azure::Network::Mgmt::V2018_06_01::Models::GatewayRouteListResult
      end
      def effective_network_security_group_association
        Azure::Network::Mgmt::V2018_06_01::Models::EffectiveNetworkSecurityGroupAssociation
      end
      def effective_network_security_rule
        Azure::Network::Mgmt::V2018_06_01::Models::EffectiveNetworkSecurityRule
      end
      def effective_network_security_group
        Azure::Network::Mgmt::V2018_06_01::Models::EffectiveNetworkSecurityGroup
      end
      def bgp_peer_status
        Azure::Network::Mgmt::V2018_06_01::Models::BgpPeerStatus
      end
      def effective_network_security_group_list_result
        Azure::Network::Mgmt::V2018_06_01::Models::EffectiveNetworkSecurityGroupListResult
      end
      def application_gateway_firewall_disabled_rule_group
        Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayFirewallDisabledRuleGroup
      end
      def effective_route
        Azure::Network::Mgmt::V2018_06_01::Models::EffectiveRoute
      end
      def application_gateway_autoscale_bounds
        Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayAutoscaleBounds
      end
      def effective_route_list_result
        Azure::Network::Mgmt::V2018_06_01::Models::EffectiveRouteListResult
      end
      def application_gateway_firewall_rule
        Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayFirewallRule
      end
      def ipsec_policy
        Azure::Network::Mgmt::V2018_06_01::Models::IpsecPolicy
      end
      def route_filter_list_result
        Azure::Network::Mgmt::V2018_06_01::Models::RouteFilterListResult
      end
      def network_watcher_list_result
        Azure::Network::Mgmt::V2018_06_01::Models::NetworkWatcherListResult
      end
      def application_gateway_available_ssl_predefined_policies
        Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayAvailableSslPredefinedPolicies
      end
      def topology_parameters
        Azure::Network::Mgmt::V2018_06_01::Models::TopologyParameters
      end
      def application_security_group_list_result
        Azure::Network::Mgmt::V2018_06_01::Models::ApplicationSecurityGroupListResult
      end
      def tags_object
        Azure::Network::Mgmt::V2018_06_01::Models::TagsObject
      end
      def ddos_protection_plan_list_result
        Azure::Network::Mgmt::V2018_06_01::Models::DdosProtectionPlanListResult
      end
      def operation_list_result
        Azure::Network::Mgmt::V2018_06_01::Models::OperationListResult
      end
      def endpoint_services_list_result
        Azure::Network::Mgmt::V2018_06_01::Models::EndpointServicesListResult
      end
      def azure_firewall_application_rule_protocol
        Azure::Network::Mgmt::V2018_06_01::Models::AzureFirewallApplicationRuleProtocol
      end
      def operation
        Azure::Network::Mgmt::V2018_06_01::Models::Operation
      end
      def ipaddress_availability_result
        Azure::Network::Mgmt::V2018_06_01::Models::IPAddressAvailabilityResult
      end
      def operation_properties_format_service_specification
        Azure::Network::Mgmt::V2018_06_01::Models::OperationPropertiesFormatServiceSpecification
      end
      def virtual_network_peering_list_result
        Azure::Network::Mgmt::V2018_06_01::Models::VirtualNetworkPeeringListResult
      end
      def next_hop_parameters
        Azure::Network::Mgmt::V2018_06_01::Models::NextHopParameters
      end
      def next_hop_result
        Azure::Network::Mgmt::V2018_06_01::Models::NextHopResult
      end
      def security_group_view_parameters
        Azure::Network::Mgmt::V2018_06_01::Models::SecurityGroupViewParameters
      end
      def network_interface_association
        Azure::Network::Mgmt::V2018_06_01::Models::NetworkInterfaceAssociation
      end
      def subnet_association
        Azure::Network::Mgmt::V2018_06_01::Models::SubnetAssociation
      end
      def express_route_circuit_routes_table_summary
        Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteCircuitRoutesTableSummary
      end
      def security_rule_associations
        Azure::Network::Mgmt::V2018_06_01::Models::SecurityRuleAssociations
      end
      def security_group_network_interface
        Azure::Network::Mgmt::V2018_06_01::Models::SecurityGroupNetworkInterface
      end
      def security_group_view_result
        Azure::Network::Mgmt::V2018_06_01::Models::SecurityGroupViewResult
      end
      def express_route_cross_connection_routes_table_summary
        Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteCrossConnectionRoutesTableSummary
      end
      def packet_capture_storage_location
        Azure::Network::Mgmt::V2018_06_01::Models::PacketCaptureStorageLocation
      end
      def express_route_circuit_reference
        Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteCircuitReference
      end
      def packet_capture_filter
        Azure::Network::Mgmt::V2018_06_01::Models::PacketCaptureFilter
      end
      def packet_capture_parameters
        Azure::Network::Mgmt::V2018_06_01::Models::PacketCaptureParameters
      end
      def express_route_cross_connection_peering_list
        Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteCrossConnectionPeeringList
      end
      def packet_capture
        Azure::Network::Mgmt::V2018_06_01::Models::PacketCapture
      end
      def packet_capture_result
        Azure::Network::Mgmt::V2018_06_01::Models::PacketCaptureResult
      end
      def list_vpn_connections_result
        Azure::Network::Mgmt::V2018_06_01::Models::ListVpnConnectionsResult
      end
      def packet_capture_list_result
        Azure::Network::Mgmt::V2018_06_01::Models::PacketCaptureListResult
      end
      def list_virtual_hubs_result
        Azure::Network::Mgmt::V2018_06_01::Models::ListVirtualHubsResult
      end
      def packet_capture_query_status_result
        Azure::Network::Mgmt::V2018_06_01::Models::PacketCaptureQueryStatusResult
      end
      def troubleshooting_parameters
        Azure::Network::Mgmt::V2018_06_01::Models::TroubleshootingParameters
      end
      def list_virtual_wans_result
        Azure::Network::Mgmt::V2018_06_01::Models::ListVirtualWANsResult
      end
      def query_troubleshooting_parameters
        Azure::Network::Mgmt::V2018_06_01::Models::QueryTroubleshootingParameters
      end
      def virtual_network_connection_gateway_reference
        Azure::Network::Mgmt::V2018_06_01::Models::VirtualNetworkConnectionGatewayReference
      end
      def troubleshooting_recommended_actions
        Azure::Network::Mgmt::V2018_06_01::Models::TroubleshootingRecommendedActions
      end
      def application_gateway_backend_health_http_settings
        Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayBackendHealthHttpSettings
      end
      def troubleshooting_details
        Azure::Network::Mgmt::V2018_06_01::Models::TroubleshootingDetails
      end
      def application_gateway_ssl_policy
        Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewaySslPolicy
      end
      def troubleshooting_result
        Azure::Network::Mgmt::V2018_06_01::Models::TroubleshootingResult
      end
      def tunnel_connection_health
        Azure::Network::Mgmt::V2018_06_01::Models::TunnelConnectionHealth
      end
      def retention_policy_parameters
        Azure::Network::Mgmt::V2018_06_01::Models::RetentionPolicyParameters
      end
      def application_gateway_probe_health_response_match
        Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayProbeHealthResponseMatch
      end
      def flow_log_status_parameters
        Azure::Network::Mgmt::V2018_06_01::Models::FlowLogStatusParameters
      end
      def traffic_analytics_configuration_properties
        Azure::Network::Mgmt::V2018_06_01::Models::TrafficAnalyticsConfigurationProperties
      end
      def application_gateway_autoscale_configuration
        Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayAutoscaleConfiguration
      end
      def traffic_analytics_properties
        Azure::Network::Mgmt::V2018_06_01::Models::TrafficAnalyticsProperties
      end
      def application_gateway_firewall_rule_group
        Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayFirewallRuleGroup
      end
      def flow_log_information
        Azure::Network::Mgmt::V2018_06_01::Models::FlowLogInformation
      end
      def virtual_network_list_usage_result
        Azure::Network::Mgmt::V2018_06_01::Models::VirtualNetworkListUsageResult
      end
      def connectivity_source
        Azure::Network::Mgmt::V2018_06_01::Models::ConnectivitySource
      end
      def virtual_network_usage
        Azure::Network::Mgmt::V2018_06_01::Models::VirtualNetworkUsage
      end
      def connectivity_destination
        Azure::Network::Mgmt::V2018_06_01::Models::ConnectivityDestination
      end
      def httpconfiguration
        Azure::Network::Mgmt::V2018_06_01::Models::HTTPConfiguration
      end
      def protocol_configuration
        Azure::Network::Mgmt::V2018_06_01::Models::ProtocolConfiguration
      end
      def connectivity_parameters
        Azure::Network::Mgmt::V2018_06_01::Models::ConnectivityParameters
      end
      def express_route_circuits_routes_table_summary_list_result
        Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteCircuitsRoutesTableSummaryListResult
      end
      def connectivity_issue
        Azure::Network::Mgmt::V2018_06_01::Models::ConnectivityIssue
      end
      def connectivity_hop
        Azure::Network::Mgmt::V2018_06_01::Models::ConnectivityHop
      end
      def connectivity_information
        Azure::Network::Mgmt::V2018_06_01::Models::ConnectivityInformation
      end
      def load_balancer_sku
        Azure::Network::Mgmt::V2018_06_01::Models::LoadBalancerSku
      end
      def azure_reachability_report_location
        Azure::Network::Mgmt::V2018_06_01::Models::AzureReachabilityReportLocation
      end
      def list_vpn_gateways_result
        Azure::Network::Mgmt::V2018_06_01::Models::ListVpnGatewaysResult
      end
      def azure_reachability_report_parameters
        Azure::Network::Mgmt::V2018_06_01::Models::AzureReachabilityReportParameters
      end
      def list_vpn_sites_result
        Azure::Network::Mgmt::V2018_06_01::Models::ListVpnSitesResult
      end
      def azure_reachability_report_latency_info
        Azure::Network::Mgmt::V2018_06_01::Models::AzureReachabilityReportLatencyInfo
      end
      def azure_reachability_report_item
        Azure::Network::Mgmt::V2018_06_01::Models::AzureReachabilityReportItem
      end
      def error
        Azure::Network::Mgmt::V2018_06_01::Models::Error
      end
      def gateway_route
        Azure::Network::Mgmt::V2018_06_01::Models::GatewayRoute
      end
      def available_providers_list_parameters
        Azure::Network::Mgmt::V2018_06_01::Models::AvailableProvidersListParameters
      end
      def available_providers_list_city
        Azure::Network::Mgmt::V2018_06_01::Models::AvailableProvidersListCity
      end
      def ddos_protection_plan
        Azure::Network::Mgmt::V2018_06_01::Models::DdosProtectionPlan
      end
      def available_providers_list_state
        Azure::Network::Mgmt::V2018_06_01::Models::AvailableProvidersListState
      end
      def azure_reachability_report
        Azure::Network::Mgmt::V2018_06_01::Models::AzureReachabilityReport
      end
      def available_providers_list_country
        Azure::Network::Mgmt::V2018_06_01::Models::AvailableProvidersListCountry
      end
      def connection_monitor_source
        Azure::Network::Mgmt::V2018_06_01::Models::ConnectionMonitorSource
      end
      def express_route_cross_connection_list_result
        Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteCrossConnectionListResult
      end
      def connection_monitor_destination
        Azure::Network::Mgmt::V2018_06_01::Models::ConnectionMonitorDestination
      end
      def service_endpoint_properties_format
        Azure::Network::Mgmt::V2018_06_01::Models::ServiceEndpointPropertiesFormat
      end
      def connection_monitor_parameters
        Azure::Network::Mgmt::V2018_06_01::Models::ConnectionMonitorParameters
      end
      def available_providers_list
        Azure::Network::Mgmt::V2018_06_01::Models::AvailableProvidersList
      end
      def application_gateway_backend_health
        Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayBackendHealth
      end
      def connection_monitor
        Azure::Network::Mgmt::V2018_06_01::Models::ConnectionMonitor
      end
      def application_gateway_web_application_firewall_configuration
        Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayWebApplicationFirewallConfiguration
      end
      def connection_monitor_result
        Azure::Network::Mgmt::V2018_06_01::Models::ConnectionMonitorResult
      end
      def virtual_network_usage_name
        Azure::Network::Mgmt::V2018_06_01::Models::VirtualNetworkUsageName
      end
      def connection_monitor_list_result
        Azure::Network::Mgmt::V2018_06_01::Models::ConnectionMonitorListResult
      end
      def connection_state_snapshot
        Azure::Network::Mgmt::V2018_06_01::Models::ConnectionStateSnapshot
      end
      def vpn_site_id
        Azure::Network::Mgmt::V2018_06_01::Models::VpnSiteId
      end
      def connection_monitor_query_result
        Azure::Network::Mgmt::V2018_06_01::Models::ConnectionMonitorQueryResult
      end
      def bgp_peer_status_list_result
        Azure::Network::Mgmt::V2018_06_01::Models::BgpPeerStatusListResult
      end
      def operation_display
        Azure::Network::Mgmt::V2018_06_01::Models::OperationDisplay
      end
      def ipv6_express_route_circuit_peering_config
        Azure::Network::Mgmt::V2018_06_01::Models::Ipv6ExpressRouteCircuitPeeringConfig
      end
      def availability
        Azure::Network::Mgmt::V2018_06_01::Models::Availability
      end
      def virtual_network_gateway_list_connections_result
        Azure::Network::Mgmt::V2018_06_01::Models::VirtualNetworkGatewayListConnectionsResult
      end
      def dimension
        Azure::Network::Mgmt::V2018_06_01::Models::Dimension
      end
      def express_route_cross_connections_routes_table_summary_list_result
        Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteCrossConnectionsRoutesTableSummaryListResult
      end
      def metric_specification
        Azure::Network::Mgmt::V2018_06_01::Models::MetricSpecification
      end
      def application_gateway_available_waf_rule_sets_result
        Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayAvailableWafRuleSetsResult
      end
      def log_specification
        Azure::Network::Mgmt::V2018_06_01::Models::LogSpecification
      end
      def azure_firewall_ipconfiguration
        Azure::Network::Mgmt::V2018_06_01::Models::AzureFirewallIPConfiguration
      end
      def azure_firewall_application_rule_collection
        Azure::Network::Mgmt::V2018_06_01::Models::AzureFirewallApplicationRuleCollection
      end
      def azure_firewall_network_rule_collection
        Azure::Network::Mgmt::V2018_06_01::Models::AzureFirewallNetworkRuleCollection
      end
      def azure_firewall
        Azure::Network::Mgmt::V2018_06_01::Models::AzureFirewall
      end
      def application_security_group
        Azure::Network::Mgmt::V2018_06_01::Models::ApplicationSecurityGroup
      end
      def resource_navigation_link
        Azure::Network::Mgmt::V2018_06_01::Models::ResourceNavigationLink
      end
      def application_gateway_authentication_certificate
        Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayAuthenticationCertificate
      end
      def application_gateway_redirect_configuration
        Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayRedirectConfiguration
      end
      def application_gateway_firewall_rule_set
        Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayFirewallRuleSet
      end
      def application_gateway_available_ssl_options
        Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayAvailableSslOptions
      end
      def application_gateway_ssl_predefined_policy
        Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewaySslPredefinedPolicy
      end
      def httpheader
        Azure::Network::Mgmt::V2018_06_01::Models::HTTPHeader
      end
      def route_filter_rule
        Azure::Network::Mgmt::V2018_06_01::Models::RouteFilterRule
      end
      def endpoint_service_result
        Azure::Network::Mgmt::V2018_06_01::Models::EndpointServiceResult
      end
      def route_filter
        Azure::Network::Mgmt::V2018_06_01::Models::RouteFilter
      end
      def express_route_circuit_connection
        Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteCircuitConnection
      end
      def express_route_cross_connection
        Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteCrossConnection
      end
      def express_route_cross_connection_peering
        Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteCrossConnectionPeering
      end
      def patch_route_filter_rule
        Azure::Network::Mgmt::V2018_06_01::Models::PatchRouteFilterRule
      end
      def network_watcher
        Azure::Network::Mgmt::V2018_06_01::Models::NetworkWatcher
      end
      def bgp_service_community
        Azure::Network::Mgmt::V2018_06_01::Models::BgpServiceCommunity
      end
      def patch_route_filter
        Azure::Network::Mgmt::V2018_06_01::Models::PatchRouteFilter
      end
      def virtual_network_gateway_connection_list_entity
        Azure::Network::Mgmt::V2018_06_01::Models::VirtualNetworkGatewayConnectionListEntity
      end
      def virtual_network_peering
        Azure::Network::Mgmt::V2018_06_01::Models::VirtualNetworkPeering
      end
      def vpn_site
        Azure::Network::Mgmt::V2018_06_01::Models::VpnSite
      end
      def virtual_wan
        Azure::Network::Mgmt::V2018_06_01::Models::VirtualWAN
      end
      def virtual_hub
        Azure::Network::Mgmt::V2018_06_01::Models::VirtualHub
      end
      def hub_virtual_network_connection
        Azure::Network::Mgmt::V2018_06_01::Models::HubVirtualNetworkConnection
      end
      def vpn_gateway
        Azure::Network::Mgmt::V2018_06_01::Models::VpnGateway
      end
      def vpn_connection
        Azure::Network::Mgmt::V2018_06_01::Models::VpnConnection
      end
      def azure_firewall_rcaction_type
        Azure::Network::Mgmt::V2018_06_01::Models::AzureFirewallRCActionType
      end
      def provisioning_state
        Azure::Network::Mgmt::V2018_06_01::Models::ProvisioningState
      end
      def azure_firewall_network_rule_protocol
        Azure::Network::Mgmt::V2018_06_01::Models::AzureFirewallNetworkRuleProtocol
      end
      def azure_firewall_application_rule_protocol_type
        Azure::Network::Mgmt::V2018_06_01::Models::AzureFirewallApplicationRuleProtocolType
      end
      def public_ipaddress_sku_name
        Azure::Network::Mgmt::V2018_06_01::Models::PublicIPAddressSkuName
      end
      def ipversion
        Azure::Network::Mgmt::V2018_06_01::Models::IPVersion
      end
      def application_gateway_ssl_protocol
        Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewaySslProtocol
      end
      def application_gateway_backend_health_server_health
        Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayBackendHealthServerHealth
      end
      def application_gateway_ssl_policy_name
        Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewaySslPolicyName
      end
      def application_gateway_ssl_policy_type
        Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewaySslPolicyType
      end
      def application_gateway_redirect_type
        Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayRedirectType
      end
      def application_gateway_ssl_cipher_suite
        Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewaySslCipherSuite
      end
      def access
        Azure::Network::Mgmt::V2018_06_01::Models::Access
      end
      def application_gateway_firewall_mode
        Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayFirewallMode
      end
      def express_route_peering_state
        Azure::Network::Mgmt::V2018_06_01::Models::ExpressRoutePeeringState
      end
      def express_route_peering_type
        Azure::Network::Mgmt::V2018_06_01::Models::ExpressRoutePeeringType
      end
      def load_balancer_sku_name
        Azure::Network::Mgmt::V2018_06_01::Models::LoadBalancerSkuName
      end
      def circuit_connection_status
        Azure::Network::Mgmt::V2018_06_01::Models::CircuitConnectionStatus
      end
      def effective_route_source
        Azure::Network::Mgmt::V2018_06_01::Models::EffectiveRouteSource
      end
      def effective_security_rule_protocol
        Azure::Network::Mgmt::V2018_06_01::Models::EffectiveSecurityRuleProtocol
      end
      def association_type
        Azure::Network::Mgmt::V2018_06_01::Models::AssociationType
      end
      def effective_route_state
        Azure::Network::Mgmt::V2018_06_01::Models::EffectiveRouteState
      end
      def ip_flow_protocol
        Azure::Network::Mgmt::V2018_06_01::Models::IpFlowProtocol
      end
      def direction
        Azure::Network::Mgmt::V2018_06_01::Models::Direction
      end
      def pc_protocol
        Azure::Network::Mgmt::V2018_06_01::Models::PcProtocol
      end
      def next_hop_type
        Azure::Network::Mgmt::V2018_06_01::Models::NextHopType
      end
      def pc_error
        Azure::Network::Mgmt::V2018_06_01::Models::PcError
      end
      def pc_status
        Azure::Network::Mgmt::V2018_06_01::Models::PcStatus
      end
      def origin
        Azure::Network::Mgmt::V2018_06_01::Models::Origin
      end
      def httpmethod
        Azure::Network::Mgmt::V2018_06_01::Models::HTTPMethod
      end
      def connection_status
        Azure::Network::Mgmt::V2018_06_01::Models::ConnectionStatus
      end
      def issue_type
        Azure::Network::Mgmt::V2018_06_01::Models::IssueType
      end
      def connection_state
        Azure::Network::Mgmt::V2018_06_01::Models::ConnectionState
      end
      def connection_monitor_source_status
        Azure::Network::Mgmt::V2018_06_01::Models::ConnectionMonitorSourceStatus
      end
      def virtual_network_peering_state
        Azure::Network::Mgmt::V2018_06_01::Models::VirtualNetworkPeeringState
      end
      def evaluation_state
        Azure::Network::Mgmt::V2018_06_01::Models::EvaluationState
      end
      def ipsec_encryption
        Azure::Network::Mgmt::V2018_06_01::Models::IpsecEncryption
      end
      def vpn_client_protocol
        Azure::Network::Mgmt::V2018_06_01::Models::VpnClientProtocol
      end
      def ike_encryption
        Azure::Network::Mgmt::V2018_06_01::Models::IkeEncryption
      end
      def ipsec_integrity
        Azure::Network::Mgmt::V2018_06_01::Models::IpsecIntegrity
      end
      def dh_group
        Azure::Network::Mgmt::V2018_06_01::Models::DhGroup
      end
      def ike_integrity
        Azure::Network::Mgmt::V2018_06_01::Models::IkeIntegrity
      end
      def bgp_peer_state
        Azure::Network::Mgmt::V2018_06_01::Models::BgpPeerState
      end
      def pfs_group
        Azure::Network::Mgmt::V2018_06_01::Models::PfsGroup
      end
      def vpn_connection_status
        Azure::Network::Mgmt::V2018_06_01::Models::VpnConnectionStatus
      end
      def authentication_method
        Azure::Network::Mgmt::V2018_06_01::Models::AuthenticationMethod
      end
      def hub_virtual_network_connection_status
        Azure::Network::Mgmt::V2018_06_01::Models::HubVirtualNetworkConnectionStatus
      end
      def tunnel_connection_status
        Azure::Network::Mgmt::V2018_06_01::Models::TunnelConnectionStatus
      end
      def express_route_circuit_list_result
        Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteCircuitListResult
      end
      def sub_resource
        Azure::Network::Mgmt::V2018_06_01::Models::SubResource
      end
      def express_route_service_provider_bandwidths_offered
        Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteServiceProviderBandwidthsOffered
      end
      def public_ipaddress_list_result
        Azure::Network::Mgmt::V2018_06_01::Models::PublicIPAddressListResult
      end
      def application_gateway_list_result
        Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayListResult
      end
      def application_gateway_backend_address
        Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayBackendAddress
      end
      def resource
        Azure::Network::Mgmt::V2018_06_01::Models::Resource
      end
      def connection_reset_shared_key
        Azure::Network::Mgmt::V2018_06_01::Models::ConnectionResetSharedKey
      end
      def dns_name_availability_result
        Azure::Network::Mgmt::V2018_06_01::Models::DnsNameAvailabilityResult
      end
      def network_interface_dns_settings
        Azure::Network::Mgmt::V2018_06_01::Models::NetworkInterfaceDnsSettings
      end
      def network_security_group_list_result
        Azure::Network::Mgmt::V2018_06_01::Models::NetworkSecurityGroupListResult
      end
      def virtual_network_gateway_list_result
        Azure::Network::Mgmt::V2018_06_01::Models::VirtualNetworkGatewayListResult
      end
      def authorization_list_result
        Azure::Network::Mgmt::V2018_06_01::Models::AuthorizationListResult
      end
      def bgp_settings
        Azure::Network::Mgmt::V2018_06_01::Models::BgpSettings
      end
      def express_route_circuit_peering_config
        Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteCircuitPeeringConfig
      end
      def vpn_client_configuration
        Azure::Network::Mgmt::V2018_06_01::Models::VpnClientConfiguration
      end
      def express_route_circuit_stats
        Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteCircuitStats
      end
      def virtual_network_list_result
        Azure::Network::Mgmt::V2018_06_01::Models::VirtualNetworkListResult
      end
      def security_rule_list_result
        Azure::Network::Mgmt::V2018_06_01::Models::SecurityRuleListResult
      end
      def address_space
        Azure::Network::Mgmt::V2018_06_01::Models::AddressSpace
      end
      def express_route_circuit_peering_list_result
        Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteCircuitPeeringListResult
      end
      def usages_list_result
        Azure::Network::Mgmt::V2018_06_01::Models::UsagesListResult
      end
      def policies
        Azure::Network::Mgmt::V2018_06_01::Models::Policies
      end
      def usage_name
        Azure::Network::Mgmt::V2018_06_01::Models::UsageName
      end
      def express_route_circuit_service_provider_properties
        Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteCircuitServiceProviderProperties
      end
      def route_table_list_result
        Azure::Network::Mgmt::V2018_06_01::Models::RouteTableListResult
      end
      def network_interface_list_result
        Azure::Network::Mgmt::V2018_06_01::Models::NetworkInterfaceListResult
      end
      def connection_shared_key
        Azure::Network::Mgmt::V2018_06_01::Models::ConnectionSharedKey
      end
      def express_route_circuit_arp_table
        Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteCircuitArpTable
      end
      def express_route_circuits_arp_table_list_result
        Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteCircuitsArpTableListResult
      end
      def public_ipaddress_dns_settings
        Azure::Network::Mgmt::V2018_06_01::Models::PublicIPAddressDnsSettings
      end
      def express_route_circuit_routes_table
        Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteCircuitRoutesTable
      end
      def dhcp_options
        Azure::Network::Mgmt::V2018_06_01::Models::DhcpOptions
      end
      def express_route_circuits_routes_table_list_result
        Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteCircuitsRoutesTableListResult
      end
      def usage
        Azure::Network::Mgmt::V2018_06_01::Models::Usage
      end
      def application_gateway_sku
        Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewaySku
      end
      def local_network_gateway_list_result
        Azure::Network::Mgmt::V2018_06_01::Models::LocalNetworkGatewayListResult
      end
      def virtual_network_gateway_connection_list_result
        Azure::Network::Mgmt::V2018_06_01::Models::VirtualNetworkGatewayConnectionListResult
      end
      def load_balancer_list_result
        Azure::Network::Mgmt::V2018_06_01::Models::LoadBalancerListResult
      end
      def virtual_network_gateway_sku
        Azure::Network::Mgmt::V2018_06_01::Models::VirtualNetworkGatewaySku
      end
      def azure_async_operation_result
        Azure::Network::Mgmt::V2018_06_01::Models::AzureAsyncOperationResult
      end
      def route_list_result
        Azure::Network::Mgmt::V2018_06_01::Models::RouteListResult
      end
      def express_route_circuit_sku
        Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteCircuitSku
      end
      def subnet_list_result
        Azure::Network::Mgmt::V2018_06_01::Models::SubnetListResult
      end
      def vpn_client_parameters
        Azure::Network::Mgmt::V2018_06_01::Models::VpnClientParameters
      end
      def error_details
        Azure::Network::Mgmt::V2018_06_01::Models::ErrorDetails
      end
      def express_route_service_provider_list_result
        Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteServiceProviderListResult
      end
      def application_gateway_ipconfiguration
        Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayIPConfiguration
      end
      def application_gateway_ssl_certificate
        Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewaySslCertificate
      end
      def application_gateway_frontend_ipconfiguration
        Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayFrontendIPConfiguration
      end
      def backend_address_pool
        Azure::Network::Mgmt::V2018_06_01::Models::BackendAddressPool
      end
      def inbound_nat_rule
        Azure::Network::Mgmt::V2018_06_01::Models::InboundNatRule
      end
      def security_rule
        Azure::Network::Mgmt::V2018_06_01::Models::SecurityRule
      end
      def network_interface
        Azure::Network::Mgmt::V2018_06_01::Models::NetworkInterface
      end
      def network_security_group
        Azure::Network::Mgmt::V2018_06_01::Models::NetworkSecurityGroup
      end
      def route
        Azure::Network::Mgmt::V2018_06_01::Models::Route
      end
      def route_table
        Azure::Network::Mgmt::V2018_06_01::Models::RouteTable
      end
      def public_ipaddress
        Azure::Network::Mgmt::V2018_06_01::Models::PublicIPAddress
      end
      def ipconfiguration
        Azure::Network::Mgmt::V2018_06_01::Models::IPConfiguration
      end
      def subnet
        Azure::Network::Mgmt::V2018_06_01::Models::Subnet
      end
      def network_interface_ipconfiguration
        Azure::Network::Mgmt::V2018_06_01::Models::NetworkInterfaceIPConfiguration
      end
      def application_gateway_backend_address_pool
        Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayBackendAddressPool
      end
      def application_gateway_backend_http_settings
        Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayBackendHttpSettings
      end
      def application_gateway_http_listener
        Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayHttpListener
      end
      def application_gateway_frontend_port
        Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayFrontendPort
      end
      def application_gateway_path_rule
        Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayPathRule
      end
      def application_gateway_probe
        Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayProbe
      end
      def application_gateway_request_routing_rule
        Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayRequestRoutingRule
      end
      def application_gateway_url_path_map
        Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayUrlPathMap
      end
      def application_gateway
        Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGateway
      end
      def express_route_circuit_authorization
        Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteCircuitAuthorization
      end
      def express_route_circuit_peering
        Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteCircuitPeering
      end
      def express_route_circuit
        Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteCircuit
      end
      def express_route_service_provider
        Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteServiceProvider
      end
      def frontend_ipconfiguration
        Azure::Network::Mgmt::V2018_06_01::Models::FrontendIPConfiguration
      end
      def load_balancing_rule
        Azure::Network::Mgmt::V2018_06_01::Models::LoadBalancingRule
      end
      def probe
        Azure::Network::Mgmt::V2018_06_01::Models::Probe
      end
      def inbound_nat_pool
        Azure::Network::Mgmt::V2018_06_01::Models::InboundNatPool
      end
      def outbound_nat_rule
        Azure::Network::Mgmt::V2018_06_01::Models::OutboundNatRule
      end
      def load_balancer
        Azure::Network::Mgmt::V2018_06_01::Models::LoadBalancer
      end
      def virtual_network
        Azure::Network::Mgmt::V2018_06_01::Models::VirtualNetwork
      end
      def virtual_network_gateway_ipconfiguration
        Azure::Network::Mgmt::V2018_06_01::Models::VirtualNetworkGatewayIPConfiguration
      end
      def vpn_client_root_certificate
        Azure::Network::Mgmt::V2018_06_01::Models::VpnClientRootCertificate
      end
      def vpn_client_revoked_certificate
        Azure::Network::Mgmt::V2018_06_01::Models::VpnClientRevokedCertificate
      end
      def virtual_network_gateway
        Azure::Network::Mgmt::V2018_06_01::Models::VirtualNetworkGateway
      end
      def local_network_gateway
        Azure::Network::Mgmt::V2018_06_01::Models::LocalNetworkGateway
      end
      def virtual_network_gateway_connection
        Azure::Network::Mgmt::V2018_06_01::Models::VirtualNetworkGatewayConnection
      end
      def application_gateway_sku_name
        Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewaySkuName
      end
      def ipallocation_method
        Azure::Network::Mgmt::V2018_06_01::Models::IPAllocationMethod
      end
      def transport_protocol
        Azure::Network::Mgmt::V2018_06_01::Models::TransportProtocol
      end
      def security_rule_protocol
        Azure::Network::Mgmt::V2018_06_01::Models::SecurityRuleProtocol
      end
      def security_rule_access
        Azure::Network::Mgmt::V2018_06_01::Models::SecurityRuleAccess
      end
      def security_rule_direction
        Azure::Network::Mgmt::V2018_06_01::Models::SecurityRuleDirection
      end
      def route_next_hop_type
        Azure::Network::Mgmt::V2018_06_01::Models::RouteNextHopType
      end
      def application_gateway_protocol
        Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayProtocol
      end
      def application_gateway_cookie_based_affinity
        Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayCookieBasedAffinity
      end
      def application_gateway_request_routing_rule_type
        Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayRequestRoutingRuleType
      end
      def application_gateway_tier
        Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayTier
      end
      def application_gateway_operational_state
        Azure::Network::Mgmt::V2018_06_01::Models::ApplicationGatewayOperationalState
      end
      def authorization_use_status
        Azure::Network::Mgmt::V2018_06_01::Models::AuthorizationUseStatus
      end
      def express_route_circuit_peering_advertised_public_prefix_state
        Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteCircuitPeeringAdvertisedPublicPrefixState
      end
      def express_route_circuit_peering_state
        Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteCircuitPeeringState
      end
      def express_route_circuit_sku_tier
        Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteCircuitSkuTier
      end
      def express_route_circuit_sku_family
        Azure::Network::Mgmt::V2018_06_01::Models::ExpressRouteCircuitSkuFamily
      end
      def service_provider_provisioning_state
        Azure::Network::Mgmt::V2018_06_01::Models::ServiceProviderProvisioningState
      end
      def load_distribution
        Azure::Network::Mgmt::V2018_06_01::Models::LoadDistribution
      end
      def probe_protocol
        Azure::Network::Mgmt::V2018_06_01::Models::ProbeProtocol
      end
      def network_operation_status
        Azure::Network::Mgmt::V2018_06_01::Models::NetworkOperationStatus
      end
      def virtual_network_gateway_type
        Azure::Network::Mgmt::V2018_06_01::Models::VirtualNetworkGatewayType
      end
      def vpn_type
        Azure::Network::Mgmt::V2018_06_01::Models::VpnType
      end
      def virtual_network_gateway_sku_name
        Azure::Network::Mgmt::V2018_06_01::Models::VirtualNetworkGatewaySkuName
      end
      def virtual_network_gateway_sku_tier
        Azure::Network::Mgmt::V2018_06_01::Models::VirtualNetworkGatewaySkuTier
      end
      def protocol
        Azure::Network::Mgmt::V2018_06_01::Models::Protocol
      end
      def processor_architecture
        Azure::Network::Mgmt::V2018_06_01::Models::ProcessorArchitecture
      end
      def virtual_network_gateway_connection_status
        Azure::Network::Mgmt::V2018_06_01::Models::VirtualNetworkGatewayConnectionStatus
      end
      def virtual_network_gateway_connection_type
        Azure::Network::Mgmt::V2018_06_01::Models::VirtualNetworkGatewayConnectionType
      end
      def severity
        Azure::Network::Mgmt::V2018_06_01::Models::Severity
      end
    end
  end
end
