# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2018_04_01
  #
  # A service client - single point of access to the REST API.
  #
  class NetworkManagementClient < MsRestAzure::AzureServiceClient
    include MsRestAzure
    include MsRestAzure::Serialization

    # @return [String] the base URI of the service.
    attr_accessor :base_url

    # @return Credentials needed for the client to connect to Azure.
    attr_reader :credentials

    # @return [String] The subscription credentials which uniquely identify the
    # Microsoft Azure subscription. The subscription ID forms part of the URI
    # for every service call.
    attr_accessor :subscription_id

    # @return [String] Client API version.
    attr_reader :api_version

    # @return [String] The preferred language for the response.
    attr_accessor :accept_language

    # @return [Integer] The retry timeout in seconds for Long Running
    # Operations. Default value is 30.
    attr_accessor :long_running_operation_retry_timeout

    # @return [Boolean] Whether a unique x-ms-client-request-id should be
    # generated. When set to true a unique x-ms-client-request-id value is
    # generated and included in each request. Default is true.
    attr_accessor :generate_client_request_id

    # @return [AzureFirewalls] azure_firewalls
    attr_reader :azure_firewalls

    # @return [ApplicationGateways] application_gateways
    attr_reader :application_gateways

    # @return [ApplicationSecurityGroups] application_security_groups
    attr_reader :application_security_groups

    # @return [DdosProtectionPlans] ddos_protection_plans
    attr_reader :ddos_protection_plans

    # @return [AvailableEndpointServices] available_endpoint_services
    attr_reader :available_endpoint_services

    # @return [ExpressRouteCircuitAuthorizations]
    # express_route_circuit_authorizations
    attr_reader :express_route_circuit_authorizations

    # @return [ExpressRouteCircuitPeerings] express_route_circuit_peerings
    attr_reader :express_route_circuit_peerings

    # @return [ExpressRouteCircuitConnections]
    # express_route_circuit_connections
    attr_reader :express_route_circuit_connections

    # @return [ExpressRouteCircuits] express_route_circuits
    attr_reader :express_route_circuits

    # @return [ExpressRouteServiceProviders] express_route_service_providers
    attr_reader :express_route_service_providers

    # @return [ExpressRouteCrossConnections] express_route_cross_connections
    attr_reader :express_route_cross_connections

    # @return [ExpressRouteCrossConnectionPeerings]
    # express_route_cross_connection_peerings
    attr_reader :express_route_cross_connection_peerings

    # @return [LoadBalancers] load_balancers
    attr_reader :load_balancers

    # @return [LoadBalancerBackendAddressPools]
    # load_balancer_backend_address_pools
    attr_reader :load_balancer_backend_address_pools

    # @return [LoadBalancerFrontendIPConfigurations]
    # load_balancer_frontend_ipconfigurations
    attr_reader :load_balancer_frontend_ipconfigurations

    # @return [InboundNatRules] inbound_nat_rules
    attr_reader :inbound_nat_rules

    # @return [LoadBalancerLoadBalancingRules]
    # load_balancer_load_balancing_rules
    attr_reader :load_balancer_load_balancing_rules

    # @return [LoadBalancerNetworkInterfaces] load_balancer_network_interfaces
    attr_reader :load_balancer_network_interfaces

    # @return [LoadBalancerProbes] load_balancer_probes
    attr_reader :load_balancer_probes

    # @return [NetworkInterfaces] network_interfaces
    attr_reader :network_interfaces

    # @return [NetworkInterfaceIPConfigurations]
    # network_interface_ipconfigurations
    attr_reader :network_interface_ipconfigurations

    # @return [NetworkInterfaceLoadBalancers] network_interface_load_balancers
    attr_reader :network_interface_load_balancers

    # @return [NetworkSecurityGroups] network_security_groups
    attr_reader :network_security_groups

    # @return [SecurityRules] security_rules
    attr_reader :security_rules

    # @return [DefaultSecurityRules] default_security_rules
    attr_reader :default_security_rules

    # @return [NetworkWatchers] network_watchers
    attr_reader :network_watchers

    # @return [PacketCaptures] packet_captures
    attr_reader :packet_captures

    # @return [ConnectionMonitors] connection_monitors
    attr_reader :connection_monitors

    # @return [Operations] operations
    attr_reader :operations

    # @return [PublicIPAddresses] public_ipaddresses
    attr_reader :public_ipaddresses

    # @return [RouteFilters] route_filters
    attr_reader :route_filters

    # @return [RouteFilterRules] route_filter_rules
    attr_reader :route_filter_rules

    # @return [RouteTables] route_tables
    attr_reader :route_tables

    # @return [Routes] routes
    attr_reader :routes

    # @return [BgpServiceCommunities] bgp_service_communities
    attr_reader :bgp_service_communities

    # @return [Usages] usages
    attr_reader :usages

    # @return [VirtualNetworks] virtual_networks
    attr_reader :virtual_networks

    # @return [Subnets] subnets
    attr_reader :subnets

    # @return [VirtualNetworkPeerings] virtual_network_peerings
    attr_reader :virtual_network_peerings

    # @return [VirtualNetworkGateways] virtual_network_gateways
    attr_reader :virtual_network_gateways

    # @return [VirtualNetworkGatewayConnections]
    # virtual_network_gateway_connections
    attr_reader :virtual_network_gateway_connections

    # @return [LocalNetworkGateways] local_network_gateways
    attr_reader :local_network_gateways

    # @return [VirtualWANs] virtual_wans
    attr_reader :virtual_wans

    # @return [VpnSites] vpn_sites
    attr_reader :vpn_sites

    # @return [VpnSitesConfiguration] vpn_sites_configuration
    attr_reader :vpn_sites_configuration

    # @return [VirtualHubs] virtual_hubs
    attr_reader :virtual_hubs

    # @return [HubVirtualNetworkConnections] hub_virtual_network_connections
    attr_reader :hub_virtual_network_connections

    # @return [VpnGateways] vpn_gateways
    attr_reader :vpn_gateways

    # @return [VpnConnections] vpn_connections
    attr_reader :vpn_connections

    #
    # Creates initializes a new instance of the NetworkManagementClient class.
    # @param credentials [MsRest::ServiceClientCredentials] credentials to authorize HTTP requests made by the service client.
    # @param base_url [String] the base URI of the service.
    # @param options [Array] filters to be applied to the HTTP requests.
    #
    def initialize(credentials = nil, base_url = nil, options = nil)
      super(credentials, options)
      @base_url = base_url || 'https://management.azure.com'

      fail ArgumentError, 'invalid type of credentials input parameter' unless credentials.is_a?(MsRest::ServiceClientCredentials) unless credentials.nil?
      @credentials = credentials

      @azure_firewalls = AzureFirewalls.new(self)
      @application_gateways = ApplicationGateways.new(self)
      @application_security_groups = ApplicationSecurityGroups.new(self)
      @ddos_protection_plans = DdosProtectionPlans.new(self)
      @available_endpoint_services = AvailableEndpointServices.new(self)
      @express_route_circuit_authorizations = ExpressRouteCircuitAuthorizations.new(self)
      @express_route_circuit_peerings = ExpressRouteCircuitPeerings.new(self)
      @express_route_circuit_connections = ExpressRouteCircuitConnections.new(self)
      @express_route_circuits = ExpressRouteCircuits.new(self)
      @express_route_service_providers = ExpressRouteServiceProviders.new(self)
      @express_route_cross_connections = ExpressRouteCrossConnections.new(self)
      @express_route_cross_connection_peerings = ExpressRouteCrossConnectionPeerings.new(self)
      @load_balancers = LoadBalancers.new(self)
      @load_balancer_backend_address_pools = LoadBalancerBackendAddressPools.new(self)
      @load_balancer_frontend_ipconfigurations = LoadBalancerFrontendIPConfigurations.new(self)
      @inbound_nat_rules = InboundNatRules.new(self)
      @load_balancer_load_balancing_rules = LoadBalancerLoadBalancingRules.new(self)
      @load_balancer_network_interfaces = LoadBalancerNetworkInterfaces.new(self)
      @load_balancer_probes = LoadBalancerProbes.new(self)
      @network_interfaces = NetworkInterfaces.new(self)
      @network_interface_ipconfigurations = NetworkInterfaceIPConfigurations.new(self)
      @network_interface_load_balancers = NetworkInterfaceLoadBalancers.new(self)
      @network_security_groups = NetworkSecurityGroups.new(self)
      @security_rules = SecurityRules.new(self)
      @default_security_rules = DefaultSecurityRules.new(self)
      @network_watchers = NetworkWatchers.new(self)
      @packet_captures = PacketCaptures.new(self)
      @connection_monitors = ConnectionMonitors.new(self)
      @operations = Operations.new(self)
      @public_ipaddresses = PublicIPAddresses.new(self)
      @route_filters = RouteFilters.new(self)
      @route_filter_rules = RouteFilterRules.new(self)
      @route_tables = RouteTables.new(self)
      @routes = Routes.new(self)
      @bgp_service_communities = BgpServiceCommunities.new(self)
      @usages = Usages.new(self)
      @virtual_networks = VirtualNetworks.new(self)
      @subnets = Subnets.new(self)
      @virtual_network_peerings = VirtualNetworkPeerings.new(self)
      @virtual_network_gateways = VirtualNetworkGateways.new(self)
      @virtual_network_gateway_connections = VirtualNetworkGatewayConnections.new(self)
      @local_network_gateways = LocalNetworkGateways.new(self)
      @virtual_wans = VirtualWANs.new(self)
      @vpn_sites = VpnSites.new(self)
      @vpn_sites_configuration = VpnSitesConfiguration.new(self)
      @virtual_hubs = VirtualHubs.new(self)
      @hub_virtual_network_connections = HubVirtualNetworkConnections.new(self)
      @vpn_gateways = VpnGateways.new(self)
      @vpn_connections = VpnConnections.new(self)
      @api_version = '2018-04-01'
      @accept_language = 'en-US'
      @long_running_operation_retry_timeout = 30
      @generate_client_request_id = true
      add_telemetry
    end

    #
    # Makes a request and returns the body of the response.
    # @param method [Symbol] with any of the following values :get, :put, :post, :patch, :delete.
    # @param path [String] the path, relative to {base_url}.
    # @param options [Hash{String=>String}] specifying any request options like :body.
    # @return [Hash{String=>String}] containing the body of the response.
    # Example:
    #
    #  request_content = "{'location':'westus','tags':{'tag1':'val1','tag2':'val2'}}"
    #  path = "/path"
    #  options = {
    #    body: request_content,
    #    query_params: {'api-version' => '2016-02-01'}
    #  }
    #  result = @client.make_request(:put, path, options)
    #
    def make_request(method, path, options = {})
      result = make_request_with_http_info(method, path, options)
      result.body unless result.nil?
    end

    #
    # Makes a request and returns the operation response.
    # @param method [Symbol] with any of the following values :get, :put, :post, :patch, :delete.
    # @param path [String] the path, relative to {base_url}.
    # @param options [Hash{String=>String}] specifying any request options like :body.
    # @return [MsRestAzure::AzureOperationResponse] Operation response containing the request, response and status.
    #
    def make_request_with_http_info(method, path, options = {})
      result = make_request_async(method, path, options).value!
      result.body = result.response.body.to_s.empty? ? nil : JSON.load(result.response.body)
      result
    end

    #
    # Makes a request asynchronously.
    # @param method [Symbol] with any of the following values :get, :put, :post, :patch, :delete.
    # @param path [String] the path, relative to {base_url}.
    # @param options [Hash{String=>String}] specifying any request options like :body.
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def make_request_async(method, path, options = {})
      fail ArgumentError, 'method is nil' if method.nil?
      fail ArgumentError, 'path is nil' if path.nil?

      request_url = options[:base_url] || @base_url
      if(!options[:headers].nil? && !options[:headers]['Content-Type'].nil?)
        @request_headers['Content-Type'] = options[:headers]['Content-Type']
      end

      request_headers = @request_headers
      request_headers.merge!({'accept-language' => @accept_language}) unless @accept_language.nil?
      options.merge!({headers: request_headers.merge(options[:headers] || {})})
      options.merge!({credentials: @credentials}) unless @credentials.nil?

      super(request_url, method, path, options)
    end

    #
    # Checks whether a domain name in the cloudapp.azure.com zone is available for
    # use.
    #
    # @param location [String] The location of the domain name.
    # @param domain_name_label [String] The domain name to be verified. It must
    # conform to the following regular expression: ^[a-z][a-z0-9-]{1,61}[a-z0-9]$.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [DnsNameAvailabilityResult] operation results.
    #
    def check_dns_name_availability(location, domain_name_label, custom_headers:nil)
      response = check_dns_name_availability_async(location, domain_name_label, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Checks whether a domain name in the cloudapp.azure.com zone is available for
    # use.
    #
    # @param location [String] The location of the domain name.
    # @param domain_name_label [String] The domain name to be verified. It must
    # conform to the following regular expression: ^[a-z][a-z0-9-]{1,61}[a-z0-9]$.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def check_dns_name_availability_with_http_info(location, domain_name_label, custom_headers:nil)
      check_dns_name_availability_async(location, domain_name_label, custom_headers:custom_headers).value!
    end

    #
    # Checks whether a domain name in the cloudapp.azure.com zone is available for
    # use.
    #
    # @param location [String] The location of the domain name.
    # @param domain_name_label [String] The domain name to be verified. It must
    # conform to the following regular expression: ^[a-z][a-z0-9-]{1,61}[a-z0-9]$.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def check_dns_name_availability_async(location, domain_name_label, custom_headers:nil)
      fail ArgumentError, 'location is nil' if location.nil?
      fail ArgumentError, 'domain_name_label is nil' if domain_name_label.nil?
      fail ArgumentError, 'api_version is nil' if api_version.nil?
      fail ArgumentError, 'subscription_id is nil' if subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = accept_language unless accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/providers/Microsoft.Network/locations/{location}/CheckDnsNameAvailability'

      request_url = @base_url || self.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'location' => location,'subscriptionId' => subscription_id},
          query_params: {'domainNameLabel' => domain_name_label,'api-version' => api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = self.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Network::Mgmt::V2018_04_01::Models::DnsNameAvailabilityResult.mapper()
            result.body = self.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end


    private
    #
    # Adds telemetry information.
    #
    def add_telemetry
        sdk_information = 'azure_mgmt_network'
        sdk_information = "#{sdk_information}/0.17.3"
        add_user_agent_information(sdk_information)
    end
  end
end
