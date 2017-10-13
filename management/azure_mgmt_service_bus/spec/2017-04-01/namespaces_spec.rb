# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative 'spec_helper'

describe 'Service Bus Management Client' do
  before(:each) do
    @resource_helper = ResourceHelper.new
    @service_bus_client = @resource_helper.service_bus_client
    @resource_group = @resource_helper.create_resource_group
  end

  after(:each) do
    @resource_helper.delete_resource_group(@resource_group.name)
  end

  it 'should create list and delete namespace' do
    namespace_name = "smaple34566"
    namespace_parameters = Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBNamespace.new
    namespace_parameters.location = 'westus'

    # Create new namespace
    namespace = @service_bus_client.namespaces.create_or_update(@resource_group.name, namespace_name, namespace_parameters)
    expect(namespace).not_to be_nil
    expect(namespace).to be_a(Azure::ServiceBus::Mgmt::V2017_04_01::Models::SBNamespace)
    expect(namespace.name).to eq(namespace_name)
    expect(namespace.provisioning_state).to eq("Succeeded")

    # List namespace
    namespaces = @service_bus_client.namespaces.list
    expect(namespaces).not_to be_nil
    expect(namespaces).to be_a(Array)
    expect(namespaces.length).to be(1)

    # Delete namespace
    namespace = @service_bus_client.namespaces.delete(@resource_group.name, namespace_name)
    expect(namespace).to be_nil
  end
end
