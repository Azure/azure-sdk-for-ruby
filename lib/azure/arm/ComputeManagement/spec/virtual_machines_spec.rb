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
require_relative 'availability_sets_shared'

include MsRestAzure
include Azure::ARM::Resources
include Azure::ARM::Resources::Models

include Azure::ARM::Compute
include Azure::ARM::Compute::Models

include Azure::ARM::Network
include Azure::ARM::Network::Models


describe VirtualMachines do

  before(:all) do
    @client = COMPUTE_CLIENT.virtual_machines
    @resource_group = create_resource_group
    @location = 'westus'
    @vm_name = get_random_name('vm')
  end

  after(:all) do
    delete_resource_group(@resource_group.name)
  end

  it 'should create virtual machine' do
    params = build_virtual_machine_parameters
    result = @client.create_or_update(@resource_group.name, @vm_name, params).value!
    expect(result.response.status).to eq(200)
    expect(result.body).not_to be_nil
    expect(result.body.name).to eq @vm_name
    expect(result.body.location).to eq @location
  end

  it 'should get virtual machine' do
    result = @client.get(@resource_group.name, @vm_name).value!
    expect(result.response.status).to eq(200)
  end

  it 'should list virtual machines' do
    result = @client.list(@resource_group.name).value!
    expect(result.response.status).to eq(200)

    expect(result.body.next_link).to eq(nil)
    expect(result.body.value.count).to eq(1)
    expect(result.body.value[0].is_a?(VirtualMachine))
  end

  it 'should restart virtual machine' do
    result = @client.restart(@resource_group.name, @vm_name).value!
    expect(result.response.status).to eq(200)
  end

  it 'should power off virtual machine' do
    result = @client.power_off(@resource_group.name, @vm_name).value!
    expect(result.response.status).to eq(200)
  end

  it 'should start virtual machine' do
    result = @client.start(@resource_group.name, @vm_name).value!
    expect(result.response.status).to eq(200)
  end

  it 'should deallocate virtual machine' do
    result = @client.deallocate(@resource_group.name, @vm_name).value!
    expect(result.response.status).to eq(200)
  end

  it 'should delete virtual machine' do
    result = @client.delete(@resource_group.name, @vm_name).value!
    expect(result.response.status).to eq(200)
  end

  # TODO: add tests for capture, generalize and list_all methods.

  # VM helpers
  def build_virtual_machine_parameters
    props = VirtualMachineProperties.new

    windows_config = WindowsConfiguration.new
    windows_config.provision_vmagent = true
    windows_config.enable_automatic_updates = true

    os_profile = OSProfile.new
    os_profile.computer_name = 'testvm1'
    os_profile.admin_username = 'testvm1'
    os_profile.admin_password = 'P@ssword1'
    os_profile.windows_configuration = windows_config
    os_profile.secrets = []
    props.os_profile = os_profile

    hardware_profile = HardwareProfile.new
    hardware_profile.vm_size = 'Standard_A0'
    props.hardware_profile = hardware_profile

    props.storage_profile = create_storage_profile

    props.network_profile = create_network_profile

    params = VirtualMachine.new
    params.type = 'Microsoft.Compute/virtualMachines'
    params.properties = props
    params.location = @location
    params
  end

  def generate_os_vhd_uri(storage_name)
    container_name = get_random_name 'cont'
    vhd_container = "https://#{storage_name}.blob.core.windows.net/#{container_name}"
    os_vhduri = "#{vhd_container}/os#{get_random_name 'test'}.vhd"
    os_vhduri
  end

  def get_image_reference
    # publisherName = 'MicrosoftWindowsServer'
    # offerName = 'WindowsServer'
    # skusName = '2012-R2-Datacenter'
    # windowsServiceImageVersion = '4.0.201506'
    #@client.get(@location, publisherName, offerName, skusName, windowsServiceImageVersion).value!.body
    ref = ImageReference.new
    ref.publisher = 'MicrosoftWindowsServer'
    ref.offer = 'WindowsServer'
    ref.sku = '2012-R2-Datacenter'
    ref.version = '4.0.201506'
    ref
  end

  # Storage helpers
  def build_storage_account_create_parameters(name)
    params = Azure::ARM::Storage::Models::StorageAccountCreateParameters.new
    params.location = @location
    params.name = name
    props = Azure::ARM::Storage::Models::StorageAccountPropertiesCreateParameters.new
    params.properties = props
    props.account_type = 'Standard_GRS'
    params
  end

  def create_storage_account
    storage_name = get_random_name('storage')[0, 24]
    params = build_storage_account_create_parameters storage_name
    result = STORAGE_CLIENT.storage_accounts.create(@resource_group.name, storage_name, params).value!.body
    result.name = storage_name #similar problem in dot net tests
    result
  end

  def create_storage_profile
    storage_profile = StorageProfile.new
    storage_profile.image_reference = get_image_reference
    storage = create_storage_account
    os_disk = OSDisk.new
    os_disk.caching = 'None'
    os_disk.create_option = 'fromImage'
    os_disk.name = 'Test'
    virtual_hard_disk = VirtualHardDisk.new
    virtual_hard_disk.uri = generate_os_vhd_uri storage.name
    os_disk.vhd = virtual_hard_disk
    storage_profile.os_disk = os_disk
    storage_profile
  end

  # Network helpers
  def build_public_ip_params(location)
    public_ip = PublicIpAddress.new
    public_ip.location = location
    props = PublicIpAddressPropertiesFormat.new
    props.public_ipallocation_method = 'Dynamic'
    public_ip.properties = props
    domain_name = get_random_name 'domain'
    dns_settings = PublicIpAddressDnsSettings.new
    dns_settings.domain_name_label = domain_name
    props.dns_settings = dns_settings
    public_ip
  end

  def create_public_ip_address(location, resource_group)
    public_ip_address_name = get_random_name('ip_name')
    params = build_public_ip_params(location)
    NETWORK_CLIENT.public_ip_addresses.create_or_update(resource_group.name, public_ip_address_name, params).value!.body
  end

  def build_virtual_network_params(location)
    params = VirtualNetwork.new
    props = VirtualNetworkPropertiesFormat.new
    params.location = location
    address_space = AddressSpace.new
    address_space.address_prefixes = ['10.0.0.0/16']
    props.address_space = address_space
    dhcp_options = DhcpOptions.new
    dhcp_options.dns_servers = %w(10.1.1.1 10.1.2.4)
    props.dhcp_options = dhcp_options
    sub2 = Subnet.new
    sub2_prop = SubnetPropertiesFormat.new
    sub2.name = get_random_name('subnet')
    sub2_prop.address_prefix = '10.0.2.0/24'
    sub2.properties = sub2_prop
    props.subnets = [sub2]
    params.properties = props
    params
  end

  def create_virtual_network(resource_group_name)
    virtualNetworkName = get_random_name("vnet")
    params = build_virtual_network_params('westus')
    NETWORK_CLIENT.virtual_networks.create_or_update(resource_group_name, virtualNetworkName, params).value!.body
  end

  def build_subnet_params
    params = Subnet.new
    prop = SubnetPropertiesFormat.new
    params.properties = prop
    prop.address_prefix = '10.0.1.0/24'
    params
  end

  def create_subnet(virtual_network, resource_group, subnet_client)
    subnet_name = get_random_name('subnet')
    params = build_subnet_params

    subnet_client.create_or_update(resource_group.name, virtual_network.name, subnet_name, params).value!.body
  end

  def create_network_interface
    params = build_network_interface_param
    NETWORK_CLIENT.network_interfaces.create_or_update(@resource_group.name, params.name, params).value!.body
  end

  def build_network_interface_param
    params = NetworkInterface.new
    params.location = @location
    network_interface_name = get_random_name('nic')
    ip_config_name = get_random_name('ip_name')
    params.name = network_interface_name
    props = NetworkInterfacePropertiesFormat.new
    ip_configuration = NetworkInterfaceIpConfiguration.new
    params.properties = props
    props.ip_configurations = [ip_configuration]
    ip_configuration_properties = NetworkInterfaceIpConfigurationPropertiesFormat.new
    ip_configuration.properties = ip_configuration_properties
    ip_configuration.name = ip_config_name
    ip_configuration_properties.private_ipallocation_method = 'Dynamic'
    ip_configuration_properties.public_ipaddress = create_public_ip_address(@location, @resource_group)
    ip_configuration_properties.subnet = @subnet
    params
  end

  def create_network_profile
    vn = create_virtual_network(@resource_group.name)
    @subnet = create_subnet(vn, @resource_group, NETWORK_CLIENT.subnets)
    network_interface = create_network_interface

    profile = NetworkProfile.new
    profile.network_interfaces = [network_interface]

    profile
  end
end
