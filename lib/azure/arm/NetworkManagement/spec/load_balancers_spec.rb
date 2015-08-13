# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative 'test_helper'
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
    puts ''
  end

  def get_child_lb_resource_id(subscriptionId, resourceGroupName, lbname, childResourceType, childResourceName)
      "/subscriptions/#{subscriptionId}/resourceGroups/#{resourceGroupName}/providers/Microsoft.Network/loadBalancers/#{lbname}/#{childResourceType}/#{childResourceName}"
  end

  it 'should list loadbalancers in a subscription' do
    result = @client.list_all.value!
    expect(result.response.status).to eq(200)
    expect(result.body).not_to be_nil
    expect(result.body.value).to be_a(Array)
    until result.body.next_link.to_s.empty? do
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
    until result.body.next_link.to_s.empty? do
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