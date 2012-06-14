require "integration/test_helper"

describe "Authorizing against the server" do
  let :uri do
    URI(Azure.config.service_bus_host + "/$Resources/Topics")
  end

  it "can make a simple request using Wrap" do
    auth = Azure::ServiceBus::Auth::Authorizer.new
    signer = Azure::ServiceBus::Auth::Wrap.new

    request = Azure::Request.new(:get, uri)
    auth.sign(request, signer)
    response = request.request!

    response.code.must_equal 200
  end
end
