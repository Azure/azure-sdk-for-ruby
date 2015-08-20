# encoding: utf-8
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
    @publisher_name = 'MicrosoftWindowsServer'
    @offer_name = 'WindowsServer'
    @skus_name = '2012-R2-Datacenter'
    @windows_service_image_version = '4.0.201506'
  end


  it 'should list image publishers' do
    result = @client.list_publishers(@location).value!
    expect(result.response.status).to eq(200)
    expect(result.body).not_to be_nil
    expect(result.body).to be_a Array
  end

  it 'should list offers' do
    result = @client.list_offers(@location, @publisher_name).value!
    expect(result.response.status).to eq(200)
    expect(result.body).not_to be_nil
    expect(result.body).to be_a Array
  end

  it 'should list skus' do
    result = @client.list_skus(@location, @publisher_name, @offer_name).value!
    expect(result.response.status).to eq(200)
    expect(result.body).not_to be_nil
    expect(result.body).to be_a Array
  end

  it 'should list all virtual machine images' do
    result = @client.list(@location, @publisher_name, @offer_name, @skus_name).value!
    expect(result.response.status).to eq(200)
    expect(result.body).not_to be_nil
    expect(result.body).to be_a Array
  end

  it 'should get virtual machine image' do
    result = @client.get(@location, @publisher_name, @offer_name, @skus_name, @windows_service_image_version).value!
    expect(result.response.status).to eq(200)
    expect(result.body).not_to be_nil
  end

end
