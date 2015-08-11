# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative 'test_helper'
require_relative 'availability_sets_shared'

include MsRestAzure
include Azure::ARM::Compute

describe VirtualMachineExtensionImages do
  before(:all) do
    @location = 'westus'
    @publisherName = 'Microsoft.WindowsAzure.Compute'
    @type = 'AzureLogCollector'
    @version = '1.0.0.7'
    @client = COMPUTE_CLIENT.virtual_machine_extension_images
  end

  it 'should list virtual machine extension image types' do
    result = @client.list_types(@location, @publisherName).value!
    expect(result.response.status).to eq(200)
    expect(result.body).not_to be_nil
    expect(result.body).to be_a Array
  end

  it 'should list virtual machine extension image versions' do
    result = @client.list_versions(@location, @publisherName, @type).value!
    expect(result.response.status).to eq(200)
    expect(result.body).not_to be_nil
    expect(result.body).to be_a Array
  end

  it 'should get virtual machine extension image' do
    result = @client.get(@location, @publisherName, @type, @version).value!
    expect(result.response.status).to eq(200)
    expect(result.body).not_to be_nil
  end
end