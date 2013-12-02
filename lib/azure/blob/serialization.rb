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
require 'azure/service/serialization'
require 'azure/service/enumeration_results'

require 'azure/blob/container'
require 'azure/blob/blob'
require 'azure/blob/block'

require 'base64'

module Azure
  module Blob
    module Serialization
      include Azure::Service::Serialization

      def self.container_enumeration_results_from_xml(xml)
        xml = slopify(xml)
        expect_node("EnumerationResults", xml)

        results = enumeration_results_from_xml(xml, Azure::Service::EnumerationResults.new)
        
        return results unless (xml > "Containers").any? && ((xml > "Containers") > "Container").any?

        if xml.Containers.Container.count == 0
          results.push(container_from_xml(xml.Containers.Container))
        else
          xml.Containers.Container.each { |container_node|
            results.push(container_from_xml(container_node))
          }
        end

        results
      end

      def self.container_from_xml(xml)
        xml = slopify(xml)
        expect_node("Container", xml)

        Container.new do |container|
          container.name = xml.Name.text if (xml > "Name").any?
          container.properties = container_properties_from_xml(xml.Properties) if (xml > "Properties").any?
          container.metadata = metadata_from_xml(xml.Metadata) if (xml > "Metadata").any?
        end
      end

      def self.container_from_headers(headers)
        Container.new do |container|
          container.properties = container_properties_from_headers(headers)
          container.public_access_level = public_access_level_from_headers(headers)
          container.metadata = metadata_from_headers(headers)
        end
      end

      def self.container_properties_from_xml(xml)
        xml = slopify(xml)
        expect_node("Properties", xml)

        props = {}

        props[:last_modified] = (xml > "Last-Modified").text if (xml > "Last-Modified").any?
        props[:etag] = xml.Etag.text if (xml > "Etag").any?
        props[:lease_status] = xml.LeaseStatus.text if (xml > "LeaseStatus").any?
        props[:lease_state] = xml.LeaseState.text if (xml > "LeaseState").any?
        props[:lease_duration] = xml.LeaseDuration.text if (xml > "LeaseDuration").any?

        props
      end

      def self.container_properties_from_headers(headers)
        props = {}

        props[:last_modified] = headers["Last-Modified"] 
        props[:etag] = headers["Etag"]
        props[:lease_status] = headers["x-ms-lease-status"]
        props[:lease_state] = headers["x-ms-lease-state"]
        props[:lease_duration] = headers["x-ms-lease-duration"]

        props
      end

      def self.public_access_level_from_headers(headers)
        headers["x-ms-blob-public-access"]
      end

      def self.blob_enumeration_results_from_xml(xml)
      
        xml = slopify(xml)
        expect_node("EnumerationResults", xml)

        results = enumeration_results_from_xml(xml, Azure::Service::EnumerationResults.new)

        return results unless (xml > "Blobs").any?

        if ((xml > "Blobs") > "Blob").any?
          if xml.Blobs.Blob.count == 0
            results.push(blob_from_xml(xml.Blobs.Blob))
          else
            xml.Blobs.Blob.each { |blob_node|
              results.push(blob_from_xml(blob_node))
            }
          end
        end

        results
      end
      
      def self.blob_from_xml(xml)
        xml = slopify(xml)
        expect_node("Blob", xml)

        Blob.new do |blob|
          blob.name = xml.Name.text if (xml > "Name").any?
          blob.snapshot = xml.Snapshot.text if (xml > "Snapshot").any?

          blob.properties = blob_properties_from_xml(xml.Properties) if (xml > "Properties").any?
          blob.metadata = metadata_from_xml(xml.Metadata) if (xml > "Metadata").any?
        end
      end

      def self.blob_from_headers(headers)
        Blob.new do |blob|
          blob.properties = blob_properties_from_headers(headers)
          blob.metadata = metadata_from_headers(headers)
        end
      end

      def self.blob_properties_from_xml(xml)
        xml = slopify(xml)
        expect_node("Properties", xml)

        props = {}

        props[:last_modified] = (xml > "Last-Modified").text if (xml > "Last-Modified").any?
        props[:etag] = xml.Etag.text if (xml > "Etag").any?
        props[:lease_status] = xml.LeaseStatus.text if (xml > "LeaseStatus").any?
        props[:lease_state] = xml.LeaseState.text if (xml > "LeaseState").any?
        props[:lease_duration] = xml.LeaseDuration.text if (xml > "LeaseDuration").any?
        props[:content_length] = (xml > "Content-Length").text.to_i if (xml > "Content-Length").any?
        props[:content_type] = (xml > "Content-Type").text if (xml > "Content-Type").any?
        props[:content_encoding] = (xml > "Content-Encoding").text if (xml > "Content-Encoding").any?
        props[:content_language] = (xml > "Content-Language").text if (xml > "Content-Language").any?
        props[:content_md5] = (xml > "Content-MD5").text if (xml > "Content-MD5").any?

        props[:cache_control] = (xml > "Cache-Control").text if (xml > "Cache-Control").any?
        props[:sequence_number] = (xml > "x-ms-blob-sequence-number").text.to_i if (xml > "x-ms-blob-sequence-number").any?
        props[:blob_type] = xml.BlobType.text if (xml > "BlobType").any?
        props[:copy_id] = xml.CopyId.text if (xml > "CopyId").any?
        props[:copy_status] = xml.CopyStatus.text if (xml > "CopyStatus").any?
        props[:copy_source] = xml.CopySource.text if (xml > "CopySource").any?
        props[:copy_progress] = xml.CopyProgress.text if (xml > "CopyProgress").any?
        props[:copy_completion_time] = xml.CopyCompletionTime.text if (xml > "CopyCompletionTime").any?
        props[:copy_status_description] = xml.CopyStatusDescription.text if (xml > "CopyStatusDescription").any?

        props
      end

      def self.blob_properties_from_headers(headers)
        props = {}

        props[:last_modified] = headers["Last-Modified"]
        props[:etag] = headers["Etag"]
        props[:lease_status] = headers["x-ms-lease-status"]
        props[:lease_state] = headers["x-ms-lease-state"]
        props[:lease_duration] = headers["x-ms-lease-duration"]

        props[:content_length] = headers["x-ms-blob-content-length"] || headers["Content-Length"]
        props[:content_length] = props[:content_length].to_i if props[:content_length]
      
        props[:content_type] =  headers["x-ms-blob-content-type"] || headers["Content-Type"]
        props[:content_encoding] = headers["x-ms-blob-content-encoding"] || headers["Content-Encoding"]
        props[:content_language] = headers["x-ms-blob-content-language"] || headers["Content-Language"]
        props[:content_md5] = headers["x-ms-blob-content-md5"] || headers["Content-MD5"]

        props[:cache_control] = headers["x-ms-blob-cache-control"] || headers["Cache-Control"]
        props[:sequence_number] = headers["x-ms-blob-sequence-number"].to_i if headers["x-ms-blob-sequence-number"]
        props[:blob_type] = headers["x-ms-blob-type"]

        props[:copy_id] = headers["x-ms-copy-id"]
        props[:copy_status] = headers["x-ms-copy-status"]
        props[:copy_source] = headers["x-ms-copy-source"]
        props[:copy_progress] = headers["x-ms-copy-progress"]
        props[:copy_completion_time] = headers["x-ms-copy-completion-time"]
        props[:copy_status_description] = headers["x-ms-copy-status-description"]

        props[:accept_ranges] = headers["Accept-Ranges"].to_i if headers["Accept-Ranges"]

        props
      end

      def self.block_list_to_xml(block_list)
        builder = Nokogiri::XML::Builder.new(:encoding => "UTF-8") do |xml|
          xml.BlockList {
            block_list.each { |block|
              encoded_id = Base64.strict_encode64(block[0])
              case block[1]
              when :uncommitted
                xml.Uncommitted encoded_id
              when :committed
                xml.Committed encoded_id
              else
                xml.Latest encoded_id
              end
            }
          }
        end
        builder.to_xml
      end

      def self.block_list_from_xml(xml)
        xml = slopify(xml)
        expect_node("BlockList", xml)

        block_list =  {
          :committed => [],
          :uncommitted => []
        }

        if ((xml > "CommittedBlocks") > "Block").any?
          if xml.CommittedBlocks.Block.count == 0
            add_block(:committed, xml.CommittedBlocks.Block, block_list)
          else
            xml.CommittedBlocks.Block.each { |block_node|
              add_block(:committed, block_node, block_list)
            }
          end
        end

        return block_list unless (xml > "UncommittedBlocks")

        if ((xml > "UncommittedBlocks") > "Block").any?
          if xml.UncommittedBlocks.Block.count == 0
            add_block(:uncommitted, xml.UncommittedBlocks.Block, block_list)
          else
            xml.UncommittedBlocks.Block.each { |block_node|
              add_block(:uncommitted, block_node, block_list)
            }
          end
        end

        block_list
      end

      def self.add_block(type, block_node, block_list)
        block = Block.new do |b|
          b.name = Base64.strict_decode64(block_node.Name.text) if (block_node > "Name").any?
          b.size = block_node.Size.text.to_i if (block_node > "Size").any?
          b.type = type
        end
        block_list[type].push block
      end
      
      def self.page_list_from_xml(xml)
        xml = slopify(xml)
        expect_node("PageList", xml)

        page_list = []

        return page_list unless (xml > "PageRange").any?

        if xml.PageRange.count == 0
          page_list.push [xml.PageRange.Start.text.to_i, xml.PageRange.End.text.to_i]
        else
          xml.PageRange.each { |page_range|
            page_list.push [page_range.Start.text.to_i, page_range.End.text.to_i]
          }
        end

        page_list
      end
    end
  end
end