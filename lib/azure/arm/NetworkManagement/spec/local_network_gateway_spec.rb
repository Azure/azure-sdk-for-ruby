#-------------------------------------------------------------------------
# Copyright 2015 Microsoft Open Technologies, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#--------------------------------------------------------------------------

require_relative 'test_helper'


include MsRestAzure
include Azure::ARM::Resources
include Azure::ARM::Network

describe LocalNetworkGateways do

  before(:all) do
    @client = NETWORK_CLIENT.local_network_gateways
    @location = 'westus'
    @resource_group = create_resource_group
  end
  after(:all) do
    delete_resource_group(@resource_group.name)
  end

  it 'should create local network gateway' do
    params = build_local_network_gateway_params
    result = @client.create_or_update(@resource_group.name, params.name, params).value!
    expect(result.response.status).to eq(200)
    expect(result.body).not_to be_nil
    expect(result.body.name).to eq(params.name)
  end

  it 'should get local network gateway' do
    local_network_gateway = create_local_network_gateway
    result = @client.get(@resource_group.name, local_network_gateway.name).value!
    expect(result.response.status).to eq(200)
    expect(result.body).not_to be_nil
    expect(result.body.name).to eq(local_network_gateway.name)
  end

  it 'should delete local network gateway' do
    local_network_gateway = create_local_network_gateway
    result = @client.delete(@resource_group.name, local_network_gateway.name).value!
    expect(result.response.status).to eq(200)
  end

  it 'should list all the local network gateways' do
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

  def create_local_network_gateway
    params = build_local_network_gateway_params
    @client.create_or_update(@resource_group.name, params.name, params).value!.body
  end

  def build_local_network_gateway_params
    params = Models::LocalNetworkGateway.new
    params.location = @location
    params.name = get_random_name('local_gateway')
    props = Models::LocalNetworkGatewayPropertiesFormat.new
    params.properties = props
    props.gateway_ip_address = "192.168.3.#{rand(9)}"
    address_space = Models::AddressSpace.new
    props.local_network_address_space = address_space
    address_space.address_prefixes = %w(192.168.0.0/16)
    params
  end
end