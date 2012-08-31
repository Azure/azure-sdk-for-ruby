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
require "integration/test_helper"

describe "Authorizing against the server" do
  let :uri do
    URI(Azure.config.service_bus_host + "/$Resources/Topics")
  end

  it "can make a simple request using Wrap" do
    auth = Azure::ServiceBus::Auth::Authorizer.new
    signer = Azure::ServiceBus::Auth::Wrap.new

    request = Azure::Core::Request.new(:get, uri)
    auth.sign(request, signer)
    response = request.request!

    response.status_code.must_equal 200
  end
end
