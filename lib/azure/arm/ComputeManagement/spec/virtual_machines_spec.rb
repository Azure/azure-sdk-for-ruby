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
include Azure::ARM::Compute


describe VirtualMachines do

  before(:all) do
    @client = COMPUTE_CLIENT.virtual_machines
    @resource_group = create_resource_group
    @availability_set = create_availability_set(COMPUTE_CLIENT.availability_sets, @resource_group)
    @location = 'westus'
  end

  after(:all) do
    delete_resource_group(@resource_group.name)
  end

  it 'should create virtual machine' do
    vm_name = get_random_name('vm')
    params = build_virtual_machine_parameters
    result = @client.create_or_update(@resource_group.name, vm_name, params).value
    expect(result.response).to be_a Net::HTTPOK
    expect(result.body).not_to be_nil
    expect(result.body.name).to eq vm_name
    expect(result.body.location).to eq @location
  end

  def build_virtual_machine_parameters
    storage_profile = create_storage_profile
    params = Models::VirtualMachine.new()
    params.resources = []
    params.type = 'Microsoft.Compute/virtualMachines'
    props = Models::VirtualMachineProperties.new()
    hardware_profile = Models::HardwareProfile.new
    hardware_profile.vm_size = 'Standard_A0'
    props.hardware_profile =hardware_profile
    props.storage_profile = storage_profile

    #props.availability_set = @availability_set
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

  def build_storage_account_create_parameters(name)
    params = Azure::ARM::Storage::Models::StorageAccountCreateParameters.new
    params.location = @location
    params.name = name
    props = Azure::ARM::Storage::Models::StorageAccountPropertiesCreateParameters.new
    params.properties = props
    props.account_type = 'Standard_GRS'
    params
  end
  def create_storage_account()
    storage_name = get_random_name('storage')[0, 24]
    params = build_storage_account_create_parameters storage_name
    result = STORAGE_CLIENT.storage_accounts.create(@resource_group.name, storage_name, params).value!.body
    result.name = storage_name #similar problem in dot net tests
    result
  end
  def create_storage_profile
    storage_profile = Models::StorageProfile.new
    storage_profile.image_reference = get_image_reference
    storage = create_storage_account
    os_disk = Models::OSDisk.new
    os_disk.caching = 'None'
    os_disk.create_option = 'fromImage'
    os_disk.name = 'Test'
    virtual_hard_disk = Models::VirtualHardDisk.new
    virtual_hard_disk.uri = generate_os_vhd_uri storage.name
    os_disk.vhd = virtual_hard_disk
    storage_profile.os_disk = os_disk
    storage_profile
  end

  def get_image_reference
    # publisherName = 'MicrosoftWindowsServer'
    # offerName = 'WindowsServer'
    # skusName = '2012-R2-Datacenter'
    # windowsServiceImageVersion = '4.0.201506'
    #@client.get(@location, publisherName, offerName, skusName, windowsServiceImageVersion).value!.body
    ref = Models::ImageReference.new
    ref.publisher = 'MicrosoftWindowsServer'
    ref.offer = 'WindowsServer'
    ref.sku = '2012-R2-Datacenter'
    ref.version = '4.0.201506'
    ref
  end

end
