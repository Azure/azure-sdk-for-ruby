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
