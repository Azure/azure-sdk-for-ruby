# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative 'spec_helper'
def create_network_security_group(resource_group, location)
  params = build_network_security_group_params(location)
  NETWORK_CLIENT.network_security_groups.create_or_update(resource_group.name, params.name, params).value!.body
end

def build_network_security_group_params(location)
  network_security_group_name = get_random_name('sec')
  params = Models::NetworkSecurityGroup.new
  params.name = network_security_group_name
  params.location = location
  params
end