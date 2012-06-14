require "test_helper"
require "azure/auth"

describe Azure::Auth do
  before do
    uri = double(path: "/path")

    @signer = MiniTest::Mock.new
    @signer.stub(:name, "SharedKey")
    @signer.stub(:sign, "Base64String==")

    @request = MiniTest::Mock.new
    @request.stub(:method, :get)
    @request.stub(:uri, uri)
    @request.stub(:headers, {})
  end

  it "generates a proper Authorization header" do
    auth = Azure::Auth.new("account-name")
    auth.sign(@request, @signer)

    @request.headers["Authorization"].must_equal "SharedKey account-name:Base64String=="
  end
end
