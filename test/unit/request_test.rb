require "test_helper"
require "azure/request"

describe Azure::Request do
  describe "#calculate_headers" do
    let :clock do
      clock = MiniTest::Mock.new
      clock.stub(:now, "Sun, 03 May 2012 21:21:52 GMT")
      clock
    end

    it "sets the Date and x-ms-date headers" do
      request = Azure::Request.new(:get, URI("/"), nil, clock)

      request.headers["x-ms-date"].must_equal clock.now
    end

    it "sets the Content-Type" do
      request = Azure::Request.new(:get, URI("/"), "<body/>")

      request.headers["Content-Type"].must_equal "application/atom+xml; charset=utf-8"
    end

    it "sets the Content-Type, Length, and MD5 if passed a body" do
      request = Azure::Request.new(:get, URI("/"), "<body/>")

      request.headers["Content-Length"].must_equal "7"
      request.headers["Content-MD5"].must_equal Base64.strict_encode64(Digest::MD5.digest("<body/>"))
    end

    it "leaves the Content-Type, Length, and MD5 blank if the body is nil" do
      request = Azure::Request.new(:get, URI("/"))

      request.headers["Content-Length"].must_equal "0"
      request.headers["Content-MD5"].must_be_nil
    end
  end
end
