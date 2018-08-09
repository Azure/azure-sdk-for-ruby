# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_network'

module Azure::Profiles::Latest
  module Network
    module Mgmt
      NetworkInterfaces = Azure::Network::Mgmt::V2018_01_01::NetworkInterfaces
      NetworkSecurityGroups = Azure::Network::Mgmt::V2018_01_01::NetworkSecurityGroups
      SecurityRules = Azure::Network::Mgmt::V2018_01_01::SecurityRules
      PublicIPAddresses = Azure::Network::Mgmt::V2018_01_01::PublicIPAddresses
      RouteTables = Azure::Network::Mgmt::V2018_01_01::RouteTables
      Routes = Azure::Network::Mgmt::V2018_01_01::Routes
      Usages = Azure::Network::Mgmt::V2018_01_01::Usages
      VirtualNetworks = Azure::Network::Mgmt::V2018_01_01::VirtualNetworks
      Subnets = Azure::Network::Mgmt::V2018_01_01::Subnets
      VirtualNetworkGateways = Azure::Network::Mgmt::V2018_01_01::VirtualNetworkGateways
      VirtualNetworkGatewayConnections = Azure::Network::Mgmt::V2018_01_01::VirtualNetworkGatewayConnections
      LocalNetworkGateways = Azure::Network::Mgmt::V2018_01_01::LocalNetworkGateways
      Operations = Azure::Network::Mgmt::V2018_01_01::Operations
      ApplicationSecurityGroups = Azure::Network::Mgmt::V2018_01_01::ApplicationSecurityGroups
      AvailableEndpointServices = Azure::Network::Mgmt::V2018_01_01::AvailableEndpointServices
      LoadBalancerBackendAddressPools = Azure::Network::Mgmt::V2018_01_01::LoadBalancerBackendAddressPools
      LoadBalancerFrontendIPConfigurations = Azure::Network::Mgmt::V2018_01_01::LoadBalancerFrontendIPConfigurations
      InboundNatRules = Azure::Network::Mgmt::V2018_01_01::InboundNatRules
      LoadBalancerLoadBalancingRules = Azure::Network::Mgmt::V2018_01_01::LoadBalancerLoadBalancingRules
      LoadBalancerNetworkInterfaces = Azure::Network::Mgmt::V2018_01_01::LoadBalancerNetworkInterfaces
      LoadBalancerProbes = Azure::Network::Mgmt::V2018_01_01::LoadBalancerProbes
      NetworkInterfaceIPConfigurations = Azure::Network::Mgmt::V2018_01_01::NetworkInterfaceIPConfigurations
      NetworkInterfaceLoadBalancers = Azure::Network::Mgmt::V2018_01_01::NetworkInterfaceLoadBalancers
      DefaultSecurityRules = Azure::Network::Mgmt::V2018_01_01::DefaultSecurityRules
      NetworkWatchers = Azure::Network::Mgmt::V2018_01_01::NetworkWatchers
      PacketCaptures = Azure::Network::Mgmt::V2018_01_01::PacketCaptures
      ConnectionMonitors = Azure::Network::Mgmt::V2018_01_01::ConnectionMonitors
      RouteFilters = Azure::Network::Mgmt::V2018_01_01::RouteFilters
      RouteFilterRules = Azure::Network::Mgmt::V2018_01_01::RouteFilterRules
      BgpServiceCommunities = Azure::Network::Mgmt::V2018_01_01::BgpServiceCommunities
      VirtualNetworkPeerings = Azure::Network::Mgmt::V2018_01_01::VirtualNetworkPeerings
      ApplicationGateways = Azure::Network::Mgmt::V2018_01_01::ApplicationGateways
      ExpressRouteCircuitAuthorizations = Azure::Network::Mgmt::V2018_01_01::ExpressRouteCircuitAuthorizations
      ExpressRouteCircuitPeerings = Azure::Network::Mgmt::V2018_01_01::ExpressRouteCircuitPeerings
      ExpressRouteCircuits = Azure::Network::Mgmt::V2018_01_01::ExpressRouteCircuits
      ExpressRouteServiceProviders = Azure::Network::Mgmt::V2018_01_01::ExpressRouteServiceProviders
      LoadBalancers = Azure::Network::Mgmt::V2018_01_01::LoadBalancers

      module Models
        VirtualNetworkGatewayConnectionStatus = Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkGatewayConnectionStatus
        Severity = Azure::Network::Mgmt::V2018_01_01::Models::Severity
        VirtualNetworkGatewayType = Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkGatewayType
        VpnType = Azure::Network::Mgmt::V2018_01_01::Models::VpnType
        VirtualNetworkGatewaySkuName = Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkGatewaySkuName
        VirtualNetworkGatewaySkuTier = Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkGatewaySkuTier
        ProvisioningState = Azure::Network::Mgmt::V2018_01_01::Models::ProvisioningState
        IkeEncryption = Azure::Network::Mgmt::V2018_01_01::Models::IkeEncryption
        Protocol = Azure::Network::Mgmt::V2018_01_01::Models::Protocol
        DhGroup = Azure::Network::Mgmt::V2018_01_01::Models::DhGroup
        BgpPeerState = Azure::Network::Mgmt::V2018_01_01::Models::BgpPeerState
        AuthenticationMethod = Azure::Network::Mgmt::V2018_01_01::Models::AuthenticationMethod
        IpsecEncryption = Azure::Network::Mgmt::V2018_01_01::Models::IpsecEncryption
        IpsecIntegrity = Azure::Network::Mgmt::V2018_01_01::Models::IpsecIntegrity
        IkeIntegrity = Azure::Network::Mgmt::V2018_01_01::Models::IkeIntegrity
        OperationDisplay = Azure::Network::Mgmt::V2018_01_01::Models::OperationDisplay
        OperationListResult = Azure::Network::Mgmt::V2018_01_01::Models::OperationListResult
        Operation = Azure::Network::Mgmt::V2018_01_01::Models::Operation
        Origin = Azure::Network::Mgmt::V2018_01_01::Models::Origin
        Error = Azure::Network::Mgmt::V2018_01_01::Models::Error
        TopologyAssociation = Azure::Network::Mgmt::V2018_01_01::Models::TopologyAssociation
        TopologyResource = Azure::Network::Mgmt::V2018_01_01::Models::TopologyResource
        OperationPropertiesFormatServiceSpecification = Azure::Network::Mgmt::V2018_01_01::Models::OperationPropertiesFormatServiceSpecification
        VirtualNetworkConnectionGatewayReference = Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkConnectionGatewayReference
        InboundNatRuleListResult = Azure::Network::Mgmt::V2018_01_01::Models::InboundNatRuleListResult
        PublicIPAddressSku = Azure::Network::Mgmt::V2018_01_01::Models::PublicIPAddressSku
        LoadBalancerBackendAddressPoolListResult = Azure::Network::Mgmt::V2018_01_01::Models::LoadBalancerBackendAddressPoolListResult
        IpTag = Azure::Network::Mgmt::V2018_01_01::Models::IpTag
        LoadBalancerFrontendIPConfigurationListResult = Azure::Network::Mgmt::V2018_01_01::Models::LoadBalancerFrontendIPConfigurationListResult
        LoadBalancerLoadBalancingRuleListResult = Azure::Network::Mgmt::V2018_01_01::Models::LoadBalancerLoadBalancingRuleListResult
        TunnelConnectionHealth = Azure::Network::Mgmt::V2018_01_01::Models::TunnelConnectionHealth
        LoadBalancerProbeListResult = Azure::Network::Mgmt::V2018_01_01::Models::LoadBalancerProbeListResult
        ApplicationGatewayConnectionDraining = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayConnectionDraining
        ApplicationGatewayBackendHealthServer = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayBackendHealthServer
        ApplicationGatewayBackendHealthPool = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayBackendHealthPool
        NetworkInterfaceIPConfigurationListResult = Azure::Network::Mgmt::V2018_01_01::Models::NetworkInterfaceIPConfigurationListResult
        NetworkInterfaceLoadBalancerListResult = Azure::Network::Mgmt::V2018_01_01::Models::NetworkInterfaceLoadBalancerListResult
        BgpPeerStatus = Azure::Network::Mgmt::V2018_01_01::Models::BgpPeerStatus
        EffectiveNetworkSecurityGroupAssociation = Azure::Network::Mgmt::V2018_01_01::Models::EffectiveNetworkSecurityGroupAssociation
        EffectiveNetworkSecurityRule = Azure::Network::Mgmt::V2018_01_01::Models::EffectiveNetworkSecurityRule
        VirtualNetworkListUsageResult = Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkListUsageResult
        EffectiveNetworkSecurityGroup = Azure::Network::Mgmt::V2018_01_01::Models::EffectiveNetworkSecurityGroup
        VirtualNetworkUsage = Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkUsage
        EffectiveNetworkSecurityGroupListResult = Azure::Network::Mgmt::V2018_01_01::Models::EffectiveNetworkSecurityGroupListResult
        IPAddressAvailabilityResult = Azure::Network::Mgmt::V2018_01_01::Models::IPAddressAvailabilityResult
        EffectiveRoute = Azure::Network::Mgmt::V2018_01_01::Models::EffectiveRoute
        ApplicationGatewayFirewallDisabledRuleGroup = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayFirewallDisabledRuleGroup
        EffectiveRouteListResult = Azure::Network::Mgmt::V2018_01_01::Models::EffectiveRouteListResult
        ApplicationGatewayFirewallRule = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayFirewallRule
        VirtualNetworkPeeringListResult = Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkPeeringListResult
        NetworkWatcherListResult = Azure::Network::Mgmt::V2018_01_01::Models::NetworkWatcherListResult
        ApplicationGatewayAvailableSslPredefinedPolicies = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayAvailableSslPredefinedPolicies
        LogSpecification = Azure::Network::Mgmt::V2018_01_01::Models::LogSpecification
        TopologyParameters = Azure::Network::Mgmt::V2018_01_01::Models::TopologyParameters
        TagsObject = Azure::Network::Mgmt::V2018_01_01::Models::TagsObject
        Dimension = Azure::Network::Mgmt::V2018_01_01::Models::Dimension
        MetricSpecification = Azure::Network::Mgmt::V2018_01_01::Models::MetricSpecification
        ApplicationSecurityGroupListResult = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationSecurityGroupListResult
        VerificationIPFlowParameters = Azure::Network::Mgmt::V2018_01_01::Models::VerificationIPFlowParameters
        VerificationIPFlowResult = Azure::Network::Mgmt::V2018_01_01::Models::VerificationIPFlowResult
        Topology = Azure::Network::Mgmt::V2018_01_01::Models::Topology
        NextHopParameters = Azure::Network::Mgmt::V2018_01_01::Models::NextHopParameters
        NextHopResult = Azure::Network::Mgmt::V2018_01_01::Models::NextHopResult
        BGPCommunity = Azure::Network::Mgmt::V2018_01_01::Models::BGPCommunity
        NetworkInterfaceAssociation = Azure::Network::Mgmt::V2018_01_01::Models::NetworkInterfaceAssociation
        SubnetAssociation = Azure::Network::Mgmt::V2018_01_01::Models::SubnetAssociation
        ExpressRouteCircuitRoutesTableSummary = Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitRoutesTableSummary
        SecurityRuleAssociations = Azure::Network::Mgmt::V2018_01_01::Models::SecurityRuleAssociations
        SecurityGroupNetworkInterface = Azure::Network::Mgmt::V2018_01_01::Models::SecurityGroupNetworkInterface
        SecurityGroupViewResult = Azure::Network::Mgmt::V2018_01_01::Models::SecurityGroupViewResult
        LoadBalancerSku = Azure::Network::Mgmt::V2018_01_01::Models::LoadBalancerSku
        PacketCaptureStorageLocation = Azure::Network::Mgmt::V2018_01_01::Models::PacketCaptureStorageLocation
        RouteFilterListResult = Azure::Network::Mgmt::V2018_01_01::Models::RouteFilterListResult
        SecurityGroupViewParameters = Azure::Network::Mgmt::V2018_01_01::Models::SecurityGroupViewParameters
        VpnDeviceScriptParameters = Azure::Network::Mgmt::V2018_01_01::Models::VpnDeviceScriptParameters
        PacketCaptureParameters = Azure::Network::Mgmt::V2018_01_01::Models::PacketCaptureParameters
        PacketCapture = Azure::Network::Mgmt::V2018_01_01::Models::PacketCapture
        PacketCaptureResult = Azure::Network::Mgmt::V2018_01_01::Models::PacketCaptureResult
        IpsecPolicy = Azure::Network::Mgmt::V2018_01_01::Models::IpsecPolicy
        PacketCaptureFilter = Azure::Network::Mgmt::V2018_01_01::Models::PacketCaptureFilter
        PacketCaptureListResult = Azure::Network::Mgmt::V2018_01_01::Models::PacketCaptureListResult
        BgpPeerStatusListResult = Azure::Network::Mgmt::V2018_01_01::Models::BgpPeerStatusListResult
        PacketCaptureQueryStatusResult = Azure::Network::Mgmt::V2018_01_01::Models::PacketCaptureQueryStatusResult
        ApplicationGatewayBackendHealthHttpSettings = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayBackendHealthHttpSettings
        TroubleshootingParameters = Azure::Network::Mgmt::V2018_01_01::Models::TroubleshootingParameters
        ApplicationGatewaySslPolicy = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewaySslPolicy
        QueryTroubleshootingParameters = Azure::Network::Mgmt::V2018_01_01::Models::QueryTroubleshootingParameters
        TroubleshootingRecommendedActions = Azure::Network::Mgmt::V2018_01_01::Models::TroubleshootingRecommendedActions
        ApplicationGatewayProbeHealthResponseMatch = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayProbeHealthResponseMatch
        TroubleshootingDetails = Azure::Network::Mgmt::V2018_01_01::Models::TroubleshootingDetails
        TroubleshootingResult = Azure::Network::Mgmt::V2018_01_01::Models::TroubleshootingResult
        RetentionPolicyParameters = Azure::Network::Mgmt::V2018_01_01::Models::RetentionPolicyParameters
        ApplicationGatewayAvailableWafRuleSetsResult = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayAvailableWafRuleSetsResult
        TrafficAnalyticsConfigurationProperties = Azure::Network::Mgmt::V2018_01_01::Models::TrafficAnalyticsConfigurationProperties
        FlowLogStatusParameters = Azure::Network::Mgmt::V2018_01_01::Models::FlowLogStatusParameters
        EndpointServicesListResult = Azure::Network::Mgmt::V2018_01_01::Models::EndpointServicesListResult
        FlowLogInformation = Azure::Network::Mgmt::V2018_01_01::Models::FlowLogInformation
        ConnectivitySource = Azure::Network::Mgmt::V2018_01_01::Models::ConnectivitySource
        Ipv6ExpressRouteCircuitPeeringConfig = Azure::Network::Mgmt::V2018_01_01::Models::Ipv6ExpressRouteCircuitPeeringConfig
        ConnectivityDestination = Azure::Network::Mgmt::V2018_01_01::Models::ConnectivityDestination
        ConnectivityParameters = Azure::Network::Mgmt::V2018_01_01::Models::ConnectivityParameters
        ConnectivityIssue = Azure::Network::Mgmt::V2018_01_01::Models::ConnectivityIssue
        ConnectivityHop = Azure::Network::Mgmt::V2018_01_01::Models::ConnectivityHop
        RouteFilterRuleListResult = Azure::Network::Mgmt::V2018_01_01::Models::RouteFilterRuleListResult
        ConnectivityInformation = Azure::Network::Mgmt::V2018_01_01::Models::ConnectivityInformation
        VirtualNetworkGatewayListConnectionsResult = Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkGatewayListConnectionsResult
        AzureReachabilityReportLocation = Azure::Network::Mgmt::V2018_01_01::Models::AzureReachabilityReportLocation
        AzureReachabilityReportParameters = Azure::Network::Mgmt::V2018_01_01::Models::AzureReachabilityReportParameters
        GatewayRoute = Azure::Network::Mgmt::V2018_01_01::Models::GatewayRoute
        ExpressRouteCircuitListResult = Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitListResult
        SubResource = Azure::Network::Mgmt::V2018_01_01::Models::SubResource
        ExpressRouteServiceProviderBandwidthsOffered = Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteServiceProviderBandwidthsOffered
        ApplicationGatewayFirewallRuleGroup = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayFirewallRuleGroup
        ApplicationGatewayListResult = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayListResult
        ApplicationGatewayBackendAddress = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayBackendAddress
        UsageName = Azure::Network::Mgmt::V2018_01_01::Models::UsageName
        Usage = Azure::Network::Mgmt::V2018_01_01::Models::Usage
        NetworkInterfaceDnsSettings = Azure::Network::Mgmt::V2018_01_01::Models::NetworkInterfaceDnsSettings
        NetworkSecurityGroupListResult = Azure::Network::Mgmt::V2018_01_01::Models::NetworkSecurityGroupListResult
        VirtualNetworkGatewayListResult = Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkGatewayListResult
        Resource = Azure::Network::Mgmt::V2018_01_01::Models::Resource
        BgpSettings = Azure::Network::Mgmt::V2018_01_01::Models::BgpSettings
        ExpressRouteCircuitPeeringConfig = Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitPeeringConfig
        VpnClientConfiguration = Azure::Network::Mgmt::V2018_01_01::Models::VpnClientConfiguration
        ExpressRouteCircuitStats = Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitStats
        VirtualNetworkListResult = Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkListResult
        SecurityRuleListResult = Azure::Network::Mgmt::V2018_01_01::Models::SecurityRuleListResult
        AvailableProvidersListCountry = Azure::Network::Mgmt::V2018_01_01::Models::AvailableProvidersListCountry
        ExpressRouteCircuitPeeringListResult = Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitPeeringListResult
        UsagesListResult = Azure::Network::Mgmt::V2018_01_01::Models::UsagesListResult
        ConnectionResetSharedKey = Azure::Network::Mgmt::V2018_01_01::Models::ConnectionResetSharedKey
        ExpressRouteCircuitServiceProviderProperties = Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitServiceProviderProperties
        RouteTableListResult = Azure::Network::Mgmt::V2018_01_01::Models::RouteTableListResult
        NetworkInterfaceListResult = Azure::Network::Mgmt::V2018_01_01::Models::NetworkInterfaceListResult
        ConnectionSharedKey = Azure::Network::Mgmt::V2018_01_01::Models::ConnectionSharedKey
        ExpressRouteCircuitArpTable = Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitArpTable
        ApplicationGatewayBackendHealth = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayBackendHealth
        AzureReachabilityReportItem = Azure::Network::Mgmt::V2018_01_01::Models::AzureReachabilityReportItem
        PublicIPAddressDnsSettings = Azure::Network::Mgmt::V2018_01_01::Models::PublicIPAddressDnsSettings
        ExpressRouteCircuitRoutesTable = Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitRoutesTable
        DhcpOptions = Azure::Network::Mgmt::V2018_01_01::Models::DhcpOptions
        ExpressRouteCircuitsRoutesTableListResult = Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitsRoutesTableListResult
        ApplicationGatewaySku = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewaySku
        LocalNetworkGatewayListResult = Azure::Network::Mgmt::V2018_01_01::Models::LocalNetworkGatewayListResult
        VirtualNetworkGatewayConnectionListResult = Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkGatewayConnectionListResult
        LoadBalancerListResult = Azure::Network::Mgmt::V2018_01_01::Models::LoadBalancerListResult
        VirtualNetworkUsageName = Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkUsageName
        AzureAsyncOperationResult = Azure::Network::Mgmt::V2018_01_01::Models::AzureAsyncOperationResult
        RouteListResult = Azure::Network::Mgmt::V2018_01_01::Models::RouteListResult
        SubnetListResult = Azure::Network::Mgmt::V2018_01_01::Models::SubnetListResult
        AvailableProvidersListCity = Azure::Network::Mgmt::V2018_01_01::Models::AvailableProvidersListCity
        VpnClientParameters = Azure::Network::Mgmt::V2018_01_01::Models::VpnClientParameters
        ErrorDetails = Azure::Network::Mgmt::V2018_01_01::Models::ErrorDetails
        Availability = Azure::Network::Mgmt::V2018_01_01::Models::Availability
        AvailableProvidersList = Azure::Network::Mgmt::V2018_01_01::Models::AvailableProvidersList
        ServiceEndpointPropertiesFormat = Azure::Network::Mgmt::V2018_01_01::Models::ServiceEndpointPropertiesFormat
        AzureReachabilityReport = Azure::Network::Mgmt::V2018_01_01::Models::AzureReachabilityReport
        ConnectionMonitorListResult = Azure::Network::Mgmt::V2018_01_01::Models::ConnectionMonitorListResult
        AvailableProvidersListParameters = Azure::Network::Mgmt::V2018_01_01::Models::AvailableProvidersListParameters
        ApplicationGatewayWebApplicationFirewallConfiguration = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayWebApplicationFirewallConfiguration
        BgpServiceCommunityListResult = Azure::Network::Mgmt::V2018_01_01::Models::BgpServiceCommunityListResult
        DnsNameAvailabilityResult = Azure::Network::Mgmt::V2018_01_01::Models::DnsNameAvailabilityResult
        AzureReachabilityReportLatencyInfo = Azure::Network::Mgmt::V2018_01_01::Models::AzureReachabilityReportLatencyInfo
        ConnectionMonitorResult = Azure::Network::Mgmt::V2018_01_01::Models::ConnectionMonitorResult
        GatewayRouteListResult = Azure::Network::Mgmt::V2018_01_01::Models::GatewayRouteListResult
        ExpressRouteCircuitsArpTableListResult = Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitsArpTableListResult
        ConnectionStateSnapshot = Azure::Network::Mgmt::V2018_01_01::Models::ConnectionStateSnapshot
        ConnectionMonitorDestination = Azure::Network::Mgmt::V2018_01_01::Models::ConnectionMonitorDestination
        InboundNatRule = Azure::Network::Mgmt::V2018_01_01::Models::InboundNatRule
        ConnectionMonitorParameters = Azure::Network::Mgmt::V2018_01_01::Models::ConnectionMonitorParameters
        ConnectionMonitor = Azure::Network::Mgmt::V2018_01_01::Models::ConnectionMonitor
        AvailableProvidersListState = Azure::Network::Mgmt::V2018_01_01::Models::AvailableProvidersListState
        AddressSpace = Azure::Network::Mgmt::V2018_01_01::Models::AddressSpace
        RouteTable = Azure::Network::Mgmt::V2018_01_01::Models::RouteTable
        SecurityRule = Azure::Network::Mgmt::V2018_01_01::Models::SecurityRule
        ConnectionMonitorSource = Azure::Network::Mgmt::V2018_01_01::Models::ConnectionMonitorSource
        ConnectionMonitorQueryResult = Azure::Network::Mgmt::V2018_01_01::Models::ConnectionMonitorQueryResult
        Route = Azure::Network::Mgmt::V2018_01_01::Models::Route
        ExpressRouteServiceProviderListResult = Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteServiceProviderListResult
        PublicIPAddress = Azure::Network::Mgmt::V2018_01_01::Models::PublicIPAddress
        IPConfiguration = Azure::Network::Mgmt::V2018_01_01::Models::IPConfiguration
        ExpressRouteCircuitsRoutesTableSummaryListResult = Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitsRoutesTableSummaryListResult
        VirtualNetworkGatewaySku = Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkGatewaySku
        ApplicationGatewayBackendAddressPool = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayBackendAddressPool
        ApplicationGatewayBackendHttpSettings = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayBackendHttpSettings
        ExpressRouteCircuitSku = Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitSku
        AuthorizationListResult = Azure::Network::Mgmt::V2018_01_01::Models::AuthorizationListResult
        Subnet = Azure::Network::Mgmt::V2018_01_01::Models::Subnet
        ApplicationSecurityGroup = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationSecurityGroup
        NetworkSecurityGroup = Azure::Network::Mgmt::V2018_01_01::Models::NetworkSecurityGroup
        PublicIPAddressListResult = Azure::Network::Mgmt::V2018_01_01::Models::PublicIPAddressListResult
        ApplicationGatewayFrontendIPConfiguration = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayFrontendIPConfiguration
        ApplicationGatewayFrontendPort = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayFrontendPort
        BackendAddressPool = Azure::Network::Mgmt::V2018_01_01::Models::BackendAddressPool
        ApplicationGatewayRequestRoutingRule = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayRequestRoutingRule
        NetworkInterfaceIPConfiguration = Azure::Network::Mgmt::V2018_01_01::Models::NetworkInterfaceIPConfiguration
        NetworkInterface = Azure::Network::Mgmt::V2018_01_01::Models::NetworkInterface
        ExpressRouteCircuitAuthorization = Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitAuthorization
        ApplicationGatewayIPConfiguration = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayIPConfiguration
        ApplicationGatewaySslCertificate = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewaySslCertificate
        ResourceNavigationLink = Azure::Network::Mgmt::V2018_01_01::Models::ResourceNavigationLink
        ApplicationGatewayAuthenticationCertificate = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayAuthenticationCertificate
        ApplicationGatewayRedirectConfiguration = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayRedirectConfiguration
        ApplicationGateway = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGateway
        ApplicationGatewayAvailableSslOptions = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayAvailableSslOptions
        ApplicationGatewaySslPredefinedPolicy = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewaySslPredefinedPolicy
        ApplicationGatewayHttpListener = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayHttpListener
        ApplicationGatewayPathRule = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayPathRule
        ApplicationGatewayProbe = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayProbe
        LoadBalancingRule = Azure::Network::Mgmt::V2018_01_01::Models::LoadBalancingRule
        ApplicationGatewayUrlPathMap = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayUrlPathMap
        InboundNatPool = Azure::Network::Mgmt::V2018_01_01::Models::InboundNatPool
        OutboundNatRule = Azure::Network::Mgmt::V2018_01_01::Models::OutboundNatRule
        ExpressRouteCircuitPeering = Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitPeering
        ExpressRouteCircuit = Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuit
        ApplicationGatewayFirewallRuleSet = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayFirewallRuleSet
        FrontendIPConfiguration = Azure::Network::Mgmt::V2018_01_01::Models::FrontendIPConfiguration
        VpnClientRevokedCertificate = Azure::Network::Mgmt::V2018_01_01::Models::VpnClientRevokedCertificate
        EndpointServiceResult = Azure::Network::Mgmt::V2018_01_01::Models::EndpointServiceResult
        RouteFilterRule = Azure::Network::Mgmt::V2018_01_01::Models::RouteFilterRule
        RouteFilter = Azure::Network::Mgmt::V2018_01_01::Models::RouteFilter
        LoadBalancer = Azure::Network::Mgmt::V2018_01_01::Models::LoadBalancer
        PatchRouteFilterRule = Azure::Network::Mgmt::V2018_01_01::Models::PatchRouteFilterRule
        PatchRouteFilter = Azure::Network::Mgmt::V2018_01_01::Models::PatchRouteFilter
        ExpressRouteServiceProvider = Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteServiceProvider
        VirtualNetworkPeering = Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkPeering
        VirtualNetworkGateway = Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkGateway
        Probe = Azure::Network::Mgmt::V2018_01_01::Models::Probe
        VirtualNetworkGatewayConnection = Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkGatewayConnection
        ApplicationGatewayProtocol = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayProtocol
        ApplicationGatewayCookieBasedAffinity = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayCookieBasedAffinity
        VirtualNetwork = Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetwork
        VirtualNetworkGatewayIPConfiguration = Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkGatewayIPConfiguration
        VpnClientRootCertificate = Azure::Network::Mgmt::V2018_01_01::Models::VpnClientRootCertificate
        NetworkWatcher = Azure::Network::Mgmt::V2018_01_01::Models::NetworkWatcher
        SecurityRuleDirection = Azure::Network::Mgmt::V2018_01_01::Models::SecurityRuleDirection
        LocalNetworkGateway = Azure::Network::Mgmt::V2018_01_01::Models::LocalNetworkGateway
        BgpServiceCommunity = Azure::Network::Mgmt::V2018_01_01::Models::BgpServiceCommunity
        IPVersion = Azure::Network::Mgmt::V2018_01_01::Models::IPVersion
        VirtualNetworkGatewayConnectionListEntity = Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkGatewayConnectionListEntity
        IPAllocationMethod = Azure::Network::Mgmt::V2018_01_01::Models::IPAllocationMethod
        TransportProtocol = Azure::Network::Mgmt::V2018_01_01::Models::TransportProtocol
        SecurityRuleProtocol = Azure::Network::Mgmt::V2018_01_01::Models::SecurityRuleProtocol
        SecurityRuleAccess = Azure::Network::Mgmt::V2018_01_01::Models::SecurityRuleAccess
        ApplicationGatewaySslPolicyName = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewaySslPolicyName
        RouteNextHopType = Azure::Network::Mgmt::V2018_01_01::Models::RouteNextHopType
        ApplicationGatewayRedirectType = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayRedirectType
        ApplicationGatewayFirewallMode = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayFirewallMode
        ApplicationGatewaySkuName = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewaySkuName
        ApplicationGatewayTier = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayTier
        AuthorizationUseStatus = Azure::Network::Mgmt::V2018_01_01::Models::AuthorizationUseStatus
        ExpressRouteCircuitPeeringAdvertisedPublicPrefixState = Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitPeeringAdvertisedPublicPrefixState
        ExpressRouteCircuitPeeringType = Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitPeeringType
        ExpressRouteCircuitPeeringState = Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitPeeringState
        PublicIPAddressSkuName = Azure::Network::Mgmt::V2018_01_01::Models::PublicIPAddressSkuName
        ApplicationGatewayBackendHealthServerHealth = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayBackendHealthServerHealth
        ApplicationGatewaySslProtocol = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewaySslProtocol
        ApplicationGatewaySslPolicyType = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewaySslPolicyType
        ApplicationGatewayRequestRoutingRuleType = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayRequestRoutingRuleType
        ApplicationGatewaySslCipherSuite = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewaySslCipherSuite
        ConnectionStatus = Azure::Network::Mgmt::V2018_01_01::Models::ConnectionStatus
        ConnectionState = Azure::Network::Mgmt::V2018_01_01::Models::ConnectionState
        Access = Azure::Network::Mgmt::V2018_01_01::Models::Access
        LoadBalancerSkuName = Azure::Network::Mgmt::V2018_01_01::Models::LoadBalancerSkuName
        ExpressRouteCircuitSkuTier = Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitSkuTier
        ExpressRouteCircuitSkuFamily = Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitSkuFamily
        ServiceProviderProvisioningState = Azure::Network::Mgmt::V2018_01_01::Models::ServiceProviderProvisioningState
        LoadDistribution = Azure::Network::Mgmt::V2018_01_01::Models::LoadDistribution
        ProbeProtocol = Azure::Network::Mgmt::V2018_01_01::Models::ProbeProtocol
        NetworkOperationStatus = Azure::Network::Mgmt::V2018_01_01::Models::NetworkOperationStatus
        ApplicationGatewayOperationalState = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayOperationalState
        PcStatus = Azure::Network::Mgmt::V2018_01_01::Models::PcStatus
        PcError = Azure::Network::Mgmt::V2018_01_01::Models::PcError
        IssueType = Azure::Network::Mgmt::V2018_01_01::Models::IssueType
        ProcessorArchitecture = Azure::Network::Mgmt::V2018_01_01::Models::ProcessorArchitecture
        VirtualNetworkGatewayConnectionType = Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkGatewayConnectionType
        EvaluationState = Azure::Network::Mgmt::V2018_01_01::Models::EvaluationState
        VirtualNetworkPeeringState = Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkPeeringState
        VpnClientProtocol = Azure::Network::Mgmt::V2018_01_01::Models::VpnClientProtocol
        EffectiveSecurityRuleProtocol = Azure::Network::Mgmt::V2018_01_01::Models::EffectiveSecurityRuleProtocol
        EffectiveRouteSource = Azure::Network::Mgmt::V2018_01_01::Models::EffectiveRouteSource
        EffectiveRouteState = Azure::Network::Mgmt::V2018_01_01::Models::EffectiveRouteState
        AssociationType = Azure::Network::Mgmt::V2018_01_01::Models::AssociationType
        Direction = Azure::Network::Mgmt::V2018_01_01::Models::Direction
        NextHopType = Azure::Network::Mgmt::V2018_01_01::Models::NextHopType
        PcProtocol = Azure::Network::Mgmt::V2018_01_01::Models::PcProtocol
        PfsGroup = Azure::Network::Mgmt::V2018_01_01::Models::PfsGroup
      end

      class NetworkManagementClass
        attr_reader :network_interfaces, :network_security_groups, :security_rules, :public_ipaddresses, :route_tables, :routes, :usages, :virtual_networks, :subnets, :virtual_network_gateways, :virtual_network_gateway_connections, :local_network_gateways, :operations, :application_security_groups, :available_endpoint_services, :load_balancer_backend_address_pools, :load_balancer_frontend_ipconfigurations, :inbound_nat_rules, :load_balancer_load_balancing_rules, :load_balancer_network_interfaces, :load_balancer_probes, :network_interface_ipconfigurations, :network_interface_load_balancers, :default_security_rules, :network_watchers, :packet_captures, :connection_monitors, :route_filters, :route_filter_rules, :bgp_service_communities, :virtual_network_peerings, :application_gateways, :express_route_circuit_authorizations, :express_route_circuit_peerings, :express_route_circuits, :express_route_service_providers, :load_balancers, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Network::Mgmt::V2018_01_01::NetworkManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @network_interfaces = @client_0.network_interfaces
          @network_security_groups = @client_0.network_security_groups
          @security_rules = @client_0.security_rules
          @public_ipaddresses = @client_0.public_ipaddresses
          @route_tables = @client_0.route_tables
          @routes = @client_0.routes
          @usages = @client_0.usages
          @virtual_networks = @client_0.virtual_networks
          @subnets = @client_0.subnets
          @virtual_network_gateways = @client_0.virtual_network_gateways
          @virtual_network_gateway_connections = @client_0.virtual_network_gateway_connections
          @local_network_gateways = @client_0.local_network_gateways
          @operations = @client_0.operations
          @application_security_groups = @client_0.application_security_groups
          @available_endpoint_services = @client_0.available_endpoint_services
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
          @route_filters = @client_0.route_filters
          @route_filter_rules = @client_0.route_filter_rules
          @bgp_service_communities = @client_0.bgp_service_communities
          @virtual_network_peerings = @client_0.virtual_network_peerings
          @application_gateways = @client_0.application_gateways
          @express_route_circuit_authorizations = @client_0.express_route_circuit_authorizations
          @express_route_circuit_peerings = @client_0.express_route_circuit_peerings
          @express_route_circuits = @client_0.express_route_circuits
          @express_route_service_providers = @client_0.express_route_service_providers
          @load_balancers = @client_0.load_balancers

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Network/Mgmt"
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
          def virtual_network_gateway_connection_status
            Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkGatewayConnectionStatus
          end
          def severity
            Azure::Network::Mgmt::V2018_01_01::Models::Severity
          end
          def virtual_network_gateway_type
            Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkGatewayType
          end
          def vpn_type
            Azure::Network::Mgmt::V2018_01_01::Models::VpnType
          end
          def virtual_network_gateway_sku_name
            Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkGatewaySkuName
          end
          def virtual_network_gateway_sku_tier
            Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkGatewaySkuTier
          end
          def provisioning_state
            Azure::Network::Mgmt::V2018_01_01::Models::ProvisioningState
          end
          def ike_encryption
            Azure::Network::Mgmt::V2018_01_01::Models::IkeEncryption
          end
          def protocol
            Azure::Network::Mgmt::V2018_01_01::Models::Protocol
          end
          def dh_group
            Azure::Network::Mgmt::V2018_01_01::Models::DhGroup
          end
          def bgp_peer_state
            Azure::Network::Mgmt::V2018_01_01::Models::BgpPeerState
          end
          def authentication_method
            Azure::Network::Mgmt::V2018_01_01::Models::AuthenticationMethod
          end
          def ipsec_encryption
            Azure::Network::Mgmt::V2018_01_01::Models::IpsecEncryption
          end
          def ipsec_integrity
            Azure::Network::Mgmt::V2018_01_01::Models::IpsecIntegrity
          end
          def ike_integrity
            Azure::Network::Mgmt::V2018_01_01::Models::IkeIntegrity
          end
          def operation_display
            Azure::Network::Mgmt::V2018_01_01::Models::OperationDisplay
          end
          def operation_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::OperationListResult
          end
          def operation
            Azure::Network::Mgmt::V2018_01_01::Models::Operation
          end
          def origin
            Azure::Network::Mgmt::V2018_01_01::Models::Origin
          end
          def error
            Azure::Network::Mgmt::V2018_01_01::Models::Error
          end
          def topology_association
            Azure::Network::Mgmt::V2018_01_01::Models::TopologyAssociation
          end
          def topology_resource
            Azure::Network::Mgmt::V2018_01_01::Models::TopologyResource
          end
          def operation_properties_format_service_specification
            Azure::Network::Mgmt::V2018_01_01::Models::OperationPropertiesFormatServiceSpecification
          end
          def virtual_network_connection_gateway_reference
            Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkConnectionGatewayReference
          end
          def inbound_nat_rule_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::InboundNatRuleListResult
          end
          def public_ipaddress_sku
            Azure::Network::Mgmt::V2018_01_01::Models::PublicIPAddressSku
          end
          def load_balancer_backend_address_pool_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::LoadBalancerBackendAddressPoolListResult
          end
          def ip_tag
            Azure::Network::Mgmt::V2018_01_01::Models::IpTag
          end
          def load_balancer_frontend_ipconfiguration_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::LoadBalancerFrontendIPConfigurationListResult
          end
          def load_balancer_load_balancing_rule_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::LoadBalancerLoadBalancingRuleListResult
          end
          def tunnel_connection_health
            Azure::Network::Mgmt::V2018_01_01::Models::TunnelConnectionHealth
          end
          def load_balancer_probe_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::LoadBalancerProbeListResult
          end
          def application_gateway_connection_draining
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayConnectionDraining
          end
          def application_gateway_backend_health_server
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayBackendHealthServer
          end
          def application_gateway_backend_health_pool
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayBackendHealthPool
          end
          def network_interface_ipconfiguration_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::NetworkInterfaceIPConfigurationListResult
          end
          def network_interface_load_balancer_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::NetworkInterfaceLoadBalancerListResult
          end
          def bgp_peer_status
            Azure::Network::Mgmt::V2018_01_01::Models::BgpPeerStatus
          end
          def effective_network_security_group_association
            Azure::Network::Mgmt::V2018_01_01::Models::EffectiveNetworkSecurityGroupAssociation
          end
          def effective_network_security_rule
            Azure::Network::Mgmt::V2018_01_01::Models::EffectiveNetworkSecurityRule
          end
          def virtual_network_list_usage_result
            Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkListUsageResult
          end
          def effective_network_security_group
            Azure::Network::Mgmt::V2018_01_01::Models::EffectiveNetworkSecurityGroup
          end
          def virtual_network_usage
            Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkUsage
          end
          def effective_network_security_group_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::EffectiveNetworkSecurityGroupListResult
          end
          def ipaddress_availability_result
            Azure::Network::Mgmt::V2018_01_01::Models::IPAddressAvailabilityResult
          end
          def effective_route
            Azure::Network::Mgmt::V2018_01_01::Models::EffectiveRoute
          end
          def application_gateway_firewall_disabled_rule_group
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayFirewallDisabledRuleGroup
          end
          def effective_route_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::EffectiveRouteListResult
          end
          def application_gateway_firewall_rule
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayFirewallRule
          end
          def virtual_network_peering_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkPeeringListResult
          end
          def network_watcher_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::NetworkWatcherListResult
          end
          def application_gateway_available_ssl_predefined_policies
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayAvailableSslPredefinedPolicies
          end
          def log_specification
            Azure::Network::Mgmt::V2018_01_01::Models::LogSpecification
          end
          def topology_parameters
            Azure::Network::Mgmt::V2018_01_01::Models::TopologyParameters
          end
          def tags_object
            Azure::Network::Mgmt::V2018_01_01::Models::TagsObject
          end
          def dimension
            Azure::Network::Mgmt::V2018_01_01::Models::Dimension
          end
          def metric_specification
            Azure::Network::Mgmt::V2018_01_01::Models::MetricSpecification
          end
          def application_security_group_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationSecurityGroupListResult
          end
          def verification_ipflow_parameters
            Azure::Network::Mgmt::V2018_01_01::Models::VerificationIPFlowParameters
          end
          def verification_ipflow_result
            Azure::Network::Mgmt::V2018_01_01::Models::VerificationIPFlowResult
          end
          def topology
            Azure::Network::Mgmt::V2018_01_01::Models::Topology
          end
          def next_hop_parameters
            Azure::Network::Mgmt::V2018_01_01::Models::NextHopParameters
          end
          def next_hop_result
            Azure::Network::Mgmt::V2018_01_01::Models::NextHopResult
          end
          def bgpcommunity
            Azure::Network::Mgmt::V2018_01_01::Models::BGPCommunity
          end
          def network_interface_association
            Azure::Network::Mgmt::V2018_01_01::Models::NetworkInterfaceAssociation
          end
          def subnet_association
            Azure::Network::Mgmt::V2018_01_01::Models::SubnetAssociation
          end
          def express_route_circuit_routes_table_summary
            Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitRoutesTableSummary
          end
          def security_rule_associations
            Azure::Network::Mgmt::V2018_01_01::Models::SecurityRuleAssociations
          end
          def security_group_network_interface
            Azure::Network::Mgmt::V2018_01_01::Models::SecurityGroupNetworkInterface
          end
          def security_group_view_result
            Azure::Network::Mgmt::V2018_01_01::Models::SecurityGroupViewResult
          end
          def load_balancer_sku
            Azure::Network::Mgmt::V2018_01_01::Models::LoadBalancerSku
          end
          def packet_capture_storage_location
            Azure::Network::Mgmt::V2018_01_01::Models::PacketCaptureStorageLocation
          end
          def route_filter_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::RouteFilterListResult
          end
          def security_group_view_parameters
            Azure::Network::Mgmt::V2018_01_01::Models::SecurityGroupViewParameters
          end
          def vpn_device_script_parameters
            Azure::Network::Mgmt::V2018_01_01::Models::VpnDeviceScriptParameters
          end
          def packet_capture_parameters
            Azure::Network::Mgmt::V2018_01_01::Models::PacketCaptureParameters
          end
          def packet_capture
            Azure::Network::Mgmt::V2018_01_01::Models::PacketCapture
          end
          def packet_capture_result
            Azure::Network::Mgmt::V2018_01_01::Models::PacketCaptureResult
          end
          def ipsec_policy
            Azure::Network::Mgmt::V2018_01_01::Models::IpsecPolicy
          end
          def packet_capture_filter
            Azure::Network::Mgmt::V2018_01_01::Models::PacketCaptureFilter
          end
          def packet_capture_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::PacketCaptureListResult
          end
          def bgp_peer_status_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::BgpPeerStatusListResult
          end
          def packet_capture_query_status_result
            Azure::Network::Mgmt::V2018_01_01::Models::PacketCaptureQueryStatusResult
          end
          def application_gateway_backend_health_http_settings
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayBackendHealthHttpSettings
          end
          def troubleshooting_parameters
            Azure::Network::Mgmt::V2018_01_01::Models::TroubleshootingParameters
          end
          def application_gateway_ssl_policy
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewaySslPolicy
          end
          def query_troubleshooting_parameters
            Azure::Network::Mgmt::V2018_01_01::Models::QueryTroubleshootingParameters
          end
          def troubleshooting_recommended_actions
            Azure::Network::Mgmt::V2018_01_01::Models::TroubleshootingRecommendedActions
          end
          def application_gateway_probe_health_response_match
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayProbeHealthResponseMatch
          end
          def troubleshooting_details
            Azure::Network::Mgmt::V2018_01_01::Models::TroubleshootingDetails
          end
          def troubleshooting_result
            Azure::Network::Mgmt::V2018_01_01::Models::TroubleshootingResult
          end
          def retention_policy_parameters
            Azure::Network::Mgmt::V2018_01_01::Models::RetentionPolicyParameters
          end
          def application_gateway_available_waf_rule_sets_result
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayAvailableWafRuleSetsResult
          end
          def traffic_analytics_configuration_properties
            Azure::Network::Mgmt::V2018_01_01::Models::TrafficAnalyticsConfigurationProperties
          end
          def flow_log_status_parameters
            Azure::Network::Mgmt::V2018_01_01::Models::FlowLogStatusParameters
          end
          def endpoint_services_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::EndpointServicesListResult
          end
          def flow_log_information
            Azure::Network::Mgmt::V2018_01_01::Models::FlowLogInformation
          end
          def connectivity_source
            Azure::Network::Mgmt::V2018_01_01::Models::ConnectivitySource
          end
          def ipv6_express_route_circuit_peering_config
            Azure::Network::Mgmt::V2018_01_01::Models::Ipv6ExpressRouteCircuitPeeringConfig
          end
          def connectivity_destination
            Azure::Network::Mgmt::V2018_01_01::Models::ConnectivityDestination
          end
          def connectivity_parameters
            Azure::Network::Mgmt::V2018_01_01::Models::ConnectivityParameters
          end
          def connectivity_issue
            Azure::Network::Mgmt::V2018_01_01::Models::ConnectivityIssue
          end
          def connectivity_hop
            Azure::Network::Mgmt::V2018_01_01::Models::ConnectivityHop
          end
          def route_filter_rule_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::RouteFilterRuleListResult
          end
          def connectivity_information
            Azure::Network::Mgmt::V2018_01_01::Models::ConnectivityInformation
          end
          def virtual_network_gateway_list_connections_result
            Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkGatewayListConnectionsResult
          end
          def azure_reachability_report_location
            Azure::Network::Mgmt::V2018_01_01::Models::AzureReachabilityReportLocation
          end
          def azure_reachability_report_parameters
            Azure::Network::Mgmt::V2018_01_01::Models::AzureReachabilityReportParameters
          end
          def gateway_route
            Azure::Network::Mgmt::V2018_01_01::Models::GatewayRoute
          end
          def express_route_circuit_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitListResult
          end
          def sub_resource
            Azure::Network::Mgmt::V2018_01_01::Models::SubResource
          end
          def express_route_service_provider_bandwidths_offered
            Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteServiceProviderBandwidthsOffered
          end
          def application_gateway_firewall_rule_group
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayFirewallRuleGroup
          end
          def application_gateway_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayListResult
          end
          def application_gateway_backend_address
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayBackendAddress
          end
          def usage_name
            Azure::Network::Mgmt::V2018_01_01::Models::UsageName
          end
          def usage
            Azure::Network::Mgmt::V2018_01_01::Models::Usage
          end
          def network_interface_dns_settings
            Azure::Network::Mgmt::V2018_01_01::Models::NetworkInterfaceDnsSettings
          end
          def network_security_group_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::NetworkSecurityGroupListResult
          end
          def virtual_network_gateway_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkGatewayListResult
          end
          def resource
            Azure::Network::Mgmt::V2018_01_01::Models::Resource
          end
          def bgp_settings
            Azure::Network::Mgmt::V2018_01_01::Models::BgpSettings
          end
          def express_route_circuit_peering_config
            Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitPeeringConfig
          end
          def vpn_client_configuration
            Azure::Network::Mgmt::V2018_01_01::Models::VpnClientConfiguration
          end
          def express_route_circuit_stats
            Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitStats
          end
          def virtual_network_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkListResult
          end
          def security_rule_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::SecurityRuleListResult
          end
          def available_providers_list_country
            Azure::Network::Mgmt::V2018_01_01::Models::AvailableProvidersListCountry
          end
          def express_route_circuit_peering_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitPeeringListResult
          end
          def usages_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::UsagesListResult
          end
          def connection_reset_shared_key
            Azure::Network::Mgmt::V2018_01_01::Models::ConnectionResetSharedKey
          end
          def express_route_circuit_service_provider_properties
            Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitServiceProviderProperties
          end
          def route_table_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::RouteTableListResult
          end
          def network_interface_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::NetworkInterfaceListResult
          end
          def connection_shared_key
            Azure::Network::Mgmt::V2018_01_01::Models::ConnectionSharedKey
          end
          def express_route_circuit_arp_table
            Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitArpTable
          end
          def application_gateway_backend_health
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayBackendHealth
          end
          def azure_reachability_report_item
            Azure::Network::Mgmt::V2018_01_01::Models::AzureReachabilityReportItem
          end
          def public_ipaddress_dns_settings
            Azure::Network::Mgmt::V2018_01_01::Models::PublicIPAddressDnsSettings
          end
          def express_route_circuit_routes_table
            Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitRoutesTable
          end
          def dhcp_options
            Azure::Network::Mgmt::V2018_01_01::Models::DhcpOptions
          end
          def express_route_circuits_routes_table_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitsRoutesTableListResult
          end
          def application_gateway_sku
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewaySku
          end
          def local_network_gateway_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::LocalNetworkGatewayListResult
          end
          def virtual_network_gateway_connection_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkGatewayConnectionListResult
          end
          def load_balancer_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::LoadBalancerListResult
          end
          def virtual_network_usage_name
            Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkUsageName
          end
          def azure_async_operation_result
            Azure::Network::Mgmt::V2018_01_01::Models::AzureAsyncOperationResult
          end
          def route_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::RouteListResult
          end
          def subnet_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::SubnetListResult
          end
          def available_providers_list_city
            Azure::Network::Mgmt::V2018_01_01::Models::AvailableProvidersListCity
          end
          def vpn_client_parameters
            Azure::Network::Mgmt::V2018_01_01::Models::VpnClientParameters
          end
          def error_details
            Azure::Network::Mgmt::V2018_01_01::Models::ErrorDetails
          end
          def availability
            Azure::Network::Mgmt::V2018_01_01::Models::Availability
          end
          def available_providers_list
            Azure::Network::Mgmt::V2018_01_01::Models::AvailableProvidersList
          end
          def service_endpoint_properties_format
            Azure::Network::Mgmt::V2018_01_01::Models::ServiceEndpointPropertiesFormat
          end
          def azure_reachability_report
            Azure::Network::Mgmt::V2018_01_01::Models::AzureReachabilityReport
          end
          def connection_monitor_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::ConnectionMonitorListResult
          end
          def available_providers_list_parameters
            Azure::Network::Mgmt::V2018_01_01::Models::AvailableProvidersListParameters
          end
          def application_gateway_web_application_firewall_configuration
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayWebApplicationFirewallConfiguration
          end
          def bgp_service_community_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::BgpServiceCommunityListResult
          end
          def dns_name_availability_result
            Azure::Network::Mgmt::V2018_01_01::Models::DnsNameAvailabilityResult
          end
          def azure_reachability_report_latency_info
            Azure::Network::Mgmt::V2018_01_01::Models::AzureReachabilityReportLatencyInfo
          end
          def connection_monitor_result
            Azure::Network::Mgmt::V2018_01_01::Models::ConnectionMonitorResult
          end
          def gateway_route_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::GatewayRouteListResult
          end
          def express_route_circuits_arp_table_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitsArpTableListResult
          end
          def connection_state_snapshot
            Azure::Network::Mgmt::V2018_01_01::Models::ConnectionStateSnapshot
          end
          def connection_monitor_destination
            Azure::Network::Mgmt::V2018_01_01::Models::ConnectionMonitorDestination
          end
          def inbound_nat_rule
            Azure::Network::Mgmt::V2018_01_01::Models::InboundNatRule
          end
          def connection_monitor_parameters
            Azure::Network::Mgmt::V2018_01_01::Models::ConnectionMonitorParameters
          end
          def connection_monitor
            Azure::Network::Mgmt::V2018_01_01::Models::ConnectionMonitor
          end
          def available_providers_list_state
            Azure::Network::Mgmt::V2018_01_01::Models::AvailableProvidersListState
          end
          def address_space
            Azure::Network::Mgmt::V2018_01_01::Models::AddressSpace
          end
          def route_table
            Azure::Network::Mgmt::V2018_01_01::Models::RouteTable
          end
          def security_rule
            Azure::Network::Mgmt::V2018_01_01::Models::SecurityRule
          end
          def connection_monitor_source
            Azure::Network::Mgmt::V2018_01_01::Models::ConnectionMonitorSource
          end
          def connection_monitor_query_result
            Azure::Network::Mgmt::V2018_01_01::Models::ConnectionMonitorQueryResult
          end
          def route
            Azure::Network::Mgmt::V2018_01_01::Models::Route
          end
          def express_route_service_provider_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteServiceProviderListResult
          end
          def public_ipaddress
            Azure::Network::Mgmt::V2018_01_01::Models::PublicIPAddress
          end
          def ipconfiguration
            Azure::Network::Mgmt::V2018_01_01::Models::IPConfiguration
          end
          def express_route_circuits_routes_table_summary_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitsRoutesTableSummaryListResult
          end
          def virtual_network_gateway_sku
            Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkGatewaySku
          end
          def application_gateway_backend_address_pool
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayBackendAddressPool
          end
          def application_gateway_backend_http_settings
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayBackendHttpSettings
          end
          def express_route_circuit_sku
            Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitSku
          end
          def authorization_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::AuthorizationListResult
          end
          def subnet
            Azure::Network::Mgmt::V2018_01_01::Models::Subnet
          end
          def application_security_group
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationSecurityGroup
          end
          def network_security_group
            Azure::Network::Mgmt::V2018_01_01::Models::NetworkSecurityGroup
          end
          def public_ipaddress_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::PublicIPAddressListResult
          end
          def application_gateway_frontend_ipconfiguration
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayFrontendIPConfiguration
          end
          def application_gateway_frontend_port
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayFrontendPort
          end
          def backend_address_pool
            Azure::Network::Mgmt::V2018_01_01::Models::BackendAddressPool
          end
          def application_gateway_request_routing_rule
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayRequestRoutingRule
          end
          def network_interface_ipconfiguration
            Azure::Network::Mgmt::V2018_01_01::Models::NetworkInterfaceIPConfiguration
          end
          def network_interface
            Azure::Network::Mgmt::V2018_01_01::Models::NetworkInterface
          end
          def express_route_circuit_authorization
            Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitAuthorization
          end
          def application_gateway_ipconfiguration
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayIPConfiguration
          end
          def application_gateway_ssl_certificate
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewaySslCertificate
          end
          def resource_navigation_link
            Azure::Network::Mgmt::V2018_01_01::Models::ResourceNavigationLink
          end
          def application_gateway_authentication_certificate
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayAuthenticationCertificate
          end
          def application_gateway_redirect_configuration
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayRedirectConfiguration
          end
          def application_gateway
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGateway
          end
          def application_gateway_available_ssl_options
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayAvailableSslOptions
          end
          def application_gateway_ssl_predefined_policy
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewaySslPredefinedPolicy
          end
          def application_gateway_http_listener
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayHttpListener
          end
          def application_gateway_path_rule
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayPathRule
          end
          def application_gateway_probe
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayProbe
          end
          def load_balancing_rule
            Azure::Network::Mgmt::V2018_01_01::Models::LoadBalancingRule
          end
          def application_gateway_url_path_map
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayUrlPathMap
          end
          def inbound_nat_pool
            Azure::Network::Mgmt::V2018_01_01::Models::InboundNatPool
          end
          def outbound_nat_rule
            Azure::Network::Mgmt::V2018_01_01::Models::OutboundNatRule
          end
          def express_route_circuit_peering
            Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitPeering
          end
          def express_route_circuit
            Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuit
          end
          def application_gateway_firewall_rule_set
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayFirewallRuleSet
          end
          def frontend_ipconfiguration
            Azure::Network::Mgmt::V2018_01_01::Models::FrontendIPConfiguration
          end
          def vpn_client_revoked_certificate
            Azure::Network::Mgmt::V2018_01_01::Models::VpnClientRevokedCertificate
          end
          def endpoint_service_result
            Azure::Network::Mgmt::V2018_01_01::Models::EndpointServiceResult
          end
          def route_filter_rule
            Azure::Network::Mgmt::V2018_01_01::Models::RouteFilterRule
          end
          def route_filter
            Azure::Network::Mgmt::V2018_01_01::Models::RouteFilter
          end
          def load_balancer
            Azure::Network::Mgmt::V2018_01_01::Models::LoadBalancer
          end
          def patch_route_filter_rule
            Azure::Network::Mgmt::V2018_01_01::Models::PatchRouteFilterRule
          end
          def patch_route_filter
            Azure::Network::Mgmt::V2018_01_01::Models::PatchRouteFilter
          end
          def express_route_service_provider
            Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteServiceProvider
          end
          def virtual_network_peering
            Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkPeering
          end
          def virtual_network_gateway
            Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkGateway
          end
          def probe
            Azure::Network::Mgmt::V2018_01_01::Models::Probe
          end
          def virtual_network_gateway_connection
            Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkGatewayConnection
          end
          def application_gateway_protocol
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayProtocol
          end
          def application_gateway_cookie_based_affinity
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayCookieBasedAffinity
          end
          def virtual_network
            Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetwork
          end
          def virtual_network_gateway_ipconfiguration
            Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkGatewayIPConfiguration
          end
          def vpn_client_root_certificate
            Azure::Network::Mgmt::V2018_01_01::Models::VpnClientRootCertificate
          end
          def network_watcher
            Azure::Network::Mgmt::V2018_01_01::Models::NetworkWatcher
          end
          def security_rule_direction
            Azure::Network::Mgmt::V2018_01_01::Models::SecurityRuleDirection
          end
          def local_network_gateway
            Azure::Network::Mgmt::V2018_01_01::Models::LocalNetworkGateway
          end
          def bgp_service_community
            Azure::Network::Mgmt::V2018_01_01::Models::BgpServiceCommunity
          end
          def ipversion
            Azure::Network::Mgmt::V2018_01_01::Models::IPVersion
          end
          def virtual_network_gateway_connection_list_entity
            Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkGatewayConnectionListEntity
          end
          def ipallocation_method
            Azure::Network::Mgmt::V2018_01_01::Models::IPAllocationMethod
          end
          def transport_protocol
            Azure::Network::Mgmt::V2018_01_01::Models::TransportProtocol
          end
          def security_rule_protocol
            Azure::Network::Mgmt::V2018_01_01::Models::SecurityRuleProtocol
          end
          def security_rule_access
            Azure::Network::Mgmt::V2018_01_01::Models::SecurityRuleAccess
          end
          def application_gateway_ssl_policy_name
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewaySslPolicyName
          end
          def route_next_hop_type
            Azure::Network::Mgmt::V2018_01_01::Models::RouteNextHopType
          end
          def application_gateway_redirect_type
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayRedirectType
          end
          def application_gateway_firewall_mode
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayFirewallMode
          end
          def application_gateway_sku_name
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewaySkuName
          end
          def application_gateway_tier
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayTier
          end
          def authorization_use_status
            Azure::Network::Mgmt::V2018_01_01::Models::AuthorizationUseStatus
          end
          def express_route_circuit_peering_advertised_public_prefix_state
            Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitPeeringAdvertisedPublicPrefixState
          end
          def express_route_circuit_peering_type
            Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitPeeringType
          end
          def express_route_circuit_peering_state
            Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitPeeringState
          end
          def public_ipaddress_sku_name
            Azure::Network::Mgmt::V2018_01_01::Models::PublicIPAddressSkuName
          end
          def application_gateway_backend_health_server_health
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayBackendHealthServerHealth
          end
          def application_gateway_ssl_protocol
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewaySslProtocol
          end
          def application_gateway_ssl_policy_type
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewaySslPolicyType
          end
          def application_gateway_request_routing_rule_type
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayRequestRoutingRuleType
          end
          def application_gateway_ssl_cipher_suite
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewaySslCipherSuite
          end
          def connection_status
            Azure::Network::Mgmt::V2018_01_01::Models::ConnectionStatus
          end
          def connection_state
            Azure::Network::Mgmt::V2018_01_01::Models::ConnectionState
          end
          def access
            Azure::Network::Mgmt::V2018_01_01::Models::Access
          end
          def load_balancer_sku_name
            Azure::Network::Mgmt::V2018_01_01::Models::LoadBalancerSkuName
          end
          def express_route_circuit_sku_tier
            Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitSkuTier
          end
          def express_route_circuit_sku_family
            Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitSkuFamily
          end
          def service_provider_provisioning_state
            Azure::Network::Mgmt::V2018_01_01::Models::ServiceProviderProvisioningState
          end
          def load_distribution
            Azure::Network::Mgmt::V2018_01_01::Models::LoadDistribution
          end
          def probe_protocol
            Azure::Network::Mgmt::V2018_01_01::Models::ProbeProtocol
          end
          def network_operation_status
            Azure::Network::Mgmt::V2018_01_01::Models::NetworkOperationStatus
          end
          def application_gateway_operational_state
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayOperationalState
          end
          def pc_status
            Azure::Network::Mgmt::V2018_01_01::Models::PcStatus
          end
          def pc_error
            Azure::Network::Mgmt::V2018_01_01::Models::PcError
          end
          def issue_type
            Azure::Network::Mgmt::V2018_01_01::Models::IssueType
          end
          def processor_architecture
            Azure::Network::Mgmt::V2018_01_01::Models::ProcessorArchitecture
          end
          def virtual_network_gateway_connection_type
            Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkGatewayConnectionType
          end
          def evaluation_state
            Azure::Network::Mgmt::V2018_01_01::Models::EvaluationState
          end
          def virtual_network_peering_state
            Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkPeeringState
          end
          def vpn_client_protocol
            Azure::Network::Mgmt::V2018_01_01::Models::VpnClientProtocol
          end
          def effective_security_rule_protocol
            Azure::Network::Mgmt::V2018_01_01::Models::EffectiveSecurityRuleProtocol
          end
          def effective_route_source
            Azure::Network::Mgmt::V2018_01_01::Models::EffectiveRouteSource
          end
          def effective_route_state
            Azure::Network::Mgmt::V2018_01_01::Models::EffectiveRouteState
          end
          def association_type
            Azure::Network::Mgmt::V2018_01_01::Models::AssociationType
          end
          def direction
            Azure::Network::Mgmt::V2018_01_01::Models::Direction
          end
          def next_hop_type
            Azure::Network::Mgmt::V2018_01_01::Models::NextHopType
          end
          def pc_protocol
            Azure::Network::Mgmt::V2018_01_01::Models::PcProtocol
          end
          def pfs_group
            Azure::Network::Mgmt::V2018_01_01::Models::PfsGroup
          end
        end
      end
    end
  end
end
