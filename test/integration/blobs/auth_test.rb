require "integration/test_helper"
require "azure/core/auth/shared_key"

describe "Authorizing against the server" do
  let :uri do
    URI(Azure::Core.config.blob_host + "/?comp=list")
  end

  it "can make a simple request using SharedKey" do
    auth = Azure::Core::Auth::Authorizer.new
    signer = Azure::Core::Auth::Strategies::SharedKey.new

    request = Azure::Core::Request.new(:get, uri)
    auth.sign(request, signer)
    response = request.request!

    response.code.must_equal 200
  end
end
