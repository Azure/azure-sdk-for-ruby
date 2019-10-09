# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_network'

module Azure::Network::Profiles::Latest
  module Mgmt
    ConnectionMonitors = Azure::Network::Mgmt::V2019_06_01::ConnectionMonitors
    P2sVpnServerConfigurations = Azure::Network::Mgmt::V2019_06_01::P2sVpnServerConfigurations
    ApplicationGateways = Azure::Network::Mgmt::V2019_08_01::ApplicationGateways
    ApplicationSecurityGroups = Azure::Network::Mgmt::V2019_08_01::ApplicationSecurityGroups
    AvailableDelegations = Azure::Network::Mgmt::V2019_08_01::AvailableDelegations
    AvailableResourceGroupDelegations = Azure::Network::Mgmt::V2019_08_01::AvailableResourceGroupDelegations
    AvailableServiceAliases = Azure::Network::Mgmt::V2019_08_01::AvailableServiceAliases
    AzureFirewalls = Azure::Network::Mgmt::V2019_08_01::AzureFirewalls
    AzureFirewallFqdnTags = Azure::Network::Mgmt::V2019_08_01::AzureFirewallFqdnTags
    BastionHosts = Azure::Network::Mgmt::V2019_08_01::BastionHosts
    DdosCustomPolicies = Azure::Network::Mgmt::V2019_08_01::DdosCustomPolicies
    DdosProtectionPlans = Azure::Network::Mgmt::V2019_08_01::DdosProtectionPlans
    AvailableEndpointServices = Azure::Network::Mgmt::V2019_08_01::AvailableEndpointServices
    ExpressRouteCircuitAuthorizations = Azure::Network::Mgmt::V2019_08_01::ExpressRouteCircuitAuthorizations
    ExpressRouteCircuitPeerings = Azure::Network::Mgmt::V2019_08_01::ExpressRouteCircuitPeerings
    ExpressRouteCircuitConnections = Azure::Network::Mgmt::V2019_08_01::ExpressRouteCircuitConnections
    PeerExpressRouteCircuitConnections = Azure::Network::Mgmt::V2019_08_01::PeerExpressRouteCircuitConnections
    ExpressRouteCircuits = Azure::Network::Mgmt::V2019_08_01::ExpressRouteCircuits
    ExpressRouteServiceProviders = Azure::Network::Mgmt::V2019_08_01::ExpressRouteServiceProviders
    ExpressRouteCrossConnections = Azure::Network::Mgmt::V2019_08_01::ExpressRouteCrossConnections
    ExpressRouteCrossConnectionPeerings = Azure::Network::Mgmt::V2019_08_01::ExpressRouteCrossConnectionPeerings
    ExpressRouteGateways = Azure::Network::Mgmt::V2019_08_01::ExpressRouteGateways
    ExpressRouteConnections = Azure::Network::Mgmt::V2019_08_01::ExpressRouteConnections
    ExpressRoutePortsLocations = Azure::Network::Mgmt::V2019_08_01::ExpressRoutePortsLocations
    ExpressRoutePorts = Azure::Network::Mgmt::V2019_08_01::ExpressRoutePorts
    ExpressRouteLinks = Azure::Network::Mgmt::V2019_08_01::ExpressRouteLinks
    FirewallPolicies = Azure::Network::Mgmt::V2019_08_01::FirewallPolicies
    FirewallPolicyRuleGroups = Azure::Network::Mgmt::V2019_08_01::FirewallPolicyRuleGroups
    LoadBalancers = Azure::Network::Mgmt::V2019_08_01::LoadBalancers
    LoadBalancerBackendAddressPools = Azure::Network::Mgmt::V2019_08_01::LoadBalancerBackendAddressPools
    LoadBalancerFrontendIPConfigurations = Azure::Network::Mgmt::V2019_08_01::LoadBalancerFrontendIPConfigurations
    InboundNatRules = Azure::Network::Mgmt::V2019_08_01::InboundNatRules
    LoadBalancerLoadBalancingRules = Azure::Network::Mgmt::V2019_08_01::LoadBalancerLoadBalancingRules
    LoadBalancerOutboundRules = Azure::Network::Mgmt::V2019_08_01::LoadBalancerOutboundRules
    LoadBalancerNetworkInterfaces = Azure::Network::Mgmt::V2019_08_01::LoadBalancerNetworkInterfaces
    LoadBalancerProbes = Azure::Network::Mgmt::V2019_08_01::LoadBalancerProbes
    NatGateways = Azure::Network::Mgmt::V2019_08_01::NatGateways
    NetworkInterfaces = Azure::Network::Mgmt::V2019_08_01::NetworkInterfaces
    NetworkInterfaceIPConfigurations = Azure::Network::Mgmt::V2019_08_01::NetworkInterfaceIPConfigurations
    NetworkInterfaceLoadBalancers = Azure::Network::Mgmt::V2019_08_01::NetworkInterfaceLoadBalancers
    NetworkInterfaceTapConfigurations = Azure::Network::Mgmt::V2019_08_01::NetworkInterfaceTapConfigurations
    NetworkProfiles = Azure::Network::Mgmt::V2019_08_01::NetworkProfiles
    NetworkSecurityGroups = Azure::Network::Mgmt::V2019_08_01::NetworkSecurityGroups
    SecurityRules = Azure::Network::Mgmt::V2019_08_01::SecurityRules
    DefaultSecurityRules = Azure::Network::Mgmt::V2019_08_01::DefaultSecurityRules
    NetworkWatchers = Azure::Network::Mgmt::V2019_08_01::NetworkWatchers
    PacketCaptures = Azure::Network::Mgmt::V2019_08_01::PacketCaptures
    Operations = Azure::Network::Mgmt::V2019_08_01::Operations
    PrivateEndpoints = Azure::Network::Mgmt::V2019_08_01::PrivateEndpoints
    AvailablePrivateEndpointTypes = Azure::Network::Mgmt::V2019_08_01::AvailablePrivateEndpointTypes
    PrivateLinkServices = Azure::Network::Mgmt::V2019_08_01::PrivateLinkServices
    PublicIPAddresses = Azure::Network::Mgmt::V2019_08_01::PublicIPAddresses
    PublicIPPrefixes = Azure::Network::Mgmt::V2019_08_01::PublicIPPrefixes
    RouteFilters = Azure::Network::Mgmt::V2019_08_01::RouteFilters
    RouteFilterRules = Azure::Network::Mgmt::V2019_08_01::RouteFilterRules
    RouteTables = Azure::Network::Mgmt::V2019_08_01::RouteTables
    Routes = Azure::Network::Mgmt::V2019_08_01::Routes
    BgpServiceCommunities = Azure::Network::Mgmt::V2019_08_01::BgpServiceCommunities
    ServiceEndpointPolicies = Azure::Network::Mgmt::V2019_08_01::ServiceEndpointPolicies
    ServiceEndpointPolicyDefinitions = Azure::Network::Mgmt::V2019_08_01::ServiceEndpointPolicyDefinitions
    ServiceTags = Azure::Network::Mgmt::V2019_08_01::ServiceTags
    Usages = Azure::Network::Mgmt::V2019_08_01::Usages
    VirtualNetworks = Azure::Network::Mgmt::V2019_08_01::VirtualNetworks
    Subnets = Azure::Network::Mgmt::V2019_08_01::Subnets
    ResourceNavigationLinks = Azure::Network::Mgmt::V2019_08_01::ResourceNavigationLinks
    ServiceAssociationLinks = Azure::Network::Mgmt::V2019_08_01::ServiceAssociationLinks
    VirtualNetworkPeerings = Azure::Network::Mgmt::V2019_08_01::VirtualNetworkPeerings
    VirtualNetworkGateways = Azure::Network::Mgmt::V2019_08_01::VirtualNetworkGateways
    VirtualNetworkGatewayConnections = Azure::Network::Mgmt::V2019_08_01::VirtualNetworkGatewayConnections
    LocalNetworkGateways = Azure::Network::Mgmt::V2019_08_01::LocalNetworkGateways
    VirtualNetworkTaps = Azure::Network::Mgmt::V2019_08_01::VirtualNetworkTaps
    VirtualRouters = Azure::Network::Mgmt::V2019_08_01::VirtualRouters
    VirtualRouterPeerings = Azure::Network::Mgmt::V2019_08_01::VirtualRouterPeerings
    VirtualWans = Azure::Network::Mgmt::V2019_08_01::VirtualWans
    VpnSites = Azure::Network::Mgmt::V2019_08_01::VpnSites
    VpnSiteLinks = Azure::Network::Mgmt::V2019_08_01::VpnSiteLinks
    VpnSitesConfiguration = Azure::Network::Mgmt::V2019_08_01::VpnSitesConfiguration
    VpnServerConfigurations = Azure::Network::Mgmt::V2019_08_01::VpnServerConfigurations
    VirtualHubs = Azure::Network::Mgmt::V2019_08_01::VirtualHubs
    HubVirtualNetworkConnections = Azure::Network::Mgmt::V2019_08_01::HubVirtualNetworkConnections
    VpnGateways = Azure::Network::Mgmt::V2019_08_01::VpnGateways
    VpnConnections = Azure::Network::Mgmt::V2019_08_01::VpnConnections
    VpnSiteLinkConnections = Azure::Network::Mgmt::V2019_08_01::VpnSiteLinkConnections
    VpnLinkConnections = Azure::Network::Mgmt::V2019_08_01::VpnLinkConnections
    P2sVpnGateways = Azure::Network::Mgmt::V2019_08_01::P2sVpnGateways
    VpnServerConfigurationsAssociatedWithVirtualWan = Azure::Network::Mgmt::V2019_08_01::VpnServerConfigurationsAssociatedWithVirtualWan
    WebApplicationFirewallPolicies = Azure::Network::Mgmt::V2019_08_01::WebApplicationFirewallPolicies

    module Models
      ListP2SVpnServerConfigurationsResult = Azure::Network::Mgmt::V2019_06_01::Models::ListP2SVpnServerConfigurationsResult
      ConnectionMonitorSource = Azure::Network::Mgmt::V2019_06_01::Models::ConnectionMonitorSource
      ConnectionMonitorDestination = Azure::Network::Mgmt::V2019_06_01::Models::ConnectionMonitorDestination
      ConnectionMonitorParameters = Azure::Network::Mgmt::V2019_06_01::Models::ConnectionMonitorParameters
      ConnectionMonitor = Azure::Network::Mgmt::V2019_06_01::Models::ConnectionMonitor
      ConnectionStateSnapshot = Azure::Network::Mgmt::V2019_06_01::Models::ConnectionStateSnapshot
      ConnectionMonitorResult = Azure::Network::Mgmt::V2019_06_01::Models::ConnectionMonitorResult
      ConnectionMonitorListResult = Azure::Network::Mgmt::V2019_06_01::Models::ConnectionMonitorListResult
      ConnectionMonitorQueryResult = Azure::Network::Mgmt::V2019_06_01::Models::ConnectionMonitorQueryResult
      P2SVpnServerConfigVpnClientRootCertificate = Azure::Network::Mgmt::V2019_06_01::Models::P2SVpnServerConfigVpnClientRootCertificate
      P2SVpnServerConfigVpnClientRevokedCertificate = Azure::Network::Mgmt::V2019_06_01::Models::P2SVpnServerConfigVpnClientRevokedCertificate
      P2SVpnServerConfigRadiusServerRootCertificate = Azure::Network::Mgmt::V2019_06_01::Models::P2SVpnServerConfigRadiusServerRootCertificate
      P2SVpnServerConfigRadiusClientRootCertificate = Azure::Network::Mgmt::V2019_06_01::Models::P2SVpnServerConfigRadiusClientRootCertificate
      P2SVpnServerConfiguration = Azure::Network::Mgmt::V2019_06_01::Models::P2SVpnServerConfiguration
      ConnectionState = Azure::Network::Mgmt::V2019_06_01::Models::ConnectionState
      EvaluationState = Azure::Network::Mgmt::V2019_06_01::Models::EvaluationState
      ConnectionMonitorSourceStatus = Azure::Network::Mgmt::V2019_06_01::Models::ConnectionMonitorSourceStatus
      AzureAsyncOperationResult = Azure::Network::Mgmt::V2019_08_01::Models::AzureAsyncOperationResult
      NetworkInterfaceTapConfigurationListResult = Azure::Network::Mgmt::V2019_08_01::Models::NetworkInterfaceTapConfigurationListResult
      SubResource = Azure::Network::Mgmt::V2019_08_01::Models::SubResource
      NetworkInterfaceIPConfigurationListResult = Azure::Network::Mgmt::V2019_08_01::Models::NetworkInterfaceIPConfigurationListResult
      ExpressRoutePortsLocationBandwidths = Azure::Network::Mgmt::V2019_08_01::Models::ExpressRoutePortsLocationBandwidths
      ListVpnGatewaysResult = Azure::Network::Mgmt::V2019_08_01::Models::ListVpnGatewaysResult
      VpnServerConfigurationsResponse = Azure::Network::Mgmt::V2019_08_01::Models::VpnServerConfigurationsResponse
      PrivateLinkServiceConnectionState = Azure::Network::Mgmt::V2019_08_01::Models::PrivateLinkServiceConnectionState
      ExpressRoutePortsLocationListResult = Azure::Network::Mgmt::V2019_08_01::Models::ExpressRoutePortsLocationListResult
      VirtualHubRouteTable = Azure::Network::Mgmt::V2019_08_01::Models::VirtualHubRouteTable
      ExpressRouteLinkMacSecConfig = Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteLinkMacSecConfig
      VirtualHubRoute = Azure::Network::Mgmt::V2019_08_01::Models::VirtualHubRoute
      VirtualNetworkBgpCommunities = Azure::Network::Mgmt::V2019_08_01::Models::VirtualNetworkBgpCommunities
      GetVpnSitesConfigurationRequest = Azure::Network::Mgmt::V2019_08_01::Models::GetVpnSitesConfigurationRequest
      ExpressRouteLinkListResult = Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteLinkListResult
      ServiceEndpointPropertiesFormat = Azure::Network::Mgmt::V2019_08_01::Models::ServiceEndpointPropertiesFormat
      DhcpOptions = Azure::Network::Mgmt::V2019_08_01::Models::DhcpOptions
      ListHubVirtualNetworkConnectionsResult = Azure::Network::Mgmt::V2019_08_01::Models::ListHubVirtualNetworkConnectionsResult
      ExpressRoutePortListResult = Azure::Network::Mgmt::V2019_08_01::Models::ExpressRoutePortListResult
      PublicIPAddressDnsSettings = Azure::Network::Mgmt::V2019_08_01::Models::PublicIPAddressDnsSettings
      VirtualNetworkPeeringListResult = Azure::Network::Mgmt::V2019_08_01::Models::VirtualNetworkPeeringListResult
      IpTag = Azure::Network::Mgmt::V2019_08_01::Models::IpTag
      FirewallPolicyRule = Azure::Network::Mgmt::V2019_08_01::Models::FirewallPolicyRule
      VpnLinkBgpSettings = Azure::Network::Mgmt::V2019_08_01::Models::VpnLinkBgpSettings
      ServiceAssociationLinksListResult = Azure::Network::Mgmt::V2019_08_01::Models::ServiceAssociationLinksListResult
      DeviceProperties = Azure::Network::Mgmt::V2019_08_01::Models::DeviceProperties
      FirewallPolicyNatRuleAction = Azure::Network::Mgmt::V2019_08_01::Models::FirewallPolicyNatRuleAction
      VirtualWanSecurityProvider = Azure::Network::Mgmt::V2019_08_01::Models::VirtualWanSecurityProvider
      FirewallPolicyRuleCondition = Azure::Network::Mgmt::V2019_08_01::Models::FirewallPolicyRuleCondition
      VirtualRouterListResult = Azure::Network::Mgmt::V2019_08_01::Models::VirtualRouterListResult
      ResourceNavigationLinksListResult = Azure::Network::Mgmt::V2019_08_01::Models::ResourceNavigationLinksListResult
      VpnServerConfigVpnClientRootCertificate = Azure::Network::Mgmt::V2019_08_01::Models::VpnServerConfigVpnClientRootCertificate
      FirewallPolicyFilterRuleAction = Azure::Network::Mgmt::V2019_08_01::Models::FirewallPolicyFilterRuleAction
      NetworkInterfaceIPConfigurationPrivateLinkConnectionProperties = Azure::Network::Mgmt::V2019_08_01::Models::NetworkInterfaceIPConfigurationPrivateLinkConnectionProperties
      SubnetListResult = Azure::Network::Mgmt::V2019_08_01::Models::SubnetListResult
      ApplicationGatewayBackendAddress = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayBackendAddress
      FirewallPolicyRuleConditionApplicationProtocol = Azure::Network::Mgmt::V2019_08_01::Models::FirewallPolicyRuleConditionApplicationProtocol
      ApplicationGatewayConnectionDraining = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayConnectionDraining
      VirtualWanVpnProfileParameters = Azure::Network::Mgmt::V2019_08_01::Models::VirtualWanVpnProfileParameters
      ApplicationGatewayBackendHealthServer = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayBackendHealthServer
      AddressSpace = Azure::Network::Mgmt::V2019_08_01::Models::AddressSpace
      ApplicationGatewayBackendHealthOnDemand = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayBackendHealthOnDemand
      FirewallPolicyListResult = Azure::Network::Mgmt::V2019_08_01::Models::FirewallPolicyListResult
      ApplicationGatewayBackendHealth = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayBackendHealth
      FirewallPolicyRuleGroupListResult = Azure::Network::Mgmt::V2019_08_01::Models::FirewallPolicyRuleGroupListResult
      ApplicationGatewaySslPolicy = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewaySslPolicy
      LoadBalancerSku = Azure::Network::Mgmt::V2019_08_01::Models::LoadBalancerSku
      VpnDeviceScriptParameters = Azure::Network::Mgmt::V2019_08_01::Models::VpnDeviceScriptParameters
      UsagesListResult = Azure::Network::Mgmt::V2019_08_01::Models::UsagesListResult
      VpnServerConfigRadiusServerRootCertificate = Azure::Network::Mgmt::V2019_08_01::Models::VpnServerConfigRadiusServerRootCertificate
      Usage = Azure::Network::Mgmt::V2019_08_01::Models::Usage
      LocalNetworkGatewayListResult = Azure::Network::Mgmt::V2019_08_01::Models::LocalNetworkGatewayListResult
      UsageName = Azure::Network::Mgmt::V2019_08_01::Models::UsageName
      VpnClientIPsecParameters = Azure::Network::Mgmt::V2019_08_01::Models::VpnClientIPsecParameters
      ServiceTagsListResult = Azure::Network::Mgmt::V2019_08_01::Models::ServiceTagsListResult
      ConnectionResetSharedKey = Azure::Network::Mgmt::V2019_08_01::Models::ConnectionResetSharedKey
      ServiceTagInformation = Azure::Network::Mgmt::V2019_08_01::Models::ServiceTagInformation
      ApplicationGatewayRewriteRuleCondition = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayRewriteRuleCondition
      LoadBalancerListResult = Azure::Network::Mgmt::V2019_08_01::Models::LoadBalancerListResult
      ApplicationGatewayRewriteRuleActionSet = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayRewriteRuleActionSet
      InboundNatRuleListResult = Azure::Network::Mgmt::V2019_08_01::Models::InboundNatRuleListResult
      VpnServerConfigRadiusClientRootCertificate = Azure::Network::Mgmt::V2019_08_01::Models::VpnServerConfigRadiusClientRootCertificate
      LoadBalancerBackendAddressPoolListResult = Azure::Network::Mgmt::V2019_08_01::Models::LoadBalancerBackendAddressPoolListResult
      AadAuthenticationParameters = Azure::Network::Mgmt::V2019_08_01::Models::AadAuthenticationParameters
      LoadBalancerFrontendIPConfigurationListResult = Azure::Network::Mgmt::V2019_08_01::Models::LoadBalancerFrontendIPConfigurationListResult
      ApplicationGatewayFirewallExclusion = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayFirewallExclusion
      LoadBalancerLoadBalancingRuleListResult = Azure::Network::Mgmt::V2019_08_01::Models::LoadBalancerLoadBalancingRuleListResult
      ApplicationGatewayAutoscaleConfiguration = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayAutoscaleConfiguration
      LoadBalancerOutboundRuleListResult = Azure::Network::Mgmt::V2019_08_01::Models::LoadBalancerOutboundRuleListResult
      ManagedServiceIdentity = Azure::Network::Mgmt::V2019_08_01::Models::ManagedServiceIdentity
      LoadBalancerProbeListResult = Azure::Network::Mgmt::V2019_08_01::Models::LoadBalancerProbeListResult
      ApplicationGatewayListResult = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayListResult
      NetworkInterfaceListResult = Azure::Network::Mgmt::V2019_08_01::Models::NetworkInterfaceListResult
      ApplicationGatewayFirewallRuleGroup = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayFirewallRuleGroup
      NatGatewaySku = Azure::Network::Mgmt::V2019_08_01::Models::NatGatewaySku
      ApplicationGatewayAvailableWafRuleSetsResult = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayAvailableWafRuleSetsResult
      ServiceTagInformationPropertiesFormat = Azure::Network::Mgmt::V2019_08_01::Models::ServiceTagInformationPropertiesFormat
      VirtualNetworkGatewayListResult = Azure::Network::Mgmt::V2019_08_01::Models::VirtualNetworkGatewayListResult
      NatGatewayListResult = Azure::Network::Mgmt::V2019_08_01::Models::NatGatewayListResult
      Resource = Azure::Network::Mgmt::V2019_08_01::Models::Resource
      ApplicationGatewayProbeHealthResponseMatch = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayProbeHealthResponseMatch
      Error = Azure::Network::Mgmt::V2019_08_01::Models::Error
      ApplicationGatewayOnDemandProbe = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayOnDemandProbe
      ApplicationSecurityGroupListResult = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationSecurityGroupListResult
      ServiceEndpointPolicyListResult = Azure::Network::Mgmt::V2019_08_01::Models::ServiceEndpointPolicyListResult
      AvailableDelegationsResult = Azure::Network::Mgmt::V2019_08_01::Models::AvailableDelegationsResult
      NetworkInterfaceLoadBalancerListResult = Azure::Network::Mgmt::V2019_08_01::Models::NetworkInterfaceLoadBalancerListResult
      AvailableServiceAliasesResult = Azure::Network::Mgmt::V2019_08_01::Models::AvailableServiceAliasesResult
      EffectiveNetworkSecurityGroupAssociation = Azure::Network::Mgmt::V2019_08_01::Models::EffectiveNetworkSecurityGroupAssociation
      AzureFirewallPublicIPAddress = Azure::Network::Mgmt::V2019_08_01::Models::AzureFirewallPublicIPAddress
      EffectiveNetworkSecurityRule = Azure::Network::Mgmt::V2019_08_01::Models::EffectiveNetworkSecurityRule
      AzureFirewallRCAction = Azure::Network::Mgmt::V2019_08_01::Models::AzureFirewallRCAction
      EffectiveNetworkSecurityGroup = Azure::Network::Mgmt::V2019_08_01::Models::EffectiveNetworkSecurityGroup
      AzureFirewallApplicationRule = Azure::Network::Mgmt::V2019_08_01::Models::AzureFirewallApplicationRule
      EffectiveNetworkSecurityGroupListResult = Azure::Network::Mgmt::V2019_08_01::Models::EffectiveNetworkSecurityGroupListResult
      AzureFirewallNatRCAction = Azure::Network::Mgmt::V2019_08_01::Models::AzureFirewallNatRCAction
      EffectiveRoute = Azure::Network::Mgmt::V2019_08_01::Models::EffectiveRoute
      GatewayRoute = Azure::Network::Mgmt::V2019_08_01::Models::GatewayRoute
      EffectiveRouteListResult = Azure::Network::Mgmt::V2019_08_01::Models::EffectiveRouteListResult
      BgpPeerStatus = Azure::Network::Mgmt::V2019_08_01::Models::BgpPeerStatus
      ServiceEndpointPolicyDefinitionListResult = Azure::Network::Mgmt::V2019_08_01::Models::ServiceEndpointPolicyDefinitionListResult
      BgpSettings = Azure::Network::Mgmt::V2019_08_01::Models::BgpSettings
      BgpServiceCommunityListResult = Azure::Network::Mgmt::V2019_08_01::Models::BgpServiceCommunityListResult
      VpnClientConfiguration = Azure::Network::Mgmt::V2019_08_01::Models::VpnClientConfiguration
      ContainerNetworkInterfaceIpConfiguration = Azure::Network::Mgmt::V2019_08_01::Models::ContainerNetworkInterfaceIpConfiguration
      IpsecPolicy = Azure::Network::Mgmt::V2019_08_01::Models::IpsecPolicy
      P2SVpnConnectionHealthRequest = Azure::Network::Mgmt::V2019_08_01::Models::P2SVpnConnectionHealthRequest
      BastionHostListResult = Azure::Network::Mgmt::V2019_08_01::Models::BastionHostListResult
      BGPCommunity = Azure::Network::Mgmt::V2019_08_01::Models::BGPCommunity
      ProtocolCustomSettingsFormat = Azure::Network::Mgmt::V2019_08_01::Models::ProtocolCustomSettingsFormat
      NetworkProfileListResult = Azure::Network::Mgmt::V2019_08_01::Models::NetworkProfileListResult
      SecurityRuleListResult = Azure::Network::Mgmt::V2019_08_01::Models::SecurityRuleListResult
      DdosProtectionPlan = Azure::Network::Mgmt::V2019_08_01::Models::DdosProtectionPlan
      NetworkSecurityGroupListResult = Azure::Network::Mgmt::V2019_08_01::Models::NetworkSecurityGroupListResult
      VirtualNetworkGatewaySku = Azure::Network::Mgmt::V2019_08_01::Models::VirtualNetworkGatewaySku
      ErrorResponse = Azure::Network::Mgmt::V2019_08_01::Models::ErrorResponse
      P2SVpnProfileParameters = Azure::Network::Mgmt::V2019_08_01::Models::P2SVpnProfileParameters
      WebApplicationFirewallPolicyListResult = Azure::Network::Mgmt::V2019_08_01::Models::WebApplicationFirewallPolicyListResult
      ExpressRouteCircuitPeeringConfig = Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCircuitPeeringConfig
      NetworkWatcherListResult = Azure::Network::Mgmt::V2019_08_01::Models::NetworkWatcherListResult
      ExpressRouteCircuitStats = Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCircuitStats
      TopologyParameters = Azure::Network::Mgmt::V2019_08_01::Models::TopologyParameters
      UnprepareNetworkPoliciesRequest = Azure::Network::Mgmt::V2019_08_01::Models::UnprepareNetworkPoliciesRequest
      TopologyAssociation = Azure::Network::Mgmt::V2019_08_01::Models::TopologyAssociation
      NetworkIntentPolicyConfiguration = Azure::Network::Mgmt::V2019_08_01::Models::NetworkIntentPolicyConfiguration
      TopologyResource = Azure::Network::Mgmt::V2019_08_01::Models::TopologyResource
      ExpressRouteCircuitConnectionListResult = Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCircuitConnectionListResult
      Topology = Azure::Network::Mgmt::V2019_08_01::Models::Topology
      ExpressRouteCircuitSku = Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCircuitSku
      VerificationIPFlowParameters = Azure::Network::Mgmt::V2019_08_01::Models::VerificationIPFlowParameters
      VpnProfileResponse = Azure::Network::Mgmt::V2019_08_01::Models::VpnProfileResponse
      VerificationIPFlowResult = Azure::Network::Mgmt::V2019_08_01::Models::VerificationIPFlowResult
      ExpressRouteCircuitsArpTableListResult = Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCircuitsArpTableListResult
      NextHopParameters = Azure::Network::Mgmt::V2019_08_01::Models::NextHopParameters
      ExpressRouteCircuitsRoutesTableListResult = Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCircuitsRoutesTableListResult
      NextHopResult = Azure::Network::Mgmt::V2019_08_01::Models::NextHopResult
      ExpressRouteCircuitsRoutesTableSummaryListResult = Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCircuitsRoutesTableSummaryListResult
      SecurityGroupViewParameters = Azure::Network::Mgmt::V2019_08_01::Models::SecurityGroupViewParameters
      ExpressRouteServiceProviderBandwidthsOffered = Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteServiceProviderBandwidthsOffered
      NetworkInterfaceAssociation = Azure::Network::Mgmt::V2019_08_01::Models::NetworkInterfaceAssociation
      ExpressRouteServiceProviderListResult = Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteServiceProviderListResult
      SubnetAssociation = Azure::Network::Mgmt::V2019_08_01::Models::SubnetAssociation
      ExpressRouteCrossConnectionsRoutesTableSummaryListResult = Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCrossConnectionsRoutesTableSummaryListResult
      SecurityRuleAssociations = Azure::Network::Mgmt::V2019_08_01::Models::SecurityRuleAssociations
      VirtualNetworkUsage = Azure::Network::Mgmt::V2019_08_01::Models::VirtualNetworkUsage
      SecurityGroupNetworkInterface = Azure::Network::Mgmt::V2019_08_01::Models::SecurityGroupNetworkInterface
      ExpressRouteCrossConnectionListResult = Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCrossConnectionListResult
      SecurityGroupViewResult = Azure::Network::Mgmt::V2019_08_01::Models::SecurityGroupViewResult
      VirtualHubId = Azure::Network::Mgmt::V2019_08_01::Models::VirtualHubId
      PacketCaptureStorageLocation = Azure::Network::Mgmt::V2019_08_01::Models::PacketCaptureStorageLocation
      ExpressRouteGatewayPropertiesAutoScaleConfigurationBounds = Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteGatewayPropertiesAutoScaleConfigurationBounds
      PacketCaptureFilter = Azure::Network::Mgmt::V2019_08_01::Models::PacketCaptureFilter
      IPAddressAvailabilityResult = Azure::Network::Mgmt::V2019_08_01::Models::IPAddressAvailabilityResult
      PacketCaptureParameters = Azure::Network::Mgmt::V2019_08_01::Models::PacketCaptureParameters
      ExpressRouteGatewayList = Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteGatewayList
      PacketCapture = Azure::Network::Mgmt::V2019_08_01::Models::PacketCapture
      ListVirtualHubsResult = Azure::Network::Mgmt::V2019_08_01::Models::ListVirtualHubsResult
      PacketCaptureResult = Azure::Network::Mgmt::V2019_08_01::Models::PacketCaptureResult
      NetworkInterfaceDnsSettings = Azure::Network::Mgmt::V2019_08_01::Models::NetworkInterfaceDnsSettings
      PacketCaptureListResult = Azure::Network::Mgmt::V2019_08_01::Models::PacketCaptureListResult
      ListVpnSiteLinksResult = Azure::Network::Mgmt::V2019_08_01::Models::ListVpnSiteLinksResult
      PacketCaptureQueryStatusResult = Azure::Network::Mgmt::V2019_08_01::Models::PacketCaptureQueryStatusResult
      PublicIPAddressSku = Azure::Network::Mgmt::V2019_08_01::Models::PublicIPAddressSku
      TroubleshootingParameters = Azure::Network::Mgmt::V2019_08_01::Models::TroubleshootingParameters
      VpnSiteId = Azure::Network::Mgmt::V2019_08_01::Models::VpnSiteId
      QueryTroubleshootingParameters = Azure::Network::Mgmt::V2019_08_01::Models::QueryTroubleshootingParameters
      ListVirtualWANsResult = Azure::Network::Mgmt::V2019_08_01::Models::ListVirtualWANsResult
      TroubleshootingRecommendedActions = Azure::Network::Mgmt::V2019_08_01::Models::TroubleshootingRecommendedActions
      VirtualWanSecurityProviders = Azure::Network::Mgmt::V2019_08_01::Models::VirtualWanSecurityProviders
      TroubleshootingDetails = Azure::Network::Mgmt::V2019_08_01::Models::TroubleshootingDetails
      VpnPacketCaptureStartParameters = Azure::Network::Mgmt::V2019_08_01::Models::VpnPacketCaptureStartParameters
      TroubleshootingResult = Azure::Network::Mgmt::V2019_08_01::Models::TroubleshootingResult
      VpnClientConnectionHealthDetailListResult = Azure::Network::Mgmt::V2019_08_01::Models::VpnClientConnectionHealthDetailListResult
      RetentionPolicyParameters = Azure::Network::Mgmt::V2019_08_01::Models::RetentionPolicyParameters
      ApplicationGatewayBackendHealthPool = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayBackendHealthPool
      FlowLogFormatParameters = Azure::Network::Mgmt::V2019_08_01::Models::FlowLogFormatParameters
      VpnClientConnectionHealthDetail = Azure::Network::Mgmt::V2019_08_01::Models::VpnClientConnectionHealthDetail
      FlowLogStatusParameters = Azure::Network::Mgmt::V2019_08_01::Models::FlowLogStatusParameters
      VirtualNetworkConnectionGatewayReference = Azure::Network::Mgmt::V2019_08_01::Models::VirtualNetworkConnectionGatewayReference
      TrafficAnalyticsConfigurationProperties = Azure::Network::Mgmt::V2019_08_01::Models::TrafficAnalyticsConfigurationProperties
      VpnServerConfigVpnClientRevokedCertificate = Azure::Network::Mgmt::V2019_08_01::Models::VpnServerConfigVpnClientRevokedCertificate
      TrafficAnalyticsProperties = Azure::Network::Mgmt::V2019_08_01::Models::TrafficAnalyticsProperties
      ApplicationGatewayHeaderConfiguration = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayHeaderConfiguration
      FlowLogInformation = Azure::Network::Mgmt::V2019_08_01::Models::FlowLogInformation
      TrafficSelectorPolicy = Azure::Network::Mgmt::V2019_08_01::Models::TrafficSelectorPolicy
      ConnectivitySource = Azure::Network::Mgmt::V2019_08_01::Models::ConnectivitySource
      ApplicationGatewayWebApplicationFirewallConfiguration = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayWebApplicationFirewallConfiguration
      ConnectivityDestination = Azure::Network::Mgmt::V2019_08_01::Models::ConnectivityDestination
      TunnelConnectionHealth = Azure::Network::Mgmt::V2019_08_01::Models::TunnelConnectionHealth
      HTTPHeader = Azure::Network::Mgmt::V2019_08_01::Models::HTTPHeader
      GatewayRouteListResult = Azure::Network::Mgmt::V2019_08_01::Models::GatewayRouteListResult
      HTTPConfiguration = Azure::Network::Mgmt::V2019_08_01::Models::HTTPConfiguration
      ApplicationGatewayAvailableSslPredefinedPolicies = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayAvailableSslPredefinedPolicies
      ProtocolConfiguration = Azure::Network::Mgmt::V2019_08_01::Models::ProtocolConfiguration
      TagsObject = Azure::Network::Mgmt::V2019_08_01::Models::TagsObject
      ConnectivityParameters = Azure::Network::Mgmt::V2019_08_01::Models::ConnectivityParameters
      AvailableServiceAlias = Azure::Network::Mgmt::V2019_08_01::Models::AvailableServiceAlias
      ConnectivityIssue = Azure::Network::Mgmt::V2019_08_01::Models::ConnectivityIssue
      HubIPAddresses = Azure::Network::Mgmt::V2019_08_01::Models::HubIPAddresses
      ConnectivityHop = Azure::Network::Mgmt::V2019_08_01::Models::ConnectivityHop
      VpnClientConnectionHealth = Azure::Network::Mgmt::V2019_08_01::Models::VpnClientConnectionHealth
      ConnectivityInformation = Azure::Network::Mgmt::V2019_08_01::Models::ConnectivityInformation
      AzureFirewallNetworkRule = Azure::Network::Mgmt::V2019_08_01::Models::AzureFirewallNetworkRule
      AzureReachabilityReportLocation = Azure::Network::Mgmt::V2019_08_01::Models::AzureReachabilityReportLocation
      AzureFirewallListResult = Azure::Network::Mgmt::V2019_08_01::Models::AzureFirewallListResult
      AzureReachabilityReportParameters = Azure::Network::Mgmt::V2019_08_01::Models::AzureReachabilityReportParameters
      ListVpnServerConfigurationsResult = Azure::Network::Mgmt::V2019_08_01::Models::ListVpnServerConfigurationsResult
      AzureReachabilityReportLatencyInfo = Azure::Network::Mgmt::V2019_08_01::Models::AzureReachabilityReportLatencyInfo
      ListP2SVpnGatewaysResult = Azure::Network::Mgmt::V2019_08_01::Models::ListP2SVpnGatewaysResult
      AzureReachabilityReportItem = Azure::Network::Mgmt::V2019_08_01::Models::AzureReachabilityReportItem
      DdosProtectionPlanListResult = Azure::Network::Mgmt::V2019_08_01::Models::DdosProtectionPlanListResult
      AzureReachabilityReport = Azure::Network::Mgmt::V2019_08_01::Models::AzureReachabilityReport
      AuthorizationListResult = Azure::Network::Mgmt::V2019_08_01::Models::AuthorizationListResult
      AvailableProvidersListParameters = Azure::Network::Mgmt::V2019_08_01::Models::AvailableProvidersListParameters
      ExpressRouteConnectionId = Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteConnectionId
      AvailableProvidersListCity = Azure::Network::Mgmt::V2019_08_01::Models::AvailableProvidersListCity
      ExpressRouteCircuitPeeringListResult = Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCircuitPeeringListResult
      AvailableProvidersListState = Azure::Network::Mgmt::V2019_08_01::Models::AvailableProvidersListState
      ExpressRouteCircuitServiceProviderProperties = Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCircuitServiceProviderProperties
      AvailableProvidersListCountry = Azure::Network::Mgmt::V2019_08_01::Models::AvailableProvidersListCountry
      ExpressRouteCircuitRoutesTable = Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCircuitRoutesTable
      AvailableProvidersList = Azure::Network::Mgmt::V2019_08_01::Models::AvailableProvidersList
      ExpressRouteCircuitListResult = Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCircuitListResult
      NetworkConfigurationDiagnosticProfile = Azure::Network::Mgmt::V2019_08_01::Models::NetworkConfigurationDiagnosticProfile
      ExpressRouteCrossConnectionRoutesTableSummary = Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCrossConnectionRoutesTableSummary
      NetworkConfigurationDiagnosticParameters = Azure::Network::Mgmt::V2019_08_01::Models::NetworkConfigurationDiagnosticParameters
      VirtualNetworkUsageName = Azure::Network::Mgmt::V2019_08_01::Models::VirtualNetworkUsageName
      MatchedRule = Azure::Network::Mgmt::V2019_08_01::Models::MatchedRule
      ExpressRouteCircuitPeeringId = Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCircuitPeeringId
      NetworkSecurityRulesEvaluationResult = Azure::Network::Mgmt::V2019_08_01::Models::NetworkSecurityRulesEvaluationResult
      VirtualNetworkListResult = Azure::Network::Mgmt::V2019_08_01::Models::VirtualNetworkListResult
      EvaluatedNetworkSecurityGroup = Azure::Network::Mgmt::V2019_08_01::Models::EvaluatedNetworkSecurityGroup
      ListVpnConnectionsResult = Azure::Network::Mgmt::V2019_08_01::Models::ListVpnConnectionsResult
      NetworkSecurityGroupResult = Azure::Network::Mgmt::V2019_08_01::Models::NetworkSecurityGroupResult
      ListVpnSitesResult = Azure::Network::Mgmt::V2019_08_01::Models::ListVpnSitesResult
      NetworkConfigurationDiagnosticResult = Azure::Network::Mgmt::V2019_08_01::Models::NetworkConfigurationDiagnosticResult
      VpnLinkProviderProperties = Azure::Network::Mgmt::V2019_08_01::Models::VpnLinkProviderProperties
      NetworkConfigurationDiagnosticResponse = Azure::Network::Mgmt::V2019_08_01::Models::NetworkConfigurationDiagnosticResponse
      VirtualNetworkTapListResult = Azure::Network::Mgmt::V2019_08_01::Models::VirtualNetworkTapListResult
      OperationDisplay = Azure::Network::Mgmt::V2019_08_01::Models::OperationDisplay
      ApplicationGatewayBackendHealthHttpSettings = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayBackendHealthHttpSettings
      Availability = Azure::Network::Mgmt::V2019_08_01::Models::Availability
      VirtualNetworkGatewayListConnectionsResult = Azure::Network::Mgmt::V2019_08_01::Models::VirtualNetworkGatewayListConnectionsResult
      Dimension = Azure::Network::Mgmt::V2019_08_01::Models::Dimension
      VirtualNetworkGatewayConnectionListResult = Azure::Network::Mgmt::V2019_08_01::Models::VirtualNetworkGatewayConnectionListResult
      MetricSpecification = Azure::Network::Mgmt::V2019_08_01::Models::MetricSpecification
      ApplicationGatewayFirewallDisabledRuleGroup = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayFirewallDisabledRuleGroup
      LogSpecification = Azure::Network::Mgmt::V2019_08_01::Models::LogSpecification
      ApplicationGatewayFirewallRule = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayFirewallRule
      OperationPropertiesFormatServiceSpecification = Azure::Network::Mgmt::V2019_08_01::Models::OperationPropertiesFormatServiceSpecification
      ErrorDetails = Azure::Network::Mgmt::V2019_08_01::Models::ErrorDetails
      Operation = Azure::Network::Mgmt::V2019_08_01::Models::Operation
      VpnClientParameters = Azure::Network::Mgmt::V2019_08_01::Models::VpnClientParameters
      OperationListResult = Azure::Network::Mgmt::V2019_08_01::Models::OperationListResult
      AzureFirewallNatRule = Azure::Network::Mgmt::V2019_08_01::Models::AzureFirewallNatRule
      PrivateEndpointListResult = Azure::Network::Mgmt::V2019_08_01::Models::PrivateEndpointListResult
      AzureFirewallFqdnTagListResult = Azure::Network::Mgmt::V2019_08_01::Models::AzureFirewallFqdnTagListResult
      AvailablePrivateEndpointType = Azure::Network::Mgmt::V2019_08_01::Models::AvailablePrivateEndpointType
      AvailablePrivateEndpointTypesResult = Azure::Network::Mgmt::V2019_08_01::Models::AvailablePrivateEndpointTypesResult
      Ipv6ExpressRouteCircuitPeeringConfig = Azure::Network::Mgmt::V2019_08_01::Models::Ipv6ExpressRouteCircuitPeeringConfig
      ManagedRulesDefinition = Azure::Network::Mgmt::V2019_08_01::Models::ManagedRulesDefinition
      PeerExpressRouteCircuitConnectionListResult = Azure::Network::Mgmt::V2019_08_01::Models::PeerExpressRouteCircuitConnectionListResult
      ManagedRuleSet = Azure::Network::Mgmt::V2019_08_01::Models::ManagedRuleSet
      ExpressRouteCircuitRoutesTableSummary = Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCircuitRoutesTableSummary
      ManagedRuleGroupOverride = Azure::Network::Mgmt::V2019_08_01::Models::ManagedRuleGroupOverride
      ExpressRouteCircuitReference = Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCircuitReference
      ManagedRuleOverride = Azure::Network::Mgmt::V2019_08_01::Models::ManagedRuleOverride
      ExpressRouteGatewayPropertiesAutoScaleConfiguration = Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteGatewayPropertiesAutoScaleConfiguration
      OwaspCrsExclusionEntry = Azure::Network::Mgmt::V2019_08_01::Models::OwaspCrsExclusionEntry
      ListVpnSiteLinkConnectionsResult = Azure::Network::Mgmt::V2019_08_01::Models::ListVpnSiteLinkConnectionsResult
      ResourceSet = Azure::Network::Mgmt::V2019_08_01::Models::ResourceSet
      VirtualRouterPeeringListResult = Azure::Network::Mgmt::V2019_08_01::Models::VirtualRouterPeeringListResult
      PrivateLinkServiceListResult = Azure::Network::Mgmt::V2019_08_01::Models::PrivateLinkServiceListResult
      ApplicationGatewaySku = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewaySku
      CheckPrivateLinkServiceVisibilityRequest = Azure::Network::Mgmt::V2019_08_01::Models::CheckPrivateLinkServiceVisibilityRequest
      ApplicationGatewayRewriteRule = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayRewriteRule
      PrivateLinkServiceVisibility = Azure::Network::Mgmt::V2019_08_01::Models::PrivateLinkServiceVisibility
      BgpPeerStatusListResult = Azure::Network::Mgmt::V2019_08_01::Models::BgpPeerStatusListResult
      AutoApprovedPrivateLinkService = Azure::Network::Mgmt::V2019_08_01::Models::AutoApprovedPrivateLinkService
      AzureFirewallApplicationRuleProtocol = Azure::Network::Mgmt::V2019_08_01::Models::AzureFirewallApplicationRuleProtocol
      AutoApprovedPrivateLinkServicesResult = Azure::Network::Mgmt::V2019_08_01::Models::AutoApprovedPrivateLinkServicesResult
      DnsNameAvailabilityResult = Azure::Network::Mgmt::V2019_08_01::Models::DnsNameAvailabilityResult
      PublicIPAddressListResult = Azure::Network::Mgmt::V2019_08_01::Models::PublicIPAddressListResult
      PrepareNetworkPoliciesRequest = Azure::Network::Mgmt::V2019_08_01::Models::PrepareNetworkPoliciesRequest
      PublicIPPrefixSku = Azure::Network::Mgmt::V2019_08_01::Models::PublicIPPrefixSku
      VirtualNetworkListUsageResult = Azure::Network::Mgmt::V2019_08_01::Models::VirtualNetworkListUsageResult
      ReferencedPublicIpAddress = Azure::Network::Mgmt::V2019_08_01::Models::ReferencedPublicIpAddress
      ExpressRouteConnectionList = Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteConnectionList
      WebApplicationFirewallCustomRule = Azure::Network::Mgmt::V2019_08_01::Models::WebApplicationFirewallCustomRule
      VpnPacketCaptureStopParameters = Azure::Network::Mgmt::V2019_08_01::Models::VpnPacketCaptureStopParameters
      PublicIPPrefixListResult = Azure::Network::Mgmt::V2019_08_01::Models::PublicIPPrefixListResult
      ManagedServiceIdentityUserAssignedIdentitiesValue = Azure::Network::Mgmt::V2019_08_01::Models::ManagedServiceIdentityUserAssignedIdentitiesValue
      MatchCondition = Azure::Network::Mgmt::V2019_08_01::Models::MatchCondition
      AzureFirewallSku = Azure::Network::Mgmt::V2019_08_01::Models::AzureFirewallSku
      MatchVariable = Azure::Network::Mgmt::V2019_08_01::Models::MatchVariable
      ExpressRouteCircuitArpTable = Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCircuitArpTable
      PolicySettings = Azure::Network::Mgmt::V2019_08_01::Models::PolicySettings
      DdosSettings = Azure::Network::Mgmt::V2019_08_01::Models::DdosSettings
      P2SVpnConnectionHealth = Azure::Network::Mgmt::V2019_08_01::Models::P2SVpnConnectionHealth
      AvailableDelegation = Azure::Network::Mgmt::V2019_08_01::Models::AvailableDelegation
      RouteFilterListResult = Azure::Network::Mgmt::V2019_08_01::Models::RouteFilterListResult
      ExpressRouteCrossConnectionPeeringList = Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCrossConnectionPeeringList
      RouteFilterRuleListResult = Azure::Network::Mgmt::V2019_08_01::Models::RouteFilterRuleListResult
      EndpointServicesListResult = Azure::Network::Mgmt::V2019_08_01::Models::EndpointServicesListResult
      RouteTableListResult = Azure::Network::Mgmt::V2019_08_01::Models::RouteTableListResult
      ApplicationGatewayCustomError = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayCustomError
      RouteListResult = Azure::Network::Mgmt::V2019_08_01::Models::RouteListResult
      NetworkInterfaceTapConfiguration = Azure::Network::Mgmt::V2019_08_01::Models::NetworkInterfaceTapConfiguration
      ApplicationSecurityGroup = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationSecurityGroup
      SecurityRule = Azure::Network::Mgmt::V2019_08_01::Models::SecurityRule
      PrivateLinkServiceConnection = Azure::Network::Mgmt::V2019_08_01::Models::PrivateLinkServiceConnection
      PrivateEndpoint = Azure::Network::Mgmt::V2019_08_01::Models::PrivateEndpoint
      NetworkInterface = Azure::Network::Mgmt::V2019_08_01::Models::NetworkInterface
      NetworkSecurityGroup = Azure::Network::Mgmt::V2019_08_01::Models::NetworkSecurityGroup
      Route = Azure::Network::Mgmt::V2019_08_01::Models::Route
      RouteTable = Azure::Network::Mgmt::V2019_08_01::Models::RouteTable
      ServiceEndpointPolicyDefinition = Azure::Network::Mgmt::V2019_08_01::Models::ServiceEndpointPolicyDefinition
      ServiceEndpointPolicy = Azure::Network::Mgmt::V2019_08_01::Models::ServiceEndpointPolicy
      PublicIPAddress = Azure::Network::Mgmt::V2019_08_01::Models::PublicIPAddress
      IPConfiguration = Azure::Network::Mgmt::V2019_08_01::Models::IPConfiguration
      IPConfigurationProfile = Azure::Network::Mgmt::V2019_08_01::Models::IPConfigurationProfile
      ResourceNavigationLink = Azure::Network::Mgmt::V2019_08_01::Models::ResourceNavigationLink
      ServiceAssociationLink = Azure::Network::Mgmt::V2019_08_01::Models::ServiceAssociationLink
      Delegation = Azure::Network::Mgmt::V2019_08_01::Models::Delegation
      Subnet = Azure::Network::Mgmt::V2019_08_01::Models::Subnet
      FrontendIPConfiguration = Azure::Network::Mgmt::V2019_08_01::Models::FrontendIPConfiguration
      VirtualNetworkTap = Azure::Network::Mgmt::V2019_08_01::Models::VirtualNetworkTap
      BackendAddressPool = Azure::Network::Mgmt::V2019_08_01::Models::BackendAddressPool
      InboundNatRule = Azure::Network::Mgmt::V2019_08_01::Models::InboundNatRule
      NetworkInterfaceIPConfiguration = Azure::Network::Mgmt::V2019_08_01::Models::NetworkInterfaceIPConfiguration
      ApplicationGatewayBackendAddressPool = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayBackendAddressPool
      ApplicationGatewayBackendHttpSettings = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayBackendHttpSettings
      ApplicationGatewayIPConfiguration = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayIPConfiguration
      ApplicationGatewayAuthenticationCertificate = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayAuthenticationCertificate
      ApplicationGatewayTrustedRootCertificate = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayTrustedRootCertificate
      ApplicationGatewaySslCertificate = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewaySslCertificate
      ApplicationGatewayFrontendIPConfiguration = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayFrontendIPConfiguration
      ApplicationGatewayFrontendPort = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayFrontendPort
      ApplicationGatewayHttpListener = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayHttpListener
      ApplicationGatewayPathRule = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayPathRule
      ApplicationGatewayProbe = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayProbe
      ApplicationGatewayRequestRoutingRule = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayRequestRoutingRule
      ApplicationGatewayRewriteRuleSet = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayRewriteRuleSet
      ApplicationGatewayRedirectConfiguration = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayRedirectConfiguration
      ApplicationGatewayUrlPathMap = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayUrlPathMap
      ApplicationGateway = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGateway
      ApplicationGatewayFirewallRuleSet = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayFirewallRuleSet
      ApplicationGatewayAvailableSslOptions = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayAvailableSslOptions
      ApplicationGatewaySslPredefinedPolicy = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewaySslPredefinedPolicy
      AzureFirewallIPConfiguration = Azure::Network::Mgmt::V2019_08_01::Models::AzureFirewallIPConfiguration
      AzureFirewallApplicationRuleCollection = Azure::Network::Mgmt::V2019_08_01::Models::AzureFirewallApplicationRuleCollection
      AzureFirewallNatRuleCollection = Azure::Network::Mgmt::V2019_08_01::Models::AzureFirewallNatRuleCollection
      AzureFirewallNetworkRuleCollection = Azure::Network::Mgmt::V2019_08_01::Models::AzureFirewallNetworkRuleCollection
      AzureFirewall = Azure::Network::Mgmt::V2019_08_01::Models::AzureFirewall
      AzureFirewallFqdnTag = Azure::Network::Mgmt::V2019_08_01::Models::AzureFirewallFqdnTag
      BastionHostIPConfiguration = Azure::Network::Mgmt::V2019_08_01::Models::BastionHostIPConfiguration
      BastionHost = Azure::Network::Mgmt::V2019_08_01::Models::BastionHost
      DdosCustomPolicy = Azure::Network::Mgmt::V2019_08_01::Models::DdosCustomPolicy
      EndpointServiceResult = Azure::Network::Mgmt::V2019_08_01::Models::EndpointServiceResult
      ExpressRouteCircuitAuthorization = Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCircuitAuthorization
      ExpressRouteCircuitConnection = Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCircuitConnection
      PeerExpressRouteCircuitConnection = Azure::Network::Mgmt::V2019_08_01::Models::PeerExpressRouteCircuitConnection
      ExpressRouteCircuitPeering = Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCircuitPeering
      ExpressRouteCircuit = Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCircuit
      ExpressRouteServiceProvider = Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteServiceProvider
      ExpressRouteCrossConnectionPeering = Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCrossConnectionPeering
      ExpressRouteCrossConnection = Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCrossConnection
      ExpressRouteConnection = Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteConnection
      ExpressRouteGateway = Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteGateway
      ExpressRoutePortsLocation = Azure::Network::Mgmt::V2019_08_01::Models::ExpressRoutePortsLocation
      ExpressRouteLink = Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteLink
      ExpressRoutePort = Azure::Network::Mgmt::V2019_08_01::Models::ExpressRoutePort
      FirewallPolicy = Azure::Network::Mgmt::V2019_08_01::Models::FirewallPolicy
      FirewallPolicyRuleGroup = Azure::Network::Mgmt::V2019_08_01::Models::FirewallPolicyRuleGroup
      FirewallPolicyNatRule = Azure::Network::Mgmt::V2019_08_01::Models::FirewallPolicyNatRule
      FirewallPolicyFilterRule = Azure::Network::Mgmt::V2019_08_01::Models::FirewallPolicyFilterRule
      ApplicationRuleCondition = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationRuleCondition
      NetworkRuleCondition = Azure::Network::Mgmt::V2019_08_01::Models::NetworkRuleCondition
      LoadBalancingRule = Azure::Network::Mgmt::V2019_08_01::Models::LoadBalancingRule
      Probe = Azure::Network::Mgmt::V2019_08_01::Models::Probe
      InboundNatPool = Azure::Network::Mgmt::V2019_08_01::Models::InboundNatPool
      OutboundRule = Azure::Network::Mgmt::V2019_08_01::Models::OutboundRule
      LoadBalancer = Azure::Network::Mgmt::V2019_08_01::Models::LoadBalancer
      NatGateway = Azure::Network::Mgmt::V2019_08_01::Models::NatGateway
      ContainerNetworkInterfaceConfiguration = Azure::Network::Mgmt::V2019_08_01::Models::ContainerNetworkInterfaceConfiguration
      Container = Azure::Network::Mgmt::V2019_08_01::Models::Container
      ContainerNetworkInterface = Azure::Network::Mgmt::V2019_08_01::Models::ContainerNetworkInterface
      NetworkProfile = Azure::Network::Mgmt::V2019_08_01::Models::NetworkProfile
      NetworkWatcher = Azure::Network::Mgmt::V2019_08_01::Models::NetworkWatcher
      PrivateLinkServiceIpConfiguration = Azure::Network::Mgmt::V2019_08_01::Models::PrivateLinkServiceIpConfiguration
      PrivateEndpointConnection = Azure::Network::Mgmt::V2019_08_01::Models::PrivateEndpointConnection
      PrivateLinkServicePropertiesVisibility = Azure::Network::Mgmt::V2019_08_01::Models::PrivateLinkServicePropertiesVisibility
      PrivateLinkServicePropertiesAutoApproval = Azure::Network::Mgmt::V2019_08_01::Models::PrivateLinkServicePropertiesAutoApproval
      PrivateLinkService = Azure::Network::Mgmt::V2019_08_01::Models::PrivateLinkService
      PublicIPPrefix = Azure::Network::Mgmt::V2019_08_01::Models::PublicIPPrefix
      RouteFilterRule = Azure::Network::Mgmt::V2019_08_01::Models::RouteFilterRule
      PatchRouteFilterRule = Azure::Network::Mgmt::V2019_08_01::Models::PatchRouteFilterRule
      RouteFilter = Azure::Network::Mgmt::V2019_08_01::Models::RouteFilter
      PatchRouteFilter = Azure::Network::Mgmt::V2019_08_01::Models::PatchRouteFilter
      BgpServiceCommunity = Azure::Network::Mgmt::V2019_08_01::Models::BgpServiceCommunity
      VirtualNetworkPeering = Azure::Network::Mgmt::V2019_08_01::Models::VirtualNetworkPeering
      VirtualNetwork = Azure::Network::Mgmt::V2019_08_01::Models::VirtualNetwork
      NetworkIntentPolicy = Azure::Network::Mgmt::V2019_08_01::Models::NetworkIntentPolicy
      VirtualNetworkGatewayIPConfiguration = Azure::Network::Mgmt::V2019_08_01::Models::VirtualNetworkGatewayIPConfiguration
      VpnClientRootCertificate = Azure::Network::Mgmt::V2019_08_01::Models::VpnClientRootCertificate
      VpnClientRevokedCertificate = Azure::Network::Mgmt::V2019_08_01::Models::VpnClientRevokedCertificate
      VirtualNetworkGateway = Azure::Network::Mgmt::V2019_08_01::Models::VirtualNetworkGateway
      LocalNetworkGateway = Azure::Network::Mgmt::V2019_08_01::Models::LocalNetworkGateway
      VirtualNetworkGatewayConnection = Azure::Network::Mgmt::V2019_08_01::Models::VirtualNetworkGatewayConnection
      ConnectionSharedKey = Azure::Network::Mgmt::V2019_08_01::Models::ConnectionSharedKey
      VirtualNetworkGatewayConnectionListEntity = Azure::Network::Mgmt::V2019_08_01::Models::VirtualNetworkGatewayConnectionListEntity
      VirtualRouter = Azure::Network::Mgmt::V2019_08_01::Models::VirtualRouter
      VirtualRouterPeering = Azure::Network::Mgmt::V2019_08_01::Models::VirtualRouterPeering
      VirtualWAN = Azure::Network::Mgmt::V2019_08_01::Models::VirtualWAN
      VpnSiteLink = Azure::Network::Mgmt::V2019_08_01::Models::VpnSiteLink
      VpnSite = Azure::Network::Mgmt::V2019_08_01::Models::VpnSite
      HubVirtualNetworkConnection = Azure::Network::Mgmt::V2019_08_01::Models::HubVirtualNetworkConnection
      VirtualHub = Azure::Network::Mgmt::V2019_08_01::Models::VirtualHub
      VpnSiteLinkConnection = Azure::Network::Mgmt::V2019_08_01::Models::VpnSiteLinkConnection
      VpnConnection = Azure::Network::Mgmt::V2019_08_01::Models::VpnConnection
      VpnGateway = Azure::Network::Mgmt::V2019_08_01::Models::VpnGateway
      P2SConnectionConfiguration = Azure::Network::Mgmt::V2019_08_01::Models::P2SConnectionConfiguration
      VpnServerConfiguration = Azure::Network::Mgmt::V2019_08_01::Models::VpnServerConfiguration
      P2SVpnGateway = Azure::Network::Mgmt::V2019_08_01::Models::P2SVpnGateway
      WebApplicationFirewallPolicy = Azure::Network::Mgmt::V2019_08_01::Models::WebApplicationFirewallPolicy
      ApplicationGatewayProtocol = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayProtocol
      ProvisioningState = Azure::Network::Mgmt::V2019_08_01::Models::ProvisioningState
      IPAllocationMethod = Azure::Network::Mgmt::V2019_08_01::Models::IPAllocationMethod
      IPVersion = Azure::Network::Mgmt::V2019_08_01::Models::IPVersion
      SecurityRuleProtocol = Azure::Network::Mgmt::V2019_08_01::Models::SecurityRuleProtocol
      SecurityRuleAccess = Azure::Network::Mgmt::V2019_08_01::Models::SecurityRuleAccess
      SecurityRuleDirection = Azure::Network::Mgmt::V2019_08_01::Models::SecurityRuleDirection
      RouteNextHopType = Azure::Network::Mgmt::V2019_08_01::Models::RouteNextHopType
      PublicIPAddressSkuName = Azure::Network::Mgmt::V2019_08_01::Models::PublicIPAddressSkuName
      DdosSettingsProtectionCoverage = Azure::Network::Mgmt::V2019_08_01::Models::DdosSettingsProtectionCoverage
      TransportProtocol = Azure::Network::Mgmt::V2019_08_01::Models::TransportProtocol
      ApplicationGatewayCookieBasedAffinity = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayCookieBasedAffinity
      ApplicationGatewayBackendHealthServerHealth = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayBackendHealthServerHealth
      ApplicationGatewaySkuName = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewaySkuName
      ApplicationGatewayTier = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayTier
      ApplicationGatewaySslProtocol = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewaySslProtocol
      ApplicationGatewaySslPolicyType = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewaySslPolicyType
      ApplicationGatewaySslPolicyName = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewaySslPolicyName
      ApplicationGatewaySslCipherSuite = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewaySslCipherSuite
      ApplicationGatewayCustomErrorStatusCode = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayCustomErrorStatusCode
      ApplicationGatewayRequestRoutingRuleType = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayRequestRoutingRuleType
      ApplicationGatewayRedirectType = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayRedirectType
      ApplicationGatewayOperationalState = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayOperationalState
      ApplicationGatewayFirewallMode = Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayFirewallMode
      ResourceIdentityType = Azure::Network::Mgmt::V2019_08_01::Models::ResourceIdentityType
      AzureFirewallRCActionType = Azure::Network::Mgmt::V2019_08_01::Models::AzureFirewallRCActionType
      AzureFirewallApplicationRuleProtocolType = Azure::Network::Mgmt::V2019_08_01::Models::AzureFirewallApplicationRuleProtocolType
      AzureFirewallNatRCActionType = Azure::Network::Mgmt::V2019_08_01::Models::AzureFirewallNatRCActionType
      AzureFirewallNetworkRuleProtocol = Azure::Network::Mgmt::V2019_08_01::Models::AzureFirewallNetworkRuleProtocol
      AzureFirewallThreatIntelMode = Azure::Network::Mgmt::V2019_08_01::Models::AzureFirewallThreatIntelMode
      AzureFirewallSkuName = Azure::Network::Mgmt::V2019_08_01::Models::AzureFirewallSkuName
      AzureFirewallSkuTier = Azure::Network::Mgmt::V2019_08_01::Models::AzureFirewallSkuTier
      DdosCustomPolicyProtocol = Azure::Network::Mgmt::V2019_08_01::Models::DdosCustomPolicyProtocol
      DdosCustomPolicyTriggerSensitivityOverride = Azure::Network::Mgmt::V2019_08_01::Models::DdosCustomPolicyTriggerSensitivityOverride
      AuthorizationUseStatus = Azure::Network::Mgmt::V2019_08_01::Models::AuthorizationUseStatus
      ExpressRouteCircuitPeeringAdvertisedPublicPrefixState = Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCircuitPeeringAdvertisedPublicPrefixState
      ExpressRouteCircuitPeeringState = Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCircuitPeeringState
      ExpressRoutePeeringType = Azure::Network::Mgmt::V2019_08_01::Models::ExpressRoutePeeringType
      ExpressRoutePeeringState = Azure::Network::Mgmt::V2019_08_01::Models::ExpressRoutePeeringState
      CircuitConnectionStatus = Azure::Network::Mgmt::V2019_08_01::Models::CircuitConnectionStatus
      ExpressRouteCircuitSkuTier = Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCircuitSkuTier
      ExpressRouteCircuitSkuFamily = Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCircuitSkuFamily
      ServiceProviderProvisioningState = Azure::Network::Mgmt::V2019_08_01::Models::ServiceProviderProvisioningState
      ExpressRouteLinkMacSecCipher = Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteLinkMacSecCipher
      ExpressRouteLinkConnectorType = Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteLinkConnectorType
      ExpressRouteLinkAdminState = Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteLinkAdminState
      ExpressRoutePortsEncapsulation = Azure::Network::Mgmt::V2019_08_01::Models::ExpressRoutePortsEncapsulation
      FirewallPolicyNatRuleActionType = Azure::Network::Mgmt::V2019_08_01::Models::FirewallPolicyNatRuleActionType
      FirewallPolicyFilterRuleActionType = Azure::Network::Mgmt::V2019_08_01::Models::FirewallPolicyFilterRuleActionType
      FirewallPolicyRuleConditionApplicationProtocolType = Azure::Network::Mgmt::V2019_08_01::Models::FirewallPolicyRuleConditionApplicationProtocolType
      FirewallPolicyRuleConditionNetworkProtocol = Azure::Network::Mgmt::V2019_08_01::Models::FirewallPolicyRuleConditionNetworkProtocol
      LoadBalancerSkuName = Azure::Network::Mgmt::V2019_08_01::Models::LoadBalancerSkuName
      LoadDistribution = Azure::Network::Mgmt::V2019_08_01::Models::LoadDistribution
      ProbeProtocol = Azure::Network::Mgmt::V2019_08_01::Models::ProbeProtocol
      LoadBalancerOutboundRuleProtocol = Azure::Network::Mgmt::V2019_08_01::Models::LoadBalancerOutboundRuleProtocol
      NatGatewaySkuName = Azure::Network::Mgmt::V2019_08_01::Models::NatGatewaySkuName
      NetworkOperationStatus = Azure::Network::Mgmt::V2019_08_01::Models::NetworkOperationStatus
      Access = Azure::Network::Mgmt::V2019_08_01::Models::Access
      AuthenticationMethod = Azure::Network::Mgmt::V2019_08_01::Models::AuthenticationMethod
      EffectiveSecurityRuleProtocol = Azure::Network::Mgmt::V2019_08_01::Models::EffectiveSecurityRuleProtocol
      EffectiveRouteSource = Azure::Network::Mgmt::V2019_08_01::Models::EffectiveRouteSource
      EffectiveRouteState = Azure::Network::Mgmt::V2019_08_01::Models::EffectiveRouteState
      AssociationType = Azure::Network::Mgmt::V2019_08_01::Models::AssociationType
      Direction = Azure::Network::Mgmt::V2019_08_01::Models::Direction
      IpFlowProtocol = Azure::Network::Mgmt::V2019_08_01::Models::IpFlowProtocol
      NextHopType = Azure::Network::Mgmt::V2019_08_01::Models::NextHopType
      PcProtocol = Azure::Network::Mgmt::V2019_08_01::Models::PcProtocol
      PcStatus = Azure::Network::Mgmt::V2019_08_01::Models::PcStatus
      PcError = Azure::Network::Mgmt::V2019_08_01::Models::PcError
      FlowLogFormatType = Azure::Network::Mgmt::V2019_08_01::Models::FlowLogFormatType
      Protocol = Azure::Network::Mgmt::V2019_08_01::Models::Protocol
      HTTPMethod = Azure::Network::Mgmt::V2019_08_01::Models::HTTPMethod
      Origin = Azure::Network::Mgmt::V2019_08_01::Models::Origin
      Severity = Azure::Network::Mgmt::V2019_08_01::Models::Severity
      IssueType = Azure::Network::Mgmt::V2019_08_01::Models::IssueType
      ConnectionStatus = Azure::Network::Mgmt::V2019_08_01::Models::ConnectionStatus
      VerbosityLevel = Azure::Network::Mgmt::V2019_08_01::Models::VerbosityLevel
      PublicIPPrefixSkuName = Azure::Network::Mgmt::V2019_08_01::Models::PublicIPPrefixSkuName
      VirtualNetworkPeeringState = Azure::Network::Mgmt::V2019_08_01::Models::VirtualNetworkPeeringState
      VirtualNetworkGatewayType = Azure::Network::Mgmt::V2019_08_01::Models::VirtualNetworkGatewayType
      VpnType = Azure::Network::Mgmt::V2019_08_01::Models::VpnType
      VpnGatewayGeneration = Azure::Network::Mgmt::V2019_08_01::Models::VpnGatewayGeneration
      VirtualNetworkGatewaySkuName = Azure::Network::Mgmt::V2019_08_01::Models::VirtualNetworkGatewaySkuName
      VirtualNetworkGatewaySkuTier = Azure::Network::Mgmt::V2019_08_01::Models::VirtualNetworkGatewaySkuTier
      VpnClientProtocol = Azure::Network::Mgmt::V2019_08_01::Models::VpnClientProtocol
      IpsecEncryption = Azure::Network::Mgmt::V2019_08_01::Models::IpsecEncryption
      IpsecIntegrity = Azure::Network::Mgmt::V2019_08_01::Models::IpsecIntegrity
      IkeEncryption = Azure::Network::Mgmt::V2019_08_01::Models::IkeEncryption
      IkeIntegrity = Azure::Network::Mgmt::V2019_08_01::Models::IkeIntegrity
      DhGroup = Azure::Network::Mgmt::V2019_08_01::Models::DhGroup
      PfsGroup = Azure::Network::Mgmt::V2019_08_01::Models::PfsGroup
      BgpPeerState = Azure::Network::Mgmt::V2019_08_01::Models::BgpPeerState
      ProcessorArchitecture = Azure::Network::Mgmt::V2019_08_01::Models::ProcessorArchitecture
      VirtualNetworkGatewayConnectionStatus = Azure::Network::Mgmt::V2019_08_01::Models::VirtualNetworkGatewayConnectionStatus
      VirtualNetworkGatewayConnectionType = Azure::Network::Mgmt::V2019_08_01::Models::VirtualNetworkGatewayConnectionType
      VirtualNetworkGatewayConnectionProtocol = Azure::Network::Mgmt::V2019_08_01::Models::VirtualNetworkGatewayConnectionProtocol
      OfficeTrafficCategory = Azure::Network::Mgmt::V2019_08_01::Models::OfficeTrafficCategory
      VpnConnectionStatus = Azure::Network::Mgmt::V2019_08_01::Models::VpnConnectionStatus
      VirtualWanSecurityProviderType = Azure::Network::Mgmt::V2019_08_01::Models::VirtualWanSecurityProviderType
      TunnelConnectionStatus = Azure::Network::Mgmt::V2019_08_01::Models::TunnelConnectionStatus
      HubVirtualNetworkConnectionStatus = Azure::Network::Mgmt::V2019_08_01::Models::HubVirtualNetworkConnectionStatus
      VpnGatewayTunnelingProtocol = Azure::Network::Mgmt::V2019_08_01::Models::VpnGatewayTunnelingProtocol
      VpnAuthenticationType = Azure::Network::Mgmt::V2019_08_01::Models::VpnAuthenticationType
      WebApplicationFirewallEnabledState = Azure::Network::Mgmt::V2019_08_01::Models::WebApplicationFirewallEnabledState
      WebApplicationFirewallMode = Azure::Network::Mgmt::V2019_08_01::Models::WebApplicationFirewallMode
      WebApplicationFirewallRuleType = Azure::Network::Mgmt::V2019_08_01::Models::WebApplicationFirewallRuleType
      WebApplicationFirewallMatchVariable = Azure::Network::Mgmt::V2019_08_01::Models::WebApplicationFirewallMatchVariable
      WebApplicationFirewallOperator = Azure::Network::Mgmt::V2019_08_01::Models::WebApplicationFirewallOperator
      WebApplicationFirewallTransform = Azure::Network::Mgmt::V2019_08_01::Models::WebApplicationFirewallTransform
      WebApplicationFirewallAction = Azure::Network::Mgmt::V2019_08_01::Models::WebApplicationFirewallAction
      WebApplicationFirewallPolicyResourceState = Azure::Network::Mgmt::V2019_08_01::Models::WebApplicationFirewallPolicyResourceState
      OwaspCrsExclusionEntryMatchVariable = Azure::Network::Mgmt::V2019_08_01::Models::OwaspCrsExclusionEntryMatchVariable
      OwaspCrsExclusionEntrySelectorMatchOperator = Azure::Network::Mgmt::V2019_08_01::Models::OwaspCrsExclusionEntrySelectorMatchOperator
      ManagedRuleEnabledState = Azure::Network::Mgmt::V2019_08_01::Models::ManagedRuleEnabledState
    end

    #
    # NetworkManagementClass
    #
    class NetworkManagementClass
      attr_reader :connection_monitors, :p2s_vpn_server_configurations, :application_gateways, :application_security_groups, :available_delegations, :available_resource_group_delegations, :available_service_aliases, :azure_firewalls, :azure_firewall_fqdn_tags, :bastion_hosts, :ddos_custom_policies, :ddos_protection_plans, :available_endpoint_services, :express_route_circuit_authorizations, :express_route_circuit_peerings, :express_route_circuit_connections, :peer_express_route_circuit_connections, :express_route_circuits, :express_route_service_providers, :express_route_cross_connections, :express_route_cross_connection_peerings, :express_route_gateways, :express_route_connections, :express_route_ports_locations, :express_route_ports, :express_route_links, :firewall_policies, :firewall_policy_rule_groups, :load_balancers, :load_balancer_backend_address_pools, :load_balancer_frontend_ipconfigurations, :inbound_nat_rules, :load_balancer_load_balancing_rules, :load_balancer_outbound_rules, :load_balancer_network_interfaces, :load_balancer_probes, :nat_gateways, :network_interfaces, :network_interface_ipconfigurations, :network_interface_load_balancers, :network_interface_tap_configurations, :network_profiles, :network_security_groups, :security_rules, :default_security_rules, :network_watchers, :packet_captures, :operations, :private_endpoints, :available_private_endpoint_types, :private_link_services, :public_ipaddresses, :public_ipprefixes, :route_filters, :route_filter_rules, :route_tables, :routes, :bgp_service_communities, :service_endpoint_policies, :service_endpoint_policy_definitions, :service_tags, :usages, :virtual_networks, :subnets, :resource_navigation_links, :service_association_links, :virtual_network_peerings, :virtual_network_gateways, :virtual_network_gateway_connections, :local_network_gateways, :virtual_network_taps, :virtual_routers, :virtual_router_peerings, :virtual_wans, :vpn_sites, :vpn_site_links, :vpn_sites_configuration, :vpn_server_configurations, :virtual_hubs, :hub_virtual_network_connections, :vpn_gateways, :vpn_connections, :vpn_site_link_connections, :vpn_link_connections, :p2s_vpn_gateways, :vpn_server_configurations_associated_with_virtual_wan, :web_application_firewall_policies, :configurable, :base_url, :options, :model_classes

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

        @client_0 = Azure::Network::Mgmt::V2017_03_30::NetworkManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)

        @client_1 = Azure::Network::Mgmt::V2019_06_01::NetworkManagementClient.new(configurable.credentials, base_url, options)
        if(@client_1.respond_to?(:subscription_id))
          @client_1.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_1)
        @connection_monitors = @client_1.connection_monitors
        @p2s_vpn_server_configurations = @client_1.p2s_vpn_server_configurations

        @client_2 = Azure::Network::Mgmt::V2019_08_01::NetworkManagementClient.new(configurable.credentials, base_url, options)
        if(@client_2.respond_to?(:subscription_id))
          @client_2.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_2)
        @application_gateways = @client_2.application_gateways
        @application_security_groups = @client_2.application_security_groups
        @available_delegations = @client_2.available_delegations
        @available_resource_group_delegations = @client_2.available_resource_group_delegations
        @available_service_aliases = @client_2.available_service_aliases
        @azure_firewalls = @client_2.azure_firewalls
        @azure_firewall_fqdn_tags = @client_2.azure_firewall_fqdn_tags
        @bastion_hosts = @client_2.bastion_hosts
        @ddos_custom_policies = @client_2.ddos_custom_policies
        @ddos_protection_plans = @client_2.ddos_protection_plans
        @available_endpoint_services = @client_2.available_endpoint_services
        @express_route_circuit_authorizations = @client_2.express_route_circuit_authorizations
        @express_route_circuit_peerings = @client_2.express_route_circuit_peerings
        @express_route_circuit_connections = @client_2.express_route_circuit_connections
        @peer_express_route_circuit_connections = @client_2.peer_express_route_circuit_connections
        @express_route_circuits = @client_2.express_route_circuits
        @express_route_service_providers = @client_2.express_route_service_providers
        @express_route_cross_connections = @client_2.express_route_cross_connections
        @express_route_cross_connection_peerings = @client_2.express_route_cross_connection_peerings
        @express_route_gateways = @client_2.express_route_gateways
        @express_route_connections = @client_2.express_route_connections
        @express_route_ports_locations = @client_2.express_route_ports_locations
        @express_route_ports = @client_2.express_route_ports
        @express_route_links = @client_2.express_route_links
        @firewall_policies = @client_2.firewall_policies
        @firewall_policy_rule_groups = @client_2.firewall_policy_rule_groups
        @load_balancers = @client_2.load_balancers
        @load_balancer_backend_address_pools = @client_2.load_balancer_backend_address_pools
        @load_balancer_frontend_ipconfigurations = @client_2.load_balancer_frontend_ipconfigurations
        @inbound_nat_rules = @client_2.inbound_nat_rules
        @load_balancer_load_balancing_rules = @client_2.load_balancer_load_balancing_rules
        @load_balancer_outbound_rules = @client_2.load_balancer_outbound_rules
        @load_balancer_network_interfaces = @client_2.load_balancer_network_interfaces
        @load_balancer_probes = @client_2.load_balancer_probes
        @nat_gateways = @client_2.nat_gateways
        @network_interfaces = @client_2.network_interfaces
        @network_interface_ipconfigurations = @client_2.network_interface_ipconfigurations
        @network_interface_load_balancers = @client_2.network_interface_load_balancers
        @network_interface_tap_configurations = @client_2.network_interface_tap_configurations
        @network_profiles = @client_2.network_profiles
        @network_security_groups = @client_2.network_security_groups
        @security_rules = @client_2.security_rules
        @default_security_rules = @client_2.default_security_rules
        @network_watchers = @client_2.network_watchers
        @packet_captures = @client_2.packet_captures
        @operations = @client_2.operations
        @private_endpoints = @client_2.private_endpoints
        @available_private_endpoint_types = @client_2.available_private_endpoint_types
        @private_link_services = @client_2.private_link_services
        @public_ipaddresses = @client_2.public_ipaddresses
        @public_ipprefixes = @client_2.public_ipprefixes
        @route_filters = @client_2.route_filters
        @route_filter_rules = @client_2.route_filter_rules
        @route_tables = @client_2.route_tables
        @routes = @client_2.routes
        @bgp_service_communities = @client_2.bgp_service_communities
        @service_endpoint_policies = @client_2.service_endpoint_policies
        @service_endpoint_policy_definitions = @client_2.service_endpoint_policy_definitions
        @service_tags = @client_2.service_tags
        @usages = @client_2.usages
        @virtual_networks = @client_2.virtual_networks
        @subnets = @client_2.subnets
        @resource_navigation_links = @client_2.resource_navigation_links
        @service_association_links = @client_2.service_association_links
        @virtual_network_peerings = @client_2.virtual_network_peerings
        @virtual_network_gateways = @client_2.virtual_network_gateways
        @virtual_network_gateway_connections = @client_2.virtual_network_gateway_connections
        @local_network_gateways = @client_2.local_network_gateways
        @virtual_network_taps = @client_2.virtual_network_taps
        @virtual_routers = @client_2.virtual_routers
        @virtual_router_peerings = @client_2.virtual_router_peerings
        @virtual_wans = @client_2.virtual_wans
        @vpn_sites = @client_2.vpn_sites
        @vpn_site_links = @client_2.vpn_site_links
        @vpn_sites_configuration = @client_2.vpn_sites_configuration
        @vpn_server_configurations = @client_2.vpn_server_configurations
        @virtual_hubs = @client_2.virtual_hubs
        @hub_virtual_network_connections = @client_2.hub_virtual_network_connections
        @vpn_gateways = @client_2.vpn_gateways
        @vpn_connections = @client_2.vpn_connections
        @vpn_site_link_connections = @client_2.vpn_site_link_connections
        @vpn_link_connections = @client_2.vpn_link_connections
        @p2s_vpn_gateways = @client_2.p2s_vpn_gateways
        @vpn_server_configurations_associated_with_virtual_wan = @client_2.vpn_server_configurations_associated_with_virtual_wan
        @web_application_firewall_policies = @client_2.web_application_firewall_policies

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/Network/Mgmt'
        client.add_user_agent_information(profile_information)
      end

      def method_missing(method, *args)
        if @client_2.respond_to?method
          @client_2.send(method, *args)
        elsif @client_1.respond_to?method
          @client_1.send(method, *args)
        elsif @client_0.respond_to?method
          @client_0.send(method, *args)
        else
          super
        end
      end

    end

    class ModelClasses
      def list_p2_svpn_server_configurations_result
        Azure::Network::Mgmt::V2019_06_01::Models::ListP2SVpnServerConfigurationsResult
      end
      def connection_monitor_source
        Azure::Network::Mgmt::V2019_06_01::Models::ConnectionMonitorSource
      end
      def connection_monitor_destination
        Azure::Network::Mgmt::V2019_06_01::Models::ConnectionMonitorDestination
      end
      def connection_monitor_parameters
        Azure::Network::Mgmt::V2019_06_01::Models::ConnectionMonitorParameters
      end
      def connection_monitor
        Azure::Network::Mgmt::V2019_06_01::Models::ConnectionMonitor
      end
      def connection_state_snapshot
        Azure::Network::Mgmt::V2019_06_01::Models::ConnectionStateSnapshot
      end
      def connection_monitor_result
        Azure::Network::Mgmt::V2019_06_01::Models::ConnectionMonitorResult
      end
      def connection_monitor_list_result
        Azure::Network::Mgmt::V2019_06_01::Models::ConnectionMonitorListResult
      end
      def connection_monitor_query_result
        Azure::Network::Mgmt::V2019_06_01::Models::ConnectionMonitorQueryResult
      end
      def p2_svpn_server_config_vpn_client_root_certificate
        Azure::Network::Mgmt::V2019_06_01::Models::P2SVpnServerConfigVpnClientRootCertificate
      end
      def p2_svpn_server_config_vpn_client_revoked_certificate
        Azure::Network::Mgmt::V2019_06_01::Models::P2SVpnServerConfigVpnClientRevokedCertificate
      end
      def p2_svpn_server_config_radius_server_root_certificate
        Azure::Network::Mgmt::V2019_06_01::Models::P2SVpnServerConfigRadiusServerRootCertificate
      end
      def p2_svpn_server_config_radius_client_root_certificate
        Azure::Network::Mgmt::V2019_06_01::Models::P2SVpnServerConfigRadiusClientRootCertificate
      end
      def p2_svpn_server_configuration
        Azure::Network::Mgmt::V2019_06_01::Models::P2SVpnServerConfiguration
      end
      def connection_state
        Azure::Network::Mgmt::V2019_06_01::Models::ConnectionState
      end
      def evaluation_state
        Azure::Network::Mgmt::V2019_06_01::Models::EvaluationState
      end
      def connection_monitor_source_status
        Azure::Network::Mgmt::V2019_06_01::Models::ConnectionMonitorSourceStatus
      end
      def azure_async_operation_result
        Azure::Network::Mgmt::V2019_08_01::Models::AzureAsyncOperationResult
      end
      def network_interface_tap_configuration_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::NetworkInterfaceTapConfigurationListResult
      end
      def sub_resource
        Azure::Network::Mgmt::V2019_08_01::Models::SubResource
      end
      def network_interface_ipconfiguration_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::NetworkInterfaceIPConfigurationListResult
      end
      def express_route_ports_location_bandwidths
        Azure::Network::Mgmt::V2019_08_01::Models::ExpressRoutePortsLocationBandwidths
      end
      def list_vpn_gateways_result
        Azure::Network::Mgmt::V2019_08_01::Models::ListVpnGatewaysResult
      end
      def vpn_server_configurations_response
        Azure::Network::Mgmt::V2019_08_01::Models::VpnServerConfigurationsResponse
      end
      def private_link_service_connection_state
        Azure::Network::Mgmt::V2019_08_01::Models::PrivateLinkServiceConnectionState
      end
      def express_route_ports_location_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::ExpressRoutePortsLocationListResult
      end
      def virtual_hub_route_table
        Azure::Network::Mgmt::V2019_08_01::Models::VirtualHubRouteTable
      end
      def express_route_link_mac_sec_config
        Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteLinkMacSecConfig
      end
      def virtual_hub_route
        Azure::Network::Mgmt::V2019_08_01::Models::VirtualHubRoute
      end
      def virtual_network_bgp_communities
        Azure::Network::Mgmt::V2019_08_01::Models::VirtualNetworkBgpCommunities
      end
      def get_vpn_sites_configuration_request
        Azure::Network::Mgmt::V2019_08_01::Models::GetVpnSitesConfigurationRequest
      end
      def express_route_link_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteLinkListResult
      end
      def service_endpoint_properties_format
        Azure::Network::Mgmt::V2019_08_01::Models::ServiceEndpointPropertiesFormat
      end
      def dhcp_options
        Azure::Network::Mgmt::V2019_08_01::Models::DhcpOptions
      end
      def list_hub_virtual_network_connections_result
        Azure::Network::Mgmt::V2019_08_01::Models::ListHubVirtualNetworkConnectionsResult
      end
      def express_route_port_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::ExpressRoutePortListResult
      end
      def public_ipaddress_dns_settings
        Azure::Network::Mgmt::V2019_08_01::Models::PublicIPAddressDnsSettings
      end
      def virtual_network_peering_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::VirtualNetworkPeeringListResult
      end
      def ip_tag
        Azure::Network::Mgmt::V2019_08_01::Models::IpTag
      end
      def firewall_policy_rule
        Azure::Network::Mgmt::V2019_08_01::Models::FirewallPolicyRule
      end
      def vpn_link_bgp_settings
        Azure::Network::Mgmt::V2019_08_01::Models::VpnLinkBgpSettings
      end
      def service_association_links_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::ServiceAssociationLinksListResult
      end
      def device_properties
        Azure::Network::Mgmt::V2019_08_01::Models::DeviceProperties
      end
      def firewall_policy_nat_rule_action
        Azure::Network::Mgmt::V2019_08_01::Models::FirewallPolicyNatRuleAction
      end
      def virtual_wan_security_provider
        Azure::Network::Mgmt::V2019_08_01::Models::VirtualWanSecurityProvider
      end
      def firewall_policy_rule_condition
        Azure::Network::Mgmt::V2019_08_01::Models::FirewallPolicyRuleCondition
      end
      def virtual_router_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::VirtualRouterListResult
      end
      def resource_navigation_links_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::ResourceNavigationLinksListResult
      end
      def vpn_server_config_vpn_client_root_certificate
        Azure::Network::Mgmt::V2019_08_01::Models::VpnServerConfigVpnClientRootCertificate
      end
      def firewall_policy_filter_rule_action
        Azure::Network::Mgmt::V2019_08_01::Models::FirewallPolicyFilterRuleAction
      end
      def network_interface_ipconfiguration_private_link_connection_properties
        Azure::Network::Mgmt::V2019_08_01::Models::NetworkInterfaceIPConfigurationPrivateLinkConnectionProperties
      end
      def subnet_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::SubnetListResult
      end
      def application_gateway_backend_address
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayBackendAddress
      end
      def firewall_policy_rule_condition_application_protocol
        Azure::Network::Mgmt::V2019_08_01::Models::FirewallPolicyRuleConditionApplicationProtocol
      end
      def application_gateway_connection_draining
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayConnectionDraining
      end
      def virtual_wan_vpn_profile_parameters
        Azure::Network::Mgmt::V2019_08_01::Models::VirtualWanVpnProfileParameters
      end
      def application_gateway_backend_health_server
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayBackendHealthServer
      end
      def address_space
        Azure::Network::Mgmt::V2019_08_01::Models::AddressSpace
      end
      def application_gateway_backend_health_on_demand
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayBackendHealthOnDemand
      end
      def firewall_policy_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::FirewallPolicyListResult
      end
      def application_gateway_backend_health
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayBackendHealth
      end
      def firewall_policy_rule_group_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::FirewallPolicyRuleGroupListResult
      end
      def application_gateway_ssl_policy
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewaySslPolicy
      end
      def load_balancer_sku
        Azure::Network::Mgmt::V2019_08_01::Models::LoadBalancerSku
      end
      def vpn_device_script_parameters
        Azure::Network::Mgmt::V2019_08_01::Models::VpnDeviceScriptParameters
      end
      def usages_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::UsagesListResult
      end
      def vpn_server_config_radius_server_root_certificate
        Azure::Network::Mgmt::V2019_08_01::Models::VpnServerConfigRadiusServerRootCertificate
      end
      def usage
        Azure::Network::Mgmt::V2019_08_01::Models::Usage
      end
      def local_network_gateway_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::LocalNetworkGatewayListResult
      end
      def usage_name
        Azure::Network::Mgmt::V2019_08_01::Models::UsageName
      end
      def vpn_client_ipsec_parameters
        Azure::Network::Mgmt::V2019_08_01::Models::VpnClientIPsecParameters
      end
      def service_tags_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::ServiceTagsListResult
      end
      def connection_reset_shared_key
        Azure::Network::Mgmt::V2019_08_01::Models::ConnectionResetSharedKey
      end
      def service_tag_information
        Azure::Network::Mgmt::V2019_08_01::Models::ServiceTagInformation
      end
      def application_gateway_rewrite_rule_condition
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayRewriteRuleCondition
      end
      def load_balancer_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::LoadBalancerListResult
      end
      def application_gateway_rewrite_rule_action_set
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayRewriteRuleActionSet
      end
      def inbound_nat_rule_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::InboundNatRuleListResult
      end
      def vpn_server_config_radius_client_root_certificate
        Azure::Network::Mgmt::V2019_08_01::Models::VpnServerConfigRadiusClientRootCertificate
      end
      def load_balancer_backend_address_pool_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::LoadBalancerBackendAddressPoolListResult
      end
      def aad_authentication_parameters
        Azure::Network::Mgmt::V2019_08_01::Models::AadAuthenticationParameters
      end
      def load_balancer_frontend_ipconfiguration_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::LoadBalancerFrontendIPConfigurationListResult
      end
      def application_gateway_firewall_exclusion
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayFirewallExclusion
      end
      def load_balancer_load_balancing_rule_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::LoadBalancerLoadBalancingRuleListResult
      end
      def application_gateway_autoscale_configuration
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayAutoscaleConfiguration
      end
      def load_balancer_outbound_rule_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::LoadBalancerOutboundRuleListResult
      end
      def managed_service_identity
        Azure::Network::Mgmt::V2019_08_01::Models::ManagedServiceIdentity
      end
      def load_balancer_probe_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::LoadBalancerProbeListResult
      end
      def application_gateway_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayListResult
      end
      def network_interface_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::NetworkInterfaceListResult
      end
      def application_gateway_firewall_rule_group
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayFirewallRuleGroup
      end
      def nat_gateway_sku
        Azure::Network::Mgmt::V2019_08_01::Models::NatGatewaySku
      end
      def application_gateway_available_waf_rule_sets_result
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayAvailableWafRuleSetsResult
      end
      def service_tag_information_properties_format
        Azure::Network::Mgmt::V2019_08_01::Models::ServiceTagInformationPropertiesFormat
      end
      def virtual_network_gateway_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::VirtualNetworkGatewayListResult
      end
      def nat_gateway_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::NatGatewayListResult
      end
      def resource
        Azure::Network::Mgmt::V2019_08_01::Models::Resource
      end
      def application_gateway_probe_health_response_match
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayProbeHealthResponseMatch
      end
      def error
        Azure::Network::Mgmt::V2019_08_01::Models::Error
      end
      def application_gateway_on_demand_probe
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayOnDemandProbe
      end
      def application_security_group_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationSecurityGroupListResult
      end
      def service_endpoint_policy_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::ServiceEndpointPolicyListResult
      end
      def available_delegations_result
        Azure::Network::Mgmt::V2019_08_01::Models::AvailableDelegationsResult
      end
      def network_interface_load_balancer_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::NetworkInterfaceLoadBalancerListResult
      end
      def available_service_aliases_result
        Azure::Network::Mgmt::V2019_08_01::Models::AvailableServiceAliasesResult
      end
      def effective_network_security_group_association
        Azure::Network::Mgmt::V2019_08_01::Models::EffectiveNetworkSecurityGroupAssociation
      end
      def azure_firewall_public_ipaddress
        Azure::Network::Mgmt::V2019_08_01::Models::AzureFirewallPublicIPAddress
      end
      def effective_network_security_rule
        Azure::Network::Mgmt::V2019_08_01::Models::EffectiveNetworkSecurityRule
      end
      def azure_firewall_rcaction
        Azure::Network::Mgmt::V2019_08_01::Models::AzureFirewallRCAction
      end
      def effective_network_security_group
        Azure::Network::Mgmt::V2019_08_01::Models::EffectiveNetworkSecurityGroup
      end
      def azure_firewall_application_rule
        Azure::Network::Mgmt::V2019_08_01::Models::AzureFirewallApplicationRule
      end
      def effective_network_security_group_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::EffectiveNetworkSecurityGroupListResult
      end
      def azure_firewall_nat_rcaction
        Azure::Network::Mgmt::V2019_08_01::Models::AzureFirewallNatRCAction
      end
      def effective_route
        Azure::Network::Mgmt::V2019_08_01::Models::EffectiveRoute
      end
      def gateway_route
        Azure::Network::Mgmt::V2019_08_01::Models::GatewayRoute
      end
      def effective_route_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::EffectiveRouteListResult
      end
      def bgp_peer_status
        Azure::Network::Mgmt::V2019_08_01::Models::BgpPeerStatus
      end
      def service_endpoint_policy_definition_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::ServiceEndpointPolicyDefinitionListResult
      end
      def bgp_settings
        Azure::Network::Mgmt::V2019_08_01::Models::BgpSettings
      end
      def bgp_service_community_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::BgpServiceCommunityListResult
      end
      def vpn_client_configuration
        Azure::Network::Mgmt::V2019_08_01::Models::VpnClientConfiguration
      end
      def container_network_interface_ip_configuration
        Azure::Network::Mgmt::V2019_08_01::Models::ContainerNetworkInterfaceIpConfiguration
      end
      def ipsec_policy
        Azure::Network::Mgmt::V2019_08_01::Models::IpsecPolicy
      end
      def p2_svpn_connection_health_request
        Azure::Network::Mgmt::V2019_08_01::Models::P2SVpnConnectionHealthRequest
      end
      def bastion_host_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::BastionHostListResult
      end
      def bgpcommunity
        Azure::Network::Mgmt::V2019_08_01::Models::BGPCommunity
      end
      def protocol_custom_settings_format
        Azure::Network::Mgmt::V2019_08_01::Models::ProtocolCustomSettingsFormat
      end
      def network_profile_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::NetworkProfileListResult
      end
      def security_rule_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::SecurityRuleListResult
      end
      def ddos_protection_plan
        Azure::Network::Mgmt::V2019_08_01::Models::DdosProtectionPlan
      end
      def network_security_group_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::NetworkSecurityGroupListResult
      end
      def virtual_network_gateway_sku
        Azure::Network::Mgmt::V2019_08_01::Models::VirtualNetworkGatewaySku
      end
      def error_response
        Azure::Network::Mgmt::V2019_08_01::Models::ErrorResponse
      end
      def p2_svpn_profile_parameters
        Azure::Network::Mgmt::V2019_08_01::Models::P2SVpnProfileParameters
      end
      def web_application_firewall_policy_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::WebApplicationFirewallPolicyListResult
      end
      def express_route_circuit_peering_config
        Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCircuitPeeringConfig
      end
      def network_watcher_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::NetworkWatcherListResult
      end
      def express_route_circuit_stats
        Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCircuitStats
      end
      def topology_parameters
        Azure::Network::Mgmt::V2019_08_01::Models::TopologyParameters
      end
      def unprepare_network_policies_request
        Azure::Network::Mgmt::V2019_08_01::Models::UnprepareNetworkPoliciesRequest
      end
      def topology_association
        Azure::Network::Mgmt::V2019_08_01::Models::TopologyAssociation
      end
      def network_intent_policy_configuration
        Azure::Network::Mgmt::V2019_08_01::Models::NetworkIntentPolicyConfiguration
      end
      def topology_resource
        Azure::Network::Mgmt::V2019_08_01::Models::TopologyResource
      end
      def express_route_circuit_connection_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCircuitConnectionListResult
      end
      def topology
        Azure::Network::Mgmt::V2019_08_01::Models::Topology
      end
      def express_route_circuit_sku
        Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCircuitSku
      end
      def verification_ipflow_parameters
        Azure::Network::Mgmt::V2019_08_01::Models::VerificationIPFlowParameters
      end
      def vpn_profile_response
        Azure::Network::Mgmt::V2019_08_01::Models::VpnProfileResponse
      end
      def verification_ipflow_result
        Azure::Network::Mgmt::V2019_08_01::Models::VerificationIPFlowResult
      end
      def express_route_circuits_arp_table_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCircuitsArpTableListResult
      end
      def next_hop_parameters
        Azure::Network::Mgmt::V2019_08_01::Models::NextHopParameters
      end
      def express_route_circuits_routes_table_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCircuitsRoutesTableListResult
      end
      def next_hop_result
        Azure::Network::Mgmt::V2019_08_01::Models::NextHopResult
      end
      def express_route_circuits_routes_table_summary_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCircuitsRoutesTableSummaryListResult
      end
      def security_group_view_parameters
        Azure::Network::Mgmt::V2019_08_01::Models::SecurityGroupViewParameters
      end
      def express_route_service_provider_bandwidths_offered
        Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteServiceProviderBandwidthsOffered
      end
      def network_interface_association
        Azure::Network::Mgmt::V2019_08_01::Models::NetworkInterfaceAssociation
      end
      def express_route_service_provider_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteServiceProviderListResult
      end
      def subnet_association
        Azure::Network::Mgmt::V2019_08_01::Models::SubnetAssociation
      end
      def express_route_cross_connections_routes_table_summary_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCrossConnectionsRoutesTableSummaryListResult
      end
      def security_rule_associations
        Azure::Network::Mgmt::V2019_08_01::Models::SecurityRuleAssociations
      end
      def virtual_network_usage
        Azure::Network::Mgmt::V2019_08_01::Models::VirtualNetworkUsage
      end
      def security_group_network_interface
        Azure::Network::Mgmt::V2019_08_01::Models::SecurityGroupNetworkInterface
      end
      def express_route_cross_connection_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCrossConnectionListResult
      end
      def security_group_view_result
        Azure::Network::Mgmt::V2019_08_01::Models::SecurityGroupViewResult
      end
      def virtual_hub_id
        Azure::Network::Mgmt::V2019_08_01::Models::VirtualHubId
      end
      def packet_capture_storage_location
        Azure::Network::Mgmt::V2019_08_01::Models::PacketCaptureStorageLocation
      end
      def express_route_gateway_properties_auto_scale_configuration_bounds
        Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteGatewayPropertiesAutoScaleConfigurationBounds
      end
      def packet_capture_filter
        Azure::Network::Mgmt::V2019_08_01::Models::PacketCaptureFilter
      end
      def ipaddress_availability_result
        Azure::Network::Mgmt::V2019_08_01::Models::IPAddressAvailabilityResult
      end
      def packet_capture_parameters
        Azure::Network::Mgmt::V2019_08_01::Models::PacketCaptureParameters
      end
      def express_route_gateway_list
        Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteGatewayList
      end
      def packet_capture
        Azure::Network::Mgmt::V2019_08_01::Models::PacketCapture
      end
      def list_virtual_hubs_result
        Azure::Network::Mgmt::V2019_08_01::Models::ListVirtualHubsResult
      end
      def packet_capture_result
        Azure::Network::Mgmt::V2019_08_01::Models::PacketCaptureResult
      end
      def network_interface_dns_settings
        Azure::Network::Mgmt::V2019_08_01::Models::NetworkInterfaceDnsSettings
      end
      def packet_capture_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::PacketCaptureListResult
      end
      def list_vpn_site_links_result
        Azure::Network::Mgmt::V2019_08_01::Models::ListVpnSiteLinksResult
      end
      def packet_capture_query_status_result
        Azure::Network::Mgmt::V2019_08_01::Models::PacketCaptureQueryStatusResult
      end
      def public_ipaddress_sku
        Azure::Network::Mgmt::V2019_08_01::Models::PublicIPAddressSku
      end
      def troubleshooting_parameters
        Azure::Network::Mgmt::V2019_08_01::Models::TroubleshootingParameters
      end
      def vpn_site_id
        Azure::Network::Mgmt::V2019_08_01::Models::VpnSiteId
      end
      def query_troubleshooting_parameters
        Azure::Network::Mgmt::V2019_08_01::Models::QueryTroubleshootingParameters
      end
      def list_virtual_wans_result
        Azure::Network::Mgmt::V2019_08_01::Models::ListVirtualWANsResult
      end
      def troubleshooting_recommended_actions
        Azure::Network::Mgmt::V2019_08_01::Models::TroubleshootingRecommendedActions
      end
      def virtual_wan_security_providers
        Azure::Network::Mgmt::V2019_08_01::Models::VirtualWanSecurityProviders
      end
      def troubleshooting_details
        Azure::Network::Mgmt::V2019_08_01::Models::TroubleshootingDetails
      end
      def vpn_packet_capture_start_parameters
        Azure::Network::Mgmt::V2019_08_01::Models::VpnPacketCaptureStartParameters
      end
      def troubleshooting_result
        Azure::Network::Mgmt::V2019_08_01::Models::TroubleshootingResult
      end
      def vpn_client_connection_health_detail_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::VpnClientConnectionHealthDetailListResult
      end
      def retention_policy_parameters
        Azure::Network::Mgmt::V2019_08_01::Models::RetentionPolicyParameters
      end
      def application_gateway_backend_health_pool
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayBackendHealthPool
      end
      def flow_log_format_parameters
        Azure::Network::Mgmt::V2019_08_01::Models::FlowLogFormatParameters
      end
      def vpn_client_connection_health_detail
        Azure::Network::Mgmt::V2019_08_01::Models::VpnClientConnectionHealthDetail
      end
      def flow_log_status_parameters
        Azure::Network::Mgmt::V2019_08_01::Models::FlowLogStatusParameters
      end
      def virtual_network_connection_gateway_reference
        Azure::Network::Mgmt::V2019_08_01::Models::VirtualNetworkConnectionGatewayReference
      end
      def traffic_analytics_configuration_properties
        Azure::Network::Mgmt::V2019_08_01::Models::TrafficAnalyticsConfigurationProperties
      end
      def vpn_server_config_vpn_client_revoked_certificate
        Azure::Network::Mgmt::V2019_08_01::Models::VpnServerConfigVpnClientRevokedCertificate
      end
      def traffic_analytics_properties
        Azure::Network::Mgmt::V2019_08_01::Models::TrafficAnalyticsProperties
      end
      def application_gateway_header_configuration
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayHeaderConfiguration
      end
      def flow_log_information
        Azure::Network::Mgmt::V2019_08_01::Models::FlowLogInformation
      end
      def traffic_selector_policy
        Azure::Network::Mgmt::V2019_08_01::Models::TrafficSelectorPolicy
      end
      def connectivity_source
        Azure::Network::Mgmt::V2019_08_01::Models::ConnectivitySource
      end
      def application_gateway_web_application_firewall_configuration
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayWebApplicationFirewallConfiguration
      end
      def connectivity_destination
        Azure::Network::Mgmt::V2019_08_01::Models::ConnectivityDestination
      end
      def tunnel_connection_health
        Azure::Network::Mgmt::V2019_08_01::Models::TunnelConnectionHealth
      end
      def httpheader
        Azure::Network::Mgmt::V2019_08_01::Models::HTTPHeader
      end
      def gateway_route_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::GatewayRouteListResult
      end
      def httpconfiguration
        Azure::Network::Mgmt::V2019_08_01::Models::HTTPConfiguration
      end
      def application_gateway_available_ssl_predefined_policies
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayAvailableSslPredefinedPolicies
      end
      def protocol_configuration
        Azure::Network::Mgmt::V2019_08_01::Models::ProtocolConfiguration
      end
      def tags_object
        Azure::Network::Mgmt::V2019_08_01::Models::TagsObject
      end
      def connectivity_parameters
        Azure::Network::Mgmt::V2019_08_01::Models::ConnectivityParameters
      end
      def available_service_alias
        Azure::Network::Mgmt::V2019_08_01::Models::AvailableServiceAlias
      end
      def connectivity_issue
        Azure::Network::Mgmt::V2019_08_01::Models::ConnectivityIssue
      end
      def hub_ipaddresses
        Azure::Network::Mgmt::V2019_08_01::Models::HubIPAddresses
      end
      def connectivity_hop
        Azure::Network::Mgmt::V2019_08_01::Models::ConnectivityHop
      end
      def vpn_client_connection_health
        Azure::Network::Mgmt::V2019_08_01::Models::VpnClientConnectionHealth
      end
      def connectivity_information
        Azure::Network::Mgmt::V2019_08_01::Models::ConnectivityInformation
      end
      def azure_firewall_network_rule
        Azure::Network::Mgmt::V2019_08_01::Models::AzureFirewallNetworkRule
      end
      def azure_reachability_report_location
        Azure::Network::Mgmt::V2019_08_01::Models::AzureReachabilityReportLocation
      end
      def azure_firewall_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::AzureFirewallListResult
      end
      def azure_reachability_report_parameters
        Azure::Network::Mgmt::V2019_08_01::Models::AzureReachabilityReportParameters
      end
      def list_vpn_server_configurations_result
        Azure::Network::Mgmt::V2019_08_01::Models::ListVpnServerConfigurationsResult
      end
      def azure_reachability_report_latency_info
        Azure::Network::Mgmt::V2019_08_01::Models::AzureReachabilityReportLatencyInfo
      end
      def list_p2_svpn_gateways_result
        Azure::Network::Mgmt::V2019_08_01::Models::ListP2SVpnGatewaysResult
      end
      def azure_reachability_report_item
        Azure::Network::Mgmt::V2019_08_01::Models::AzureReachabilityReportItem
      end
      def ddos_protection_plan_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::DdosProtectionPlanListResult
      end
      def azure_reachability_report
        Azure::Network::Mgmt::V2019_08_01::Models::AzureReachabilityReport
      end
      def authorization_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::AuthorizationListResult
      end
      def available_providers_list_parameters
        Azure::Network::Mgmt::V2019_08_01::Models::AvailableProvidersListParameters
      end
      def express_route_connection_id
        Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteConnectionId
      end
      def available_providers_list_city
        Azure::Network::Mgmt::V2019_08_01::Models::AvailableProvidersListCity
      end
      def express_route_circuit_peering_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCircuitPeeringListResult
      end
      def available_providers_list_state
        Azure::Network::Mgmt::V2019_08_01::Models::AvailableProvidersListState
      end
      def express_route_circuit_service_provider_properties
        Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCircuitServiceProviderProperties
      end
      def available_providers_list_country
        Azure::Network::Mgmt::V2019_08_01::Models::AvailableProvidersListCountry
      end
      def express_route_circuit_routes_table
        Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCircuitRoutesTable
      end
      def available_providers_list
        Azure::Network::Mgmt::V2019_08_01::Models::AvailableProvidersList
      end
      def express_route_circuit_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCircuitListResult
      end
      def network_configuration_diagnostic_profile
        Azure::Network::Mgmt::V2019_08_01::Models::NetworkConfigurationDiagnosticProfile
      end
      def express_route_cross_connection_routes_table_summary
        Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCrossConnectionRoutesTableSummary
      end
      def network_configuration_diagnostic_parameters
        Azure::Network::Mgmt::V2019_08_01::Models::NetworkConfigurationDiagnosticParameters
      end
      def virtual_network_usage_name
        Azure::Network::Mgmt::V2019_08_01::Models::VirtualNetworkUsageName
      end
      def matched_rule
        Azure::Network::Mgmt::V2019_08_01::Models::MatchedRule
      end
      def express_route_circuit_peering_id
        Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCircuitPeeringId
      end
      def network_security_rules_evaluation_result
        Azure::Network::Mgmt::V2019_08_01::Models::NetworkSecurityRulesEvaluationResult
      end
      def virtual_network_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::VirtualNetworkListResult
      end
      def evaluated_network_security_group
        Azure::Network::Mgmt::V2019_08_01::Models::EvaluatedNetworkSecurityGroup
      end
      def list_vpn_connections_result
        Azure::Network::Mgmt::V2019_08_01::Models::ListVpnConnectionsResult
      end
      def network_security_group_result
        Azure::Network::Mgmt::V2019_08_01::Models::NetworkSecurityGroupResult
      end
      def list_vpn_sites_result
        Azure::Network::Mgmt::V2019_08_01::Models::ListVpnSitesResult
      end
      def network_configuration_diagnostic_result
        Azure::Network::Mgmt::V2019_08_01::Models::NetworkConfigurationDiagnosticResult
      end
      def vpn_link_provider_properties
        Azure::Network::Mgmt::V2019_08_01::Models::VpnLinkProviderProperties
      end
      def network_configuration_diagnostic_response
        Azure::Network::Mgmt::V2019_08_01::Models::NetworkConfigurationDiagnosticResponse
      end
      def virtual_network_tap_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::VirtualNetworkTapListResult
      end
      def operation_display
        Azure::Network::Mgmt::V2019_08_01::Models::OperationDisplay
      end
      def application_gateway_backend_health_http_settings
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayBackendHealthHttpSettings
      end
      def availability
        Azure::Network::Mgmt::V2019_08_01::Models::Availability
      end
      def virtual_network_gateway_list_connections_result
        Azure::Network::Mgmt::V2019_08_01::Models::VirtualNetworkGatewayListConnectionsResult
      end
      def dimension
        Azure::Network::Mgmt::V2019_08_01::Models::Dimension
      end
      def virtual_network_gateway_connection_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::VirtualNetworkGatewayConnectionListResult
      end
      def metric_specification
        Azure::Network::Mgmt::V2019_08_01::Models::MetricSpecification
      end
      def application_gateway_firewall_disabled_rule_group
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayFirewallDisabledRuleGroup
      end
      def log_specification
        Azure::Network::Mgmt::V2019_08_01::Models::LogSpecification
      end
      def application_gateway_firewall_rule
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayFirewallRule
      end
      def operation_properties_format_service_specification
        Azure::Network::Mgmt::V2019_08_01::Models::OperationPropertiesFormatServiceSpecification
      end
      def error_details
        Azure::Network::Mgmt::V2019_08_01::Models::ErrorDetails
      end
      def operation
        Azure::Network::Mgmt::V2019_08_01::Models::Operation
      end
      def vpn_client_parameters
        Azure::Network::Mgmt::V2019_08_01::Models::VpnClientParameters
      end
      def operation_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::OperationListResult
      end
      def azure_firewall_nat_rule
        Azure::Network::Mgmt::V2019_08_01::Models::AzureFirewallNatRule
      end
      def private_endpoint_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::PrivateEndpointListResult
      end
      def azure_firewall_fqdn_tag_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::AzureFirewallFqdnTagListResult
      end
      def available_private_endpoint_type
        Azure::Network::Mgmt::V2019_08_01::Models::AvailablePrivateEndpointType
      end
      def available_private_endpoint_types_result
        Azure::Network::Mgmt::V2019_08_01::Models::AvailablePrivateEndpointTypesResult
      end
      def ipv6_express_route_circuit_peering_config
        Azure::Network::Mgmt::V2019_08_01::Models::Ipv6ExpressRouteCircuitPeeringConfig
      end
      def managed_rules_definition
        Azure::Network::Mgmt::V2019_08_01::Models::ManagedRulesDefinition
      end
      def peer_express_route_circuit_connection_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::PeerExpressRouteCircuitConnectionListResult
      end
      def managed_rule_set
        Azure::Network::Mgmt::V2019_08_01::Models::ManagedRuleSet
      end
      def express_route_circuit_routes_table_summary
        Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCircuitRoutesTableSummary
      end
      def managed_rule_group_override
        Azure::Network::Mgmt::V2019_08_01::Models::ManagedRuleGroupOverride
      end
      def express_route_circuit_reference
        Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCircuitReference
      end
      def managed_rule_override
        Azure::Network::Mgmt::V2019_08_01::Models::ManagedRuleOverride
      end
      def express_route_gateway_properties_auto_scale_configuration
        Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteGatewayPropertiesAutoScaleConfiguration
      end
      def owasp_crs_exclusion_entry
        Azure::Network::Mgmt::V2019_08_01::Models::OwaspCrsExclusionEntry
      end
      def list_vpn_site_link_connections_result
        Azure::Network::Mgmt::V2019_08_01::Models::ListVpnSiteLinkConnectionsResult
      end
      def resource_set
        Azure::Network::Mgmt::V2019_08_01::Models::ResourceSet
      end
      def virtual_router_peering_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::VirtualRouterPeeringListResult
      end
      def private_link_service_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::PrivateLinkServiceListResult
      end
      def application_gateway_sku
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewaySku
      end
      def check_private_link_service_visibility_request
        Azure::Network::Mgmt::V2019_08_01::Models::CheckPrivateLinkServiceVisibilityRequest
      end
      def application_gateway_rewrite_rule
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayRewriteRule
      end
      def private_link_service_visibility
        Azure::Network::Mgmt::V2019_08_01::Models::PrivateLinkServiceVisibility
      end
      def bgp_peer_status_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::BgpPeerStatusListResult
      end
      def auto_approved_private_link_service
        Azure::Network::Mgmt::V2019_08_01::Models::AutoApprovedPrivateLinkService
      end
      def azure_firewall_application_rule_protocol
        Azure::Network::Mgmt::V2019_08_01::Models::AzureFirewallApplicationRuleProtocol
      end
      def auto_approved_private_link_services_result
        Azure::Network::Mgmt::V2019_08_01::Models::AutoApprovedPrivateLinkServicesResult
      end
      def dns_name_availability_result
        Azure::Network::Mgmt::V2019_08_01::Models::DnsNameAvailabilityResult
      end
      def public_ipaddress_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::PublicIPAddressListResult
      end
      def prepare_network_policies_request
        Azure::Network::Mgmt::V2019_08_01::Models::PrepareNetworkPoliciesRequest
      end
      def public_ipprefix_sku
        Azure::Network::Mgmt::V2019_08_01::Models::PublicIPPrefixSku
      end
      def virtual_network_list_usage_result
        Azure::Network::Mgmt::V2019_08_01::Models::VirtualNetworkListUsageResult
      end
      def referenced_public_ip_address
        Azure::Network::Mgmt::V2019_08_01::Models::ReferencedPublicIpAddress
      end
      def express_route_connection_list
        Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteConnectionList
      end
      def web_application_firewall_custom_rule
        Azure::Network::Mgmt::V2019_08_01::Models::WebApplicationFirewallCustomRule
      end
      def vpn_packet_capture_stop_parameters
        Azure::Network::Mgmt::V2019_08_01::Models::VpnPacketCaptureStopParameters
      end
      def public_ipprefix_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::PublicIPPrefixListResult
      end
      def managed_service_identity_user_assigned_identities_value
        Azure::Network::Mgmt::V2019_08_01::Models::ManagedServiceIdentityUserAssignedIdentitiesValue
      end
      def match_condition
        Azure::Network::Mgmt::V2019_08_01::Models::MatchCondition
      end
      def azure_firewall_sku
        Azure::Network::Mgmt::V2019_08_01::Models::AzureFirewallSku
      end
      def match_variable
        Azure::Network::Mgmt::V2019_08_01::Models::MatchVariable
      end
      def express_route_circuit_arp_table
        Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCircuitArpTable
      end
      def policy_settings
        Azure::Network::Mgmt::V2019_08_01::Models::PolicySettings
      end
      def ddos_settings
        Azure::Network::Mgmt::V2019_08_01::Models::DdosSettings
      end
      def p2_svpn_connection_health
        Azure::Network::Mgmt::V2019_08_01::Models::P2SVpnConnectionHealth
      end
      def available_delegation
        Azure::Network::Mgmt::V2019_08_01::Models::AvailableDelegation
      end
      def route_filter_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::RouteFilterListResult
      end
      def express_route_cross_connection_peering_list
        Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCrossConnectionPeeringList
      end
      def route_filter_rule_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::RouteFilterRuleListResult
      end
      def endpoint_services_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::EndpointServicesListResult
      end
      def route_table_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::RouteTableListResult
      end
      def application_gateway_custom_error
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayCustomError
      end
      def route_list_result
        Azure::Network::Mgmt::V2019_08_01::Models::RouteListResult
      end
      def network_interface_tap_configuration
        Azure::Network::Mgmt::V2019_08_01::Models::NetworkInterfaceTapConfiguration
      end
      def application_security_group
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationSecurityGroup
      end
      def security_rule
        Azure::Network::Mgmt::V2019_08_01::Models::SecurityRule
      end
      def private_link_service_connection
        Azure::Network::Mgmt::V2019_08_01::Models::PrivateLinkServiceConnection
      end
      def private_endpoint
        Azure::Network::Mgmt::V2019_08_01::Models::PrivateEndpoint
      end
      def network_interface
        Azure::Network::Mgmt::V2019_08_01::Models::NetworkInterface
      end
      def network_security_group
        Azure::Network::Mgmt::V2019_08_01::Models::NetworkSecurityGroup
      end
      def route
        Azure::Network::Mgmt::V2019_08_01::Models::Route
      end
      def route_table
        Azure::Network::Mgmt::V2019_08_01::Models::RouteTable
      end
      def service_endpoint_policy_definition
        Azure::Network::Mgmt::V2019_08_01::Models::ServiceEndpointPolicyDefinition
      end
      def service_endpoint_policy
        Azure::Network::Mgmt::V2019_08_01::Models::ServiceEndpointPolicy
      end
      def public_ipaddress
        Azure::Network::Mgmt::V2019_08_01::Models::PublicIPAddress
      end
      def ipconfiguration
        Azure::Network::Mgmt::V2019_08_01::Models::IPConfiguration
      end
      def ipconfiguration_profile
        Azure::Network::Mgmt::V2019_08_01::Models::IPConfigurationProfile
      end
      def resource_navigation_link
        Azure::Network::Mgmt::V2019_08_01::Models::ResourceNavigationLink
      end
      def service_association_link
        Azure::Network::Mgmt::V2019_08_01::Models::ServiceAssociationLink
      end
      def delegation
        Azure::Network::Mgmt::V2019_08_01::Models::Delegation
      end
      def subnet
        Azure::Network::Mgmt::V2019_08_01::Models::Subnet
      end
      def frontend_ipconfiguration
        Azure::Network::Mgmt::V2019_08_01::Models::FrontendIPConfiguration
      end
      def virtual_network_tap
        Azure::Network::Mgmt::V2019_08_01::Models::VirtualNetworkTap
      end
      def backend_address_pool
        Azure::Network::Mgmt::V2019_08_01::Models::BackendAddressPool
      end
      def inbound_nat_rule
        Azure::Network::Mgmt::V2019_08_01::Models::InboundNatRule
      end
      def network_interface_ipconfiguration
        Azure::Network::Mgmt::V2019_08_01::Models::NetworkInterfaceIPConfiguration
      end
      def application_gateway_backend_address_pool
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayBackendAddressPool
      end
      def application_gateway_backend_http_settings
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayBackendHttpSettings
      end
      def application_gateway_ipconfiguration
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayIPConfiguration
      end
      def application_gateway_authentication_certificate
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayAuthenticationCertificate
      end
      def application_gateway_trusted_root_certificate
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayTrustedRootCertificate
      end
      def application_gateway_ssl_certificate
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewaySslCertificate
      end
      def application_gateway_frontend_ipconfiguration
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayFrontendIPConfiguration
      end
      def application_gateway_frontend_port
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayFrontendPort
      end
      def application_gateway_http_listener
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayHttpListener
      end
      def application_gateway_path_rule
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayPathRule
      end
      def application_gateway_probe
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayProbe
      end
      def application_gateway_request_routing_rule
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayRequestRoutingRule
      end
      def application_gateway_rewrite_rule_set
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayRewriteRuleSet
      end
      def application_gateway_redirect_configuration
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayRedirectConfiguration
      end
      def application_gateway_url_path_map
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayUrlPathMap
      end
      def application_gateway
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGateway
      end
      def application_gateway_firewall_rule_set
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayFirewallRuleSet
      end
      def application_gateway_available_ssl_options
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayAvailableSslOptions
      end
      def application_gateway_ssl_predefined_policy
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewaySslPredefinedPolicy
      end
      def azure_firewall_ipconfiguration
        Azure::Network::Mgmt::V2019_08_01::Models::AzureFirewallIPConfiguration
      end
      def azure_firewall_application_rule_collection
        Azure::Network::Mgmt::V2019_08_01::Models::AzureFirewallApplicationRuleCollection
      end
      def azure_firewall_nat_rule_collection
        Azure::Network::Mgmt::V2019_08_01::Models::AzureFirewallNatRuleCollection
      end
      def azure_firewall_network_rule_collection
        Azure::Network::Mgmt::V2019_08_01::Models::AzureFirewallNetworkRuleCollection
      end
      def azure_firewall
        Azure::Network::Mgmt::V2019_08_01::Models::AzureFirewall
      end
      def azure_firewall_fqdn_tag
        Azure::Network::Mgmt::V2019_08_01::Models::AzureFirewallFqdnTag
      end
      def bastion_host_ipconfiguration
        Azure::Network::Mgmt::V2019_08_01::Models::BastionHostIPConfiguration
      end
      def bastion_host
        Azure::Network::Mgmt::V2019_08_01::Models::BastionHost
      end
      def ddos_custom_policy
        Azure::Network::Mgmt::V2019_08_01::Models::DdosCustomPolicy
      end
      def endpoint_service_result
        Azure::Network::Mgmt::V2019_08_01::Models::EndpointServiceResult
      end
      def express_route_circuit_authorization
        Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCircuitAuthorization
      end
      def express_route_circuit_connection
        Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCircuitConnection
      end
      def peer_express_route_circuit_connection
        Azure::Network::Mgmt::V2019_08_01::Models::PeerExpressRouteCircuitConnection
      end
      def express_route_circuit_peering
        Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCircuitPeering
      end
      def express_route_circuit
        Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCircuit
      end
      def express_route_service_provider
        Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteServiceProvider
      end
      def express_route_cross_connection_peering
        Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCrossConnectionPeering
      end
      def express_route_cross_connection
        Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCrossConnection
      end
      def express_route_connection
        Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteConnection
      end
      def express_route_gateway
        Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteGateway
      end
      def express_route_ports_location
        Azure::Network::Mgmt::V2019_08_01::Models::ExpressRoutePortsLocation
      end
      def express_route_link
        Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteLink
      end
      def express_route_port
        Azure::Network::Mgmt::V2019_08_01::Models::ExpressRoutePort
      end
      def firewall_policy
        Azure::Network::Mgmt::V2019_08_01::Models::FirewallPolicy
      end
      def firewall_policy_rule_group
        Azure::Network::Mgmt::V2019_08_01::Models::FirewallPolicyRuleGroup
      end
      def firewall_policy_nat_rule
        Azure::Network::Mgmt::V2019_08_01::Models::FirewallPolicyNatRule
      end
      def firewall_policy_filter_rule
        Azure::Network::Mgmt::V2019_08_01::Models::FirewallPolicyFilterRule
      end
      def application_rule_condition
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationRuleCondition
      end
      def network_rule_condition
        Azure::Network::Mgmt::V2019_08_01::Models::NetworkRuleCondition
      end
      def load_balancing_rule
        Azure::Network::Mgmt::V2019_08_01::Models::LoadBalancingRule
      end
      def probe
        Azure::Network::Mgmt::V2019_08_01::Models::Probe
      end
      def inbound_nat_pool
        Azure::Network::Mgmt::V2019_08_01::Models::InboundNatPool
      end
      def outbound_rule
        Azure::Network::Mgmt::V2019_08_01::Models::OutboundRule
      end
      def load_balancer
        Azure::Network::Mgmt::V2019_08_01::Models::LoadBalancer
      end
      def nat_gateway
        Azure::Network::Mgmt::V2019_08_01::Models::NatGateway
      end
      def container_network_interface_configuration
        Azure::Network::Mgmt::V2019_08_01::Models::ContainerNetworkInterfaceConfiguration
      end
      def container
        Azure::Network::Mgmt::V2019_08_01::Models::Container
      end
      def container_network_interface
        Azure::Network::Mgmt::V2019_08_01::Models::ContainerNetworkInterface
      end
      def network_profile
        Azure::Network::Mgmt::V2019_08_01::Models::NetworkProfile
      end
      def network_watcher
        Azure::Network::Mgmt::V2019_08_01::Models::NetworkWatcher
      end
      def private_link_service_ip_configuration
        Azure::Network::Mgmt::V2019_08_01::Models::PrivateLinkServiceIpConfiguration
      end
      def private_endpoint_connection
        Azure::Network::Mgmt::V2019_08_01::Models::PrivateEndpointConnection
      end
      def private_link_service_properties_visibility
        Azure::Network::Mgmt::V2019_08_01::Models::PrivateLinkServicePropertiesVisibility
      end
      def private_link_service_properties_auto_approval
        Azure::Network::Mgmt::V2019_08_01::Models::PrivateLinkServicePropertiesAutoApproval
      end
      def private_link_service
        Azure::Network::Mgmt::V2019_08_01::Models::PrivateLinkService
      end
      def public_ipprefix
        Azure::Network::Mgmt::V2019_08_01::Models::PublicIPPrefix
      end
      def route_filter_rule
        Azure::Network::Mgmt::V2019_08_01::Models::RouteFilterRule
      end
      def patch_route_filter_rule
        Azure::Network::Mgmt::V2019_08_01::Models::PatchRouteFilterRule
      end
      def route_filter
        Azure::Network::Mgmt::V2019_08_01::Models::RouteFilter
      end
      def patch_route_filter
        Azure::Network::Mgmt::V2019_08_01::Models::PatchRouteFilter
      end
      def bgp_service_community
        Azure::Network::Mgmt::V2019_08_01::Models::BgpServiceCommunity
      end
      def virtual_network_peering
        Azure::Network::Mgmt::V2019_08_01::Models::VirtualNetworkPeering
      end
      def virtual_network
        Azure::Network::Mgmt::V2019_08_01::Models::VirtualNetwork
      end
      def network_intent_policy
        Azure::Network::Mgmt::V2019_08_01::Models::NetworkIntentPolicy
      end
      def virtual_network_gateway_ipconfiguration
        Azure::Network::Mgmt::V2019_08_01::Models::VirtualNetworkGatewayIPConfiguration
      end
      def vpn_client_root_certificate
        Azure::Network::Mgmt::V2019_08_01::Models::VpnClientRootCertificate
      end
      def vpn_client_revoked_certificate
        Azure::Network::Mgmt::V2019_08_01::Models::VpnClientRevokedCertificate
      end
      def virtual_network_gateway
        Azure::Network::Mgmt::V2019_08_01::Models::VirtualNetworkGateway
      end
      def local_network_gateway
        Azure::Network::Mgmt::V2019_08_01::Models::LocalNetworkGateway
      end
      def virtual_network_gateway_connection
        Azure::Network::Mgmt::V2019_08_01::Models::VirtualNetworkGatewayConnection
      end
      def connection_shared_key
        Azure::Network::Mgmt::V2019_08_01::Models::ConnectionSharedKey
      end
      def virtual_network_gateway_connection_list_entity
        Azure::Network::Mgmt::V2019_08_01::Models::VirtualNetworkGatewayConnectionListEntity
      end
      def virtual_router
        Azure::Network::Mgmt::V2019_08_01::Models::VirtualRouter
      end
      def virtual_router_peering
        Azure::Network::Mgmt::V2019_08_01::Models::VirtualRouterPeering
      end
      def virtual_wan
        Azure::Network::Mgmt::V2019_08_01::Models::VirtualWAN
      end
      def vpn_site_link
        Azure::Network::Mgmt::V2019_08_01::Models::VpnSiteLink
      end
      def vpn_site
        Azure::Network::Mgmt::V2019_08_01::Models::VpnSite
      end
      def hub_virtual_network_connection
        Azure::Network::Mgmt::V2019_08_01::Models::HubVirtualNetworkConnection
      end
      def virtual_hub
        Azure::Network::Mgmt::V2019_08_01::Models::VirtualHub
      end
      def vpn_site_link_connection
        Azure::Network::Mgmt::V2019_08_01::Models::VpnSiteLinkConnection
      end
      def vpn_connection
        Azure::Network::Mgmt::V2019_08_01::Models::VpnConnection
      end
      def vpn_gateway
        Azure::Network::Mgmt::V2019_08_01::Models::VpnGateway
      end
      def p2_sconnection_configuration
        Azure::Network::Mgmt::V2019_08_01::Models::P2SConnectionConfiguration
      end
      def vpn_server_configuration
        Azure::Network::Mgmt::V2019_08_01::Models::VpnServerConfiguration
      end
      def p2_svpn_gateway
        Azure::Network::Mgmt::V2019_08_01::Models::P2SVpnGateway
      end
      def web_application_firewall_policy
        Azure::Network::Mgmt::V2019_08_01::Models::WebApplicationFirewallPolicy
      end
      def application_gateway_protocol
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayProtocol
      end
      def provisioning_state
        Azure::Network::Mgmt::V2019_08_01::Models::ProvisioningState
      end
      def ipallocation_method
        Azure::Network::Mgmt::V2019_08_01::Models::IPAllocationMethod
      end
      def ipversion
        Azure::Network::Mgmt::V2019_08_01::Models::IPVersion
      end
      def security_rule_protocol
        Azure::Network::Mgmt::V2019_08_01::Models::SecurityRuleProtocol
      end
      def security_rule_access
        Azure::Network::Mgmt::V2019_08_01::Models::SecurityRuleAccess
      end
      def security_rule_direction
        Azure::Network::Mgmt::V2019_08_01::Models::SecurityRuleDirection
      end
      def route_next_hop_type
        Azure::Network::Mgmt::V2019_08_01::Models::RouteNextHopType
      end
      def public_ipaddress_sku_name
        Azure::Network::Mgmt::V2019_08_01::Models::PublicIPAddressSkuName
      end
      def ddos_settings_protection_coverage
        Azure::Network::Mgmt::V2019_08_01::Models::DdosSettingsProtectionCoverage
      end
      def transport_protocol
        Azure::Network::Mgmt::V2019_08_01::Models::TransportProtocol
      end
      def application_gateway_cookie_based_affinity
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayCookieBasedAffinity
      end
      def application_gateway_backend_health_server_health
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayBackendHealthServerHealth
      end
      def application_gateway_sku_name
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewaySkuName
      end
      def application_gateway_tier
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayTier
      end
      def application_gateway_ssl_protocol
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewaySslProtocol
      end
      def application_gateway_ssl_policy_type
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewaySslPolicyType
      end
      def application_gateway_ssl_policy_name
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewaySslPolicyName
      end
      def application_gateway_ssl_cipher_suite
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewaySslCipherSuite
      end
      def application_gateway_custom_error_status_code
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayCustomErrorStatusCode
      end
      def application_gateway_request_routing_rule_type
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayRequestRoutingRuleType
      end
      def application_gateway_redirect_type
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayRedirectType
      end
      def application_gateway_operational_state
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayOperationalState
      end
      def application_gateway_firewall_mode
        Azure::Network::Mgmt::V2019_08_01::Models::ApplicationGatewayFirewallMode
      end
      def resource_identity_type
        Azure::Network::Mgmt::V2019_08_01::Models::ResourceIdentityType
      end
      def azure_firewall_rcaction_type
        Azure::Network::Mgmt::V2019_08_01::Models::AzureFirewallRCActionType
      end
      def azure_firewall_application_rule_protocol_type
        Azure::Network::Mgmt::V2019_08_01::Models::AzureFirewallApplicationRuleProtocolType
      end
      def azure_firewall_nat_rcaction_type
        Azure::Network::Mgmt::V2019_08_01::Models::AzureFirewallNatRCActionType
      end
      def azure_firewall_network_rule_protocol
        Azure::Network::Mgmt::V2019_08_01::Models::AzureFirewallNetworkRuleProtocol
      end
      def azure_firewall_threat_intel_mode
        Azure::Network::Mgmt::V2019_08_01::Models::AzureFirewallThreatIntelMode
      end
      def azure_firewall_sku_name
        Azure::Network::Mgmt::V2019_08_01::Models::AzureFirewallSkuName
      end
      def azure_firewall_sku_tier
        Azure::Network::Mgmt::V2019_08_01::Models::AzureFirewallSkuTier
      end
      def ddos_custom_policy_protocol
        Azure::Network::Mgmt::V2019_08_01::Models::DdosCustomPolicyProtocol
      end
      def ddos_custom_policy_trigger_sensitivity_override
        Azure::Network::Mgmt::V2019_08_01::Models::DdosCustomPolicyTriggerSensitivityOverride
      end
      def authorization_use_status
        Azure::Network::Mgmt::V2019_08_01::Models::AuthorizationUseStatus
      end
      def express_route_circuit_peering_advertised_public_prefix_state
        Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCircuitPeeringAdvertisedPublicPrefixState
      end
      def express_route_circuit_peering_state
        Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCircuitPeeringState
      end
      def express_route_peering_type
        Azure::Network::Mgmt::V2019_08_01::Models::ExpressRoutePeeringType
      end
      def express_route_peering_state
        Azure::Network::Mgmt::V2019_08_01::Models::ExpressRoutePeeringState
      end
      def circuit_connection_status
        Azure::Network::Mgmt::V2019_08_01::Models::CircuitConnectionStatus
      end
      def express_route_circuit_sku_tier
        Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCircuitSkuTier
      end
      def express_route_circuit_sku_family
        Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteCircuitSkuFamily
      end
      def service_provider_provisioning_state
        Azure::Network::Mgmt::V2019_08_01::Models::ServiceProviderProvisioningState
      end
      def express_route_link_mac_sec_cipher
        Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteLinkMacSecCipher
      end
      def express_route_link_connector_type
        Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteLinkConnectorType
      end
      def express_route_link_admin_state
        Azure::Network::Mgmt::V2019_08_01::Models::ExpressRouteLinkAdminState
      end
      def express_route_ports_encapsulation
        Azure::Network::Mgmt::V2019_08_01::Models::ExpressRoutePortsEncapsulation
      end
      def firewall_policy_nat_rule_action_type
        Azure::Network::Mgmt::V2019_08_01::Models::FirewallPolicyNatRuleActionType
      end
      def firewall_policy_filter_rule_action_type
        Azure::Network::Mgmt::V2019_08_01::Models::FirewallPolicyFilterRuleActionType
      end
      def firewall_policy_rule_condition_application_protocol_type
        Azure::Network::Mgmt::V2019_08_01::Models::FirewallPolicyRuleConditionApplicationProtocolType
      end
      def firewall_policy_rule_condition_network_protocol
        Azure::Network::Mgmt::V2019_08_01::Models::FirewallPolicyRuleConditionNetworkProtocol
      end
      def load_balancer_sku_name
        Azure::Network::Mgmt::V2019_08_01::Models::LoadBalancerSkuName
      end
      def load_distribution
        Azure::Network::Mgmt::V2019_08_01::Models::LoadDistribution
      end
      def probe_protocol
        Azure::Network::Mgmt::V2019_08_01::Models::ProbeProtocol
      end
      def load_balancer_outbound_rule_protocol
        Azure::Network::Mgmt::V2019_08_01::Models::LoadBalancerOutboundRuleProtocol
      end
      def nat_gateway_sku_name
        Azure::Network::Mgmt::V2019_08_01::Models::NatGatewaySkuName
      end
      def network_operation_status
        Azure::Network::Mgmt::V2019_08_01::Models::NetworkOperationStatus
      end
      def access
        Azure::Network::Mgmt::V2019_08_01::Models::Access
      end
      def authentication_method
        Azure::Network::Mgmt::V2019_08_01::Models::AuthenticationMethod
      end
      def effective_security_rule_protocol
        Azure::Network::Mgmt::V2019_08_01::Models::EffectiveSecurityRuleProtocol
      end
      def effective_route_source
        Azure::Network::Mgmt::V2019_08_01::Models::EffectiveRouteSource
      end
      def effective_route_state
        Azure::Network::Mgmt::V2019_08_01::Models::EffectiveRouteState
      end
      def association_type
        Azure::Network::Mgmt::V2019_08_01::Models::AssociationType
      end
      def direction
        Azure::Network::Mgmt::V2019_08_01::Models::Direction
      end
      def ip_flow_protocol
        Azure::Network::Mgmt::V2019_08_01::Models::IpFlowProtocol
      end
      def next_hop_type
        Azure::Network::Mgmt::V2019_08_01::Models::NextHopType
      end
      def pc_protocol
        Azure::Network::Mgmt::V2019_08_01::Models::PcProtocol
      end
      def pc_status
        Azure::Network::Mgmt::V2019_08_01::Models::PcStatus
      end
      def pc_error
        Azure::Network::Mgmt::V2019_08_01::Models::PcError
      end
      def flow_log_format_type
        Azure::Network::Mgmt::V2019_08_01::Models::FlowLogFormatType
      end
      def protocol
        Azure::Network::Mgmt::V2019_08_01::Models::Protocol
      end
      def httpmethod
        Azure::Network::Mgmt::V2019_08_01::Models::HTTPMethod
      end
      def origin
        Azure::Network::Mgmt::V2019_08_01::Models::Origin
      end
      def severity
        Azure::Network::Mgmt::V2019_08_01::Models::Severity
      end
      def issue_type
        Azure::Network::Mgmt::V2019_08_01::Models::IssueType
      end
      def connection_status
        Azure::Network::Mgmt::V2019_08_01::Models::ConnectionStatus
      end
      def verbosity_level
        Azure::Network::Mgmt::V2019_08_01::Models::VerbosityLevel
      end
      def public_ipprefix_sku_name
        Azure::Network::Mgmt::V2019_08_01::Models::PublicIPPrefixSkuName
      end
      def virtual_network_peering_state
        Azure::Network::Mgmt::V2019_08_01::Models::VirtualNetworkPeeringState
      end
      def virtual_network_gateway_type
        Azure::Network::Mgmt::V2019_08_01::Models::VirtualNetworkGatewayType
      end
      def vpn_type
        Azure::Network::Mgmt::V2019_08_01::Models::VpnType
      end
      def vpn_gateway_generation
        Azure::Network::Mgmt::V2019_08_01::Models::VpnGatewayGeneration
      end
      def virtual_network_gateway_sku_name
        Azure::Network::Mgmt::V2019_08_01::Models::VirtualNetworkGatewaySkuName
      end
      def virtual_network_gateway_sku_tier
        Azure::Network::Mgmt::V2019_08_01::Models::VirtualNetworkGatewaySkuTier
      end
      def vpn_client_protocol
        Azure::Network::Mgmt::V2019_08_01::Models::VpnClientProtocol
      end
      def ipsec_encryption
        Azure::Network::Mgmt::V2019_08_01::Models::IpsecEncryption
      end
      def ipsec_integrity
        Azure::Network::Mgmt::V2019_08_01::Models::IpsecIntegrity
      end
      def ike_encryption
        Azure::Network::Mgmt::V2019_08_01::Models::IkeEncryption
      end
      def ike_integrity
        Azure::Network::Mgmt::V2019_08_01::Models::IkeIntegrity
      end
      def dh_group
        Azure::Network::Mgmt::V2019_08_01::Models::DhGroup
      end
      def pfs_group
        Azure::Network::Mgmt::V2019_08_01::Models::PfsGroup
      end
      def bgp_peer_state
        Azure::Network::Mgmt::V2019_08_01::Models::BgpPeerState
      end
      def processor_architecture
        Azure::Network::Mgmt::V2019_08_01::Models::ProcessorArchitecture
      end
      def virtual_network_gateway_connection_status
        Azure::Network::Mgmt::V2019_08_01::Models::VirtualNetworkGatewayConnectionStatus
      end
      def virtual_network_gateway_connection_type
        Azure::Network::Mgmt::V2019_08_01::Models::VirtualNetworkGatewayConnectionType
      end
      def virtual_network_gateway_connection_protocol
        Azure::Network::Mgmt::V2019_08_01::Models::VirtualNetworkGatewayConnectionProtocol
      end
      def office_traffic_category
        Azure::Network::Mgmt::V2019_08_01::Models::OfficeTrafficCategory
      end
      def vpn_connection_status
        Azure::Network::Mgmt::V2019_08_01::Models::VpnConnectionStatus
      end
      def virtual_wan_security_provider_type
        Azure::Network::Mgmt::V2019_08_01::Models::VirtualWanSecurityProviderType
      end
      def tunnel_connection_status
        Azure::Network::Mgmt::V2019_08_01::Models::TunnelConnectionStatus
      end
      def hub_virtual_network_connection_status
        Azure::Network::Mgmt::V2019_08_01::Models::HubVirtualNetworkConnectionStatus
      end
      def vpn_gateway_tunneling_protocol
        Azure::Network::Mgmt::V2019_08_01::Models::VpnGatewayTunnelingProtocol
      end
      def vpn_authentication_type
        Azure::Network::Mgmt::V2019_08_01::Models::VpnAuthenticationType
      end
      def web_application_firewall_enabled_state
        Azure::Network::Mgmt::V2019_08_01::Models::WebApplicationFirewallEnabledState
      end
      def web_application_firewall_mode
        Azure::Network::Mgmt::V2019_08_01::Models::WebApplicationFirewallMode
      end
      def web_application_firewall_rule_type
        Azure::Network::Mgmt::V2019_08_01::Models::WebApplicationFirewallRuleType
      end
      def web_application_firewall_match_variable
        Azure::Network::Mgmt::V2019_08_01::Models::WebApplicationFirewallMatchVariable
      end
      def web_application_firewall_operator
        Azure::Network::Mgmt::V2019_08_01::Models::WebApplicationFirewallOperator
      end
      def web_application_firewall_transform
        Azure::Network::Mgmt::V2019_08_01::Models::WebApplicationFirewallTransform
      end
      def web_application_firewall_action
        Azure::Network::Mgmt::V2019_08_01::Models::WebApplicationFirewallAction
      end
      def web_application_firewall_policy_resource_state
        Azure::Network::Mgmt::V2019_08_01::Models::WebApplicationFirewallPolicyResourceState
      end
      def owasp_crs_exclusion_entry_match_variable
        Azure::Network::Mgmt::V2019_08_01::Models::OwaspCrsExclusionEntryMatchVariable
      end
      def owasp_crs_exclusion_entry_selector_match_operator
        Azure::Network::Mgmt::V2019_08_01::Models::OwaspCrsExclusionEntrySelectorMatchOperator
      end
      def managed_rule_enabled_state
        Azure::Network::Mgmt::V2019_08_01::Models::ManagedRuleEnabledState
      end
    end
  end
end
