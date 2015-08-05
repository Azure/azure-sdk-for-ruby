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
include Azure::ARM::Compute

describe VirtualMachineExtensions do

  before(:all) do
    @client = COMPUTE_CLIENT.virtual_machine_images
    @resource_group = create_resource_group
    @name = 'test_extension'
  end

  it 'should create vm extension' do
    pending('vm extensions feature isn\'t supported by Azure yet')

    vm_extension_properties = VirtualMachineExtensionProperties.new
    vm_extension_properties.publisher = 'Microsoft.Compute'
    vm_extension_properties.type = '"Microsoft.Compute/virtualMachines/extensions'
    vm_extension_properties.type_handler_version = '2.0'

    vm_extension = VirtualMachineExtension.new
    vm_extension.properties = vm_extension_properties
    vm_extension.tags = Hash.new
    vm_extension.tags['extensionTag1'] = '1'
    vm_extension.tags['extensionTag2'] = '2'
    vm_extension.location = 'westus'

    result = @client.create_or_update(@resource_group.name, @name, vm_extension).value!
    expect(result.response.status).to eq(200)
    expect(result.body.name).to eq(@name)
  end

end
