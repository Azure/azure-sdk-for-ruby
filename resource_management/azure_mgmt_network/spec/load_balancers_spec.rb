# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative 'spec_helper'
require_relative 'subnet_shared'
require_relative 'network_shared'

include MsRestAzure
include Azure::ARM::Resources
include Azure::ARM::Network

describe LoadBalancers do

  before(:all) do
    @client = NETWORK_CLIENT.load_balancers
    @location = 'westus'
    @resource_group = create_resource_group
  end
  after(:all) do
    delete_resource_group(@resource_group.name)
  end

  it 'should create load balancer' do
    params = build_load_balancer_params
    result = @client.create_or_update(@resource_group.name, params.name, params).value!
    expect(result.response.status).to eq(201)
    expect(result.body).not_to be_nil
    expect(result.body.name).to eq(params.name)
  end

  it 'should create load balancer with complex parameter structure' do
    #create public ip address
    lb_public_ip_name = get_random_name('ip')
    lb_domain_name_label = get_random_name('domain')
    public_ip = Models::PublicIpAddress.new
    public_ip.location = @location
    public_ip_props = Models::PublicIpAddressPropertiesFormat.new
    public_ip.properties = public_ip_props
    public_ip_props.public_ipallocation_method = 'Dynamic'
    dns_settings = Models::PublicIpAddressDnsSettings.new
    public_ip_props.dns_settings = dns_settings
    dns_settings.domain_name_label = lb_domain_name_label
    public_ip = NETWORK_CLIENT.public_ip_addresses.create_or_update(@resource_group.name, lb_public_ip_name, public_ip).value!.body
    #create virtual network
    vnet = create_virtual_network(@resource_group.name)
    #create the load balancer
    lb_name = get_random_name('lb_name')
    frontend_ip_config_name = get_random_name('frontend_ip_config_name')
    backend_address_pool_name = get_random_name('backend_address_pool_name')
    load_balancing_rule_name = get_random_name('load_balancing_rule_name')
    probe_name = get_random_name('probe_name')
    inbound_nat_rule1_name = get_random_name('inbound_nat_rule')
    inbound_nat_rule2_name = get_random_name('inbound_nat_rule')
    #populate load_balancer create_or_update parameter
    load_balancer = Models::LoadBalancer.new
    load_balancer.location = @location
    load_balancer_props = Models::LoadBalancerPropertiesFormat.new
    load_balancer.properties = load_balancer_props
    frontend_ip_configuration = Models::FrontendIpConfiguration.new
    load_balancer_props.frontend_ipconfigurations = [frontend_ip_configuration]
    frontend_ip_configuration.name = frontend_ip_config_name
    frontend_ip_configuration_props = Models::FrontendIpConfigurationPropertiesFormat.new
    frontend_ip_configuration.properties = frontend_ip_configuration_props
    frontend_ip_configuration_props.public_ipaddress = public_ip
    backend_address_pool = Models::BackendAddressPool.new
    load_balancer_props.backend_address_pools = [backend_address_pool]
    backend_address_pool.name = backend_address_pool_name
    load_balancing_rule = Models::LoadBalancingRule.new
    load_balancer_props.load_balancing_rules = [load_balancing_rule]
    load_balancing_rule.name = load_balancing_rule_name
    load_balancing_rule_props = Models::LoadBalancingRulePropertiesFormat.new
    load_balancing_rule.properties = load_balancing_rule_props
    frontend_ip_configuration_sub_resource = MsRestAzure::SubResource.new
    frontend_ip_configuration_sub_resource.id =
        get_child_lb_resource_id(NETWORK_CLIENT.subscription_id, @resource_group.name,
        lb_name, 'FrontendIPConfigurations', frontend_ip_config_name)
    load_balancing_rule_props.frontend_ipconfiguration = frontend_ip_configuration_sub_resource
    load_balancing_rule_props.protocol = 'Tcp'
    load_balancing_rule_props.frontend_port = 80
    load_balancing_rule_props.backend_port = 80
    load_balancing_rule_props.enable_floating_ip = false
    load_balancing_rule_props.idle_timeout_in_minutes = 15
    backend_address_pool_sub_resource = MsRestAzure::SubResource.new
    load_balancing_rule_props.backend_address_pool = backend_address_pool_sub_resource
    backend_address_pool_sub_resource.id =
        get_child_lb_resource_id(NETWORK_CLIENT.subscription_id, @resource_group.name,
        lb_name, 'backendAddressPools', backend_address_pool_name)
    probe_sub_resource = MsRestAzure::SubResource.new
    load_balancing_rule_props.probe = probe_sub_resource
    probe_sub_resource.id =
        get_child_lb_resource_id(NETWORK_CLIENT.subscription_id, @resource_group.name,
        lb_name, 'probes', probe_name)
    probe = Models::Probe.new
    load_balancer_props.probes = [probe]
    probe.name = probe_name
    probe_props = Models::ProbePropertiesFormat.new
    probe.properties = probe_props
    probe_props.protocol = 'Http'
    probe_props.port = 80
    probe_props.request_path = 'healthcheck.aspx'
    probe_props.interval_in_seconds = 10
    probe_props.number_of_probes = 2
    inbound_nat_rule1 = Models::InboundNatRule.new
    inbound_nat_rule2 = Models::InboundNatRule.new
    load_balancer_props.inbound_nat_rules = [inbound_nat_rule1, inbound_nat_rule2]
    inbound_nat_rule1.name = inbound_nat_rule1_name
    inbound_nat_rule2.name = inbound_nat_rule2_name
    inbound_rule1_props = Models::InboundNatRulePropertiesFormat.new
    inbound_rule2_props = Models::InboundNatRulePropertiesFormat.new
    inbound_nat_rule1.properties = inbound_rule1_props
    inbound_nat_rule2.properties = inbound_rule2_props
    inbound_rule1_props.frontend_ipconfiguration = frontend_ip_configuration_sub_resource
    inbound_rule2_props.frontend_ipconfiguration = frontend_ip_configuration_sub_resource
    inbound_rule1_props.protocol = 'Tcp'
    inbound_rule2_props.protocol = 'Tcp'
    inbound_rule1_props.frontend_port = 3389
    inbound_rule2_props.frontend_port = 3390
    inbound_rule1_props.backend_port = 3389
    inbound_rule2_props.backend_port = 3389
    inbound_rule1_props.idle_timeout_in_minutes = 15
    inbound_rule2_props.idle_timeout_in_minutes = 15
    inbound_rule1_props.enable_floating_ip = false
    inbound_rule2_props.enable_floating_ip = false
    #create load balancer
    result = @client.create_or_update(@resource_group.name, lb_name, load_balancer).value!
    expect(result.response.status).to eq(201)
    expect(result.body).not_to be_nil
    expect(result.body.name).to eq(lb_name)
  end

  it 'should get load balancer' do
    load_balancer = create_load_balancer
    result = @client.get(@resource_group.name, load_balancer.name).value!
    expect(result.response.status).to eq(200)
    expect(result.body).not_to be_nil
    expect(result.body.name).to eq(load_balancer.name)
  end

  it 'should delete load balancer' do
    load_balancer = create_load_balancer
    result = @client.delete(@resource_group.name, load_balancer.name).value!
    expect(result.response.status).to eq(200)
  end

  it 'should work with TCP and UDP balance rules' do
    vnet = create_virtual_network(@resource_group.name)
    subnet = create_subnet(vnet, @resource_group, NETWORK_CLIENT.subnets)
    params = build_load_balancer_params
    props = Models::LoadBalancerPropertiesFormat.new
    params.properties = props
    frontend_ip_configuration = Models::FrontendIpConfiguration.new
    props.frontend_ipconfigurations = [frontend_ip_configuration]
    ip_config_name = get_random_name('frontend_ip_config')
    frontend_ip_configuration.name = ip_config_name
    frontend_ip_configuration.id = get_child_lb_resource_id(NETWORK_CLIENT.subscription_id,@resource_group.name, params.name,'frontendIPConfigurations', ip_config_name)
    frontend_ip_conf_props = Models::FrontendIpConfigurationPropertiesFormat.new
    frontend_ip_configuration.properties = frontend_ip_conf_props
    frontend_ip_conf_props.private_ipallocation_method = 'Dynamic'
    frontend_ip_conf_props.subnet = subnet
    udp_rule = Models::LoadBalancingRule.new
    udp_rule.name = get_random_name('udp_rule')
    udp_prop = Models::LoadBalancingRulePropertiesFormat.new
    udp_rule.properties = udp_prop
    udp_prop.frontend_ipconfiguration = frontend_ip_configuration
    udp_prop.protocol = 'Udp'
    udp_prop.frontend_port = 80
    udp_prop.backend_port = 80
    tcp_rule = Models::LoadBalancingRule.new
    tcp_rule.name = get_random_name('tcp_rule')
    tcp_prop = Models::LoadBalancingRulePropertiesFormat.new
    tcp_rule.properties = tcp_prop
    tcp_prop.frontend_ipconfiguration = frontend_ip_configuration
    tcp_prop.protocol = 'Tcp'
    tcp_prop.frontend_port = 80
    tcp_prop.backend_port = 80
    props.load_balancing_rules = [udp_rule, tcp_rule]
    inbound_udp = Models::InboundNatRule.new
    inbound_tcp = Models::InboundNatRule.new
    props.inbound_nat_rules = [inbound_udp, inbound_tcp]
    inbound_udp.name = get_random_name('inbound_udp_rule')
    inbound_tcp.name = get_random_name('inbound_tcp_rule')
    inbound_udp_props = Models::InboundNatRulePropertiesFormat.new
    inbound_tcp_props = Models::InboundNatRulePropertiesFormat.new
    inbound_udp.properties = inbound_udp_props
    inbound_tcp.properties = inbound_tcp_props
    inbound_udp_props.frontend_ipconfiguration = frontend_ip_configuration
    inbound_tcp_props.frontend_ipconfiguration = frontend_ip_configuration
    inbound_udp_props.protocol = 'Udp'
    inbound_tcp_props.protocol = 'Tcp'
    inbound_udp_props.frontend_port = 32900
    inbound_tcp_props.frontend_port = 32900
    inbound_udp_props.backend_port = 32900
    inbound_tcp_props.backend_port = 32900
    @client.create_or_update(@resource_group.name, params.name, params).value!
    result = @client.list_all.value!
    expect(result.response.status).to eq(200)
  end

  def get_child_lb_resource_id(subscriptionId, resourceGroupName, lbname, childResourceType, childResourceName)
      "/subscriptions/#{subscriptionId}/resourceGroups/#{resourceGroupName}/providers/Microsoft.Network/loadBalancers/#{lbname}/#{childResourceType}/#{childResourceName}"
  end

  it 'should list loadbalancers in a subscription' do
    result = @client.list_all.value!
    expect(result.response.status).to eq(200)
    expect(result.body).not_to be_nil
    expect(result.body.value).to be_a(Array)
    while !result.body.next_link.nil? && !result.body.next_link.empty? do
      result = @client.list_all_next(result.body.next_link).value!
      expect(result.body.value).not_to be_nil
      expect(result.body.value).to be_a(Array)
    end
  end

  it 'should list loadbalancers in a resource group' do
    result = @client.list(@resource_group.name).value!
    expect(result.response.status).to eq(200)
    expect(result.body).not_to be_nil
    expect(result.body.value).to be_a(Array)
    while !result.body.next_link.nil? && !result.body.next_link.empty? do
      result = @client.list_next(result.body.next_link).value!
      expect(result.body.value).not_to be_nil
      expect(result.body.value).to be_a(Array)
    end
  end

  def create_load_balancer
    params = build_load_balancer_params
    @client.create_or_update(@resource_group.name, params.name, params).value!.body
  end

  def build_load_balancer_params
    params = Models::LoadBalancer.new
    params.location = @location
    params.name = get_random_name('load_balancer')
    params
  end

end