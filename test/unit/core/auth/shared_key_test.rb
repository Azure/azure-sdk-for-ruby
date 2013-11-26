#-------------------------------------------------------------------------
# # Copyright (c) Microsoft and contributors. All rights reserved.
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
require "azure/core/auth/shared_key"

describe Azure::Core::Auth::SharedKey do
  subject { Azure::Core::Auth::SharedKey.new "account-name", "YWNjZXNzLWtleQ==" }
  
  let(:method) { "POST" }
  let(:uri) { URI.parse "http://dummy.uri/resource" }
  let(:headers) do
    {
      "Content-Encoding"=> "foo",
      "Content-Language"=> "foo",
      "Content-Length"=> "foo",
      "Content-MD5"=> "foo",
      "Content-Type"=> "foo",
      "Date"=> "foo",
      "If-Modified-Since"=> "foo",
      "If-Match"=> "foo",
      "If-None-Match"=> "foo",
      "If-Unmodified-Since"=> "foo",
      "Range"=> "foo", 
      "x-ms-ImATeapot"=> "teapot",
      "x-ms-ShortAndStout"=>"True"
    }
  end

  describe "sign" do
    it "creates a signature from the provided HTTP method, uri, and a specific set of standard headers" do
      subject.sign(method, uri, headers).must_equal "account-name:vcdxlDVoE1QvJerkg0ci3Wlnj2Qq8yzlsrkRf5dEU/I="
    end
  end
  
  describe "canonicalized_headers" do
    it "creates a canonicalized header string" do
      subject.canonicalized_headers(headers).must_equal "x-ms-imateapot:teapot\nx-ms-shortandstout:True"
    end
  end

  describe "canonicalized_resource" do
    it "creates a canonicalized resource string" do
      subject.canonicalized_resource(uri).must_equal "/account-name/resource"
    end
  end
end
