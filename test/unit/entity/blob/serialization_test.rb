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

require "azure/entity/blob/enumeration_results"
require "azure/entity/blob/serialization"

require "azure/entity/blob/container_enumeration_results"
require "azure/entity/blob/container"
require "azure/entity/blob/container_properties"

require "azure/entity/blob/blob_enumeration_results"
require "azure/entity/blob/blob"
require "azure/entity/blob/blob_properties"

describe Azure::Entity::Blob::Serialization do
  describe ".enumeration_results_from_xml parses the xml and " do

    subject do
      Azure::Entity::Blob::Serialization.enumeration_results_from_xml(Fixtures[:list_containers], Azure::Entity::Blob::EnumerationResults.new)
    end

    it "parses EnumerationResults XML element as Azure::Entity::Blob::EnumerationResults" do
        subject.must_be :kind_of?, Azure::Entity::Blob::EnumerationResults
    end

    it "parses EnumerationResults XML child elements into object properties" do
      subject.max_results.must_equal 3
      subject.next_marker.must_equal "video"
    end

  end

  describe ".container_enumeration_results_from_xml parses the xml and " do

    subject do
      Azure::Entity::Blob::Serialization.container_enumeration_results_from_xml(Fixtures[:list_containers])
    end

    it "parses EnumerationResults XML element as Azure::Entity::Blob::ContainerEnumerationResults" do
        subject.must_be :kind_of?, Azure::Entity::Blob::ContainerEnumerationResults
    end

    it "parses EnumerationResults XML element account_name attribute as object property" do
        subject.account_name.must_equal " http://myaccount.blob.core.windows.net"
    end

    it "parses EnumerationResults XML child elements into object properties" do
      subject.max_results.must_equal 3
      subject.next_marker.must_equal "video"
    end

    it "parses a list of containers from Containers XML element" do
      subject.containers.count.must_equal 3
    end

    it "parses Container XML elements as Azure::Entity::Blob::Container" do
      container=subject.containers[0]
      container.must_be :kind_of?, Azure::Entity::Blob::Container

      container=subject.containers[1]
      container.must_be :kind_of?, Azure::Entity::Blob::Container

      container=subject.containers[2]
      container.must_be :kind_of?, Azure::Entity::Blob::Container
    end

    it "parses Container XML child element values into object properties" do
      container=subject.containers[0]
      container.name.must_equal "audio"
      container.url.must_equal "http://myaccount.blob.core.windows.net/audio"

      container=subject.containers[1]
      container.name.must_equal "images"
      container.url.must_equal "http://myaccount.blob.core.windows.net/images"

      container=subject.containers[2]
      container.name.must_equal "textfiles"
      container.url.must_equal "http://myaccount.blob.core.windows.net/textfiles"
    end

    it "parses Container/Properties XML element as Azure::Entity::Blob::ContainerProperties" do
      subject.containers.each { |container| 
        container.properties.must_be :kind_of?, Azure::Entity::Blob::ContainerProperties
        }
    end

    it "parses Container/Properties XML child elements as object properties" do
      properties=subject.containers[0].properties
      properties.last_modified.must_equal "Wed, 12 Aug 2009 20:39:39 GMT"
      properties.etag.must_equal "0x8CACB9BD7C6B1B2"

      properties=subject.containers[1].properties
      properties.last_modified.must_equal "Wed, 12 Aug 2009 20:39:39 GMT"
      properties.etag.must_equal "0x8CACB9BD7C1EEEC"

      properties=subject.containers[2].properties
      properties.last_modified.must_equal "Wed, 12 Aug 2009 20:39:39 GMT"
      properties.etag.must_equal "0x8CACB9BD7BACAC3"
      properties.lease_status.must_equal "locked"
    end

    it "parses Container/Metadata XML element as a Hash" do
      subject.containers[1].metadata.must_be :kind_of?, Hash
    end

    it "parses Container/Metadata XML child elements as Hash key/value pairs" do
      metadata=subject.containers[1].metadata
      metadata["MyMetadata1"].must_equal "first value"
      metadata["MyMetadata2"].must_equal "second value"
    end

    it "parses Container/Metadata XML child elements as Hash key/value pairs, and when it finds two child elements with the same key, creates an array of values" do
      multivalue=subject.containers[1].metadata["x-ms-invalid-name"]
      multivalue.must_be :kind_of?, Array
      multivalue.length.must_equal 2
      multivalue.must_equal ["invalid-metadata-name", "invalid-metadata-name2"]
    end
  end

  describe ".blob_enumeration_results_from_xml parses the xml and " do
    subject do
      Azure::Entity::Blob::Serialization.blob_enumeration_results_from_xml(Fixtures[:list_blobs])
    end

    it "parses EnumerationResults XML element as Azure::Entity::Blob::BlobEnumerationResults" do
      subject.must_be :kind_of?, Azure::Entity::Blob::BlobEnumerationResults
    end

    it "parses EnumerationResults XML element account_name attribute as object property" do
      subject.container_name.must_equal "http://myaccount.blob.core.windows.net/mycontainer"
    end

    it "parses EnumerationResults XML child elements into object properties" do
      subject.max_results.must_equal 5
      subject.next_marker.must_equal "container4"
    end

    it "parses a list of blobs from Blobs/Blob XML elements" do
      subject.blobs.count.must_equal 5
    end

    it "parses a list of blob_prefixes from Blobs/BlobPrefix XML elements" do
      subject.blob_prefixes.count.must_equal 1
    end

    it "parses Blob XML elements as Azure::Entity::Blob::Blob" do
      subject.blobs.each { |blob| 
        blob.must_be :kind_of?, Azure::Entity::Blob::Blob
      }
    end

    it "parses BlobPrefix XML elements as strings in the blob_prefixes property of the BlobEnumerationResults object" do
      subject.blob_prefixes.each { |blob_prefix| 
        blob_prefix.must_be :kind_of?, String
      }
    end

    it "parses Blob XML child element values into object properties" do
      blob=subject.blobs[0]
      blob.name.must_equal "blob1.txt"
      blob.url.must_equal "http://myaccount.blob.core.windows.net/mycontainer/blob1.txt"

      blob=subject.blobs[1]
      blob.name.must_equal "blob2.txt"
      blob.url.must_equal "http://myaccount.blob.core.windows.net/mycontainer/blob2.txt?snapshot=2009-09-09T09%3a20%3a03.0427659Z"
      blob.snapshot.must_equal "2009-09-09T09:20:03.0427659Z"

      blob=subject.blobs[2]
      blob.name.must_equal "blob2.txt"
      blob.url.must_equal "http://myaccount.blob.core.windows.net/mycontainer/blob2.txt?snapshot=2009-09-09T09%3a20%3a03.1587543Z"
      blob.snapshot.must_equal "2009-09-09T09:20:03.1587543Z"

      blob=subject.blobs[3]
      blob.name.must_equal "blob2.txt"
      blob.url.must_equal "http://myaccount.blob.core.windows.net/mycontainer/blob2.txt"
      
      blob=subject.blobs[4]
      blob.name.must_equal "blob3.txt"
      blob.url.must_equal "http://myaccount.blob.core.windows.net/mycontainer/blob3.txt"
    end

    it "parses Blob/Properties XML element as Azure::Entity::Blob::ContainerProperties" do
      subject.blobs.each { |blob| 
        blob.properties.must_be :kind_of?, Azure::Entity::Blob::BlobProperties
        }
    end

    it "parses Blob/Properties XML child elements as object properties" do
      properties=subject.blobs[0].properties
      properties.last_modified.must_equal "Wed, 09 Sep 2009 09:20:02 GMT"
      properties.etag.must_equal "0x8CBFF45D8A29A19"
      properties.content_length.must_equal 100
      properties.content_type.must_equal "text/html"
      properties.content_encoding.must_equal ""
      properties.content_language.must_equal "en-US"
      properties.content_md5.must_equal ""
      properties.cache_control.must_equal "no-cache"
      properties.blob_type.must_equal "BlockBlob"
      properties.lease_status.must_equal "unlocked"

      properties=subject.blobs[1].properties
      properties.last_modified.must_equal "Wed, 09 Sep 2009 09:20:02 GMT"
      properties.etag.must_equal "0x8CBFF45D8B4C212"
      properties.content_length.must_equal 5000
      properties.content_type.must_equal "application/octet-stream"
      properties.content_encoding.must_equal "gzip"
      properties.content_language.must_equal ""
      properties.content_md5.must_equal ""
      properties.cache_control.must_equal ""
      properties.blob_type.must_equal "BlockBlob"

      properties=subject.blobs[2].properties
      properties.last_modified.must_equal "Wed, 09 Sep 2009 09:20:02 GMT"
      properties.etag.must_equal "0x8CBFF45D8B4C212"
      properties.content_length.must_equal 5000
      properties.content_type.must_equal "application/octet-stream"
      properties.content_encoding.must_equal "gzip"
      properties.content_language.must_equal ""
      properties.content_md5.must_equal ""
      properties.cache_control.must_equal ""
      properties.blob_type.must_equal "BlockBlob"

      properties=subject.blobs[3].properties
      properties.last_modified.must_equal "Wed, 09 Sep 2009 09:20:02 GMT"
      properties.etag.must_equal "0x8CBFF45D8B4C212"
      properties.content_length.must_equal 5000
      properties.content_type.must_equal "application/octet-stream"
      properties.content_encoding.must_equal "gzip"
      properties.content_language.must_equal ""
      properties.content_md5.must_equal ""
      properties.cache_control.must_equal ""
      properties.blob_type.must_equal "BlockBlob"
      properties.lease_status.must_equal "unlocked"

      properties=subject.blobs[4].properties
      properties.last_modified.must_equal "Wed, 09 Sep 2009 09:20:03 GMT"
      properties.etag.must_equal "0x8CBFF45D911FADF"
      properties.content_length.must_equal 16384
      properties.content_type.must_equal "image/jpeg"
      properties.content_encoding.must_equal ""
      properties.content_language.must_equal ""
      properties.content_md5.must_equal ""
      properties.cache_control.must_equal ""
      properties.sequence_number.must_equal 3
      properties.blob_type.must_equal "PageBlob"
      properties.lease_status.must_equal "locked"
    end

    it "parses Blob/Metadata XML element as a Hash" do
      subject.blobs.each { |blob|
        blob.metadata.must_be :kind_of?, Hash if blob.metadata != nil
      }
    end

    it "parses Blob/Metadata XML child elements as Hash key/value pairs" do
      metadata=subject.blobs[0].metadata
      metadata["Color"].must_equal "blue"
      metadata["BlobNumber"].must_equal "01"
      metadata["SomeMetadataName"].must_equal "SomeMetadataValue"

      metadata=subject.blobs[1].metadata
      metadata["Color"].must_equal "green"
      metadata["BlobNumber"].must_equal "02"
      metadata["SomeMetadataName"].must_equal ["SomeMetadataValue", "SomeMetadataValue2"]
      metadata["x-ms-invalid-name"].must_equal "nasdf$@\#$$"

      metadata=subject.blobs[2].metadata
      metadata["Color"].must_equal "green"
      metadata["BlobNumber"].must_equal "02"
      metadata["SomeMetadataName"].must_equal "SomeMetadataValue"

      metadata=subject.blobs[3].metadata
      metadata["Color"].must_equal "green"
      metadata["BlobNumber"].must_equal "02"
      metadata["SomeMetadataName"].must_equal "SomeMetadataValue"

      metadata=subject.blobs[4].metadata
      metadata["Color"].must_equal "yellow"
      metadata["BlobNumber"].must_equal "03"
      metadata["SomeMetadataName"].must_equal "SomeMetadataValue"
    end

    it "parses Blob/Metadata XML child elements as Hash key/value pairs, and when it finds two child elements with the same key, creates an array of values" do
      multivalue=subject.blobs[1].metadata["SomeMetadataName"]
      multivalue.must_be :kind_of?, Array
      multivalue.length.must_equal 2
      multivalue.must_equal ["SomeMetadataValue", "SomeMetadataValue2"]
    end
  end
end
