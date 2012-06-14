require "integration/test_helper"
require "azure/core/auth/shared_key"

describe "Authorizing against the server" do
  let :uri do
    URI(Azure.config.blob_host + "/?comp=list")
  end

  it "can make a simple request using SharedKey" do
    auth = Azure::Auth.new
    signer = Azure::Core::Auth::SharedKey.new

    request = Azure::Request.new(:get, uri)
    auth.sign(request, signer)
    response = request.request!

    response.code.must_equal 200
  end
end
