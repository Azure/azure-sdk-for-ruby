require "integration/test_helper"

describe "Authorizing against the server" do
  let :uri do
    URI(Azure.config.table_host + "/Tables")
  end

  it "can make a simple request using SharedKey" do
    auth = Azure::Auth.new
    signer = Azure::Tables::Auth::SharedKey.new

    request = Azure::Request.new(:get, uri)
    auth.sign(request, signer)
    response = request.request!

    response.code.must_equal 200
  end

  it "can make a simple request using SharedKeyLite" do
    auth = Azure::Auth.new
    signer = Azure::Tables::Auth::SharedKeyLite.new

    request = Azure::Request.new(:get, uri)
    auth.sign(request, signer)
    response = request.request!

    response.code.must_equal 200
  end
end
