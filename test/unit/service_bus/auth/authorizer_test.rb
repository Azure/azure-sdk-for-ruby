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
require "azure/service_bus/auth/authorizer"
require "azure/service_bus/auth/wrap"

describe Azure::ServiceBus::Auth::Authorizer do
  before do
    uri = double(:path=> "/path")

    @access_token = "THEACCESSTOKEN"

    @token_manager = MiniTest::Mock.new
    @token_manager.stub(:get_access_token, @access_token)

    @signer = Azure::ServiceBus::Auth::Wrap.new('issuer', 'access_key', @token_manager)

    @request = MiniTest::Mock.new
    @request.stub(:uri, uri)
    @request.stub(:headers, {})
  end

  it "generates a proper Authorization header" do
    auth = Azure::ServiceBus::Auth::Authorizer.new
    auth.sign(@request, @signer)

    @request.headers["Authorization"].must_equal "WRAP access_token=\"#{@access_token}\""
  end
end
