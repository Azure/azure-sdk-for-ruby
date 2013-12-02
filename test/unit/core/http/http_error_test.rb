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
require "azure/core/http/http_error"

describe Azure::Core::Http::HTTPError do
  let :http_response do
    double(:body=> Fixtures[:http_error], :status_code=> 409, :uri=>'http://dummy.uri')
  end

  subject do
    Azure::Core::Http::HTTPError.new(http_response)
  end

  it "is an instance of Azure::Core::Error" do
    subject.must_be_kind_of Azure::Core::Error
  end

  it "lets us see the original uri" do
    subject.uri.must_equal 'http://dummy.uri'
  end

  it "lets us see the errors'status code" do
    subject.status_code.must_equal 409
  end

  it "lets us see the error's type" do
    subject.type.must_equal "TableAlreadyExists"
  end

  it "lets us see the error's description" do
    subject.description.must_equal "The table specified already exists."
  end

  it "generates an error message that wraps both the type and description" do
    subject.message.must_equal "TableAlreadyExists (409): The table specified already exists."
  end

  it "sets the type to unknown if the response body is not an XML" do
    http_response.body = "\r\nInvalid request\r\n"

    subject.type.must_equal "Unknown"
    subject.description.must_equal "Invalid request"
  end
end
