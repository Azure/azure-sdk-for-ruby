# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative 'spec_helper'
require_relative 'network_shared'

include MsRestAzure
include Azure::ARM::Resources
include Azure::ARM::Network

def create_subnet(virtual_network, resource_group, subnet_client)
  subnet_name = get_random_name('subnet')
  params = build_subnet_params
  subnet_client.create_or_update(resource_group.name, virtual_network.name, subnet_name, params).value!.body
end

def build_subnet_params
  params = Models::Subnet.new
  prop = Models::SubnetPropertiesFormat.new
  params.properties = prop
  prop.address_prefix = '10.0.1.0/24'
  params
end