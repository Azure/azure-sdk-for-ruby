# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_network'

module Azure::Profiles::V2018_03_01
  module Network
    module Mgmt
      SecurityRules = Azure::Network::Mgmt::V2017_10_01::SecurityRules
      DefaultSecurityRules = Azure::Network::Mgmt::V2017_10_01::DefaultSecurityRules
      NetworkWatchers = Azure::Network::Mgmt::V2017_10_01::NetworkWatchers
      PacketCaptures = Azure::Network::Mgmt::V2017_10_01::PacketCaptures
      ConnectionMonitors = Azure::Network::Mgmt::V2017_10_01::ConnectionMonitors
      RouteFilters = Azure::Network::Mgmt::V2017_10_01::RouteFilters
      RouteFilterRules = Azure::Network::Mgmt::V2017_10_01::RouteFilterRules
      RouteTables = Azure::Network::Mgmt::V2017_10_01::RouteTables
      Routes = Azure::Network::Mgmt::V2017_10_01::Routes
      BgpServiceCommunities = Azure::Network::Mgmt::V2017_10_01::BgpServiceCommunities
      Usages = Azure::Network::Mgmt::V2017_10_01::Usages
      VirtualNetworks = Azure::Network::Mgmt::V2017_10_01::VirtualNetworks
      Subnets = Azure::Network::Mgmt::V2017_10_01::Subnets
      VirtualNetworkPeerings = Azure::Network::Mgmt::V2017_10_01::VirtualNetworkPeerings
      VirtualNetworkGateways = Azure::Network::Mgmt::V2017_10_01::VirtualNetworkGateways
      NetworkInterfaces = Azure::Network::Mgmt::V2017_10_01::NetworkInterfaces
      PublicIPAddresses = Azure::Network::Mgmt::V2017_10_01::PublicIPAddresses
      LocalNetworkGateways = Azure::Network::Mgmt::V2017_10_01::LocalNetworkGateways
      VirtualNetworkGatewayConnections = Azure::Network::Mgmt::V2017_10_01::VirtualNetworkGatewayConnections
      Operations = Azure::Network::Mgmt::V2017_10_01::Operations
      ApplicationGateways = Azure::Network::Mgmt::V2017_10_01::ApplicationGateways
      ApplicationSecurityGroups = Azure::Network::Mgmt::V2017_10_01::ApplicationSecurityGroups
      AvailableEndpointServices = Azure::Network::Mgmt::V2017_10_01::AvailableEndpointServices
      ExpressRouteCircuitAuthorizations = Azure::Network::Mgmt::V2017_10_01::ExpressRouteCircuitAuthorizations
      ExpressRouteCircuitPeerings = Azure::Network::Mgmt::V2017_10_01::ExpressRouteCircuitPeerings
      ExpressRouteCircuits = Azure::Network::Mgmt::V2017_10_01::ExpressRouteCircuits
      ExpressRouteServiceProviders = Azure::Network::Mgmt::V2017_10_01::ExpressRouteServiceProviders
      LoadBalancers = Azure::Network::Mgmt::V2017_10_01::LoadBalancers
      LoadBalancerBackendAddressPools = Azure::Network::Mgmt::V2017_10_01::LoadBalancerBackendAddressPools
      LoadBalancerFrontendIPConfigurations = Azure::Network::Mgmt::V2017_10_01::LoadBalancerFrontendIPConfigurations
      InboundNatRules = Azure::Network::Mgmt::V2017_10_01::InboundNatRules
      LoadBalancerLoadBalancingRules = Azure::Network::Mgmt::V2017_10_01::LoadBalancerLoadBalancingRules
      LoadBalancerNetworkInterfaces = Azure::Network::Mgmt::V2017_10_01::LoadBalancerNetworkInterfaces
      LoadBalancerProbes = Azure::Network::Mgmt::V2017_10_01::LoadBalancerProbes
      NetworkInterfaceIPConfigurations = Azure::Network::Mgmt::V2017_10_01::NetworkInterfaceIPConfigurations
      NetworkInterfaceLoadBalancers = Azure::Network::Mgmt::V2017_10_01::NetworkInterfaceLoadBalancers
      NetworkSecurityGroups = Azure::Network::Mgmt::V2017_10_01::NetworkSecurityGroups

      module Models
        IpTag = Azure::Network::Mgmt::V2017_03_30::Models::IpTag
        EndpointService = Azure::Network::Mgmt::V2017_03_30::Models::EndpointService
        Delegation = Azure::Network::Mgmt::V2017_03_30::Models::Delegation
        InterfaceEndpoint = Azure::Network::Mgmt::V2017_03_30::Models::InterfaceEndpoint
        NetworkInterfaceTapConfiguration = Azure::Network::Mgmt::V2017_03_30::Models::NetworkInterfaceTapConfiguration
        VirtualNetworkTap = Azure::Network::Mgmt::V2017_03_30::Models::VirtualNetworkTap
        ServiceAssociationLink = Azure::Network::Mgmt::V2017_03_30::Models::ServiceAssociationLink
        ServiceEndpointPolicy = Azure::Network::Mgmt::V2017_03_30::Models::ServiceEndpointPolicy
        ServiceEndpointPolicyDefinition = Azure::Network::Mgmt::V2017_03_30::Models::ServiceEndpointPolicyDefinition
        IPConfigurationProfile = Azure::Network::Mgmt::V2017_03_30::Models::IPConfigurationProfile
        ApplicationGatewayBackendAddress = Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayBackendAddress
        PublicIPAddressSku = Azure::Network::Mgmt::V2017_10_01::Models::PublicIPAddressSku
        PublicIPAddressListResult = Azure::Network::Mgmt::V2017_10_01::Models::PublicIPAddressListResult
        PublicIPAddressDnsSettings = Azure::Network::Mgmt::V2017_10_01::Models::PublicIPAddressDnsSettings
        NetworkInterfaceListResult = Azure::Network::Mgmt::V2017_10_01::Models::NetworkInterfaceListResult
        NetworkInterfaceDnsSettings = Azure::Network::Mgmt::V2017_10_01::Models::NetworkInterfaceDnsSettings
        NetworkInterfaceIPConfigurationListResult = Azure::Network::Mgmt::V2017_10_01::Models::NetworkInterfaceIPConfigurationListResult
        ServiceEndpointPropertiesFormat = Azure::Network::Mgmt::V2017_10_01::Models::ServiceEndpointPropertiesFormat
        ApplicationSecurityGroup = Azure::Network::Mgmt::V2017_10_01::Models::ApplicationSecurityGroup
        ResourceNavigationLink = Azure::Network::Mgmt::V2017_10_01::Models::ResourceNavigationLink
        SecurityRule = Azure::Network::Mgmt::V2017_10_01::Models::SecurityRule
        OperationDisplay = Azure::Network::Mgmt::V2017_10_01::Models::OperationDisplay
        IPConfiguration = Azure::Network::Mgmt::V2017_10_01::Models::IPConfiguration
        Operation = Azure::Network::Mgmt::V2017_10_01::Models::Operation
        PublicIPAddress = Azure::Network::Mgmt::V2017_10_01::Models::PublicIPAddress
        OperationListResult = Azure::Network::Mgmt::V2017_10_01::Models::OperationListResult
        ApplicationGatewayBackendAddressPool = Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayBackendAddressPool
        BackendAddressPool = Azure::Network::Mgmt::V2017_10_01::Models::BackendAddressPool
        InboundNatRule = Azure::Network::Mgmt::V2017_10_01::Models::InboundNatRule
        NetworkInterfaceIPConfiguration = Azure::Network::Mgmt::V2017_10_01::Models::NetworkInterfaceIPConfiguration
        NetworkInterface = Azure::Network::Mgmt::V2017_10_01::Models::NetworkInterface
        NetworkSecurityGroup = Azure::Network::Mgmt::V2017_10_01::Models::NetworkSecurityGroup
        Route = Azure::Network::Mgmt::V2017_10_01::Models::Route
        RouteTable = Azure::Network::Mgmt::V2017_10_01::Models::RouteTable
        LogSpecification = Azure::Network::Mgmt::V2017_10_01::Models::LogSpecification
        Subnet = Azure::Network::Mgmt::V2017_10_01::Models::Subnet
        SecurityRuleProtocol = Azure::Network::Mgmt::V2017_10_01::Models::SecurityRuleProtocol
        FrontendIPConfiguration = Azure::Network::Mgmt::V2017_10_01::Models::FrontendIPConfiguration
        SecurityRuleAccess = Azure::Network::Mgmt::V2017_10_01::Models::SecurityRuleAccess
        IPAllocationMethod = Azure::Network::Mgmt::V2017_10_01::Models::IPAllocationMethod
        PublicIPAddressSkuName = Azure::Network::Mgmt::V2017_10_01::Models::PublicIPAddressSkuName
        TransportProtocol = Azure::Network::Mgmt::V2017_10_01::Models::TransportProtocol
        RouteNextHopType = Azure::Network::Mgmt::V2017_10_01::Models::RouteNextHopType
        SecurityRuleDirection = Azure::Network::Mgmt::V2017_10_01::Models::SecurityRuleDirection
        Error = Azure::Network::Mgmt::V2017_10_01::Models::Error
        TopologyAssociation = Azure::Network::Mgmt::V2017_10_01::Models::TopologyAssociation
        TopologyResource = Azure::Network::Mgmt::V2017_10_01::Models::TopologyResource
        OperationPropertiesFormatServiceSpecification = Azure::Network::Mgmt::V2017_10_01::Models::OperationPropertiesFormatServiceSpecification
        VirtualNetworkConnectionGatewayReference = Azure::Network::Mgmt::V2017_10_01::Models::VirtualNetworkConnectionGatewayReference
        LoadBalancerListResult = Azure::Network::Mgmt::V2017_10_01::Models::LoadBalancerListResult
        ConnectionSharedKey = Azure::Network::Mgmt::V2017_10_01::Models::ConnectionSharedKey
        InboundNatRuleListResult = Azure::Network::Mgmt::V2017_10_01::Models::InboundNatRuleListResult
        LoadBalancerBackendAddressPoolListResult = Azure::Network::Mgmt::V2017_10_01::Models::LoadBalancerBackendAddressPoolListResult
        ConnectionResetSharedKey = Azure::Network::Mgmt::V2017_10_01::Models::ConnectionResetSharedKey
        LoadBalancerFrontendIPConfigurationListResult = Azure::Network::Mgmt::V2017_10_01::Models::LoadBalancerFrontendIPConfigurationListResult
        IpsecPolicy = Azure::Network::Mgmt::V2017_10_01::Models::IpsecPolicy
        LoadBalancerLoadBalancingRuleListResult = Azure::Network::Mgmt::V2017_10_01::Models::LoadBalancerLoadBalancingRuleListResult
        GatewayRouteListResult = Azure::Network::Mgmt::V2017_10_01::Models::GatewayRouteListResult
        LoadBalancerProbeListResult = Azure::Network::Mgmt::V2017_10_01::Models::LoadBalancerProbeListResult
        BgpPeerStatusListResult = Azure::Network::Mgmt::V2017_10_01::Models::BgpPeerStatusListResult
        VirtualNetworkGatewayListResult = Azure::Network::Mgmt::V2017_10_01::Models::VirtualNetworkGatewayListResult
        ErrorDetails = Azure::Network::Mgmt::V2017_10_01::Models::ErrorDetails
        ApplicationGatewayBackendHealthHttpSettings = Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayBackendHealthHttpSettings
        ApplicationGatewayBackendHealth = Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayBackendHealth
        AzureAsyncOperationResult = Azure::Network::Mgmt::V2017_10_01::Models::AzureAsyncOperationResult
        ApplicationGatewaySslPolicy = Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewaySslPolicy
        GatewayRoute = Azure::Network::Mgmt::V2017_10_01::Models::GatewayRoute
        SubResource = Azure::Network::Mgmt::V2017_10_01::Models::SubResource
        NetworkInterfaceLoadBalancerListResult = Azure::Network::Mgmt::V2017_10_01::Models::NetworkInterfaceLoadBalancerListResult
        BgpSettings = Azure::Network::Mgmt::V2017_10_01::Models::BgpSettings
        VirtualNetworkGatewaySku = Azure::Network::Mgmt::V2017_10_01::Models::VirtualNetworkGatewaySku
        EffectiveNetworkSecurityRule = Azure::Network::Mgmt::V2017_10_01::Models::EffectiveNetworkSecurityRule
        ApplicationGatewayProbeHealthResponseMatch = Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayProbeHealthResponseMatch
        EffectiveNetworkSecurityGroup = Azure::Network::Mgmt::V2017_10_01::Models::EffectiveNetworkSecurityGroup
        VirtualNetworkUsageName = Azure::Network::Mgmt::V2017_10_01::Models::VirtualNetworkUsageName
        EffectiveNetworkSecurityGroupAssociation = Azure::Network::Mgmt::V2017_10_01::Models::EffectiveNetworkSecurityGroupAssociation
        EffectiveNetworkSecurityGroupListResult = Azure::Network::Mgmt::V2017_10_01::Models::EffectiveNetworkSecurityGroupListResult
        VirtualNetworkListResult = Azure::Network::Mgmt::V2017_10_01::Models::VirtualNetworkListResult
        ApplicationGatewayWebApplicationFirewallConfiguration = Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayWebApplicationFirewallConfiguration
        EffectiveRouteListResult = Azure::Network::Mgmt::V2017_10_01::Models::EffectiveRouteListResult
        ApplicationGatewayListResult = Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayListResult
        SecurityRuleListResult = Azure::Network::Mgmt::V2017_10_01::Models::SecurityRuleListResult
        ApplicationGatewayFirewallRuleGroup = Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayFirewallRuleGroup
        EffectiveRoute = Azure::Network::Mgmt::V2017_10_01::Models::EffectiveRoute
        ApplicationGatewayAvailableWafRuleSetsResult = Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayAvailableWafRuleSetsResult
        Usage = Azure::Network::Mgmt::V2017_10_01::Models::Usage
        NetworkSecurityGroupListResult = Azure::Network::Mgmt::V2017_10_01::Models::NetworkSecurityGroupListResult
        NetworkWatcherListResult = Azure::Network::Mgmt::V2017_10_01::Models::NetworkWatcherListResult
        AddressSpace = Azure::Network::Mgmt::V2017_10_01::Models::AddressSpace
        ApplicationSecurityGroupListResult = Azure::Network::Mgmt::V2017_10_01::Models::ApplicationSecurityGroupListResult
        TopologyParameters = Azure::Network::Mgmt::V2017_10_01::Models::TopologyParameters
        Dimension = Azure::Network::Mgmt::V2017_10_01::Models::Dimension
        MetricSpecification = Azure::Network::Mgmt::V2017_10_01::Models::MetricSpecification
        AuthorizationListResult = Azure::Network::Mgmt::V2017_10_01::Models::AuthorizationListResult
        Topology = Azure::Network::Mgmt::V2017_10_01::Models::Topology
        VerificationIPFlowParameters = Azure::Network::Mgmt::V2017_10_01::Models::VerificationIPFlowParameters
        BgpServiceCommunityListResult = Azure::Network::Mgmt::V2017_10_01::Models::BgpServiceCommunityListResult
        VerificationIPFlowResult = Azure::Network::Mgmt::V2017_10_01::Models::VerificationIPFlowResult
        Ipv6ExpressRouteCircuitPeeringConfig = Azure::Network::Mgmt::V2017_10_01::Models::Ipv6ExpressRouteCircuitPeeringConfig
        NextHopParameters = Azure::Network::Mgmt::V2017_10_01::Models::NextHopParameters
        ExpressRouteCircuitSku = Azure::Network::Mgmt::V2017_10_01::Models::ExpressRouteCircuitSku
        NextHopResult = Azure::Network::Mgmt::V2017_10_01::Models::NextHopResult
        RouteListResult = Azure::Network::Mgmt::V2017_10_01::Models::RouteListResult
        SecurityGroupViewParameters = Azure::Network::Mgmt::V2017_10_01::Models::SecurityGroupViewParameters
        ExpressRouteCircuitsArpTableListResult = Azure::Network::Mgmt::V2017_10_01::Models::ExpressRouteCircuitsArpTableListResult
        NetworkInterfaceAssociation = Azure::Network::Mgmt::V2017_10_01::Models::NetworkInterfaceAssociation
        ExpressRouteCircuitsRoutesTableListResult = Azure::Network::Mgmt::V2017_10_01::Models::ExpressRouteCircuitsRoutesTableListResult
        SubnetAssociation = Azure::Network::Mgmt::V2017_10_01::Models::SubnetAssociation
        ExpressRouteCircuitsRoutesTableSummaryListResult = Azure::Network::Mgmt::V2017_10_01::Models::ExpressRouteCircuitsRoutesTableSummaryListResult
        SecurityRuleAssociations = Azure::Network::Mgmt::V2017_10_01::Models::SecurityRuleAssociations
        ExpressRouteServiceProviderBandwidthsOffered = Azure::Network::Mgmt::V2017_10_01::Models::ExpressRouteServiceProviderBandwidthsOffered
        SecurityGroupNetworkInterface = Azure::Network::Mgmt::V2017_10_01::Models::SecurityGroupNetworkInterface
        ExpressRouteServiceProviderListResult = Azure::Network::Mgmt::V2017_10_01::Models::ExpressRouteServiceProviderListResult
        SecurityGroupViewResult = Azure::Network::Mgmt::V2017_10_01::Models::SecurityGroupViewResult
        RouteFilterRuleListResult = Azure::Network::Mgmt::V2017_10_01::Models::RouteFilterRuleListResult
        PacketCaptureStorageLocation = Azure::Network::Mgmt::V2017_10_01::Models::PacketCaptureStorageLocation
        PacketCaptureFilter = Azure::Network::Mgmt::V2017_10_01::Models::PacketCaptureFilter
        VirtualNetworkGatewayListConnectionsResult = Azure::Network::Mgmt::V2017_10_01::Models::VirtualNetworkGatewayListConnectionsResult
        PacketCaptureParameters = Azure::Network::Mgmt::V2017_10_01::Models::PacketCaptureParameters
        PacketCapture = Azure::Network::Mgmt::V2017_10_01::Models::PacketCapture
        VirtualNetworkGatewayConnectionListResult = Azure::Network::Mgmt::V2017_10_01::Models::VirtualNetworkGatewayConnectionListResult
        PacketCaptureResult = Azure::Network::Mgmt::V2017_10_01::Models::PacketCaptureResult
        PacketCaptureListResult = Azure::Network::Mgmt::V2017_10_01::Models::PacketCaptureListResult
        ApplicationGatewayBackendHealthServer = Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayBackendHealthServer
        PacketCaptureQueryStatusResult = Azure::Network::Mgmt::V2017_10_01::Models::PacketCaptureQueryStatusResult
        ApplicationGatewaySku = Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewaySku
        TroubleshootingParameters = Azure::Network::Mgmt::V2017_10_01::Models::TroubleshootingParameters
        BgpPeerStatus = Azure::Network::Mgmt::V2017_10_01::Models::BgpPeerStatus
        QueryTroubleshootingParameters = Azure::Network::Mgmt::V2017_10_01::Models::QueryTroubleshootingParameters
        VirtualNetworkListUsageResult = Azure::Network::Mgmt::V2017_10_01::Models::VirtualNetworkListUsageResult
        TroubleshootingRecommendedActions = Azure::Network::Mgmt::V2017_10_01::Models::TroubleshootingRecommendedActions
        IPAddressAvailabilityResult = Azure::Network::Mgmt::V2017_10_01::Models::IPAddressAvailabilityResult
        TroubleshootingDetails = Azure::Network::Mgmt::V2017_10_01::Models::TroubleshootingDetails
        DhcpOptions = Azure::Network::Mgmt::V2017_10_01::Models::DhcpOptions
        TroubleshootingResult = Azure::Network::Mgmt::V2017_10_01::Models::TroubleshootingResult
        VirtualNetworkPeeringListResult = Azure::Network::Mgmt::V2017_10_01::Models::VirtualNetworkPeeringListResult
        RetentionPolicyParameters = Azure::Network::Mgmt::V2017_10_01::Models::RetentionPolicyParameters
        ApplicationGatewayAvailableSslPredefinedPolicies = Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayAvailableSslPredefinedPolicies
        FlowLogStatusParameters = Azure::Network::Mgmt::V2017_10_01::Models::FlowLogStatusParameters
        UsagesListResult = Azure::Network::Mgmt::V2017_10_01::Models::UsagesListResult
        FlowLogInformation = Azure::Network::Mgmt::V2017_10_01::Models::FlowLogInformation
        ExpressRouteCircuitPeeringConfig = Azure::Network::Mgmt::V2017_10_01::Models::ExpressRouteCircuitPeeringConfig
        ConnectivitySource = Azure::Network::Mgmt::V2017_10_01::Models::ConnectivitySource
        BGPCommunity = Azure::Network::Mgmt::V2017_10_01::Models::BGPCommunity
        ConnectivityDestination = Azure::Network::Mgmt::V2017_10_01::Models::ConnectivityDestination
        ExpressRouteCircuitServiceProviderProperties = Azure::Network::Mgmt::V2017_10_01::Models::ExpressRouteCircuitServiceProviderProperties
        ConnectivityParameters = Azure::Network::Mgmt::V2017_10_01::Models::ConnectivityParameters
        ExpressRouteCircuitRoutesTable = Azure::Network::Mgmt::V2017_10_01::Models::ExpressRouteCircuitRoutesTable
        ConnectivityIssue = Azure::Network::Mgmt::V2017_10_01::Models::ConnectivityIssue
        ExpressRouteCircuitListResult = Azure::Network::Mgmt::V2017_10_01::Models::ExpressRouteCircuitListResult
        ConnectivityHop = Azure::Network::Mgmt::V2017_10_01::Models::ConnectivityHop
        LoadBalancerSku = Azure::Network::Mgmt::V2017_10_01::Models::LoadBalancerSku
        ConnectivityInformation = Azure::Network::Mgmt::V2017_10_01::Models::ConnectivityInformation
        VpnDeviceScriptParameters = Azure::Network::Mgmt::V2017_10_01::Models::VpnDeviceScriptParameters
        AzureReachabilityReportLocation = Azure::Network::Mgmt::V2017_10_01::Models::AzureReachabilityReportLocation
        AzureReachabilityReportParameters = Azure::Network::Mgmt::V2017_10_01::Models::AzureReachabilityReportParameters
        ApplicationGatewayConnectionDraining = Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayConnectionDraining
        UsageName = Azure::Network::Mgmt::V2017_10_01::Models::UsageName
        AzureReachabilityReportLatencyInfo = Azure::Network::Mgmt::V2017_10_01::Models::AzureReachabilityReportLatencyInfo
        AzureReachabilityReportItem = Azure::Network::Mgmt::V2017_10_01::Models::AzureReachabilityReportItem
        VirtualNetworkUsage = Azure::Network::Mgmt::V2017_10_01::Models::VirtualNetworkUsage
        VpnClientParameters = Azure::Network::Mgmt::V2017_10_01::Models::VpnClientParameters
        AzureReachabilityReport = Azure::Network::Mgmt::V2017_10_01::Models::AzureReachabilityReport
        AvailableProvidersListParameters = Azure::Network::Mgmt::V2017_10_01::Models::AvailableProvidersListParameters
        TagsObject = Azure::Network::Mgmt::V2017_10_01::Models::TagsObject
        ApplicationGatewayFirewallRule = Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayFirewallRule
        AvailableProvidersListCity = Azure::Network::Mgmt::V2017_10_01::Models::AvailableProvidersListCity
        AvailableProvidersListState = Azure::Network::Mgmt::V2017_10_01::Models::AvailableProvidersListState
        ExpressRouteCircuitArpTable = Azure::Network::Mgmt::V2017_10_01::Models::ExpressRouteCircuitArpTable
        ExpressRouteCircuitStats = Azure::Network::Mgmt::V2017_10_01::Models::ExpressRouteCircuitStats
        AvailableProvidersListCountry = Azure::Network::Mgmt::V2017_10_01::Models::AvailableProvidersListCountry
        AvailableProvidersList = Azure::Network::Mgmt::V2017_10_01::Models::AvailableProvidersList
        LocalNetworkGatewayListResult = Azure::Network::Mgmt::V2017_10_01::Models::LocalNetworkGatewayListResult
        RouteTableListResult = Azure::Network::Mgmt::V2017_10_01::Models::RouteTableListResult
        ConnectionMonitorSource = Azure::Network::Mgmt::V2017_10_01::Models::ConnectionMonitorSource
        ConnectionMonitorDestination = Azure::Network::Mgmt::V2017_10_01::Models::ConnectionMonitorDestination
        ApplicationGatewayFirewallDisabledRuleGroup = Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayFirewallDisabledRuleGroup
        ConnectionMonitorParameters = Azure::Network::Mgmt::V2017_10_01::Models::ConnectionMonitorParameters
        ConnectionMonitor = Azure::Network::Mgmt::V2017_10_01::Models::ConnectionMonitor
        ExpressRouteCircuitRoutesTableSummary = Azure::Network::Mgmt::V2017_10_01::Models::ExpressRouteCircuitRoutesTableSummary
        ApplicationGatewayBackendHealthPool = Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayBackendHealthPool
        ConnectionMonitorResult = Azure::Network::Mgmt::V2017_10_01::Models::ConnectionMonitorResult
        Resource = Azure::Network::Mgmt::V2017_10_01::Models::Resource
        SubnetListResult = Azure::Network::Mgmt::V2017_10_01::Models::SubnetListResult
        TunnelConnectionHealth = Azure::Network::Mgmt::V2017_10_01::Models::TunnelConnectionHealth
        RouteFilterListResult = Azure::Network::Mgmt::V2017_10_01::Models::RouteFilterListResult
        ConnectionMonitorQueryResult = Azure::Network::Mgmt::V2017_10_01::Models::ConnectionMonitorQueryResult
        ConnectionStateSnapshot = Azure::Network::Mgmt::V2017_10_01::Models::ConnectionStateSnapshot
        ConnectionMonitorListResult = Azure::Network::Mgmt::V2017_10_01::Models::ConnectionMonitorListResult
        VpnClientConfiguration = Azure::Network::Mgmt::V2017_10_01::Models::VpnClientConfiguration
        ExpressRouteCircuitPeeringListResult = Azure::Network::Mgmt::V2017_10_01::Models::ExpressRouteCircuitPeeringListResult
        ApplicationGatewayBackendHttpSettings = Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayBackendHttpSettings
        Availability = Azure::Network::Mgmt::V2017_10_01::Models::Availability
        ApplicationGatewayAuthenticationCertificate = Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayAuthenticationCertificate
        DnsNameAvailabilityResult = Azure::Network::Mgmt::V2017_10_01::Models::DnsNameAvailabilityResult
        ApplicationGatewayFrontendIPConfiguration = Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayFrontendIPConfiguration
        EndpointServicesListResult = Azure::Network::Mgmt::V2017_10_01::Models::EndpointServicesListResult
        ApplicationGatewayIPConfiguration = Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayIPConfiguration
        ApplicationGatewayFrontendPort = Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayFrontendPort
        ApplicationGatewaySslCertificate = Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewaySslCertificate
        ApplicationGatewayPathRule = Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayPathRule
        ApplicationGatewayProbe = Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayProbe
        ApplicationGatewayHttpListener = Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayHttpListener
        ApplicationGatewayRedirectConfiguration = Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayRedirectConfiguration
        ApplicationGatewayUrlPathMap = Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayUrlPathMap
        ApplicationGatewayRequestRoutingRule = Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayRequestRoutingRule
        ApplicationGatewayFirewallRuleSet = Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayFirewallRuleSet
        ApplicationGatewayAvailableSslOptions = Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayAvailableSslOptions
        ApplicationGateway = Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGateway
        EndpointServiceResult = Azure::Network::Mgmt::V2017_10_01::Models::EndpointServiceResult
        ExpressRouteCircuitAuthorization = Azure::Network::Mgmt::V2017_10_01::Models::ExpressRouteCircuitAuthorization
        ApplicationGatewaySslPredefinedPolicy = Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewaySslPredefinedPolicy
        ExpressRouteCircuitPeering = Azure::Network::Mgmt::V2017_10_01::Models::ExpressRouteCircuitPeering
        RouteFilter = Azure::Network::Mgmt::V2017_10_01::Models::RouteFilter
        RouteFilterRule = Azure::Network::Mgmt::V2017_10_01::Models::RouteFilterRule
        ExpressRouteServiceProvider = Azure::Network::Mgmt::V2017_10_01::Models::ExpressRouteServiceProvider
        LoadBalancingRule = Azure::Network::Mgmt::V2017_10_01::Models::LoadBalancingRule
        ExpressRouteCircuit = Azure::Network::Mgmt::V2017_10_01::Models::ExpressRouteCircuit
        InboundNatPool = Azure::Network::Mgmt::V2017_10_01::Models::InboundNatPool
        OutboundNatRule = Azure::Network::Mgmt::V2017_10_01::Models::OutboundNatRule
        Probe = Azure::Network::Mgmt::V2017_10_01::Models::Probe
        NetworkWatcher = Azure::Network::Mgmt::V2017_10_01::Models::NetworkWatcher
        PatchRouteFilterRule = Azure::Network::Mgmt::V2017_10_01::Models::PatchRouteFilterRule
        LoadBalancer = Azure::Network::Mgmt::V2017_10_01::Models::LoadBalancer
        BgpServiceCommunity = Azure::Network::Mgmt::V2017_10_01::Models::BgpServiceCommunity
        VirtualNetworkPeering = Azure::Network::Mgmt::V2017_10_01::Models::VirtualNetworkPeering
        PatchRouteFilter = Azure::Network::Mgmt::V2017_10_01::Models::PatchRouteFilter
        VirtualNetworkGatewayIPConfiguration = Azure::Network::Mgmt::V2017_10_01::Models::VirtualNetworkGatewayIPConfiguration
        VpnClientRootCertificate = Azure::Network::Mgmt::V2017_10_01::Models::VpnClientRootCertificate
        VirtualNetwork = Azure::Network::Mgmt::V2017_10_01::Models::VirtualNetwork
        VirtualNetworkGateway = Azure::Network::Mgmt::V2017_10_01::Models::VirtualNetworkGateway
        LocalNetworkGateway = Azure::Network::Mgmt::V2017_10_01::Models::LocalNetworkGateway
        VpnClientRevokedCertificate = Azure::Network::Mgmt::V2017_10_01::Models::VpnClientRevokedCertificate
        VirtualNetworkGatewayConnectionListEntity = Azure::Network::Mgmt::V2017_10_01::Models::VirtualNetworkGatewayConnectionListEntity
        ApplicationGatewayProtocol = Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayProtocol
        VirtualNetworkGatewayConnection = Azure::Network::Mgmt::V2017_10_01::Models::VirtualNetworkGatewayConnection
        ApplicationGatewayBackendHealthServerHealth = Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayBackendHealthServerHealth
        IPVersion = Azure::Network::Mgmt::V2017_10_01::Models::IPVersion
        ApplicationGatewayCookieBasedAffinity = Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayCookieBasedAffinity
        ApplicationGatewaySslProtocol = Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewaySslProtocol
        ApplicationGatewaySkuName = Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewaySkuName
        ApplicationGatewayTier = Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayTier
        ApplicationGatewaySslCipherSuite = Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewaySslCipherSuite
        ApplicationGatewaySslPolicyType = Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewaySslPolicyType
        ApplicationGatewaySslPolicyName = Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewaySslPolicyName
        ApplicationGatewayOperationalState = Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayOperationalState
        ApplicationGatewayRequestRoutingRuleType = Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayRequestRoutingRuleType
        ApplicationGatewayRedirectType = Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayRedirectType
        ExpressRouteCircuitPeeringAdvertisedPublicPrefixState = Azure::Network::Mgmt::V2017_10_01::Models::ExpressRouteCircuitPeeringAdvertisedPublicPrefixState
        ApplicationGatewayFirewallMode = Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayFirewallMode
        AuthorizationUseStatus = Azure::Network::Mgmt::V2017_10_01::Models::AuthorizationUseStatus
        ExpressRouteCircuitPeeringState = Azure::Network::Mgmt::V2017_10_01::Models::ExpressRouteCircuitPeeringState
        Access = Azure::Network::Mgmt::V2017_10_01::Models::Access
        ExpressRouteCircuitPeeringType = Azure::Network::Mgmt::V2017_10_01::Models::ExpressRouteCircuitPeeringType
        ServiceProviderProvisioningState = Azure::Network::Mgmt::V2017_10_01::Models::ServiceProviderProvisioningState
        ExpressRouteCircuitSkuTier = Azure::Network::Mgmt::V2017_10_01::Models::ExpressRouteCircuitSkuTier
        ExpressRouteCircuitSkuFamily = Azure::Network::Mgmt::V2017_10_01::Models::ExpressRouteCircuitSkuFamily
        ProbeProtocol = Azure::Network::Mgmt::V2017_10_01::Models::ProbeProtocol
        LoadBalancerSkuName = Azure::Network::Mgmt::V2017_10_01::Models::LoadBalancerSkuName
        LoadDistribution = Azure::Network::Mgmt::V2017_10_01::Models::LoadDistribution
        EffectiveRouteSource = Azure::Network::Mgmt::V2017_10_01::Models::EffectiveRouteSource
        NetworkOperationStatus = Azure::Network::Mgmt::V2017_10_01::Models::NetworkOperationStatus
        EffectiveSecurityRuleProtocol = Azure::Network::Mgmt::V2017_10_01::Models::EffectiveSecurityRuleProtocol
        AssociationType = Azure::Network::Mgmt::V2017_10_01::Models::AssociationType
        EffectiveRouteState = Azure::Network::Mgmt::V2017_10_01::Models::EffectiveRouteState
        ProvisioningState = Azure::Network::Mgmt::V2017_10_01::Models::ProvisioningState
        PcProtocol = Azure::Network::Mgmt::V2017_10_01::Models::PcProtocol
        Direction = Azure::Network::Mgmt::V2017_10_01::Models::Direction
        NextHopType = Azure::Network::Mgmt::V2017_10_01::Models::NextHopType
        Origin = Azure::Network::Mgmt::V2017_10_01::Models::Origin
        PcStatus = Azure::Network::Mgmt::V2017_10_01::Models::PcStatus
        PcError = Azure::Network::Mgmt::V2017_10_01::Models::PcError
        ConnectionState = Azure::Network::Mgmt::V2017_10_01::Models::ConnectionState
        IssueType = Azure::Network::Mgmt::V2017_10_01::Models::IssueType
        ConnectionStatus = Azure::Network::Mgmt::V2017_10_01::Models::ConnectionStatus
        Protocol = Azure::Network::Mgmt::V2017_10_01::Models::Protocol
        EvaluationState = Azure::Network::Mgmt::V2017_10_01::Models::EvaluationState
        VirtualNetworkPeeringState = Azure::Network::Mgmt::V2017_10_01::Models::VirtualNetworkPeeringState
        VirtualNetworkGatewayType = Azure::Network::Mgmt::V2017_10_01::Models::VirtualNetworkGatewayType
        VpnType = Azure::Network::Mgmt::V2017_10_01::Models::VpnType
        Severity = Azure::Network::Mgmt::V2017_10_01::Models::Severity
        VirtualNetworkGatewaySkuTier = Azure::Network::Mgmt::V2017_10_01::Models::VirtualNetworkGatewaySkuTier
        VpnClientProtocol = Azure::Network::Mgmt::V2017_10_01::Models::VpnClientProtocol
        BgpPeerState = Azure::Network::Mgmt::V2017_10_01::Models::BgpPeerState
        VirtualNetworkGatewaySkuName = Azure::Network::Mgmt::V2017_10_01::Models::VirtualNetworkGatewaySkuName
        AuthenticationMethod = Azure::Network::Mgmt::V2017_10_01::Models::AuthenticationMethod
        VirtualNetworkGatewayConnectionStatus = Azure::Network::Mgmt::V2017_10_01::Models::VirtualNetworkGatewayConnectionStatus
        VirtualNetworkGatewayConnectionType = Azure::Network::Mgmt::V2017_10_01::Models::VirtualNetworkGatewayConnectionType
        ProcessorArchitecture = Azure::Network::Mgmt::V2017_10_01::Models::ProcessorArchitecture
        IpsecIntegrity = Azure::Network::Mgmt::V2017_10_01::Models::IpsecIntegrity
        IkeEncryption = Azure::Network::Mgmt::V2017_10_01::Models::IkeEncryption
        IkeIntegrity = Azure::Network::Mgmt::V2017_10_01::Models::IkeIntegrity
        IpsecEncryption = Azure::Network::Mgmt::V2017_10_01::Models::IpsecEncryption
        PfsGroup = Azure::Network::Mgmt::V2017_10_01::Models::PfsGroup
        DhGroup = Azure::Network::Mgmt::V2017_10_01::Models::DhGroup
      end

      class NetworkManagementClass
        attr_reader :security_rules, :default_security_rules, :network_watchers, :packet_captures, :connection_monitors, :route_filters, :route_filter_rules, :route_tables, :routes, :bgp_service_communities, :usages, :virtual_networks, :subnets, :virtual_network_peerings, :virtual_network_gateways, :network_interfaces, :public_ipaddresses, :local_network_gateways, :virtual_network_gateway_connections, :operations, :application_gateways, :application_security_groups, :available_endpoint_services, :express_route_circuit_authorizations, :express_route_circuit_peerings, :express_route_circuits, :express_route_service_providers, :load_balancers, :load_balancer_backend_address_pools, :load_balancer_frontend_ipconfigurations, :inbound_nat_rules, :load_balancer_load_balancing_rules, :load_balancer_network_interfaces, :load_balancer_probes, :network_interface_ipconfigurations, :network_interface_load_balancers, :network_security_groups, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Network::Mgmt::V2017_03_30::NetworkManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)

          @client_1 = Azure::Network::Mgmt::V2017_10_01::NetworkManagementClient.new(configurable.credentials, base_url, options)
          if(@client_1.respond_to?(:subscription_id))
            @client_1.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_1)
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

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/V2018_03_01/Network/Mgmt"
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
          def ip_tag
            Azure::Network::Mgmt::V2017_03_30::Models::IpTag
          end
          def endpoint_service
            Azure::Network::Mgmt::V2017_03_30::Models::EndpointService
          end
          def delegation
            Azure::Network::Mgmt::V2017_03_30::Models::Delegation
          end
          def interface_endpoint
            Azure::Network::Mgmt::V2017_03_30::Models::InterfaceEndpoint
          end
          def network_interface_tap_configuration
            Azure::Network::Mgmt::V2017_03_30::Models::NetworkInterfaceTapConfiguration
          end
          def virtual_network_tap
            Azure::Network::Mgmt::V2017_03_30::Models::VirtualNetworkTap
          end
          def service_association_link
            Azure::Network::Mgmt::V2017_03_30::Models::ServiceAssociationLink
          end
          def service_endpoint_policy
            Azure::Network::Mgmt::V2017_03_30::Models::ServiceEndpointPolicy
          end
          def service_endpoint_policy_definition
            Azure::Network::Mgmt::V2017_03_30::Models::ServiceEndpointPolicyDefinition
          end
          def ipconfiguration_profile
            Azure::Network::Mgmt::V2017_03_30::Models::IPConfigurationProfile
          end
          def application_gateway_backend_address
            Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayBackendAddress
          end
          def public_ipaddress_sku
            Azure::Network::Mgmt::V2017_10_01::Models::PublicIPAddressSku
          end
          def public_ipaddress_list_result
            Azure::Network::Mgmt::V2017_10_01::Models::PublicIPAddressListResult
          end
          def public_ipaddress_dns_settings
            Azure::Network::Mgmt::V2017_10_01::Models::PublicIPAddressDnsSettings
          end
          def network_interface_list_result
            Azure::Network::Mgmt::V2017_10_01::Models::NetworkInterfaceListResult
          end
          def network_interface_dns_settings
            Azure::Network::Mgmt::V2017_10_01::Models::NetworkInterfaceDnsSettings
          end
          def network_interface_ipconfiguration_list_result
            Azure::Network::Mgmt::V2017_10_01::Models::NetworkInterfaceIPConfigurationListResult
          end
          def service_endpoint_properties_format
            Azure::Network::Mgmt::V2017_10_01::Models::ServiceEndpointPropertiesFormat
          end
          def application_security_group
            Azure::Network::Mgmt::V2017_10_01::Models::ApplicationSecurityGroup
          end
          def resource_navigation_link
            Azure::Network::Mgmt::V2017_10_01::Models::ResourceNavigationLink
          end
          def security_rule
            Azure::Network::Mgmt::V2017_10_01::Models::SecurityRule
          end
          def operation_display
            Azure::Network::Mgmt::V2017_10_01::Models::OperationDisplay
          end
          def ipconfiguration
            Azure::Network::Mgmt::V2017_10_01::Models::IPConfiguration
          end
          def operation
            Azure::Network::Mgmt::V2017_10_01::Models::Operation
          end
          def public_ipaddress
            Azure::Network::Mgmt::V2017_10_01::Models::PublicIPAddress
          end
          def operation_list_result
            Azure::Network::Mgmt::V2017_10_01::Models::OperationListResult
          end
          def application_gateway_backend_address_pool
            Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayBackendAddressPool
          end
          def backend_address_pool
            Azure::Network::Mgmt::V2017_10_01::Models::BackendAddressPool
          end
          def inbound_nat_rule
            Azure::Network::Mgmt::V2017_10_01::Models::InboundNatRule
          end
          def network_interface_ipconfiguration
            Azure::Network::Mgmt::V2017_10_01::Models::NetworkInterfaceIPConfiguration
          end
          def network_interface
            Azure::Network::Mgmt::V2017_10_01::Models::NetworkInterface
          end
          def network_security_group
            Azure::Network::Mgmt::V2017_10_01::Models::NetworkSecurityGroup
          end
          def route
            Azure::Network::Mgmt::V2017_10_01::Models::Route
          end
          def route_table
            Azure::Network::Mgmt::V2017_10_01::Models::RouteTable
          end
          def log_specification
            Azure::Network::Mgmt::V2017_10_01::Models::LogSpecification
          end
          def subnet
            Azure::Network::Mgmt::V2017_10_01::Models::Subnet
          end
          def security_rule_protocol
            Azure::Network::Mgmt::V2017_10_01::Models::SecurityRuleProtocol
          end
          def frontend_ipconfiguration
            Azure::Network::Mgmt::V2017_10_01::Models::FrontendIPConfiguration
          end
          def security_rule_access
            Azure::Network::Mgmt::V2017_10_01::Models::SecurityRuleAccess
          end
          def ipallocation_method
            Azure::Network::Mgmt::V2017_10_01::Models::IPAllocationMethod
          end
          def public_ipaddress_sku_name
            Azure::Network::Mgmt::V2017_10_01::Models::PublicIPAddressSkuName
          end
          def transport_protocol
            Azure::Network::Mgmt::V2017_10_01::Models::TransportProtocol
          end
          def route_next_hop_type
            Azure::Network::Mgmt::V2017_10_01::Models::RouteNextHopType
          end
          def security_rule_direction
            Azure::Network::Mgmt::V2017_10_01::Models::SecurityRuleDirection
          end
          def error
            Azure::Network::Mgmt::V2017_10_01::Models::Error
          end
          def topology_association
            Azure::Network::Mgmt::V2017_10_01::Models::TopologyAssociation
          end
          def topology_resource
            Azure::Network::Mgmt::V2017_10_01::Models::TopologyResource
          end
          def operation_properties_format_service_specification
            Azure::Network::Mgmt::V2017_10_01::Models::OperationPropertiesFormatServiceSpecification
          end
          def virtual_network_connection_gateway_reference
            Azure::Network::Mgmt::V2017_10_01::Models::VirtualNetworkConnectionGatewayReference
          end
          def load_balancer_list_result
            Azure::Network::Mgmt::V2017_10_01::Models::LoadBalancerListResult
          end
          def connection_shared_key
            Azure::Network::Mgmt::V2017_10_01::Models::ConnectionSharedKey
          end
          def inbound_nat_rule_list_result
            Azure::Network::Mgmt::V2017_10_01::Models::InboundNatRuleListResult
          end
          def load_balancer_backend_address_pool_list_result
            Azure::Network::Mgmt::V2017_10_01::Models::LoadBalancerBackendAddressPoolListResult
          end
          def connection_reset_shared_key
            Azure::Network::Mgmt::V2017_10_01::Models::ConnectionResetSharedKey
          end
          def load_balancer_frontend_ipconfiguration_list_result
            Azure::Network::Mgmt::V2017_10_01::Models::LoadBalancerFrontendIPConfigurationListResult
          end
          def ipsec_policy
            Azure::Network::Mgmt::V2017_10_01::Models::IpsecPolicy
          end
          def load_balancer_load_balancing_rule_list_result
            Azure::Network::Mgmt::V2017_10_01::Models::LoadBalancerLoadBalancingRuleListResult
          end
          def gateway_route_list_result
            Azure::Network::Mgmt::V2017_10_01::Models::GatewayRouteListResult
          end
          def load_balancer_probe_list_result
            Azure::Network::Mgmt::V2017_10_01::Models::LoadBalancerProbeListResult
          end
          def bgp_peer_status_list_result
            Azure::Network::Mgmt::V2017_10_01::Models::BgpPeerStatusListResult
          end
          def virtual_network_gateway_list_result
            Azure::Network::Mgmt::V2017_10_01::Models::VirtualNetworkGatewayListResult
          end
          def error_details
            Azure::Network::Mgmt::V2017_10_01::Models::ErrorDetails
          end
          def application_gateway_backend_health_http_settings
            Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayBackendHealthHttpSettings
          end
          def application_gateway_backend_health
            Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayBackendHealth
          end
          def azure_async_operation_result
            Azure::Network::Mgmt::V2017_10_01::Models::AzureAsyncOperationResult
          end
          def application_gateway_ssl_policy
            Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewaySslPolicy
          end
          def gateway_route
            Azure::Network::Mgmt::V2017_10_01::Models::GatewayRoute
          end
          def sub_resource
            Azure::Network::Mgmt::V2017_10_01::Models::SubResource
          end
          def network_interface_load_balancer_list_result
            Azure::Network::Mgmt::V2017_10_01::Models::NetworkInterfaceLoadBalancerListResult
          end
          def bgp_settings
            Azure::Network::Mgmt::V2017_10_01::Models::BgpSettings
          end
          def virtual_network_gateway_sku
            Azure::Network::Mgmt::V2017_10_01::Models::VirtualNetworkGatewaySku
          end
          def effective_network_security_rule
            Azure::Network::Mgmt::V2017_10_01::Models::EffectiveNetworkSecurityRule
          end
          def application_gateway_probe_health_response_match
            Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayProbeHealthResponseMatch
          end
          def effective_network_security_group
            Azure::Network::Mgmt::V2017_10_01::Models::EffectiveNetworkSecurityGroup
          end
          def virtual_network_usage_name
            Azure::Network::Mgmt::V2017_10_01::Models::VirtualNetworkUsageName
          end
          def effective_network_security_group_association
            Azure::Network::Mgmt::V2017_10_01::Models::EffectiveNetworkSecurityGroupAssociation
          end
          def effective_network_security_group_list_result
            Azure::Network::Mgmt::V2017_10_01::Models::EffectiveNetworkSecurityGroupListResult
          end
          def virtual_network_list_result
            Azure::Network::Mgmt::V2017_10_01::Models::VirtualNetworkListResult
          end
          def application_gateway_web_application_firewall_configuration
            Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayWebApplicationFirewallConfiguration
          end
          def effective_route_list_result
            Azure::Network::Mgmt::V2017_10_01::Models::EffectiveRouteListResult
          end
          def application_gateway_list_result
            Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayListResult
          end
          def security_rule_list_result
            Azure::Network::Mgmt::V2017_10_01::Models::SecurityRuleListResult
          end
          def application_gateway_firewall_rule_group
            Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayFirewallRuleGroup
          end
          def effective_route
            Azure::Network::Mgmt::V2017_10_01::Models::EffectiveRoute
          end
          def application_gateway_available_waf_rule_sets_result
            Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayAvailableWafRuleSetsResult
          end
          def usage
            Azure::Network::Mgmt::V2017_10_01::Models::Usage
          end
          def network_security_group_list_result
            Azure::Network::Mgmt::V2017_10_01::Models::NetworkSecurityGroupListResult
          end
          def network_watcher_list_result
            Azure::Network::Mgmt::V2017_10_01::Models::NetworkWatcherListResult
          end
          def address_space
            Azure::Network::Mgmt::V2017_10_01::Models::AddressSpace
          end
          def application_security_group_list_result
            Azure::Network::Mgmt::V2017_10_01::Models::ApplicationSecurityGroupListResult
          end
          def topology_parameters
            Azure::Network::Mgmt::V2017_10_01::Models::TopologyParameters
          end
          def dimension
            Azure::Network::Mgmt::V2017_10_01::Models::Dimension
          end
          def metric_specification
            Azure::Network::Mgmt::V2017_10_01::Models::MetricSpecification
          end
          def authorization_list_result
            Azure::Network::Mgmt::V2017_10_01::Models::AuthorizationListResult
          end
          def topology
            Azure::Network::Mgmt::V2017_10_01::Models::Topology
          end
          def verification_ipflow_parameters
            Azure::Network::Mgmt::V2017_10_01::Models::VerificationIPFlowParameters
          end
          def bgp_service_community_list_result
            Azure::Network::Mgmt::V2017_10_01::Models::BgpServiceCommunityListResult
          end
          def verification_ipflow_result
            Azure::Network::Mgmt::V2017_10_01::Models::VerificationIPFlowResult
          end
          def ipv6_express_route_circuit_peering_config
            Azure::Network::Mgmt::V2017_10_01::Models::Ipv6ExpressRouteCircuitPeeringConfig
          end
          def next_hop_parameters
            Azure::Network::Mgmt::V2017_10_01::Models::NextHopParameters
          end
          def express_route_circuit_sku
            Azure::Network::Mgmt::V2017_10_01::Models::ExpressRouteCircuitSku
          end
          def next_hop_result
            Azure::Network::Mgmt::V2017_10_01::Models::NextHopResult
          end
          def route_list_result
            Azure::Network::Mgmt::V2017_10_01::Models::RouteListResult
          end
          def security_group_view_parameters
            Azure::Network::Mgmt::V2017_10_01::Models::SecurityGroupViewParameters
          end
          def express_route_circuits_arp_table_list_result
            Azure::Network::Mgmt::V2017_10_01::Models::ExpressRouteCircuitsArpTableListResult
          end
          def network_interface_association
            Azure::Network::Mgmt::V2017_10_01::Models::NetworkInterfaceAssociation
          end
          def express_route_circuits_routes_table_list_result
            Azure::Network::Mgmt::V2017_10_01::Models::ExpressRouteCircuitsRoutesTableListResult
          end
          def subnet_association
            Azure::Network::Mgmt::V2017_10_01::Models::SubnetAssociation
          end
          def express_route_circuits_routes_table_summary_list_result
            Azure::Network::Mgmt::V2017_10_01::Models::ExpressRouteCircuitsRoutesTableSummaryListResult
          end
          def security_rule_associations
            Azure::Network::Mgmt::V2017_10_01::Models::SecurityRuleAssociations
          end
          def express_route_service_provider_bandwidths_offered
            Azure::Network::Mgmt::V2017_10_01::Models::ExpressRouteServiceProviderBandwidthsOffered
          end
          def security_group_network_interface
            Azure::Network::Mgmt::V2017_10_01::Models::SecurityGroupNetworkInterface
          end
          def express_route_service_provider_list_result
            Azure::Network::Mgmt::V2017_10_01::Models::ExpressRouteServiceProviderListResult
          end
          def security_group_view_result
            Azure::Network::Mgmt::V2017_10_01::Models::SecurityGroupViewResult
          end
          def route_filter_rule_list_result
            Azure::Network::Mgmt::V2017_10_01::Models::RouteFilterRuleListResult
          end
          def packet_capture_storage_location
            Azure::Network::Mgmt::V2017_10_01::Models::PacketCaptureStorageLocation
          end
          def packet_capture_filter
            Azure::Network::Mgmt::V2017_10_01::Models::PacketCaptureFilter
          end
          def virtual_network_gateway_list_connections_result
            Azure::Network::Mgmt::V2017_10_01::Models::VirtualNetworkGatewayListConnectionsResult
          end
          def packet_capture_parameters
            Azure::Network::Mgmt::V2017_10_01::Models::PacketCaptureParameters
          end
          def packet_capture
            Azure::Network::Mgmt::V2017_10_01::Models::PacketCapture
          end
          def virtual_network_gateway_connection_list_result
            Azure::Network::Mgmt::V2017_10_01::Models::VirtualNetworkGatewayConnectionListResult
          end
          def packet_capture_result
            Azure::Network::Mgmt::V2017_10_01::Models::PacketCaptureResult
          end
          def packet_capture_list_result
            Azure::Network::Mgmt::V2017_10_01::Models::PacketCaptureListResult
          end
          def application_gateway_backend_health_server
            Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayBackendHealthServer
          end
          def packet_capture_query_status_result
            Azure::Network::Mgmt::V2017_10_01::Models::PacketCaptureQueryStatusResult
          end
          def application_gateway_sku
            Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewaySku
          end
          def troubleshooting_parameters
            Azure::Network::Mgmt::V2017_10_01::Models::TroubleshootingParameters
          end
          def bgp_peer_status
            Azure::Network::Mgmt::V2017_10_01::Models::BgpPeerStatus
          end
          def query_troubleshooting_parameters
            Azure::Network::Mgmt::V2017_10_01::Models::QueryTroubleshootingParameters
          end
          def virtual_network_list_usage_result
            Azure::Network::Mgmt::V2017_10_01::Models::VirtualNetworkListUsageResult
          end
          def troubleshooting_recommended_actions
            Azure::Network::Mgmt::V2017_10_01::Models::TroubleshootingRecommendedActions
          end
          def ipaddress_availability_result
            Azure::Network::Mgmt::V2017_10_01::Models::IPAddressAvailabilityResult
          end
          def troubleshooting_details
            Azure::Network::Mgmt::V2017_10_01::Models::TroubleshootingDetails
          end
          def dhcp_options
            Azure::Network::Mgmt::V2017_10_01::Models::DhcpOptions
          end
          def troubleshooting_result
            Azure::Network::Mgmt::V2017_10_01::Models::TroubleshootingResult
          end
          def virtual_network_peering_list_result
            Azure::Network::Mgmt::V2017_10_01::Models::VirtualNetworkPeeringListResult
          end
          def retention_policy_parameters
            Azure::Network::Mgmt::V2017_10_01::Models::RetentionPolicyParameters
          end
          def application_gateway_available_ssl_predefined_policies
            Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayAvailableSslPredefinedPolicies
          end
          def flow_log_status_parameters
            Azure::Network::Mgmt::V2017_10_01::Models::FlowLogStatusParameters
          end
          def usages_list_result
            Azure::Network::Mgmt::V2017_10_01::Models::UsagesListResult
          end
          def flow_log_information
            Azure::Network::Mgmt::V2017_10_01::Models::FlowLogInformation
          end
          def express_route_circuit_peering_config
            Azure::Network::Mgmt::V2017_10_01::Models::ExpressRouteCircuitPeeringConfig
          end
          def connectivity_source
            Azure::Network::Mgmt::V2017_10_01::Models::ConnectivitySource
          end
          def bgpcommunity
            Azure::Network::Mgmt::V2017_10_01::Models::BGPCommunity
          end
          def connectivity_destination
            Azure::Network::Mgmt::V2017_10_01::Models::ConnectivityDestination
          end
          def express_route_circuit_service_provider_properties
            Azure::Network::Mgmt::V2017_10_01::Models::ExpressRouteCircuitServiceProviderProperties
          end
          def connectivity_parameters
            Azure::Network::Mgmt::V2017_10_01::Models::ConnectivityParameters
          end
          def express_route_circuit_routes_table
            Azure::Network::Mgmt::V2017_10_01::Models::ExpressRouteCircuitRoutesTable
          end
          def connectivity_issue
            Azure::Network::Mgmt::V2017_10_01::Models::ConnectivityIssue
          end
          def express_route_circuit_list_result
            Azure::Network::Mgmt::V2017_10_01::Models::ExpressRouteCircuitListResult
          end
          def connectivity_hop
            Azure::Network::Mgmt::V2017_10_01::Models::ConnectivityHop
          end
          def load_balancer_sku
            Azure::Network::Mgmt::V2017_10_01::Models::LoadBalancerSku
          end
          def connectivity_information
            Azure::Network::Mgmt::V2017_10_01::Models::ConnectivityInformation
          end
          def vpn_device_script_parameters
            Azure::Network::Mgmt::V2017_10_01::Models::VpnDeviceScriptParameters
          end
          def azure_reachability_report_location
            Azure::Network::Mgmt::V2017_10_01::Models::AzureReachabilityReportLocation
          end
          def azure_reachability_report_parameters
            Azure::Network::Mgmt::V2017_10_01::Models::AzureReachabilityReportParameters
          end
          def application_gateway_connection_draining
            Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayConnectionDraining
          end
          def usage_name
            Azure::Network::Mgmt::V2017_10_01::Models::UsageName
          end
          def azure_reachability_report_latency_info
            Azure::Network::Mgmt::V2017_10_01::Models::AzureReachabilityReportLatencyInfo
          end
          def azure_reachability_report_item
            Azure::Network::Mgmt::V2017_10_01::Models::AzureReachabilityReportItem
          end
          def virtual_network_usage
            Azure::Network::Mgmt::V2017_10_01::Models::VirtualNetworkUsage
          end
          def vpn_client_parameters
            Azure::Network::Mgmt::V2017_10_01::Models::VpnClientParameters
          end
          def azure_reachability_report
            Azure::Network::Mgmt::V2017_10_01::Models::AzureReachabilityReport
          end
          def available_providers_list_parameters
            Azure::Network::Mgmt::V2017_10_01::Models::AvailableProvidersListParameters
          end
          def tags_object
            Azure::Network::Mgmt::V2017_10_01::Models::TagsObject
          end
          def application_gateway_firewall_rule
            Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayFirewallRule
          end
          def available_providers_list_city
            Azure::Network::Mgmt::V2017_10_01::Models::AvailableProvidersListCity
          end
          def available_providers_list_state
            Azure::Network::Mgmt::V2017_10_01::Models::AvailableProvidersListState
          end
          def express_route_circuit_arp_table
            Azure::Network::Mgmt::V2017_10_01::Models::ExpressRouteCircuitArpTable
          end
          def express_route_circuit_stats
            Azure::Network::Mgmt::V2017_10_01::Models::ExpressRouteCircuitStats
          end
          def available_providers_list_country
            Azure::Network::Mgmt::V2017_10_01::Models::AvailableProvidersListCountry
          end
          def available_providers_list
            Azure::Network::Mgmt::V2017_10_01::Models::AvailableProvidersList
          end
          def local_network_gateway_list_result
            Azure::Network::Mgmt::V2017_10_01::Models::LocalNetworkGatewayListResult
          end
          def route_table_list_result
            Azure::Network::Mgmt::V2017_10_01::Models::RouteTableListResult
          end
          def connection_monitor_source
            Azure::Network::Mgmt::V2017_10_01::Models::ConnectionMonitorSource
          end
          def connection_monitor_destination
            Azure::Network::Mgmt::V2017_10_01::Models::ConnectionMonitorDestination
          end
          def application_gateway_firewall_disabled_rule_group
            Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayFirewallDisabledRuleGroup
          end
          def connection_monitor_parameters
            Azure::Network::Mgmt::V2017_10_01::Models::ConnectionMonitorParameters
          end
          def connection_monitor
            Azure::Network::Mgmt::V2017_10_01::Models::ConnectionMonitor
          end
          def express_route_circuit_routes_table_summary
            Azure::Network::Mgmt::V2017_10_01::Models::ExpressRouteCircuitRoutesTableSummary
          end
          def application_gateway_backend_health_pool
            Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayBackendHealthPool
          end
          def connection_monitor_result
            Azure::Network::Mgmt::V2017_10_01::Models::ConnectionMonitorResult
          end
          def resource
            Azure::Network::Mgmt::V2017_10_01::Models::Resource
          end
          def subnet_list_result
            Azure::Network::Mgmt::V2017_10_01::Models::SubnetListResult
          end
          def tunnel_connection_health
            Azure::Network::Mgmt::V2017_10_01::Models::TunnelConnectionHealth
          end
          def route_filter_list_result
            Azure::Network::Mgmt::V2017_10_01::Models::RouteFilterListResult
          end
          def connection_monitor_query_result
            Azure::Network::Mgmt::V2017_10_01::Models::ConnectionMonitorQueryResult
          end
          def connection_state_snapshot
            Azure::Network::Mgmt::V2017_10_01::Models::ConnectionStateSnapshot
          end
          def connection_monitor_list_result
            Azure::Network::Mgmt::V2017_10_01::Models::ConnectionMonitorListResult
          end
          def vpn_client_configuration
            Azure::Network::Mgmt::V2017_10_01::Models::VpnClientConfiguration
          end
          def express_route_circuit_peering_list_result
            Azure::Network::Mgmt::V2017_10_01::Models::ExpressRouteCircuitPeeringListResult
          end
          def application_gateway_backend_http_settings
            Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayBackendHttpSettings
          end
          def availability
            Azure::Network::Mgmt::V2017_10_01::Models::Availability
          end
          def application_gateway_authentication_certificate
            Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayAuthenticationCertificate
          end
          def dns_name_availability_result
            Azure::Network::Mgmt::V2017_10_01::Models::DnsNameAvailabilityResult
          end
          def application_gateway_frontend_ipconfiguration
            Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayFrontendIPConfiguration
          end
          def endpoint_services_list_result
            Azure::Network::Mgmt::V2017_10_01::Models::EndpointServicesListResult
          end
          def application_gateway_ipconfiguration
            Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayIPConfiguration
          end
          def application_gateway_frontend_port
            Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayFrontendPort
          end
          def application_gateway_ssl_certificate
            Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewaySslCertificate
          end
          def application_gateway_path_rule
            Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayPathRule
          end
          def application_gateway_probe
            Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayProbe
          end
          def application_gateway_http_listener
            Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayHttpListener
          end
          def application_gateway_redirect_configuration
            Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayRedirectConfiguration
          end
          def application_gateway_url_path_map
            Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayUrlPathMap
          end
          def application_gateway_request_routing_rule
            Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayRequestRoutingRule
          end
          def application_gateway_firewall_rule_set
            Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayFirewallRuleSet
          end
          def application_gateway_available_ssl_options
            Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayAvailableSslOptions
          end
          def application_gateway
            Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGateway
          end
          def endpoint_service_result
            Azure::Network::Mgmt::V2017_10_01::Models::EndpointServiceResult
          end
          def express_route_circuit_authorization
            Azure::Network::Mgmt::V2017_10_01::Models::ExpressRouteCircuitAuthorization
          end
          def application_gateway_ssl_predefined_policy
            Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewaySslPredefinedPolicy
          end
          def express_route_circuit_peering
            Azure::Network::Mgmt::V2017_10_01::Models::ExpressRouteCircuitPeering
          end
          def route_filter
            Azure::Network::Mgmt::V2017_10_01::Models::RouteFilter
          end
          def route_filter_rule
            Azure::Network::Mgmt::V2017_10_01::Models::RouteFilterRule
          end
          def express_route_service_provider
            Azure::Network::Mgmt::V2017_10_01::Models::ExpressRouteServiceProvider
          end
          def load_balancing_rule
            Azure::Network::Mgmt::V2017_10_01::Models::LoadBalancingRule
          end
          def express_route_circuit
            Azure::Network::Mgmt::V2017_10_01::Models::ExpressRouteCircuit
          end
          def inbound_nat_pool
            Azure::Network::Mgmt::V2017_10_01::Models::InboundNatPool
          end
          def outbound_nat_rule
            Azure::Network::Mgmt::V2017_10_01::Models::OutboundNatRule
          end
          def probe
            Azure::Network::Mgmt::V2017_10_01::Models::Probe
          end
          def network_watcher
            Azure::Network::Mgmt::V2017_10_01::Models::NetworkWatcher
          end
          def patch_route_filter_rule
            Azure::Network::Mgmt::V2017_10_01::Models::PatchRouteFilterRule
          end
          def load_balancer
            Azure::Network::Mgmt::V2017_10_01::Models::LoadBalancer
          end
          def bgp_service_community
            Azure::Network::Mgmt::V2017_10_01::Models::BgpServiceCommunity
          end
          def virtual_network_peering
            Azure::Network::Mgmt::V2017_10_01::Models::VirtualNetworkPeering
          end
          def patch_route_filter
            Azure::Network::Mgmt::V2017_10_01::Models::PatchRouteFilter
          end
          def virtual_network_gateway_ipconfiguration
            Azure::Network::Mgmt::V2017_10_01::Models::VirtualNetworkGatewayIPConfiguration
          end
          def vpn_client_root_certificate
            Azure::Network::Mgmt::V2017_10_01::Models::VpnClientRootCertificate
          end
          def virtual_network
            Azure::Network::Mgmt::V2017_10_01::Models::VirtualNetwork
          end
          def virtual_network_gateway
            Azure::Network::Mgmt::V2017_10_01::Models::VirtualNetworkGateway
          end
          def local_network_gateway
            Azure::Network::Mgmt::V2017_10_01::Models::LocalNetworkGateway
          end
          def vpn_client_revoked_certificate
            Azure::Network::Mgmt::V2017_10_01::Models::VpnClientRevokedCertificate
          end
          def virtual_network_gateway_connection_list_entity
            Azure::Network::Mgmt::V2017_10_01::Models::VirtualNetworkGatewayConnectionListEntity
          end
          def application_gateway_protocol
            Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayProtocol
          end
          def virtual_network_gateway_connection
            Azure::Network::Mgmt::V2017_10_01::Models::VirtualNetworkGatewayConnection
          end
          def application_gateway_backend_health_server_health
            Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayBackendHealthServerHealth
          end
          def ipversion
            Azure::Network::Mgmt::V2017_10_01::Models::IPVersion
          end
          def application_gateway_cookie_based_affinity
            Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayCookieBasedAffinity
          end
          def application_gateway_ssl_protocol
            Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewaySslProtocol
          end
          def application_gateway_sku_name
            Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewaySkuName
          end
          def application_gateway_tier
            Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayTier
          end
          def application_gateway_ssl_cipher_suite
            Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewaySslCipherSuite
          end
          def application_gateway_ssl_policy_type
            Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewaySslPolicyType
          end
          def application_gateway_ssl_policy_name
            Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewaySslPolicyName
          end
          def application_gateway_operational_state
            Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayOperationalState
          end
          def application_gateway_request_routing_rule_type
            Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayRequestRoutingRuleType
          end
          def application_gateway_redirect_type
            Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayRedirectType
          end
          def express_route_circuit_peering_advertised_public_prefix_state
            Azure::Network::Mgmt::V2017_10_01::Models::ExpressRouteCircuitPeeringAdvertisedPublicPrefixState
          end
          def application_gateway_firewall_mode
            Azure::Network::Mgmt::V2017_10_01::Models::ApplicationGatewayFirewallMode
          end
          def authorization_use_status
            Azure::Network::Mgmt::V2017_10_01::Models::AuthorizationUseStatus
          end
          def express_route_circuit_peering_state
            Azure::Network::Mgmt::V2017_10_01::Models::ExpressRouteCircuitPeeringState
          end
          def access
            Azure::Network::Mgmt::V2017_10_01::Models::Access
          end
          def express_route_circuit_peering_type
            Azure::Network::Mgmt::V2017_10_01::Models::ExpressRouteCircuitPeeringType
          end
          def service_provider_provisioning_state
            Azure::Network::Mgmt::V2017_10_01::Models::ServiceProviderProvisioningState
          end
          def express_route_circuit_sku_tier
            Azure::Network::Mgmt::V2017_10_01::Models::ExpressRouteCircuitSkuTier
          end
          def express_route_circuit_sku_family
            Azure::Network::Mgmt::V2017_10_01::Models::ExpressRouteCircuitSkuFamily
          end
          def probe_protocol
            Azure::Network::Mgmt::V2017_10_01::Models::ProbeProtocol
          end
          def load_balancer_sku_name
            Azure::Network::Mgmt::V2017_10_01::Models::LoadBalancerSkuName
          end
          def load_distribution
            Azure::Network::Mgmt::V2017_10_01::Models::LoadDistribution
          end
          def effective_route_source
            Azure::Network::Mgmt::V2017_10_01::Models::EffectiveRouteSource
          end
          def network_operation_status
            Azure::Network::Mgmt::V2017_10_01::Models::NetworkOperationStatus
          end
          def effective_security_rule_protocol
            Azure::Network::Mgmt::V2017_10_01::Models::EffectiveSecurityRuleProtocol
          end
          def association_type
            Azure::Network::Mgmt::V2017_10_01::Models::AssociationType
          end
          def effective_route_state
            Azure::Network::Mgmt::V2017_10_01::Models::EffectiveRouteState
          end
          def provisioning_state
            Azure::Network::Mgmt::V2017_10_01::Models::ProvisioningState
          end
          def pc_protocol
            Azure::Network::Mgmt::V2017_10_01::Models::PcProtocol
          end
          def direction
            Azure::Network::Mgmt::V2017_10_01::Models::Direction
          end
          def next_hop_type
            Azure::Network::Mgmt::V2017_10_01::Models::NextHopType
          end
          def origin
            Azure::Network::Mgmt::V2017_10_01::Models::Origin
          end
          def pc_status
            Azure::Network::Mgmt::V2017_10_01::Models::PcStatus
          end
          def pc_error
            Azure::Network::Mgmt::V2017_10_01::Models::PcError
          end
          def connection_state
            Azure::Network::Mgmt::V2017_10_01::Models::ConnectionState
          end
          def issue_type
            Azure::Network::Mgmt::V2017_10_01::Models::IssueType
          end
          def connection_status
            Azure::Network::Mgmt::V2017_10_01::Models::ConnectionStatus
          end
          def protocol
            Azure::Network::Mgmt::V2017_10_01::Models::Protocol
          end
          def evaluation_state
            Azure::Network::Mgmt::V2017_10_01::Models::EvaluationState
          end
          def virtual_network_peering_state
            Azure::Network::Mgmt::V2017_10_01::Models::VirtualNetworkPeeringState
          end
          def virtual_network_gateway_type
            Azure::Network::Mgmt::V2017_10_01::Models::VirtualNetworkGatewayType
          end
          def vpn_type
            Azure::Network::Mgmt::V2017_10_01::Models::VpnType
          end
          def severity
            Azure::Network::Mgmt::V2017_10_01::Models::Severity
          end
          def virtual_network_gateway_sku_tier
            Azure::Network::Mgmt::V2017_10_01::Models::VirtualNetworkGatewaySkuTier
          end
          def vpn_client_protocol
            Azure::Network::Mgmt::V2017_10_01::Models::VpnClientProtocol
          end
          def bgp_peer_state
            Azure::Network::Mgmt::V2017_10_01::Models::BgpPeerState
          end
          def virtual_network_gateway_sku_name
            Azure::Network::Mgmt::V2017_10_01::Models::VirtualNetworkGatewaySkuName
          end
          def authentication_method
            Azure::Network::Mgmt::V2017_10_01::Models::AuthenticationMethod
          end
          def virtual_network_gateway_connection_status
            Azure::Network::Mgmt::V2017_10_01::Models::VirtualNetworkGatewayConnectionStatus
          end
          def virtual_network_gateway_connection_type
            Azure::Network::Mgmt::V2017_10_01::Models::VirtualNetworkGatewayConnectionType
          end
          def processor_architecture
            Azure::Network::Mgmt::V2017_10_01::Models::ProcessorArchitecture
          end
          def ipsec_integrity
            Azure::Network::Mgmt::V2017_10_01::Models::IpsecIntegrity
          end
          def ike_encryption
            Azure::Network::Mgmt::V2017_10_01::Models::IkeEncryption
          end
          def ike_integrity
            Azure::Network::Mgmt::V2017_10_01::Models::IkeIntegrity
          end
          def ipsec_encryption
            Azure::Network::Mgmt::V2017_10_01::Models::IpsecEncryption
          end
          def pfs_group
            Azure::Network::Mgmt::V2017_10_01::Models::PfsGroup
          end
          def dh_group
            Azure::Network::Mgmt::V2017_10_01::Models::DhGroup
          end
        end
      end
    end
  end
end
