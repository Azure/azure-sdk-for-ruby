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
require 'azure/blob/blob_service'
require 'azure/blob/serialization'
require 'azure/blob/container'
require 'azure/blob/blob'
require 'azure/service/signed_identifier'

describe Azure::Blob::BlobService do
  
  subject { Azure::Blob::BlobService.new }
  let(:serialization) { Azure::Blob::Serialization }
  let(:uri) { URI.parse "http://foo.com" }
  let(:query) { {} }
  let(:request_headers) { {} }
  let(:request_body) { "request-body" }

  let(:response_headers) { {} }
  let(:response_body) { mock() }
  let(:response) { mock() }

  before { 
    response.stubs(:body).returns(response_body)
    response.stubs(:headers).returns(response_headers)
  }

  describe "#list_containers" do
    let(:method) { :get }
    let(:container_enumeration_result) { Azure::Service::EnumerationResults.new }

    before { 
      subject.stubs(:containers_uri).with({}).returns(uri)
      subject.stubs(:call).with(method, uri).returns(response)
      serialization.stubs(:container_enumeration_results_from_xml).with(response_body).returns(container_enumeration_result)
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
      serialization.expects(:container_enumeration_results_from_xml).with(response_body).returns(container_enumeration_result)
      subject.list_containers
    end

    it "returns a list of containers for the account" do
      result = subject.list_containers
      result.must_be_kind_of Azure::Service::EnumerationResults
    end

    describe "when the options Hash is used" do
      before {
        subject.expects(:call).with(:get, uri).returns(response)
        serialization.expects(:container_enumeration_results_from_xml).with(response_body).returns(container_enumeration_result)
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

  describe "container functions" do
    let(:container_name) { "container-name" }
    let(:container) { Azure::Blob::Container.new }

    describe "#create_container" do

      let(:method) { :put }
      before { 
        subject.stubs(:container_uri).with(container_name, {}).returns(uri)
        subject.stubs(:call).with(method, uri, nil, {}).returns(response)
        serialization.stubs(:container_from_headers).with(response_headers).returns(container)
      }

      it "assembles a URI for the request" do
        subject.expects(:container_uri).with(container_name, {}).returns(uri)
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

        result.must_be_kind_of Azure::Blob::Container
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

          subject.stubs(:container_uri).with(container_name, {}).returns(uri)
          serialization.stubs(:container_from_headers).with(response_headers).returns(container)
          subject.stubs(:call).with(method, uri, nil, request_headers).returns(response)
        }

        it "adds metadata to the request headers" do
          subject.create_container container_name, container_metadata
        end
      end

      describe "when optional public_access_level parameter is used" do
        let(:public_access_level) { "public-access-level-value" }

        before { 
          request_headers = { "x-ms-blob-public-access" => public_access_level }

          subject.stubs(:container_uri).with(container_name, {}).returns(uri)
          serialization.stubs(:container_from_headers).with(response_headers).returns(container)
          subject.stubs(:call).with(method, uri, nil, request_headers).returns(response)
        }

        it "adds public_access_level to the request headers" do
          subject.create_container container_name, { :public_access_level => public_access_level }
        end
      end
    end

    describe "#delete_container" do 
      let(:method) { :delete }
      before {
        response.stubs(:success?).returns(true)
        subject.stubs(:container_uri).with(container_name, {}).returns(uri)
        subject.stubs(:call).with(method, uri).returns(response)
      }
      
      it "assembles a URI for the request" do
        subject.expects(:container_uri).with(container_name, {}).returns(uri)
        subject.delete_container container_name
      end

      it "calls StorageService#call with the prepared request" do
        subject.expects(:call).with(method, uri).returns(response)
        subject.delete_container container_name
      end

      it "returns nil on success" do
        result = subject.delete_container container_name
        result.must_equal nil
      end
    end

    describe "#get_container_properties" do
      let(:method) { :get }
      let(:container_properties) { {} }

      before {
        container.properties = container_properties
        response_headers = {}
        subject.stubs(:container_uri).with(container_name, {}).returns(uri)
        subject.stubs(:call).with(method, uri).returns(response)
        serialization.stubs(:container_from_headers).with(response_headers).returns(container)
      }

      it "assembles a URI for the request" do
        subject.expects(:container_uri).with(container_name, {}).returns(uri)
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
        result.must_be_kind_of Azure::Blob::Container
        result.name.must_equal container_name
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
        result.must_be_kind_of Azure::Blob::Container
        result.name.must_equal container_name
        result.metadata.must_equal container_metadata
      end
    end

    describe "#get_container_acl" do
      let(:method) { :get }
      let(:signed_identifier){ Azure::Service::SignedIdentifier.new }
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
        
        returned_container.must_be_kind_of Azure::Blob::Container
        returned_container.name.must_equal container_name

        returned_acl.must_be_kind_of Array
        returned_acl[0].must_be_kind_of Azure::Service::SignedIdentifier
      end
    end

    describe "#set_container_acl" do
      let(:method) { :put }
      let(:public_access_level) { "any-public-access-level" }

      before {
        query.update({"comp"=>"acl"})
        request_headers["x-ms-blob-public-access"] = public_access_level

        response.stubs(:headers).returns({}) 
        subject.stubs(:container_uri).with(container_name, query).returns(uri)
        subject.stubs(:call).with(method, uri, nil, request_headers).returns(response)
        serialization.stubs(:container_from_headers).with(response_headers).returns(container)
      }

      it "assembles a URI for the request" do
        subject.expects(:container_uri).with(container_name, query).returns(uri)
        subject.set_container_acl container_name, public_access_level
      end

      it "calls StorageService#call with the prepared request" do
        subject.expects(:call).with(method, uri, nil, request_headers).returns(response)
        subject.set_container_acl container_name, public_access_level
      end


      it "deserializes the response" do
        serialization.expects(:container_from_headers).with(response_headers).returns(container)
        subject.set_container_acl container_name, public_access_level
      end

      it "returns a container and an ACL" do
        returned_container, returned_acl = subject.set_container_acl container_name, public_access_level
        
        returned_container.must_be_kind_of Azure::Blob::Container
        returned_container.name.must_equal container_name
        returned_container.public_access_level.must_equal public_access_level

        returned_acl.must_be_kind_of Array
      end
      
      describe "when the public_access_level parameter is set to 'container'" do
        let(:public_access_level) { "container"}
        before { 
          request_headers["x-ms-blob-public-access"] = public_access_level
        }

        it "sets the x-ms-blob-public-access header" do
          subject.expects(:call).with(method, uri, nil, request_headers).returns(response)
          subject.set_container_acl container_name, public_access_level
        end

        describe "when a signed_identifiers value is provided" do
          let(:signed_identifier){ Azure::Service::SignedIdentifier.new }
          let(:signed_identifiers){ [signed_identifier] }
          before {
            subject.stubs(:call).with(method, uri, request_body, request_headers).returns(response)
            serialization.stubs(:signed_identifiers_to_xml).with(signed_identifiers).returns(request_body)
          }
          
          it "serializes the request contents" do
            serialization.expects(:signed_identifiers_to_xml).with(signed_identifiers).returns(request_body)
            subject.set_container_acl container_name, public_access_level, { :signed_identifiers => signed_identifiers }
          end

          it "returns a container and an ACL" do
            returned_container, returned_acl = subject.set_container_acl container_name, public_access_level, { :signed_identifiers => signed_identifiers }

            returned_container.must_be_kind_of Azure::Blob::Container
            returned_container.name.must_equal container_name
            returned_container.public_access_level.must_equal public_access_level

            returned_acl.must_be_kind_of Array
            returned_acl[0].must_be_kind_of Azure::Service::SignedIdentifier
          end
        end
      end

      describe "when the public_access_level parameter is set to nil" do
        let(:public_access_level) { nil }
        before { 
          request_headers.delete "x-ms-blob-public-access"
        }

        it "sets the x-ms-blob-public-access header" do
          subject.expects(:call).with(method, uri, nil, request_headers).returns(response)
          subject.set_container_acl container_name, public_access_level
        end
      end

      describe "when the public_access_level parameter is set to empty string" do
        let(:public_access_level) { "" }
        before { 
          request_headers.delete "x-ms-blob-public-access"
        }

        it "sets the x-ms-blob-public-access header" do
          subject.expects(:call).with(method, uri, nil, request_headers).returns(response)
          subject.set_container_acl container_name, public_access_level
        end
      end
    end

    describe "#set_container_metadata" do
      let(:method) { :put }
      let(:container_metadata) { { "MetadataKey" => "MetaDataValue", "MetadataKey1" => "MetaDataValue1" } }
      let(:request_headers) { { "x-ms-meta-MetadataKey" => "MetaDataValue", "x-ms-meta-MetadataKey1" => "MetaDataValue1" } }

      before {
        query.update({ "comp" => "metadata" }) 
        response.stubs(:success?).returns(true)
        subject.stubs(:container_uri).with(container_name, query).returns(uri)
        subject.stubs(:call).with(method, uri, nil, request_headers).returns(response)
      }

      it "assembles a URI for the request" do
        subject.expects(:container_uri).with(container_name, query).returns(uri)
        subject.set_container_metadata container_name, container_metadata
      end

      it "calls StorageService#call with the prepared request" do
        subject.expects(:call).with(method, uri, nil, request_headers).returns(response)
        subject.set_container_metadata container_name, container_metadata
      end

      it "returns nil on success" do
        result = subject.set_container_metadata container_name, container_metadata
        result.must_equal nil
      end
    end

    describe "#list_blobs" do
      let(:method) { :get }
      let(:query) {{"comp"=>"list"}}
      let(:blob_enumeration_results) { Azure::Service::EnumerationResults.new}

      before { 
        subject.stubs(:container_uri).with(container_name, query).returns(uri)
        subject.stubs(:call).with(method, uri).returns(response)
        serialization.stubs(:blob_enumeration_results_from_xml).with(response_body).returns(blob_enumeration_results)
      }

      it "assembles a URI for the request" do
        subject.expects(:container_uri).with(container_name, query).returns(uri)
        subject.list_blobs container_name
      end

      it "calls StorageService#call with the prepared request" do
        subject.expects(:call).with(method, uri).returns(response)
        subject.list_blobs container_name
      end

      it "deserializes the response" do
        serialization.expects(:blob_enumeration_results_from_xml).with(response_body).returns(blob_enumeration_results)
        subject.list_blobs container_name
      end

      it "returns a list of containers for the account" do
        result = subject.list_blobs container_name
        result.must_be_kind_of Azure::Service::EnumerationResults
      end

      describe "when the options Hash is used" do
        before {
          subject.expects(:call).with(:get, uri).returns(response)
          serialization.expects(:blob_enumeration_results_from_xml).with(response_body).returns(blob_enumeration_results)
          subject.expects(:container_uri).with(container_name, query).returns(uri)
        }

        it "modifies the URI query parameters when provided a :prefix value" do
          query["prefix"]= "pre"
          options = { :prefix => "pre" }
          subject.list_blobs container_name, options
        end

        it "modifies the URI query parameters when provided a :prefix value" do
          query["delimiter"] = "delim"
          options = { :delimiter => "delim" }
          subject.list_blobs container_name, options
        end
        
        it "modifies the URI query parameters when provided a :marker value" do
          query["marker"] = "mark"
          options = { :marker => "mark" }
          subject.list_blobs container_name, options
        end
        
        it "modifies the URI query parameters when provided a :max_results value" do
          query["maxresults"] = "5"
          options = { :max_results => 5 }
          subject.list_blobs container_name, options
        end
        
        it "modifies the URI query parameters when provided a :metadata value" do
          query["include"] = "metadata"
          options = { :metadata => true }
          subject.list_blobs container_name, options
        end

        it "modifies the URI query parameters when provided a :snapshots value" do
          query["include"] = "snapshots"
          options = { :snapshots => true }
          subject.list_blobs container_name, options
        end

        it "modifies the URI query parameters when provided a :uncommittedblobs value" do
          query["include"] = "uncommittedblobs"
          options = { :uncommittedblobs => true }
          subject.list_blobs container_name, options
        end

        it "modifies the URI query parameters when provided a :copy value" do
          query["include"] = "copy"
          options = { :copy => true }
          subject.list_blobs container_name, options
        end
        
        it "modifies the URI query parameters when provided more than one of :metadata, :snapshots, :uncommittedblobs or :copy values" do
          query["include"] = "metadata,snapshots,uncommittedblobs,copy"

          options = { 
            :copy => true,
            :metadata => true, 
            :snapshots => true,
            :uncommittedblobs => true
          }

          subject.list_blobs container_name, options
        end

        it "modifies the URI query parameters when provided a :timeout value" do
          query["timeout"] = "37" 
          options = { :timeout => 37 }
          subject.list_blobs container_name, options
        end

        it "does not modify the URI query parameters when provided an unknown value" do
          options = { :unknown_key => "some_value" }
          subject.list_blobs container_name, options
        end
      end
    end

    describe "blob functions" do
      let(:blob_name){ "blob-name" }
      let(:blob) { Azure::Blob::Blob.new }

      describe "#create_page_blob" do
        let(:method) { :put }
        let(:blob_length) { 37 }
        let(:request_headers) { 
          {
            "x-ms-blob-type" => "PageBlob", 
            "Content-Length" => 0.to_s,
            "x-ms-blob-content-length" => blob_length.to_s, 
            "x-ms-sequence-number" => 0.to_s
          }
        }

        before {
          subject.stubs(:blob_uri).with(container_name, blob_name, {}).returns(uri)
          subject.stubs(:call).with(method, uri, nil, request_headers).returns(response)
          serialization.stubs(:blob_from_headers).with(response_headers).returns(blob)
        }

        it "assembles a URI for the request" do
          subject.expects(:blob_uri).with(container_name, blob_name, {}).returns(uri)
          subject.create_page_blob container_name, blob_name, blob_length
        end

        it "calls StorageService#call with the prepared request" do
          subject.expects(:call).with(method, uri, nil, request_headers).returns(response)
          subject.create_page_blob container_name, blob_name, blob_length
        end

        it "returns a Blob on success" do
          result = subject.create_page_blob container_name, blob_name, blob_length
          result.must_be_kind_of Azure::Blob::Blob
          result.must_equal blob
          result.name.must_equal blob_name
        end

        describe "when the options Hash is used" do
          it "modifies the request headers when provided a :sequence_number value" do
            request_headers["x-ms-sequence-number"] = 37.to_s
            subject.create_page_blob container_name, blob_name, blob_length, { :sequence_number => 37.to_s }
          end

          it "modifies the request headers when provided a :blob_content_type value" do
            request_headers["x-ms-blob-content-type"] = "bct-value"
            subject.create_page_blob container_name, blob_name, blob_length, { :blob_content_type => "bct-value" }
          end
          
          it "modifies the request headers when provided a :blob_content_encoding value" do
            request_headers["x-ms-blob-content-encoding"] = "bce-value"
            subject.create_page_blob container_name, blob_name, blob_length, { :blob_content_encoding => "bce-value" }
          end

          it "modifies the request headers when provided a :blob_content_language value" do
            request_headers["x-ms-blob-content-language"] = "bcl-value"
            subject.create_page_blob container_name, blob_name, blob_length, { :blob_content_language => "bcl-value" }
          end

          it "modifies the request headers when provided a :blob_content_md5 value" do
            request_headers["x-ms-blob-content-md5"] = "bcm-value"
            subject.create_page_blob container_name, blob_name, blob_length, { :blob_content_md5 => "bcm-value" }
          end

          it "modifies the request headers when provided a :blob_cache_control value" do
            request_headers["x-ms-blob-cache-control"] = "bcc-value"
            subject.create_page_blob container_name, blob_name, blob_length, { :blob_cache_control => "bcc-value" }
          end

          it "modifies the request headers when provided a :content_type value" do
            request_headers["Content-Type"] = "ct-value"
            subject.create_page_blob container_name, blob_name, blob_length, { :content_type => "ct-value" }
          end
          
          it "modifies the request headers when provided a :content_encoding value" do
            request_headers["Content-Encoding"] = "ce-value"
            subject.create_page_blob container_name, blob_name, blob_length, { :content_encoding => "ce-value" }
          end

          it "modifies the request headers when provided a :content_language value" do
            request_headers["Content-Language"] = "cl-value"
            subject.create_page_blob container_name, blob_name, blob_length, { :content_language => "cl-value" }
          end

          it "modifies the request headers when provided a :content_md5 value" do
            request_headers["Content-MD5"] = "cm-value"
            subject.create_page_blob container_name, blob_name, blob_length, { :content_md5 => "cm-value" }
          end

          it "modifies the request headers when provided a :cache_control value" do
            request_headers["Cache-Control"] = "cc-value"
            subject.create_page_blob container_name, blob_name, blob_length, { :cache_control => "cc-value" }
          end

          it "modifies the request headers when provided a :metadata value" do
            request_headers["x-ms-meta-MetadataKey"] = "MetaDataValue"
            request_headers["x-ms-meta-MetadataKey1"] = "MetaDataValue1"
            options = { :metadata => { "MetadataKey" => "MetaDataValue", "MetadataKey1" => "MetaDataValue1"} }
            subject.create_page_blob container_name, blob_name, blob_length, options
          end

          it "does not modify the request headers when provided an unknown value" do
            subject.create_page_blob container_name, blob_name, blob_length, { :unknown_key => "some_value" }
          end
        end
      end

      describe "#create_blob_pages" do
        let(:method) { :put }
        let(:start_range) { 255 }
        let(:end_range) { 512 }
        let(:content) { "some content" }
        let(:query) { {"comp" => "page"} }
        let(:request_headers) { 
          {
            "x-ms-page-write" => "update", 
            "x-ms-range" => "bytes=#{start_range}-#{end_range}",
            "Content-Type" => ""
          }
        }

        before {
          subject.stubs(:blob_uri).with(container_name, blob_name, query).returns(uri)
          subject.stubs(:call).with(method, uri, content, request_headers).returns(response)
          serialization.stubs(:blob_from_headers).with(response_headers).returns(blob)
        }

        it "assembles a URI for the request" do
          subject.expects(:blob_uri).with(container_name, blob_name, query).returns(uri)
          subject.create_blob_pages container_name, blob_name, start_range, end_range, content
        end

        it "calls StorageService#call with the prepared request" do
          subject.expects(:call).with(method, uri, content, request_headers).returns(response)
          subject.create_blob_pages container_name, blob_name, start_range, end_range, content
        end

        it "returns a Blob on success" do
          result = subject.create_blob_pages container_name, blob_name, start_range, end_range, content
          result.must_be_kind_of Azure::Blob::Blob
          result.must_equal blob
          result.name.must_equal blob_name
        end

        describe "when the options Hash is used" do
          it "modifies the request headers when provided a :if_sequence_number_eq value" do
            request_headers["x-ms-if-sequence-number-eq"] = "isne-value"
            subject.create_blob_pages container_name, blob_name, start_range, end_range, content, { :if_sequence_number_eq => "isne-value" }
          end

          it "modifies the request headers when provided a :if_sequence_number_lt value" do
            request_headers["x-ms-if-sequence-number-lt"] = "isnlt-value"
            subject.create_blob_pages container_name, blob_name, start_range, end_range, content, { :if_sequence_number_lt => "isnlt-value" }
          end

          it "modifies the request headers when provided a :if_sequence_number_le value" do
            request_headers["x-ms-if-sequence-number-le"] = "isnle-value"
            subject.create_blob_pages container_name, blob_name, start_range, end_range, content, { :if_sequence_number_le => "isnle-value" }
          end

          it "modifies the request headers when provided a :if_modified_since value" do
            request_headers["If-Modified-Since"] = "ims-value"
            subject.create_blob_pages container_name, blob_name, start_range, end_range, content, { :if_modified_since => "ims-value" }
          end

          it "modifies the request headers when provided a :if_unmodified_since value" do
            request_headers["If-Unmodified-Since"] = "iums-value"
            subject.create_blob_pages container_name, blob_name, start_range, end_range, content, { :if_unmodified_since => "iums-value" }
          end

          it "modifies the request headers when provided a :if_match value" do
            request_headers["If-Match"] = "im-value"
            subject.create_blob_pages container_name, blob_name, start_range, end_range, content, { :if_match => "im-value" }
          end

          it "modifies the request headers when provided a :if_none_match value" do
            request_headers["If-None-Match"] = "inm-value"
            subject.create_blob_pages container_name, blob_name, start_range, end_range, content, { :if_none_match => "inm-value" }
          end


          it "does not modify the request headers when provided an unknown value" do
            subject.create_blob_pages container_name, blob_name, start_range, end_range, content, { :unknown_key => "some_value" }
          end
        end
      end

      describe "#clear_blob_pages" do
        let(:method) { :put }
        let(:query) { {"comp" => "page"} }
        let(:start_range){ 255 }
        let(:end_range){ 512 }
        let(:request_headers) { 
          {
            "x-ms-range" => "bytes=#{start_range}-#{end_range}",
            "x-ms-page-write" => "clear", 
            "Content-Type" => ""
          }
        }

        before {
          subject.stubs(:blob_uri).with(container_name, blob_name, query).returns(uri)
          subject.stubs(:call).with(method, uri, nil, request_headers).returns(response)
          serialization.stubs(:blob_from_headers).with(response_headers).returns(blob)
        }

        it "assembles a URI for the request" do
          subject.expects(:blob_uri).with(container_name, blob_name, query).returns(uri)
          subject.clear_blob_pages container_name, blob_name, start_range, end_range
        end

        it "calls StorageService#call with the prepared request" do
          subject.expects(:call).with(method, uri, nil, request_headers).returns(response)
          subject.clear_blob_pages container_name, blob_name, start_range, end_range
        end

        it "returns a Blob on success" do
          result = subject.clear_blob_pages container_name, blob_name, start_range, end_range
          result.must_be_kind_of Azure::Blob::Blob
          result.must_equal blob
          result.name.must_equal blob_name
        end

        # describe "when start_range is provided" do
        #   let(:start_range){ 255 }
        #   before { request_headers["x-ms-range"]="#{start_range}-" }

        #   it "modifies the request headers with the desired range" do
        #     subject.expects(:call).with(method, uri, nil, request_headers).returns(response)
        #     subject.clear_blob_pages container_name, blob_name, start_range
        #   end
        # end

        # describe "when end_range is provided" do
        #   let(:end_range){ 512 }
        #   before { request_headers["x-ms-range"]="0-#{end_range}" }

        #   it "modifies the request headers with the desired range" do
        #     subject.expects(:call).with(method, uri, nil, request_headers).returns(response)
        #     subject.clear_blob_pages container_name, blob_name, nil, end_range
        #   end
        # end

        # describe "when both start_range and end_range are provided" do
        #   before { request_headers["x-ms-range"]="bytes=#{start_range}-#{end_range}" }

        #   it "modifies the request headers with the desired range" do
        #     subject.expects(:call).with(method, uri, nil, request_headers).returns(response)
        #     subject.clear_blob_pages container_name, blob_name, start_range, end_range
        #   end
        # end
      end

      describe "#create_blob_block" do
        require 'base64'

        let(:method) { :put }
        let(:content) { "some content"}
        let(:block_id) { "block-id"}
        let(:server_generated_content_md5) { "server-content-md5" }
        let(:request_headers) { {} }

        before {
          query.update({ "comp" => "block", "blockid" => Base64.strict_encode64(block_id) }) 
          response_headers["Content-MD5"] = server_generated_content_md5 
          subject.stubs(:blob_uri).with(container_name, blob_name, query).returns(uri)
          subject.stubs(:call).with(method, uri, content, request_headers).returns(response)
        }

        it "assembles a URI for the request" do
          subject.expects(:blob_uri).with(container_name, blob_name, query).returns(uri)
          subject.create_blob_block container_name, blob_name, block_id, content
        end

        it "calls StorageService#call with the prepared request" do
          subject.expects(:call).with(method, uri, content, request_headers).returns(response)
          subject.create_blob_block container_name, blob_name, block_id, content
        end

        it "returns content MD5 on success" do
          result = subject.create_blob_block container_name, blob_name, block_id, content
          result.must_equal server_generated_content_md5
        end

        describe "when the options Hash is used" do
          it "modifies the request headers when provided a :content_md5 value" do
            request_headers["Content-MD5"] = "content-md5"
            subject.create_blob_block container_name, blob_name, block_id, content, { :content_md5 => "content-md5" }
          end
          
          it "does not modify the request headers when provided an unknown value" do
            subject.create_blob_block container_name, blob_name, block_id, content, { :unknown_key => "some_value" }
          end
        end
      end

      describe "#create_block_blob" do
        let(:method) { :put }
        let(:content) { "some content" }
        let(:request_headers) { 
          {
            "x-ms-blob-type" => "BlockBlob",
            "Content-Type" => "application/octet-stream"
          }
        }

        before {
          subject.stubs(:blob_uri).with(container_name, blob_name, {}).returns(uri)
          subject.stubs(:call).with(method, uri, content, request_headers).returns(response)
          serialization.stubs(:blob_from_headers).with(response_headers).returns(blob)
        }

        it "assembles a URI for the request" do
          subject.expects(:blob_uri).with(container_name, blob_name, {}).returns(uri)
          subject.create_block_blob container_name, blob_name, content
        end

        it "calls StorageService#call with the prepared request" do
          subject.expects(:call).with(method, uri, content, request_headers).returns(response)
          subject.create_block_blob container_name, blob_name, content
        end

        it "returns a Blob on success" do
          result = subject.create_block_blob container_name, blob_name, content
          result.must_be_kind_of Azure::Blob::Blob
          result.must_equal blob
          result.name.must_equal blob_name
        end

        describe "when the options Hash is used" do
          it "modifies the request headers when provided a :blob_content_type value" do
            request_headers["x-ms-blob-content-type"] = "bct-value"
            subject.create_block_blob container_name, blob_name, content, { :blob_content_type => "bct-value" }
          end
          
          it "modifies the request headers when provided a :blob_content_encoding value" do
            request_headers["x-ms-blob-content-encoding"] = "bce-value"
            subject.create_block_blob container_name, blob_name, content, { :blob_content_encoding => "bce-value" }
          end

          it "modifies the request headers when provided a :blob_content_language value" do
            request_headers["x-ms-blob-content-language"] = "bcl-value"
            subject.create_block_blob container_name, blob_name, content, { :blob_content_language => "bcl-value" }
          end

          it "modifies the request headers when provided a :blob_content_md5 value" do
            request_headers["x-ms-blob-content-md5"] = "bcm-value"
            subject.create_block_blob container_name, blob_name, content, { :blob_content_md5 => "bcm-value" }
          end

          it "modifies the request headers when provided a :blob_cache_control value" do
            request_headers["x-ms-blob-cache-control"] = "bcc-value"
            subject.create_block_blob container_name, blob_name, content, { :blob_cache_control => "bcc-value" }
          end

          it "modifies the request headers when provided a :content_type value" do
            request_headers["Content-Type"] = "ct-value"
            subject.create_block_blob container_name, blob_name, content, { :content_type => "ct-value" }
          end
          
          it "modifies the request headers when provided a :content_encoding value" do
            request_headers["Content-Encoding"] = "ce-value"
            subject.create_block_blob container_name, blob_name, content, { :content_encoding => "ce-value" }
          end

          it "modifies the request headers when provided a :content_language value" do
            request_headers["Content-Language"] = "cl-value"
            subject.create_block_blob container_name, blob_name, content, { :content_language => "cl-value" }
          end

          it "modifies the request headers when provided a :content_md5 value" do
            request_headers["Content-MD5"] = "cm-value"
            subject.create_block_blob container_name, blob_name, content, { :content_md5 => "cm-value" }
          end

          it "modifies the request headers when provided a :cache_control value" do
            request_headers["Cache-Control"] = "cc-value"
            subject.create_block_blob container_name, blob_name, content, { :cache_control => "cc-value" }
          end

          it "modifies the request headers when provided a :metadata value" do
            request_headers["x-ms-meta-MetadataKey"] = "MetaDataValue"
            request_headers["x-ms-meta-MetadataKey1"] = "MetaDataValue1"
            options = { :metadata => { "MetadataKey" => "MetaDataValue", "MetadataKey1" => "MetaDataValue1"} }
            subject.create_block_blob container_name, blob_name, content, options
          end

          it "does not modify the request headers when provided an unknown value" do
            subject.create_block_blob container_name, blob_name, content, { :unknown_key => "some_value" }
          end
        end
      end

      describe "#commit_blob_blocks" do
        let(:method) { :put }
        let(:request_body) { "body" }
        let(:block_list) { mock() }
        let(:request_headers) { {} }

        before {
          query.update({ "comp" => "blocklist" }) 
          response.stubs(:success?).returns(true)
          subject.stubs(:blob_uri).with(container_name, blob_name, query).returns(uri)
          serialization.stubs(:block_list_to_xml).with(block_list).returns(request_body)
          subject.stubs(:call).with(method, uri, request_body, request_headers).returns(response)
        }

        it "assembles a URI for the request" do
          subject.expects(:blob_uri).with(container_name, blob_name, query).returns(uri)
          subject.commit_blob_blocks container_name, blob_name, block_list
        end

        it "calls StorageService#call with the prepared request" do
          subject.expects(:call).with(method, uri, request_body, request_headers).returns(response)
          subject.commit_blob_blocks container_name, blob_name, block_list
        end

        it "serializes the block list" do
          serialization.expects(:block_list_to_xml).with(block_list).returns(request_body)
          subject.commit_blob_blocks container_name, blob_name, block_list
        end

        it "returns nil on success" do
          result = subject.commit_blob_blocks container_name, blob_name, block_list
          result.must_equal nil
        end

        describe "when the options Hash is used" do
          it "modifies the request headers when provided a :content_md5 value" do
            request_headers["Content-MD5"] = "cm-value"
            subject.commit_blob_blocks container_name, blob_name, block_list, { :content_md5 => "cm-value" }
          end

          it "modifies the request headers when provided a :blob_content_type value" do
            request_headers["x-ms-blob-content-type"] = "bct-value"
            subject.commit_blob_blocks container_name, blob_name, block_list, { :blob_content_type => "bct-value" }
          end
          
          it "modifies the request headers when provided a :blob_content_encoding value" do
            request_headers["x-ms-blob-content-encoding"] = "bce-value"
            subject.commit_blob_blocks container_name, blob_name, block_list, { :blob_content_encoding => "bce-value" }
          end

          it "modifies the request headers when provided a :blob_content_language value" do
            request_headers["x-ms-blob-content-language"] = "bcl-value"
            subject.commit_blob_blocks container_name, blob_name, block_list, { :blob_content_language => "bcl-value" }
          end

          it "modifies the request headers when provided a :blob_content_md5 value" do
            request_headers["x-ms-blob-content-md5"] = "bcm-value"
            subject.commit_blob_blocks container_name, blob_name, block_list, { :blob_content_md5 => "bcm-value" }
          end

          it "modifies the request headers when provided a :blob_cache_control value" do
            request_headers["x-ms-blob-cache-control"] = "bcc-value"
            subject.commit_blob_blocks container_name, blob_name, block_list, { :blob_cache_control => "bcc-value" }
          end

          it "modifies the request headers when provided a :metadata value" do
            request_headers["x-ms-meta-MetadataKey"] = "MetaDataValue"
            request_headers["x-ms-meta-MetadataKey1"] = "MetaDataValue1"
            options = { :metadata => { "MetadataKey" => "MetaDataValue", "MetadataKey1" => "MetaDataValue1"} }
            subject.commit_blob_blocks container_name, blob_name, block_list, options
          end

          it "does not modify the request headers when provided an unknown value" do
            subject.commit_blob_blocks container_name, blob_name, block_list, { :unknown_key => "some_value" }
          end
        end
      end

      describe "#list_blob_blocks" do
        let(:method) { :get }
        let(:query) {{"comp"=>"blocklist", "blocklisttype"=>"all"}}
        let(:blob_block_list) { [Azure::Blob::Block.new] }

        before { 
          subject.stubs(:blob_uri).with(container_name, blob_name, query).returns(uri)
          subject.stubs(:call).with(method, uri).returns(response)
          serialization.stubs(:block_list_from_xml).with(response_body).returns(blob_block_list)
        }

        it "assembles a URI for the request" do
          subject.expects(:blob_uri).with(container_name, blob_name, query).returns(uri)
          subject.list_blob_blocks container_name, blob_name
        end

        it "calls StorageService#call with the prepared request" do
          subject.expects(:call).with(method, uri).returns(response)
          subject.list_blob_blocks container_name, blob_name
        end

        it "deserializes the response" do
          serialization.expects(:block_list_from_xml).with(response_body).returns(blob_block_list)
          subject.list_blob_blocks container_name, blob_name
        end

        it "returns a list of containers for the account" do
          result = subject.list_blob_blocks container_name, blob_name
          result.must_be_kind_of Array
          result.first.must_be_kind_of Azure::Blob::Block
        end

        describe "when blocklist_type is provided" do
          it "modifies the request query when the value is :all" do
            query["blocklisttype"] = "all"
            subject.list_blob_blocks container_name, blob_name, { :blocklist_type => :all }
          end

          it "modifies the request query when the value is :uncommitted" do
            query["blocklisttype"] = "uncommitted"
            subject.list_blob_blocks container_name, blob_name, { :blocklist_type => :uncommitted }
          end

          it "modifies the request query when the value is :committed" do
            query["blocklisttype"] = "committed"
            subject.list_blob_blocks container_name, blob_name, { :blocklist_type => :committed }
          end
        end

        describe "when snapshot is provided" do
          it "modifies the request query with the provided value" do
            query["snapshot"] = "snapshot-id"
            subject.list_blob_blocks container_name, blob_name, { :snapshot => "snapshot-id" }
          end
        end
      end

      describe "#list_page_blob_ranges" do
        let(:method) { :get }
        let(:query) { {"comp"=>"pagelist"} }
        let(:page_list) { [[0, 511], [512, 1023]] }

        before { 
          subject.stubs(:blob_uri).with(container_name, blob_name, query).returns(uri)
          subject.stubs(:call).with(method, uri, nil, request_headers).returns(response)
          serialization.stubs(:page_list_from_xml).with(response_body).returns(page_list)
        }

        it "assembles a URI for the request" do
          subject.expects(:blob_uri).with(container_name, blob_name, query).returns(uri)
          subject.list_page_blob_ranges container_name, blob_name
        end

        it "calls StorageService#call with the prepared request" do
          subject.expects(:call).with(method, uri, nil, request_headers).returns(response)
          subject.list_page_blob_ranges container_name, blob_name
        end

        it "deserializes the response" do
          serialization.expects(:page_list_from_xml).with(response_body).returns(page_list)
          subject.list_page_blob_ranges container_name, blob_name
        end

        it "returns a list of containers for the account" do
          result = subject.list_page_blob_ranges container_name, blob_name
          result.must_be_kind_of Array
          result.first.must_be_kind_of Array
          result.first.first.must_be_kind_of Integer
          result.first.first.next.must_be_kind_of Integer
        end

        # describe "when start_range is provided" do
        #   let(:start_range){ 255 }
        #   before { request_headers["x-ms-range"]="#{start_range}-" }

        #   it "modifies the request headers with the desired range" do
        #     subject.expects(:call).with(method, uri, nil, request_headers).returns(response)
        #     subject.list_page_blob_ranges container_name, blob_name, start_range
        #   end
        # end

        # describe "when end_range is provided" do
        #   let(:end_range){ 512 }
        #   before { request_headers["x-ms-range"]="0-#{end_range}" }

        #   it "modifies the request headers with the desired range" do
        #     subject.expects(:call).with(method, uri, nil, request_headers).returns(response)
        #     subject.list_page_blob_ranges container_name, blob_name, nil, end_range
        #   end
        # end

        describe "when both start_range and end_range are provided" do
          let(:start_range){ 255 }
          let(:end_range){ 512 }
          before { request_headers["x-ms-range"]="bytes=#{start_range}-#{end_range}" }

          it "modifies the request headers with the desired range" do
            subject.expects(:call).with(method, uri, nil, request_headers).returns(response)
            subject.list_page_blob_ranges container_name, blob_name, { :start_range => start_range, :end_range => end_range }
          end
        end

        describe "when snapshot is provided" do
          it "modifies the request query with the provided value" do
            query["snapshot"] = "snapshot-id"
            subject.list_page_blob_ranges container_name, blob_name, { :snapshot => "snapshot-id" }
          end
        end
      end

      describe "#set_blob_properties" do
        let(:method) { :put }
        let(:request_headers) { {} }

        before {
          query.update({ "comp" => "properties" }) 
          response.stubs(:success?).returns(true)
          subject.stubs(:blob_uri).with(container_name, blob_name, query).returns(uri)
          subject.stubs(:call).with(method, uri, nil, request_headers).returns(response)
        }

        it "assembles a URI for the request" do
          subject.expects(:blob_uri).with(container_name, blob_name, query).returns(uri)
          subject.set_blob_properties container_name, blob_name
        end

        it "calls StorageService#call with the prepared request" do
          subject.expects(:call).with(method, uri, nil, request_headers).returns(response)
          subject.set_blob_properties container_name, blob_name
        end

        it "returns nil on success" do
          result = subject.set_blob_properties container_name, blob_name
          result.must_equal nil
        end

        describe "when the options Hash is used" do
          it "modifies the request headers when provided a :blob_content_type value" do
            request_headers["x-ms-blob-content-type"] = "bct-value"
            subject.set_blob_properties container_name, blob_name, { :blob_content_type => "bct-value" }
          end
          
          it "modifies the request headers when provided a :blob_content_encoding value" do
            request_headers["x-ms-blob-content-encoding"] = "bce-value"
            subject.set_blob_properties container_name, blob_name, { :blob_content_encoding => "bce-value" }
          end

          it "modifies the request headers when provided a :blob_content_language value" do
            request_headers["x-ms-blob-content-language"] = "bcl-value"
            subject.set_blob_properties container_name, blob_name, { :blob_content_language => "bcl-value" }
          end

          it "modifies the request headers when provided a :blob_content_md5 value" do
            request_headers["x-ms-blob-content-md5"] = "bcm-value"
            subject.set_blob_properties container_name, blob_name, { :blob_content_md5 => "bcm-value" }
          end

          it "modifies the request headers when provided a :blob_cache_control value" do
            request_headers["x-ms-blob-cache-control"] = "bcc-value"
            subject.set_blob_properties container_name, blob_name, { :blob_cache_control => "bcc-value" }
          end

          it "modifies the request headers when provided a :blob_content_length value" do
            request_headers["x-ms-blob-content-length"] = "37"
            subject.set_blob_properties container_name, blob_name, { :blob_content_length => 37.to_s }
          end

          it "modifies the request headers when provided a :sequence_number_action value" do
            request_headers["x-ms-blob-sequence-number-action"] = "anyvalue"
            subject.set_blob_properties container_name, blob_name, { :sequence_number_action => :anyvalue }
          end

          it "modifies the request headers when provided a :sequence_number value" do
            request_headers["x-ms-blob-sequence-number"] = "37"
            subject.set_blob_properties container_name, blob_name, { :sequence_number => 37.to_s }
          end

          it "does not modify the request headers when provided an unknown value" do
            subject.set_blob_properties container_name, blob_name, { :unknown_key => "some_value" }
          end
        end
      end

      describe "#set_blob_metadata" do
        let(:method) { :put }
        let(:blob_metadata) { { "MetadataKey" => "MetaDataValue", "MetadataKey1" => "MetaDataValue1" } }
        let(:request_headers) { { "x-ms-meta-MetadataKey" => "MetaDataValue", "x-ms-meta-MetadataKey1" => "MetaDataValue1" } }

        before {
          query.update({ "comp" => "metadata" }) 
          response.stubs(:success?).returns(true)
          subject.stubs(:blob_uri).with(container_name, blob_name, query).returns(uri)
          subject.stubs(:call).with(method, uri, nil, request_headers).returns(response)
        }

        it "assembles a URI for the request" do
          subject.expects(:blob_uri).with(container_name, blob_name, query).returns(uri)
          subject.set_blob_metadata container_name, blob_name, blob_metadata
        end

        it "calls StorageService#call with the prepared request" do
          subject.expects(:call).with(method, uri, nil, request_headers).returns(response)
          subject.set_blob_metadata container_name, blob_name, blob_metadata
        end

        it "returns nil on success" do
          result = subject.set_blob_metadata container_name, blob_name, blob_metadata
          result.must_equal nil
        end
      end

      describe "#get_blob_properties" do
        let(:method) { :head }

        before {
          subject.stubs(:blob_uri).with(container_name, blob_name, query).returns(uri)
          subject.stubs(:call).with(method, uri).returns(response)
          serialization.stubs(:blob_from_headers).with(response_headers).returns(blob)
        }
      
        it "assembles a URI for the request" do
          subject.expects(:blob_uri).with(container_name, blob_name, query).returns(uri)
          subject.get_blob_properties container_name, blob_name
        end

        it "calls StorageService#call with the prepared request" do
          subject.expects(:call).with(method, uri).returns(response)
          subject.get_blob_properties container_name, blob_name
        end

        it "returns the blob on success" do
          result = subject.get_blob_properties container_name, blob_name
          
          result.must_be_kind_of Azure::Blob::Blob
          result.must_equal blob
          result.name.must_equal blob_name
        end

        describe "when snapshot is provided" do
          let(:snapshot){ "snapshot" }
          before { query["snapshot"]=snapshot }

          it "modifies the blob uri query string with the snapshot" do
            subject.expects(:blob_uri).with(container_name, blob_name, query).returns(uri)
            subject.get_blob_properties container_name, blob_name, { :snapshot => snapshot }
          end

          it "sets the snapshot value on the returned blob" do
            result = subject.get_blob_properties container_name, blob_name, { :snapshot => snapshot }
            result.snapshot.must_equal snapshot
          end
        end
      end

      describe "#get_blob_metadata" do
        let(:method) { :get }

        before {
          query["comp"]="metadata"

          subject.stubs(:blob_uri).with(container_name, blob_name, query).returns(uri)
          subject.stubs(:call).with(method, uri).returns(response)
          serialization.stubs(:blob_from_headers).with(response_headers).returns(blob)
        }
      
        it "assembles a URI for the request" do
          subject.expects(:blob_uri).with(container_name, blob_name, query).returns(uri)
          subject.get_blob_metadata container_name, blob_name
        end

        it "calls StorageService#call with the prepared request" do
          subject.expects(:call).with(method, uri).returns(response)
          subject.get_blob_metadata container_name, blob_name
        end

        it "returns the blob on success" do
          result = subject.get_blob_metadata container_name, blob_name
          
          result.must_be_kind_of Azure::Blob::Blob
          result.must_equal blob
          result.name.must_equal blob_name
        end

        describe "when snapshot is provided" do
          let(:snapshot){ "snapshot" }
          before { 
            query["snapshot"]=snapshot 
            subject.stubs(:blob_uri).with(container_name, blob_name, query).returns(uri)
          }

          it "modifies the blob uri query string with the snapshot" do
            subject.expects(:blob_uri).with(container_name, blob_name, query).returns(uri)
            subject.get_blob_metadata container_name, blob_name, { :snapshot => snapshot }
          end

          it "sets the snapshot value on the returned blob" do
            result = subject.get_blob_metadata container_name, blob_name, { :snapshot => snapshot }
            result.snapshot.must_equal snapshot
          end
        end
      end

      describe "#get_blob" do
        let(:method) { :get }

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

        it "returns the blob and blob contents on success" do
          returned_blob, returned_blob_contents = subject.get_blob container_name, blob_name
          
          returned_blob.must_be_kind_of Azure::Blob::Blob
          returned_blob.must_equal blob

          returned_blob_contents.must_equal response_body
        end

        describe "when snapshot is provided" do
          let(:source_snapshot){ "source-snapshot" }
          before { query["snapshot"]=source_snapshot }

          it "modifies the blob uri query string with the snapshot" do
            subject.expects(:blob_uri).with(container_name, blob_name, query).returns(uri)
            subject.get_blob container_name, blob_name, { :snapshot => source_snapshot }
          end
        end

        # describe "when start_range is provided" do
        #   let(:start_range){ 255 }
        #   before { request_headers["x-ms-range"]="#{start_range}-" }

        #   it "modifies the request headers with the desired range" do
        #     subject.expects(:call).with(method, uri, nil, request_headers).returns(response)
        #     subject.get_blob container_name, blob_name, start_range
        #   end
        # end

        # describe "when end_range is provided" do
        #   let(:end_range){ 512 }
        #   before { request_headers["x-ms-range"]="0-#{end_range}" }

        #   it "modifies the request headers with the desired range" do
        #     subject.expects(:call).with(method, uri, nil, request_headers).returns(response)
        #     subject.get_blob container_name, blob_name, nil, end_range
        #   end
        # end

        describe "when both start_range and end_range are provided" do
          let(:start_range){ 255 }
          let(:end_range){ 512 }
          before { request_headers["x-ms-range"]="bytes=#{start_range}-#{end_range}" }

          it "modifies the request headers with the desired range" do
            subject.expects(:call).with(method, uri, nil, request_headers).returns(response)
            subject.get_blob container_name, blob_name, { :start_range => start_range, :end_range => end_range }
          end
        end

        describe "when get_content_md5 is true" do
          let(:get_content_md5) { true }

          describe "and a range is specified" do
            let(:start_range){ 255 }
            let(:end_range){ 512 }
            before { 
              request_headers["x-ms-range"]="bytes=#{start_range}-#{end_range}"
              request_headers["x-ms-range-get-content-md5"]= true
            }

            it "modifies the request headers to include the x-ms-range-get-content-md5 header" do
              subject.expects(:call).with(method, uri, nil, request_headers).returns(response)
              subject.get_blob container_name, blob_name, { :start_range => start_range, :end_range => end_range, :get_content_md5 => true }
            end
          end

          describe "and a range is NOT specified" do
            it "does not modify the request headers" do
              subject.expects(:call).with(method, uri, nil, request_headers).returns(response)
              subject.get_blob container_name, blob_name, { :get_content_md5 => true }
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

        it "returns nil on success" do
          result = subject.delete_blob container_name, blob_name
          result.must_equal nil
        end
        
        describe "when snapshot is provided" do
          let(:source_snapshot){ "source-snapshot" }
          before {
            request_headers.delete "x-ms-delete-snapshots"
            query["snapshot"] = source_snapshot 
          }

          it "modifies the blob uri query string with the snapshot" do
            subject.expects(:blob_uri).with(container_name, blob_name, query).returns(uri)
            subject.delete_blob container_name, blob_name, { :snapshot => source_snapshot }
          end

          it "does not include a x-ms-delete-snapshots header" do
            subject.expects(:call).with(method, uri, nil, request_headers).returns(response)
            subject.delete_blob container_name, blob_name, { :snapshot => source_snapshot }
          end
        end

        describe "when delete_snapshots is provided" do
          let(:delete_snapshots){ :anyvalue }
          before { request_headers["x-ms-delete-snapshots"]=delete_snapshots.to_s }

          it "modifies the request headers with the provided value" do
            subject.expects(:call).with(method, uri, nil, request_headers).returns(response)
            subject.delete_blob container_name, blob_name, { :delete_snapshots => delete_snapshots }
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
            subject.delete_blob container_name, blob_name, { :snapshot => source_snapshot, :delete_snapshots => delete_snapshots }
          end

          it "does not include a x-ms-delete-snapshots header" do
            subject.expects(:call).with(method, uri, nil, request_headers).returns(response)
            subject.delete_blob container_name, blob_name, { :snapshot => source_snapshot, :delete_snapshots => delete_snapshots }
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

        it "returns the snapshot id on success" do
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
          request_headers["x-ms-copy-source"] = source_uri.to_s

          response_headers["x-ms-copy-id"] = copy_id
          response_headers["x-ms-copy-status"] = copy_status

          subject.stubs(:blob_uri).with(container_name, blob_name, {}).returns(uri)
          subject.stubs(:blob_uri).with(source_container_name, source_blob_name, query).returns(source_uri)
          subject.stubs(:call).with(method, uri, nil, request_headers).returns(response)
        }
      
        it "assembles a URI for the request" do
          subject.expects(:blob_uri).with(container_name, blob_name, {}).returns(uri)
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
            subject.copy_blob container_name, blob_name, source_container_name, source_blob_name, { :source_snapshot => source_snapshot }
          end
        end

        describe "when the options Hash is used" do
          before { 
            subject.expects(:call).with(method, uri, nil, request_headers).returns(response)
          }

          it "modifies the request headers when provided a :dest_if_modified_since value" do
            request_headers["If-Modified-Since"] = "ims-value"
            subject.copy_blob container_name, blob_name, source_container_name, source_blob_name, { :dest_if_modified_since => "ims-value" }
          end
          
          it "modifies the request headers when provided a :dest_if_unmodified_since value" do
            request_headers["If-Unmodified-Since"] = "iums-value"
            subject.copy_blob container_name, blob_name, source_container_name, source_blob_name, { :dest_if_unmodified_since => "iums-value" }
          end

          it "modifies the request headers when provided a :dest_if_match value" do
            request_headers["If-Match"] = "im-value"
            subject.copy_blob container_name, blob_name, source_container_name, source_blob_name, { :dest_if_match => "im-value" }
          end

          it "modifies the request headers when provided a :dest_if_none_match value" do
            request_headers["If-None-Match"] = "inm-value"
            subject.copy_blob container_name, blob_name, source_container_name, source_blob_name, { :dest_if_none_match => "inm-value" }
          end

          it "modifies the request headers when provided a :source_if_modified_since value" do
            request_headers["x-ms-source-if-modified-since"] = "ims-value"
            subject.copy_blob container_name, blob_name, source_container_name, source_blob_name, { :source_if_modified_since => "ims-value" }
          end
          
          it "modifies the request headers when provided a :source_if_unmodified_since value" do
            request_headers["x-ms-source-if-unmodified-since"] = "iums-value"
            subject.copy_blob container_name, blob_name, source_container_name, source_blob_name, { :source_if_unmodified_since => "iums-value" }
          end

          it "modifies the request headers when provided a :source_if_match value" do
            request_headers["x-ms-source-if-match"] = "im-value"
            subject.copy_blob container_name, blob_name, source_container_name, source_blob_name, { :source_if_match => "im-value" }
          end

          it "modifies the request headers when provided a :source_if_none_match value" do
            request_headers["x-ms-source-if-none-match"] = "inm-value"
            subject.copy_blob container_name, blob_name, source_container_name, source_blob_name, { :source_if_none_match => "inm-value" }
          end

          it "modifies the request headers when provided a :metadata value" do
            request_headers["x-ms-meta-MetadataKey"] = "MetaDataValue"
            request_headers["x-ms-meta-MetadataKey1"] = "MetaDataValue1"
            options = { :metadata => { "MetadataKey" => "MetaDataValue", "MetadataKey1" => "MetaDataValue1"} }
            subject.copy_blob container_name, blob_name, source_container_name, source_blob_name, options
          end

          it "does not modify the request headers when provided an unknown value" do
            subject.copy_blob container_name, blob_name, source_container_name, source_blob_name, { :unknown_key => "some_value" }
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
              subject.acquire_lease container_name, blob_name, { :duration => duration }
            end
          end

          describe "when passed a proposed_lease_id" do
            let(:default_duration) { -1 }
            let(:proposed_lease_id) { "proposed-lease-id" }
            before { request_headers["x-ms-proposed-lease-id"] = proposed_lease_id }

            it "modifies the headers to include the proposed lease id" do
              subject.expects(:call).with(method, uri, nil, request_headers).returns(response)
              subject.acquire_lease container_name, blob_name, { :duration => default_duration, :proposed_lease_id => proposed_lease_id }
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

          it "returns nil on success" do
            result = subject.release_lease container_name, blob_name, lease_id
            result.must_equal nil
          end
        end

        describe "#break_lease" do
          let(:lease_time) { 38 }
          before {
            request_headers["x-ms-lease-action"] = "break"

            response.stubs(:success?).returns(true)
            response_headers["x-ms-lease-time"] = lease_time.to_s
          }
          
          it "assembles a URI for the request" do
            subject.expects(:blob_uri).with(container_name, blob_name, query).returns(uri)
            subject.break_lease container_name, blob_name
          end

          it "calls StorageService#call with the prepared request" do
            subject.expects(:call).with(method, uri, nil, request_headers).returns(response)
            subject.break_lease container_name, blob_name
          end

          it "returns lease time on success" do
            result = subject.break_lease container_name, blob_name
            result.must_equal lease_time
          end

          describe "when passed an optional break period" do
            let(:break_period) { 37 }
            before { request_headers["x-ms-lease-break-period"] = break_period.to_s }

            it "modifies the request headers to include a break period" do
              subject.expects(:call).with(method, uri, nil, request_headers).returns(response)
              subject.break_lease container_name, blob_name, { :break_period => break_period }
            end
          end
        end
      end
    end
  end

  class MockBlobService < Azure::Blob::BlobService
    def containers_uri(query={})
      super
    end

    def container_uri(name, query={})
      super
    end

    def blob_uri(container_name, blob_name, query={})
      super
    end
  end

  describe "uri functions" do
    subject { MockBlobService.new }

    let(:container_name) { "container" }
    let(:blob_name) { "blob" }
    let(:query) { { "param" => "value", "param 1" => "value 1" } }
    let(:host_uri) { "http://dummy.uri" }

    before { 
      subject.host = host_uri
    }

    describe "#containers_uri" do
      it "returns a containers URI" do
        result = subject.containers_uri
        result.must_be_kind_of URI
        result.scheme.must_equal "http"
        result.host.must_equal "dummy.uri"
        result.path.must_equal "/"
        result.query.must_equal "comp=list"
      end

      it "encodes optional query has as uri parameters" do
        result = subject.containers_uri query
        result.query.must_equal "comp=list&param=value&param+1=value+1"
      end
    end

    describe "#container_uri" do
      it "returns a container URI" do
        result = subject.container_uri container_name
        result.must_be_kind_of URI
        result.scheme.must_equal "http"
        result.host.must_equal "dummy.uri"
        result.path.must_equal "/container"
        result.query.must_equal "restype=container"
      end

      it "encodes optional query has as uri parameters" do
        result = subject.container_uri container_name, query
        result.query.must_equal "restype=container&param=value&param+1=value+1"
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
      end

      it "encodes optional query has as uri parameters" do
        result = subject.blob_uri container_name, blob_name, query
        result.query.must_equal "param=value&param+1=value+1"
      end
    end
  end
end