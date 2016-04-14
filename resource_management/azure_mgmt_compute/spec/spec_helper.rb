# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require File.join(File.dirname(__FILE__), '../../vcr_helper')
require 'azure_mgmt_resources'
require 'azure_mgmt_compute'
require 'ms_rest_azure'
require 'azure_mgmt_storage'
require 'azure_mgmt_network'

include MsRest
include MsRestAzure
include Azure::ARM::Compute
include Azure::ARM::Compute::Models
include Azure::ARM::Network
include Azure::ARM::Resources
include Azure::ARM::Storage

class ResourceHelper
  attr_accessor :compute_client
  attr_accessor :network_client
  attr_accessor :resource_client
  attr_accessor :storage_client

  def initialize
    tenant_id = ENV['AZURE_TENANT_ID']
    client_id = ENV['AZURE_CLIENT_ID']
    secret = ENV['AZURE_CLIENT_SECRET']
    subscription_id = ENV['AZURE_SUBSCRIPTION_ID']

    token_provider = ApplicationTokenProvider.new(tenant_id, client_id, secret)
    credentials = TokenCredentials.new(token_provider)

    @compute_client = ComputeManagementClient.new(credentials)
    @compute_client.long_running_operation_retry_timeout = ENV['RETRY_TIMEOUT'].to_i || 30
    @compute_client.subscription_id = subscription_id

    @network_client = NetworkManagementClient.new(credentials)
    @network_client.long_running_operation_retry_timeout = ENV['RETRY_TIMEOUT'].to_i || 30
    @network_client.subscription_id = subscription_id

    @resource_client = ResourceManagementClient.new(credentials)
    @resource_client.subscription_id = subscription_id
    @resource_client.long_running_operation_retry_timeout = ENV['RETRY_TIMEOUT'].to_i || 30

    @storage_client = StorageManagementClient.new(credentials)
    @storage_client.long_running_operation_retry_timeout = ENV['RETRY_TIMEOUT'].to_i || 30
    @storage_client.subscription_id = subscription_id
  end

  def create_resource_group
    resource_group_name = 'RubySDKTest_azure_mgmt_compute'
    params = Azure::ARM::Resources::Models::ResourceGroup.new()
    params.location = 'westus'

    @resource_client.resource_groups.create_or_update(resource_group_name, params).value!.body
  end

  def delete_resource_group(name)
    @resource_client.resource_groups.delete(name).value!
  end

  def create_availability_set(client, resource_group)
    availabilitySetName = 'test-availability-set'
    params = build_availability_set_parameters
    client.create_or_update(resource_group.name, availabilitySetName, params).value!.body
  end

  def build_availability_set_parameters
    params = AvailabilitySet.new()
    props = AvailabilitySetProperties.new()
    params.properties = props
    params.location = 'westus'

    params
  end
end

class String
  def to_b?
    !self.to_i.zero?
  end
end

