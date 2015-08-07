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
require 'azure_compute_management'
require 'ms_rest_azure'
require 'azure_storage_management'
require 'azure_network_management'

include Azure::ARM::Storage

include MsRest
include MsRestAzure
include Azure::ARM::Resources
include Azure::ARM::Compute
include Azure::ARM::Network

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
  prefix + SecureRandom.uuid.downcase.delete('^a-zA-Z0-9')[0...length]
end

tenant_id = ENV['azure_tenant_id']
client_id = ENV['azure_client_id']
secret = ENV['azure_client_secret']
subscription_id = ENV['azure_subscription_id']
run_long_task_value = ENV['run_long_tasks']
RUN_LONG_TASKS = run_long_task_value.nil? ? false : run_long_task_value.to_b?

token_provider = ApplicationTokenProvider.new(tenant_id, client_id, secret)
credentials = TokenCredentials.new(token_provider)

RESOURCES_CLIENT = ResourceManagementClient.new(credentials)
RESOURCES_CLIENT.subscription_id = subscription_id

COMPUTE_CLIENT = ComputeManagementClient.new(credentials)
COMPUTE_CLIENT.subscription_id = subscription_id

STORAGE_CLIENT = StorageManagementClient.new(credentials)
STORAGE_CLIENT.subscription_id = subscription_id

NETWORK_CLIENT = NetworkResourceProviderClient.new(credentials)
NETWORK_CLIENT.subscription_id = subscription_id
