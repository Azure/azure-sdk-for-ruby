# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require File.join(File.dirname(__FILE__), '../../../../vcr_helper')
require 'azure_mgmt_resources'
require 'azure_mgmt_service_bus'

class ResourceHelper
  attr_reader :service_bus_client, :resource_client

  def initialize
    tenant_id = ENV['AZURE_TENANT_ID']
    client_id = ENV['AZURE_CLIENT_ID']
    secret = ENV['AZURE_CLIENT_SECRET']
    @subscription_id = ENV['AZURE_SUBSCRIPTION_ID']

    token_provider = MsRestAzure::ApplicationTokenProvider.new(tenant_id, client_id, secret)
    @credentials = MsRest::TokenCredentials.new(token_provider)

    VCR.configure do |config|
      config.cassette_library_dir = 'spec/2017-04-01/vcr_cassettes'
    end
  end

  def service_bus_client
    if @service_bus_client.nil?
      @service_bus_client = Azure::ServiceBus::Mgmt::V2017_04_01::ServiceBusManagementClient.new(@credentials)
      @service_bus_client.long_running_operation_retry_timeout = ENV.fetch('RETRY_TIMEOUT', 30).to_i
      @service_bus_client.subscription_id = @subscription_id
    end
    @service_bus_client
  end

  def resource_client
    if @resource_client.nil?
      @resource_client = Azure::Resources::Mgmt::V2017_05_10::ResourceManagementClient.new(@credentials)
      @resource_client.subscription_id = @subscription_id
      @resource_client.long_running_operation_retry_timeout = ENV.fetch('RETRY_TIMEOUT', 30).to_i
    end
    @resource_client
  end

  def create_resource_group
    resource_group_name = 'RubySDKTest_azure_mgmt_service_bus'
    params = Azure::Resources::Mgmt::V2017_05_10::Models::ResourceGroup.new
    params.location = 'westus'

    resource_client.resource_groups.create_or_update(resource_group_name, params)
  end

  def delete_resource_group(name)
    resource_client.resource_groups.delete(name)
  end
end
