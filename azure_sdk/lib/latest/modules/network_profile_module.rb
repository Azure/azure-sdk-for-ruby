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
      RouteFilters = Azure::Network::Mgmt::V2018_10_01::RouteFilters
      RouteFilterRules = Azure::Network::Mgmt::V2018_10_01::RouteFilterRules
      RouteTables = Azure::Network::Mgmt::V2018_10_01::RouteTables
      Routes = Azure::Network::Mgmt::V2018_10_01::Routes
      BgpServiceCommunities = Azure::Network::Mgmt::V2018_10_01::BgpServiceCommunities
      Usages = Azure::Network::Mgmt::V2018_10_01::Usages
      VirtualNetworks = Azure::Network::Mgmt::V2018_10_01::VirtualNetworks
      Subnets = Azure::Network::Mgmt::V2018_10_01::Subnets
      VirtualNetworkPeerings = Azure::Network::Mgmt::V2018_10_01::VirtualNetworkPeerings
      VirtualNetworkGateways = Azure::Network::Mgmt::V2018_10_01::VirtualNetworkGateways
      NetworkInterfaces = Azure::Network::Mgmt::V2018_10_01::NetworkInterfaces
      PublicIPAddresses = Azure::Network::Mgmt::V2018_10_01::PublicIPAddresses
      LocalNetworkGateways = Azure::Network::Mgmt::V2018_10_01::LocalNetworkGateways
      VirtualNetworkGatewayConnections = Azure::Network::Mgmt::V2018_10_01::VirtualNetworkGatewayConnections
      Operations = Azure::Network::Mgmt::V2018_10_01::Operations
      AvailableDelegations = Azure::Network::Mgmt::V2018_10_01::AvailableDelegations
      AvailableResourceGroupDelegations = Azure::Network::Mgmt::V2018_10_01::AvailableResourceGroupDelegations
      AzureFirewalls = Azure::Network::Mgmt::V2018_10_01::AzureFirewalls
      AzureFirewallFqdnTags = Azure::Network::Mgmt::V2018_10_01::AzureFirewallFqdnTags
      DdosProtectionPlans = Azure::Network::Mgmt::V2018_10_01::DdosProtectionPlans
      ExpressRouteCircuitConnections = Azure::Network::Mgmt::V2018_10_01::ExpressRouteCircuitConnections
      ExpressRouteCrossConnections = Azure::Network::Mgmt::V2018_10_01::ExpressRouteCrossConnections
      ExpressRouteCrossConnectionPeerings = Azure::Network::Mgmt::V2018_10_01::ExpressRouteCrossConnectionPeerings
      ExpressRouteGateways = Azure::Network::Mgmt::V2018_10_01::ExpressRouteGateways
      ExpressRouteConnections = Azure::Network::Mgmt::V2018_10_01::ExpressRouteConnections
      ExpressRoutePortsLocations = Azure::Network::Mgmt::V2018_10_01::ExpressRoutePortsLocations
      ExpressRoutePorts = Azure::Network::Mgmt::V2018_10_01::ExpressRoutePorts
      ExpressRouteLinks = Azure::Network::Mgmt::V2018_10_01::ExpressRouteLinks
      InterfaceEndpoints = Azure::Network::Mgmt::V2018_10_01::InterfaceEndpoints
      LoadBalancerOutboundRules = Azure::Network::Mgmt::V2018_10_01::LoadBalancerOutboundRules
      NetworkInterfaceTapConfigurations = Azure::Network::Mgmt::V2018_10_01::NetworkInterfaceTapConfigurations
      NetworkProfiles = Azure::Network::Mgmt::V2018_10_01::NetworkProfiles
      PublicIPPrefixes = Azure::Network::Mgmt::V2018_10_01::PublicIPPrefixes
      ServiceEndpointPolicies = Azure::Network::Mgmt::V2018_10_01::ServiceEndpointPolicies
      ServiceEndpointPolicyDefinitions = Azure::Network::Mgmt::V2018_10_01::ServiceEndpointPolicyDefinitions
      VirtualNetworkTaps = Azure::Network::Mgmt::V2018_10_01::VirtualNetworkTaps
      VirtualWans = Azure::Network::Mgmt::V2018_10_01::VirtualWans
      VpnSites = Azure::Network::Mgmt::V2018_10_01::VpnSites
      VpnSitesConfiguration = Azure::Network::Mgmt::V2018_10_01::VpnSitesConfiguration
      VirtualHubs = Azure::Network::Mgmt::V2018_10_01::VirtualHubs
      HubVirtualNetworkConnections = Azure::Network::Mgmt::V2018_10_01::HubVirtualNetworkConnections
      VpnGateways = Azure::Network::Mgmt::V2018_10_01::VpnGateways
      VpnConnections = Azure::Network::Mgmt::V2018_10_01::VpnConnections
      P2sVpnServerConfigurations = Azure::Network::Mgmt::V2018_10_01::P2sVpnServerConfigurations
      P2sVpnGateways = Azure::Network::Mgmt::V2018_10_01::P2sVpnGateways

      module Models
        VpnGatewayTunnelingProtocol = Azure::Network::Mgmt::V2018_10_01::Models::VpnGatewayTunnelingProtocol
        VirtualWanSecurityProviderType = Azure::Network::Mgmt::V2018_10_01::Models::VirtualWanSecurityProviderType
        TunnelConnectionStatus = Azure::Network::Mgmt::V2018_10_01::Models::TunnelConnectionStatus
        LogSpecification = Azure::Network::Mgmt::V2018_10_01::Models::LogSpecification
        HTTPHeader = Azure::Network::Mgmt::V2018_10_01::Models::HTTPHeader
        Severity = Azure::Network::Mgmt::V2018_10_01::Models::Severity
        ManagedServiceIdentity = Azure::Network::Mgmt::V2018_10_01::Models::ManagedServiceIdentity
        ErrorResponse = Azure::Network::Mgmt::V2018_10_01::Models::ErrorResponse
        ApplicationGatewayBackendAddress = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayBackendAddress
        PublicIPAddressSku = Azure::Network::Mgmt::V2018_10_01::Models::PublicIPAddressSku
        IpTag = Azure::Network::Mgmt::V2018_10_01::Models::IpTag
        PublicIPAddressListResult = Azure::Network::Mgmt::V2018_10_01::Models::PublicIPAddressListResult
        EndpointService = Azure::Network::Mgmt::V2018_10_01::Models::EndpointService
        PublicIPAddressDnsSettings = Azure::Network::Mgmt::V2018_10_01::Models::PublicIPAddressDnsSettings
        NetworkInterfaceListResult = Azure::Network::Mgmt::V2018_10_01::Models::NetworkInterfaceListResult
        NetworkInterfaceDnsSettings = Azure::Network::Mgmt::V2018_10_01::Models::NetworkInterfaceDnsSettings
        NetworkInterfaceIPConfigurationListResult = Azure::Network::Mgmt::V2018_10_01::Models::NetworkInterfaceIPConfigurationListResult
        ServiceEndpointPropertiesFormat = Azure::Network::Mgmt::V2018_10_01::Models::ServiceEndpointPropertiesFormat
        ApplicationSecurityGroup = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationSecurityGroup
        Delegation = Azure::Network::Mgmt::V2018_10_01::Models::Delegation
        ServiceAssociationLink = Azure::Network::Mgmt::V2018_10_01::Models::ServiceAssociationLink
        ResourceNavigationLink = Azure::Network::Mgmt::V2018_10_01::Models::ResourceNavigationLink
        SecurityRule = Azure::Network::Mgmt::V2018_10_01::Models::SecurityRule
        InterfaceEndpoint = Azure::Network::Mgmt::V2018_10_01::Models::InterfaceEndpoint
        OperationDisplay = Azure::Network::Mgmt::V2018_10_01::Models::OperationDisplay
        NetworkInterfaceTapConfiguration = Azure::Network::Mgmt::V2018_10_01::Models::NetworkInterfaceTapConfiguration
        Operation = Azure::Network::Mgmt::V2018_10_01::Models::Operation
        PublicIPAddress = Azure::Network::Mgmt::V2018_10_01::Models::PublicIPAddress
        OperationListResult = Azure::Network::Mgmt::V2018_10_01::Models::OperationListResult
        VirtualNetworkTap = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkTap
        FrontendIPConfiguration = Azure::Network::Mgmt::V2018_10_01::Models::FrontendIPConfiguration
        IPConfiguration = Azure::Network::Mgmt::V2018_10_01::Models::IPConfiguration
        InboundNatRule = Azure::Network::Mgmt::V2018_10_01::Models::InboundNatRule
        NetworkInterface = Azure::Network::Mgmt::V2018_10_01::Models::NetworkInterface
        NetworkSecurityGroup = Azure::Network::Mgmt::V2018_10_01::Models::NetworkSecurityGroup
        Route = Azure::Network::Mgmt::V2018_10_01::Models::Route
        RouteTable = Azure::Network::Mgmt::V2018_10_01::Models::RouteTable
        ServiceEndpointPolicyDefinition = Azure::Network::Mgmt::V2018_10_01::Models::ServiceEndpointPolicyDefinition
        ServiceEndpointPolicy = Azure::Network::Mgmt::V2018_10_01::Models::ServiceEndpointPolicy
        IPConfigurationProfile = Azure::Network::Mgmt::V2018_10_01::Models::IPConfigurationProfile
        Subnet = Azure::Network::Mgmt::V2018_10_01::Models::Subnet
        SecurityRuleProtocol = Azure::Network::Mgmt::V2018_10_01::Models::SecurityRuleProtocol
        NetworkInterfaceIPConfiguration = Azure::Network::Mgmt::V2018_10_01::Models::NetworkInterfaceIPConfiguration
        SecurityRuleAccess = Azure::Network::Mgmt::V2018_10_01::Models::SecurityRuleAccess
        ApplicationGatewayBackendAddressPool = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayBackendAddressPool
        BackendAddressPool = Azure::Network::Mgmt::V2018_10_01::Models::BackendAddressPool
        SecurityRuleDirection = Azure::Network::Mgmt::V2018_10_01::Models::SecurityRuleDirection
        IPAllocationMethod = Azure::Network::Mgmt::V2018_10_01::Models::IPAllocationMethod
        RouteNextHopType = Azure::Network::Mgmt::V2018_10_01::Models::RouteNextHopType
        TransportProtocol = Azure::Network::Mgmt::V2018_10_01::Models::TransportProtocol
        PublicIPAddressSkuName = Azure::Network::Mgmt::V2018_10_01::Models::PublicIPAddressSkuName
        ContainerNetworkInterfaceIpConfiguration = Azure::Network::Mgmt::V2018_10_01::Models::ContainerNetworkInterfaceIpConfiguration
        ExpressRouteCircuitReference = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitReference
        ExpressRouteCrossConnectionListResult = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCrossConnectionListResult
        ExpressRouteCrossConnectionPeeringList = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCrossConnectionPeeringList
        VpnClientConnectionHealth = Azure::Network::Mgmt::V2018_10_01::Models::VpnClientConnectionHealth
        VirtualHubId = Azure::Network::Mgmt::V2018_10_01::Models::VirtualHubId
        VirtualWanSecurityProviders = Azure::Network::Mgmt::V2018_10_01::Models::VirtualWanSecurityProviders
        ExpressRouteCircuitPeeringId = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitPeeringId
        VirtualWanSecurityProvider = Azure::Network::Mgmt::V2018_10_01::Models::VirtualWanSecurityProvider
        ExpressRouteGatewayPropertiesAutoScaleConfigurationBounds = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteGatewayPropertiesAutoScaleConfigurationBounds
        ExpressRouteGatewayPropertiesAutoScaleConfiguration = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteGatewayPropertiesAutoScaleConfiguration
        ListVpnConnectionsResult = Azure::Network::Mgmt::V2018_10_01::Models::ListVpnConnectionsResult
        ListVirtualHubsResult = Azure::Network::Mgmt::V2018_10_01::Models::ListVirtualHubsResult
        ExpressRouteGatewayList = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteGatewayList
        VirtualHubRoute = Azure::Network::Mgmt::V2018_10_01::Models::VirtualHubRoute
        ExpressRouteConnectionList = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteConnectionList
        ListVpnSitesResult = Azure::Network::Mgmt::V2018_10_01::Models::ListVpnSitesResult
        ExpressRoutePortsLocationBandwidths = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRoutePortsLocationBandwidths
        ListVirtualWANsResult = Azure::Network::Mgmt::V2018_10_01::Models::ListVirtualWANsResult
        PublicIPPrefixListResult = Azure::Network::Mgmt::V2018_10_01::Models::PublicIPPrefixListResult
        ExpressRoutePortsLocationListResult = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRoutePortsLocationListResult
        ReferencedPublicIpAddress = Azure::Network::Mgmt::V2018_10_01::Models::ReferencedPublicIpAddress
        ExpressRouteLinkListResult = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteLinkListResult
        PublicIPPrefixSku = Azure::Network::Mgmt::V2018_10_01::Models::PublicIPPrefixSku
        ExpressRoutePortListResult = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRoutePortListResult
        InterfaceEndpointListResult = Azure::Network::Mgmt::V2018_10_01::Models::InterfaceEndpointListResult
        VpnClientIPsecParameters = Azure::Network::Mgmt::V2018_10_01::Models::VpnClientIPsecParameters
        ApplicationGatewayRewriteRuleActionSet = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayRewriteRuleActionSet
        ApplicationGatewayFirewallExclusion = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayFirewallExclusion
        ApplicationGatewayAutoscaleConfiguration = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayAutoscaleConfiguration
        LoadBalancerOutboundRuleListResult = Azure::Network::Mgmt::V2018_10_01::Models::LoadBalancerOutboundRuleListResult
        NetworkInterfaceTapConfigurationListResult = Azure::Network::Mgmt::V2018_10_01::Models::NetworkInterfaceTapConfigurationListResult
        AvailableDelegationsResult = Azure::Network::Mgmt::V2018_10_01::Models::AvailableDelegationsResult
        AzureFirewallRCAction = Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallRCAction
        AzureFirewallApplicationRule = Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallApplicationRule
        AzureFirewallNatRCAction = Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallNatRCAction
        AzureFirewallListResult = Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallListResult
        AzureFirewallFqdnTagListResult = Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallFqdnTagListResult
        DdosProtectionPlan = Azure::Network::Mgmt::V2018_10_01::Models::DdosProtectionPlan
        NetworkConfigurationDiagnosticResponse = Azure::Network::Mgmt::V2018_10_01::Models::NetworkConfigurationDiagnosticResponse
        NetworkProfileListResult = Azure::Network::Mgmt::V2018_10_01::Models::NetworkProfileListResult
        ServiceEndpointPolicyDefinitionListResult = Azure::Network::Mgmt::V2018_10_01::Models::ServiceEndpointPolicyDefinitionListResult
        NetworkConfigurationDiagnosticResult = Azure::Network::Mgmt::V2018_10_01::Models::NetworkConfigurationDiagnosticResult
        ExpressRouteCrossConnectionRoutesTableSummary = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCrossConnectionRoutesTableSummary
        P2SVpnProfileParameters = Azure::Network::Mgmt::V2018_10_01::Models::P2SVpnProfileParameters
        ListP2SVpnServerConfigurationsResult = Azure::Network::Mgmt::V2018_10_01::Models::ListP2SVpnServerConfigurationsResult
        VpnSiteId = Azure::Network::Mgmt::V2018_10_01::Models::VpnSiteId
        ListHubVirtualNetworkConnectionsResult = Azure::Network::Mgmt::V2018_10_01::Models::ListHubVirtualNetworkConnectionsResult
        VirtualHubRouteTable = Azure::Network::Mgmt::V2018_10_01::Models::VirtualHubRouteTable
        DeviceProperties = Azure::Network::Mgmt::V2018_10_01::Models::DeviceProperties
        ApplicationGatewayCustomError = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayCustomError
        ApplicationGatewayRewriteRule = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayRewriteRule
        ManagedServiceIdentityUserAssignedIdentitiesValue = Azure::Network::Mgmt::V2018_10_01::Models::ManagedServiceIdentityUserAssignedIdentitiesValue
        AzureFirewallNetworkRule = Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallNetworkRule
        DdosProtectionPlanListResult = Azure::Network::Mgmt::V2018_10_01::Models::DdosProtectionPlanListResult
        FlowLogFormatParameters = Azure::Network::Mgmt::V2018_10_01::Models::FlowLogFormatParameters
        ExpressRouteConnectionId = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteConnectionId
        TrafficAnalyticsConfigurationProperties = Azure::Network::Mgmt::V2018_10_01::Models::TrafficAnalyticsConfigurationProperties
        TrafficAnalyticsProperties = Azure::Network::Mgmt::V2018_10_01::Models::TrafficAnalyticsProperties
        ExpressRouteCrossConnectionsRoutesTableSummaryListResult = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCrossConnectionsRoutesTableSummaryListResult
        ListP2SVpnGatewaysResult = Azure::Network::Mgmt::V2018_10_01::Models::ListP2SVpnGatewaysResult
        HTTPConfiguration = Azure::Network::Mgmt::V2018_10_01::Models::HTTPConfiguration
        ProtocolConfiguration = Azure::Network::Mgmt::V2018_10_01::Models::ProtocolConfiguration
        GetVpnSitesConfigurationRequest = Azure::Network::Mgmt::V2018_10_01::Models::GetVpnSitesConfigurationRequest
        AzureFirewallApplicationRuleProtocol = Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallApplicationRuleProtocol
        ServiceEndpointPolicyListResult = Azure::Network::Mgmt::V2018_10_01::Models::ServiceEndpointPolicyListResult
        VirtualNetworkTapListResult = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkTapListResult
        AvailableDelegation = Azure::Network::Mgmt::V2018_10_01::Models::AvailableDelegation
        VpnProfileResponse = Azure::Network::Mgmt::V2018_10_01::Models::VpnProfileResponse
        Error = Azure::Network::Mgmt::V2018_10_01::Models::Error
        NetworkConfigurationDiagnosticProfile = Azure::Network::Mgmt::V2018_10_01::Models::NetworkConfigurationDiagnosticProfile
        ListVpnGatewaysResult = Azure::Network::Mgmt::V2018_10_01::Models::ListVpnGatewaysResult
        MatchedRule = Azure::Network::Mgmt::V2018_10_01::Models::MatchedRule
        NetworkConfigurationDiagnosticParameters = Azure::Network::Mgmt::V2018_10_01::Models::NetworkConfigurationDiagnosticParameters
        AzureFirewallNatRule = Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallNatRule
        ApplicationGatewayHeaderConfiguration = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayHeaderConfiguration
        EvaluatedNetworkSecurityGroup = Azure::Network::Mgmt::V2018_10_01::Models::EvaluatedNetworkSecurityGroup
        TopologyAssociation = Azure::Network::Mgmt::V2018_10_01::Models::TopologyAssociation
        TopologyResource = Azure::Network::Mgmt::V2018_10_01::Models::TopologyResource
        OperationPropertiesFormatServiceSpecification = Azure::Network::Mgmt::V2018_10_01::Models::OperationPropertiesFormatServiceSpecification
        VirtualNetworkConnectionGatewayReference = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkConnectionGatewayReference
        LoadBalancerListResult = Azure::Network::Mgmt::V2018_10_01::Models::LoadBalancerListResult
        ApplicationGatewayRewriteRuleSet = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayRewriteRuleSet
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
        SubResource = Azure::Network::Mgmt::V2018_10_01::Models::SubResource
        EffectiveNetworkSecurityGroupAssociation = Azure::Network::Mgmt::V2018_10_01::Models::EffectiveNetworkSecurityGroupAssociation
        VirtualNetworkGatewaySku = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewaySku
        EffectiveNetworkSecurityRule = Azure::Network::Mgmt::V2018_10_01::Models::EffectiveNetworkSecurityRule
        ApplicationGatewayProbeHealthResponseMatch = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayProbeHealthResponseMatch
        EffectiveNetworkSecurityGroup = Azure::Network::Mgmt::V2018_10_01::Models::EffectiveNetworkSecurityGroup
        VirtualNetworkUsageName = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkUsageName
        EffectiveNetworkSecurityGroupListResult = Azure::Network::Mgmt::V2018_10_01::Models::EffectiveNetworkSecurityGroupListResult
        VirtualNetworkListResult = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkListResult
        EffectiveRoute = Azure::Network::Mgmt::V2018_10_01::Models::EffectiveRoute
        BgpSettings = Azure::Network::Mgmt::V2018_10_01::Models::BgpSettings
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
        NetworkSecurityRulesEvaluationResult = Azure::Network::Mgmt::V2018_10_01::Models::NetworkSecurityRulesEvaluationResult
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
        UsageName = Azure::Network::Mgmt::V2018_10_01::Models::UsageName
        VpnClientParameters = Azure::Network::Mgmt::V2018_10_01::Models::VpnClientParameters
        AzureReachabilityReportItem = Azure::Network::Mgmt::V2018_10_01::Models::AzureReachabilityReportItem
        VirtualNetworkUsage = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkUsage
        AzureReachabilityReport = Azure::Network::Mgmt::V2018_10_01::Models::AzureReachabilityReport
        ApplicationGatewayFirewallRule = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayFirewallRule
        AzureReachabilityReportLatencyInfo = Azure::Network::Mgmt::V2018_10_01::Models::AzureReachabilityReportLatencyInfo
        TagsObject = Azure::Network::Mgmt::V2018_10_01::Models::TagsObject
        AvailableProvidersListCity = Azure::Network::Mgmt::V2018_10_01::Models::AvailableProvidersListCity
        ExpressRouteCircuitStats = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitStats
        AvailableProvidersListState = Azure::Network::Mgmt::V2018_10_01::Models::AvailableProvidersListState
        ExpressRouteCircuitArpTable = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitArpTable
        AvailableProvidersListParameters = Azure::Network::Mgmt::V2018_10_01::Models::AvailableProvidersListParameters
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
        Resource = Azure::Network::Mgmt::V2018_10_01::Models::Resource
        SubnetListResult = Azure::Network::Mgmt::V2018_10_01::Models::SubnetListResult
        ConnectionMonitor = Azure::Network::Mgmt::V2018_10_01::Models::ConnectionMonitor
        RouteFilterListResult = Azure::Network::Mgmt::V2018_10_01::Models::RouteFilterListResult
        ConnectionMonitorQueryResult = Azure::Network::Mgmt::V2018_10_01::Models::ConnectionMonitorQueryResult
        ExpressRouteCircuitPeeringListResult = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitPeeringListResult
        VpnClientConfiguration = Azure::Network::Mgmt::V2018_10_01::Models::VpnClientConfiguration
        Availability = Azure::Network::Mgmt::V2018_10_01::Models::Availability
        ConnectionStateSnapshot = Azure::Network::Mgmt::V2018_10_01::Models::ConnectionStateSnapshot
        ApplicationGatewayBackendHttpSettings = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayBackendHttpSettings
        ConnectionMonitorListResult = Azure::Network::Mgmt::V2018_10_01::Models::ConnectionMonitorListResult
        ApplicationGatewayAuthenticationCertificate = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayAuthenticationCertificate
        ApplicationGatewayIPConfiguration = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayIPConfiguration
        ApplicationGatewayFrontendIPConfiguration = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayFrontendIPConfiguration
        ApplicationGatewaySslCertificate = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewaySslCertificate
        ApplicationGatewayHttpListener = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayHttpListener
        ApplicationGatewayWebApplicationFirewallConfiguration = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayWebApplicationFirewallConfiguration
        ExpressRouteCircuitsRoutesTableSummaryListResult = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitsRoutesTableSummaryListResult
        ApplicationGatewayPathRule = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayPathRule
        ApplicationGatewayFrontendPort = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayFrontendPort
        ApplicationGatewayRequestRoutingRule = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayRequestRoutingRule
        ApplicationGatewayRedirectConfiguration = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayRedirectConfiguration
        Usage = Azure::Network::Mgmt::V2018_10_01::Models::Usage
        ApplicationGateway = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGateway
        ApplicationGatewayFirewallRuleSet = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayFirewallRuleSet
        ApplicationGatewayUrlPathMap = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayUrlPathMap
        ApplicationGatewayProbe = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayProbe
        EndpointServiceResult = Azure::Network::Mgmt::V2018_10_01::Models::EndpointServiceResult
        ApplicationGatewayAvailableSslOptions = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayAvailableSslOptions
        ApplicationGatewaySslPredefinedPolicy = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewaySslPredefinedPolicy
        ExpressRouteCircuitPeering = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitPeering
        ExpressRouteCircuitAuthorization = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitAuthorization
        RouteFilterRule = Azure::Network::Mgmt::V2018_10_01::Models::RouteFilterRule
        ExpressRouteServiceProvider = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteServiceProvider
        NetworkSecurityGroupResult = Azure::Network::Mgmt::V2018_10_01::Models::NetworkSecurityGroupResult
        ApplicationGatewayTrustedRootCertificate = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayTrustedRootCertificate
        InboundNatPool = Azure::Network::Mgmt::V2018_10_01::Models::InboundNatPool
        AzureFirewallIPConfiguration = Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallIPConfiguration
        AzureFirewallApplicationRuleCollection = Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallApplicationRuleCollection
        AzureFirewallNatRuleCollection = Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallNatRuleCollection
        AzureFirewallNetworkRuleCollection = Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallNetworkRuleCollection
        AzureFirewall = Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewall
        AzureFirewallFqdnTag = Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallFqdnTag
        ExpressRouteCircuitConnection = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitConnection
        ExpressRouteCircuit = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuit
        ExpressRouteCrossConnection = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCrossConnection
        ExpressRouteConnection = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteConnection
        ExpressRouteGateway = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteGateway
        ExpressRoutePortsLocation = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRoutePortsLocation
        RouteFilter = Azure::Network::Mgmt::V2018_10_01::Models::RouteFilter
        ExpressRoutePort = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRoutePort
        OutboundRule = Azure::Network::Mgmt::V2018_10_01::Models::OutboundRule
        LoadBalancingRule = Azure::Network::Mgmt::V2018_10_01::Models::LoadBalancingRule
        Probe = Azure::Network::Mgmt::V2018_10_01::Models::Probe
        BgpServiceCommunity = Azure::Network::Mgmt::V2018_10_01::Models::BgpServiceCommunity
        VirtualNetworkPeering = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkPeering
        LoadBalancer = Azure::Network::Mgmt::V2018_10_01::Models::LoadBalancer
        NetworkWatcher = Azure::Network::Mgmt::V2018_10_01::Models::NetworkWatcher
        PatchRouteFilterRule = Azure::Network::Mgmt::V2018_10_01::Models::PatchRouteFilterRule
        PatchRouteFilter = Azure::Network::Mgmt::V2018_10_01::Models::PatchRouteFilter
        VirtualNetworkGateway = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGateway
        LocalNetworkGateway = Azure::Network::Mgmt::V2018_10_01::Models::LocalNetworkGateway
        VirtualNetwork = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetwork
        ExpressRouteCrossConnectionPeering = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCrossConnectionPeering
        NetworkProfile = Azure::Network::Mgmt::V2018_10_01::Models::NetworkProfile
        VpnClientRevokedCertificate = Azure::Network::Mgmt::V2018_10_01::Models::VpnClientRevokedCertificate
        P2SVpnGateway = Azure::Network::Mgmt::V2018_10_01::Models::P2SVpnGateway
        ApplicationGatewaySkuName = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewaySkuName
        ExpressRouteLink = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteLink
        VirtualNetworkGatewayConnectionListEntity = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewayConnectionListEntity
        VirtualNetworkGatewayIPConfiguration = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewayIPConfiguration
        ContainerNetworkInterfaceConfiguration = Azure::Network::Mgmt::V2018_10_01::Models::ContainerNetworkInterfaceConfiguration
        ContainerNetworkInterface = Azure::Network::Mgmt::V2018_10_01::Models::ContainerNetworkInterface
        PublicIPPrefix = Azure::Network::Mgmt::V2018_10_01::Models::PublicIPPrefix
        P2SVpnServerConfigVpnClientRootCertificate = Azure::Network::Mgmt::V2018_10_01::Models::P2SVpnServerConfigVpnClientRootCertificate
        VirtualNetworkGatewayConnection = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewayConnection
        P2SVpnServerConfigRadiusServerRootCertificate = Azure::Network::Mgmt::V2018_10_01::Models::P2SVpnServerConfigRadiusServerRootCertificate
        P2SVpnServerConfigRadiusClientRootCertificate = Azure::Network::Mgmt::V2018_10_01::Models::P2SVpnServerConfigRadiusClientRootCertificate
        ConnectionSharedKey = Azure::Network::Mgmt::V2018_10_01::Models::ConnectionSharedKey
        VpnClientRootCertificate = Azure::Network::Mgmt::V2018_10_01::Models::VpnClientRootCertificate
        VpnSite = Azure::Network::Mgmt::V2018_10_01::Models::VpnSite
        HubVirtualNetworkConnection = Azure::Network::Mgmt::V2018_10_01::Models::HubVirtualNetworkConnection
        VirtualHub = Azure::Network::Mgmt::V2018_10_01::Models::VirtualHub
        VpnConnection = Azure::Network::Mgmt::V2018_10_01::Models::VpnConnection
        VpnGateway = Azure::Network::Mgmt::V2018_10_01::Models::VpnGateway
        ApplicationGatewayProtocol = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayProtocol
        ApplicationGatewayCookieBasedAffinity = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayCookieBasedAffinity
        ApplicationGatewayBackendHealthServerHealth = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayBackendHealthServerHealth
        ApplicationGatewayOperationalState = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayOperationalState
        ApplicationGatewayTier = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayTier
        IPVersion = Azure::Network::Mgmt::V2018_10_01::Models::IPVersion
        ApplicationGatewaySslPolicyType = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewaySslPolicyType
        ApplicationGatewaySslPolicyName = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewaySslPolicyName
        ApplicationGatewaySslCipherSuite = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewaySslCipherSuite
        ApplicationGatewayRequestRoutingRuleType = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayRequestRoutingRuleType
        P2SVpnServerConfigVpnClientRevokedCertificate = Azure::Network::Mgmt::V2018_10_01::Models::P2SVpnServerConfigVpnClientRevokedCertificate
        ExpressRouteCircuitSkuFamily = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitSkuFamily
        ApplicationGatewayFirewallMode = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayFirewallMode
        P2SVpnServerConfiguration = Azure::Network::Mgmt::V2018_10_01::Models::P2SVpnServerConfiguration
        VirtualWAN = Azure::Network::Mgmt::V2018_10_01::Models::VirtualWAN
        Access = Azure::Network::Mgmt::V2018_10_01::Models::Access
        NetworkOperationStatus = Azure::Network::Mgmt::V2018_10_01::Models::NetworkOperationStatus
        ExpressRouteCircuitPeeringState = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitPeeringState
        ExpressRouteCircuitSkuTier = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitSkuTier
        ApplicationGatewayRedirectType = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayRedirectType
        ProvisioningState = Azure::Network::Mgmt::V2018_10_01::Models::ProvisioningState
        ApplicationGatewayCustomErrorStatusCode = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayCustomErrorStatusCode
        AzureFirewallRCActionType = Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallRCActionType
        AzureFirewallApplicationRuleProtocolType = Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallApplicationRuleProtocolType
        ApplicationGatewaySslProtocol = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewaySslProtocol
        AzureFirewallNetworkRuleProtocol = Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallNetworkRuleProtocol
        ExpressRoutePeeringType = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRoutePeeringType
        ExpressRoutePeeringState = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRoutePeeringState
        CircuitConnectionStatus = Azure::Network::Mgmt::V2018_10_01::Models::CircuitConnectionStatus
        ServiceProviderProvisioningState = Azure::Network::Mgmt::V2018_10_01::Models::ServiceProviderProvisioningState
        ExpressRouteLinkAdminState = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteLinkAdminState
        ResourceIdentityType = Azure::Network::Mgmt::V2018_10_01::Models::ResourceIdentityType
        AuthorizationUseStatus = Azure::Network::Mgmt::V2018_10_01::Models::AuthorizationUseStatus
        ExpressRouteCircuitPeeringAdvertisedPublicPrefixState = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitPeeringAdvertisedPublicPrefixState
        EffectiveSecurityRuleProtocol = Azure::Network::Mgmt::V2018_10_01::Models::EffectiveSecurityRuleProtocol
        EffectiveRouteSource = Azure::Network::Mgmt::V2018_10_01::Models::EffectiveRouteSource
        EffectiveRouteState = Azure::Network::Mgmt::V2018_10_01::Models::EffectiveRouteState
        ConnectionStatus = Azure::Network::Mgmt::V2018_10_01::Models::ConnectionStatus
        AssociationType = Azure::Network::Mgmt::V2018_10_01::Models::AssociationType
        Direction = Azure::Network::Mgmt::V2018_10_01::Models::Direction
        LoadBalancerSkuName = Azure::Network::Mgmt::V2018_10_01::Models::LoadBalancerSkuName
        LoadDistribution = Azure::Network::Mgmt::V2018_10_01::Models::LoadDistribution
        ProbeProtocol = Azure::Network::Mgmt::V2018_10_01::Models::ProbeProtocol
        PcError = Azure::Network::Mgmt::V2018_10_01::Models::PcError
        Origin = Azure::Network::Mgmt::V2018_10_01::Models::Origin
        AzureFirewallNatRCActionType = Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallNatRCActionType
        IkeIntegrity = Azure::Network::Mgmt::V2018_10_01::Models::IkeIntegrity
        ConnectionState = Azure::Network::Mgmt::V2018_10_01::Models::ConnectionState
        EvaluationState = Azure::Network::Mgmt::V2018_10_01::Models::EvaluationState
        VirtualNetworkPeeringState = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkPeeringState
        ExpressRouteLinkConnectorType = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteLinkConnectorType
        PcProtocol = Azure::Network::Mgmt::V2018_10_01::Models::PcProtocol
        ExpressRoutePortsEncapsulation = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRoutePortsEncapsulation
        IpFlowProtocol = Azure::Network::Mgmt::V2018_10_01::Models::IpFlowProtocol
        FlowLogFormatType = Azure::Network::Mgmt::V2018_10_01::Models::FlowLogFormatType
        HTTPMethod = Azure::Network::Mgmt::V2018_10_01::Models::HTTPMethod
        ConnectionMonitorSourceStatus = Azure::Network::Mgmt::V2018_10_01::Models::ConnectionMonitorSourceStatus
        VerbosityLevel = Azure::Network::Mgmt::V2018_10_01::Models::VerbosityLevel
        PublicIPPrefixSkuName = Azure::Network::Mgmt::V2018_10_01::Models::PublicIPPrefixSkuName
        Protocol = Azure::Network::Mgmt::V2018_10_01::Models::Protocol
        VirtualNetworkGatewayType = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewayType
        NextHopType = Azure::Network::Mgmt::V2018_10_01::Models::NextHopType
        VirtualNetworkGatewaySkuName = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewaySkuName
        PcStatus = Azure::Network::Mgmt::V2018_10_01::Models::PcStatus
        VpnClientProtocol = Azure::Network::Mgmt::V2018_10_01::Models::VpnClientProtocol
        PfsGroup = Azure::Network::Mgmt::V2018_10_01::Models::PfsGroup
        IssueType = Azure::Network::Mgmt::V2018_10_01::Models::IssueType
        AuthenticationMethod = Azure::Network::Mgmt::V2018_10_01::Models::AuthenticationMethod
        VirtualNetworkGatewayConnectionStatus = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewayConnectionStatus
        VirtualNetworkGatewayConnectionType = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewayConnectionType
        IpsecEncryption = Azure::Network::Mgmt::V2018_10_01::Models::IpsecEncryption
        IpsecIntegrity = Azure::Network::Mgmt::V2018_10_01::Models::IpsecIntegrity
        VpnType = Azure::Network::Mgmt::V2018_10_01::Models::VpnType
        Container = Azure::Network::Mgmt::V2018_10_01::Models::Container
        BgpPeerState = Azure::Network::Mgmt::V2018_10_01::Models::BgpPeerState
        ProcessorArchitecture = Azure::Network::Mgmt::V2018_10_01::Models::ProcessorArchitecture
        VirtualNetworkGatewayConnectionProtocol = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewayConnectionProtocol
        OfficeTrafficCategory = Azure::Network::Mgmt::V2018_10_01::Models::OfficeTrafficCategory
        IkeEncryption = Azure::Network::Mgmt::V2018_10_01::Models::IkeEncryption
        VpnConnectionStatus = Azure::Network::Mgmt::V2018_10_01::Models::VpnConnectionStatus
        DhGroup = Azure::Network::Mgmt::V2018_10_01::Models::DhGroup
        VirtualNetworkGatewaySkuTier = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewaySkuTier
        HubVirtualNetworkConnectionStatus = Azure::Network::Mgmt::V2018_10_01::Models::HubVirtualNetworkConnectionStatus
      end

      class NetworkManagementClass
        attr_reader :application_gateways, :application_security_groups, :available_endpoint_services, :express_route_circuit_authorizations, :express_route_circuit_peerings, :express_route_circuits, :express_route_service_providers, :load_balancers, :load_balancer_backend_address_pools, :load_balancer_frontend_ipconfigurations, :inbound_nat_rules, :load_balancer_load_balancing_rules, :load_balancer_network_interfaces, :load_balancer_probes, :network_interface_ipconfigurations, :network_interface_load_balancers, :network_security_groups, :security_rules, :default_security_rules, :network_watchers, :packet_captures, :connection_monitors, :route_filters, :route_filter_rules, :route_tables, :routes, :bgp_service_communities, :usages, :virtual_networks, :subnets, :virtual_network_peerings, :virtual_network_gateways, :network_interfaces, :public_ipaddresses, :local_network_gateways, :virtual_network_gateway_connections, :operations, :available_delegations, :available_resource_group_delegations, :azure_firewalls, :azure_firewall_fqdn_tags, :ddos_protection_plans, :express_route_circuit_connections, :express_route_cross_connections, :express_route_cross_connection_peerings, :express_route_gateways, :express_route_connections, :express_route_ports_locations, :express_route_ports, :express_route_links, :interface_endpoints, :load_balancer_outbound_rules, :network_interface_tap_configurations, :network_profiles, :public_ipprefixes, :service_endpoint_policies, :service_endpoint_policy_definitions, :virtual_network_taps, :virtual_wans, :vpn_sites, :vpn_sites_configuration, :virtual_hubs, :hub_virtual_network_connections, :vpn_gateways, :vpn_connections, :p2s_vpn_server_configurations, :p2s_vpn_gateways, :configurable, :base_url, :options, :model_classes

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
          @route_filters = @client_1.route_filters
          @route_filter_rules = @client_1.route_filter_rules
          @route_tables = @client_1.route_tables
          @routes = @client_1.routes
          @bgp_service_communities = @client_1.bgp_service_communities
          @usages = @client_1.usages
          @virtual_networks = @client_1.virtual_networks
          @subnets = @client_1.subnets
          @virtual_network_peerings = @client_1.virtual_network_peerings
          @virtual_network_gateways = @client_1.virtual_network_gateways
          @network_interfaces = @client_1.network_interfaces
          @public_ipaddresses = @client_1.public_ipaddresses
          @local_network_gateways = @client_1.local_network_gateways
          @virtual_network_gateway_connections = @client_1.virtual_network_gateway_connections
          @operations = @client_1.operations
          @available_delegations = @client_1.available_delegations
          @available_resource_group_delegations = @client_1.available_resource_group_delegations
          @azure_firewalls = @client_1.azure_firewalls
          @azure_firewall_fqdn_tags = @client_1.azure_firewall_fqdn_tags
          @ddos_protection_plans = @client_1.ddos_protection_plans
          @express_route_circuit_connections = @client_1.express_route_circuit_connections
          @express_route_cross_connections = @client_1.express_route_cross_connections
          @express_route_cross_connection_peerings = @client_1.express_route_cross_connection_peerings
          @express_route_gateways = @client_1.express_route_gateways
          @express_route_connections = @client_1.express_route_connections
          @express_route_ports_locations = @client_1.express_route_ports_locations
          @express_route_ports = @client_1.express_route_ports
          @express_route_links = @client_1.express_route_links
          @interface_endpoints = @client_1.interface_endpoints
          @load_balancer_outbound_rules = @client_1.load_balancer_outbound_rules
          @network_interface_tap_configurations = @client_1.network_interface_tap_configurations
          @network_profiles = @client_1.network_profiles
          @public_ipprefixes = @client_1.public_ipprefixes
          @service_endpoint_policies = @client_1.service_endpoint_policies
          @service_endpoint_policy_definitions = @client_1.service_endpoint_policy_definitions
          @virtual_network_taps = @client_1.virtual_network_taps
          @virtual_wans = @client_1.virtual_wans
          @vpn_sites = @client_1.vpn_sites
          @vpn_sites_configuration = @client_1.vpn_sites_configuration
          @virtual_hubs = @client_1.virtual_hubs
          @hub_virtual_network_connections = @client_1.hub_virtual_network_connections
          @vpn_gateways = @client_1.vpn_gateways
          @vpn_connections = @client_1.vpn_connections
          @p2s_vpn_server_configurations = @client_1.p2s_vpn_server_configurations
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
          def vpn_gateway_tunneling_protocol
            Azure::Network::Mgmt::V2018_10_01::Models::VpnGatewayTunnelingProtocol
          end
          def virtual_wan_security_provider_type
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualWanSecurityProviderType
          end
          def tunnel_connection_status
            Azure::Network::Mgmt::V2018_10_01::Models::TunnelConnectionStatus
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
          def application_gateway_backend_address
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayBackendAddress
          end
          def public_ipaddress_sku
            Azure::Network::Mgmt::V2018_10_01::Models::PublicIPAddressSku
          end
          def ip_tag
            Azure::Network::Mgmt::V2018_10_01::Models::IpTag
          end
          def public_ipaddress_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::PublicIPAddressListResult
          end
          def endpoint_service
            Azure::Network::Mgmt::V2018_10_01::Models::EndpointService
          end
          def public_ipaddress_dns_settings
            Azure::Network::Mgmt::V2018_10_01::Models::PublicIPAddressDnsSettings
          end
          def network_interface_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::NetworkInterfaceListResult
          end
          def network_interface_dns_settings
            Azure::Network::Mgmt::V2018_10_01::Models::NetworkInterfaceDnsSettings
          end
          def network_interface_ipconfiguration_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::NetworkInterfaceIPConfigurationListResult
          end
          def service_endpoint_properties_format
            Azure::Network::Mgmt::V2018_10_01::Models::ServiceEndpointPropertiesFormat
          end
          def application_security_group
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationSecurityGroup
          end
          def delegation
            Azure::Network::Mgmt::V2018_10_01::Models::Delegation
          end
          def service_association_link
            Azure::Network::Mgmt::V2018_10_01::Models::ServiceAssociationLink
          end
          def resource_navigation_link
            Azure::Network::Mgmt::V2018_10_01::Models::ResourceNavigationLink
          end
          def security_rule
            Azure::Network::Mgmt::V2018_10_01::Models::SecurityRule
          end
          def interface_endpoint
            Azure::Network::Mgmt::V2018_10_01::Models::InterfaceEndpoint
          end
          def operation_display
            Azure::Network::Mgmt::V2018_10_01::Models::OperationDisplay
          end
          def network_interface_tap_configuration
            Azure::Network::Mgmt::V2018_10_01::Models::NetworkInterfaceTapConfiguration
          end
          def operation
            Azure::Network::Mgmt::V2018_10_01::Models::Operation
          end
          def public_ipaddress
            Azure::Network::Mgmt::V2018_10_01::Models::PublicIPAddress
          end
          def operation_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::OperationListResult
          end
          def virtual_network_tap
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkTap
          end
          def frontend_ipconfiguration
            Azure::Network::Mgmt::V2018_10_01::Models::FrontendIPConfiguration
          end
          def ipconfiguration
            Azure::Network::Mgmt::V2018_10_01::Models::IPConfiguration
          end
          def inbound_nat_rule
            Azure::Network::Mgmt::V2018_10_01::Models::InboundNatRule
          end
          def network_interface
            Azure::Network::Mgmt::V2018_10_01::Models::NetworkInterface
          end
          def network_security_group
            Azure::Network::Mgmt::V2018_10_01::Models::NetworkSecurityGroup
          end
          def route
            Azure::Network::Mgmt::V2018_10_01::Models::Route
          end
          def route_table
            Azure::Network::Mgmt::V2018_10_01::Models::RouteTable
          end
          def service_endpoint_policy_definition
            Azure::Network::Mgmt::V2018_10_01::Models::ServiceEndpointPolicyDefinition
          end
          def service_endpoint_policy
            Azure::Network::Mgmt::V2018_10_01::Models::ServiceEndpointPolicy
          end
          def ipconfiguration_profile
            Azure::Network::Mgmt::V2018_10_01::Models::IPConfigurationProfile
          end
          def subnet
            Azure::Network::Mgmt::V2018_10_01::Models::Subnet
          end
          def security_rule_protocol
            Azure::Network::Mgmt::V2018_10_01::Models::SecurityRuleProtocol
          end
          def network_interface_ipconfiguration
            Azure::Network::Mgmt::V2018_10_01::Models::NetworkInterfaceIPConfiguration
          end
          def security_rule_access
            Azure::Network::Mgmt::V2018_10_01::Models::SecurityRuleAccess
          end
          def application_gateway_backend_address_pool
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayBackendAddressPool
          end
          def backend_address_pool
            Azure::Network::Mgmt::V2018_10_01::Models::BackendAddressPool
          end
          def security_rule_direction
            Azure::Network::Mgmt::V2018_10_01::Models::SecurityRuleDirection
          end
          def ipallocation_method
            Azure::Network::Mgmt::V2018_10_01::Models::IPAllocationMethod
          end
          def route_next_hop_type
            Azure::Network::Mgmt::V2018_10_01::Models::RouteNextHopType
          end
          def transport_protocol
            Azure::Network::Mgmt::V2018_10_01::Models::TransportProtocol
          end
          def public_ipaddress_sku_name
            Azure::Network::Mgmt::V2018_10_01::Models::PublicIPAddressSkuName
          end
          def container_network_interface_ip_configuration
            Azure::Network::Mgmt::V2018_10_01::Models::ContainerNetworkInterfaceIpConfiguration
          end
          def express_route_circuit_reference
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitReference
          end
          def express_route_cross_connection_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCrossConnectionListResult
          end
          def express_route_cross_connection_peering_list
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCrossConnectionPeeringList
          end
          def vpn_client_connection_health
            Azure::Network::Mgmt::V2018_10_01::Models::VpnClientConnectionHealth
          end
          def virtual_hub_id
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualHubId
          end
          def virtual_wan_security_providers
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualWanSecurityProviders
          end
          def express_route_circuit_peering_id
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitPeeringId
          end
          def virtual_wan_security_provider
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualWanSecurityProvider
          end
          def express_route_gateway_properties_auto_scale_configuration_bounds
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteGatewayPropertiesAutoScaleConfigurationBounds
          end
          def express_route_gateway_properties_auto_scale_configuration
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteGatewayPropertiesAutoScaleConfiguration
          end
          def list_vpn_connections_result
            Azure::Network::Mgmt::V2018_10_01::Models::ListVpnConnectionsResult
          end
          def list_virtual_hubs_result
            Azure::Network::Mgmt::V2018_10_01::Models::ListVirtualHubsResult
          end
          def express_route_gateway_list
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteGatewayList
          end
          def virtual_hub_route
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualHubRoute
          end
          def express_route_connection_list
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteConnectionList
          end
          def list_vpn_sites_result
            Azure::Network::Mgmt::V2018_10_01::Models::ListVpnSitesResult
          end
          def express_route_ports_location_bandwidths
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRoutePortsLocationBandwidths
          end
          def list_virtual_wans_result
            Azure::Network::Mgmt::V2018_10_01::Models::ListVirtualWANsResult
          end
          def public_ipprefix_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::PublicIPPrefixListResult
          end
          def express_route_ports_location_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRoutePortsLocationListResult
          end
          def referenced_public_ip_address
            Azure::Network::Mgmt::V2018_10_01::Models::ReferencedPublicIpAddress
          end
          def express_route_link_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteLinkListResult
          end
          def public_ipprefix_sku
            Azure::Network::Mgmt::V2018_10_01::Models::PublicIPPrefixSku
          end
          def express_route_port_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRoutePortListResult
          end
          def interface_endpoint_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::InterfaceEndpointListResult
          end
          def vpn_client_ipsec_parameters
            Azure::Network::Mgmt::V2018_10_01::Models::VpnClientIPsecParameters
          end
          def application_gateway_rewrite_rule_action_set
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayRewriteRuleActionSet
          end
          def application_gateway_firewall_exclusion
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayFirewallExclusion
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
          def azure_firewall_fqdn_tag_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallFqdnTagListResult
          end
          def ddos_protection_plan
            Azure::Network::Mgmt::V2018_10_01::Models::DdosProtectionPlan
          end
          def network_configuration_diagnostic_response
            Azure::Network::Mgmt::V2018_10_01::Models::NetworkConfigurationDiagnosticResponse
          end
          def network_profile_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::NetworkProfileListResult
          end
          def service_endpoint_policy_definition_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::ServiceEndpointPolicyDefinitionListResult
          end
          def network_configuration_diagnostic_result
            Azure::Network::Mgmt::V2018_10_01::Models::NetworkConfigurationDiagnosticResult
          end
          def express_route_cross_connection_routes_table_summary
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCrossConnectionRoutesTableSummary
          end
          def p2_svpn_profile_parameters
            Azure::Network::Mgmt::V2018_10_01::Models::P2SVpnProfileParameters
          end
          def list_p2_svpn_server_configurations_result
            Azure::Network::Mgmt::V2018_10_01::Models::ListP2SVpnServerConfigurationsResult
          end
          def vpn_site_id
            Azure::Network::Mgmt::V2018_10_01::Models::VpnSiteId
          end
          def list_hub_virtual_network_connections_result
            Azure::Network::Mgmt::V2018_10_01::Models::ListHubVirtualNetworkConnectionsResult
          end
          def virtual_hub_route_table
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualHubRouteTable
          end
          def device_properties
            Azure::Network::Mgmt::V2018_10_01::Models::DeviceProperties
          end
          def application_gateway_custom_error
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayCustomError
          end
          def application_gateway_rewrite_rule
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayRewriteRule
          end
          def managed_service_identity_user_assigned_identities_value
            Azure::Network::Mgmt::V2018_10_01::Models::ManagedServiceIdentityUserAssignedIdentitiesValue
          end
          def azure_firewall_network_rule
            Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallNetworkRule
          end
          def ddos_protection_plan_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::DdosProtectionPlanListResult
          end
          def flow_log_format_parameters
            Azure::Network::Mgmt::V2018_10_01::Models::FlowLogFormatParameters
          end
          def express_route_connection_id
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteConnectionId
          end
          def traffic_analytics_configuration_properties
            Azure::Network::Mgmt::V2018_10_01::Models::TrafficAnalyticsConfigurationProperties
          end
          def traffic_analytics_properties
            Azure::Network::Mgmt::V2018_10_01::Models::TrafficAnalyticsProperties
          end
          def express_route_cross_connections_routes_table_summary_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCrossConnectionsRoutesTableSummaryListResult
          end
          def list_p2_svpn_gateways_result
            Azure::Network::Mgmt::V2018_10_01::Models::ListP2SVpnGatewaysResult
          end
          def httpconfiguration
            Azure::Network::Mgmt::V2018_10_01::Models::HTTPConfiguration
          end
          def protocol_configuration
            Azure::Network::Mgmt::V2018_10_01::Models::ProtocolConfiguration
          end
          def get_vpn_sites_configuration_request
            Azure::Network::Mgmt::V2018_10_01::Models::GetVpnSitesConfigurationRequest
          end
          def azure_firewall_application_rule_protocol
            Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallApplicationRuleProtocol
          end
          def service_endpoint_policy_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::ServiceEndpointPolicyListResult
          end
          def virtual_network_tap_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkTapListResult
          end
          def available_delegation
            Azure::Network::Mgmt::V2018_10_01::Models::AvailableDelegation
          end
          def vpn_profile_response
            Azure::Network::Mgmt::V2018_10_01::Models::VpnProfileResponse
          end
          def error
            Azure::Network::Mgmt::V2018_10_01::Models::Error
          end
          def network_configuration_diagnostic_profile
            Azure::Network::Mgmt::V2018_10_01::Models::NetworkConfigurationDiagnosticProfile
          end
          def list_vpn_gateways_result
            Azure::Network::Mgmt::V2018_10_01::Models::ListVpnGatewaysResult
          end
          def matched_rule
            Azure::Network::Mgmt::V2018_10_01::Models::MatchedRule
          end
          def network_configuration_diagnostic_parameters
            Azure::Network::Mgmt::V2018_10_01::Models::NetworkConfigurationDiagnosticParameters
          end
          def azure_firewall_nat_rule
            Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallNatRule
          end
          def application_gateway_header_configuration
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayHeaderConfiguration
          end
          def evaluated_network_security_group
            Azure::Network::Mgmt::V2018_10_01::Models::EvaluatedNetworkSecurityGroup
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
          def application_gateway_rewrite_rule_set
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayRewriteRuleSet
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
          def sub_resource
            Azure::Network::Mgmt::V2018_10_01::Models::SubResource
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
          def bgp_settings
            Azure::Network::Mgmt::V2018_10_01::Models::BgpSettings
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
          def network_security_rules_evaluation_result
            Azure::Network::Mgmt::V2018_10_01::Models::NetworkSecurityRulesEvaluationResult
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
          def usage_name
            Azure::Network::Mgmt::V2018_10_01::Models::UsageName
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
          def azure_reachability_report_latency_info
            Azure::Network::Mgmt::V2018_10_01::Models::AzureReachabilityReportLatencyInfo
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
          def express_route_circuit_arp_table
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitArpTable
          end
          def available_providers_list_parameters
            Azure::Network::Mgmt::V2018_10_01::Models::AvailableProvidersListParameters
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
          def resource
            Azure::Network::Mgmt::V2018_10_01::Models::Resource
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
          def connection_monitor_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::ConnectionMonitorListResult
          end
          def application_gateway_authentication_certificate
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayAuthenticationCertificate
          end
          def application_gateway_ipconfiguration
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayIPConfiguration
          end
          def application_gateway_frontend_ipconfiguration
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayFrontendIPConfiguration
          end
          def application_gateway_ssl_certificate
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewaySslCertificate
          end
          def application_gateway_http_listener
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayHttpListener
          end
          def application_gateway_web_application_firewall_configuration
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayWebApplicationFirewallConfiguration
          end
          def express_route_circuits_routes_table_summary_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitsRoutesTableSummaryListResult
          end
          def application_gateway_path_rule
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayPathRule
          end
          def application_gateway_frontend_port
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayFrontendPort
          end
          def application_gateway_request_routing_rule
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayRequestRoutingRule
          end
          def application_gateway_redirect_configuration
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayRedirectConfiguration
          end
          def usage
            Azure::Network::Mgmt::V2018_10_01::Models::Usage
          end
          def application_gateway
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGateway
          end
          def application_gateway_firewall_rule_set
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayFirewallRuleSet
          end
          def application_gateway_url_path_map
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayUrlPathMap
          end
          def application_gateway_probe
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayProbe
          end
          def endpoint_service_result
            Azure::Network::Mgmt::V2018_10_01::Models::EndpointServiceResult
          end
          def application_gateway_available_ssl_options
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayAvailableSslOptions
          end
          def application_gateway_ssl_predefined_policy
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewaySslPredefinedPolicy
          end
          def express_route_circuit_peering
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitPeering
          end
          def express_route_circuit_authorization
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitAuthorization
          end
          def route_filter_rule
            Azure::Network::Mgmt::V2018_10_01::Models::RouteFilterRule
          end
          def express_route_service_provider
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteServiceProvider
          end
          def network_security_group_result
            Azure::Network::Mgmt::V2018_10_01::Models::NetworkSecurityGroupResult
          end
          def application_gateway_trusted_root_certificate
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayTrustedRootCertificate
          end
          def inbound_nat_pool
            Azure::Network::Mgmt::V2018_10_01::Models::InboundNatPool
          end
          def azure_firewall_ipconfiguration
            Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallIPConfiguration
          end
          def azure_firewall_application_rule_collection
            Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallApplicationRuleCollection
          end
          def azure_firewall_nat_rule_collection
            Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallNatRuleCollection
          end
          def azure_firewall_network_rule_collection
            Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallNetworkRuleCollection
          end
          def azure_firewall
            Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewall
          end
          def azure_firewall_fqdn_tag
            Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallFqdnTag
          end
          def express_route_circuit_connection
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitConnection
          end
          def express_route_circuit
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuit
          end
          def express_route_cross_connection
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCrossConnection
          end
          def express_route_connection
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteConnection
          end
          def express_route_gateway
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteGateway
          end
          def express_route_ports_location
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRoutePortsLocation
          end
          def route_filter
            Azure::Network::Mgmt::V2018_10_01::Models::RouteFilter
          end
          def express_route_port
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRoutePort
          end
          def outbound_rule
            Azure::Network::Mgmt::V2018_10_01::Models::OutboundRule
          end
          def load_balancing_rule
            Azure::Network::Mgmt::V2018_10_01::Models::LoadBalancingRule
          end
          def probe
            Azure::Network::Mgmt::V2018_10_01::Models::Probe
          end
          def bgp_service_community
            Azure::Network::Mgmt::V2018_10_01::Models::BgpServiceCommunity
          end
          def virtual_network_peering
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkPeering
          end
          def load_balancer
            Azure::Network::Mgmt::V2018_10_01::Models::LoadBalancer
          end
          def network_watcher
            Azure::Network::Mgmt::V2018_10_01::Models::NetworkWatcher
          end
          def patch_route_filter_rule
            Azure::Network::Mgmt::V2018_10_01::Models::PatchRouteFilterRule
          end
          def patch_route_filter
            Azure::Network::Mgmt::V2018_10_01::Models::PatchRouteFilter
          end
          def virtual_network_gateway
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGateway
          end
          def local_network_gateway
            Azure::Network::Mgmt::V2018_10_01::Models::LocalNetworkGateway
          end
          def virtual_network
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetwork
          end
          def express_route_cross_connection_peering
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCrossConnectionPeering
          end
          def network_profile
            Azure::Network::Mgmt::V2018_10_01::Models::NetworkProfile
          end
          def vpn_client_revoked_certificate
            Azure::Network::Mgmt::V2018_10_01::Models::VpnClientRevokedCertificate
          end
          def p2_svpn_gateway
            Azure::Network::Mgmt::V2018_10_01::Models::P2SVpnGateway
          end
          def application_gateway_sku_name
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewaySkuName
          end
          def express_route_link
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteLink
          end
          def virtual_network_gateway_connection_list_entity
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewayConnectionListEntity
          end
          def virtual_network_gateway_ipconfiguration
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewayIPConfiguration
          end
          def container_network_interface_configuration
            Azure::Network::Mgmt::V2018_10_01::Models::ContainerNetworkInterfaceConfiguration
          end
          def container_network_interface
            Azure::Network::Mgmt::V2018_10_01::Models::ContainerNetworkInterface
          end
          def public_ipprefix
            Azure::Network::Mgmt::V2018_10_01::Models::PublicIPPrefix
          end
          def p2_svpn_server_config_vpn_client_root_certificate
            Azure::Network::Mgmt::V2018_10_01::Models::P2SVpnServerConfigVpnClientRootCertificate
          end
          def virtual_network_gateway_connection
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewayConnection
          end
          def p2_svpn_server_config_radius_server_root_certificate
            Azure::Network::Mgmt::V2018_10_01::Models::P2SVpnServerConfigRadiusServerRootCertificate
          end
          def p2_svpn_server_config_radius_client_root_certificate
            Azure::Network::Mgmt::V2018_10_01::Models::P2SVpnServerConfigRadiusClientRootCertificate
          end
          def connection_shared_key
            Azure::Network::Mgmt::V2018_10_01::Models::ConnectionSharedKey
          end
          def vpn_client_root_certificate
            Azure::Network::Mgmt::V2018_10_01::Models::VpnClientRootCertificate
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
          def vpn_connection
            Azure::Network::Mgmt::V2018_10_01::Models::VpnConnection
          end
          def vpn_gateway
            Azure::Network::Mgmt::V2018_10_01::Models::VpnGateway
          end
          def application_gateway_protocol
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayProtocol
          end
          def application_gateway_cookie_based_affinity
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayCookieBasedAffinity
          end
          def application_gateway_backend_health_server_health
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayBackendHealthServerHealth
          end
          def application_gateway_operational_state
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayOperationalState
          end
          def application_gateway_tier
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayTier
          end
          def ipversion
            Azure::Network::Mgmt::V2018_10_01::Models::IPVersion
          end
          def application_gateway_ssl_policy_type
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewaySslPolicyType
          end
          def application_gateway_ssl_policy_name
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewaySslPolicyName
          end
          def application_gateway_ssl_cipher_suite
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewaySslCipherSuite
          end
          def application_gateway_request_routing_rule_type
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayRequestRoutingRuleType
          end
          def p2_svpn_server_config_vpn_client_revoked_certificate
            Azure::Network::Mgmt::V2018_10_01::Models::P2SVpnServerConfigVpnClientRevokedCertificate
          end
          def express_route_circuit_sku_family
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitSkuFamily
          end
          def application_gateway_firewall_mode
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayFirewallMode
          end
          def p2_svpn_server_configuration
            Azure::Network::Mgmt::V2018_10_01::Models::P2SVpnServerConfiguration
          end
          def virtual_wan
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualWAN
          end
          def access
            Azure::Network::Mgmt::V2018_10_01::Models::Access
          end
          def network_operation_status
            Azure::Network::Mgmt::V2018_10_01::Models::NetworkOperationStatus
          end
          def express_route_circuit_peering_state
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitPeeringState
          end
          def express_route_circuit_sku_tier
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitSkuTier
          end
          def application_gateway_redirect_type
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayRedirectType
          end
          def provisioning_state
            Azure::Network::Mgmt::V2018_10_01::Models::ProvisioningState
          end
          def application_gateway_custom_error_status_code
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayCustomErrorStatusCode
          end
          def azure_firewall_rcaction_type
            Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallRCActionType
          end
          def azure_firewall_application_rule_protocol_type
            Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallApplicationRuleProtocolType
          end
          def application_gateway_ssl_protocol
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewaySslProtocol
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
          def circuit_connection_status
            Azure::Network::Mgmt::V2018_10_01::Models::CircuitConnectionStatus
          end
          def service_provider_provisioning_state
            Azure::Network::Mgmt::V2018_10_01::Models::ServiceProviderProvisioningState
          end
          def express_route_link_admin_state
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteLinkAdminState
          end
          def resource_identity_type
            Azure::Network::Mgmt::V2018_10_01::Models::ResourceIdentityType
          end
          def authorization_use_status
            Azure::Network::Mgmt::V2018_10_01::Models::AuthorizationUseStatus
          end
          def express_route_circuit_peering_advertised_public_prefix_state
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitPeeringAdvertisedPublicPrefixState
          end
          def effective_security_rule_protocol
            Azure::Network::Mgmt::V2018_10_01::Models::EffectiveSecurityRuleProtocol
          end
          def effective_route_source
            Azure::Network::Mgmt::V2018_10_01::Models::EffectiveRouteSource
          end
          def effective_route_state
            Azure::Network::Mgmt::V2018_10_01::Models::EffectiveRouteState
          end
          def connection_status
            Azure::Network::Mgmt::V2018_10_01::Models::ConnectionStatus
          end
          def association_type
            Azure::Network::Mgmt::V2018_10_01::Models::AssociationType
          end
          def direction
            Azure::Network::Mgmt::V2018_10_01::Models::Direction
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
          def pc_error
            Azure::Network::Mgmt::V2018_10_01::Models::PcError
          end
          def origin
            Azure::Network::Mgmt::V2018_10_01::Models::Origin
          end
          def azure_firewall_nat_rcaction_type
            Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallNatRCActionType
          end
          def ike_integrity
            Azure::Network::Mgmt::V2018_10_01::Models::IkeIntegrity
          end
          def connection_state
            Azure::Network::Mgmt::V2018_10_01::Models::ConnectionState
          end
          def evaluation_state
            Azure::Network::Mgmt::V2018_10_01::Models::EvaluationState
          end
          def virtual_network_peering_state
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkPeeringState
          end
          def express_route_link_connector_type
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteLinkConnectorType
          end
          def pc_protocol
            Azure::Network::Mgmt::V2018_10_01::Models::PcProtocol
          end
          def express_route_ports_encapsulation
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRoutePortsEncapsulation
          end
          def ip_flow_protocol
            Azure::Network::Mgmt::V2018_10_01::Models::IpFlowProtocol
          end
          def flow_log_format_type
            Azure::Network::Mgmt::V2018_10_01::Models::FlowLogFormatType
          end
          def httpmethod
            Azure::Network::Mgmt::V2018_10_01::Models::HTTPMethod
          end
          def connection_monitor_source_status
            Azure::Network::Mgmt::V2018_10_01::Models::ConnectionMonitorSourceStatus
          end
          def verbosity_level
            Azure::Network::Mgmt::V2018_10_01::Models::VerbosityLevel
          end
          def public_ipprefix_sku_name
            Azure::Network::Mgmt::V2018_10_01::Models::PublicIPPrefixSkuName
          end
          def protocol
            Azure::Network::Mgmt::V2018_10_01::Models::Protocol
          end
          def virtual_network_gateway_type
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewayType
          end
          def next_hop_type
            Azure::Network::Mgmt::V2018_10_01::Models::NextHopType
          end
          def virtual_network_gateway_sku_name
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewaySkuName
          end
          def pc_status
            Azure::Network::Mgmt::V2018_10_01::Models::PcStatus
          end
          def vpn_client_protocol
            Azure::Network::Mgmt::V2018_10_01::Models::VpnClientProtocol
          end
          def pfs_group
            Azure::Network::Mgmt::V2018_10_01::Models::PfsGroup
          end
          def issue_type
            Azure::Network::Mgmt::V2018_10_01::Models::IssueType
          end
          def authentication_method
            Azure::Network::Mgmt::V2018_10_01::Models::AuthenticationMethod
          end
          def virtual_network_gateway_connection_status
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewayConnectionStatus
          end
          def virtual_network_gateway_connection_type
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewayConnectionType
          end
          def ipsec_encryption
            Azure::Network::Mgmt::V2018_10_01::Models::IpsecEncryption
          end
          def ipsec_integrity
            Azure::Network::Mgmt::V2018_10_01::Models::IpsecIntegrity
          end
          def vpn_type
            Azure::Network::Mgmt::V2018_10_01::Models::VpnType
          end
          def container
            Azure::Network::Mgmt::V2018_10_01::Models::Container
          end
          def bgp_peer_state
            Azure::Network::Mgmt::V2018_10_01::Models::BgpPeerState
          end
          def processor_architecture
            Azure::Network::Mgmt::V2018_10_01::Models::ProcessorArchitecture
          end
          def virtual_network_gateway_connection_protocol
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewayConnectionProtocol
          end
          def office_traffic_category
            Azure::Network::Mgmt::V2018_10_01::Models::OfficeTrafficCategory
          end
          def ike_encryption
            Azure::Network::Mgmt::V2018_10_01::Models::IkeEncryption
          end
          def vpn_connection_status
            Azure::Network::Mgmt::V2018_10_01::Models::VpnConnectionStatus
          end
          def dh_group
            Azure::Network::Mgmt::V2018_10_01::Models::DhGroup
          end
          def virtual_network_gateway_sku_tier
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewaySkuTier
          end
          def hub_virtual_network_connection_status
            Azure::Network::Mgmt::V2018_10_01::Models::HubVirtualNetworkConnectionStatus
          end
        end
      end
    end
  end
end
