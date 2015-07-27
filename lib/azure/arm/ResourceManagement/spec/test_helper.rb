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
require 'ms_rest_azure'

include MsRestAzure
include Azure::ARM::Resources

def create_resource_group
  resource_group_name = get_random_name('RubySDKTest_')
  params = Models::ResourceGroup.new()
  params.location = 'westus'

  Client.resource_groups.create_or_update(resource_group_name, params).value!.body
end

def delete_resource_group(name)
  Client.resource_groups.delete(name).value!
end

def get_random_name(prefix, length = 1000)
  prefix + SecureRandom.uuid.downcase.delete('^a-zA-Z0-9')[0...length - prefix.length]
end

ResourceGroup = 'RubySDKTest'

TenantId = ENV['AzureTenantId']
ClientId = ENV['AzureClientId']
Secret = ENV['AzureClientSecret']
SubscriptionId = ENV['AzureSubscriptionId']

credential = AzureApplicationCredentials.new(TenantId, ClientId, Secret)
Client = ResourceManagementClient.new(credential)
Client.subscription_id = SubscriptionId