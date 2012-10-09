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
require 'azure/storage/blob/blob_service'
require 'azure/storage/blob/serialization'
require 'azure/storage/blob/container'

describe Azure::Storage::Blob::BlobService do
  
  subject { Azure::Storage::Blob::BlobService.new }
  let(:serialization) { Azure::Storage::Blob::Serialization }
  
  describe "#list_containers" do
    let(:method) { :get }
    let(:uri) { URI.parse "http://foo.com" }
    let(:response_body) { mock() }
    let(:response) { mock() }
    let(:container1) { Azure::Storage::Blob::Container.new }
    let(:container2) { Azure::Storage::Blob::Container.new }
    let(:container_list) { [container1, container2]}

    before { response.stubs(:body).returns(response_body) }

    it "returns a list of containers for the account" do
      subject.expects(:containers_uri).with({}).returns(uri)
      subject.expects(:call).with(method, uri).returns(response)
      serialization.expects(:container_enumeration_results_from_xml).with(response_body).returns(container_list)
      result = subject.list_containers
      result.must_equal container_list
    end
  end

  need_tests_for "create_container"
  need_tests_for "delete_container"
  need_tests_for "get_container_properties"
  need_tests_for "get_container_metadata"
  need_tests_for "get_container_acl"
  need_tests_for "set_container_acl"
  need_tests_for "set_container_metadata"
  need_tests_for "list_blobs"
  need_tests_for "create_page_blob"
  need_tests_for "create_blob_pages"
  need_tests_for "clear_blob_pages"
  need_tests_for "create_block_blob"
  need_tests_for "create_blob_block"
  need_tests_for "commit_blob_blocks"
  need_tests_for "list_blob_blocks"
  need_tests_for "get_blob_properties"
  need_tests_for "get_blob_metadata"
  need_tests_for "list_page_blob_ranges"
  need_tests_for "set_blob_properties"
  need_tests_for "set_blob_metadata"
  need_tests_for "get_blob"
  need_tests_for "delete_blob"
  need_tests_for "create_blob_snapshot"
  need_tests_for "copy_blob"
  need_tests_for "acquire_lease"
  need_tests_for "renew_lease"
  need_tests_for "release_lease"
  need_tests_for "break_lease"

  describe "uri functions" do
    let(:container_name) { "container" }
    let(:blob_name) { "blob" }
    let(:query) { { "param" => "value", "param 1" => "value 1" } }
    let(:host_uri) { "http://dummy.uri" }

    before { 
      subject.host = host_uri 
      subject.default_timeout = 37
    }

    describe "#containers_uri" do
      it "returns a containers URI" do
        result = subject.containers_uri
        result.must_be_kind_of URI
        result.scheme.must_equal "http"
        result.host.must_equal "dummy.uri"
        result.path.must_equal "/"
        result.query.must_equal "comp=list&timeout=37"
      end

      it "encodes optional query has as uri parameters" do
        result = subject.containers_uri query
        result.query.must_equal "comp=list&param=value&param+1=value+1&timeout=37"
      end
    end

    describe "#container_uri" do
      it "returns a container URI" do
        result = subject.container_uri container_name
        result.must_be_kind_of URI
        result.scheme.must_equal "http"
        result.host.must_equal "dummy.uri"
        result.path.must_equal "/container"
        result.query.must_equal "restype=container&timeout=37"
      end

      it "encodes optional query has as uri parameters" do
        result = subject.container_uri container_name, query
        result.query.must_equal "restype=container&param=value&param+1=value+1&timeout=37"
      end

      it "returns the same URI instance when the first parameter is a URI" do
        random_uri = URI.parse("http://random.uri")
        result = subject.container_uri random_uri
        result.must_equal random_uri
      end
    end

    describe "#blob_uri" do 
      it "returns a blob URI" do
        result = subject.blob_uri container_name, blob_name
        result.must_be_kind_of URI
        result.scheme.must_equal "http"
        result.host.must_equal "dummy.uri"
        result.path.must_equal "/container/blob"
        result.query.must_equal "timeout=37"
      end

      it "encodes optional query has as uri parameters" do
        result = subject.blob_uri container_name, blob_name, query
        result.query.must_equal "param=value&param+1=value+1&timeout=37"
      end
    end
  end
end