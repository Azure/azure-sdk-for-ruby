require "test_helper"
require "azure/service_bus/auth/authorizer"
require "azure/service_bus/auth/wrap"

describe Azure::ServiceBus::Auth::Authorizer do
  before do
    uri = double(path: "/path")

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
