#-------------------------------------------------------------------------
# Copyright 2015 Microsoft Open Technologies, Inc.
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

require_relative 'test_helper'

include MsRestAzure
include Azure::ARM::Resources

describe ResourceManagementClient do

  before(:all) do
    @client = RESOURCES_CLIENT.resource_provider_operation_details
    @resource_api_version = '2015-07-02'
    @providers_client = RESOURCES_CLIENT.providers
  end

  it 'should list provider operation details' do
    providers = RESOURCES_CLIENT.providers.list().value!.body.value
    targetProvider = providers.detect {|item| item.registration_state == 'Registered' }

    result = @client.list(targetProvider.namespace, @resource_api_version).value!
    expect(result.body.value).not_to be_nil
    expect(result.body.value).to be_a(Array)
  end

end
