require 'test_helper'
require "azure/response"

describe Azure::Response do
  it "can act as an error" do
    http_response = MiniTest::Mock.new
    http_response.stub(:body, Fixtures[:error])
    http_response.stub(:code, "409")

    response = Azure::Response.new(http_response)

    assert_raises(Azure::HTTPError) do
      raise response
    end
  end

  it "converts net/http headers into strings" do
    http_response = MiniTest::Mock.new
    http_response.stub(:to_hash, { "Content-Type" => ["text/xml"] })

    response = Azure::Response.new(http_response)
    response.headers["Content-Type"].must_equal "text/xml"
  end

  describe Azure::Response::HeaderHash do
    subject do
      Azure::Response::HeaderHash.new(
        "FooBar" => ["1"], "bazqux" => ["2"], "QUXFOO" => ["3"]
      )
    end

    it "returns the header values as strings, not arrays" do
      subject["FooBar"].must_equal "1"
      subject["bazqux"].must_equal "2"
      subject["QUXFOO"].must_equal "3"
    end

    it "obtains keys in a case-insensitive fashion" do
      subject["foobar"].must_equal "1"
      subject["BaZqUx"].must_equal "2"
    end
  end
end
