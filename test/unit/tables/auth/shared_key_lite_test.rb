require "test_helper"
require "azure/tables/auth/shared_key_lite"

describe Azure::Tables::Auth::SharedKeyLite do
  subject do
    Azure::Tables::Auth::SharedKeyLite.new(
      "account-name",
      Base64.strict_encode64("access-key")
    )
  end

  it "#signable_string includes the relevant bits" do
    string = subject.signable_string(:get, double(path: "/path"), {
      "Date" => "Time"
    })

    string.must_equal "Time\n/account-name/path"
  end

  it "#signable_string requires a Date or x-ms-date header" do
    proc {
      subject.signable_string(:get, double(path: "/path"), {})
    }.must_raise KeyError, "Headers must include Date"
  end

  it "#sign will return a Base64-encoded, HMAC/SHA256-encrypted version of the signable string" do
    def subject.signable_string(*)
      "TestString"
    end

    expected = Base64.strict_encode64(
      OpenSSL::HMAC.digest("sha256", "access-key", "TestString")
    )

    actual = subject.sign(MiniTest::Mock.new, MiniTest::Mock.new, MiniTest::Mock.new)

    actual.must_equal expected
  end
end
