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
require "azure/service_bus/auth/wrap_token"

describe Azure::ServiceBus::Auth::WrapToken do

  describe ".parse" do
    let :response do
      Fixtures["sb_get_access_token_response.txt"].read
    end

    let :expected_token do
      "net.windows.servicebus.action=Listen%2cManage%2cSend&http%3a%2f%2fschemas.microsoft.com%2faccesscontrolservice%2f2010%2f07%2fclaims%2fidentityprovider=https%3a%2f%2fgmonfort-sb.accesscontrol.windows.net%2f&Audience=http%3a%2f%2fgmonfort.servicebus.windows.net%2f%24Resources%2fQueues&ExpiresOn=1338862002&Issuer=https%3a%2f%2fgmonfort-sb.accesscontrol.windows.net%2f&HMACSHA256=CFydD48JENdtcaha7TAcH8X4jXRKgFW6X7sRfbbrWBE%3d"
    end

    let :expected_expire_time do
     "1199"
    end

    subject do
      Azure::ServiceBus::Auth::WrapToken.parse(response)
    end

    it "parses the response and gets the correct values for each attribute" do
      subject.access_token.must_equal expected_token
      subject.expire_time.must_equal expected_expire_time
    end
  end
end
