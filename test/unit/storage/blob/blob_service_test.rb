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
require 'azure/storage/blob/blob'
require 'azure/storage/service/signed_identifier'

describe Azure::Storage::Blob::BlobService do
  
  subject { Azure::Storage::Blob::BlobService.new }
  let(:serialization) { Azure::Storage::Blob::Serialization }
  let(:uri) { URI.parse "http://foo.com" }
  let(:query) { {} }
  let(:request_headers) { {} }

  let(:response_headers) { {} }
  let(:response_body) { mock() }
  let(:response) { mock() }

  before { 
    response.stubs(:body).returns(response_body)
    response.stubs(:headers).returns(response_headers)
  }
  
  describe "container functions" do
    let(:container_name) { "container-name" }
    let(:container) { Azure::Storage::Blob::Container.new }

    describe "#list_containers" do
      let(:method) { :get }
      let(:container1) { Azure::Storage::Blob::Container.new }
      let(:container_list) { [container, container1]}

      before { 
        subject.stubs(:containers_uri).with({}).returns(uri)
        subject.stubs(:call).with(method, uri).returns(response)
        serialization.stubs(:container_enumeration_results_from_xml).with(response_body).returns(container_list)
      }

      it "assembles a URI for the request" do
        subject.expects(:containers_uri).with({}).returns(uri)
        subject.list_containers
      end

      it "calls StorageService#call with the prepared request" do
        subject.expects(:call).with(method, uri).returns(response)
        subject.list_containers
      end

      it "deserializes the response" do
        serialization.expects(:container_enumeration_results_from_xml).with(response_body).returns(container_list)
        subject.list_containers
      end

      it "returns a list of containers for the account" do
        result = subject.list_containers

        result.must_be_kind_of Array
        result[0].must_be_kind_of Azure::Storage::Blob::Container
        result[1].must_be_kind_of Azure::Storage::Blob::Container
      end

      describe "when the options Hash is used" do
        before {
          subject.expects(:call).with(:get, uri).returns(response)
          serialization.expects(:container_enumeration_results_from_xml).with(response_body).returns(container_list)
        }

        it "modifies the URI query parameters when provided a :prefix value" do
          query = { "prefix" => "pre" }
          subject.expects(:containers_uri).with(query).returns(uri)

          options = { :prefix => "pre" }
          subject.list_containers options
        end
        
        it "modifies the URI query parameters when provided a :marker value" do
          query = { "marker" => "mark" }
          subject.expects(:containers_uri).with(query).returns(uri)

          options = { :marker => "mark" }
          subject.list_containers options
        end
        
        it "modifies the URI query parameters when provided a :max_results value" do
          query = { "maxresults" => "5" }
          subject.expects(:containers_uri).with(query).returns(uri)

          options = { :max_results => 5 }
          subject.list_containers options
        end
        
        it "modifies the URI query parameters when provided a :metadata value" do
          query = { "include" => "metadata" }
          subject.expects(:containers_uri).with(query).returns(uri)

          options = { :metadata => true }
          subject.list_containers options
        end

        it "modifies the URI query parameters when provided a :timeout value" do
          query = { "timeout" => "37" }
          subject.expects(:containers_uri).with(query).returns(uri)

          options = { :timeout => 37 }
          subject.list_containers options
        end
        it "does not modify the URI query parameters when provided an unknown value" do
          subject.expects(:containers_uri).with({}).returns(uri)

          options = { :unknown_key => "some_value" }
          subject.list_containers options
        end
      end
    end

    describe "#create_container" do

      let(:method) { :put }
      before { 
        subject.stubs(:container_uri).with(container_name).returns(uri)
        subject.stubs(:call).with(method, uri, nil, {}).returns(response)
        serialization.stubs(:container_from_headers).with(response_headers).returns(container)
      }

      it "assembles a URI for the request" do
        subject.expects(:container_uri).with(container_name).returns(uri)
        subject.create_container container_name
      end

      it "calls StorageService#call with the prepared request" do
        subject.expects(:call).with(method, uri, nil, {}).returns(response)
        subject.create_container container_name
      end

      it "deserializes the response" do
        serialization.expects(:container_from_headers).with(response_headers).returns(container)
        subject.create_container container_name
      end

      it "returns a new container" do
        result = subject.create_container container_name

        result.must_be_kind_of Azure::Storage::Blob::Container
        result.name.must_equal container_name
      end

      describe "when optional metadata parameter is used" do
        let(:container_metadata) {
          { 
            "MetadataKey" => "MetaDataValue",
            "MetadataKey1" => "MetaDataValue1" }
          }

        before { 
          request_headers = {
            "x-ms-meta-MetadataKey" => "MetaDataValue",
            "x-ms-meta-MetadataKey1" => "MetaDataValue1"
          }

          subject.stubs(:container_uri).with(container_name).returns(uri)
          serialization.stubs(:container_from_headers).with(response_headers).returns(container)        
          subject.stubs(:call).with(method, uri, nil, request_headers).returns(response)
        }

        it "adds metadata to the request headers" do
          subject.create_container container_name, container_metadata
        end
      end

      describe "when optional visiblity parameter is used" do
        let(:visibility) { "visibility-value" }

        before { 
          request_headers = { "x-ms-blob-public-access" => visibility }

          subject.stubs(:container_uri).with(container_name).returns(uri)
          serialization.stubs(:container_from_headers).with(response_headers).returns(container)        
          subject.stubs(:call).with(method, uri, nil, request_headers).returns(response)
        }

        it "adds visibility to the request headers" do
          subject.create_container container_name, nil, visibility
        end
      end
    end

    describe "#delete_container" do 
      let(:method) { :delete }
      before {
        response.stubs(:success?).returns(true)
        subject.stubs(:container_uri).with(container_name).returns(uri)
        subject.stubs(:call).with(method, uri).returns(response)
      }
      
      it "assembles a URI for the request" do
        subject.expects(:container_uri).with(container_name).returns(uri)
        subject.delete_container container_name
      end

      it "calls StorageService#call with the prepared request" do
        subject.expects(:call).with(method, uri).returns(response)
        subject.delete_container container_name
      end

      it "returns true on success" do
        result = subject.delete_container container_name
        result.must_equal true
      end
    end

    describe "#get_container_properties" do
      let(:method) { :get }
      let(:container_properties) { Azure::Storage::Blob::ContainerProperties.new }

      before {
        container.properties = container_properties
        response_headers = {}
        subject.stubs(:container_uri).with(container_name).returns(uri)
        subject.stubs(:call).with(method, uri).returns(response)
        serialization.stubs(:container_from_headers).with(response_headers).returns(container)
      }

      it "assembles a URI for the request" do
        subject.expects(:container_uri).with(container_name).returns(uri)
        subject.get_container_properties container_name
      end

      it "calls StorageService#call with the prepared request" do
        subject.expects(:call).with(method, uri).returns(response)
        subject.get_container_properties container_name
      end

      it "deserializes the response" do
        serialization.expects(:container_from_headers).with(response_headers).returns(container)
        subject.get_container_properties container_name
      end

      it "returns a container, with it's properties attribute populated" do
        result = subject.get_container_properties container_name
        result.must_be_kind_of Azure::Storage::Blob::Container
        result.name.must_equal container_name
        result.properties.must_be_kind_of Azure::Storage::Blob::ContainerProperties
        result.properties.must_equal container_properties
      end
    end

    describe "#get_container_metadata" do
      let(:method) { :get }
      let(:container_metadata) { { "MetadataKey" => "MetaDataValue", "MetadataKey1" => "MetaDataValue1" } }
      let(:response_headers) { { "x-ms-meta-MetadataKey" => "MetaDataValue", "x-ms-meta-MetadataKey1" => "MetaDataValue1" } }

      before {
        query.update({ "comp" => "metadata" }) 
        response.stubs(:headers).returns(response_headers) 
        subject.stubs(:container_uri).with(container_name, query).returns(uri)
        subject.stubs(:call).with(method, uri).returns(response)

        container.metadata = container_metadata
        serialization.stubs(:container_from_headers).with(response_headers).returns(container)
      }

      it "assembles a URI for the request" do
        subject.expects(:container_uri).with(container_name, query).returns(uri)
        subject.get_container_metadata container_name
      end

      it "calls StorageService#call with the prepared request" do
        subject.expects(:call).with(method, uri).returns(response)
        subject.get_container_metadata container_name
      end

      it "deserializes the response" do
        serialization.expects(:container_from_headers).with(response_headers).returns(container)
        subject.get_container_metadata container_name
      end

      it "returns a container, with it's metadata attribute populated" do
        result = subject.get_container_metadata container_name
        result.must_be_kind_of Azure::Storage::Blob::Container
        result.name.must_equal container_name
        result.metadata.must_equal container_metadata
      end
    end

    describe "#get_container_acl" do
      let(:method) { :get }
      let(:signed_identifier){ Azure::Storage::Service::SignedIdentifier.new }
      let(:signed_identifiers){ [signed_identifier] }

      before {
        query.update({"comp"=>"acl"})
        response.stubs(:headers).returns({}) 
        response_body.stubs(:length).returns(37)
        subject.stubs(:container_uri).with(container_name, query).returns(uri)
        subject.stubs(:call).with(method, uri).returns(response)

        serialization.stubs(:container_from_headers).with(response_headers).returns(container)
        serialization.stubs(:signed_identifiers_from_xml).with(response_body).returns(signed_identifiers)
      }

      it "assembles a URI for the request" do
        subject.expects(:container_uri).with(container_name, query).returns(uri)
        subject.get_container_acl container_name
      end

      it "calls StorageService#call with the prepared request" do
        subject.expects(:call).with(method, uri).returns(response)
        subject.get_container_acl container_name
      end

      it "deserializes the response" do
        serialization.expects(:container_from_headers).with(response_headers).returns(container)
        serialization.expects(:signed_identifiers_from_xml).with(response_body).returns(signed_identifiers)
        subject.get_container_acl container_name
      end

      it "returns a container and an ACL" do
        returned_container, returned_acl = subject.get_container_acl container_name
        
        returned_container.must_be_kind_of Azure::Storage::Blob::Container
        returned_container.name.must_equal container_name

        returned_acl.must_be_kind_of Array
        returned_acl[0].must_be_kind_of Azure::Storage::Service::SignedIdentifier
      end
    end

    need_tests_for "set_container_acl"
    need_tests_for "set_container_metadata"

    describe "blob functions" do
      let(:blob_name){ "blob-name" }

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

      describe "#get_blob" do
        let(:method) { :get }
        let(:blob) { Azure::Storage::Blob::Blob.new }

        before {
          response.stubs(:success?).returns(true)
          response_body = "body-contents"

          subject.stubs(:blob_uri).with(container_name, blob_name, query).returns(uri)
          subject.stubs(:call).with(method, uri, nil, request_headers).returns(response)
          serialization.stubs(:blob_from_headers).with(response_headers).returns(blob)
        }
      
        it "assembles a URI for the request" do
          subject.expects(:blob_uri).with(container_name, blob_name, query).returns(uri)
          subject.get_blob container_name, blob_name
        end

        it "calls StorageService#call with the prepared request" do
          subject.expects(:call).with(method, uri, nil, request_headers).returns(response)
          subject.get_blob container_name, blob_name
        end

        it "returns the copy id and copy status on success" do
          returned_blob, returned_blob_contents = subject.get_blob container_name, blob_name
          
          returned_blob.must_be_kind_of Azure::Storage::Blob::Blob
          returned_blob.must_equal blob

          returned_blob_contents.must_equal response_body
        end

        describe "when snapshot is provided" do
          let(:source_snapshot){ "source-snapshot" }
          before { query["snapshot"]=source_snapshot }

          it "modifies the blob uri query string with the snapshot" do
            subject.expects(:blob_uri).with(container_name, blob_name, query).returns(uri)
            subject.get_blob container_name, blob_name, nil, nil, source_snapshot
          end
        end

        describe "when start_range is provided" do
          let(:start_range){ 255 }
          before { request_headers["x-ms-range"]="#{start_range}-" }

          it "modifies the request headers with the desired range" do
            subject.expects(:call).with(method, uri, nil, request_headers).returns(response)
            subject.get_blob container_name, blob_name, start_range
          end
        end

        describe "when end_range is provided" do
          let(:end_range){ 512 }
          before { request_headers["x-ms-range"]="0-#{end_range}" }

          it "modifies the request headers with the desired range" do
            subject.expects(:call).with(method, uri, nil, request_headers).returns(response)
            subject.get_blob container_name, blob_name, nil, end_range
          end
        end

        describe "when both start_range and end_range are provided" do
          let(:start_range){ 255 }
          let(:end_range){ 512 }
          before { request_headers["x-ms-range"]="#{start_range}-#{end_range}" }

          it "modifies the request headers with the desired range" do
            subject.expects(:call).with(method, uri, nil, request_headers).returns(response)
            subject.get_blob container_name, blob_name, start_range, end_range
          end
        end

        describe "when get_content_md5 is true" do
          let(:get_content_md5) { true }

          describe "and a range is specified" do
            let(:start_range){ 255 }
            let(:end_range){ 512 }
            before { 
              request_headers["x-ms-range"]="#{start_range}-#{end_range}"
              request_headers["x-ms-range-get-content-md5"]= true
            }

            it "modifies the request headers to include the x-ms-range-get-content-md5 header" do
              subject.expects(:call).with(method, uri, nil, request_headers).returns(response)
              subject.get_blob container_name, blob_name, start_range, end_range, nil, true
            end
          end

          describe "and a range is NOT specified" do
            it "does not modify the request headers" do
              subject.expects(:call).with(method, uri, nil, request_headers).returns(response)
              subject.get_blob container_name, blob_name, nil, nil, nil, true
            end
          end
        end
      end

      describe "#delete_blob" do
        let(:method) { :delete }

        before {
          response.stubs(:success?).returns(true)
          request_headers["x-ms-delete-snapshots"] = "include"

          subject.stubs(:blob_uri).with(container_name, blob_name, query).returns(uri)
          subject.stubs(:call).with(method, uri, nil, request_headers).returns(response)
        }
      
        it "assembles a URI for the request" do
          subject.expects(:blob_uri).with(container_name, blob_name, query).returns(uri)
          subject.delete_blob container_name, blob_name
        end

        it "calls StorageService#call with the prepared request" do
          subject.expects(:call).with(method, uri, nil, request_headers).returns(response)
          subject.delete_blob container_name, blob_name
        end

        it "returns the copy id and copy status on success" do
          result = subject.delete_blob container_name, blob_name
          result.must_equal true
        end
        
        describe "when snapshot is provided" do
          let(:source_snapshot){ "source-snapshot" }
          before {
            request_headers.delete "x-ms-delete-snapshots"
            query["snapshot"]=source_snapshot 
          }

          it "modifies the blob uri query string with the snapshot" do
            subject.expects(:blob_uri).with(container_name, blob_name, query).returns(uri)
            subject.delete_blob container_name, blob_name, source_snapshot
          end

          it "does not include a x-ms-delete-snapshots header" do
            subject.expects(:call).with(method, uri, nil, request_headers).returns(response)
            subject.delete_blob container_name, blob_name, source_snapshot
          end
        end

        describe "when delete_snapshots is provided" do
          let(:delete_snapshots){ :anyvalue }
          before { request_headers["x-ms-delete-snapshots"]=delete_snapshots.to_s }

          it "modifies the request headers with the provided value" do
            subject.expects(:call).with(method, uri, nil, request_headers).returns(response)
            subject.delete_blob container_name, blob_name, nil, delete_snapshots
          end
        end

        describe "when snapshot is provided and delete_snapshots is provided" do
          let(:source_snapshot){ "source-snapshot" }
          let(:delete_snapshots){ :anyvalue }
          before {
            request_headers.delete "x-ms-delete-snapshots"
            query["snapshot"]=source_snapshot 
          }

          it "modifies the blob uri query string with the snapshot" do
            subject.expects(:blob_uri).with(container_name, blob_name, query).returns(uri)
            subject.delete_blob container_name, blob_name, source_snapshot, delete_snapshots
          end

          it "does not include a x-ms-delete-snapshots header" do
            subject.expects(:call).with(method, uri, nil, request_headers).returns(response)
            subject.delete_blob container_name, blob_name, source_snapshot, delete_snapshots
          end
        end
      end

      describe "#create_blob_snapshot" do
        let(:method) { :put }
        let(:snapshot_id) { "snapshot-id" }

        before {
          query["comp"] = "snapshot"
          
          response_headers["x-ms-snapshot"] = snapshot_id

          subject.stubs(:blob_uri).with(container_name, blob_name, query).returns(uri)
          subject.stubs(:call).with(method, uri, nil, request_headers).returns(response)
        }
      
        it "assembles a URI for the request" do
          subject.expects(:blob_uri).with(container_name, blob_name, query).returns(uri)
          subject.create_blob_snapshot container_name, blob_name
        end

        it "calls StorageService#call with the prepared request" do
          subject.expects(:call).with(method, uri, nil, request_headers).returns(response)
          subject.create_blob_snapshot container_name, blob_name
        end

        it "returns the copy id and copy status on success" do
          result = subject.create_blob_snapshot container_name, blob_name
          result.must_be_kind_of String
          result.must_equal snapshot_id
        end

        describe "when the options Hash is used" do
          before { 
            subject.expects(:call).with(method, uri, nil, request_headers).returns(response)
          }

          it "modifies the request headers when provided a :if_modified_since value" do
            request_headers["If-Modified-Since"] = "ims-value"
            subject.create_blob_snapshot container_name, blob_name, { :if_modified_since => "ims-value" }
          end
          
          it "modifies the request headers when provided a :if_unmodified_since value" do
            request_headers["If-Unmodified-Since"] = "iums-value"
            subject.create_blob_snapshot container_name, blob_name, { :if_unmodified_since => "iums-value" }
          end

          it "modifies the request headers when provided a :if_match value" do
            request_headers["If-Match"] = "im-value"
            subject.create_blob_snapshot container_name, blob_name, { :if_match => "im-value" }
          end

          it "modifies the request headers when provided a :if_none_match value" do
            request_headers["If-None-Match"] = "inm-value"
            subject.create_blob_snapshot container_name, blob_name, { :if_none_match => "inm-value" }
          end

          it "modifies the request headers when provided a :metadata value" do
            request_headers["x-ms-meta-MetadataKey"] = "MetaDataValue"
            request_headers["x-ms-meta-MetadataKey1"] = "MetaDataValue1"
            options = { :metadata => { "MetadataKey" => "MetaDataValue", "MetadataKey1" => "MetaDataValue1"} }
            subject.create_blob_snapshot container_name, blob_name, options
          end

          it "does not modify the request headers when provided an unknown value" do
            subject.create_blob_snapshot container_name, blob_name, { :unknown_key => "some_value" }
          end
        end
      end

      describe "#copy_blob" do
        let(:method) { :put }
        let(:source_container_name) { "source-container-name" }
        let(:source_blob_name) { "source-blob-name" }
        let(:source_uri) { URI.parse("http://dummy.uri/source") }
        
        let(:copy_id) { "copy-id" }
        let(:copy_status) { "copy-status" }

        before {
          request_headers["x-ms-copy-source"] = source_uri

          response_headers["x-ms-copy-id"] = copy_id
          response_headers["x-ms-copy-status"] = copy_status

          subject.stubs(:blob_uri).with(container_name, blob_name).returns(uri)
          subject.stubs(:blob_uri).with(source_container_name, source_blob_name, query).returns(source_uri)
          subject.stubs(:call).with(method, uri, nil, request_headers).returns(response)
        }
      
        it "assembles a URI for the request" do
          subject.expects(:blob_uri).with(container_name, blob_name).returns(uri)
          subject.copy_blob container_name, blob_name, source_container_name, source_blob_name
        end

        it "assembles the source URI and places it in the header" do
          subject.expects(:blob_uri).with(source_container_name, source_blob_name, query).returns(source_uri)
          subject.copy_blob container_name, blob_name, source_container_name, source_blob_name
        end

        it "calls StorageService#call with the prepared request" do
          subject.expects(:call).with(method, uri, nil, request_headers).returns(response)
          subject.copy_blob container_name, blob_name, source_container_name, source_blob_name
        end

        it "returns the copy id and copy status on success" do
          returned_copy_id, returned_copy_status = subject.copy_blob container_name, blob_name, source_container_name, source_blob_name
          returned_copy_id.must_equal copy_id
          returned_copy_status.must_equal copy_status
        end
        
        describe "when snapshot is provided" do
          let(:source_snapshot){"source-snapshot"}
          before { 
            query["snapshot"]=source_snapshot
          }

          it "modifies the source blob uri query string with the snapshot" do
            subject.expects(:blob_uri).with(source_container_name, source_blob_name, query).returns(source_uri)
            subject.copy_blob container_name, blob_name, source_container_name, source_blob_name, source_snapshot
          end
        end

        describe "when the options Hash is used" do
          before { 
            subject.expects(:call).with(method, uri, nil, request_headers).returns(response)
          }

          it "modifies the request headers when provided a :dest_if_modified_since value" do
            request_headers["If-Modified-Since"] = "ims-value"
            subject.copy_blob container_name, blob_name, source_container_name, source_blob_name, nil, { :dest_if_modified_since => "ims-value" }
          end
          
          it "modifies the request headers when provided a :dest_if_unmodified_since value" do
            request_headers["If-Unmodified-Since"] = "iums-value"
            subject.copy_blob container_name, blob_name, source_container_name, source_blob_name, nil, { :dest_if_unmodified_since => "iums-value" }
          end

          it "modifies the request headers when provided a :dest_if_match value" do
            request_headers["If-Match"] = "im-value"
            subject.copy_blob container_name, blob_name, source_container_name, source_blob_name, nil, { :dest_if_match => "im-value" }
          end

          it "modifies the request headers when provided a :dest_if_none_match value" do
            request_headers["If-None-Match"] = "inm-value"
            subject.copy_blob container_name, blob_name, source_container_name, source_blob_name, nil, { :dest_if_none_match => "inm-value" }
          end

          it "modifies the request headers when provided a :source_if_modified_since value" do
            request_headers["x-ms-source-if-modified-since"] = "ims-value"
            subject.copy_blob container_name, blob_name, source_container_name, source_blob_name, nil, { :source_if_modified_since => "ims-value" }
          end
          
          it "modifies the request headers when provided a :source_if_unmodified_since value" do
            request_headers["x-ms-source-if-unmodified-since"] = "iums-value"
            subject.copy_blob container_name, blob_name, source_container_name, source_blob_name, nil, { :source_if_unmodified_since => "iums-value" }
          end

          it "modifies the request headers when provided a :source_if_match value" do
            request_headers["x-ms-source-if-match"] = "im-value"
            subject.copy_blob container_name, blob_name, source_container_name, source_blob_name, nil, { :source_if_match => "im-value" }
          end

          it "modifies the request headers when provided a :source_if_none_match value" do
            request_headers["x-ms-source-if-none-match"] = "inm-value"
            subject.copy_blob container_name, blob_name, source_container_name, source_blob_name, nil, { :source_if_none_match => "inm-value" }
          end

          it "modifies the request headers when provided a :metadata value" do
            request_headers["x-ms-meta-MetadataKey"] = "MetaDataValue"
            request_headers["x-ms-meta-MetadataKey1"] = "MetaDataValue1"
            options = { :metadata => { "MetadataKey" => "MetaDataValue", "MetadataKey1" => "MetaDataValue1"} }
            subject.copy_blob container_name, blob_name, source_container_name, source_blob_name, nil, options
          end

          it "does not modify the request headers when provided an unknown value" do
            subject.copy_blob container_name, blob_name, source_container_name, source_blob_name, nil, { :unknown_key => "some_value" }
          end
        end
      end

      describe "lease functions" do 
        let(:method) { :put }
        let(:lease_id) { "lease-id" }
        
        before { 
          query.update({"comp"=>"lease"})
          subject.stubs(:blob_uri).with(container_name, blob_name, query).returns(uri)
          subject.stubs(:call).with(method, uri, nil, request_headers).returns(response)
        }

        describe "#acquire_lease" do
          before {
            request_headers["x-ms-lease-action"] = "acquire"
            request_headers["x-ms-lease-duration"] = "-1"

            response.stubs(:success?).returns(true)
            response_headers["x-ms-lease-id"] = lease_id
          }
          
          it "assembles a URI for the request" do
            subject.expects(:blob_uri).with(container_name, blob_name, query).returns(uri)
            subject.acquire_lease container_name, blob_name
          end

          it "calls StorageService#call with the prepared request" do
            subject.expects(:call).with(method, uri, nil, request_headers).returns(response)
            subject.acquire_lease container_name, blob_name
          end

          it "returns lease id on success" do
            result = subject.acquire_lease container_name, blob_name
            result.must_equal lease_id
          end

          describe "when passed a duration" do
            let(:duration) { 37 }
            before { request_headers["x-ms-lease-duration"] = "37" }

            it "modifies the headers to include the provided duration value" do
              subject.expects(:call).with(method, uri, nil, request_headers).returns(response)
              subject.acquire_lease container_name, blob_name, duration
            end
          end

          describe "when passed a proposed_lease_id" do
            let(:default_duration) { -1 }
            let(:proposed_lease_id) { "proposed-lease-id" }
            before { request_headers["x-ms-proposed-lease-id"] = proposed_lease_id }

            it "modifies the headers to include the proposed lease id" do
              subject.expects(:call).with(method, uri, nil, request_headers).returns(response)
              subject.acquire_lease container_name, blob_name, default_duration, proposed_lease_id
            end
          end
        end

        describe "#renew_lease" do
          before {
            request_headers["x-ms-lease-action"] = "renew"
            request_headers["x-ms-lease-id"] = lease_id

            response.stubs(:success?).returns(true)
            response_headers["x-ms-lease-id"] = lease_id
          }
          
          it "assembles a URI for the request" do
            subject.expects(:blob_uri).with(container_name, blob_name, query).returns(uri)
            subject.renew_lease container_name, blob_name, lease_id
          end

          it "calls StorageService#call with the prepared request" do
            subject.expects(:call).with(method, uri, nil, request_headers).returns(response)
            subject.renew_lease container_name, blob_name, lease_id
          end

          it "returns lease id on success" do
            result = subject.renew_lease container_name, blob_name, lease_id
            result.must_equal lease_id
          end
        end

        describe "#release_lease" do
          before {
            request_headers["x-ms-lease-action"] = "release"
            request_headers["x-ms-lease-id"] = lease_id

            response.stubs(:success?).returns(true)
          }
          
          it "assembles a URI for the request" do
            subject.expects(:blob_uri).with(container_name, blob_name, query).returns(uri)
            subject.release_lease container_name, blob_name, lease_id
          end

          it "calls StorageService#call with the prepared request" do
            subject.expects(:call).with(method, uri, nil, request_headers).returns(response)
            subject.release_lease container_name, blob_name, lease_id
          end

          it "returns true on success" do
            result = subject.release_lease container_name, blob_name, lease_id
            result.must_equal true
          end
        end

        describe "#break_lease" do
          let(:lease_time) { 38 }
          before {
            request_headers["x-ms-lease-action"] = "break"
            request_headers["x-ms-lease-id"] = lease_id

            response.stubs(:success?).returns(true)
            response_headers["x-ms-lease-time"] = lease_time.to_s
          }
          
          it "assembles a URI for the request" do
            subject.expects(:blob_uri).with(container_name, blob_name, query).returns(uri)
            subject.break_lease container_name, blob_name, lease_id
          end

          it "calls StorageService#call with the prepared request" do
            subject.expects(:call).with(method, uri, nil, request_headers).returns(response)
            subject.break_lease container_name, blob_name, lease_id
          end

          it "returns true on success" do
            result = subject.break_lease container_name, blob_name, lease_id
            result.must_equal lease_time
          end

          describe "when passed an optional break period" do
            let(:break_period) { 37 }
            before { request_headers["x-ms-lease-break-period"] = break_period.to_s }

            it "modifies the request headers to include a break period" do
              subject.expects(:call).with(method, uri, nil, request_headers).returns(response)
              subject.break_lease container_name, blob_name, lease_id, break_period
            end
          end
        end
      end
    end
  end

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