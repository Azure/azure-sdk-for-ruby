# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_network'

module Azure::Profiles::Latest
  module Network
    module Mgmt
      ApplicationGateways = Azure::Network::Mgmt::V2018_10_01::ApplicationGateways
      ApplicationSecurityGroups = Azure::Network::Mgmt::V2018_10_01::ApplicationSecurityGroups
      AvailableDelegations = Azure::Network::Mgmt::V2018_10_01::AvailableDelegations
      AvailableResourceGroupDelegations = Azure::Network::Mgmt::V2018_10_01::AvailableResourceGroupDelegations
      AzureFirewalls = Azure::Network::Mgmt::V2018_10_01::AzureFirewalls
      AzureFirewallFqdnTags = Azure::Network::Mgmt::V2018_10_01::AzureFirewallFqdnTags
      DdosProtectionPlans = Azure::Network::Mgmt::V2018_10_01::DdosProtectionPlans
      AvailableEndpointServices = Azure::Network::Mgmt::V2018_10_01::AvailableEndpointServices
      ExpressRouteCircuitAuthorizations = Azure::Network::Mgmt::V2018_10_01::ExpressRouteCircuitAuthorizations
      ExpressRouteCircuitPeerings = Azure::Network::Mgmt::V2018_10_01::ExpressRouteCircuitPeerings
      ExpressRouteCircuitConnections = Azure::Network::Mgmt::V2018_10_01::ExpressRouteCircuitConnections
      ExpressRouteCircuits = Azure::Network::Mgmt::V2018_10_01::ExpressRouteCircuits
      ExpressRouteServiceProviders = Azure::Network::Mgmt::V2018_10_01::ExpressRouteServiceProviders
      ExpressRouteCrossConnections = Azure::Network::Mgmt::V2018_10_01::ExpressRouteCrossConnections
      ExpressRouteCrossConnectionPeerings = Azure::Network::Mgmt::V2018_10_01::ExpressRouteCrossConnectionPeerings
      ExpressRouteGateways = Azure::Network::Mgmt::V2018_10_01::ExpressRouteGateways
      ExpressRouteConnections = Azure::Network::Mgmt::V2018_10_01::ExpressRouteConnections
      ExpressRoutePortsLocations = Azure::Network::Mgmt::V2018_10_01::ExpressRoutePortsLocations
      ExpressRoutePorts = Azure::Network::Mgmt::V2018_10_01::ExpressRoutePorts
      ExpressRouteLinks = Azure::Network::Mgmt::V2018_10_01::ExpressRouteLinks
      InterfaceEndpoints = Azure::Network::Mgmt::V2018_10_01::InterfaceEndpoints
      LoadBalancers = Azure::Network::Mgmt::V2018_10_01::LoadBalancers
      LoadBalancerBackendAddressPools = Azure::Network::Mgmt::V2018_10_01::LoadBalancerBackendAddressPools
      LoadBalancerFrontendIPConfigurations = Azure::Network::Mgmt::V2018_10_01::LoadBalancerFrontendIPConfigurations
      InboundNatRules = Azure::Network::Mgmt::V2018_10_01::InboundNatRules
      LoadBalancerLoadBalancingRules = Azure::Network::Mgmt::V2018_10_01::LoadBalancerLoadBalancingRules
      LoadBalancerOutboundRules = Azure::Network::Mgmt::V2018_10_01::LoadBalancerOutboundRules
      LoadBalancerNetworkInterfaces = Azure::Network::Mgmt::V2018_10_01::LoadBalancerNetworkInterfaces
      LoadBalancerProbes = Azure::Network::Mgmt::V2018_10_01::LoadBalancerProbes
      NetworkInterfaceIPConfigurations = Azure::Network::Mgmt::V2018_10_01::NetworkInterfaceIPConfigurations
      NetworkInterfaceLoadBalancers = Azure::Network::Mgmt::V2018_10_01::NetworkInterfaceLoadBalancers
      NetworkInterfaceTapConfigurations = Azure::Network::Mgmt::V2018_10_01::NetworkInterfaceTapConfigurations
      NetworkProfiles = Azure::Network::Mgmt::V2018_10_01::NetworkProfiles
      NetworkSecurityGroups = Azure::Network::Mgmt::V2018_10_01::NetworkSecurityGroups
      SecurityRules = Azure::Network::Mgmt::V2018_10_01::SecurityRules
      DefaultSecurityRules = Azure::Network::Mgmt::V2018_10_01::DefaultSecurityRules
      NetworkWatchers = Azure::Network::Mgmt::V2018_10_01::NetworkWatchers
      PacketCaptures = Azure::Network::Mgmt::V2018_10_01::PacketCaptures
      ConnectionMonitors = Azure::Network::Mgmt::V2018_10_01::ConnectionMonitors
      Operations = Azure::Network::Mgmt::V2018_10_01::Operations
      PublicIPPrefixes = Azure::Network::Mgmt::V2018_10_01::PublicIPPrefixes
      RouteFilters = Azure::Network::Mgmt::V2018_10_01::RouteFilters
      RouteFilterRules = Azure::Network::Mgmt::V2018_10_01::RouteFilterRules
      RouteTables = Azure::Network::Mgmt::V2018_10_01::RouteTables
      Routes = Azure::Network::Mgmt::V2018_10_01::Routes
      BgpServiceCommunities = Azure::Network::Mgmt::V2018_10_01::BgpServiceCommunities
      ServiceEndpointPolicies = Azure::Network::Mgmt::V2018_10_01::ServiceEndpointPolicies
      ServiceEndpointPolicyDefinitions = Azure::Network::Mgmt::V2018_10_01::ServiceEndpointPolicyDefinitions
      Usages = Azure::Network::Mgmt::V2018_10_01::Usages
      VirtualNetworks = Azure::Network::Mgmt::V2018_10_01::VirtualNetworks
      Subnets = Azure::Network::Mgmt::V2018_10_01::Subnets
      VirtualNetworkPeerings = Azure::Network::Mgmt::V2018_10_01::VirtualNetworkPeerings
      VirtualNetworkGateways = Azure::Network::Mgmt::V2018_10_01::VirtualNetworkGateways
      VirtualNetworkGatewayConnections = Azure::Network::Mgmt::V2018_10_01::VirtualNetworkGatewayConnections
      LocalNetworkGateways = Azure::Network::Mgmt::V2018_10_01::LocalNetworkGateways
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
      NetworkInterfaces = Azure::Network::Mgmt::V2017_03_30::NetworkInterfaces
      PublicIPAddresses = Azure::Network::Mgmt::V2017_03_30::PublicIPAddresses

      module Models
        ContainerNetworkInterfaceIpConfiguration = Azure::Network::Mgmt::V2018_10_01::Models::ContainerNetworkInterfaceIpConfiguration
        ExpressRouteCircuitReference = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitReference
        RouteListResult = Azure::Network::Mgmt::V2018_10_01::Models::RouteListResult
        RouteTableListResult = Azure::Network::Mgmt::V2018_10_01::Models::RouteTableListResult
        ExpressRouteCrossConnectionListResult = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCrossConnectionListResult
        ExpressRouteCrossConnectionPeeringList = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCrossConnectionPeeringList
        VpnClientConnectionHealth = Azure::Network::Mgmt::V2018_10_01::Models::VpnClientConnectionHealth
        VirtualHubId = Azure::Network::Mgmt::V2018_10_01::Models::VirtualHubId
        VirtualWanSecurityProviders = Azure::Network::Mgmt::V2018_10_01::Models::VirtualWanSecurityProviders
        ExpressRouteCircuitPeeringId = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitPeeringId
        VirtualWanSecurityProvider = Azure::Network::Mgmt::V2018_10_01::Models::VirtualWanSecurityProvider
        ExpressRouteGatewayPropertiesAutoScaleConfigurationBounds = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteGatewayPropertiesAutoScaleConfigurationBounds
        ExpressRouteGatewayPropertiesAutoScaleConfiguration = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteGatewayPropertiesAutoScaleConfiguration
        RouteFilterRuleListResult = Azure::Network::Mgmt::V2018_10_01::Models::RouteFilterRuleListResult
        ListVpnConnectionsResult = Azure::Network::Mgmt::V2018_10_01::Models::ListVpnConnectionsResult
        RouteFilterListResult = Azure::Network::Mgmt::V2018_10_01::Models::RouteFilterListResult
        ListVirtualHubsResult = Azure::Network::Mgmt::V2018_10_01::Models::ListVirtualHubsResult
        ExpressRouteGatewayList = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteGatewayList
        VirtualHubRoute = Azure::Network::Mgmt::V2018_10_01::Models::VirtualHubRoute
        ExpressRouteConnectionList = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteConnectionList
        ListVpnSitesResult = Azure::Network::Mgmt::V2018_10_01::Models::ListVpnSitesResult
        ExpressRoutePortsLocationBandwidths = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRoutePortsLocationBandwidths
        ListVirtualWANsResult = Azure::Network::Mgmt::V2018_10_01::Models::ListVirtualWANsResult
        PublicIPPrefixListResult = Azure::Network::Mgmt::V2018_10_01::Models::PublicIPPrefixListResult
        VpnDeviceScriptParameters = Azure::Network::Mgmt::V2018_10_01::Models::VpnDeviceScriptParameters
        ExpressRoutePortsLocationListResult = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRoutePortsLocationListResult
        VirtualNetworkGatewayListConnectionsResult = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewayListConnectionsResult
        ReferencedPublicIpAddress = Azure::Network::Mgmt::V2018_10_01::Models::ReferencedPublicIpAddress
        VirtualNetworkConnectionGatewayReference = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkConnectionGatewayReference
        ExpressRouteLinkListResult = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteLinkListResult
        ApplicationGatewayBackendHealthHttpSettings = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayBackendHealthHttpSettings
        PublicIPPrefixSku = Azure::Network::Mgmt::V2018_10_01::Models::PublicIPPrefixSku
        ApplicationGatewayBackendHealth = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayBackendHealth
        ExpressRoutePortListResult = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRoutePortListResult
        ApplicationGatewaySslPolicy = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewaySslPolicy
        InterfaceEndpointListResult = Azure::Network::Mgmt::V2018_10_01::Models::InterfaceEndpointListResult
        VpnClientIPsecParameters = Azure::Network::Mgmt::V2018_10_01::Models::VpnClientIPsecParameters
        LoadBalancerSku = Azure::Network::Mgmt::V2018_10_01::Models::LoadBalancerSku
        VirtualNetworkGatewayConnectionListResult = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewayConnectionListResult
        GatewayRouteListResult = Azure::Network::Mgmt::V2018_10_01::Models::GatewayRouteListResult
        OperationListResult = Azure::Network::Mgmt::V2018_10_01::Models::OperationListResult
        BgpPeerStatusListResult = Azure::Network::Mgmt::V2018_10_01::Models::BgpPeerStatusListResult
        Operation = Azure::Network::Mgmt::V2018_10_01::Models::Operation
        ApplicationGatewayProbeHealthResponseMatch = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayProbeHealthResponseMatch
        OperationPropertiesFormatServiceSpecification = Azure::Network::Mgmt::V2018_10_01::Models::OperationPropertiesFormatServiceSpecification
        GatewayRoute = Azure::Network::Mgmt::V2018_10_01::Models::GatewayRoute
        LogSpecification = Azure::Network::Mgmt::V2018_10_01::Models::LogSpecification
        ApplicationGatewayRewriteRuleActionSet = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayRewriteRuleActionSet
        LoadBalancerListResult = Azure::Network::Mgmt::V2018_10_01::Models::LoadBalancerListResult
        BgpPeerStatus = Azure::Network::Mgmt::V2018_10_01::Models::BgpPeerStatus
        InboundNatRuleListResult = Azure::Network::Mgmt::V2018_10_01::Models::InboundNatRuleListResult
        VpnClientConfiguration = Azure::Network::Mgmt::V2018_10_01::Models::VpnClientConfiguration
        LoadBalancerBackendAddressPoolListResult = Azure::Network::Mgmt::V2018_10_01::Models::LoadBalancerBackendAddressPoolListResult
        ApplicationGatewayFirewallExclusion = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayFirewallExclusion
        LoadBalancerFrontendIPConfigurationListResult = Azure::Network::Mgmt::V2018_10_01::Models::LoadBalancerFrontendIPConfigurationListResult
        ApplicationGatewayAutoscaleConfiguration = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayAutoscaleConfiguration
        LoadBalancerLoadBalancingRuleListResult = Azure::Network::Mgmt::V2018_10_01::Models::LoadBalancerLoadBalancingRuleListResult
        ManagedServiceIdentity = Azure::Network::Mgmt::V2018_10_01::Models::ManagedServiceIdentity
        LoadBalancerOutboundRuleListResult = Azure::Network::Mgmt::V2018_10_01::Models::LoadBalancerOutboundRuleListResult
        ApplicationGatewayListResult = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayListResult
        LoadBalancerProbeListResult = Azure::Network::Mgmt::V2018_10_01::Models::LoadBalancerProbeListResult
        ApplicationGatewayFirewallRuleGroup = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayFirewallRuleGroup
        ApplicationGatewayAvailableWafRuleSetsResult = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayAvailableWafRuleSetsResult
        ErrorDetails = Azure::Network::Mgmt::V2018_10_01::Models::ErrorDetails
        VirtualNetworkUsage = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkUsage
        Error = Azure::Network::Mgmt::V2018_10_01::Models::Error
        AzureAsyncOperationResult = Azure::Network::Mgmt::V2018_10_01::Models::AzureAsyncOperationResult
        ApplicationSecurityGroupListResult = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationSecurityGroupListResult
        NetworkInterfaceTapConfigurationListResult = Azure::Network::Mgmt::V2018_10_01::Models::NetworkInterfaceTapConfigurationListResult
        AvailableDelegationsResult = Azure::Network::Mgmt::V2018_10_01::Models::AvailableDelegationsResult
        AzureFirewallRCAction = Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallRCAction
        NetworkInterfaceLoadBalancerListResult = Azure::Network::Mgmt::V2018_10_01::Models::NetworkInterfaceLoadBalancerListResult
        AzureFirewallApplicationRule = Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallApplicationRule
        EffectiveNetworkSecurityGroupAssociation = Azure::Network::Mgmt::V2018_10_01::Models::EffectiveNetworkSecurityGroupAssociation
        AzureFirewallNatRCAction = Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallNatRCAction
        EffectiveNetworkSecurityRule = Azure::Network::Mgmt::V2018_10_01::Models::EffectiveNetworkSecurityRule
        VirtualNetworkListResult = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkListResult
        EffectiveNetworkSecurityGroup = Azure::Network::Mgmt::V2018_10_01::Models::EffectiveNetworkSecurityGroup
        DhcpOptions = Azure::Network::Mgmt::V2018_10_01::Models::DhcpOptions
        EffectiveNetworkSecurityGroupListResult = Azure::Network::Mgmt::V2018_10_01::Models::EffectiveNetworkSecurityGroupListResult
        AzureFirewallListResult = Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallListResult
        EffectiveRoute = Azure::Network::Mgmt::V2018_10_01::Models::EffectiveRoute
        AzureFirewallFqdnTagListResult = Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallFqdnTagListResult
        EffectiveRouteListResult = Azure::Network::Mgmt::V2018_10_01::Models::EffectiveRouteListResult
        DdosProtectionPlan = Azure::Network::Mgmt::V2018_10_01::Models::DdosProtectionPlan
        MetricSpecification = Azure::Network::Mgmt::V2018_10_01::Models::MetricSpecification
        AddressSpace = Azure::Network::Mgmt::V2018_10_01::Models::AddressSpace
        Dimension = Azure::Network::Mgmt::V2018_10_01::Models::Dimension
        UsagesListResult = Azure::Network::Mgmt::V2018_10_01::Models::UsagesListResult
        Availability = Azure::Network::Mgmt::V2018_10_01::Models::Availability
        ExpressRouteCircuitPeeringConfig = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitPeeringConfig
        OperationDisplay = Azure::Network::Mgmt::V2018_10_01::Models::OperationDisplay
        ExpressRouteCircuitStats = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitStats
        NetworkConfigurationDiagnosticResponse = Azure::Network::Mgmt::V2018_10_01::Models::NetworkConfigurationDiagnosticResponse
        UsageName = Azure::Network::Mgmt::V2018_10_01::Models::UsageName
        NetworkProfileListResult = Azure::Network::Mgmt::V2018_10_01::Models::NetworkProfileListResult
        ServiceEndpointPolicyDefinitionListResult = Azure::Network::Mgmt::V2018_10_01::Models::ServiceEndpointPolicyDefinitionListResult
        SecurityRuleListResult = Azure::Network::Mgmt::V2018_10_01::Models::SecurityRuleListResult
        ExpressRouteCircuitPeeringListResult = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitPeeringListResult
        NetworkSecurityGroupListResult = Azure::Network::Mgmt::V2018_10_01::Models::NetworkSecurityGroupListResult
        ExpressRouteCircuitServiceProviderProperties = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitServiceProviderProperties
        ErrorResponse = Azure::Network::Mgmt::V2018_10_01::Models::ErrorResponse
        ExpressRouteCircuitArpTable = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitArpTable
        NetworkConfigurationDiagnosticResult = Azure::Network::Mgmt::V2018_10_01::Models::NetworkConfigurationDiagnosticResult
        ExpressRouteCircuitRoutesTable = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitRoutesTable
        NetworkWatcherListResult = Azure::Network::Mgmt::V2018_10_01::Models::NetworkWatcherListResult
        ExpressRouteCircuitRoutesTableSummary = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitRoutesTableSummary
        TopologyParameters = Azure::Network::Mgmt::V2018_10_01::Models::TopologyParameters
        ExpressRouteCircuitListResult = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitListResult
        TopologyAssociation = Azure::Network::Mgmt::V2018_10_01::Models::TopologyAssociation
        BGPCommunity = Azure::Network::Mgmt::V2018_10_01::Models::BGPCommunity
        TopologyResource = Azure::Network::Mgmt::V2018_10_01::Models::TopologyResource
        ExpressRouteCrossConnectionRoutesTableSummary = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCrossConnectionRoutesTableSummary
        Topology = Azure::Network::Mgmt::V2018_10_01::Models::Topology
        VerificationIPFlowParameters = Azure::Network::Mgmt::V2018_10_01::Models::VerificationIPFlowParameters
        P2SVpnProfileParameters = Azure::Network::Mgmt::V2018_10_01::Models::P2SVpnProfileParameters
        VerificationIPFlowResult = Azure::Network::Mgmt::V2018_10_01::Models::VerificationIPFlowResult
        ListP2SVpnServerConfigurationsResult = Azure::Network::Mgmt::V2018_10_01::Models::ListP2SVpnServerConfigurationsResult
        NextHopParameters = Azure::Network::Mgmt::V2018_10_01::Models::NextHopParameters
        VpnSiteId = Azure::Network::Mgmt::V2018_10_01::Models::VpnSiteId
        NextHopResult = Azure::Network::Mgmt::V2018_10_01::Models::NextHopResult
        ListHubVirtualNetworkConnectionsResult = Azure::Network::Mgmt::V2018_10_01::Models::ListHubVirtualNetworkConnectionsResult
        SecurityGroupViewParameters = Azure::Network::Mgmt::V2018_10_01::Models::SecurityGroupViewParameters
        VirtualHubRouteTable = Azure::Network::Mgmt::V2018_10_01::Models::VirtualHubRouteTable
        NetworkInterfaceAssociation = Azure::Network::Mgmt::V2018_10_01::Models::NetworkInterfaceAssociation
        DeviceProperties = Azure::Network::Mgmt::V2018_10_01::Models::DeviceProperties
        SubnetAssociation = Azure::Network::Mgmt::V2018_10_01::Models::SubnetAssociation
        SecurityRuleAssociations = Azure::Network::Mgmt::V2018_10_01::Models::SecurityRuleAssociations
        ApplicationGatewayBackendHealthServer = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayBackendHealthServer
        SecurityGroupNetworkInterface = Azure::Network::Mgmt::V2018_10_01::Models::SecurityGroupNetworkInterface
        ApplicationGatewaySku = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewaySku
        SecurityGroupViewResult = Azure::Network::Mgmt::V2018_10_01::Models::SecurityGroupViewResult
        ConnectionResetSharedKey = Azure::Network::Mgmt::V2018_10_01::Models::ConnectionResetSharedKey
        PacketCaptureStorageLocation = Azure::Network::Mgmt::V2018_10_01::Models::PacketCaptureStorageLocation
        ApplicationGatewayCustomError = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayCustomError
        PacketCaptureFilter = Azure::Network::Mgmt::V2018_10_01::Models::PacketCaptureFilter
        VpnClientParameters = Azure::Network::Mgmt::V2018_10_01::Models::VpnClientParameters
        PacketCaptureParameters = Azure::Network::Mgmt::V2018_10_01::Models::PacketCaptureParameters
        ApplicationGatewayRewriteRule = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayRewriteRule
        PacketCapture = Azure::Network::Mgmt::V2018_10_01::Models::PacketCapture
        ApplicationGatewayFirewallDisabledRuleGroup = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayFirewallDisabledRuleGroup
        PacketCaptureResult = Azure::Network::Mgmt::V2018_10_01::Models::PacketCaptureResult
        ManagedServiceIdentityUserAssignedIdentitiesValue = Azure::Network::Mgmt::V2018_10_01::Models::ManagedServiceIdentityUserAssignedIdentitiesValue
        PacketCaptureListResult = Azure::Network::Mgmt::V2018_10_01::Models::PacketCaptureListResult
        ApplicationGatewayFirewallRule = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayFirewallRule
        PacketCaptureQueryStatusResult = Azure::Network::Mgmt::V2018_10_01::Models::PacketCaptureQueryStatusResult
        VirtualNetworkListUsageResult = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkListUsageResult
        TroubleshootingParameters = Azure::Network::Mgmt::V2018_10_01::Models::TroubleshootingParameters
        TagsObject = Azure::Network::Mgmt::V2018_10_01::Models::TagsObject
        QueryTroubleshootingParameters = Azure::Network::Mgmt::V2018_10_01::Models::QueryTroubleshootingParameters
        VirtualNetworkUsageName = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkUsageName
        TroubleshootingRecommendedActions = Azure::Network::Mgmt::V2018_10_01::Models::TroubleshootingRecommendedActions
        IPAddressAvailabilityResult = Azure::Network::Mgmt::V2018_10_01::Models::IPAddressAvailabilityResult
        TroubleshootingDetails = Azure::Network::Mgmt::V2018_10_01::Models::TroubleshootingDetails
        AzureFirewallNetworkRule = Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallNetworkRule
        TroubleshootingResult = Azure::Network::Mgmt::V2018_10_01::Models::TroubleshootingResult
        SubnetListResult = Azure::Network::Mgmt::V2018_10_01::Models::SubnetListResult
        RetentionPolicyParameters = Azure::Network::Mgmt::V2018_10_01::Models::RetentionPolicyParameters
        DdosProtectionPlanListResult = Azure::Network::Mgmt::V2018_10_01::Models::DdosProtectionPlanListResult
        FlowLogFormatParameters = Azure::Network::Mgmt::V2018_10_01::Models::FlowLogFormatParameters
        AuthorizationListResult = Azure::Network::Mgmt::V2018_10_01::Models::AuthorizationListResult
        FlowLogStatusParameters = Azure::Network::Mgmt::V2018_10_01::Models::FlowLogStatusParameters
        ExpressRouteConnectionId = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteConnectionId
        TrafficAnalyticsConfigurationProperties = Azure::Network::Mgmt::V2018_10_01::Models::TrafficAnalyticsConfigurationProperties
        Ipv6ExpressRouteCircuitPeeringConfig = Azure::Network::Mgmt::V2018_10_01::Models::Ipv6ExpressRouteCircuitPeeringConfig
        TrafficAnalyticsProperties = Azure::Network::Mgmt::V2018_10_01::Models::TrafficAnalyticsProperties
        BgpServiceCommunityListResult = Azure::Network::Mgmt::V2018_10_01::Models::BgpServiceCommunityListResult
        FlowLogInformation = Azure::Network::Mgmt::V2018_10_01::Models::FlowLogInformation
        ExpressRouteCircuitsRoutesTableListResult = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitsRoutesTableListResult
        ConnectivitySource = Azure::Network::Mgmt::V2018_10_01::Models::ConnectivitySource
        ExpressRouteServiceProviderBandwidthsOffered = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteServiceProviderBandwidthsOffered
        ConnectivityDestination = Azure::Network::Mgmt::V2018_10_01::Models::ConnectivityDestination
        ExpressRouteCrossConnectionsRoutesTableSummaryListResult = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCrossConnectionsRoutesTableSummaryListResult
        HTTPHeader = Azure::Network::Mgmt::V2018_10_01::Models::HTTPHeader
        ListP2SVpnGatewaysResult = Azure::Network::Mgmt::V2018_10_01::Models::ListP2SVpnGatewaysResult
        HTTPConfiguration = Azure::Network::Mgmt::V2018_10_01::Models::HTTPConfiguration
        ProtocolConfiguration = Azure::Network::Mgmt::V2018_10_01::Models::ProtocolConfiguration
        GetVpnSitesConfigurationRequest = Azure::Network::Mgmt::V2018_10_01::Models::GetVpnSitesConfigurationRequest
        ConnectivityParameters = Azure::Network::Mgmt::V2018_10_01::Models::ConnectivityParameters
        ApplicationGatewayConnectionDraining = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayConnectionDraining
        ConnectivityIssue = Azure::Network::Mgmt::V2018_10_01::Models::ConnectivityIssue
        LocalNetworkGatewayListResult = Azure::Network::Mgmt::V2018_10_01::Models::LocalNetworkGatewayListResult
        ConnectivityHop = Azure::Network::Mgmt::V2018_10_01::Models::ConnectivityHop
        VirtualNetworkGatewayListResult = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewayListResult
        ConnectivityInformation = Azure::Network::Mgmt::V2018_10_01::Models::ConnectivityInformation
        BgpSettings = Azure::Network::Mgmt::V2018_10_01::Models::BgpSettings
        AzureReachabilityReportLocation = Azure::Network::Mgmt::V2018_10_01::Models::AzureReachabilityReportLocation
        IpsecPolicy = Azure::Network::Mgmt::V2018_10_01::Models::IpsecPolicy
        AzureReachabilityReportParameters = Azure::Network::Mgmt::V2018_10_01::Models::AzureReachabilityReportParameters
        ApplicationGatewayAvailableSslPredefinedPolicies = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayAvailableSslPredefinedPolicies
        AzureReachabilityReportLatencyInfo = Azure::Network::Mgmt::V2018_10_01::Models::AzureReachabilityReportLatencyInfo
        AzureFirewallApplicationRuleProtocol = Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallApplicationRuleProtocol
        AzureReachabilityReportItem = Azure::Network::Mgmt::V2018_10_01::Models::AzureReachabilityReportItem
        VirtualNetworkPeeringListResult = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkPeeringListResult
        AzureReachabilityReport = Azure::Network::Mgmt::V2018_10_01::Models::AzureReachabilityReport
        EndpointServicesListResult = Azure::Network::Mgmt::V2018_10_01::Models::EndpointServicesListResult
        AvailableProvidersListParameters = Azure::Network::Mgmt::V2018_10_01::Models::AvailableProvidersListParameters
        ServiceEndpointPolicyListResult = Azure::Network::Mgmt::V2018_10_01::Models::ServiceEndpointPolicyListResult
        AvailableProvidersListCity = Azure::Network::Mgmt::V2018_10_01::Models::AvailableProvidersListCity
        ExpressRouteCircuitsArpTableListResult = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitsArpTableListResult
        AvailableProvidersListState = Azure::Network::Mgmt::V2018_10_01::Models::AvailableProvidersListState
        ExpressRouteServiceProviderListResult = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteServiceProviderListResult
        AvailableProvidersListCountry = Azure::Network::Mgmt::V2018_10_01::Models::AvailableProvidersListCountry
        AvailableProvidersList = Azure::Network::Mgmt::V2018_10_01::Models::AvailableProvidersList
        VirtualNetworkTapListResult = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkTapListResult
        ConnectionMonitorSource = Azure::Network::Mgmt::V2018_10_01::Models::ConnectionMonitorSource
        TunnelConnectionHealth = Azure::Network::Mgmt::V2018_10_01::Models::TunnelConnectionHealth
        ConnectionMonitorDestination = Azure::Network::Mgmt::V2018_10_01::Models::ConnectionMonitorDestination
        ApplicationGatewayWebApplicationFirewallConfiguration = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayWebApplicationFirewallConfiguration
        ConnectionMonitorParameters = Azure::Network::Mgmt::V2018_10_01::Models::ConnectionMonitorParameters
        AvailableDelegation = Azure::Network::Mgmt::V2018_10_01::Models::AvailableDelegation
        ConnectionMonitor = Azure::Network::Mgmt::V2018_10_01::Models::ConnectionMonitor
        DnsNameAvailabilityResult = Azure::Network::Mgmt::V2018_10_01::Models::DnsNameAvailabilityResult
        ConnectionMonitorResult = Azure::Network::Mgmt::V2018_10_01::Models::ConnectionMonitorResult
        ExpressRouteCircuitSku = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitSku
        ConnectionMonitorListResult = Azure::Network::Mgmt::V2018_10_01::Models::ConnectionMonitorListResult
        VpnProfileResponse = Azure::Network::Mgmt::V2018_10_01::Models::VpnProfileResponse
        ConnectionStateSnapshot = Azure::Network::Mgmt::V2018_10_01::Models::ConnectionStateSnapshot
        ApplicationGatewayBackendHealthPool = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayBackendHealthPool
        ConnectionMonitorQueryResult = Azure::Network::Mgmt::V2018_10_01::Models::ConnectionMonitorQueryResult
        VirtualNetworkGatewaySku = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewaySku
        NetworkConfigurationDiagnosticProfile = Azure::Network::Mgmt::V2018_10_01::Models::NetworkConfigurationDiagnosticProfile
        Usage = Azure::Network::Mgmt::V2018_10_01::Models::Usage
        NetworkConfigurationDiagnosticParameters = Azure::Network::Mgmt::V2018_10_01::Models::NetworkConfigurationDiagnosticParameters
        ListVpnGatewaysResult = Azure::Network::Mgmt::V2018_10_01::Models::ListVpnGatewaysResult
        MatchedRule = Azure::Network::Mgmt::V2018_10_01::Models::MatchedRule
        AzureFirewallNatRule = Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallNatRule
        NetworkSecurityRulesEvaluationResult = Azure::Network::Mgmt::V2018_10_01::Models::NetworkSecurityRulesEvaluationResult
        ApplicationGatewayHeaderConfiguration = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayHeaderConfiguration
        EvaluatedNetworkSecurityGroup = Azure::Network::Mgmt::V2018_10_01::Models::EvaluatedNetworkSecurityGroup
        ExpressRouteCircuitsRoutesTableSummaryListResult = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitsRoutesTableSummaryListResult
        NetworkSecurityGroupResult = Azure::Network::Mgmt::V2018_10_01::Models::NetworkSecurityGroupResult
        ApplicationGatewayBackendHttpSettings = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayBackendHttpSettings
        ApplicationGatewayIPConfiguration = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayIPConfiguration
        ApplicationGatewayAuthenticationCertificate = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayAuthenticationCertificate
        ApplicationGatewayTrustedRootCertificate = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayTrustedRootCertificate
        ApplicationGatewaySslCertificate = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewaySslCertificate
        ApplicationGatewayFrontendIPConfiguration = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayFrontendIPConfiguration
        ApplicationGatewayFrontendPort = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayFrontendPort
        ApplicationGatewayHttpListener = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayHttpListener
        ApplicationGatewayPathRule = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayPathRule
        ApplicationGatewayProbe = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayProbe
        ApplicationGatewayRequestRoutingRule = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayRequestRoutingRule
        ApplicationGatewayRewriteRuleSet = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayRewriteRuleSet
        ApplicationGatewayRedirectConfiguration = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayRedirectConfiguration
        ApplicationGatewayUrlPathMap = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayUrlPathMap
        ApplicationGateway = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGateway
        ApplicationGatewayFirewallRuleSet = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayFirewallRuleSet
        ApplicationGatewayAvailableSslOptions = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayAvailableSslOptions
        ApplicationGatewaySslPredefinedPolicy = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewaySslPredefinedPolicy
        AzureFirewallIPConfiguration = Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallIPConfiguration
        AzureFirewallApplicationRuleCollection = Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallApplicationRuleCollection
        AzureFirewallNatRuleCollection = Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallNatRuleCollection
        AzureFirewallNetworkRuleCollection = Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallNetworkRuleCollection
        AzureFirewall = Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewall
        AzureFirewallFqdnTag = Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallFqdnTag
        EndpointServiceResult = Azure::Network::Mgmt::V2018_10_01::Models::EndpointServiceResult
        ExpressRouteCircuitAuthorization = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitAuthorization
        RouteFilterRule = Azure::Network::Mgmt::V2018_10_01::Models::RouteFilterRule
        ExpressRouteCircuitConnection = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitConnection
        ExpressRouteCircuitPeering = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitPeering
        RouteFilter = Azure::Network::Mgmt::V2018_10_01::Models::RouteFilter
        ExpressRouteCircuit = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuit
        ExpressRouteServiceProvider = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteServiceProvider
        ExpressRouteCrossConnectionPeering = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCrossConnectionPeering
        ExpressRouteCrossConnection = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCrossConnection
        ExpressRouteConnection = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteConnection
        ExpressRouteGateway = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteGateway
        ExpressRoutePortsLocation = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRoutePortsLocation
        ExpressRouteLink = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteLink
        ExpressRoutePort = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRoutePort
        LoadBalancingRule = Azure::Network::Mgmt::V2018_10_01::Models::LoadBalancingRule
        Probe = Azure::Network::Mgmt::V2018_10_01::Models::Probe
        InboundNatPool = Azure::Network::Mgmt::V2018_10_01::Models::InboundNatPool
        OutboundRule = Azure::Network::Mgmt::V2018_10_01::Models::OutboundRule
        LoadBalancer = Azure::Network::Mgmt::V2018_10_01::Models::LoadBalancer
        ContainerNetworkInterfaceConfiguration = Azure::Network::Mgmt::V2018_10_01::Models::ContainerNetworkInterfaceConfiguration
        Container = Azure::Network::Mgmt::V2018_10_01::Models::Container
        ContainerNetworkInterface = Azure::Network::Mgmt::V2018_10_01::Models::ContainerNetworkInterface
        NetworkProfile = Azure::Network::Mgmt::V2018_10_01::Models::NetworkProfile
        NetworkWatcher = Azure::Network::Mgmt::V2018_10_01::Models::NetworkWatcher
        PublicIPPrefix = Azure::Network::Mgmt::V2018_10_01::Models::PublicIPPrefix
        PatchRouteFilterRule = Azure::Network::Mgmt::V2018_10_01::Models::PatchRouteFilterRule
        PatchRouteFilter = Azure::Network::Mgmt::V2018_10_01::Models::PatchRouteFilter
        BgpServiceCommunity = Azure::Network::Mgmt::V2018_10_01::Models::BgpServiceCommunity
        VirtualNetworkPeering = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkPeering
        VirtualNetwork = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetwork
        VirtualNetworkGatewayIPConfiguration = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewayIPConfiguration
        VpnClientRootCertificate = Azure::Network::Mgmt::V2018_10_01::Models::VpnClientRootCertificate
        VpnClientRevokedCertificate = Azure::Network::Mgmt::V2018_10_01::Models::VpnClientRevokedCertificate
        VirtualNetworkGateway = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGateway
        LocalNetworkGateway = Azure::Network::Mgmt::V2018_10_01::Models::LocalNetworkGateway
        VirtualNetworkGatewayConnection = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewayConnection
        ConnectionSharedKey = Azure::Network::Mgmt::V2018_10_01::Models::ConnectionSharedKey
        VirtualNetworkGatewayConnectionListEntity = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewayConnectionListEntity
        P2SVpnServerConfigVpnClientRootCertificate = Azure::Network::Mgmt::V2018_10_01::Models::P2SVpnServerConfigVpnClientRootCertificate
        P2SVpnServerConfigVpnClientRevokedCertificate = Azure::Network::Mgmt::V2018_10_01::Models::P2SVpnServerConfigVpnClientRevokedCertificate
        P2SVpnServerConfigRadiusServerRootCertificate = Azure::Network::Mgmt::V2018_10_01::Models::P2SVpnServerConfigRadiusServerRootCertificate
        P2SVpnServerConfigRadiusClientRootCertificate = Azure::Network::Mgmt::V2018_10_01::Models::P2SVpnServerConfigRadiusClientRootCertificate
        P2SVpnServerConfiguration = Azure::Network::Mgmt::V2018_10_01::Models::P2SVpnServerConfiguration
        VirtualWAN = Azure::Network::Mgmt::V2018_10_01::Models::VirtualWAN
        VpnSite = Azure::Network::Mgmt::V2018_10_01::Models::VpnSite
        HubVirtualNetworkConnection = Azure::Network::Mgmt::V2018_10_01::Models::HubVirtualNetworkConnection
        VirtualHub = Azure::Network::Mgmt::V2018_10_01::Models::VirtualHub
        VpnConnection = Azure::Network::Mgmt::V2018_10_01::Models::VpnConnection
        VpnGateway = Azure::Network::Mgmt::V2018_10_01::Models::VpnGateway
        P2SVpnGateway = Azure::Network::Mgmt::V2018_10_01::Models::P2SVpnGateway
        ApplicationGatewayProtocol = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayProtocol
        ApplicationGatewayCookieBasedAffinity = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayCookieBasedAffinity
        ApplicationGatewayBackendHealthServerHealth = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayBackendHealthServerHealth
        ApplicationGatewaySkuName = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewaySkuName
        ApplicationGatewayTier = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayTier
        ApplicationGatewaySslProtocol = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewaySslProtocol
        ApplicationGatewaySslPolicyType = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewaySslPolicyType
        ApplicationGatewaySslPolicyName = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewaySslPolicyName
        ApplicationGatewaySslCipherSuite = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewaySslCipherSuite
        ApplicationGatewayCustomErrorStatusCode = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayCustomErrorStatusCode
        ApplicationGatewayRequestRoutingRuleType = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayRequestRoutingRuleType
        ApplicationGatewayRedirectType = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayRedirectType
        ApplicationGatewayOperationalState = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayOperationalState
        ApplicationGatewayFirewallMode = Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayFirewallMode
        ResourceIdentityType = Azure::Network::Mgmt::V2018_10_01::Models::ResourceIdentityType
        ProvisioningState = Azure::Network::Mgmt::V2018_10_01::Models::ProvisioningState
        AzureFirewallRCActionType = Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallRCActionType
        AzureFirewallApplicationRuleProtocolType = Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallApplicationRuleProtocolType
        AzureFirewallNatRCActionType = Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallNatRCActionType
        AzureFirewallNetworkRuleProtocol = Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallNetworkRuleProtocol
        AuthorizationUseStatus = Azure::Network::Mgmt::V2018_10_01::Models::AuthorizationUseStatus
        ExpressRouteCircuitPeeringAdvertisedPublicPrefixState = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitPeeringAdvertisedPublicPrefixState
        Access = Azure::Network::Mgmt::V2018_10_01::Models::Access
        ExpressRoutePeeringType = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRoutePeeringType
        ExpressRoutePeeringState = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRoutePeeringState
        CircuitConnectionStatus = Azure::Network::Mgmt::V2018_10_01::Models::CircuitConnectionStatus
        ExpressRouteCircuitPeeringState = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitPeeringState
        ExpressRouteCircuitSkuTier = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitSkuTier
        ExpressRouteCircuitSkuFamily = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitSkuFamily
        ServiceProviderProvisioningState = Azure::Network::Mgmt::V2018_10_01::Models::ServiceProviderProvisioningState
        ExpressRouteLinkConnectorType = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteLinkConnectorType
        ExpressRouteLinkAdminState = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteLinkAdminState
        ExpressRoutePortsEncapsulation = Azure::Network::Mgmt::V2018_10_01::Models::ExpressRoutePortsEncapsulation
        LoadBalancerSkuName = Azure::Network::Mgmt::V2018_10_01::Models::LoadBalancerSkuName
        LoadDistribution = Azure::Network::Mgmt::V2018_10_01::Models::LoadDistribution
        ProbeProtocol = Azure::Network::Mgmt::V2018_10_01::Models::ProbeProtocol
        NetworkOperationStatus = Azure::Network::Mgmt::V2018_10_01::Models::NetworkOperationStatus
        EffectiveSecurityRuleProtocol = Azure::Network::Mgmt::V2018_10_01::Models::EffectiveSecurityRuleProtocol
        EffectiveRouteSource = Azure::Network::Mgmt::V2018_10_01::Models::EffectiveRouteSource
        EffectiveRouteState = Azure::Network::Mgmt::V2018_10_01::Models::EffectiveRouteState
        AssociationType = Azure::Network::Mgmt::V2018_10_01::Models::AssociationType
        Direction = Azure::Network::Mgmt::V2018_10_01::Models::Direction
        IpFlowProtocol = Azure::Network::Mgmt::V2018_10_01::Models::IpFlowProtocol
        NextHopType = Azure::Network::Mgmt::V2018_10_01::Models::NextHopType
        PcProtocol = Azure::Network::Mgmt::V2018_10_01::Models::PcProtocol
        PcStatus = Azure::Network::Mgmt::V2018_10_01::Models::PcStatus
        PcError = Azure::Network::Mgmt::V2018_10_01::Models::PcError
        FlowLogFormatType = Azure::Network::Mgmt::V2018_10_01::Models::FlowLogFormatType
        Protocol = Azure::Network::Mgmt::V2018_10_01::Models::Protocol
        HTTPMethod = Azure::Network::Mgmt::V2018_10_01::Models::HTTPMethod
        Origin = Azure::Network::Mgmt::V2018_10_01::Models::Origin
        Severity = Azure::Network::Mgmt::V2018_10_01::Models::Severity
        IssueType = Azure::Network::Mgmt::V2018_10_01::Models::IssueType
        ConnectionStatus = Azure::Network::Mgmt::V2018_10_01::Models::ConnectionStatus
        ConnectionMonitorSourceStatus = Azure::Network::Mgmt::V2018_10_01::Models::ConnectionMonitorSourceStatus
        ConnectionState = Azure::Network::Mgmt::V2018_10_01::Models::ConnectionState
        EvaluationState = Azure::Network::Mgmt::V2018_10_01::Models::EvaluationState
        VerbosityLevel = Azure::Network::Mgmt::V2018_10_01::Models::VerbosityLevel
        PublicIPPrefixSkuName = Azure::Network::Mgmt::V2018_10_01::Models::PublicIPPrefixSkuName
        VirtualNetworkPeeringState = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkPeeringState
        VirtualNetworkGatewayType = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewayType
        VpnType = Azure::Network::Mgmt::V2018_10_01::Models::VpnType
        VirtualNetworkGatewaySkuName = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewaySkuName
        VirtualNetworkGatewaySkuTier = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewaySkuTier
        VpnClientProtocol = Azure::Network::Mgmt::V2018_10_01::Models::VpnClientProtocol
        IpsecEncryption = Azure::Network::Mgmt::V2018_10_01::Models::IpsecEncryption
        IpsecIntegrity = Azure::Network::Mgmt::V2018_10_01::Models::IpsecIntegrity
        IkeEncryption = Azure::Network::Mgmt::V2018_10_01::Models::IkeEncryption
        IkeIntegrity = Azure::Network::Mgmt::V2018_10_01::Models::IkeIntegrity
        DhGroup = Azure::Network::Mgmt::V2018_10_01::Models::DhGroup
        PfsGroup = Azure::Network::Mgmt::V2018_10_01::Models::PfsGroup
        BgpPeerState = Azure::Network::Mgmt::V2018_10_01::Models::BgpPeerState
        ProcessorArchitecture = Azure::Network::Mgmt::V2018_10_01::Models::ProcessorArchitecture
        AuthenticationMethod = Azure::Network::Mgmt::V2018_10_01::Models::AuthenticationMethod
        VirtualNetworkGatewayConnectionStatus = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewayConnectionStatus
        VirtualNetworkGatewayConnectionType = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewayConnectionType
        VirtualNetworkGatewayConnectionProtocol = Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewayConnectionProtocol
        OfficeTrafficCategory = Azure::Network::Mgmt::V2018_10_01::Models::OfficeTrafficCategory
        VpnGatewayTunnelingProtocol = Azure::Network::Mgmt::V2018_10_01::Models::VpnGatewayTunnelingProtocol
        VpnConnectionStatus = Azure::Network::Mgmt::V2018_10_01::Models::VpnConnectionStatus
        VirtualWanSecurityProviderType = Azure::Network::Mgmt::V2018_10_01::Models::VirtualWanSecurityProviderType
        TunnelConnectionStatus = Azure::Network::Mgmt::V2018_10_01::Models::TunnelConnectionStatus
        HubVirtualNetworkConnectionStatus = Azure::Network::Mgmt::V2018_10_01::Models::HubVirtualNetworkConnectionStatus
        ApplicationGatewayBackendAddress = Azure::Network::Mgmt::V2017_03_30::Models::ApplicationGatewayBackendAddress
        PublicIPAddressSku = Azure::Network::Mgmt::V2017_03_30::Models::PublicIPAddressSku
        Resource = Azure::Network::Mgmt::V2017_03_30::Models::Resource
        IpTag = Azure::Network::Mgmt::V2017_03_30::Models::IpTag
        PublicIPAddressListResult = Azure::Network::Mgmt::V2017_03_30::Models::PublicIPAddressListResult
        EndpointService = Azure::Network::Mgmt::V2017_03_30::Models::EndpointService
        PublicIPAddressDnsSettings = Azure::Network::Mgmt::V2017_03_30::Models::PublicIPAddressDnsSettings
        NetworkInterfaceListResult = Azure::Network::Mgmt::V2017_03_30::Models::NetworkInterfaceListResult
        NetworkInterfaceDnsSettings = Azure::Network::Mgmt::V2017_03_30::Models::NetworkInterfaceDnsSettings
        SubResource = Azure::Network::Mgmt::V2017_03_30::Models::SubResource
        NetworkInterfaceIPConfigurationListResult = Azure::Network::Mgmt::V2017_03_30::Models::NetworkInterfaceIPConfigurationListResult
        ServiceEndpointPropertiesFormat = Azure::Network::Mgmt::V2017_03_30::Models::ServiceEndpointPropertiesFormat
        ApplicationSecurityGroup = Azure::Network::Mgmt::V2017_03_30::Models::ApplicationSecurityGroup
        Delegation = Azure::Network::Mgmt::V2017_03_30::Models::Delegation
        ServiceAssociationLink = Azure::Network::Mgmt::V2017_03_30::Models::ServiceAssociationLink
        ResourceNavigationLink = Azure::Network::Mgmt::V2017_03_30::Models::ResourceNavigationLink
        SecurityRule = Azure::Network::Mgmt::V2017_03_30::Models::SecurityRule
        InterfaceEndpoint = Azure::Network::Mgmt::V2017_03_30::Models::InterfaceEndpoint
        NetworkInterfaceTapConfiguration = Azure::Network::Mgmt::V2017_03_30::Models::NetworkInterfaceTapConfiguration
        IPConfiguration = Azure::Network::Mgmt::V2017_03_30::Models::IPConfiguration
        PublicIPAddress = Azure::Network::Mgmt::V2017_03_30::Models::PublicIPAddress
        FrontendIPConfiguration = Azure::Network::Mgmt::V2017_03_30::Models::FrontendIPConfiguration
        VirtualNetworkTap = Azure::Network::Mgmt::V2017_03_30::Models::VirtualNetworkTap
        ApplicationGatewayBackendAddressPool = Azure::Network::Mgmt::V2017_03_30::Models::ApplicationGatewayBackendAddressPool
        BackendAddressPool = Azure::Network::Mgmt::V2017_03_30::Models::BackendAddressPool
        InboundNatRule = Azure::Network::Mgmt::V2017_03_30::Models::InboundNatRule
        NetworkInterfaceIPConfiguration = Azure::Network::Mgmt::V2017_03_30::Models::NetworkInterfaceIPConfiguration
        NetworkInterface = Azure::Network::Mgmt::V2017_03_30::Models::NetworkInterface
        NetworkSecurityGroup = Azure::Network::Mgmt::V2017_03_30::Models::NetworkSecurityGroup
        Route = Azure::Network::Mgmt::V2017_03_30::Models::Route
        RouteTable = Azure::Network::Mgmt::V2017_03_30::Models::RouteTable
        ServiceEndpointPolicyDefinition = Azure::Network::Mgmt::V2017_03_30::Models::ServiceEndpointPolicyDefinition
        ServiceEndpointPolicy = Azure::Network::Mgmt::V2017_03_30::Models::ServiceEndpointPolicy
        IPConfigurationProfile = Azure::Network::Mgmt::V2017_03_30::Models::IPConfigurationProfile
        Subnet = Azure::Network::Mgmt::V2017_03_30::Models::Subnet
        SecurityRuleProtocol = Azure::Network::Mgmt::V2017_03_30::Models::SecurityRuleProtocol
        SecurityRuleAccess = Azure::Network::Mgmt::V2017_03_30::Models::SecurityRuleAccess
        SecurityRuleDirection = Azure::Network::Mgmt::V2017_03_30::Models::SecurityRuleDirection
        IPAllocationMethod = Azure::Network::Mgmt::V2017_03_30::Models::IPAllocationMethod
        PublicIPAddressSkuName = Azure::Network::Mgmt::V2017_03_30::Models::PublicIPAddressSkuName
        IPVersion = Azure::Network::Mgmt::V2017_03_30::Models::IPVersion
        TransportProtocol = Azure::Network::Mgmt::V2017_03_30::Models::TransportProtocol
        RouteNextHopType = Azure::Network::Mgmt::V2017_03_30::Models::RouteNextHopType
      end

      class NetworkManagementClass
        attr_reader :application_gateways, :application_security_groups, :available_delegations, :available_resource_group_delegations, :azure_firewalls, :azure_firewall_fqdn_tags, :ddos_protection_plans, :available_endpoint_services, :express_route_circuit_authorizations, :express_route_circuit_peerings, :express_route_circuit_connections, :express_route_circuits, :express_route_service_providers, :express_route_cross_connections, :express_route_cross_connection_peerings, :express_route_gateways, :express_route_connections, :express_route_ports_locations, :express_route_ports, :express_route_links, :interface_endpoints, :load_balancers, :load_balancer_backend_address_pools, :load_balancer_frontend_ipconfigurations, :inbound_nat_rules, :load_balancer_load_balancing_rules, :load_balancer_outbound_rules, :load_balancer_network_interfaces, :load_balancer_probes, :network_interface_ipconfigurations, :network_interface_load_balancers, :network_interface_tap_configurations, :network_profiles, :network_security_groups, :security_rules, :default_security_rules, :network_watchers, :packet_captures, :connection_monitors, :operations, :public_ipprefixes, :route_filters, :route_filter_rules, :route_tables, :routes, :bgp_service_communities, :service_endpoint_policies, :service_endpoint_policy_definitions, :usages, :virtual_networks, :subnets, :virtual_network_peerings, :virtual_network_gateways, :virtual_network_gateway_connections, :local_network_gateways, :virtual_network_taps, :virtual_wans, :vpn_sites, :vpn_sites_configuration, :virtual_hubs, :hub_virtual_network_connections, :vpn_gateways, :vpn_connections, :p2s_vpn_server_configurations, :p2s_vpn_gateways, :network_interfaces, :public_ipaddresses, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Network::Mgmt::V2018_10_01::NetworkManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @application_gateways = @client_0.application_gateways
          @application_security_groups = @client_0.application_security_groups
          @available_delegations = @client_0.available_delegations
          @available_resource_group_delegations = @client_0.available_resource_group_delegations
          @azure_firewalls = @client_0.azure_firewalls
          @azure_firewall_fqdn_tags = @client_0.azure_firewall_fqdn_tags
          @ddos_protection_plans = @client_0.ddos_protection_plans
          @available_endpoint_services = @client_0.available_endpoint_services
          @express_route_circuit_authorizations = @client_0.express_route_circuit_authorizations
          @express_route_circuit_peerings = @client_0.express_route_circuit_peerings
          @express_route_circuit_connections = @client_0.express_route_circuit_connections
          @express_route_circuits = @client_0.express_route_circuits
          @express_route_service_providers = @client_0.express_route_service_providers
          @express_route_cross_connections = @client_0.express_route_cross_connections
          @express_route_cross_connection_peerings = @client_0.express_route_cross_connection_peerings
          @express_route_gateways = @client_0.express_route_gateways
          @express_route_connections = @client_0.express_route_connections
          @express_route_ports_locations = @client_0.express_route_ports_locations
          @express_route_ports = @client_0.express_route_ports
          @express_route_links = @client_0.express_route_links
          @interface_endpoints = @client_0.interface_endpoints
          @load_balancers = @client_0.load_balancers
          @load_balancer_backend_address_pools = @client_0.load_balancer_backend_address_pools
          @load_balancer_frontend_ipconfigurations = @client_0.load_balancer_frontend_ipconfigurations
          @inbound_nat_rules = @client_0.inbound_nat_rules
          @load_balancer_load_balancing_rules = @client_0.load_balancer_load_balancing_rules
          @load_balancer_outbound_rules = @client_0.load_balancer_outbound_rules
          @load_balancer_network_interfaces = @client_0.load_balancer_network_interfaces
          @load_balancer_probes = @client_0.load_balancer_probes
          @network_interface_ipconfigurations = @client_0.network_interface_ipconfigurations
          @network_interface_load_balancers = @client_0.network_interface_load_balancers
          @network_interface_tap_configurations = @client_0.network_interface_tap_configurations
          @network_profiles = @client_0.network_profiles
          @network_security_groups = @client_0.network_security_groups
          @security_rules = @client_0.security_rules
          @default_security_rules = @client_0.default_security_rules
          @network_watchers = @client_0.network_watchers
          @packet_captures = @client_0.packet_captures
          @connection_monitors = @client_0.connection_monitors
          @operations = @client_0.operations
          @public_ipprefixes = @client_0.public_ipprefixes
          @route_filters = @client_0.route_filters
          @route_filter_rules = @client_0.route_filter_rules
          @route_tables = @client_0.route_tables
          @routes = @client_0.routes
          @bgp_service_communities = @client_0.bgp_service_communities
          @service_endpoint_policies = @client_0.service_endpoint_policies
          @service_endpoint_policy_definitions = @client_0.service_endpoint_policy_definitions
          @usages = @client_0.usages
          @virtual_networks = @client_0.virtual_networks
          @subnets = @client_0.subnets
          @virtual_network_peerings = @client_0.virtual_network_peerings
          @virtual_network_gateways = @client_0.virtual_network_gateways
          @virtual_network_gateway_connections = @client_0.virtual_network_gateway_connections
          @local_network_gateways = @client_0.local_network_gateways
          @virtual_network_taps = @client_0.virtual_network_taps
          @virtual_wans = @client_0.virtual_wans
          @vpn_sites = @client_0.vpn_sites
          @vpn_sites_configuration = @client_0.vpn_sites_configuration
          @virtual_hubs = @client_0.virtual_hubs
          @hub_virtual_network_connections = @client_0.hub_virtual_network_connections
          @vpn_gateways = @client_0.vpn_gateways
          @vpn_connections = @client_0.vpn_connections
          @p2s_vpn_server_configurations = @client_0.p2s_vpn_server_configurations
          @p2s_vpn_gateways = @client_0.p2s_vpn_gateways

          @client_1 = Azure::Network::Mgmt::V2017_03_30::NetworkManagementClient.new(configurable.credentials, base_url, options)
          if(@client_1.respond_to?(:subscription_id))
            @client_1.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_1)
          @network_interfaces = @client_1.network_interfaces
          @public_ipaddresses = @client_1.public_ipaddresses

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
          def container_network_interface_ip_configuration
            Azure::Network::Mgmt::V2018_10_01::Models::ContainerNetworkInterfaceIpConfiguration
          end
          def express_route_circuit_reference
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitReference
          end
          def route_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::RouteListResult
          end
          def route_table_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::RouteTableListResult
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
          def route_filter_rule_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::RouteFilterRuleListResult
          end
          def list_vpn_connections_result
            Azure::Network::Mgmt::V2018_10_01::Models::ListVpnConnectionsResult
          end
          def route_filter_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::RouteFilterListResult
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
          def vpn_device_script_parameters
            Azure::Network::Mgmt::V2018_10_01::Models::VpnDeviceScriptParameters
          end
          def express_route_ports_location_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRoutePortsLocationListResult
          end
          def virtual_network_gateway_list_connections_result
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewayListConnectionsResult
          end
          def referenced_public_ip_address
            Azure::Network::Mgmt::V2018_10_01::Models::ReferencedPublicIpAddress
          end
          def virtual_network_connection_gateway_reference
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkConnectionGatewayReference
          end
          def express_route_link_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteLinkListResult
          end
          def application_gateway_backend_health_http_settings
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayBackendHealthHttpSettings
          end
          def public_ipprefix_sku
            Azure::Network::Mgmt::V2018_10_01::Models::PublicIPPrefixSku
          end
          def application_gateway_backend_health
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayBackendHealth
          end
          def express_route_port_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRoutePortListResult
          end
          def application_gateway_ssl_policy
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewaySslPolicy
          end
          def interface_endpoint_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::InterfaceEndpointListResult
          end
          def vpn_client_ipsec_parameters
            Azure::Network::Mgmt::V2018_10_01::Models::VpnClientIPsecParameters
          end
          def load_balancer_sku
            Azure::Network::Mgmt::V2018_10_01::Models::LoadBalancerSku
          end
          def virtual_network_gateway_connection_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewayConnectionListResult
          end
          def gateway_route_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::GatewayRouteListResult
          end
          def operation_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::OperationListResult
          end
          def bgp_peer_status_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::BgpPeerStatusListResult
          end
          def operation
            Azure::Network::Mgmt::V2018_10_01::Models::Operation
          end
          def application_gateway_probe_health_response_match
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayProbeHealthResponseMatch
          end
          def operation_properties_format_service_specification
            Azure::Network::Mgmt::V2018_10_01::Models::OperationPropertiesFormatServiceSpecification
          end
          def gateway_route
            Azure::Network::Mgmt::V2018_10_01::Models::GatewayRoute
          end
          def log_specification
            Azure::Network::Mgmt::V2018_10_01::Models::LogSpecification
          end
          def application_gateway_rewrite_rule_action_set
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayRewriteRuleActionSet
          end
          def load_balancer_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::LoadBalancerListResult
          end
          def bgp_peer_status
            Azure::Network::Mgmt::V2018_10_01::Models::BgpPeerStatus
          end
          def inbound_nat_rule_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::InboundNatRuleListResult
          end
          def vpn_client_configuration
            Azure::Network::Mgmt::V2018_10_01::Models::VpnClientConfiguration
          end
          def load_balancer_backend_address_pool_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::LoadBalancerBackendAddressPoolListResult
          end
          def application_gateway_firewall_exclusion
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayFirewallExclusion
          end
          def load_balancer_frontend_ipconfiguration_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::LoadBalancerFrontendIPConfigurationListResult
          end
          def application_gateway_autoscale_configuration
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayAutoscaleConfiguration
          end
          def load_balancer_load_balancing_rule_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::LoadBalancerLoadBalancingRuleListResult
          end
          def managed_service_identity
            Azure::Network::Mgmt::V2018_10_01::Models::ManagedServiceIdentity
          end
          def load_balancer_outbound_rule_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::LoadBalancerOutboundRuleListResult
          end
          def application_gateway_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayListResult
          end
          def load_balancer_probe_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::LoadBalancerProbeListResult
          end
          def application_gateway_firewall_rule_group
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayFirewallRuleGroup
          end
          def application_gateway_available_waf_rule_sets_result
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayAvailableWafRuleSetsResult
          end
          def error_details
            Azure::Network::Mgmt::V2018_10_01::Models::ErrorDetails
          end
          def virtual_network_usage
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkUsage
          end
          def error
            Azure::Network::Mgmt::V2018_10_01::Models::Error
          end
          def azure_async_operation_result
            Azure::Network::Mgmt::V2018_10_01::Models::AzureAsyncOperationResult
          end
          def application_security_group_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationSecurityGroupListResult
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
          def network_interface_load_balancer_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::NetworkInterfaceLoadBalancerListResult
          end
          def azure_firewall_application_rule
            Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallApplicationRule
          end
          def effective_network_security_group_association
            Azure::Network::Mgmt::V2018_10_01::Models::EffectiveNetworkSecurityGroupAssociation
          end
          def azure_firewall_nat_rcaction
            Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallNatRCAction
          end
          def effective_network_security_rule
            Azure::Network::Mgmt::V2018_10_01::Models::EffectiveNetworkSecurityRule
          end
          def virtual_network_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkListResult
          end
          def effective_network_security_group
            Azure::Network::Mgmt::V2018_10_01::Models::EffectiveNetworkSecurityGroup
          end
          def dhcp_options
            Azure::Network::Mgmt::V2018_10_01::Models::DhcpOptions
          end
          def effective_network_security_group_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::EffectiveNetworkSecurityGroupListResult
          end
          def azure_firewall_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallListResult
          end
          def effective_route
            Azure::Network::Mgmt::V2018_10_01::Models::EffectiveRoute
          end
          def azure_firewall_fqdn_tag_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallFqdnTagListResult
          end
          def effective_route_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::EffectiveRouteListResult
          end
          def ddos_protection_plan
            Azure::Network::Mgmt::V2018_10_01::Models::DdosProtectionPlan
          end
          def metric_specification
            Azure::Network::Mgmt::V2018_10_01::Models::MetricSpecification
          end
          def address_space
            Azure::Network::Mgmt::V2018_10_01::Models::AddressSpace
          end
          def dimension
            Azure::Network::Mgmt::V2018_10_01::Models::Dimension
          end
          def usages_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::UsagesListResult
          end
          def availability
            Azure::Network::Mgmt::V2018_10_01::Models::Availability
          end
          def express_route_circuit_peering_config
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitPeeringConfig
          end
          def operation_display
            Azure::Network::Mgmt::V2018_10_01::Models::OperationDisplay
          end
          def express_route_circuit_stats
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitStats
          end
          def network_configuration_diagnostic_response
            Azure::Network::Mgmt::V2018_10_01::Models::NetworkConfigurationDiagnosticResponse
          end
          def usage_name
            Azure::Network::Mgmt::V2018_10_01::Models::UsageName
          end
          def network_profile_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::NetworkProfileListResult
          end
          def service_endpoint_policy_definition_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::ServiceEndpointPolicyDefinitionListResult
          end
          def security_rule_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::SecurityRuleListResult
          end
          def express_route_circuit_peering_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitPeeringListResult
          end
          def network_security_group_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::NetworkSecurityGroupListResult
          end
          def express_route_circuit_service_provider_properties
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitServiceProviderProperties
          end
          def error_response
            Azure::Network::Mgmt::V2018_10_01::Models::ErrorResponse
          end
          def express_route_circuit_arp_table
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitArpTable
          end
          def network_configuration_diagnostic_result
            Azure::Network::Mgmt::V2018_10_01::Models::NetworkConfigurationDiagnosticResult
          end
          def express_route_circuit_routes_table
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitRoutesTable
          end
          def network_watcher_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::NetworkWatcherListResult
          end
          def express_route_circuit_routes_table_summary
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitRoutesTableSummary
          end
          def topology_parameters
            Azure::Network::Mgmt::V2018_10_01::Models::TopologyParameters
          end
          def express_route_circuit_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitListResult
          end
          def topology_association
            Azure::Network::Mgmt::V2018_10_01::Models::TopologyAssociation
          end
          def bgpcommunity
            Azure::Network::Mgmt::V2018_10_01::Models::BGPCommunity
          end
          def topology_resource
            Azure::Network::Mgmt::V2018_10_01::Models::TopologyResource
          end
          def express_route_cross_connection_routes_table_summary
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCrossConnectionRoutesTableSummary
          end
          def topology
            Azure::Network::Mgmt::V2018_10_01::Models::Topology
          end
          def verification_ipflow_parameters
            Azure::Network::Mgmt::V2018_10_01::Models::VerificationIPFlowParameters
          end
          def p2_svpn_profile_parameters
            Azure::Network::Mgmt::V2018_10_01::Models::P2SVpnProfileParameters
          end
          def verification_ipflow_result
            Azure::Network::Mgmt::V2018_10_01::Models::VerificationIPFlowResult
          end
          def list_p2_svpn_server_configurations_result
            Azure::Network::Mgmt::V2018_10_01::Models::ListP2SVpnServerConfigurationsResult
          end
          def next_hop_parameters
            Azure::Network::Mgmt::V2018_10_01::Models::NextHopParameters
          end
          def vpn_site_id
            Azure::Network::Mgmt::V2018_10_01::Models::VpnSiteId
          end
          def next_hop_result
            Azure::Network::Mgmt::V2018_10_01::Models::NextHopResult
          end
          def list_hub_virtual_network_connections_result
            Azure::Network::Mgmt::V2018_10_01::Models::ListHubVirtualNetworkConnectionsResult
          end
          def security_group_view_parameters
            Azure::Network::Mgmt::V2018_10_01::Models::SecurityGroupViewParameters
          end
          def virtual_hub_route_table
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualHubRouteTable
          end
          def network_interface_association
            Azure::Network::Mgmt::V2018_10_01::Models::NetworkInterfaceAssociation
          end
          def device_properties
            Azure::Network::Mgmt::V2018_10_01::Models::DeviceProperties
          end
          def subnet_association
            Azure::Network::Mgmt::V2018_10_01::Models::SubnetAssociation
          end
          def security_rule_associations
            Azure::Network::Mgmt::V2018_10_01::Models::SecurityRuleAssociations
          end
          def application_gateway_backend_health_server
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayBackendHealthServer
          end
          def security_group_network_interface
            Azure::Network::Mgmt::V2018_10_01::Models::SecurityGroupNetworkInterface
          end
          def application_gateway_sku
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewaySku
          end
          def security_group_view_result
            Azure::Network::Mgmt::V2018_10_01::Models::SecurityGroupViewResult
          end
          def connection_reset_shared_key
            Azure::Network::Mgmt::V2018_10_01::Models::ConnectionResetSharedKey
          end
          def packet_capture_storage_location
            Azure::Network::Mgmt::V2018_10_01::Models::PacketCaptureStorageLocation
          end
          def application_gateway_custom_error
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayCustomError
          end
          def packet_capture_filter
            Azure::Network::Mgmt::V2018_10_01::Models::PacketCaptureFilter
          end
          def vpn_client_parameters
            Azure::Network::Mgmt::V2018_10_01::Models::VpnClientParameters
          end
          def packet_capture_parameters
            Azure::Network::Mgmt::V2018_10_01::Models::PacketCaptureParameters
          end
          def application_gateway_rewrite_rule
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayRewriteRule
          end
          def packet_capture
            Azure::Network::Mgmt::V2018_10_01::Models::PacketCapture
          end
          def application_gateway_firewall_disabled_rule_group
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayFirewallDisabledRuleGroup
          end
          def packet_capture_result
            Azure::Network::Mgmt::V2018_10_01::Models::PacketCaptureResult
          end
          def managed_service_identity_user_assigned_identities_value
            Azure::Network::Mgmt::V2018_10_01::Models::ManagedServiceIdentityUserAssignedIdentitiesValue
          end
          def packet_capture_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::PacketCaptureListResult
          end
          def application_gateway_firewall_rule
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayFirewallRule
          end
          def packet_capture_query_status_result
            Azure::Network::Mgmt::V2018_10_01::Models::PacketCaptureQueryStatusResult
          end
          def virtual_network_list_usage_result
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkListUsageResult
          end
          def troubleshooting_parameters
            Azure::Network::Mgmt::V2018_10_01::Models::TroubleshootingParameters
          end
          def tags_object
            Azure::Network::Mgmt::V2018_10_01::Models::TagsObject
          end
          def query_troubleshooting_parameters
            Azure::Network::Mgmt::V2018_10_01::Models::QueryTroubleshootingParameters
          end
          def virtual_network_usage_name
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkUsageName
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
          def azure_firewall_network_rule
            Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallNetworkRule
          end
          def troubleshooting_result
            Azure::Network::Mgmt::V2018_10_01::Models::TroubleshootingResult
          end
          def subnet_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::SubnetListResult
          end
          def retention_policy_parameters
            Azure::Network::Mgmt::V2018_10_01::Models::RetentionPolicyParameters
          end
          def ddos_protection_plan_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::DdosProtectionPlanListResult
          end
          def flow_log_format_parameters
            Azure::Network::Mgmt::V2018_10_01::Models::FlowLogFormatParameters
          end
          def authorization_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::AuthorizationListResult
          end
          def flow_log_status_parameters
            Azure::Network::Mgmt::V2018_10_01::Models::FlowLogStatusParameters
          end
          def express_route_connection_id
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteConnectionId
          end
          def traffic_analytics_configuration_properties
            Azure::Network::Mgmt::V2018_10_01::Models::TrafficAnalyticsConfigurationProperties
          end
          def ipv6_express_route_circuit_peering_config
            Azure::Network::Mgmt::V2018_10_01::Models::Ipv6ExpressRouteCircuitPeeringConfig
          end
          def traffic_analytics_properties
            Azure::Network::Mgmt::V2018_10_01::Models::TrafficAnalyticsProperties
          end
          def bgp_service_community_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::BgpServiceCommunityListResult
          end
          def flow_log_information
            Azure::Network::Mgmt::V2018_10_01::Models::FlowLogInformation
          end
          def express_route_circuits_routes_table_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitsRoutesTableListResult
          end
          def connectivity_source
            Azure::Network::Mgmt::V2018_10_01::Models::ConnectivitySource
          end
          def express_route_service_provider_bandwidths_offered
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteServiceProviderBandwidthsOffered
          end
          def connectivity_destination
            Azure::Network::Mgmt::V2018_10_01::Models::ConnectivityDestination
          end
          def express_route_cross_connections_routes_table_summary_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCrossConnectionsRoutesTableSummaryListResult
          end
          def httpheader
            Azure::Network::Mgmt::V2018_10_01::Models::HTTPHeader
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
          def connectivity_parameters
            Azure::Network::Mgmt::V2018_10_01::Models::ConnectivityParameters
          end
          def application_gateway_connection_draining
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayConnectionDraining
          end
          def connectivity_issue
            Azure::Network::Mgmt::V2018_10_01::Models::ConnectivityIssue
          end
          def local_network_gateway_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::LocalNetworkGatewayListResult
          end
          def connectivity_hop
            Azure::Network::Mgmt::V2018_10_01::Models::ConnectivityHop
          end
          def virtual_network_gateway_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewayListResult
          end
          def connectivity_information
            Azure::Network::Mgmt::V2018_10_01::Models::ConnectivityInformation
          end
          def bgp_settings
            Azure::Network::Mgmt::V2018_10_01::Models::BgpSettings
          end
          def azure_reachability_report_location
            Azure::Network::Mgmt::V2018_10_01::Models::AzureReachabilityReportLocation
          end
          def ipsec_policy
            Azure::Network::Mgmt::V2018_10_01::Models::IpsecPolicy
          end
          def azure_reachability_report_parameters
            Azure::Network::Mgmt::V2018_10_01::Models::AzureReachabilityReportParameters
          end
          def application_gateway_available_ssl_predefined_policies
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayAvailableSslPredefinedPolicies
          end
          def azure_reachability_report_latency_info
            Azure::Network::Mgmt::V2018_10_01::Models::AzureReachabilityReportLatencyInfo
          end
          def azure_firewall_application_rule_protocol
            Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallApplicationRuleProtocol
          end
          def azure_reachability_report_item
            Azure::Network::Mgmt::V2018_10_01::Models::AzureReachabilityReportItem
          end
          def virtual_network_peering_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkPeeringListResult
          end
          def azure_reachability_report
            Azure::Network::Mgmt::V2018_10_01::Models::AzureReachabilityReport
          end
          def endpoint_services_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::EndpointServicesListResult
          end
          def available_providers_list_parameters
            Azure::Network::Mgmt::V2018_10_01::Models::AvailableProvidersListParameters
          end
          def service_endpoint_policy_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::ServiceEndpointPolicyListResult
          end
          def available_providers_list_city
            Azure::Network::Mgmt::V2018_10_01::Models::AvailableProvidersListCity
          end
          def express_route_circuits_arp_table_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitsArpTableListResult
          end
          def available_providers_list_state
            Azure::Network::Mgmt::V2018_10_01::Models::AvailableProvidersListState
          end
          def express_route_service_provider_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteServiceProviderListResult
          end
          def available_providers_list_country
            Azure::Network::Mgmt::V2018_10_01::Models::AvailableProvidersListCountry
          end
          def available_providers_list
            Azure::Network::Mgmt::V2018_10_01::Models::AvailableProvidersList
          end
          def virtual_network_tap_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkTapListResult
          end
          def connection_monitor_source
            Azure::Network::Mgmt::V2018_10_01::Models::ConnectionMonitorSource
          end
          def tunnel_connection_health
            Azure::Network::Mgmt::V2018_10_01::Models::TunnelConnectionHealth
          end
          def connection_monitor_destination
            Azure::Network::Mgmt::V2018_10_01::Models::ConnectionMonitorDestination
          end
          def application_gateway_web_application_firewall_configuration
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayWebApplicationFirewallConfiguration
          end
          def connection_monitor_parameters
            Azure::Network::Mgmt::V2018_10_01::Models::ConnectionMonitorParameters
          end
          def available_delegation
            Azure::Network::Mgmt::V2018_10_01::Models::AvailableDelegation
          end
          def connection_monitor
            Azure::Network::Mgmt::V2018_10_01::Models::ConnectionMonitor
          end
          def dns_name_availability_result
            Azure::Network::Mgmt::V2018_10_01::Models::DnsNameAvailabilityResult
          end
          def connection_monitor_result
            Azure::Network::Mgmt::V2018_10_01::Models::ConnectionMonitorResult
          end
          def express_route_circuit_sku
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitSku
          end
          def connection_monitor_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::ConnectionMonitorListResult
          end
          def vpn_profile_response
            Azure::Network::Mgmt::V2018_10_01::Models::VpnProfileResponse
          end
          def connection_state_snapshot
            Azure::Network::Mgmt::V2018_10_01::Models::ConnectionStateSnapshot
          end
          def application_gateway_backend_health_pool
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayBackendHealthPool
          end
          def connection_monitor_query_result
            Azure::Network::Mgmt::V2018_10_01::Models::ConnectionMonitorQueryResult
          end
          def virtual_network_gateway_sku
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewaySku
          end
          def network_configuration_diagnostic_profile
            Azure::Network::Mgmt::V2018_10_01::Models::NetworkConfigurationDiagnosticProfile
          end
          def usage
            Azure::Network::Mgmt::V2018_10_01::Models::Usage
          end
          def network_configuration_diagnostic_parameters
            Azure::Network::Mgmt::V2018_10_01::Models::NetworkConfigurationDiagnosticParameters
          end
          def list_vpn_gateways_result
            Azure::Network::Mgmt::V2018_10_01::Models::ListVpnGatewaysResult
          end
          def matched_rule
            Azure::Network::Mgmt::V2018_10_01::Models::MatchedRule
          end
          def azure_firewall_nat_rule
            Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallNatRule
          end
          def network_security_rules_evaluation_result
            Azure::Network::Mgmt::V2018_10_01::Models::NetworkSecurityRulesEvaluationResult
          end
          def application_gateway_header_configuration
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayHeaderConfiguration
          end
          def evaluated_network_security_group
            Azure::Network::Mgmt::V2018_10_01::Models::EvaluatedNetworkSecurityGroup
          end
          def express_route_circuits_routes_table_summary_list_result
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitsRoutesTableSummaryListResult
          end
          def network_security_group_result
            Azure::Network::Mgmt::V2018_10_01::Models::NetworkSecurityGroupResult
          end
          def application_gateway_backend_http_settings
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayBackendHttpSettings
          end
          def application_gateway_ipconfiguration
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayIPConfiguration
          end
          def application_gateway_authentication_certificate
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayAuthenticationCertificate
          end
          def application_gateway_trusted_root_certificate
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayTrustedRootCertificate
          end
          def application_gateway_ssl_certificate
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewaySslCertificate
          end
          def application_gateway_frontend_ipconfiguration
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayFrontendIPConfiguration
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
          def application_gateway_rewrite_rule_set
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayRewriteRuleSet
          end
          def application_gateway_redirect_configuration
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayRedirectConfiguration
          end
          def application_gateway_url_path_map
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayUrlPathMap
          end
          def application_gateway
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGateway
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
          def endpoint_service_result
            Azure::Network::Mgmt::V2018_10_01::Models::EndpointServiceResult
          end
          def express_route_circuit_authorization
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitAuthorization
          end
          def route_filter_rule
            Azure::Network::Mgmt::V2018_10_01::Models::RouteFilterRule
          end
          def express_route_circuit_connection
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitConnection
          end
          def express_route_circuit_peering
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCircuitPeering
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
          def express_route_cross_connection_peering
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteCrossConnectionPeering
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
          def express_route_link
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteLink
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
          def inbound_nat_pool
            Azure::Network::Mgmt::V2018_10_01::Models::InboundNatPool
          end
          def outbound_rule
            Azure::Network::Mgmt::V2018_10_01::Models::OutboundRule
          end
          def load_balancer
            Azure::Network::Mgmt::V2018_10_01::Models::LoadBalancer
          end
          def container_network_interface_configuration
            Azure::Network::Mgmt::V2018_10_01::Models::ContainerNetworkInterfaceConfiguration
          end
          def container
            Azure::Network::Mgmt::V2018_10_01::Models::Container
          end
          def container_network_interface
            Azure::Network::Mgmt::V2018_10_01::Models::ContainerNetworkInterface
          end
          def network_profile
            Azure::Network::Mgmt::V2018_10_01::Models::NetworkProfile
          end
          def network_watcher
            Azure::Network::Mgmt::V2018_10_01::Models::NetworkWatcher
          end
          def public_ipprefix
            Azure::Network::Mgmt::V2018_10_01::Models::PublicIPPrefix
          end
          def patch_route_filter_rule
            Azure::Network::Mgmt::V2018_10_01::Models::PatchRouteFilterRule
          end
          def patch_route_filter
            Azure::Network::Mgmt::V2018_10_01::Models::PatchRouteFilter
          end
          def bgp_service_community
            Azure::Network::Mgmt::V2018_10_01::Models::BgpServiceCommunity
          end
          def virtual_network_peering
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkPeering
          end
          def virtual_network
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetwork
          end
          def virtual_network_gateway_ipconfiguration
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewayIPConfiguration
          end
          def vpn_client_root_certificate
            Azure::Network::Mgmt::V2018_10_01::Models::VpnClientRootCertificate
          end
          def vpn_client_revoked_certificate
            Azure::Network::Mgmt::V2018_10_01::Models::VpnClientRevokedCertificate
          end
          def virtual_network_gateway
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGateway
          end
          def local_network_gateway
            Azure::Network::Mgmt::V2018_10_01::Models::LocalNetworkGateway
          end
          def virtual_network_gateway_connection
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewayConnection
          end
          def connection_shared_key
            Azure::Network::Mgmt::V2018_10_01::Models::ConnectionSharedKey
          end
          def virtual_network_gateway_connection_list_entity
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewayConnectionListEntity
          end
          def p2_svpn_server_config_vpn_client_root_certificate
            Azure::Network::Mgmt::V2018_10_01::Models::P2SVpnServerConfigVpnClientRootCertificate
          end
          def p2_svpn_server_config_vpn_client_revoked_certificate
            Azure::Network::Mgmt::V2018_10_01::Models::P2SVpnServerConfigVpnClientRevokedCertificate
          end
          def p2_svpn_server_config_radius_server_root_certificate
            Azure::Network::Mgmt::V2018_10_01::Models::P2SVpnServerConfigRadiusServerRootCertificate
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
          def p2_svpn_gateway
            Azure::Network::Mgmt::V2018_10_01::Models::P2SVpnGateway
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
          def application_gateway_ssl_cipher_suite
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewaySslCipherSuite
          end
          def application_gateway_custom_error_status_code
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayCustomErrorStatusCode
          end
          def application_gateway_request_routing_rule_type
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayRequestRoutingRuleType
          end
          def application_gateway_redirect_type
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayRedirectType
          end
          def application_gateway_operational_state
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayOperationalState
          end
          def application_gateway_firewall_mode
            Azure::Network::Mgmt::V2018_10_01::Models::ApplicationGatewayFirewallMode
          end
          def resource_identity_type
            Azure::Network::Mgmt::V2018_10_01::Models::ResourceIdentityType
          end
          def provisioning_state
            Azure::Network::Mgmt::V2018_10_01::Models::ProvisioningState
          end
          def azure_firewall_rcaction_type
            Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallRCActionType
          end
          def azure_firewall_application_rule_protocol_type
            Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallApplicationRuleProtocolType
          end
          def azure_firewall_nat_rcaction_type
            Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallNatRCActionType
          end
          def azure_firewall_network_rule_protocol
            Azure::Network::Mgmt::V2018_10_01::Models::AzureFirewallNetworkRuleProtocol
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
          def express_route_peering_type
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRoutePeeringType
          end
          def express_route_peering_state
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRoutePeeringState
          end
          def circuit_connection_status
            Azure::Network::Mgmt::V2018_10_01::Models::CircuitConnectionStatus
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
          def express_route_link_connector_type
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteLinkConnectorType
          end
          def express_route_link_admin_state
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRouteLinkAdminState
          end
          def express_route_ports_encapsulation
            Azure::Network::Mgmt::V2018_10_01::Models::ExpressRoutePortsEncapsulation
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
          def effective_security_rule_protocol
            Azure::Network::Mgmt::V2018_10_01::Models::EffectiveSecurityRuleProtocol
          end
          def effective_route_source
            Azure::Network::Mgmt::V2018_10_01::Models::EffectiveRouteSource
          end
          def effective_route_state
            Azure::Network::Mgmt::V2018_10_01::Models::EffectiveRouteState
          end
          def association_type
            Azure::Network::Mgmt::V2018_10_01::Models::AssociationType
          end
          def direction
            Azure::Network::Mgmt::V2018_10_01::Models::Direction
          end
          def ip_flow_protocol
            Azure::Network::Mgmt::V2018_10_01::Models::IpFlowProtocol
          end
          def next_hop_type
            Azure::Network::Mgmt::V2018_10_01::Models::NextHopType
          end
          def pc_protocol
            Azure::Network::Mgmt::V2018_10_01::Models::PcProtocol
          end
          def pc_status
            Azure::Network::Mgmt::V2018_10_01::Models::PcStatus
          end
          def pc_error
            Azure::Network::Mgmt::V2018_10_01::Models::PcError
          end
          def flow_log_format_type
            Azure::Network::Mgmt::V2018_10_01::Models::FlowLogFormatType
          end
          def protocol
            Azure::Network::Mgmt::V2018_10_01::Models::Protocol
          end
          def httpmethod
            Azure::Network::Mgmt::V2018_10_01::Models::HTTPMethod
          end
          def origin
            Azure::Network::Mgmt::V2018_10_01::Models::Origin
          end
          def severity
            Azure::Network::Mgmt::V2018_10_01::Models::Severity
          end
          def issue_type
            Azure::Network::Mgmt::V2018_10_01::Models::IssueType
          end
          def connection_status
            Azure::Network::Mgmt::V2018_10_01::Models::ConnectionStatus
          end
          def connection_monitor_source_status
            Azure::Network::Mgmt::V2018_10_01::Models::ConnectionMonitorSourceStatus
          end
          def connection_state
            Azure::Network::Mgmt::V2018_10_01::Models::ConnectionState
          end
          def evaluation_state
            Azure::Network::Mgmt::V2018_10_01::Models::EvaluationState
          end
          def verbosity_level
            Azure::Network::Mgmt::V2018_10_01::Models::VerbosityLevel
          end
          def public_ipprefix_sku_name
            Azure::Network::Mgmt::V2018_10_01::Models::PublicIPPrefixSkuName
          end
          def virtual_network_peering_state
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkPeeringState
          end
          def virtual_network_gateway_type
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewayType
          end
          def vpn_type
            Azure::Network::Mgmt::V2018_10_01::Models::VpnType
          end
          def virtual_network_gateway_sku_name
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewaySkuName
          end
          def virtual_network_gateway_sku_tier
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewaySkuTier
          end
          def vpn_client_protocol
            Azure::Network::Mgmt::V2018_10_01::Models::VpnClientProtocol
          end
          def ipsec_encryption
            Azure::Network::Mgmt::V2018_10_01::Models::IpsecEncryption
          end
          def ipsec_integrity
            Azure::Network::Mgmt::V2018_10_01::Models::IpsecIntegrity
          end
          def ike_encryption
            Azure::Network::Mgmt::V2018_10_01::Models::IkeEncryption
          end
          def ike_integrity
            Azure::Network::Mgmt::V2018_10_01::Models::IkeIntegrity
          end
          def dh_group
            Azure::Network::Mgmt::V2018_10_01::Models::DhGroup
          end
          def pfs_group
            Azure::Network::Mgmt::V2018_10_01::Models::PfsGroup
          end
          def bgp_peer_state
            Azure::Network::Mgmt::V2018_10_01::Models::BgpPeerState
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
          def virtual_network_gateway_connection_type
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewayConnectionType
          end
          def virtual_network_gateway_connection_protocol
            Azure::Network::Mgmt::V2018_10_01::Models::VirtualNetworkGatewayConnectionProtocol
          end
          def office_traffic_category
            Azure::Network::Mgmt::V2018_10_01::Models::OfficeTrafficCategory
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
          def tunnel_connection_status
            Azure::Network::Mgmt::V2018_10_01::Models::TunnelConnectionStatus
          end
          def hub_virtual_network_connection_status
            Azure::Network::Mgmt::V2018_10_01::Models::HubVirtualNetworkConnectionStatus
          end
          def application_gateway_backend_address
            Azure::Network::Mgmt::V2017_03_30::Models::ApplicationGatewayBackendAddress
          end
          def public_ipaddress_sku
            Azure::Network::Mgmt::V2017_03_30::Models::PublicIPAddressSku
          end
          def resource
            Azure::Network::Mgmt::V2017_03_30::Models::Resource
          end
          def ip_tag
            Azure::Network::Mgmt::V2017_03_30::Models::IpTag
          end
          def public_ipaddress_list_result
            Azure::Network::Mgmt::V2017_03_30::Models::PublicIPAddressListResult
          end
          def endpoint_service
            Azure::Network::Mgmt::V2017_03_30::Models::EndpointService
          end
          def public_ipaddress_dns_settings
            Azure::Network::Mgmt::V2017_03_30::Models::PublicIPAddressDnsSettings
          end
          def network_interface_list_result
            Azure::Network::Mgmt::V2017_03_30::Models::NetworkInterfaceListResult
          end
          def network_interface_dns_settings
            Azure::Network::Mgmt::V2017_03_30::Models::NetworkInterfaceDnsSettings
          end
          def sub_resource
            Azure::Network::Mgmt::V2017_03_30::Models::SubResource
          end
          def network_interface_ipconfiguration_list_result
            Azure::Network::Mgmt::V2017_03_30::Models::NetworkInterfaceIPConfigurationListResult
          end
          def service_endpoint_properties_format
            Azure::Network::Mgmt::V2017_03_30::Models::ServiceEndpointPropertiesFormat
          end
          def application_security_group
            Azure::Network::Mgmt::V2017_03_30::Models::ApplicationSecurityGroup
          end
          def delegation
            Azure::Network::Mgmt::V2017_03_30::Models::Delegation
          end
          def service_association_link
            Azure::Network::Mgmt::V2017_03_30::Models::ServiceAssociationLink
          end
          def resource_navigation_link
            Azure::Network::Mgmt::V2017_03_30::Models::ResourceNavigationLink
          end
          def security_rule
            Azure::Network::Mgmt::V2017_03_30::Models::SecurityRule
          end
          def interface_endpoint
            Azure::Network::Mgmt::V2017_03_30::Models::InterfaceEndpoint
          end
          def network_interface_tap_configuration
            Azure::Network::Mgmt::V2017_03_30::Models::NetworkInterfaceTapConfiguration
          end
          def ipconfiguration
            Azure::Network::Mgmt::V2017_03_30::Models::IPConfiguration
          end
          def public_ipaddress
            Azure::Network::Mgmt::V2017_03_30::Models::PublicIPAddress
          end
          def frontend_ipconfiguration
            Azure::Network::Mgmt::V2017_03_30::Models::FrontendIPConfiguration
          end
          def virtual_network_tap
            Azure::Network::Mgmt::V2017_03_30::Models::VirtualNetworkTap
          end
          def application_gateway_backend_address_pool
            Azure::Network::Mgmt::V2017_03_30::Models::ApplicationGatewayBackendAddressPool
          end
          def backend_address_pool
            Azure::Network::Mgmt::V2017_03_30::Models::BackendAddressPool
          end
          def inbound_nat_rule
            Azure::Network::Mgmt::V2017_03_30::Models::InboundNatRule
          end
          def network_interface_ipconfiguration
            Azure::Network::Mgmt::V2017_03_30::Models::NetworkInterfaceIPConfiguration
          end
          def network_interface
            Azure::Network::Mgmt::V2017_03_30::Models::NetworkInterface
          end
          def network_security_group
            Azure::Network::Mgmt::V2017_03_30::Models::NetworkSecurityGroup
          end
          def route
            Azure::Network::Mgmt::V2017_03_30::Models::Route
          end
          def route_table
            Azure::Network::Mgmt::V2017_03_30::Models::RouteTable
          end
          def service_endpoint_policy_definition
            Azure::Network::Mgmt::V2017_03_30::Models::ServiceEndpointPolicyDefinition
          end
          def service_endpoint_policy
            Azure::Network::Mgmt::V2017_03_30::Models::ServiceEndpointPolicy
          end
          def ipconfiguration_profile
            Azure::Network::Mgmt::V2017_03_30::Models::IPConfigurationProfile
          end
          def subnet
            Azure::Network::Mgmt::V2017_03_30::Models::Subnet
          end
          def security_rule_protocol
            Azure::Network::Mgmt::V2017_03_30::Models::SecurityRuleProtocol
          end
          def security_rule_access
            Azure::Network::Mgmt::V2017_03_30::Models::SecurityRuleAccess
          end
          def security_rule_direction
            Azure::Network::Mgmt::V2017_03_30::Models::SecurityRuleDirection
          end
          def ipallocation_method
            Azure::Network::Mgmt::V2017_03_30::Models::IPAllocationMethod
          end
          def public_ipaddress_sku_name
            Azure::Network::Mgmt::V2017_03_30::Models::PublicIPAddressSkuName
          end
          def ipversion
            Azure::Network::Mgmt::V2017_03_30::Models::IPVersion
          end
          def transport_protocol
            Azure::Network::Mgmt::V2017_03_30::Models::TransportProtocol
          end
          def route_next_hop_type
            Azure::Network::Mgmt::V2017_03_30::Models::RouteNextHopType
          end
        end
      end
    end
  end
end
