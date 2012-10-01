#-------------------------------------------------------------------------
# Copyright 2012 Microsoft Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#--------------------------------------------------------------------------
require "test_helper"
require "azure/tables/auth/shared_key"

describe Azure::Tables::Auth::SharedKey do

  subject do
    Azure::Tables::Auth::SharedKey.new(
      "account-name",
      Base64.strict_encode64("access-key")
    )
  end

  it "#signable_string includes the relevant bits" do
    string = subject.signable_string(:get, double(:path => "/path"), {
      "Content-MD5"  => "Foo",
      "Content-Type" => "text/plain",
      "Date"         => "Time"
    })

    string.must_equal "GET\nFoo\ntext/plain\nTime\n/account-name/path"
  end

  it "#signable_string requires a Date or x-ms-date header" do
    error_type = RUBY_VERSION > "1.9" ? KeyError : IndexError
    proc {
      subject.signable_string(:get, double(:path=> "/path"), {
        "Content-MD5"  => "Foo",
        "Content-Type" => "text/plain"
      })
    }.must_raise error_type, "Headers must include Date"
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
