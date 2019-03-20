# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_network'

module Azure::Profiles::Latest
  module Network
    module Mgmt
      ApplicationGateways = Azure::Network::Mgmt::V2018_10_01::ApplicationGateways
      ApplicationSecurityGroups = Azure::Network::Mgmt::V2018_10_01::ApplicationSecurityGroups
      AvailableEndpointServices = Azure::Network::Mgmt::V2018_10_01::AvailableEndpointServices
      ExpressRouteCircuitAuthorizations = Azure::Network::Mgmt::V2018_10_01::ExpressRouteCircuitAuthorizations
      ExpressRouteCircuitPeerings = Azure::Network::Mgmt::V2018_10_01::ExpressRouteCircuitPeerings
      ExpressRouteCircuits = Azure::Network::Mgmt::V2018_10_01::ExpressRouteCircuits
      ExpressRouteServiceProviders = Azure::Network::Mgmt::V2018_10_01::ExpressRouteServiceProviders
      LoadBalancers = Azure::Network::Mgmt::V2018_10_01::LoadBalancers
      LoadBalancerBackendAddressPools = Azure::Network::Mgmt::V2018_10_01::LoadBalancerBackendAddressPools
      LoadBalancerFrontendIPConfigurations = Azure::Network::Mgmt::V2018_10_01::LoadBalancerFrontendIPConfigurations
      InboundNatRules = Azure::Network::Mgmt::V2018_10_01::InboundNatRules
      LoadBalancerLoadBalancingRules = Azure::Network::Mgmt::V2018_10_01::LoadBalancerLoadBalancingRules
      LoadBalancerNetworkInterfaces = Azure::Network::Mgmt::V2018_10_01::LoadBalancerNetworkInterfaces
      LoadBalancerProbes = Azure::Network::Mgmt::V2018_10_01::LoadBalancerProbes
      NetworkInterfaceIPConfigurations = Azure::Network::Mgmt::V2018_10_01::NetworkInterfaceIPConfigurations
      NetworkInterfaceLoadBalancers = Azure::Network::Mgmt::V2018_10_01::NetworkInterfaceLoadBalancers
      NetworkSecurityGroups = Azure::Network::Mgmt::V2018_10_01::NetworkSecurityGroups
      SecurityRules = Azure::Network::Mgmt::V2018_10_01::SecurityRules
      DefaultSecurityRules = Azure::Network::Mgmt::V2018_10_01::DefaultSecurityRules
      NetworkWatchers = Azure::Network::Mgmt::V2018_10_01::NetworkWatchers
      PacketCaptures = Azure::Network::Mgmt::V2018_10_01::PacketCaptures
      ConnectionMonitors = Azure::Network::Mgmt::V2018_10_01::ConnectionMonitors
      AvailableResourceGroupDelegations = Azure::Network::Mgmt::V2018_10_01::AvailableResourceGroupDelegations
      AzureFirewalls = Azure::Network::Mgmt::V2018_10_01::AzureFirewalls
      AvailableDelegations = Azure::Network::Mgmt::V2018_10_01::AvailableDelegations
      DdosProtectionPlans = Azure::Network::Mgmt::V2018_10_01::DdosProtectionPlans
      ExpressRouteCircuitConnections = Azure::Network::Mgmt::V2018_10_01::ExpressRouteCircuitConnections
      AzureFirewallFqdnTags = Azure::Network::Mgmt::V2018_10_01::AzureFirewallFqdnTags
      ExpressRoutePortsLocations = Azure::Network::Mgmt::V2018_10_01::ExpressRoutePortsLocations
      ExpressRoutePorts = Azure::Network::Mgmt::V2018_10_01::ExpressRoutePorts
      ExpressRouteLinks = Azure::Network::Mgmt::V2018_10_01::ExpressRouteLinks
      InterfaceEndpoints = Azure::Network::Mgmt::V2018_10_01::InterfaceEndpoints
      LoadBalancerOutboundRules = Azure::Network::Mgmt::V2018_10_01::LoadBalancerOutboundRules
      NetworkInterfaceTapConfigurations = Azure::Network::Mgmt::V2018_10_01::NetworkInterfaceTapConfigurations
      NetworkProfiles = Azure::Network::Mgmt::V2018_10_01::NetworkProfiles
      PublicIPPrefixes = Azure::Network::Mgmt::V2018_10_01::PublicIPPrefixes
      ExpressRouteGateways = Azure::Network::Mgmt::V2018_10_01::ExpressRouteGateways
      ExpressRouteConnections = Azure::Network::Mgmt::V2018_10_01::ExpressRouteConnections
      RouteFilterRules = Azure::Network::Mgmt::V2018_10_01::RouteFilterRules
      ExpressRouteCrossConnections = Azure::Network::Mgmt::V2018_10_01::ExpressRouteCrossConnections
      ExpressRouteCrossConnectionPeerings = Azure::Network::Mgmt::V2018_10_01::ExpressRouteCrossConnectionPeerings
      BgpServiceCommunities = Azure::Network::Mgmt::V2018_10_01::BgpServiceCommunities
      ServiceEndpointPolicies = Azure::Network::Mgmt::V2018_10_01::ServiceEndpointPolicies
      NetworkInterfaces = Azure::Network::Mgmt::V2018_10_01::NetworkInterfaces
      PublicIPAddresses = Azure::Network::Mgmt::V2018_10_01::PublicIPAddresses
      RouteTables = Azure::Network::Mgmt::V2018_10_01::RouteTables
      Routes = Azure::Network::Mgmt::V2018_10_01::Routes
      ServiceEndpointPolicyDefinitions = Azure::Network::Mgmt::V2018_10_01::ServiceEndpointPolicyDefinitions
      Usages = Azure::Network::Mgmt::V2018_10_01::Usages
      VirtualNetworks = Azure::Network::Mgmt::V2018_10_01::VirtualNetworks
      RouteFilters = Azure::Network::Mgmt::V2018_10_01::RouteFilters
      VirtualNetworkPeerings = Azure::Network::Mgmt::V2018_10_01::VirtualNetworkPeerings
      VirtualNetworkGateways = Azure::Network::Mgmt::V2018_10_01::VirtualNetworkGateways
      VirtualNetworkGatewayConnections = Azure::Network::Mgmt::V2018_10_01::VirtualNetworkGatewayConnections
      LocalNetworkGateways = Azure::Network::Mgmt::V2018_10_01::LocalNetworkGateways
      VpnSites = Azure::Network::Mgmt::V2018_10_01::VpnSites
      VpnSitesConfiguration = Azure::Network::Mgmt::V2018_10_01::VpnSitesConfiguration
      Subnets = Azure::Network::Mgmt::V2018_10_01::Subnets
      HubVirtualNetworkConnections = Azure::Network::Mgmt::V2018_10_01::HubVirtualNetworkConnections
      VirtualNetworkTaps = Azure::Network::Mgmt::V2018_10_01::VirtualNetworkTaps
      VirtualWans = Azure::Network::Mgmt::V2018_10_01::VirtualWans
      P2sVpnServerConfigurations = Azure::Network::Mgmt::V2018_10_01::P2sVpnServerConfigurations
      Operations = Azure::Network::Mgmt::V2018_10_01::Operations
      VirtualHubs = Azure::Network::Mgmt::V2018_10_01::VirtualHubs
      VpnGateways = Azure::Network::Mgmt::V2018_10_01::VpnGateways
      VpnConnections = Azure::Network::Mgmt::V2018_10_01::VpnConnections
      P2sVpnGateways = Azure::Network::Mgmt::V2018_10_01::P2sVpnGateways

      module Models
        PublicIPPrefixSkuName = Azure::Network::Mgmt::V2018_10_01::Models::PublicIPPrefixSkuName
        OfficeTrafficCategory = Azure::Network::Mgmt::V2018_10_01::Models::OfficeTrafficCategory
        TunnelConnectionStatus = Azure::Network::Mgmt::V2018_10_01::Models::TunnelConnectionStatus
        HubVirtualNetworkConnectionStatus = Azure::Network::Mgmt::V2018_10_01::Models::HubVirtualNetworkConnectionStatus
        LogSpecification = Azure::Network::Mgmt::V2018_10_01::Models::LogSpecification
        HTTPHeader = Azure::Network::Mgmt::V2018_10_01::Models::HTTPHeader
        Severity = Azure::Network::Mgmt::V2018_10_01::Models::Severity
        ManagedServiceIdentity = Azure::Network::Mgmt::V2018_10_01::Models::ManagedServiceIdentity
        ErrorResponse = Azure::Network::Mgmt::V2018_10_01::Models::ErrorResponse
        PublicIPAddressSku = Azure::Network::Mgmt::V2018_10_01::Models::PublicIPAddressSku
        ApplicationGatewayBackendAddress = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayBackendAddress
        ContainerNetworkInterfaceIpConfiguration = Azure::Network::Mgmt::V2018_10_01::Models::ContainerNetworkInterfaceIpConfiguration
        NetworkInterfaceListResult = Azure::Network::Mgmt::V2018_10_01::Models::NetworkInterfaceListResult
        ExpressRouteCircuitReference = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitReference
        NetworkInterfaceIPConfigurationListResult = Azure::Network::Mgmt::V2018_10_01::Models::NetworkInterfaceIPConfigurationListResult
        ExpressRouteCrossConnectionPeeringList = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCrossConnectionPeeringList
        EndpointService = Azure::Network::Mgmt::V2018_10_01::Models::EndpointService
        NetworkInterfaceDnsSettings = Azure::Network::Mgmt::V2018_10_01::Models::NetworkInterfaceDnsSettings
        VirtualWanSecurityProviders = Azure::Network::Mgmt::V2018_10_01::Models::VirtualWanSecurityProviders
        VpnClientConnectionHealth = Azure::Network::Mgmt::V2018_10_01::Models::VpnClientConnectionHealth
        ExpressRouteCrossConnectionListResult = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCrossConnectionListResult
        ExpressRouteGatewayPropertiesAutoScaleConfigurationBounds = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteGatewayPropertiesAutoScaleConfigurationBounds
        ExpressRouteCircuitPeeringId = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitPeeringId
        VirtualHubId = Azure::Network::Mgmt::V2018_10_01::Models::VirtualHubId
        IpTag = Azure::Network::Mgmt::V2018_10_01::Models::IpTag
        ListVpnConnectionsResult = Azure::Network::Mgmt::V2018_10_01::Models::ListVpnConnectionsResult
        ExpressRouteGatewayList = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteGatewayList
        VirtualHubRoute = Azure::Network::Mgmt::V2018_10_01::Models::VirtualHubRoute
        ExpressRouteGatewayPropertiesAutoScaleConfiguration = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteGatewayPropertiesAutoScaleConfiguration
        ListVpnSitesResult = Azure::Network::Mgmt::V2018_10_01::Models::ListVpnSitesResult
        ExpressRoutePortsLocationBandwidths = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRoutePortsLocationBandwidths
        ListVirtualHubsResult = Azure::Network::Mgmt::V2018_10_01::Models::ListVirtualHubsResult
        ListVirtualWANsResult = Azure::Network::Mgmt::V2018_10_01::Models::ListVirtualWANsResult
        ExpressRoutePortsLocationListResult = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRoutePortsLocationListResult
        ExpressRouteConnectionList = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteConnectionList
        VirtualWanSecurityProvider = Azure::Network::Mgmt::V2018_10_01::Models::VirtualWanSecurityProvider
        PublicIPPrefixSku = Azure::Network::Mgmt::V2018_10_01::Models::PublicIPPrefixSku
        ReferencedPublicIpAddress = Azure::Network::Mgmt::V2018_10_01::Models::ReferencedPublicIpAddress
        PublicIPPrefixListResult = Azure::Network::Mgmt::V2018_10_01::Models::PublicIPPrefixListResult
        VpnClientIPsecParameters = Azure::Network::Mgmt::V2018_10_01::Models::VpnClientIPsecParameters
        ExpressRoutePortListResult = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRoutePortListResult
        ExpressRouteLinkListResult = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteLinkListResult
        ApplicationGatewayAutoscaleConfiguration = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayAutoscaleConfiguration
        LoadBalancerOutboundRuleListResult = Azure::Network::Mgmt::V2018_10_01::Models::LoadBalancerOutboundRuleListResult
        NetworkInterfaceTapConfigurationListResult = Azure::Network::Mgmt::V2018_10_01::Models::NetworkInterfaceTapConfigurationListResult
        AvailableDelegationsResult = Azure::Network::Mgmt::V2018_10_01::Models::AvailableDelegationsResult
        AzureFirewallRCAction = Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallRCAction
        AzureFirewallApplicationRule = Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallApplicationRule
        AzureFirewallNatRCAction = Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallNatRCAction
        AzureFirewallListResult = Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallListResult
        OperationListResult = Azure::Network::Mgmt::V2018_10_01::Models::OperationListResult
        ApplicationGatewayFirewallExclusion = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayFirewallExclusion
        DdosProtectionPlan = Azure::Network::Mgmt::V2018_10_01::Models::DdosProtectionPlan
        InterfaceEndpointListResult = Azure::Network::Mgmt::V2018_10_01::Models::InterfaceEndpointListResult
        ServiceEndpointPolicyDefinitionListResult = Azure::Network::Mgmt::V2018_10_01::Models::ServiceEndpointPolicyDefinitionListResult
        Operation = Azure::Network::Mgmt::V2018_10_01::Models::Operation
        PublicIPAddressListResult = Azure::Network::Mgmt::V2018_10_01::Models::PublicIPAddressListResult
        P2SVpnProfileParameters = Azure::Network::Mgmt::V2018_10_01::Models::P2SVpnProfileParameters
        NetworkConfigurationDiagnosticResponse = Azure::Network::Mgmt::V2018_10_01::Models::NetworkConfigurationDiagnosticResponse
        VpnSiteId = Azure::Network::Mgmt::V2018_10_01::Models::VpnSiteId
        AzureFirewallFqdnTagListResult = Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallFqdnTagListResult
        ApplicationGatewayRewriteRuleActionSet = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayRewriteRuleActionSet
        ExpressRouteCrossConnectionRoutesTableSummary = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCrossConnectionRoutesTableSummary
        NetworkProfileListResult = Azure::Network::Mgmt::V2018_10_01::Models::NetworkProfileListResult
        ListP2SVpnServerConfigurationsResult = Azure::Network::Mgmt::V2018_10_01::Models::ListP2SVpnServerConfigurationsResult
        NetworkConfigurationDiagnosticResult = Azure::Network::Mgmt::V2018_10_01::Models::NetworkConfigurationDiagnosticResult
        ApplicationGatewayCustomError = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayCustomError
        ApplicationGatewayRewriteRule = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayRewriteRule
        DeviceProperties = Azure::Network::Mgmt::V2018_10_01::Models::DeviceProperties
        AzureFirewallNetworkRule = Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallNetworkRule
        OperationDisplay = Azure::Network::Mgmt::V2018_10_01::Models::OperationDisplay
        VirtualHubRouteTable = Azure::Network::Mgmt::V2018_10_01::Models::VirtualHubRouteTable
        TrafficAnalyticsProperties = Azure::Network::Mgmt::V2018_10_01::Models::TrafficAnalyticsProperties
        DdosProtectionPlanListResult = Azure::Network::Mgmt::V2018_10_01::Models::DdosProtectionPlanListResult
        FlowLogFormatParameters = Azure::Network::Mgmt::V2018_10_01::Models::FlowLogFormatParameters
        ListHubVirtualNetworkConnectionsResult = Azure::Network::Mgmt::V2018_10_01::Models::ListHubVirtualNetworkConnectionsResult
        TrafficAnalyticsConfigurationProperties = Azure::Network::Mgmt::V2018_10_01::Models::TrafficAnalyticsConfigurationProperties
        GetVpnSitesConfigurationRequest = Azure::Network::Mgmt::V2018_10_01::Models::GetVpnSitesConfigurationRequest
        ExpressRouteCrossConnectionsRoutesTableSummaryListResult = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCrossConnectionsRoutesTableSummaryListResult
        ExpressRouteConnectionId = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteConnectionId
        ManagedServiceIdentityUserAssignedIdentitiesValue = Azure::Network::Mgmt::V2018_10_01::Models::ManagedServiceIdentityUserAssignedIdentitiesValue
        ProtocolConfiguration = Azure::Network::Mgmt::V2018_10_01::Models::ProtocolConfiguration
        VirtualNetworkTapListResult = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkTapListResult
        ListP2SVpnGatewaysResult = Azure::Network::Mgmt::V2018_10_01::Models::ListP2SVpnGatewaysResult
        HTTPConfiguration = Azure::Network::Mgmt::V2018_10_01::Models::HTTPConfiguration
        NetworkConfigurationDiagnosticProfile = Azure::Network::Mgmt::V2018_10_01::Models::NetworkConfigurationDiagnosticProfile
        NetworkConfigurationDiagnosticParameters = Azure::Network::Mgmt::V2018_10_01::Models::NetworkConfigurationDiagnosticParameters
        AzureFirewallApplicationRuleProtocol = Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallApplicationRuleProtocol
        ServiceEndpointPolicyListResult = Azure::Network::Mgmt::V2018_10_01::Models::ServiceEndpointPolicyListResult
        ApplicationGatewayHeaderConfiguration = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayHeaderConfiguration
        AvailableDelegation = Azure::Network::Mgmt::V2018_10_01::Models::AvailableDelegation
        PublicIPAddressDnsSettings = Azure::Network::Mgmt::V2018_10_01::Models::PublicIPAddressDnsSettings
        EvaluatedNetworkSecurityGroup = Azure::Network::Mgmt::V2018_10_01::Models::EvaluatedNetworkSecurityGroup
        ServiceEndpointPropertiesFormat = Azure::Network::Mgmt::V2018_10_01::Models::ServiceEndpointPropertiesFormat
        ListVpnGatewaysResult = Azure::Network::Mgmt::V2018_10_01::Models::ListVpnGatewaysResult
        MatchedRule = Azure::Network::Mgmt::V2018_10_01::Models::MatchedRule
        VpnProfileResponse = Azure::Network::Mgmt::V2018_10_01::Models::VpnProfileResponse
        NetworkSecurityRulesEvaluationResult = Azure::Network::Mgmt::V2018_10_01::Models::NetworkSecurityRulesEvaluationResult
        InterfaceEndpoint = Azure::Network::Mgmt::V2018_10_01::Models::InterfaceEndpoint
        ServiceEndpointPolicyDefinition = Azure::Network::Mgmt::V2018_10_01::Models::ServiceEndpointPolicyDefinition
        NetworkSecurityGroupResult = Azure::Network::Mgmt::V2018_10_01::Models::NetworkSecurityGroupResult
        AzureFirewallNatRule = Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallNatRule
        IPConfiguration = Azure::Network::Mgmt::V2018_10_01::Models::IPConfiguration
        VirtualNetworkTap = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkTap
        ServiceEndpointPolicy = Azure::Network::Mgmt::V2018_10_01::Models::ServiceEndpointPolicy
        NetworkInterface = Azure::Network::Mgmt::V2018_10_01::Models::NetworkInterface
        NetworkInterfaceTapConfiguration = Azure::Network::Mgmt::V2018_10_01::Models::NetworkInterfaceTapConfiguration
        RouteTable = Azure::Network::Mgmt::V2018_10_01::Models::RouteTable
        ApplicationSecurityGroup = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationSecurityGroup
        ResourceNavigationLink = Azure::Network::Mgmt::V2018_10_01::Models::ResourceNavigationLink
        Route = Azure::Network::Mgmt::V2018_10_01::Models::Route
        SecurityRule = Azure::Network::Mgmt::V2018_10_01::Models::SecurityRule
        ExpressRouteConnection = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteConnection
        BackendAddressPool = Azure::Network::Mgmt::V2018_10_01::Models::BackendAddressPool
        InboundNatRule = Azure::Network::Mgmt::V2018_10_01::Models::InboundNatRule
        AzureFirewallFqdnTag = Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallFqdnTag
        Error = Azure::Network::Mgmt::V2018_10_01::Models::Error
        Delegation = Azure::Network::Mgmt::V2018_10_01::Models::Delegation
        AzureFirewallNetworkRuleCollection = Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallNetworkRuleCollection
        NetworkSecurityGroup = Azure::Network::Mgmt::V2018_10_01::Models::NetworkSecurityGroup
        ApplicationGatewayRewriteRuleSet = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayRewriteRuleSet
        Subnet = Azure::Network::Mgmt::V2018_10_01::Models::Subnet
        AzureFirewallApplicationRuleCollection = Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallApplicationRuleCollection
        IPConfigurationProfile = Azure::Network::Mgmt::V2018_10_01::Models::IPConfigurationProfile
        OutboundRule = Azure::Network::Mgmt::V2018_10_01::Models::OutboundRule
        TopologyAssociation = Azure::Network::Mgmt::V2018_10_01::Models::TopologyAssociation
        TopologyResource = Azure::Network::Mgmt::V2018_10_01::Models::TopologyResource
        OperationPropertiesFormatServiceSpecification = Azure::Network::Mgmt::V2018_10_01::Models::OperationPropertiesFormatServiceSpecification
        VirtualNetworkConnectionGatewayReference = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkConnectionGatewayReference
        LoadBalancerListResult = Azure::Network::Mgmt::V2018_10_01::Models::LoadBalancerListResult
        PublicIPAddress = Azure::Network::Mgmt::V2018_10_01::Models::PublicIPAddress
        InboundNatRuleListResult = Azure::Network::Mgmt::V2018_10_01::Models::InboundNatRuleListResult
        LoadBalancerBackendAddressPoolListResult = Azure::Network::Mgmt::V2018_10_01::Models::LoadBalancerBackendAddressPoolListResult
        ConnectionResetSharedKey = Azure::Network::Mgmt::V2018_10_01::Models::ConnectionResetSharedKey
        LoadBalancerFrontendIPConfigurationListResult = Azure::Network::Mgmt::V2018_10_01::Models::LoadBalancerFrontendIPConfigurationListResult
        IpsecPolicy = Azure::Network::Mgmt::V2018_10_01::Models::IpsecPolicy
        LoadBalancerLoadBalancingRuleListResult = Azure::Network::Mgmt::V2018_10_01::Models::LoadBalancerLoadBalancingRuleListResult
        GatewayRouteListResult = Azure::Network::Mgmt::V2018_10_01::Models::GatewayRouteListResult
        LoadBalancerProbeListResult = Azure::Network::Mgmt::V2018_10_01::Models::LoadBalancerProbeListResult
        BgpPeerStatusListResult = Azure::Network::Mgmt::V2018_10_01::Models::BgpPeerStatusListResult
        VirtualNetworkGatewayListResult = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewayListResult
        ErrorDetails = Azure::Network::Mgmt::V2018_10_01::Models::ErrorDetails
        ApplicationGatewayBackendHealthHttpSettings = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayBackendHealthHttpSettings
        ApplicationGatewayBackendHealth = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayBackendHealth
        AzureAsyncOperationResult = Azure::Network::Mgmt::V2018_10_01::Models::AzureAsyncOperationResult
        ApplicationGatewaySslPolicy = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewaySslPolicy
        GatewayRoute = Azure::Network::Mgmt::V2018_10_01::Models::GatewayRoute
        NetworkInterfaceLoadBalancerListResult = Azure::Network::Mgmt::V2018_10_01::Models::NetworkInterfaceLoadBalancerListResult
        BgpSettings = Azure::Network::Mgmt::V2018_10_01::Models::BgpSettings
        EffectiveNetworkSecurityGroupAssociation = Azure::Network::Mgmt::V2018_10_01::Models::EffectiveNetworkSecurityGroupAssociation
        VirtualNetworkGatewaySku = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewaySku
        EffectiveNetworkSecurityRule = Azure::Network::Mgmt::V2018_10_01::Models::EffectiveNetworkSecurityRule
        ApplicationGatewayProbeHealthResponseMatch = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayProbeHealthResponseMatch
        EffectiveNetworkSecurityGroup = Azure::Network::Mgmt::V2018_10_01::Models::EffectiveNetworkSecurityGroup
        VirtualNetworkUsageName = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkUsageName
        EffectiveNetworkSecurityGroupListResult = Azure::Network::Mgmt::V2018_10_01::Models::EffectiveNetworkSecurityGroupListResult
        VirtualNetworkListResult = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkListResult
        EffectiveRoute = Azure::Network::Mgmt::V2018_10_01::Models::EffectiveRoute
        SubResource = Azure::Network::Mgmt::V2018_10_01::Models::SubResource
        EffectiveRouteListResult = Azure::Network::Mgmt::V2018_10_01::Models::EffectiveRouteListResult
        ApplicationGatewayListResult = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayListResult
        SecurityRuleListResult = Azure::Network::Mgmt::V2018_10_01::Models::SecurityRuleListResult
        ApplicationGatewayFirewallRuleGroup = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayFirewallRuleGroup
        NetworkSecurityGroupListResult = Azure::Network::Mgmt::V2018_10_01::Models::NetworkSecurityGroupListResult
        ApplicationGatewayAvailableWafRuleSetsResult = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayAvailableWafRuleSetsResult
        AddressSpace = Azure::Network::Mgmt::V2018_10_01::Models::AddressSpace
        NetworkWatcherListResult = Azure::Network::Mgmt::V2018_10_01::Models::NetworkWatcherListResult
        TopologyParameters = Azure::Network::Mgmt::V2018_10_01::Models::TopologyParameters
        ApplicationSecurityGroupListResult = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationSecurityGroupListResult
        DnsNameAvailabilityResult = Azure::Network::Mgmt::V2018_10_01::Models::DnsNameAvailabilityResult
        Dimension = Azure::Network::Mgmt::V2018_10_01::Models::Dimension
        EndpointServicesListResult = Azure::Network::Mgmt::V2018_10_01::Models::EndpointServicesListResult
        MetricSpecification = Azure::Network::Mgmt::V2018_10_01::Models::MetricSpecification
        AuthorizationListResult = Azure::Network::Mgmt::V2018_10_01::Models::AuthorizationListResult
        Topology = Azure::Network::Mgmt::V2018_10_01::Models::Topology
        VerificationIPFlowParameters = Azure::Network::Mgmt::V2018_10_01::Models::VerificationIPFlowParameters
        BgpServiceCommunityListResult = Azure::Network::Mgmt::V2018_10_01::Models::BgpServiceCommunityListResult
        VerificationIPFlowResult = Azure::Network::Mgmt::V2018_10_01::Models::VerificationIPFlowResult
        Ipv6ExpressRouteCircuitPeeringConfig = Azure::Network::Mgmt::V2018_10_01::Models::Ipv6ExpressRouteCircuitPeeringConfig
        NextHopParameters = Azure::Network::Mgmt::V2018_10_01::Models::NextHopParameters
        ExpressRouteCircuitSku = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitSku
        NextHopResult = Azure::Network::Mgmt::V2018_10_01::Models::NextHopResult
        RouteListResult = Azure::Network::Mgmt::V2018_10_01::Models::RouteListResult
        SecurityGroupViewParameters = Azure::Network::Mgmt::V2018_10_01::Models::SecurityGroupViewParameters
        ExpressRouteCircuitsArpTableListResult = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitsArpTableListResult
        NetworkInterfaceAssociation = Azure::Network::Mgmt::V2018_10_01::Models::NetworkInterfaceAssociation
        ExpressRouteCircuitsRoutesTableListResult = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitsRoutesTableListResult
        SubnetAssociation = Azure::Network::Mgmt::V2018_10_01::Models::SubnetAssociation
        ExpressRouteCircuitsRoutesTableSummaryListResult = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitsRoutesTableSummaryListResult
        SecurityRuleAssociations = Azure::Network::Mgmt::V2018_10_01::Models::SecurityRuleAssociations
        ExpressRouteServiceProviderBandwidthsOffered = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteServiceProviderBandwidthsOffered
        SecurityGroupNetworkInterface = Azure::Network::Mgmt::V2018_10_01::Models::SecurityGroupNetworkInterface
        ExpressRouteServiceProviderListResult = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteServiceProviderListResult
        SecurityGroupViewResult = Azure::Network::Mgmt::V2018_10_01::Models::SecurityGroupViewResult
        RouteFilterRuleListResult = Azure::Network::Mgmt::V2018_10_01::Models::RouteFilterRuleListResult
        PacketCaptureStorageLocation = Azure::Network::Mgmt::V2018_10_01::Models::PacketCaptureStorageLocation
        PacketCaptureFilter = Azure::Network::Mgmt::V2018_10_01::Models::PacketCaptureFilter
        VirtualNetworkGatewayListConnectionsResult = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewayListConnectionsResult
        PacketCaptureParameters = Azure::Network::Mgmt::V2018_10_01::Models::PacketCaptureParameters
        PacketCapture = Azure::Network::Mgmt::V2018_10_01::Models::PacketCapture
        VirtualNetworkGatewayConnectionListResult = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewayConnectionListResult
        PacketCaptureResult = Azure::Network::Mgmt::V2018_10_01::Models::PacketCaptureResult
        PacketCaptureListResult = Azure::Network::Mgmt::V2018_10_01::Models::PacketCaptureListResult
        ApplicationGatewayBackendHealthServer = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayBackendHealthServer
        PacketCaptureQueryStatusResult = Azure::Network::Mgmt::V2018_10_01::Models::PacketCaptureQueryStatusResult
        ApplicationGatewaySku = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewaySku
        TroubleshootingParameters = Azure::Network::Mgmt::V2018_10_01::Models::TroubleshootingParameters
        BgpPeerStatus = Azure::Network::Mgmt::V2018_10_01::Models::BgpPeerStatus
        QueryTroubleshootingParameters = Azure::Network::Mgmt::V2018_10_01::Models::QueryTroubleshootingParameters
        VirtualNetworkListUsageResult = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkListUsageResult
        TroubleshootingRecommendedActions = Azure::Network::Mgmt::V2018_10_01::Models::TroubleshootingRecommendedActions
        IPAddressAvailabilityResult = Azure::Network::Mgmt::V2018_10_01::Models::IPAddressAvailabilityResult
        TroubleshootingDetails = Azure::Network::Mgmt::V2018_10_01::Models::TroubleshootingDetails
        DhcpOptions = Azure::Network::Mgmt::V2018_10_01::Models::DhcpOptions
        TroubleshootingResult = Azure::Network::Mgmt::V2018_10_01::Models::TroubleshootingResult
        VirtualNetworkPeeringListResult = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkPeeringListResult
        RetentionPolicyParameters = Azure::Network::Mgmt::V2018_10_01::Models::RetentionPolicyParameters
        ApplicationGatewayAvailableSslPredefinedPolicies = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayAvailableSslPredefinedPolicies
        FlowLogStatusParameters = Azure::Network::Mgmt::V2018_10_01::Models::FlowLogStatusParameters
        UsagesListResult = Azure::Network::Mgmt::V2018_10_01::Models::UsagesListResult
        FlowLogInformation = Azure::Network::Mgmt::V2018_10_01::Models::FlowLogInformation
        ExpressRouteCircuitPeeringConfig = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitPeeringConfig
        ConnectivitySource = Azure::Network::Mgmt::V2018_10_01::Models::ConnectivitySource
        BGPCommunity = Azure::Network::Mgmt::V2018_10_01::Models::BGPCommunity
        ConnectivityDestination = Azure::Network::Mgmt::V2018_10_01::Models::ConnectivityDestination
        ExpressRouteCircuitServiceProviderProperties = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitServiceProviderProperties
        ConnectivityParameters = Azure::Network::Mgmt::V2018_10_01::Models::ConnectivityParameters
        ExpressRouteCircuitRoutesTable = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitRoutesTable
        ConnectivityIssue = Azure::Network::Mgmt::V2018_10_01::Models::ConnectivityIssue
        ExpressRouteCircuitListResult = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitListResult
        ConnectivityHop = Azure::Network::Mgmt::V2018_10_01::Models::ConnectivityHop
        LoadBalancerSku = Azure::Network::Mgmt::V2018_10_01::Models::LoadBalancerSku
        ConnectivityInformation = Azure::Network::Mgmt::V2018_10_01::Models::ConnectivityInformation
        VpnDeviceScriptParameters = Azure::Network::Mgmt::V2018_10_01::Models::VpnDeviceScriptParameters
        AzureReachabilityReportLocation = Azure::Network::Mgmt::V2018_10_01::Models::AzureReachabilityReportLocation
        AzureReachabilityReportParameters = Azure::Network::Mgmt::V2018_10_01::Models::AzureReachabilityReportParameters
        ApplicationGatewayConnectionDraining = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayConnectionDraining
        AzureReachabilityReportLatencyInfo = Azure::Network::Mgmt::V2018_10_01::Models::AzureReachabilityReportLatencyInfo
        VpnClientParameters = Azure::Network::Mgmt::V2018_10_01::Models::VpnClientParameters
        AzureReachabilityReportItem = Azure::Network::Mgmt::V2018_10_01::Models::AzureReachabilityReportItem
        VirtualNetworkUsage = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkUsage
        AzureReachabilityReport = Azure::Network::Mgmt::V2018_10_01::Models::AzureReachabilityReport
        ApplicationGatewayFirewallRule = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayFirewallRule
        AvailableProvidersListParameters = Azure::Network::Mgmt::V2018_10_01::Models::AvailableProvidersListParameters
        TagsObject = Azure::Network::Mgmt::V2018_10_01::Models::TagsObject
        AvailableProvidersListCity = Azure::Network::Mgmt::V2018_10_01::Models::AvailableProvidersListCity
        ExpressRouteCircuitStats = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitStats
        AvailableProvidersListState = Azure::Network::Mgmt::V2018_10_01::Models::AvailableProvidersListState
        UsageName = Azure::Network::Mgmt::V2018_10_01::Models::UsageName
        ExpressRouteCircuitArpTable = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitArpTable
        RouteTableListResult = Azure::Network::Mgmt::V2018_10_01::Models::RouteTableListResult
        AvailableProvidersList = Azure::Network::Mgmt::V2018_10_01::Models::AvailableProvidersList
        LocalNetworkGatewayListResult = Azure::Network::Mgmt::V2018_10_01::Models::LocalNetworkGatewayListResult
        ConnectionMonitorSource = Azure::Network::Mgmt::V2018_10_01::Models::ConnectionMonitorSource
        ApplicationGatewayBackendHealthPool = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayBackendHealthPool
        AvailableProvidersListCountry = Azure::Network::Mgmt::V2018_10_01::Models::AvailableProvidersListCountry
        ApplicationGatewayFirewallDisabledRuleGroup = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayFirewallDisabledRuleGroup
        ConnectionMonitorParameters = Azure::Network::Mgmt::V2018_10_01::Models::ConnectionMonitorParameters
        ConnectionMonitorDestination = Azure::Network::Mgmt::V2018_10_01::Models::ConnectionMonitorDestination
        ExpressRouteCircuitRoutesTableSummary = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitRoutesTableSummary
        ConnectionMonitorResult = Azure::Network::Mgmt::V2018_10_01::Models::ConnectionMonitorResult
        TunnelConnectionHealth = Azure::Network::Mgmt::V2018_10_01::Models::TunnelConnectionHealth
        ConnectionMonitorListResult = Azure::Network::Mgmt::V2018_10_01::Models::ConnectionMonitorListResult
        SubnetListResult = Azure::Network::Mgmt::V2018_10_01::Models::SubnetListResult
        ConnectionMonitor = Azure::Network::Mgmt::V2018_10_01::Models::ConnectionMonitor
        RouteFilterListResult = Azure::Network::Mgmt::V2018_10_01::Models::RouteFilterListResult
        ConnectionMonitorQueryResult = Azure::Network::Mgmt::V2018_10_01::Models::ConnectionMonitorQueryResult
        ExpressRouteCircuitPeeringListResult = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitPeeringListResult
        VpnClientConfiguration = Azure::Network::Mgmt::V2018_10_01::Models::VpnClientConfiguration
        Availability = Azure::Network::Mgmt::V2018_10_01::Models::Availability
        ConnectionStateSnapshot = Azure::Network::Mgmt::V2018_10_01::Models::ConnectionStateSnapshot
        ApplicationGatewayBackendHttpSettings = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayBackendHttpSettings
        ApplicationGatewayIPConfiguration = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayIPConfiguration
        Resource = Azure::Network::Mgmt::V2018_10_01::Models::Resource
        ApplicationGatewayBackendAddressPool = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayBackendAddressPool
        ApplicationGatewayAuthenticationCertificate = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayAuthenticationCertificate
        ApplicationGatewaySslCertificate = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewaySslCertificate
        ApplicationGatewayFrontendIPConfiguration = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayFrontendIPConfiguration
        ApplicationGatewayWebApplicationFirewallConfiguration = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayWebApplicationFirewallConfiguration
        NetworkInterfaceIPConfiguration = Azure::Network::Mgmt::V2018_10_01::Models::NetworkInterfaceIPConfiguration
        Usage = Azure::Network::Mgmt::V2018_10_01::Models::Usage
        ApplicationGatewayFrontendPort = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayFrontendPort
        ApplicationGatewayHttpListener = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayHttpListener
        ApplicationGatewayPathRule = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayPathRule
        ApplicationGatewayProbe = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayProbe
        ApplicationGatewayRequestRoutingRule = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayRequestRoutingRule
        ApplicationGatewayRedirectConfiguration = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayRedirectConfiguration
        ApplicationGatewayUrlPathMap = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayUrlPathMap
        ApplicationGatewayTrustedRootCertificate = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayTrustedRootCertificate
        ApplicationGatewayFirewallRuleSet = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayFirewallRuleSet
        ApplicationGatewayAvailableSslOptions = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayAvailableSslOptions
        ApplicationGatewaySslPredefinedPolicy = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewaySslPredefinedPolicy
        ApplicationGateway = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGateway
        FrontendIPConfiguration = Azure::Network::Mgmt::V2018_10_01::Models::FrontendIPConfiguration
        AzureFirewall = Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewall
        ExpressRouteCircuitPeering = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitPeering
        EndpointServiceResult = Azure::Network::Mgmt::V2018_10_01::Models::EndpointServiceResult
        ExpressRouteCircuitAuthorization = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitAuthorization
        RouteFilterRule = Azure::Network::Mgmt::V2018_10_01::Models::RouteFilterRule
        InboundNatPool = Azure::Network::Mgmt::V2018_10_01::Models::InboundNatPool
        RouteFilter = Azure::Network::Mgmt::V2018_10_01::Models::RouteFilter
        ExpressRouteCircuit = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuit
        ExpressRouteServiceProvider = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteServiceProvider
        ExpressRoutePort = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRoutePort
        LoadBalancingRule = Azure::Network::Mgmt::V2018_10_01::Models::LoadBalancingRule
        Probe = Azure::Network::Mgmt::V2018_10_01::Models::Probe
        VirtualNetworkPeering = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkPeering
        PublicIPPrefix = Azure::Network::Mgmt::V2018_10_01::Models::PublicIPPrefix
        LoadBalancer = Azure::Network::Mgmt::V2018_10_01::Models::LoadBalancer
        NetworkWatcher = Azure::Network::Mgmt::V2018_10_01::Models::NetworkWatcher
        AzureFirewallIPConfiguration = Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallIPConfiguration
        PatchRouteFilter = Azure::Network::Mgmt::V2018_10_01::Models::PatchRouteFilter
        AzureFirewallNatRuleCollection = Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallNatRuleCollection
        VpnClientRevokedCertificate = Azure::Network::Mgmt::V2018_10_01::Models::VpnClientRevokedCertificate
        VirtualNetwork = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetwork
        PatchRouteFilterRule = Azure::Network::Mgmt::V2018_10_01::Models::PatchRouteFilterRule
        ExpressRouteCircuitConnection = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitConnection
        ExpressRouteCrossConnectionPeering = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCrossConnectionPeering
        ExpressRouteCrossConnection = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCrossConnection
        LocalNetworkGateway = Azure::Network::Mgmt::V2018_10_01::Models::LocalNetworkGateway
        ExpressRouteGateway = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteGateway
        ExpressRoutePortsLocation = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRoutePortsLocation
        ExpressRouteLink = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteLink
        BgpServiceCommunity = Azure::Network::Mgmt::V2018_10_01::Models::BgpServiceCommunity
        IPVersion = Azure::Network::Mgmt::V2018_10_01::Models::IPVersion
        ContainerNetworkInterfaceConfiguration = Azure::Network::Mgmt::V2018_10_01::Models::ContainerNetworkInterfaceConfiguration
        ContainerNetworkInterface = Azure::Network::Mgmt::V2018_10_01::Models::ContainerNetworkInterface
        VpnClientRootCertificate = Azure::Network::Mgmt::V2018_10_01::Models::VpnClientRootCertificate
        P2SVpnServerConfigVpnClientRootCertificate = Azure::Network::Mgmt::V2018_10_01::Models::P2SVpnServerConfigVpnClientRootCertificate
        VirtualNetworkGateway = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGateway
        P2SVpnServerConfigRadiusServerRootCertificate = Azure::Network::Mgmt::V2018_10_01::Models::P2SVpnServerConfigRadiusServerRootCertificate
        VirtualNetworkGatewayConnection = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewayConnection
        VirtualNetworkGatewayConnectionListEntity = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewayConnectionListEntity
        VirtualNetworkGatewayIPConfiguration = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewayIPConfiguration
        VpnSite = Azure::Network::Mgmt::V2018_10_01::Models::VpnSite
        HubVirtualNetworkConnection = Azure::Network::Mgmt::V2018_10_01::Models::HubVirtualNetworkConnection
        VirtualHub = Azure::Network::Mgmt::V2018_10_01::Models::VirtualHub
        NetworkProfile = Azure::Network::Mgmt::V2018_10_01::Models::NetworkProfile
        VpnGateway = Azure::Network::Mgmt::V2018_10_01::Models::VpnGateway
        P2SVpnGateway = Azure::Network::Mgmt::V2018_10_01::Models::P2SVpnGateway
        ConnectionSharedKey = Azure::Network::Mgmt::V2018_10_01::Models::ConnectionSharedKey
        ApplicationGatewayCookieBasedAffinity = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayCookieBasedAffinity
        ApplicationGatewayBackendHealthServerHealth = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayBackendHealthServerHealth
        ApplicationGatewaySkuName = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewaySkuName
        ApplicationGatewayTier = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayTier
        ApplicationGatewaySslProtocol = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewaySslProtocol
        ApplicationGatewaySslPolicyType = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewaySslPolicyType
        ApplicationGatewaySslPolicyName = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewaySslPolicyName
        ApplicationGatewayProtocol = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayProtocol
        ApplicationGatewayRequestRoutingRuleType = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayRequestRoutingRuleType
        P2SVpnServerConfigVpnClientRevokedCertificate = Azure::Network::Mgmt::V2018_10_01::Models::P2SVpnServerConfigVpnClientRevokedCertificate
        ApplicationGatewayOperationalState = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayOperationalState
        P2SVpnServerConfigRadiusClientRootCertificate = Azure::Network::Mgmt::V2018_10_01::Models::P2SVpnServerConfigRadiusClientRootCertificate
        P2SVpnServerConfiguration = Azure::Network::Mgmt::V2018_10_01::Models::P2SVpnServerConfiguration
        VirtualWAN = Azure::Network::Mgmt::V2018_10_01::Models::VirtualWAN
        ProvisioningState = Azure::Network::Mgmt::V2018_10_01::Models::ProvisioningState
        RouteNextHopType = Azure::Network::Mgmt::V2018_10_01::Models::RouteNextHopType
        SecurityRuleProtocol = Azure::Network::Mgmt::V2018_10_01::Models::SecurityRuleProtocol
        VpnConnection = Azure::Network::Mgmt::V2018_10_01::Models::VpnConnection
        SecurityRuleDirection = Azure::Network::Mgmt::V2018_10_01::Models::SecurityRuleDirection
        TransportProtocol = Azure::Network::Mgmt::V2018_10_01::Models::TransportProtocol
        IPAllocationMethod = Azure::Network::Mgmt::V2018_10_01::Models::IPAllocationMethod
        PublicIPAddressSkuName = Azure::Network::Mgmt::V2018_10_01::Models::PublicIPAddressSkuName
        AzureFirewallApplicationRuleProtocolType = Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallApplicationRuleProtocolType
        AzureFirewallNatRCActionType = Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallNatRCActionType
        ApplicationGatewaySslCipherSuite = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewaySslCipherSuite
        ResourceIdentityType = Azure::Network::Mgmt::V2018_10_01::Models::ResourceIdentityType
        ApplicationGatewayRedirectType = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayRedirectType
        CircuitConnectionStatus = Azure::Network::Mgmt::V2018_10_01::Models::CircuitConnectionStatus
        ApplicationGatewayFirewallMode = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayFirewallMode
        AuthorizationUseStatus = Azure::Network::Mgmt::V2018_10_01::Models::AuthorizationUseStatus
        ExpressRouteCircuitPeeringAdvertisedPublicPrefixState = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitPeeringAdvertisedPublicPrefixState
        Access = Azure::Network::Mgmt::V2018_10_01::Models::Access
        EffectiveSecurityRuleProtocol = Azure::Network::Mgmt::V2018_10_01::Models::EffectiveSecurityRuleProtocol
        ExpressRouteCircuitPeeringState = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitPeeringState
        ExpressRouteCircuitSkuTier = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitSkuTier
        ExpressRouteCircuitSkuFamily = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitSkuFamily
        ServiceProviderProvisioningState = Azure::Network::Mgmt::V2018_10_01::Models::ServiceProviderProvisioningState
        LoadBalancerSkuName = Azure::Network::Mgmt::V2018_10_01::Models::LoadBalancerSkuName
        LoadDistribution = Azure::Network::Mgmt::V2018_10_01::Models::LoadDistribution
        ProbeProtocol = Azure::Network::Mgmt::V2018_10_01::Models::ProbeProtocol
        NetworkOperationStatus = Azure::Network::Mgmt::V2018_10_01::Models::NetworkOperationStatus
        PcError = Azure::Network::Mgmt::V2018_10_01::Models::PcError
        ApplicationGatewayCustomErrorStatusCode = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayCustomErrorStatusCode
        SecurityRuleAccess = Azure::Network::Mgmt::V2018_10_01::Models::SecurityRuleAccess
        ConnectionStatus = Azure::Network::Mgmt::V2018_10_01::Models::ConnectionStatus
        AssociationType = Azure::Network::Mgmt::V2018_10_01::Models::AssociationType
        AzureFirewallNetworkRuleProtocol = Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallNetworkRuleProtocol
        ExpressRoutePeeringType = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRoutePeeringType
        ExpressRoutePeeringState = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRoutePeeringState
        PcStatus = Azure::Network::Mgmt::V2018_10_01::Models::PcStatus
        ExpressRouteLinkConnectorType = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteLinkConnectorType
        ExpressRouteLinkAdminState = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteLinkAdminState
        ExpressRoutePortsEncapsulation = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRoutePortsEncapsulation
        EffectiveRouteState = Azure::Network::Mgmt::V2018_10_01::Models::EffectiveRouteState
        FlowLogFormatType = Azure::Network::Mgmt::V2018_10_01::Models::FlowLogFormatType
        HTTPMethod = Azure::Network::Mgmt::V2018_10_01::Models::HTTPMethod
        Direction = Azure::Network::Mgmt::V2018_10_01::Models::Direction
        NextHopType = Azure::Network::Mgmt::V2018_10_01::Models::NextHopType
        PcProtocol = Azure::Network::Mgmt::V2018_10_01::Models::PcProtocol
        VirtualNetworkGatewaySkuName = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewaySkuName
        VirtualNetworkGatewaySkuTier = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewaySkuTier
        Origin = Azure::Network::Mgmt::V2018_10_01::Models::Origin
        IssueType = Azure::Network::Mgmt::V2018_10_01::Models::IssueType
        EffectiveRouteSource = Azure::Network::Mgmt::V2018_10_01::Models::EffectiveRouteSource
        ConnectionState = Azure::Network::Mgmt::V2018_10_01::Models::ConnectionState
        EvaluationState = Azure::Network::Mgmt::V2018_10_01::Models::EvaluationState
        ServiceAssociationLink = Azure::Network::Mgmt::V2018_10_01::Models::ServiceAssociationLink
        VirtualNetworkGatewayType = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewayType
        VpnType = Azure::Network::Mgmt::V2018_10_01::Models::VpnType
        IkeEncryption = Azure::Network::Mgmt::V2018_10_01::Models::IkeEncryption
        Protocol = Azure::Network::Mgmt::V2018_10_01::Models::Protocol
        VpnClientProtocol = Azure::Network::Mgmt::V2018_10_01::Models::VpnClientProtocol
        PfsGroup = Azure::Network::Mgmt::V2018_10_01::Models::PfsGroup
        ProcessorArchitecture = Azure::Network::Mgmt::V2018_10_01::Models::ProcessorArchitecture
        AuthenticationMethod = Azure::Network::Mgmt::V2018_10_01::Models::AuthenticationMethod
        VirtualNetworkGatewayConnectionStatus = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewayConnectionStatus
        IpFlowProtocol = Azure::Network::Mgmt::V2018_10_01::Models::IpFlowProtocol
        VirtualNetworkPeeringState = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkPeeringState
        IpsecIntegrity = Azure::Network::Mgmt::V2018_10_01::Models::IpsecIntegrity
        ConnectionMonitorSourceStatus = Azure::Network::Mgmt::V2018_10_01::Models::ConnectionMonitorSourceStatus
        VerbosityLevel = Azure::Network::Mgmt::V2018_10_01::Models::VerbosityLevel
        Container = Azure::Network::Mgmt::V2018_10_01::Models::Container
        VirtualNetworkGatewayConnectionProtocol = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewayConnectionProtocol
        BgpPeerState = Azure::Network::Mgmt::V2018_10_01::Models::BgpPeerState
        VpnGatewayTunnelingProtocol = Azure::Network::Mgmt::V2018_10_01::Models::VpnGatewayTunnelingProtocol
        VpnConnectionStatus = Azure::Network::Mgmt::V2018_10_01::Models::VpnConnectionStatus
        VirtualWanSecurityProviderType = Azure::Network::Mgmt::V2018_10_01::Models::VirtualWanSecurityProviderType
        VirtualNetworkGatewayConnectionType = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewayConnectionType
        IpsecEncryption = Azure::Network::Mgmt::V2018_10_01::Models::IpsecEncryption
        AzureFirewallRCActionType = Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallRCActionType
        IkeIntegrity = Azure::Network::Mgmt::V2018_10_01::Models::IkeIntegrity
        DhGroup = Azure::Network::Mgmt::V2018_10_01::Models::DhGroup
      end

      class NetworkManagementClass
        attr_reader :application_gateways, :application_security_groups, :available_endpoint_services, :express_route_circuit_authorizations, :express_route_circuit_peerings, :express_route_circuits, :express_route_service_providers, :load_balancers, :load_balancer_backend_address_pools, :load_balancer_frontend_ipconfigurations, :inbound_nat_rules, :load_balancer_load_balancing_rules, :load_balancer_network_interfaces, :load_balancer_probes, :network_interface_ipconfigurations, :network_interface_load_balancers, :network_security_groups, :security_rules, :default_security_rules, :network_watchers, :packet_captures, :connection_monitors, :available_resource_group_delegations, :azure_firewalls, :available_delegations, :ddos_protection_plans, :express_route_circuit_connections, :azure_firewall_fqdn_tags, :express_route_ports_locations, :express_route_ports, :express_route_links, :interface_endpoints, :load_balancer_outbound_rules, :network_interface_tap_configurations, :network_profiles, :public_ipprefixes, :express_route_gateways, :express_route_connections, :route_filter_rules, :express_route_cross_connections, :express_route_cross_connection_peerings, :bgp_service_communities, :service_endpoint_policies, :network_interfaces, :public_ipaddresses, :route_tables, :routes, :service_endpoint_policy_definitions, :usages, :virtual_networks, :route_filters, :virtual_network_peerings, :virtual_network_gateways, :virtual_network_gateway_connections, :local_network_gateways, :vpn_sites, :vpn_sites_configuration, :subnets, :hub_virtual_network_connections, :virtual_network_taps, :virtual_wans, :p2s_vpn_server_configurations, :operations, :virtual_hubs, :vpn_gateways, :vpn_connections, :p2s_vpn_gateways, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Network::Mgmt::V2017_03_30::NetworkManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)

          @client_1 = Azure::Network::Mgmt::V2018_10_01::NetworkManagementClient.new(configurable.credentials, base_url, options)
          if(@client_1.respond_to?(:subscription_id))
            @client_1.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_1)
          @application_gateways = @client_1.application_gateways
          @application_security_groups = @client_1.application_security_groups
          @available_endpoint_services = @client_1.available_endpoint_services
          @express_route_circuit_authorizations = @client_1.express_route_circuit_authorizations
          @express_route_circuit_peerings = @client_1.express_route_circuit_peerings
          @express_route_circuits = @client_1.express_route_circuits
          @express_route_service_providers = @client_1.express_route_service_providers
          @load_balancers = @client_1.load_balancers
          @load_balancer_backend_address_pools = @client_1.load_balancer_backend_address_pools
          @load_balancer_frontend_ipconfigurations = @client_1.load_balancer_frontend_ipconfigurations
          @inbound_nat_rules = @client_1.inbound_nat_rules
          @load_balancer_load_balancing_rules = @client_1.load_balancer_load_balancing_rules
          @load_balancer_network_interfaces = @client_1.load_balancer_network_interfaces
          @load_balancer_probes = @client_1.load_balancer_probes
          @network_interface_ipconfigurations = @client_1.network_interface_ipconfigurations
          @network_interface_load_balancers = @client_1.network_interface_load_balancers
          @network_security_groups = @client_1.network_security_groups
          @security_rules = @client_1.security_rules
          @default_security_rules = @client_1.default_security_rules
          @network_watchers = @client_1.network_watchers
          @packet_captures = @client_1.packet_captures
          @connection_monitors = @client_1.connection_monitors
          @available_resource_group_delegations = @client_1.available_resource_group_delegations
          @azure_firewalls = @client_1.azure_firewalls
          @available_delegations = @client_1.available_delegations
          @ddos_protection_plans = @client_1.ddos_protection_plans
          @express_route_circuit_connections = @client_1.express_route_circuit_connections
          @azure_firewall_fqdn_tags = @client_1.azure_firewall_fqdn_tags
          @express_route_ports_locations = @client_1.express_route_ports_locations
          @express_route_ports = @client_1.express_route_ports
          @express_route_links = @client_1.express_route_links
          @interface_endpoints = @client_1.interface_endpoints
          @load_balancer_outbound_rules = @client_1.load_balancer_outbound_rules
          @network_interface_tap_configurations = @client_1.network_interface_tap_configurations
          @network_profiles = @client_1.network_profiles
          @public_ipprefixes = @client_1.public_ipprefixes
          @express_route_gateways = @client_1.express_route_gateways
          @express_route_connections = @client_1.express_route_connections
          @route_filter_rules = @client_1.route_filter_rules
          @express_route_cross_connections = @client_1.express_route_cross_connections
          @express_route_cross_connection_peerings = @client_1.express_route_cross_connection_peerings
          @bgp_service_communities = @client_1.bgp_service_communities
          @service_endpoint_policies = @client_1.service_endpoint_policies
          @network_interfaces = @client_1.network_interfaces
          @public_ipaddresses = @client_1.public_ipaddresses
          @route_tables = @client_1.route_tables
          @routes = @client_1.routes
          @service_endpoint_policy_definitions = @client_1.service_endpoint_policy_definitions
          @usages = @client_1.usages
          @virtual_networks = @client_1.virtual_networks
          @route_filters = @client_1.route_filters
          @virtual_network_peerings = @client_1.virtual_network_peerings
          @virtual_network_gateways = @client_1.virtual_network_gateways
          @virtual_network_gateway_connections = @client_1.virtual_network_gateway_connections
          @local_network_gateways = @client_1.local_network_gateways
          @vpn_sites = @client_1.vpn_sites
          @vpn_sites_configuration = @client_1.vpn_sites_configuration
          @subnets = @client_1.subnets
          @hub_virtual_network_connections = @client_1.hub_virtual_network_connections
          @virtual_network_taps = @client_1.virtual_network_taps
          @virtual_wans = @client_1.virtual_wans
          @p2s_vpn_server_configurations = @client_1.p2s_vpn_server_configurations
          @operations = @client_1.operations
          @virtual_hubs = @client_1.virtual_hubs
          @vpn_gateways = @client_1.vpn_gateways
          @vpn_connections = @client_1.vpn_connections
          @p2s_vpn_gateways = @client_1.p2s_vpn_gateways

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Network/Mgmt"
          client.add_user_agent_information(profile_information)
        end

        def method_missing(method, *args)
          if @client_1.respond_to?method
            @client_1.send(method, *args)
          elsif @client_0.respond_to?method
            @client_0.send(method, *args)
          else
            super
          end
        end

        class ModelClasses
          def public_ipprefix_sku_name
            Azure::Network::Mgmt::V2018_10_01::Models::PublicIPPrefixSkuName
          end
          def office_traffic_category
            Azure::Network::Mgmt::V2018_10_01::Models::OfficeTrafficCategory
          end
          def tunnel_connection_status
            Azure::Network::Mgmt::V2018_10_01::Models::TunnelConnectionStatus
          end
          def hub_virtual_network_connection_status
            Azure::Network::Mgmt::V2018_10_01::Models::HubVirtualNetworkConnectionStatus
          end
          def log_specification
            Azure::Network::Mgmt::V2018_10_01::Models::LogSpecification
          end
          def httpheader
            Azure::Network::Mgmt::V2018_10_01::Models::HTTPHeader
          end
          def severity
            Azure::Network::Mgmt::V2018_10_01::Models::Severity
          end
          def managed_service_identity
            Azure::Network::Mgmt::V2018_10_01::Models::ManagedServiceIdentity
          end
          def error_response
            Azure::Network::Mgmt::V2018_10_01::Models::ErrorResponse
          end
          def public_ipaddress_sku
            Azure::Network::Mgmt::V2018_10_01::Models::PublicIPAddressSku
          end
          def application_gateway_backend_address
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayBackendAddress
          end
          def container_network_interface_ip_configuration
            Azure::Network::Mgmt::V2018_10_01::Models::ContainerNetworkInterfaceIpConfiguration
          end
          def network_interface_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::NetworkInterfaceListResult
          end
          def express_route_circuit_reference
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitReference
          end
          def network_interface_ipconfiguration_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::NetworkInterfaceIPConfigurationListResult
          end
          def express_route_cross_connection_peering_list
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCrossConnectionPeeringList
          end
          def endpoint_service
            Azure::Network::Mgmt::V2018_10_01::Models::EndpointService
          end
          def network_interface_dns_settings
            Azure::Network::Mgmt::V2018_10_01::Models::NetworkInterfaceDnsSettings
          end
          def virtual_wan_security_providers
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualWanSecurityProviders
          end
          def vpn_client_connection_health
            Azure::Network::Mgmt::V2018_10_01::Models::VpnClientConnectionHealth
          end
          def express_route_cross_connection_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCrossConnectionListResult
          end
          def express_route_gateway_properties_auto_scale_configuration_bounds
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteGatewayPropertiesAutoScaleConfigurationBounds
          end
          def express_route_circuit_peering_id
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitPeeringId
          end
          def virtual_hub_id
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualHubId
          end
          def ip_tag
            Azure::Network::Mgmt::V2018_10_01::Models::IpTag
          end
          def list_vpn_connections_result
            Azure::Network::Mgmt::V2018_10_01::Models::ListVpnConnectionsResult
          end
          def express_route_gateway_list
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteGatewayList
          end
          def virtual_hub_route
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualHubRoute
          end
          def express_route_gateway_properties_auto_scale_configuration
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteGatewayPropertiesAutoScaleConfiguration
          end
          def list_vpn_sites_result
            Azure::Network::Mgmt::V2018_10_01::Models::ListVpnSitesResult
          end
          def express_route_ports_location_bandwidths
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRoutePortsLocationBandwidths
          end
          def list_virtual_hubs_result
            Azure::Network::Mgmt::V2018_10_01::Models::ListVirtualHubsResult
          end
          def list_virtual_wans_result
            Azure::Network::Mgmt::V2018_10_01::Models::ListVirtualWANsResult
          end
          def express_route_ports_location_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRoutePortsLocationListResult
          end
          def express_route_connection_list
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteConnectionList
          end
          def virtual_wan_security_provider
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualWanSecurityProvider
          end
          def public_ipprefix_sku
            Azure::Network::Mgmt::V2018_10_01::Models::PublicIPPrefixSku
          end
          def referenced_public_ip_address
            Azure::Network::Mgmt::V2018_10_01::Models::ReferencedPublicIpAddress
          end
          def public_ipprefix_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::PublicIPPrefixListResult
          end
          def vpn_client_ipsec_parameters
            Azure::Network::Mgmt::V2018_10_01::Models::VpnClientIPsecParameters
          end
          def express_route_port_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRoutePortListResult
          end
          def express_route_link_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteLinkListResult
          end
          def application_gateway_autoscale_configuration
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayAutoscaleConfiguration
          end
          def load_balancer_outbound_rule_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::LoadBalancerOutboundRuleListResult
          end
          def network_interface_tap_configuration_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::NetworkInterfaceTapConfigurationListResult
          end
          def available_delegations_result
            Azure::Network::Mgmt::V2018_10_01::Models::AvailableDelegationsResult
          end
          def azure_firewall_rcaction
            Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallRCAction
          end
          def azure_firewall_application_rule
            Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallApplicationRule
          end
          def azure_firewall_nat_rcaction
            Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallNatRCAction
          end
          def azure_firewall_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallListResult
          end
          def operation_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::OperationListResult
          end
          def application_gateway_firewall_exclusion
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayFirewallExclusion
          end
          def ddos_protection_plan
            Azure::Network::Mgmt::V2018_10_01::Models::DdosProtectionPlan
          end
          def interface_endpoint_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::InterfaceEndpointListResult
          end
          def service_endpoint_policy_definition_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::ServiceEndpointPolicyDefinitionListResult
          end
          def operation
            Azure::Network::Mgmt::V2018_10_01::Models::Operation
          end
          def public_ipaddress_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::PublicIPAddressListResult
          end
          def p2_svpn_profile_parameters
            Azure::Network::Mgmt::V2018_10_01::Models::P2SVpnProfileParameters
          end
          def network_configuration_diagnostic_response
            Azure::Network::Mgmt::V2018_10_01::Models::NetworkConfigurationDiagnosticResponse
          end
          def vpn_site_id
            Azure::Network::Mgmt::V2018_10_01::Models::VpnSiteId
          end
          def azure_firewall_fqdn_tag_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallFqdnTagListResult
          end
          def application_gateway_rewrite_rule_action_set
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayRewriteRuleActionSet
          end
          def express_route_cross_connection_routes_table_summary
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCrossConnectionRoutesTableSummary
          end
          def network_profile_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::NetworkProfileListResult
          end
          def list_p2_svpn_server_configurations_result
            Azure::Network::Mgmt::V2018_10_01::Models::ListP2SVpnServerConfigurationsResult
          end
          def network_configuration_diagnostic_result
            Azure::Network::Mgmt::V2018_10_01::Models::NetworkConfigurationDiagnosticResult
          end
          def application_gateway_custom_error
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayCustomError
          end
          def application_gateway_rewrite_rule
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayRewriteRule
          end
          def device_properties
            Azure::Network::Mgmt::V2018_10_01::Models::DeviceProperties
          end
          def azure_firewall_network_rule
            Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallNetworkRule
          end
          def operation_display
            Azure::Network::Mgmt::V2018_10_01::Models::OperationDisplay
          end
          def virtual_hub_route_table
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualHubRouteTable
          end
          def traffic_analytics_properties
            Azure::Network::Mgmt::V2018_10_01::Models::TrafficAnalyticsProperties
          end
          def ddos_protection_plan_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::DdosProtectionPlanListResult
          end
          def flow_log_format_parameters
            Azure::Network::Mgmt::V2018_10_01::Models::FlowLogFormatParameters
          end
          def list_hub_virtual_network_connections_result
            Azure::Network::Mgmt::V2018_10_01::Models::ListHubVirtualNetworkConnectionsResult
          end
          def traffic_analytics_configuration_properties
            Azure::Network::Mgmt::V2018_10_01::Models::TrafficAnalyticsConfigurationProperties
          end
          def get_vpn_sites_configuration_request
            Azure::Network::Mgmt::V2018_10_01::Models::GetVpnSitesConfigurationRequest
          end
          def express_route_cross_connections_routes_table_summary_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCrossConnectionsRoutesTableSummaryListResult
          end
          def express_route_connection_id
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteConnectionId
          end
          def managed_service_identity_user_assigned_identities_value
            Azure::Network::Mgmt::V2018_10_01::Models::ManagedServiceIdentityUserAssignedIdentitiesValue
          end
          def protocol_configuration
            Azure::Network::Mgmt::V2018_10_01::Models::ProtocolConfiguration
          end
          def virtual_network_tap_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkTapListResult
          end
          def list_p2_svpn_gateways_result
            Azure::Network::Mgmt::V2018_10_01::Models::ListP2SVpnGatewaysResult
          end
          def httpconfiguration
            Azure::Network::Mgmt::V2018_10_01::Models::HTTPConfiguration
          end
          def network_configuration_diagnostic_profile
            Azure::Network::Mgmt::V2018_10_01::Models::NetworkConfigurationDiagnosticProfile
          end
          def network_configuration_diagnostic_parameters
            Azure::Network::Mgmt::V2018_10_01::Models::NetworkConfigurationDiagnosticParameters
          end
          def azure_firewall_application_rule_protocol
            Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallApplicationRuleProtocol
          end
          def service_endpoint_policy_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::ServiceEndpointPolicyListResult
          end
          def application_gateway_header_configuration
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayHeaderConfiguration
          end
          def available_delegation
            Azure::Network::Mgmt::V2018_10_01::Models::AvailableDelegation
          end
          def public_ipaddress_dns_settings
            Azure::Network::Mgmt::V2018_10_01::Models::PublicIPAddressDnsSettings
          end
          def evaluated_network_security_group
            Azure::Network::Mgmt::V2018_10_01::Models::EvaluatedNetworkSecurityGroup
          end
          def service_endpoint_properties_format
            Azure::Network::Mgmt::V2018_10_01::Models::ServiceEndpointPropertiesFormat
          end
          def list_vpn_gateways_result
            Azure::Network::Mgmt::V2018_10_01::Models::ListVpnGatewaysResult
          end
          def matched_rule
            Azure::Network::Mgmt::V2018_10_01::Models::MatchedRule
          end
          def vpn_profile_response
            Azure::Network::Mgmt::V2018_10_01::Models::VpnProfileResponse
          end
          def network_security_rules_evaluation_result
            Azure::Network::Mgmt::V2018_10_01::Models::NetworkSecurityRulesEvaluationResult
          end
          def interface_endpoint
            Azure::Network::Mgmt::V2018_10_01::Models::InterfaceEndpoint
          end
          def service_endpoint_policy_definition
            Azure::Network::Mgmt::V2018_10_01::Models::ServiceEndpointPolicyDefinition
          end
          def network_security_group_result
            Azure::Network::Mgmt::V2018_10_01::Models::NetworkSecurityGroupResult
          end
          def azure_firewall_nat_rule
            Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallNatRule
          end
          def ipconfiguration
            Azure::Network::Mgmt::V2018_10_01::Models::IPConfiguration
          end
          def virtual_network_tap
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkTap
          end
          def service_endpoint_policy
            Azure::Network::Mgmt::V2018_10_01::Models::ServiceEndpointPolicy
          end
          def network_interface
            Azure::Network::Mgmt::V2018_10_01::Models::NetworkInterface
          end
          def network_interface_tap_configuration
            Azure::Network::Mgmt::V2018_10_01::Models::NetworkInterfaceTapConfiguration
          end
          def route_table
            Azure::Network::Mgmt::V2018_10_01::Models::RouteTable
          end
          def application_security_group
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationSecurityGroup
          end
          def resource_navigation_link
            Azure::Network::Mgmt::V2018_10_01::Models::ResourceNavigationLink
          end
          def route
            Azure::Network::Mgmt::V2018_10_01::Models::Route
          end
          def security_rule
            Azure::Network::Mgmt::V2018_10_01::Models::SecurityRule
          end
          def express_route_connection
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteConnection
          end
          def backend_address_pool
            Azure::Network::Mgmt::V2018_10_01::Models::BackendAddressPool
          end
          def inbound_nat_rule
            Azure::Network::Mgmt::V2018_10_01::Models::InboundNatRule
          end
          def azure_firewall_fqdn_tag
            Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallFqdnTag
          end
          def error
            Azure::Network::Mgmt::V2018_10_01::Models::Error
          end
          def delegation
            Azure::Network::Mgmt::V2018_10_01::Models::Delegation
          end
          def azure_firewall_network_rule_collection
            Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallNetworkRuleCollection
          end
          def network_security_group
            Azure::Network::Mgmt::V2018_10_01::Models::NetworkSecurityGroup
          end
          def application_gateway_rewrite_rule_set
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayRewriteRuleSet
          end
          def subnet
            Azure::Network::Mgmt::V2018_10_01::Models::Subnet
          end
          def azure_firewall_application_rule_collection
            Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallApplicationRuleCollection
          end
          def ipconfiguration_profile
            Azure::Network::Mgmt::V2018_10_01::Models::IPConfigurationProfile
          end
          def outbound_rule
            Azure::Network::Mgmt::V2018_10_01::Models::OutboundRule
          end
          def topology_association
            Azure::Network::Mgmt::V2018_10_01::Models::TopologyAssociation
          end
          def topology_resource
            Azure::Network::Mgmt::V2018_10_01::Models::TopologyResource
          end
          def operation_properties_format_service_specification
            Azure::Network::Mgmt::V2018_10_01::Models::OperationPropertiesFormatServiceSpecification
          end
          def virtual_network_connection_gateway_reference
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkConnectionGatewayReference
          end
          def load_balancer_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::LoadBalancerListResult
          end
          def public_ipaddress
            Azure::Network::Mgmt::V2018_10_01::Models::PublicIPAddress
          end
          def inbound_nat_rule_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::InboundNatRuleListResult
          end
          def load_balancer_backend_address_pool_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::LoadBalancerBackendAddressPoolListResult
          end
          def connection_reset_shared_key
            Azure::Network::Mgmt::V2018_10_01::Models::ConnectionResetSharedKey
          end
          def load_balancer_frontend_ipconfiguration_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::LoadBalancerFrontendIPConfigurationListResult
          end
          def ipsec_policy
            Azure::Network::Mgmt::V2018_10_01::Models::IpsecPolicy
          end
          def load_balancer_load_balancing_rule_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::LoadBalancerLoadBalancingRuleListResult
          end
          def gateway_route_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::GatewayRouteListResult
          end
          def load_balancer_probe_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::LoadBalancerProbeListResult
          end
          def bgp_peer_status_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::BgpPeerStatusListResult
          end
          def virtual_network_gateway_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewayListResult
          end
          def error_details
            Azure::Network::Mgmt::V2018_10_01::Models::ErrorDetails
          end
          def application_gateway_backend_health_http_settings
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayBackendHealthHttpSettings
          end
          def application_gateway_backend_health
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayBackendHealth
          end
          def azure_async_operation_result
            Azure::Network::Mgmt::V2018_10_01::Models::AzureAsyncOperationResult
          end
          def application_gateway_ssl_policy
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewaySslPolicy
          end
          def gateway_route
            Azure::Network::Mgmt::V2018_10_01::Models::GatewayRoute
          end
          def network_interface_load_balancer_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::NetworkInterfaceLoadBalancerListResult
          end
          def bgp_settings
            Azure::Network::Mgmt::V2018_10_01::Models::BgpSettings
          end
          def effective_network_security_group_association
            Azure::Network::Mgmt::V2018_10_01::Models::EffectiveNetworkSecurityGroupAssociation
          end
          def virtual_network_gateway_sku
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewaySku
          end
          def effective_network_security_rule
            Azure::Network::Mgmt::V2018_10_01::Models::EffectiveNetworkSecurityRule
          end
          def application_gateway_probe_health_response_match
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayProbeHealthResponseMatch
          end
          def effective_network_security_group
            Azure::Network::Mgmt::V2018_10_01::Models::EffectiveNetworkSecurityGroup
          end
          def virtual_network_usage_name
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkUsageName
          end
          def effective_network_security_group_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::EffectiveNetworkSecurityGroupListResult
          end
          def virtual_network_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkListResult
          end
          def effective_route
            Azure::Network::Mgmt::V2018_10_01::Models::EffectiveRoute
          end
          def sub_resource
            Azure::Network::Mgmt::V2018_10_01::Models::SubResource
          end
          def effective_route_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::EffectiveRouteListResult
          end
          def application_gateway_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayListResult
          end
          def security_rule_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::SecurityRuleListResult
          end
          def application_gateway_firewall_rule_group
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayFirewallRuleGroup
          end
          def network_security_group_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::NetworkSecurityGroupListResult
          end
          def application_gateway_available_waf_rule_sets_result
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayAvailableWafRuleSetsResult
          end
          def address_space
            Azure::Network::Mgmt::V2018_10_01::Models::AddressSpace
          end
          def network_watcher_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::NetworkWatcherListResult
          end
          def topology_parameters
            Azure::Network::Mgmt::V2018_10_01::Models::TopologyParameters
          end
          def application_security_group_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationSecurityGroupListResult
          end
          def dns_name_availability_result
            Azure::Network::Mgmt::V2018_10_01::Models::DnsNameAvailabilityResult
          end
          def dimension
            Azure::Network::Mgmt::V2018_10_01::Models::Dimension
          end
          def endpoint_services_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::EndpointServicesListResult
          end
          def metric_specification
            Azure::Network::Mgmt::V2018_10_01::Models::MetricSpecification
          end
          def authorization_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::AuthorizationListResult
          end
          def topology
            Azure::Network::Mgmt::V2018_10_01::Models::Topology
          end
          def verification_ipflow_parameters
            Azure::Network::Mgmt::V2018_10_01::Models::VerificationIPFlowParameters
          end
          def bgp_service_community_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::BgpServiceCommunityListResult
          end
          def verification_ipflow_result
            Azure::Network::Mgmt::V2018_10_01::Models::VerificationIPFlowResult
          end
          def ipv6_express_route_circuit_peering_config
            Azure::Network::Mgmt::V2018_10_01::Models::Ipv6ExpressRouteCircuitPeeringConfig
          end
          def next_hop_parameters
            Azure::Network::Mgmt::V2018_10_01::Models::NextHopParameters
          end
          def express_route_circuit_sku
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitSku
          end
          def next_hop_result
            Azure::Network::Mgmt::V2018_10_01::Models::NextHopResult
          end
          def route_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::RouteListResult
          end
          def security_group_view_parameters
            Azure::Network::Mgmt::V2018_10_01::Models::SecurityGroupViewParameters
          end
          def express_route_circuits_arp_table_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitsArpTableListResult
          end
          def network_interface_association
            Azure::Network::Mgmt::V2018_10_01::Models::NetworkInterfaceAssociation
          end
          def express_route_circuits_routes_table_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitsRoutesTableListResult
          end
          def subnet_association
            Azure::Network::Mgmt::V2018_10_01::Models::SubnetAssociation
          end
          def express_route_circuits_routes_table_summary_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitsRoutesTableSummaryListResult
          end
          def security_rule_associations
            Azure::Network::Mgmt::V2018_10_01::Models::SecurityRuleAssociations
          end
          def express_route_service_provider_bandwidths_offered
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteServiceProviderBandwidthsOffered
          end
          def security_group_network_interface
            Azure::Network::Mgmt::V2018_10_01::Models::SecurityGroupNetworkInterface
          end
          def express_route_service_provider_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteServiceProviderListResult
          end
          def security_group_view_result
            Azure::Network::Mgmt::V2018_10_01::Models::SecurityGroupViewResult
          end
          def route_filter_rule_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::RouteFilterRuleListResult
          end
          def packet_capture_storage_location
            Azure::Network::Mgmt::V2018_10_01::Models::PacketCaptureStorageLocation
          end
          def packet_capture_filter
            Azure::Network::Mgmt::V2018_10_01::Models::PacketCaptureFilter
          end
          def virtual_network_gateway_list_connections_result
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewayListConnectionsResult
          end
          def packet_capture_parameters
            Azure::Network::Mgmt::V2018_10_01::Models::PacketCaptureParameters
          end
          def packet_capture
            Azure::Network::Mgmt::V2018_10_01::Models::PacketCapture
          end
          def virtual_network_gateway_connection_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewayConnectionListResult
          end
          def packet_capture_result
            Azure::Network::Mgmt::V2018_10_01::Models::PacketCaptureResult
          end
          def packet_capture_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::PacketCaptureListResult
          end
          def application_gateway_backend_health_server
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayBackendHealthServer
          end
          def packet_capture_query_status_result
            Azure::Network::Mgmt::V2018_10_01::Models::PacketCaptureQueryStatusResult
          end
          def application_gateway_sku
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewaySku
          end
          def troubleshooting_parameters
            Azure::Network::Mgmt::V2018_10_01::Models::TroubleshootingParameters
          end
          def bgp_peer_status
            Azure::Network::Mgmt::V2018_10_01::Models::BgpPeerStatus
          end
          def query_troubleshooting_parameters
            Azure::Network::Mgmt::V2018_10_01::Models::QueryTroubleshootingParameters
          end
          def virtual_network_list_usage_result
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkListUsageResult
          end
          def troubleshooting_recommended_actions
            Azure::Network::Mgmt::V2018_10_01::Models::TroubleshootingRecommendedActions
          end
          def ipaddress_availability_result
            Azure::Network::Mgmt::V2018_10_01::Models::IPAddressAvailabilityResult
          end
          def troubleshooting_details
            Azure::Network::Mgmt::V2018_10_01::Models::TroubleshootingDetails
          end
          def dhcp_options
            Azure::Network::Mgmt::V2018_10_01::Models::DhcpOptions
          end
          def troubleshooting_result
            Azure::Network::Mgmt::V2018_10_01::Models::TroubleshootingResult
          end
          def virtual_network_peering_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkPeeringListResult
          end
          def retention_policy_parameters
            Azure::Network::Mgmt::V2018_10_01::Models::RetentionPolicyParameters
          end
          def application_gateway_available_ssl_predefined_policies
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayAvailableSslPredefinedPolicies
          end
          def flow_log_status_parameters
            Azure::Network::Mgmt::V2018_10_01::Models::FlowLogStatusParameters
          end
          def usages_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::UsagesListResult
          end
          def flow_log_information
            Azure::Network::Mgmt::V2018_10_01::Models::FlowLogInformation
          end
          def express_route_circuit_peering_config
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitPeeringConfig
          end
          def connectivity_source
            Azure::Network::Mgmt::V2018_10_01::Models::ConnectivitySource
          end
          def bgpcommunity
            Azure::Network::Mgmt::V2018_10_01::Models::BGPCommunity
          end
          def connectivity_destination
            Azure::Network::Mgmt::V2018_10_01::Models::ConnectivityDestination
          end
          def express_route_circuit_service_provider_properties
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitServiceProviderProperties
          end
          def connectivity_parameters
            Azure::Network::Mgmt::V2018_10_01::Models::ConnectivityParameters
          end
          def express_route_circuit_routes_table
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitRoutesTable
          end
          def connectivity_issue
            Azure::Network::Mgmt::V2018_10_01::Models::ConnectivityIssue
          end
          def express_route_circuit_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitListResult
          end
          def connectivity_hop
            Azure::Network::Mgmt::V2018_10_01::Models::ConnectivityHop
          end
          def load_balancer_sku
            Azure::Network::Mgmt::V2018_10_01::Models::LoadBalancerSku
          end
          def connectivity_information
            Azure::Network::Mgmt::V2018_10_01::Models::ConnectivityInformation
          end
          def vpn_device_script_parameters
            Azure::Network::Mgmt::V2018_10_01::Models::VpnDeviceScriptParameters
          end
          def azure_reachability_report_location
            Azure::Network::Mgmt::V2018_10_01::Models::AzureReachabilityReportLocation
          end
          def azure_reachability_report_parameters
            Azure::Network::Mgmt::V2018_10_01::Models::AzureReachabilityReportParameters
          end
          def application_gateway_connection_draining
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayConnectionDraining
          end
          def azure_reachability_report_latency_info
            Azure::Network::Mgmt::V2018_10_01::Models::AzureReachabilityReportLatencyInfo
          end
          def vpn_client_parameters
            Azure::Network::Mgmt::V2018_10_01::Models::VpnClientParameters
          end
          def azure_reachability_report_item
            Azure::Network::Mgmt::V2018_10_01::Models::AzureReachabilityReportItem
          end
          def virtual_network_usage
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkUsage
          end
          def azure_reachability_report
            Azure::Network::Mgmt::V2018_10_01::Models::AzureReachabilityReport
          end
          def application_gateway_firewall_rule
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayFirewallRule
          end
          def available_providers_list_parameters
            Azure::Network::Mgmt::V2018_10_01::Models::AvailableProvidersListParameters
          end
          def tags_object
            Azure::Network::Mgmt::V2018_10_01::Models::TagsObject
          end
          def available_providers_list_city
            Azure::Network::Mgmt::V2018_10_01::Models::AvailableProvidersListCity
          end
          def express_route_circuit_stats
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitStats
          end
          def available_providers_list_state
            Azure::Network::Mgmt::V2018_10_01::Models::AvailableProvidersListState
          end
          def usage_name
            Azure::Network::Mgmt::V2018_10_01::Models::UsageName
          end
          def express_route_circuit_arp_table
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitArpTable
          end
          def route_table_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::RouteTableListResult
          end
          def available_providers_list
            Azure::Network::Mgmt::V2018_10_01::Models::AvailableProvidersList
          end
          def local_network_gateway_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::LocalNetworkGatewayListResult
          end
          def connection_monitor_source
            Azure::Network::Mgmt::V2018_10_01::Models::ConnectionMonitorSource
          end
          def application_gateway_backend_health_pool
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayBackendHealthPool
          end
          def available_providers_list_country
            Azure::Network::Mgmt::V2018_10_01::Models::AvailableProvidersListCountry
          end
          def application_gateway_firewall_disabled_rule_group
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayFirewallDisabledRuleGroup
          end
          def connection_monitor_parameters
            Azure::Network::Mgmt::V2018_10_01::Models::ConnectionMonitorParameters
          end
          def connection_monitor_destination
            Azure::Network::Mgmt::V2018_10_01::Models::ConnectionMonitorDestination
          end
          def express_route_circuit_routes_table_summary
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitRoutesTableSummary
          end
          def connection_monitor_result
            Azure::Network::Mgmt::V2018_10_01::Models::ConnectionMonitorResult
          end
          def tunnel_connection_health
            Azure::Network::Mgmt::V2018_10_01::Models::TunnelConnectionHealth
          end
          def connection_monitor_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::ConnectionMonitorListResult
          end
          def subnet_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::SubnetListResult
          end
          def connection_monitor
            Azure::Network::Mgmt::V2018_10_01::Models::ConnectionMonitor
          end
          def route_filter_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::RouteFilterListResult
          end
          def connection_monitor_query_result
            Azure::Network::Mgmt::V2018_10_01::Models::ConnectionMonitorQueryResult
          end
          def express_route_circuit_peering_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitPeeringListResult
          end
          def vpn_client_configuration
            Azure::Network::Mgmt::V2018_10_01::Models::VpnClientConfiguration
          end
          def availability
            Azure::Network::Mgmt::V2018_10_01::Models::Availability
          end
          def connection_state_snapshot
            Azure::Network::Mgmt::V2018_10_01::Models::ConnectionStateSnapshot
          end
          def application_gateway_backend_http_settings
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayBackendHttpSettings
          end
          def application_gateway_ipconfiguration
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayIPConfiguration
          end
          def resource
            Azure::Network::Mgmt::V2018_10_01::Models::Resource
          end
          def application_gateway_backend_address_pool
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayBackendAddressPool
          end
          def application_gateway_authentication_certificate
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayAuthenticationCertificate
          end
          def application_gateway_ssl_certificate
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewaySslCertificate
          end
          def application_gateway_frontend_ipconfiguration
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayFrontendIPConfiguration
          end
          def application_gateway_web_application_firewall_configuration
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayWebApplicationFirewallConfiguration
          end
          def network_interface_ipconfiguration
            Azure::Network::Mgmt::V2018_10_01::Models::NetworkInterfaceIPConfiguration
          end
          def usage
            Azure::Network::Mgmt::V2018_10_01::Models::Usage
          end
          def application_gateway_frontend_port
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayFrontendPort
          end
          def application_gateway_http_listener
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayHttpListener
          end
          def application_gateway_path_rule
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayPathRule
          end
          def application_gateway_probe
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayProbe
          end
          def application_gateway_request_routing_rule
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayRequestRoutingRule
          end
          def application_gateway_redirect_configuration
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayRedirectConfiguration
          end
          def application_gateway_url_path_map
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayUrlPathMap
          end
          def application_gateway_trusted_root_certificate
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayTrustedRootCertificate
          end
          def application_gateway_firewall_rule_set
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayFirewallRuleSet
          end
          def application_gateway_available_ssl_options
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayAvailableSslOptions
          end
          def application_gateway_ssl_predefined_policy
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewaySslPredefinedPolicy
          end
          def application_gateway
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGateway
          end
          def frontend_ipconfiguration
            Azure::Network::Mgmt::V2018_10_01::Models::FrontendIPConfiguration
          end
          def azure_firewall
            Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewall
          end
          def express_route_circuit_peering
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitPeering
          end
          def endpoint_service_result
            Azure::Network::Mgmt::V2018_10_01::Models::EndpointServiceResult
          end
          def express_route_circuit_authorization
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitAuthorization
          end
          def route_filter_rule
            Azure::Network::Mgmt::V2018_10_01::Models::RouteFilterRule
          end
          def inbound_nat_pool
            Azure::Network::Mgmt::V2018_10_01::Models::InboundNatPool
          end
          def route_filter
            Azure::Network::Mgmt::V2018_10_01::Models::RouteFilter
          end
          def express_route_circuit
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuit
          end
          def express_route_service_provider
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteServiceProvider
          end
          def express_route_port
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRoutePort
          end
          def load_balancing_rule
            Azure::Network::Mgmt::V2018_10_01::Models::LoadBalancingRule
          end
          def probe
            Azure::Network::Mgmt::V2018_10_01::Models::Probe
          end
          def virtual_network_peering
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkPeering
          end
          def public_ipprefix
            Azure::Network::Mgmt::V2018_10_01::Models::PublicIPPrefix
          end
          def load_balancer
            Azure::Network::Mgmt::V2018_10_01::Models::LoadBalancer
          end
          def network_watcher
            Azure::Network::Mgmt::V2018_10_01::Models::NetworkWatcher
          end
          def azure_firewall_ipconfiguration
            Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallIPConfiguration
          end
          def patch_route_filter
            Azure::Network::Mgmt::V2018_10_01::Models::PatchRouteFilter
          end
          def azure_firewall_nat_rule_collection
            Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallNatRuleCollection
          end
          def vpn_client_revoked_certificate
            Azure::Network::Mgmt::V2018_10_01::Models::VpnClientRevokedCertificate
          end
          def virtual_network
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetwork
          end
          def patch_route_filter_rule
            Azure::Network::Mgmt::V2018_10_01::Models::PatchRouteFilterRule
          end
          def express_route_circuit_connection
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitConnection
          end
          def express_route_cross_connection_peering
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCrossConnectionPeering
          end
          def express_route_cross_connection
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCrossConnection
          end
          def local_network_gateway
            Azure::Network::Mgmt::V2018_10_01::Models::LocalNetworkGateway
          end
          def express_route_gateway
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteGateway
          end
          def express_route_ports_location
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRoutePortsLocation
          end
          def express_route_link
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteLink
          end
          def bgp_service_community
            Azure::Network::Mgmt::V2018_10_01::Models::BgpServiceCommunity
          end
          def ipversion
            Azure::Network::Mgmt::V2018_10_01::Models::IPVersion
          end
          def container_network_interface_configuration
            Azure::Network::Mgmt::V2018_10_01::Models::ContainerNetworkInterfaceConfiguration
          end
          def container_network_interface
            Azure::Network::Mgmt::V2018_10_01::Models::ContainerNetworkInterface
          end
          def vpn_client_root_certificate
            Azure::Network::Mgmt::V2018_10_01::Models::VpnClientRootCertificate
          end
          def p2_svpn_server_config_vpn_client_root_certificate
            Azure::Network::Mgmt::V2018_10_01::Models::P2SVpnServerConfigVpnClientRootCertificate
          end
          def virtual_network_gateway
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGateway
          end
          def p2_svpn_server_config_radius_server_root_certificate
            Azure::Network::Mgmt::V2018_10_01::Models::P2SVpnServerConfigRadiusServerRootCertificate
          end
          def virtual_network_gateway_connection
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewayConnection
          end
          def virtual_network_gateway_connection_list_entity
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewayConnectionListEntity
          end
          def virtual_network_gateway_ipconfiguration
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewayIPConfiguration
          end
          def vpn_site
            Azure::Network::Mgmt::V2018_10_01::Models::VpnSite
          end
          def hub_virtual_network_connection
            Azure::Network::Mgmt::V2018_10_01::Models::HubVirtualNetworkConnection
          end
          def virtual_hub
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualHub
          end
          def network_profile
            Azure::Network::Mgmt::V2018_10_01::Models::NetworkProfile
          end
          def vpn_gateway
            Azure::Network::Mgmt::V2018_10_01::Models::VpnGateway
          end
          def p2_svpn_gateway
            Azure::Network::Mgmt::V2018_10_01::Models::P2SVpnGateway
          end
          def connection_shared_key
            Azure::Network::Mgmt::V2018_10_01::Models::ConnectionSharedKey
          end
          def application_gateway_cookie_based_affinity
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayCookieBasedAffinity
          end
          def application_gateway_backend_health_server_health
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayBackendHealthServerHealth
          end
          def application_gateway_sku_name
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewaySkuName
          end
          def application_gateway_tier
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayTier
          end
          def application_gateway_ssl_protocol
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewaySslProtocol
          end
          def application_gateway_ssl_policy_type
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewaySslPolicyType
          end
          def application_gateway_ssl_policy_name
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewaySslPolicyName
          end
          def application_gateway_protocol
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayProtocol
          end
          def application_gateway_request_routing_rule_type
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayRequestRoutingRuleType
          end
          def p2_svpn_server_config_vpn_client_revoked_certificate
            Azure::Network::Mgmt::V2018_10_01::Models::P2SVpnServerConfigVpnClientRevokedCertificate
          end
          def application_gateway_operational_state
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayOperationalState
          end
          def p2_svpn_server_config_radius_client_root_certificate
            Azure::Network::Mgmt::V2018_10_01::Models::P2SVpnServerConfigRadiusClientRootCertificate
          end
          def p2_svpn_server_configuration
            Azure::Network::Mgmt::V2018_10_01::Models::P2SVpnServerConfiguration
          end
          def virtual_wan
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualWAN
          end
          def provisioning_state
            Azure::Network::Mgmt::V2018_10_01::Models::ProvisioningState
          end
          def route_next_hop_type
            Azure::Network::Mgmt::V2018_10_01::Models::RouteNextHopType
          end
          def security_rule_protocol
            Azure::Network::Mgmt::V2018_10_01::Models::SecurityRuleProtocol
          end
          def vpn_connection
            Azure::Network::Mgmt::V2018_10_01::Models::VpnConnection
          end
          def security_rule_direction
            Azure::Network::Mgmt::V2018_10_01::Models::SecurityRuleDirection
          end
          def transport_protocol
            Azure::Network::Mgmt::V2018_10_01::Models::TransportProtocol
          end
          def ipallocation_method
            Azure::Network::Mgmt::V2018_10_01::Models::IPAllocationMethod
          end
          def public_ipaddress_sku_name
            Azure::Network::Mgmt::V2018_10_01::Models::PublicIPAddressSkuName
          end
          def azure_firewall_application_rule_protocol_type
            Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallApplicationRuleProtocolType
          end
          def azure_firewall_nat_rcaction_type
            Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallNatRCActionType
          end
          def application_gateway_ssl_cipher_suite
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewaySslCipherSuite
          end
          def resource_identity_type
            Azure::Network::Mgmt::V2018_10_01::Models::ResourceIdentityType
          end
          def application_gateway_redirect_type
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayRedirectType
          end
          def circuit_connection_status
            Azure::Network::Mgmt::V2018_10_01::Models::CircuitConnectionStatus
          end
          def application_gateway_firewall_mode
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayFirewallMode
          end
          def authorization_use_status
            Azure::Network::Mgmt::V2018_10_01::Models::AuthorizationUseStatus
          end
          def express_route_circuit_peering_advertised_public_prefix_state
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitPeeringAdvertisedPublicPrefixState
          end
          def access
            Azure::Network::Mgmt::V2018_10_01::Models::Access
          end
          def effective_security_rule_protocol
            Azure::Network::Mgmt::V2018_10_01::Models::EffectiveSecurityRuleProtocol
          end
          def express_route_circuit_peering_state
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitPeeringState
          end
          def express_route_circuit_sku_tier
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitSkuTier
          end
          def express_route_circuit_sku_family
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitSkuFamily
          end
          def service_provider_provisioning_state
            Azure::Network::Mgmt::V2018_10_01::Models::ServiceProviderProvisioningState
          end
          def load_balancer_sku_name
            Azure::Network::Mgmt::V2018_10_01::Models::LoadBalancerSkuName
          end
          def load_distribution
            Azure::Network::Mgmt::V2018_10_01::Models::LoadDistribution
          end
          def probe_protocol
            Azure::Network::Mgmt::V2018_10_01::Models::ProbeProtocol
          end
          def network_operation_status
            Azure::Network::Mgmt::V2018_10_01::Models::NetworkOperationStatus
          end
          def pc_error
            Azure::Network::Mgmt::V2018_10_01::Models::PcError
          end
          def application_gateway_custom_error_status_code
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayCustomErrorStatusCode
          end
          def security_rule_access
            Azure::Network::Mgmt::V2018_10_01::Models::SecurityRuleAccess
          end
          def connection_status
            Azure::Network::Mgmt::V2018_10_01::Models::ConnectionStatus
          end
          def association_type
            Azure::Network::Mgmt::V2018_10_01::Models::AssociationType
          end
          def azure_firewall_network_rule_protocol
            Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallNetworkRuleProtocol
          end
          def express_route_peering_type
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRoutePeeringType
          end
          def express_route_peering_state
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRoutePeeringState
          end
          def pc_status
            Azure::Network::Mgmt::V2018_10_01::Models::PcStatus
          end
          def express_route_link_connector_type
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteLinkConnectorType
          end
          def express_route_link_admin_state
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteLinkAdminState
          end
          def express_route_ports_encapsulation
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRoutePortsEncapsulation
          end
          def effective_route_state
            Azure::Network::Mgmt::V2018_10_01::Models::EffectiveRouteState
          end
          def flow_log_format_type
            Azure::Network::Mgmt::V2018_10_01::Models::FlowLogFormatType
          end
          def httpmethod
            Azure::Network::Mgmt::V2018_10_01::Models::HTTPMethod
          end
          def direction
            Azure::Network::Mgmt::V2018_10_01::Models::Direction
          end
          def next_hop_type
            Azure::Network::Mgmt::V2018_10_01::Models::NextHopType
          end
          def pc_protocol
            Azure::Network::Mgmt::V2018_10_01::Models::PcProtocol
          end
          def virtual_network_gateway_sku_name
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewaySkuName
          end
          def virtual_network_gateway_sku_tier
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewaySkuTier
          end
          def origin
            Azure::Network::Mgmt::V2018_10_01::Models::Origin
          end
          def issue_type
            Azure::Network::Mgmt::V2018_10_01::Models::IssueType
          end
          def effective_route_source
            Azure::Network::Mgmt::V2018_10_01::Models::EffectiveRouteSource
          end
          def connection_state
            Azure::Network::Mgmt::V2018_10_01::Models::ConnectionState
          end
          def evaluation_state
            Azure::Network::Mgmt::V2018_10_01::Models::EvaluationState
          end
          def service_association_link
            Azure::Network::Mgmt::V2018_10_01::Models::ServiceAssociationLink
          end
          def virtual_network_gateway_type
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewayType
          end
          def vpn_type
            Azure::Network::Mgmt::V2018_10_01::Models::VpnType
          end
          def ike_encryption
            Azure::Network::Mgmt::V2018_10_01::Models::IkeEncryption
          end
          def protocol
            Azure::Network::Mgmt::V2018_10_01::Models::Protocol
          end
          def vpn_client_protocol
            Azure::Network::Mgmt::V2018_10_01::Models::VpnClientProtocol
          end
          def pfs_group
            Azure::Network::Mgmt::V2018_10_01::Models::PfsGroup
          end
          def processor_architecture
            Azure::Network::Mgmt::V2018_10_01::Models::ProcessorArchitecture
          end
          def authentication_method
            Azure::Network::Mgmt::V2018_10_01::Models::AuthenticationMethod
          end
          def virtual_network_gateway_connection_status
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewayConnectionStatus
          end
          def ip_flow_protocol
            Azure::Network::Mgmt::V2018_10_01::Models::IpFlowProtocol
          end
          def virtual_network_peering_state
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkPeeringState
          end
          def ipsec_integrity
            Azure::Network::Mgmt::V2018_10_01::Models::IpsecIntegrity
          end
          def connection_monitor_source_status
            Azure::Network::Mgmt::V2018_10_01::Models::ConnectionMonitorSourceStatus
          end
          def verbosity_level
            Azure::Network::Mgmt::V2018_10_01::Models::VerbosityLevel
          end
          def container
            Azure::Network::Mgmt::V2018_10_01::Models::Container
          end
          def virtual_network_gateway_connection_protocol
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewayConnectionProtocol
          end
          def bgp_peer_state
            Azure::Network::Mgmt::V2018_10_01::Models::BgpPeerState
          end
          def vpn_gateway_tunneling_protocol
            Azure::Network::Mgmt::V2018_10_01::Models::VpnGatewayTunnelingProtocol
          end
          def vpn_connection_status
            Azure::Network::Mgmt::V2018_10_01::Models::VpnConnectionStatus
          end
          def virtual_wan_security_provider_type
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualWanSecurityProviderType
          end
          def virtual_network_gateway_connection_type
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewayConnectionType
          end
          def ipsec_encryption
            Azure::Network::Mgmt::V2018_10_01::Models::IpsecEncryption
          end
          def azure_firewall_rcaction_type
            Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallRCActionType
          end
          def ike_integrity
            Azure::Network::Mgmt::V2018_10_01::Models::IkeIntegrity
          end
          def dh_group
            Azure::Network::Mgmt::V2018_10_01::Models::DhGroup
          end
        end
      end
    end
  end
end
