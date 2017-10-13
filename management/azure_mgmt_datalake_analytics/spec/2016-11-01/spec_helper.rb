# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require File.join(File.dirname(__FILE__), '../../../../vcr_helper')
require 'azure_mgmt_resources'
require 'azure_mgmt_datalake_store'
require 'azure_mgmt_datalake_analytics'
require 'ms_rest_azure'

include MsRest
include MsRestAzure
include Azure::Resources::Mgmt::V2017_05_10
include Azure::DataLakeStore::Mgmt::V2016_11_01
include Azure::DataLakeAnalytics::Mgmt::V2016_11_01

class ResourceHelper
  @@resource_group_name = 'RubySDKTest_azure_mgmt_dl_analytics'

  attr_reader :resource_client, :dls_acc_client, :dla_acc_client

  def initialize
    tenant_id = ENV['AZURE_TENANT_ID']
    client_id = ENV['AZURE_CLIENT_ID']
    secret = ENV['AZURE_CLIENT_SECRET']
    @subscription_id = ENV['AZURE_SUBSCRIPTION_ID']

    token_provider = ApplicationTokenProvider.new(tenant_id, client_id, secret)
    @credentials = TokenCredentials.new(token_provider)

    VCR.configure do |config|
      config.cassette_library_dir = "spec/2016-11-01/vcr_cassettes"
    end
  end

  def resource_client
    if @resource_client.nil?
      @resource_client = ResourceManagementClient.new(@credentials)
      @resource_client.subscription_id = @subscription_id
      @resource_client.long_running_operation_retry_timeout = ENV.fetch('RETRY_TIMEOUT', 30).to_i
    end
    @resource_client
  end

  def dls_acc_client
    if @dls_acc_client.nil?
      @dls_acc_client = Azure::DataLakeStore::Mgmt::V2016_11_01::DataLakeStoreAccountManagementClient.new(@credentials)
      @dls_acc_client.subscription_id = @subscription_id
      @dls_acc_client.long_running_operation_retry_timeout = ENV.fetch('RETRY_TIMEOUT', 30).to_i
    end
    @dls_acc_client
  end

  def dla_acc_client
    if @dla_acc_client.nil?
      @dla_acc_client = Azure::DataLakeAnalytics::Mgmt::V2016_11_01::DataLakeAnalyticsAccountManagementClient.new(@credentials)
      @dla_acc_client.subscription_id = @subscription_id
      @dla_acc_client.long_running_operation_retry_timeout = ENV.fetch('RETRY_TIMEOUT', 30).to_i
    end
    @dla_acc_client
  end

  def create_resource_group
    params = Azure::Resources::Mgmt::V2017_05_10::Models::ResourceGroup.new()
    params.location = 'East US 2'

    resource_client.resource_groups.create_or_update(@@resource_group_name, params)
  end

  def delete_resource_group(name)
    resource_client.resource_groups.delete(name)
  end

  def create_datalake_store_account(name)
    dsl_acc = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::DataLakeStoreAccount.new
    dsl_acc.name = name
    dsl_acc.location = 'East US 2'
    dls_acc_client.account.create(@@resource_group_name, name, dsl_acc)
  end

  def create_datalake_analysis_account(analytics_acc_name, store_acc_name)
    analytics_acc = Models::DataLakeAnalyticsAccount.new
    analytics_acc.name = analytics_acc_name
    analytics_acc.location = 'East US 2'

    dla_acc_prop = Models::DataLakeAnalyticsAccountProperties.new
    dla_acc_prop.default_data_lake_store_account = store_acc_name
    dla_acc_info = Models::DataLakeStoreAccountInfo.new
    dla_acc_info.name = store_acc_name

    dla_acc_prop.data_lake_store_accounts = [dla_acc_info]
    analytics_acc.properties = dla_acc_prop

    dla_acc_client.account.create(@@resource_group_name, analytics_acc_name, analytics_acc)
  end
end