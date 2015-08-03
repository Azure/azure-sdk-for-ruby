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