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
require "azure/core/http_request"

describe Azure::Core::HttpRequest do
  describe "#calculate_headers" do
    # let :clock do
    #   clock = MiniTest::Mock.new
    #   clock.stub(:now, "Sun, 03 May 2012 21:21:52 GMT")
    #   clock
    # end

    # it "sets the Date and x-ms-date headers" do
    #   request = Azure::Core::HttpRequest.new(:get, URI("/"), nil, clock)

    #   request.headers["x-ms-date"].must_equal clock.now
    # end

    it "sets the Content-Type" do
      request = Azure::Core::HttpRequest.new(:get, URI("/"), "<body/>")

      request.headers["Content-Type"].must_equal "application/atom+xml; charset=utf-8"
    end

    it "sets the Content-Type, Length, and MD5 if passed a body" do
      request = Azure::Core::HttpRequest.new(:get, URI("/"), "<body/>")

      request.headers["Content-Length"].must_equal "7"
      request.headers["Content-MD5"].must_equal Base64.strict_encode64(Digest::MD5.digest("<body/>"))
    end

    it "leaves the Content-Type, Length, and MD5 blank if the body is nil" do
      request = Azure::Core::HttpRequest.new(:get, URI("/"))

      request.headers["Content-Length"].must_equal "0"
      request.headers["Content-MD5"].must_be_nil
    end
  end
end
