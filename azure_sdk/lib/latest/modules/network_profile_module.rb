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
      RouteFilterRules = Azure::Network::Mgmt::V2018_01_01::RouteFilterRules
      RouteTables = Azure::Network::Mgmt::V2018_01_01::RouteTables
      Routes = Azure::Network::Mgmt::V2018_01_01::Routes
      Usages = Azure::Network::Mgmt::V2018_01_01::Usages
      VirtualNetworks = Azure::Network::Mgmt::V2018_01_01::VirtualNetworks
      Subnets = Azure::Network::Mgmt::V2018_01_01::Subnets
      BgpServiceCommunities = Azure::Network::Mgmt::V2018_01_01::BgpServiceCommunities
      VirtualNetworkPeerings = Azure::Network::Mgmt::V2018_01_01::VirtualNetworkPeerings
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
      ApplicationGateways = Azure::Network::Mgmt::V2018_01_01::ApplicationGateways
      ExpressRouteCircuitAuthorizations = Azure::Network::Mgmt::V2018_01_01::ExpressRouteCircuitAuthorizations
      ExpressRouteCircuitPeerings = Azure::Network::Mgmt::V2018_01_01::ExpressRouteCircuitPeerings
      ExpressRouteCircuits = Azure::Network::Mgmt::V2018_01_01::ExpressRouteCircuits
      ExpressRouteServiceProviders = Azure::Network::Mgmt::V2018_01_01::ExpressRouteServiceProviders
      LoadBalancers = Azure::Network::Mgmt::V2018_01_01::LoadBalancers

      module Models
        BgpPeerState = Azure::Network::Mgmt::V2018_01_01::Models::BgpPeerState
        AuthenticationMethod = Azure::Network::Mgmt::V2018_01_01::Models::AuthenticationMethod
        IpsecEncryption = Azure::Network::Mgmt::V2018_01_01::Models::IpsecEncryption
        AssociationType = Azure::Network::Mgmt::V2018_01_01::Models::AssociationType
        ProbeProtocol = Azure::Network::Mgmt::V2018_01_01::Models::ProbeProtocol
        IkeIntegrity = Azure::Network::Mgmt::V2018_01_01::Models::IkeIntegrity
        PcProtocol = Azure::Network::Mgmt::V2018_01_01::Models::PcProtocol
        PcStatus = Azure::Network::Mgmt::V2018_01_01::Models::PcStatus
        PcError = Azure::Network::Mgmt::V2018_01_01::Models::PcError
        VirtualNetworkGatewaySkuTier = Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkGatewaySkuTier
        ProvisioningState = Azure::Network::Mgmt::V2018_01_01::Models::ProvisioningState
        VirtualNetworkGatewayConnectionType = Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkGatewayConnectionType
        VirtualNetworkGatewayConnectionStatus = Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkGatewayConnectionStatus
        VirtualNetworkPeeringState = Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkPeeringState
        IpsecIntegrity = Azure::Network::Mgmt::V2018_01_01::Models::IpsecIntegrity
        VirtualNetworkGatewayType = Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkGatewayType
        VpnType = Azure::Network::Mgmt::V2018_01_01::Models::VpnType
        VirtualNetworkGatewaySkuName = Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkGatewaySkuName
        PfsGroup = Azure::Network::Mgmt::V2018_01_01::Models::PfsGroup
        ProcessorArchitecture = Azure::Network::Mgmt::V2018_01_01::Models::ProcessorArchitecture
        Severity = Azure::Network::Mgmt::V2018_01_01::Models::Severity
        IkeEncryption = Azure::Network::Mgmt::V2018_01_01::Models::IkeEncryption
        OperationDisplay = Azure::Network::Mgmt::V2018_01_01::Models::OperationDisplay
        DhGroup = Azure::Network::Mgmt::V2018_01_01::Models::DhGroup
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
        ApplicationSecurityGroupListResult = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationSecurityGroupListResult
        Dimension = Azure::Network::Mgmt::V2018_01_01::Models::Dimension
        MetricSpecification = Azure::Network::Mgmt::V2018_01_01::Models::MetricSpecification
        Topology = Azure::Network::Mgmt::V2018_01_01::Models::Topology
        VerificationIPFlowParameters = Azure::Network::Mgmt::V2018_01_01::Models::VerificationIPFlowParameters
        VerificationIPFlowResult = Azure::Network::Mgmt::V2018_01_01::Models::VerificationIPFlowResult
        NextHopParameters = Azure::Network::Mgmt::V2018_01_01::Models::NextHopParameters
        NextHopResult = Azure::Network::Mgmt::V2018_01_01::Models::NextHopResult
        BGPCommunity = Azure::Network::Mgmt::V2018_01_01::Models::BGPCommunity
        SecurityGroupViewParameters = Azure::Network::Mgmt::V2018_01_01::Models::SecurityGroupViewParameters
        SubnetAssociation = Azure::Network::Mgmt::V2018_01_01::Models::SubnetAssociation
        ExpressRouteCircuitRoutesTableSummary = Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitRoutesTableSummary
        NetworkInterfaceAssociation = Azure::Network::Mgmt::V2018_01_01::Models::NetworkInterfaceAssociation
        SecurityRuleAssociations = Azure::Network::Mgmt::V2018_01_01::Models::SecurityRuleAssociations
        SecurityGroupViewResult = Azure::Network::Mgmt::V2018_01_01::Models::SecurityGroupViewResult
        LoadBalancerSku = Azure::Network::Mgmt::V2018_01_01::Models::LoadBalancerSku
        SecurityGroupNetworkInterface = Azure::Network::Mgmt::V2018_01_01::Models::SecurityGroupNetworkInterface
        PacketCaptureStorageLocation = Azure::Network::Mgmt::V2018_01_01::Models::PacketCaptureStorageLocation
        RouteFilterListResult = Azure::Network::Mgmt::V2018_01_01::Models::RouteFilterListResult
        PacketCaptureFilter = Azure::Network::Mgmt::V2018_01_01::Models::PacketCaptureFilter
        VpnDeviceScriptParameters = Azure::Network::Mgmt::V2018_01_01::Models::VpnDeviceScriptParameters
        PacketCaptureParameters = Azure::Network::Mgmt::V2018_01_01::Models::PacketCaptureParameters
        PacketCapture = Azure::Network::Mgmt::V2018_01_01::Models::PacketCapture
        PacketCaptureResult = Azure::Network::Mgmt::V2018_01_01::Models::PacketCaptureResult
        IpsecPolicy = Azure::Network::Mgmt::V2018_01_01::Models::IpsecPolicy
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
        ConnectivityIssue = Azure::Network::Mgmt::V2018_01_01::Models::ConnectivityIssue
        ExpressRouteCircuitListResult = Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitListResult
        SubResource = Azure::Network::Mgmt::V2018_01_01::Models::SubResource
        RouteFilterRuleListResult = Azure::Network::Mgmt::V2018_01_01::Models::RouteFilterRuleListResult
        ConnectivityHop = Azure::Network::Mgmt::V2018_01_01::Models::ConnectivityHop
        ApplicationGatewayListResult = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayListResult
        ApplicationGatewayBackendAddress = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayBackendAddress
        UsageName = Azure::Network::Mgmt::V2018_01_01::Models::UsageName
        Usage = Azure::Network::Mgmt::V2018_01_01::Models::Usage
        NetworkInterfaceDnsSettings = Azure::Network::Mgmt::V2018_01_01::Models::NetworkInterfaceDnsSettings
        NetworkSecurityGroupListResult = Azure::Network::Mgmt::V2018_01_01::Models::NetworkSecurityGroupListResult
        GatewayRoute = Azure::Network::Mgmt::V2018_01_01::Models::GatewayRoute
        Resource = Azure::Network::Mgmt::V2018_01_01::Models::Resource
        BgpSettings = Azure::Network::Mgmt::V2018_01_01::Models::BgpSettings
        ExpressRouteCircuitPeeringConfig = Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitPeeringConfig
        VpnClientConfiguration = Azure::Network::Mgmt::V2018_01_01::Models::VpnClientConfiguration
        ExpressRouteCircuitStats = Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitStats
        VirtualNetworkListResult = Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkListResult
        SecurityRuleListResult = Azure::Network::Mgmt::V2018_01_01::Models::SecurityRuleListResult
        VirtualNetworkGatewayListConnectionsResult = Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkGatewayListConnectionsResult
        ExpressRouteCircuitPeeringListResult = Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitPeeringListResult
        UsagesListResult = Azure::Network::Mgmt::V2018_01_01::Models::UsagesListResult
        ConnectionResetSharedKey = Azure::Network::Mgmt::V2018_01_01::Models::ConnectionResetSharedKey
        ExpressRouteCircuitServiceProviderProperties = Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitServiceProviderProperties
        RouteTableListResult = Azure::Network::Mgmt::V2018_01_01::Models::RouteTableListResult
        NetworkInterfaceListResult = Azure::Network::Mgmt::V2018_01_01::Models::NetworkInterfaceListResult
        ConnectionSharedKey = Azure::Network::Mgmt::V2018_01_01::Models::ConnectionSharedKey
        ExpressRouteCircuitArpTable = Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitArpTable
        AzureReachabilityReportLatencyInfo = Azure::Network::Mgmt::V2018_01_01::Models::AzureReachabilityReportLatencyInfo
        DnsNameAvailabilityResult = Azure::Network::Mgmt::V2018_01_01::Models::DnsNameAvailabilityResult
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
        AzureReachabilityReportParameters = Azure::Network::Mgmt::V2018_01_01::Models::AzureReachabilityReportParameters
        VpnClientParameters = Azure::Network::Mgmt::V2018_01_01::Models::VpnClientParameters
        ErrorDetails = Azure::Network::Mgmt::V2018_01_01::Models::ErrorDetails
        AzureReachabilityReportItem = Azure::Network::Mgmt::V2018_01_01::Models::AzureReachabilityReportItem
        ConnectionMonitor = Azure::Network::Mgmt::V2018_01_01::Models::ConnectionMonitor
        VirtualNetworkGatewayListResult = Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkGatewayListResult
        ExpressRouteServiceProviderBandwidthsOffered = Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteServiceProviderBandwidthsOffered
        AvailableProvidersListParameters = Azure::Network::Mgmt::V2018_01_01::Models::AvailableProvidersListParameters
        AzureReachabilityReportLocation = Azure::Network::Mgmt::V2018_01_01::Models::AzureReachabilityReportLocation
        BgpServiceCommunityListResult = Azure::Network::Mgmt::V2018_01_01::Models::BgpServiceCommunityListResult
        AvailableProvidersListState = Azure::Network::Mgmt::V2018_01_01::Models::AvailableProvidersListState
        AvailableProvidersListCountry = Azure::Network::Mgmt::V2018_01_01::Models::AvailableProvidersListCountry
        ConnectivityParameters = Azure::Network::Mgmt::V2018_01_01::Models::ConnectivityParameters
        ServiceEndpointPropertiesFormat = Azure::Network::Mgmt::V2018_01_01::Models::ServiceEndpointPropertiesFormat
        AzureReachabilityReport = Azure::Network::Mgmt::V2018_01_01::Models::AzureReachabilityReport
        ApplicationGatewayFirewallRuleGroup = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayFirewallRuleGroup
        ConnectivityInformation = Azure::Network::Mgmt::V2018_01_01::Models::ConnectivityInformation
        AvailableProvidersListCity = Azure::Network::Mgmt::V2018_01_01::Models::AvailableProvidersListCity
        ConnectionMonitorParameters = Azure::Network::Mgmt::V2018_01_01::Models::ConnectionMonitorParameters
        ApplicationSecurityGroup = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationSecurityGroup
        ExpressRouteCircuitsRoutesTableSummaryListResult = Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitsRoutesTableSummaryListResult
        ExpressRouteServiceProviderListResult = Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteServiceProviderListResult
        GatewayRouteListResult = Azure::Network::Mgmt::V2018_01_01::Models::GatewayRouteListResult
        ExpressRouteCircuitsArpTableListResult = Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitsArpTableListResult
        ApplicationGatewayBackendHealth = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayBackendHealth
        ConnectionMonitorDestination = Azure::Network::Mgmt::V2018_01_01::Models::ConnectionMonitorDestination
        ApplicationGatewayWebApplicationFirewallConfiguration = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayWebApplicationFirewallConfiguration
        Route = Azure::Network::Mgmt::V2018_01_01::Models::Route
        PublicIPAddressListResult = Azure::Network::Mgmt::V2018_01_01::Models::PublicIPAddressListResult
        InboundNatRule = Azure::Network::Mgmt::V2018_01_01::Models::InboundNatRule
        ConnectionMonitorResult = Azure::Network::Mgmt::V2018_01_01::Models::ConnectionMonitorResult
        AvailableProvidersList = Azure::Network::Mgmt::V2018_01_01::Models::AvailableProvidersList
        ConnectionMonitorListResult = Azure::Network::Mgmt::V2018_01_01::Models::ConnectionMonitorListResult
        ConnectionMonitorSource = Azure::Network::Mgmt::V2018_01_01::Models::ConnectionMonitorSource
        ConnectionMonitorQueryResult = Azure::Network::Mgmt::V2018_01_01::Models::ConnectionMonitorQueryResult
        ExpressRouteCircuitSku = Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitSku
        AuthorizationListResult = Azure::Network::Mgmt::V2018_01_01::Models::AuthorizationListResult
        SecurityRule = Azure::Network::Mgmt::V2018_01_01::Models::SecurityRule
        NetworkInterface = Azure::Network::Mgmt::V2018_01_01::Models::NetworkInterface
        NetworkSecurityGroup = Azure::Network::Mgmt::V2018_01_01::Models::NetworkSecurityGroup
        ApplicationGatewayBackendHttpSettings = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayBackendHttpSettings
        VirtualNetworkGatewaySku = Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkGatewaySku
        PublicIPAddress = Azure::Network::Mgmt::V2018_01_01::Models::PublicIPAddress
        AddressSpace = Azure::Network::Mgmt::V2018_01_01::Models::AddressSpace
        Subnet = Azure::Network::Mgmt::V2018_01_01::Models::Subnet
        Availability = Azure::Network::Mgmt::V2018_01_01::Models::Availability
        ApplicationGatewayBackendAddressPool = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayBackendAddressPool
        ResourceNavigationLink = Azure::Network::Mgmt::V2018_01_01::Models::ResourceNavigationLink
        ApplicationGatewayIPConfiguration = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayIPConfiguration
        RouteTable = Azure::Network::Mgmt::V2018_01_01::Models::RouteTable
        ApplicationGatewayFrontendIPConfiguration = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayFrontendIPConfiguration
        IPConfiguration = Azure::Network::Mgmt::V2018_01_01::Models::IPConfiguration
        BackendAddressPool = Azure::Network::Mgmt::V2018_01_01::Models::BackendAddressPool
        NetworkInterfaceIPConfiguration = Azure::Network::Mgmt::V2018_01_01::Models::NetworkInterfaceIPConfiguration
        ConnectionStateSnapshot = Azure::Network::Mgmt::V2018_01_01::Models::ConnectionStateSnapshot
        ExpressRouteCircuitPeering = Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitPeering
        ApplicationGatewayHttpListener = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayHttpListener
        ApplicationGatewayPathRule = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayPathRule
        ApplicationGatewayProbe = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayProbe
        ApplicationGatewayAuthenticationCertificate = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayAuthenticationCertificate
        ApplicationGatewayRedirectConfiguration = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayRedirectConfiguration
        ApplicationGatewayFrontendPort = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayFrontendPort
        ApplicationGatewayAvailableSslOptions = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayAvailableSslOptions
        ApplicationGatewaySslPredefinedPolicy = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewaySslPredefinedPolicy
        EndpointServiceResult = Azure::Network::Mgmt::V2018_01_01::Models::EndpointServiceResult
        RouteFilterRule = Azure::Network::Mgmt::V2018_01_01::Models::RouteFilterRule
        RouteFilter = Azure::Network::Mgmt::V2018_01_01::Models::RouteFilter
        LoadBalancingRule = Azure::Network::Mgmt::V2018_01_01::Models::LoadBalancingRule
        ApplicationGatewayRequestRoutingRule = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayRequestRoutingRule
        ApplicationGatewayUrlPathMap = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayUrlPathMap
        ApplicationGatewaySslCertificate = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewaySslCertificate
        ExpressRouteCircuitAuthorization = Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitAuthorization
        VirtualNetwork = Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetwork
        ApplicationGatewayFirewallRuleSet = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayFirewallRuleSet
        ExpressRouteServiceProvider = Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteServiceProvider
        FrontendIPConfiguration = Azure::Network::Mgmt::V2018_01_01::Models::FrontendIPConfiguration
        VirtualNetworkGateway = Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkGateway
        Probe = Azure::Network::Mgmt::V2018_01_01::Models::Probe
        InboundNatPool = Azure::Network::Mgmt::V2018_01_01::Models::InboundNatPool
        OutboundNatRule = Azure::Network::Mgmt::V2018_01_01::Models::OutboundNatRule
        ApplicationGateway = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGateway
        PatchRouteFilter = Azure::Network::Mgmt::V2018_01_01::Models::PatchRouteFilter
        BgpServiceCommunity = Azure::Network::Mgmt::V2018_01_01::Models::BgpServiceCommunity
        ExpressRouteCircuit = Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuit
        VpnClientRevokedCertificate = Azure::Network::Mgmt::V2018_01_01::Models::VpnClientRevokedCertificate
        SecurityRuleDirection = Azure::Network::Mgmt::V2018_01_01::Models::SecurityRuleDirection
        LocalNetworkGateway = Azure::Network::Mgmt::V2018_01_01::Models::LocalNetworkGateway
        VirtualNetworkGatewayConnection = Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkGatewayConnection
        IPVersion = Azure::Network::Mgmt::V2018_01_01::Models::IPVersion
        ApplicationGatewayTier = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayTier
        LoadBalancer = Azure::Network::Mgmt::V2018_01_01::Models::LoadBalancer
        TransportProtocol = Azure::Network::Mgmt::V2018_01_01::Models::TransportProtocol
        NetworkWatcher = Azure::Network::Mgmt::V2018_01_01::Models::NetworkWatcher
        PatchRouteFilterRule = Azure::Network::Mgmt::V2018_01_01::Models::PatchRouteFilterRule
        ExpressRouteCircuitPeeringState = Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitPeeringState
        RouteNextHopType = Azure::Network::Mgmt::V2018_01_01::Models::RouteNextHopType
        VirtualNetworkPeering = Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkPeering
        VirtualNetworkGatewayConnectionListEntity = Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkGatewayConnectionListEntity
        PublicIPAddressSkuName = Azure::Network::Mgmt::V2018_01_01::Models::PublicIPAddressSkuName
        ApplicationGatewayBackendHealthServerHealth = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayBackendHealthServerHealth
        IPAllocationMethod = Azure::Network::Mgmt::V2018_01_01::Models::IPAllocationMethod
        ApplicationGatewaySslPolicyType = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewaySslPolicyType
        SecurityRuleProtocol = Azure::Network::Mgmt::V2018_01_01::Models::SecurityRuleProtocol
        VirtualNetworkGatewayIPConfiguration = Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkGatewayIPConfiguration
        VpnClientRootCertificate = Azure::Network::Mgmt::V2018_01_01::Models::VpnClientRootCertificate
        ApplicationGatewayFirewallMode = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayFirewallMode
        ApplicationGatewayProtocol = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayProtocol
        ApplicationGatewayCookieBasedAffinity = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayCookieBasedAffinity
        ApplicationGatewayRequestRoutingRuleType = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayRequestRoutingRuleType
        ApplicationGatewaySkuName = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewaySkuName
        AuthorizationUseStatus = Azure::Network::Mgmt::V2018_01_01::Models::AuthorizationUseStatus
        ExpressRouteCircuitPeeringAdvertisedPublicPrefixState = Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitPeeringAdvertisedPublicPrefixState
        ExpressRouteCircuitPeeringType = Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitPeeringType
        NextHopType = Azure::Network::Mgmt::V2018_01_01::Models::NextHopType
        SecurityRuleAccess = Azure::Network::Mgmt::V2018_01_01::Models::SecurityRuleAccess
        ExpressRouteCircuitSkuFamily = Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitSkuFamily
        ApplicationGatewaySslPolicyName = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewaySslPolicyName
        ApplicationGatewaySslCipherSuite = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewaySslCipherSuite
        ApplicationGatewayRedirectType = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayRedirectType
        NetworkOperationStatus = Azure::Network::Mgmt::V2018_01_01::Models::NetworkOperationStatus
        ApplicationGatewayOperationalState = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayOperationalState
        LoadBalancerSkuName = Azure::Network::Mgmt::V2018_01_01::Models::LoadBalancerSkuName
        EffectiveSecurityRuleProtocol = Azure::Network::Mgmt::V2018_01_01::Models::EffectiveSecurityRuleProtocol
        EffectiveRouteSource = Azure::Network::Mgmt::V2018_01_01::Models::EffectiveRouteSource
        EffectiveRouteState = Azure::Network::Mgmt::V2018_01_01::Models::EffectiveRouteState
        ExpressRouteCircuitSkuTier = Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitSkuTier
        Direction = Azure::Network::Mgmt::V2018_01_01::Models::Direction
        ServiceProviderProvisioningState = Azure::Network::Mgmt::V2018_01_01::Models::ServiceProviderProvisioningState
        LoadDistribution = Azure::Network::Mgmt::V2018_01_01::Models::LoadDistribution
        ApplicationGatewaySslProtocol = Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewaySslProtocol
        Protocol = Azure::Network::Mgmt::V2018_01_01::Models::Protocol
        IssueType = Azure::Network::Mgmt::V2018_01_01::Models::IssueType
        ConnectionStatus = Azure::Network::Mgmt::V2018_01_01::Models::ConnectionStatus
        ConnectionState = Azure::Network::Mgmt::V2018_01_01::Models::ConnectionState
        EvaluationState = Azure::Network::Mgmt::V2018_01_01::Models::EvaluationState
        Access = Azure::Network::Mgmt::V2018_01_01::Models::Access
        VpnClientProtocol = Azure::Network::Mgmt::V2018_01_01::Models::VpnClientProtocol
      end

      class NetworkManagementClass
        attr_reader :network_interfaces, :network_security_groups, :security_rules, :public_ipaddresses, :route_filter_rules, :route_tables, :routes, :usages, :virtual_networks, :subnets, :bgp_service_communities, :virtual_network_peerings, :virtual_network_gateways, :virtual_network_gateway_connections, :local_network_gateways, :operations, :application_security_groups, :available_endpoint_services, :load_balancer_backend_address_pools, :load_balancer_frontend_ipconfigurations, :inbound_nat_rules, :load_balancer_load_balancing_rules, :load_balancer_network_interfaces, :load_balancer_probes, :network_interface_ipconfigurations, :network_interface_load_balancers, :default_security_rules, :network_watchers, :packet_captures, :connection_monitors, :route_filters, :application_gateways, :express_route_circuit_authorizations, :express_route_circuit_peerings, :express_route_circuits, :express_route_service_providers, :load_balancers, :configurable, :base_url, :options, :model_classes

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
          @route_filter_rules = @client_0.route_filter_rules
          @route_tables = @client_0.route_tables
          @routes = @client_0.routes
          @usages = @client_0.usages
          @virtual_networks = @client_0.virtual_networks
          @subnets = @client_0.subnets
          @bgp_service_communities = @client_0.bgp_service_communities
          @virtual_network_peerings = @client_0.virtual_network_peerings
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
          def bgp_peer_state
            Azure::Network::Mgmt::V2018_01_01::Models::BgpPeerState
          end
          def authentication_method
            Azure::Network::Mgmt::V2018_01_01::Models::AuthenticationMethod
          end
          def ipsec_encryption
            Azure::Network::Mgmt::V2018_01_01::Models::IpsecEncryption
          end
          def association_type
            Azure::Network::Mgmt::V2018_01_01::Models::AssociationType
          end
          def probe_protocol
            Azure::Network::Mgmt::V2018_01_01::Models::ProbeProtocol
          end
          def ike_integrity
            Azure::Network::Mgmt::V2018_01_01::Models::IkeIntegrity
          end
          def pc_protocol
            Azure::Network::Mgmt::V2018_01_01::Models::PcProtocol
          end
          def pc_status
            Azure::Network::Mgmt::V2018_01_01::Models::PcStatus
          end
          def pc_error
            Azure::Network::Mgmt::V2018_01_01::Models::PcError
          end
          def virtual_network_gateway_sku_tier
            Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkGatewaySkuTier
          end
          def provisioning_state
            Azure::Network::Mgmt::V2018_01_01::Models::ProvisioningState
          end
          def virtual_network_gateway_connection_type
            Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkGatewayConnectionType
          end
          def virtual_network_gateway_connection_status
            Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkGatewayConnectionStatus
          end
          def virtual_network_peering_state
            Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkPeeringState
          end
          def ipsec_integrity
            Azure::Network::Mgmt::V2018_01_01::Models::IpsecIntegrity
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
          def pfs_group
            Azure::Network::Mgmt::V2018_01_01::Models::PfsGroup
          end
          def processor_architecture
            Azure::Network::Mgmt::V2018_01_01::Models::ProcessorArchitecture
          end
          def severity
            Azure::Network::Mgmt::V2018_01_01::Models::Severity
          end
          def ike_encryption
            Azure::Network::Mgmt::V2018_01_01::Models::IkeEncryption
          end
          def operation_display
            Azure::Network::Mgmt::V2018_01_01::Models::OperationDisplay
          end
          def dh_group
            Azure::Network::Mgmt::V2018_01_01::Models::DhGroup
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
          def application_security_group_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationSecurityGroupListResult
          end
          def dimension
            Azure::Network::Mgmt::V2018_01_01::Models::Dimension
          end
          def metric_specification
            Azure::Network::Mgmt::V2018_01_01::Models::MetricSpecification
          end
          def topology
            Azure::Network::Mgmt::V2018_01_01::Models::Topology
          end
          def verification_ipflow_parameters
            Azure::Network::Mgmt::V2018_01_01::Models::VerificationIPFlowParameters
          end
          def verification_ipflow_result
            Azure::Network::Mgmt::V2018_01_01::Models::VerificationIPFlowResult
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
          def security_group_view_parameters
            Azure::Network::Mgmt::V2018_01_01::Models::SecurityGroupViewParameters
          end
          def subnet_association
            Azure::Network::Mgmt::V2018_01_01::Models::SubnetAssociation
          end
          def express_route_circuit_routes_table_summary
            Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitRoutesTableSummary
          end
          def network_interface_association
            Azure::Network::Mgmt::V2018_01_01::Models::NetworkInterfaceAssociation
          end
          def security_rule_associations
            Azure::Network::Mgmt::V2018_01_01::Models::SecurityRuleAssociations
          end
          def security_group_view_result
            Azure::Network::Mgmt::V2018_01_01::Models::SecurityGroupViewResult
          end
          def load_balancer_sku
            Azure::Network::Mgmt::V2018_01_01::Models::LoadBalancerSku
          end
          def security_group_network_interface
            Azure::Network::Mgmt::V2018_01_01::Models::SecurityGroupNetworkInterface
          end
          def packet_capture_storage_location
            Azure::Network::Mgmt::V2018_01_01::Models::PacketCaptureStorageLocation
          end
          def route_filter_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::RouteFilterListResult
          end
          def packet_capture_filter
            Azure::Network::Mgmt::V2018_01_01::Models::PacketCaptureFilter
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
          def connectivity_issue
            Azure::Network::Mgmt::V2018_01_01::Models::ConnectivityIssue
          end
          def express_route_circuit_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitListResult
          end
          def sub_resource
            Azure::Network::Mgmt::V2018_01_01::Models::SubResource
          end
          def route_filter_rule_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::RouteFilterRuleListResult
          end
          def connectivity_hop
            Azure::Network::Mgmt::V2018_01_01::Models::ConnectivityHop
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
          def gateway_route
            Azure::Network::Mgmt::V2018_01_01::Models::GatewayRoute
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
          def virtual_network_gateway_list_connections_result
            Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkGatewayListConnectionsResult
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
          def azure_reachability_report_latency_info
            Azure::Network::Mgmt::V2018_01_01::Models::AzureReachabilityReportLatencyInfo
          end
          def dns_name_availability_result
            Azure::Network::Mgmt::V2018_01_01::Models::DnsNameAvailabilityResult
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
          def azure_reachability_report_parameters
            Azure::Network::Mgmt::V2018_01_01::Models::AzureReachabilityReportParameters
          end
          def vpn_client_parameters
            Azure::Network::Mgmt::V2018_01_01::Models::VpnClientParameters
          end
          def error_details
            Azure::Network::Mgmt::V2018_01_01::Models::ErrorDetails
          end
          def azure_reachability_report_item
            Azure::Network::Mgmt::V2018_01_01::Models::AzureReachabilityReportItem
          end
          def connection_monitor
            Azure::Network::Mgmt::V2018_01_01::Models::ConnectionMonitor
          end
          def virtual_network_gateway_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkGatewayListResult
          end
          def express_route_service_provider_bandwidths_offered
            Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteServiceProviderBandwidthsOffered
          end
          def available_providers_list_parameters
            Azure::Network::Mgmt::V2018_01_01::Models::AvailableProvidersListParameters
          end
          def azure_reachability_report_location
            Azure::Network::Mgmt::V2018_01_01::Models::AzureReachabilityReportLocation
          end
          def bgp_service_community_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::BgpServiceCommunityListResult
          end
          def available_providers_list_state
            Azure::Network::Mgmt::V2018_01_01::Models::AvailableProvidersListState
          end
          def available_providers_list_country
            Azure::Network::Mgmt::V2018_01_01::Models::AvailableProvidersListCountry
          end
          def connectivity_parameters
            Azure::Network::Mgmt::V2018_01_01::Models::ConnectivityParameters
          end
          def service_endpoint_properties_format
            Azure::Network::Mgmt::V2018_01_01::Models::ServiceEndpointPropertiesFormat
          end
          def azure_reachability_report
            Azure::Network::Mgmt::V2018_01_01::Models::AzureReachabilityReport
          end
          def application_gateway_firewall_rule_group
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayFirewallRuleGroup
          end
          def connectivity_information
            Azure::Network::Mgmt::V2018_01_01::Models::ConnectivityInformation
          end
          def available_providers_list_city
            Azure::Network::Mgmt::V2018_01_01::Models::AvailableProvidersListCity
          end
          def connection_monitor_parameters
            Azure::Network::Mgmt::V2018_01_01::Models::ConnectionMonitorParameters
          end
          def application_security_group
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationSecurityGroup
          end
          def express_route_circuits_routes_table_summary_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitsRoutesTableSummaryListResult
          end
          def express_route_service_provider_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteServiceProviderListResult
          end
          def gateway_route_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::GatewayRouteListResult
          end
          def express_route_circuits_arp_table_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitsArpTableListResult
          end
          def application_gateway_backend_health
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayBackendHealth
          end
          def connection_monitor_destination
            Azure::Network::Mgmt::V2018_01_01::Models::ConnectionMonitorDestination
          end
          def application_gateway_web_application_firewall_configuration
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayWebApplicationFirewallConfiguration
          end
          def route
            Azure::Network::Mgmt::V2018_01_01::Models::Route
          end
          def public_ipaddress_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::PublicIPAddressListResult
          end
          def inbound_nat_rule
            Azure::Network::Mgmt::V2018_01_01::Models::InboundNatRule
          end
          def connection_monitor_result
            Azure::Network::Mgmt::V2018_01_01::Models::ConnectionMonitorResult
          end
          def available_providers_list
            Azure::Network::Mgmt::V2018_01_01::Models::AvailableProvidersList
          end
          def connection_monitor_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::ConnectionMonitorListResult
          end
          def connection_monitor_source
            Azure::Network::Mgmt::V2018_01_01::Models::ConnectionMonitorSource
          end
          def connection_monitor_query_result
            Azure::Network::Mgmt::V2018_01_01::Models::ConnectionMonitorQueryResult
          end
          def express_route_circuit_sku
            Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitSku
          end
          def authorization_list_result
            Azure::Network::Mgmt::V2018_01_01::Models::AuthorizationListResult
          end
          def security_rule
            Azure::Network::Mgmt::V2018_01_01::Models::SecurityRule
          end
          def network_interface
            Azure::Network::Mgmt::V2018_01_01::Models::NetworkInterface
          end
          def network_security_group
            Azure::Network::Mgmt::V2018_01_01::Models::NetworkSecurityGroup
          end
          def application_gateway_backend_http_settings
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayBackendHttpSettings
          end
          def virtual_network_gateway_sku
            Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkGatewaySku
          end
          def public_ipaddress
            Azure::Network::Mgmt::V2018_01_01::Models::PublicIPAddress
          end
          def address_space
            Azure::Network::Mgmt::V2018_01_01::Models::AddressSpace
          end
          def subnet
            Azure::Network::Mgmt::V2018_01_01::Models::Subnet
          end
          def availability
            Azure::Network::Mgmt::V2018_01_01::Models::Availability
          end
          def application_gateway_backend_address_pool
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayBackendAddressPool
          end
          def resource_navigation_link
            Azure::Network::Mgmt::V2018_01_01::Models::ResourceNavigationLink
          end
          def application_gateway_ipconfiguration
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayIPConfiguration
          end
          def route_table
            Azure::Network::Mgmt::V2018_01_01::Models::RouteTable
          end
          def application_gateway_frontend_ipconfiguration
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayFrontendIPConfiguration
          end
          def ipconfiguration
            Azure::Network::Mgmt::V2018_01_01::Models::IPConfiguration
          end
          def backend_address_pool
            Azure::Network::Mgmt::V2018_01_01::Models::BackendAddressPool
          end
          def network_interface_ipconfiguration
            Azure::Network::Mgmt::V2018_01_01::Models::NetworkInterfaceIPConfiguration
          end
          def connection_state_snapshot
            Azure::Network::Mgmt::V2018_01_01::Models::ConnectionStateSnapshot
          end
          def express_route_circuit_peering
            Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitPeering
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
          def application_gateway_authentication_certificate
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayAuthenticationCertificate
          end
          def application_gateway_redirect_configuration
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayRedirectConfiguration
          end
          def application_gateway_frontend_port
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayFrontendPort
          end
          def application_gateway_available_ssl_options
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayAvailableSslOptions
          end
          def application_gateway_ssl_predefined_policy
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewaySslPredefinedPolicy
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
          def load_balancing_rule
            Azure::Network::Mgmt::V2018_01_01::Models::LoadBalancingRule
          end
          def application_gateway_request_routing_rule
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayRequestRoutingRule
          end
          def application_gateway_url_path_map
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayUrlPathMap
          end
          def application_gateway_ssl_certificate
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewaySslCertificate
          end
          def express_route_circuit_authorization
            Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitAuthorization
          end
          def virtual_network
            Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetwork
          end
          def application_gateway_firewall_rule_set
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayFirewallRuleSet
          end
          def express_route_service_provider
            Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteServiceProvider
          end
          def frontend_ipconfiguration
            Azure::Network::Mgmt::V2018_01_01::Models::FrontendIPConfiguration
          end
          def virtual_network_gateway
            Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkGateway
          end
          def probe
            Azure::Network::Mgmt::V2018_01_01::Models::Probe
          end
          def inbound_nat_pool
            Azure::Network::Mgmt::V2018_01_01::Models::InboundNatPool
          end
          def outbound_nat_rule
            Azure::Network::Mgmt::V2018_01_01::Models::OutboundNatRule
          end
          def application_gateway
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGateway
          end
          def patch_route_filter
            Azure::Network::Mgmt::V2018_01_01::Models::PatchRouteFilter
          end
          def bgp_service_community
            Azure::Network::Mgmt::V2018_01_01::Models::BgpServiceCommunity
          end
          def express_route_circuit
            Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuit
          end
          def vpn_client_revoked_certificate
            Azure::Network::Mgmt::V2018_01_01::Models::VpnClientRevokedCertificate
          end
          def security_rule_direction
            Azure::Network::Mgmt::V2018_01_01::Models::SecurityRuleDirection
          end
          def local_network_gateway
            Azure::Network::Mgmt::V2018_01_01::Models::LocalNetworkGateway
          end
          def virtual_network_gateway_connection
            Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkGatewayConnection
          end
          def ipversion
            Azure::Network::Mgmt::V2018_01_01::Models::IPVersion
          end
          def application_gateway_tier
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayTier
          end
          def load_balancer
            Azure::Network::Mgmt::V2018_01_01::Models::LoadBalancer
          end
          def transport_protocol
            Azure::Network::Mgmt::V2018_01_01::Models::TransportProtocol
          end
          def network_watcher
            Azure::Network::Mgmt::V2018_01_01::Models::NetworkWatcher
          end
          def patch_route_filter_rule
            Azure::Network::Mgmt::V2018_01_01::Models::PatchRouteFilterRule
          end
          def express_route_circuit_peering_state
            Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitPeeringState
          end
          def route_next_hop_type
            Azure::Network::Mgmt::V2018_01_01::Models::RouteNextHopType
          end
          def virtual_network_peering
            Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkPeering
          end
          def virtual_network_gateway_connection_list_entity
            Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkGatewayConnectionListEntity
          end
          def public_ipaddress_sku_name
            Azure::Network::Mgmt::V2018_01_01::Models::PublicIPAddressSkuName
          end
          def application_gateway_backend_health_server_health
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayBackendHealthServerHealth
          end
          def ipallocation_method
            Azure::Network::Mgmt::V2018_01_01::Models::IPAllocationMethod
          end
          def application_gateway_ssl_policy_type
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewaySslPolicyType
          end
          def security_rule_protocol
            Azure::Network::Mgmt::V2018_01_01::Models::SecurityRuleProtocol
          end
          def virtual_network_gateway_ipconfiguration
            Azure::Network::Mgmt::V2018_01_01::Models::VirtualNetworkGatewayIPConfiguration
          end
          def vpn_client_root_certificate
            Azure::Network::Mgmt::V2018_01_01::Models::VpnClientRootCertificate
          end
          def application_gateway_firewall_mode
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayFirewallMode
          end
          def application_gateway_protocol
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayProtocol
          end
          def application_gateway_cookie_based_affinity
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayCookieBasedAffinity
          end
          def application_gateway_request_routing_rule_type
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayRequestRoutingRuleType
          end
          def application_gateway_sku_name
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewaySkuName
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
          def next_hop_type
            Azure::Network::Mgmt::V2018_01_01::Models::NextHopType
          end
          def security_rule_access
            Azure::Network::Mgmt::V2018_01_01::Models::SecurityRuleAccess
          end
          def express_route_circuit_sku_family
            Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitSkuFamily
          end
          def application_gateway_ssl_policy_name
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewaySslPolicyName
          end
          def application_gateway_ssl_cipher_suite
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewaySslCipherSuite
          end
          def application_gateway_redirect_type
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayRedirectType
          end
          def network_operation_status
            Azure::Network::Mgmt::V2018_01_01::Models::NetworkOperationStatus
          end
          def application_gateway_operational_state
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewayOperationalState
          end
          def load_balancer_sku_name
            Azure::Network::Mgmt::V2018_01_01::Models::LoadBalancerSkuName
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
          def express_route_circuit_sku_tier
            Azure::Network::Mgmt::V2018_01_01::Models::ExpressRouteCircuitSkuTier
          end
          def direction
            Azure::Network::Mgmt::V2018_01_01::Models::Direction
          end
          def service_provider_provisioning_state
            Azure::Network::Mgmt::V2018_01_01::Models::ServiceProviderProvisioningState
          end
          def load_distribution
            Azure::Network::Mgmt::V2018_01_01::Models::LoadDistribution
          end
          def application_gateway_ssl_protocol
            Azure::Network::Mgmt::V2018_01_01::Models::ApplicationGatewaySslProtocol
          end
          def protocol
            Azure::Network::Mgmt::V2018_01_01::Models::Protocol
          end
          def issue_type
            Azure::Network::Mgmt::V2018_01_01::Models::IssueType
          end
          def connection_status
            Azure::Network::Mgmt::V2018_01_01::Models::ConnectionStatus
          end
          def connection_state
            Azure::Network::Mgmt::V2018_01_01::Models::ConnectionState
          end
          def evaluation_state
            Azure::Network::Mgmt::V2018_01_01::Models::EvaluationState
          end
          def access
            Azure::Network::Mgmt::V2018_01_01::Models::Access
          end
          def vpn_client_protocol
            Azure::Network::Mgmt::V2018_01_01::Models::VpnClientProtocol
          end
        end
      end
    end
  end
end
