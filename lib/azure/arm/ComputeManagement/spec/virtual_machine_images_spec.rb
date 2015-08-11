# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative 'test_helper'
require_relative 'availability_sets_shared'

include MsRestAzure
include Azure::ARM::Compute

describe VirtualMachines do

  before(:all) do
    @client = COMPUTE_CLIENT.virtual_machine_images
    @location = 'westus'
    @publisherName = 'MicrosoftWindowsServer'
    @offerName = 'WindowsServer'
    @skusName = '2012-R2-Datacenter'
    @windowsServiceImageVersion = '4.0.201506'
  end


  it 'should list image publishers' do
    result = @client.list_publishers(@location).value!
    expect(result.response.status).to eq(200)
    expect(result.body).not_to be_nil
    expect(result.body).to be_a Array
  end

  it 'should list offers' do
    result = @client.list_offers(@location, @publisherName).value!
    expect(result.response.status).to eq(200)
    expect(result.body).not_to be_nil
    expect(result.body).to be_a Array
  end

  it 'should list skus' do
    result = @client.list_skus(@location, @publisherName, @offerName).value!
    expect(result.response.status).to eq(200)
    expect(result.body).not_to be_nil
    expect(result.body).to be_a Array
  end

  it 'should list all virtual machine images' do
    result = @client.list(@location, @publisherName, @offerName, @skusName).value!
    expect(result.response.status).to eq(200)
    expect(result.body).not_to be_nil
    expect(result.body).to be_a Array
  end

  it 'should get virtual machine image' do
    result = @client.get(@location, @publisherName, @offerName, @skusName, @windowsServiceImageVersion).value!
    expect(result.response.status).to eq(200)
    expect(result.body).not_to be_nil
  end

end
