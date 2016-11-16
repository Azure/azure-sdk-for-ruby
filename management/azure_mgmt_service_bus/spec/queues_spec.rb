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

  it 'should create list and delete queues' do
    namespace_name = "smaple34566"
    queue_name = 'queue97832'
    namespace_parameters = Azure::ARM::ServiceBus::Models::NamespaceCreateOrUpdateParameters.new
    namespace_parameters.location = 'westus'
    queue_parameters = Azure::ARM::ServiceBus::Models::QueueCreateOrUpdateParameters.new
    queue_parameters.location = 'westus'

    # Create new namespace
    namespace_resource = @service_bus_client.namespaces.create_or_update(@resource_group.name, namespace_name, namespace_parameters)
    expect(namespace_resource).not_to be_nil
    expect(namespace_resource).to be_a(Azure::ARM::ServiceBus::Models::NamespaceResource)
    expect(namespace_resource.name).to eq(namespace_name)
    expect(namespace_resource.provisioning_state).to eq("Succeeded")

    # Create a queue
    queue_resource = @service_bus_client.queues.create_or_update(@resource_group.name, namespace_name, queue_name, queue_parameters)
    expect(queue_resource).not_to be_nil
    expect(queue_resource).to be_a(Azure::ARM::ServiceBus::Models::QueueResource)
    expect(queue_resource.name).to eq(queue_name)
    expect(queue_resource.status).to eq("Active")

    # list a queue
    array_of_queue_resources = @service_bus_client.queues.list_all(@resource_group.name, namespace_name)
    expect(array_of_queue_resources).not_to be_nil
    queue_resource = array_of_queue_resources[0]
    expect(queue_resource).not_to be_nil
    expect(queue_resource).to be_a(Azure::ARM::ServiceBus::Models::QueueResource)
    expect(queue_resource.name).to eq(queue_name)
    expect(queue_resource.status).to eq("Active")

    # Delete a queue
    queue = @service_bus_client.queues.delete(@resource_group.name, namespace_name, queue_name)
    expect(queue).to be_nil
  end
end
