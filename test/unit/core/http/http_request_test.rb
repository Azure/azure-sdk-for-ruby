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
require 'test_helper'
require 'azure/core/http/http_request'

describe Azure::Core::Http::HttpRequest do
  let(:uri) { URI('http://example.com') }

  describe ' default_headers ' do
    subject do
      Azure::Core::Http::HttpRequest.new(:get, uri, body: nil, current_time: 'Thu, 04 Oct 2012 06:38:27 GMT')
    end

    it 'sets the x-ms-date header to the current_time' do
      subject.headers['x-ms-date'] = 'Thu, 04 Oct 2012 06:38:27 GMT'
    end

    it 'sets the x-ms-version header to the current API version' do
      subject.headers['x-ms-version'] = '2011-08-18'
    end

    it 'sets the DataServiceVersion header to the current API version' do
      subject.headers['DataServiceVersion'] = '1.0;NetFx'
    end

    it 'sets the MaxDataServiceVersion header to the current max` API version' do
      subject.headers['MaxDataServiceVersion'] = '2.0;NetFx'
    end
  end

  describe 'when passed custom headers' do
    subject do
      Azure::Core::Http::HttpRequest.new(:get,
                                         uri,
                                         body: nil,
                                         headers: {
                                             'blah' => 'something',
                                             'x-ms-version' => '123'
                                         })
    end

    it 'should have overridden the value of x-ms-version' do
      subject.headers['x-ms-version'].must_equal '123'
    end

    it 'should have added in the blah = something header' do
      subject.headers['blah'].must_equal 'something'
    end

  end

  describe ' when passed a body ' do
    subject do
      Azure::Core::Http::HttpRequest.new(:post, uri, body: '<body/>')
    end

    it 'sets the default Content-Type header' do
      subject.headers['Content-Type'].must_equal 'application/atom+xml; charset=utf-8'
    end

    it 'sets the Content-Length header' do
      subject.headers['Content-Length'].must_equal '7'
    end

    it 'sets the Content-MD5 header to a Base64 encoded representation of the MD5 hash of the body' do
      subject.headers['Content-MD5'].must_equal 'PNeJy7qyzV4XUoBBHkVu0g=='
    end
  end

  describe ' when the body is nil ' do
    subject do
      Azure::Core::Http::HttpRequest.new(:get, uri)
    end

    it 'leaves the Content-Type, Content-Length, and Content-MD5 headers blank' do
      subject.headers['Content-Length'].must_equal '0'
      subject.headers['Content-MD5'].must_be_nil
    end
  end

  describe '#call' do

    let(:mock_conn) do
      conn = mock
      conn.expects(:run_request, [uri, nil, nil]).returns(mock_res)
      conn
    end

    subject do
      sub = Azure::Core::Http::HttpRequest.new(:get, uri)
      sub.expects(:http_setup).returns(mock_conn)
      sub
    end

    describe 'on success' do
      let(:body) { '</body>' }

      let(:mock_res) do
        res = mock
        res.expects(:success?).returns(true)
        res.expects(:body).returns(body)
        res
      end

      it 'should return a response' do
        subject.call.body.must_equal(body)
      end
    end

    describe 'on failure' do
      let(:body) { 'OH NO!!' }

      let(:mock_res) do
        res = mock
        res.expects(:success?).returns(false).at_least_once
        res.expects(:status).returns(401).at_least_once
        res.expects(:body).returns(body).at_least_once
        res
      end

      it 'should return a response' do
       -> { subject.call }.must_raise(Azure::Core::Http::HTTPError)
      end
    end
  end
end
