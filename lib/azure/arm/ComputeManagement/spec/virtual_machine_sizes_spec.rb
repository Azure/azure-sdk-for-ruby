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
require_relative 'availability_sets_shared'

include MsRestAzure
include Azure::ARM::Compute

describe VirtualMachineSizes do
  before(:all) do
    @location = 'westus'
    @client = COMPUTE_CLIENT.virtual_machine_sizes
  end

  it 'should list available virtual machine sizes' do
    result = @client.list(@location).value!
    expect(result.response).to be_a Net::HTTPOK
    expect(result.body).not_to be_nil
    expect(result.body.value).to be_a Array
  end
end