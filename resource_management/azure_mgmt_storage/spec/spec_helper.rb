# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'dotenv'
Dotenv.load(File.join(File.dirname(__FILE__), '../../.env'))

require 'azure_mgmt_resources'
require 'azure_mgmt_storage'
require 'ms_rest_azure'

include MsRest
include MsRestAzure
include Azure::ARM::Resources
include Azure::ARM::Storage

def create_resource_group
  resource_group_name = get_random_name('RubySDKTest_')
  params = Azure::ARM::Resources::Models::ResourceGroup.new
  params.location = 'westus'

  RESOURCES_CLIENT.resource_groups.create_or_update(resource_group_name, params).value!.body
end

def delete_resource_group(name)
  RESOURCES_CLIENT.resource_groups.delete(name).value!
end

def get_random_name(prefix, length = 1000)
  prefix + SecureRandom.uuid.downcase.delete('^a-zA-Z0-9')[0...length - prefix.length]
end

tenant_id = ENV['AZURE_TENANT_ID']
client_id = ENV['AZURE_CLIENT_ID']
secret = ENV['AZURE_CLIENT_SECRET']
subscription_id = ENV['AZURE_SUBSCRIPTION_ID']

token_provider = ApplicationTokenProvider.new(tenant_id, client_id, secret)
credentials = TokenCredentials.new(token_provider)

STORAGE_CLIENT = StorageManagementClient.new(credentials)
STORAGE_CLIENT.subscription_id = subscription_id

RESOURCES_CLIENT = ResourceManagementClient.new(credentials)
RESOURCES_CLIENT.subscription_id = subscription_id
