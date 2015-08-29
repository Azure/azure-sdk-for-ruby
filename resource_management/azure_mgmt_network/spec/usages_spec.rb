# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative 'spec_helper'
require 'faraday'

include MsRestAzure
include Azure::ARM::Network


describe Usages do
  before(:all) do
    @location = 'westus'
    @client = NETWORK_CLIENT.usages
  end
  it 'should list compute usages for subscription' do
    result = @client.list(@location).value!
    expect(result.response.status).to eq(200)
    expect(result.body).not_to be_nil
    expect(result.body.value).to be_a(Array)
  end
end