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
include Azure::ARM::Compute

describe UsageOperations do
  before(:all) do
    @client = COMPUTE_CLIENT.usage_operations
  end

  it 'should list usages' do
    result = @client.list('westus').value!
    expect(result.response).to be_a Net::HTTPOK
    expect(result.body).not_to be_nil
    expect(result.body.value).to be_a Array
  end
end