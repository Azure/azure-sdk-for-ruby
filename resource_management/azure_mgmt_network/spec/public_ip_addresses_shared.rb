# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative 'spec_helper'

include MsRestAzure
include Azure::ARM::Resources
include Azure::ARM::Network

def build_public_ip_params(location)
  public_ip = Models::PublicIpAddress.new
  public_ip.location = location
  props = Models::PublicIpAddressPropertiesFormat.new
  props.public_ipallocation_method = 'Dynamic'
  public_ip.properties = props
  domain_name = get_random_name 'domain'
  dns_settings = Models::PublicIpAddressDnsSettings.new
  dns_settings.domain_name_label = domain_name
  props.dns_settings = dns_settings
  public_ip
end

def create_public_ip_address(location, resource_group)
  public_ip_address_name = get_random_name('ip_name')
  params = build_public_ip_params(location)
  NETWORK_CLIENT.public_ip_addresses.create_or_update(resource_group.name, public_ip_address_name, params).value!.body
end