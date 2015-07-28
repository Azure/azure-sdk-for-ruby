#-------------------------------------------------------------------------
# # Copyright (c) Microsoft and contributors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#--------------------------------------------------------------------------

require 'azure_resource_management'
require 'azure_storage_management'
require 'ms_rest_azure'

include MsRestAzure
include Azure::ARM::Resources
include Azure::ARM::Storage

def create_resource_group
  resource_group_name = get_random_name('RubySDKTest_')
  params = Azure::ARM::Resources::Models::ResourceGroup.new()
  params.location = 'westus'

  RESOURCES_CLIENT.resource_groups.create_or_update(resource_group_name, params).value!.body
end

def delete_resource_group(name)
  RESOURCES_CLIENT.resource_groups.delete(name).value!
end

def get_random_name(prefix, length = 1000)
  prefix + SecureRandom.uuid.downcase.delete('^a-zA-Z0-9')[0...length - prefix.length]
end

tenant_id = ENV['azure_tenant_id']
client_id = ENV['azure_client_id']
secret = ENV['azure_client_secret']
subscription_id = ENV['azure_subscription_id']

credentials = AzureApplicationCredentials.new(tenant_id, client_id, secret)
STORAGE_CLIENT = StorageManagementClient.new(credentials)
STORAGE_CLIENT.subscription_id = subscription_id

RESOURCES_CLIENT = ResourceManagementClient.new(credentials)
RESOURCES_CLIENT.subscription_id = subscription_id
