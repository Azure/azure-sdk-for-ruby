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
require "azure/service/storage_service"
require "azure/core/http/http_request"
require "azure/core/http/signer_filter"
require "azure/service/storage_service_properties"

describe Azure::Service::StorageService do

  let(:uri){ URI.parse "http://dummy.uri/resource" }
  let(:method){ :get }

  subject do
    storage_service = Azure::Service::StorageService.new
    storage_service.host = "http://dumyhost.uri"
    storage_service
  end

  describe "#call" do
    let(:mock_request){ mock() }
    let(:mock_signer_filter){ mock() }

    before do 
      Azure::Core::Http::HttpRequest.stubs(:new).with(method, uri, nil).returns(mock_request)
      Azure::Core::Http::SignerFilter.stubs(:new).returns(mock_signer_filter)

      mock_request.expects(:call)
    end

    it "adds a SignerFilter to the HTTP pipeline" do
      mock_request.expects(:with_filter).with(mock_signer_filter)
      subject.call(method, uri)
    end

    describe "when passed the optional headers arguement" do
      before do
        mock_request.expects(:with_filter).with(mock_signer_filter)
      end

      let(:mock_headers) {{ 
        "Other-Header"=>"SomeValue", 
        "Custom-Header"=>"PreviousValue",
        "connection"=>"PreviousValue"
      }}

      it "merges the custom headers with the HttpRequest headers" do
        mock_request.expects(:headers).returns(mock_headers).at_least(2)
        subject.call(method, uri, nil, { "Custom-Header"=>"CustomValue"} )

        mock_headers["Other-Header"].must_equal "SomeValue"
        mock_headers["Custom-Header"].must_equal "CustomValue"
        mock_headers["connection"].must_equal "keep-alive"
      end
    end

    describe "when passed the optional body arguement" do
      before do
        mock_request.expects(:with_filter).with(mock_signer_filter)
      end

      it "passes the body to the to HttpRequest" do
        Azure::Core::Http::HttpRequest.stubs(:new).with(method, uri, 'body').returns(mock_request)
        subject.call(method, uri, "body")
      end
    end

    describe "when with_filter was called" do
      before do
        mock_request.expects(:with_filter).with(mock_signer_filter)
      end

      it "builds the HTTP pipeline by passing the filters to the HTTPRequest" do
        filter = mock()
        filter1 = mock()

        subject.with_filter filter
        subject.with_filter filter1

        mock_request.expects(:with_filter).with(filter)
        mock_request.expects(:with_filter).with(filter1)
        
        subject.call(method, uri)
      end
    end
  end

  describe "#with_filter" do
    it "appends filters to a list of filters that will be used in the #call method" do
      initial_length = subject.filters.length
      filter = mock()
      subject.with_filter filter
      subject.filters.length.must_equal initial_length + 1
    end

    it "accepts object instances as filters" do
      filter = mock()
      subject.with_filter filter
      subject.filters.last.must_equal filter
    end

    it "accepts blocks as filters" do
      subject.with_filter do |a,b| end
      subject.filters.last.class.must_equal Proc
    end

    it "preserves the order of the filters" do
      subject.filters = []
      
      filter = mock()
      filter1 = mock()
      
      subject.with_filter filter
      subject.with_filter filter1
      subject.with_filter do |a,b| end

      subject.filters.first.must_equal filter
      subject.filters[1].must_equal filter1
      subject.filters.last.class.must_equal Proc
    end
  end

  describe "#get_service_properties" do
    let(:service_properties_xml)  { Fixtures["storage_service_properties"] }
    let(:service_properties) { Azure::Service::StorageServiceProperties.new }
    let(:response) { 
      response = mock()
      response.stubs(:body).returns(service_properties_xml)
      response
    }

    let(:service_properties_uri) { URI.parse 'http://dummy.uri/service/properties' }

    before do 
      Azure::Service::Serialization.stubs(:service_properties_from_xml).with(service_properties_xml).returns(service_properties)
      subject.stubs(:service_properties_uri).returns(service_properties_uri)
      subject.stubs(:call).with(:get, service_properties_uri).returns(response)
    end

    it "calls the service_properties_uri method to determine the correct uri" do
      subject.expects(:service_properties_uri).returns(service_properties_uri)
      subject.get_service_properties
    end

    it "gets the response from the HTTP API" do
      subject.expects(:call).with(:get, service_properties_uri).returns(response)
      subject.get_service_properties
    end

    it "deserializes the response from xml" do
      Azure::Service::Serialization.expects(:service_properties_from_xml).with(service_properties_xml).returns(service_properties)
      subject.get_service_properties
    end

    it "returns a StorageServiceProperties instance" do
      result = subject.get_service_properties
      result.must_be_kind_of Azure::Service::StorageServiceProperties
    end
  end

  describe "#set_service_properties" do
    let(:service_properties_xml)  { Fixtures["storage_service_properties"] }
    let(:service_properties) { Azure::Service::StorageServiceProperties.new }
    let(:response) { 
      response = mock()
      response.stubs(:success?).returns(true)
      response
    }

    let(:service_properties_uri) { URI.parse 'http://dummy.uri/service/properties' }

    before do 
      Azure::Service::Serialization.stubs(:service_properties_to_xml).with(service_properties).returns(service_properties_xml)
      subject.stubs(:service_properties_uri).returns(service_properties_uri)
      subject.stubs(:call).with(:put, service_properties_uri, service_properties_xml).returns(response)
    end

    it "calls the service_properties_uri method to determine the correct uri" do
      subject.expects(:service_properties_uri).returns(service_properties_uri)
      subject.set_service_properties service_properties
    end

    it "posts to the HTTP API" do
      subject.expects(:call).with(:put, service_properties_uri, service_properties_xml).returns(response)
      subject.set_service_properties service_properties
    end

    it "serializes the StorageServiceProperties object to xml" do
      Azure::Service::Serialization.expects(:service_properties_to_xml).with(service_properties).returns(service_properties_xml)
      subject.set_service_properties service_properties
    end

    it "returns nil on success" do
      result = subject.set_service_properties service_properties
      result.must_equal nil
    end
  end

  describe "service_properties_uri" do
    it "returns an instance of URI" do
      subject.service_properties_uri.must_be_kind_of URI
    end

    it "uses the value of the host property as the base of the url" do
      subject.service_properties_uri.to_s.must_include subject.host
      subject.host = "http://something.else"
      subject.service_properties_uri.to_s.must_include subject.host
    end

    it "sets a query string that specifies the storage service properties endpoint" do
      subject.service_properties_uri.query.must_include "restype=service&comp=properties"
    end
  end

  describe "#add_metadata_to_headers" do
    it "prefixes header names with x-ms-meta- but does not modify the values" do
      headers = {}
      subject.add_metadata_to_headers({"Foo"=> "Bar"}, headers)
      headers.keys.must_include "x-ms-meta-Foo"
      headers["x-ms-meta-Foo"].must_equal "Bar"
    end

    it "updates any existing x-ms-meta-* headers with the new values" do
      headers = { "x-ms-meta-Foo"=> "Foo"}
      subject.add_metadata_to_headers({"Foo"=> "Bar"}, headers)
      headers["x-ms-meta-Foo"].must_equal "Bar"
    end
  end

  describe "#generate_uri" do
    it "returns a URI instance" do
      subject.generate_uri().must_be_kind_of ::URI
    end

    describe "when called with no arguments" do
      it "returns the StorageService host URL" do
        subject.generate_uri().to_s.must_equal "http://dumyhost.uri/"
      end
    end

    describe "when passed an optional path" do
      it "adds the path to the host url" do
        subject.generate_uri("resource/entity/").path.must_equal "/resource/entity/"
      end

      it "correctly joins the path if the host url contained a path" do
        subject.host = "http://dummy.uri/host/path"
        subject.generate_uri("resource/entity/").path.must_equal "/host/path/resource/entity/"
      end
    end

    describe "when passed an Hash of query parameters" do

      it "encodes the keys" do
        subject.generate_uri('',{"key !" => "value"}).query.must_include "key+%21=value"
      end

      it "encodes the values" do
        subject.generate_uri('',{"key" => "value !"}).query.must_include "key=value+%21"
      end

      it "sets the query string to the encoded result" do
        subject.generate_uri('',{ "key" => "value !", "key !"=>"value"}).query.must_equal "key=value+%21&key+%21=value"
      end

      describe "when the query parameters include a timeout key" do
        it "overrides the default timeout" do
          subject.generate_uri('', {"timeout" => 45}).query.must_equal "timeout=45"
        end
      end

      describe "when the query parameters are nil" do
        it "does not include any query parameters" do
          subject.generate_uri('', nil).query.must_equal nil
        end
      end
    end
  end
end