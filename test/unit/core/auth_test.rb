#-------------------------------------------------------------------------
# Copyright 2012 Microsoft Corporation
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
require "test_helper"
require "azure/core/auth/authorizer"

describe Azure::Core::Auth do
  before do
    uri = double(:path=> "/path")

    @signer = MiniTest::Mock.new
    @signer.stub(:name, "SharedKey")
    @signer.stub(:sign, "Base64String==")

    @request = MiniTest::Mock.new
    @request.stub(:method, :get)
    @request.stub(:uri, uri)
    @request.stub(:headers, {})
  end

  it "generates a proper Authorization header" do
    auth = Azure::Core::Auth::Authorizer.new("account-name")
    auth.sign(@request, @signer)

    @request.headers["Authorization"].must_equal "SharedKey account-name:Base64String=="
  end
end
