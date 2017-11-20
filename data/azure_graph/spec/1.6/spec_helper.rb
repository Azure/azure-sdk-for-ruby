# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require File.join(File.dirname(__FILE__), '../../../../vcr_helper')
require 'azure_graph'

include Azure::Graph::V1_6

class ResourceHelper
  attr_reader :graph_client

  # Please refer to https://msdn.microsoft.com/en-us/library/azure/hh974476.aspx#AppPrereqs for creating and adding
  # new app in Azure Active Directory with correct permissions using your regular Azure subscription
  def initialize
    tenant_id = ENV['AZURE_TENANT_ID']
    client_id = ENV['AZURE_CLIENT_ID']
    secret = ENV['AZURE_CLIENT_SECRET']
    @subscription_id = ENV['AZURE_SUBSCRIPTION_ID']

    # Create ActiveDirectoryServiceSettings for graphs token audience
    settings = MsRestAzure::ActiveDirectoryServiceSettings.new
    settings.authentication_endpoint = MsRestAzure::AzureEnvironments::AzureCloud.active_directory_endpoint_url
    settings.token_audience = MsRestAzure::AzureEnvironments::AzureCloud.active_directory_graph_resource_id

    token_provider = MsRestAzure::ApplicationTokenProvider.new(tenant_id, client_id, secret, settings)
    @credentials = MsRest::TokenCredentials.new(token_provider)

    VCR.configure do |config|
      config.cassette_library_dir = "spec/1.6/vcr_cassettes"
    end
  end

  def graph_client
    if @graph_client.nil?
      @graph_client = GraphRbacManagementClient.new(@credentials)
      @graph_client.long_running_operation_retry_timeout = ENV.fetch('RETRY_TIMEOUT', 30).to_i
      @graph_client.tenant_id = ENV['AZURE_TENANT_ID']
    end
    @graph_client
  end
end
