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
require 'nokogiri'

require 'azure/entity/enumeration_results'

require 'azure/entity/blob/container_enumeration_results'
require 'azure/entity/blob/container'
require 'azure/entity/blob/container_properties'

require 'azure/entity/signed_identifier'
require 'azure/entity/access_policy'

require 'azure/entity/blob/blob_enumeration_results'
require 'azure/entity/blob/blob'
require 'azure/entity/blob/blob_properties'
require 'azure/entity/blob/block'

require 'azure/entity/queue/queue_enumeration_results'
require 'azure/entity/queue/queue'
require 'azure/entity/queue/message'

require 'azure/tables/types'

require "base64"
require "time"

module Azure
  module Entity
    module Serialization

      # table service
      def self.hash_to_entry_xml(hash, id=nil, xml=Nokogiri::XML::Builder.new)
        entry_namespaces = {
          "xmlns"   => "http://www.w3.org/2005/Atom",
          "xmlns:m" => "http://schemas.microsoft.com/ado/2007/08/dataservices/metadata",
          "xmlns:d" => "http://schemas.microsoft.com/ado/2007/08/dataservices"
        }

        xml.entry entry_namespaces do |entry|
            entry.id id
            entry.updated Time.now.xmlschema 
            entry.title
            entry.author do |author|
              author.name
            end
          hash_to_content_xml(hash, entry)
        end
        
        xml
      end

      def self.hash_to_content_xml(hash, xml=Nokogiri::XML::Builder.new)
        xml.send("content", :type => "application/xml") do |content|
          content.send("m:properties") do |properties|
            hash.each do |key, val|
              properties.send("d:#{key}", val, "m:type" => Azure::Tables::Types.type_of(val))
            end
          end
        end
        
        xml
      end

      def self.hash_from_feed_xml(xml)
        xml = slopify(xml)
        expect_node("feed", xml)

        return nil unless (xml > "entry").any?

        hash_from_entry_xml((xml > "entry"))
      end

      def self.hash_from_entry_xml(xml)
        xml = slopify(xml)
        expect_node("entry", xml)
        result = {}
        result['url'] = (xml > "id").text if (xml > "id").any?
        result['updated'] = Time.parse((xml > "updated").text) if (xml > "updated").any?
        if (xml > "content").any? and ((xml > "content") > "properties").any?
          content = {} 
          (xml > "content").first.properties.element_children.each do |prop|
            content[prop.name] = Azure::Tables::Types.cast(prop.text, prop["type"])
          end
          result['content'] = content
        end
        result
      end

      # queue service

      def self.queue_messages_from_xml(xml)
        xml = slopify(xml)
        expect_node("QueueMessagesList", xml)
        results = []
        return results unless (xml > "QueueMessage").any?
  
        if xml.QueueMessage.count == 0
          results.push(queue_message_from_xml(xml.QueueMessage))
        else
          xml.QueueMessage.each { |message_node|
            results.push(queue_message_from_xml(message_node))
          }
        end

        results
      end

      def self.queue_message_from_xml(xml)
        xml = slopify(xml)
        expect_node("QueueMessage", xml)

        message = Azure::Entity::Queue::Message.new
        message.id = xml.MessageId.text if (xml > "MessageId").any?
        message.insertion_time = xml.InsertionTime.text if (xml > "InsertionTime").any?
        message.expiration_time = xml.ExpirationTime.text if (xml > "ExpirationTime").any?
        message.dequeue_count = xml.DequeueCount.text.to_i if (xml > "DequeueCount").any?
        message.message_text = xml.MessageText.text if (xml > "MessageText").any?
        message.time_next_visible = xml.TimeNextVisible.text if (xml > "TimeNextVisible").any?
        message.pop_receipt = xml.PopReceipt.text if (xml > "PopReceipt").any?

        message
      end

      def self.message_to_xml(message_text)
        builder = Nokogiri::XML::Builder.new do |xml|
          xml.QueueMessage { xml.MessageText message_text }
        end
        builder.to_xml
      end

      def self.queue_enumeration_results_from_xml(xml)
        xml = slopify(xml)
        expect_node("EnumerationResults", xml)

        results = enumeration_results_from_xml(xml, Azure::Entity::Queue::QueueEnumerationResults.new)
        results.account_name = xml["AccountName"]
        
        return results unless (xml > "Queues").any? && ((xml > "Queues") > "Queue").any?

        if xml.Queues.Queue.count == 0
          results.queues.push(queue_from_xml(xml.Queues.Queue))
        else
          xml.Queues.Queue.each { |queue_node|
            results.queues.push(queue_from_xml(queue_node))
          }
        end

        results
      end

      def self.queue_from_xml(xml)
        xml = slopify(xml)
        expect_node("Queue", xml)

        queue = Azure::Entity::Queue::Queue.new
        queue.name = xml.Name.text if (xml > "Name").any?
        queue.url = xml.Url.text if (xml > "Url").any?
        queue.metadata = metadata_from_xml(xml.Metadata) if (xml > "Metadata").any?

        queue
      end

      # blob service 

      def self.container_enumeration_results_from_xml(xml)
        xml = slopify(xml)
        expect_node("EnumerationResults", xml)

        results = enumeration_results_from_xml(xml, Azure::Entity::Blob::ContainerEnumerationResults.new)
        results.account_name = xml["AccountName"]
        
        return results unless (xml > "Containers").any? && ((xml > "Containers") > "Container").any?

        if xml.Containers.Container.count == 0
          results.containers.push(container_from_xml(xml.Containers.Container))
        else
          xml.Containers.Container.each { |container_node|
            results.containers.push(container_from_xml(container_node))
          }
        end

        results
      end

      def self.container_from_xml(xml)
        xml = slopify(xml)
        expect_node("Container", xml)

        container = Azure::Entity::Blob::Container.new
        container.name = xml.Name.text if (xml > "Name").any?
        container.url = xml.Url.text if (xml > "Url").any?
        container.properties = container_properties_from_xml(xml.Properties) if (xml > "Properties").any?
        container.metadata = metadata_from_xml(xml.Metadata) if (xml > "Metadata").any?

        container
      end

      def self.container_from_headers(headers)
        container = Azure::Entity::Blob::Container.new
        container.properties = container_properties_from_headers(headers)
        container.visibility = visibility_from_headers(headers)
        container.metadata = metadata_from_headers(headers)

        container
      end

      def self.container_properties_from_xml(xml)
        xml = slopify(xml)
        expect_node("Properties", xml)

        properties = Azure::Entity::Blob::ContainerProperties.new 
        properties.last_modified = (xml > "Last-Modified").text if (xml > "Last-Modified").any?
        properties.etag = xml.Etag.text if (xml > "Etag").any?
        properties.lease_status = xml.LeaseStatus.text if (xml > "LeaseStatus").any?
        properties.lease_state = xml.LeaseState.text if (xml > "LeaseState").any?
        properties.lease_duration = xml.LeaseDuration.text if (xml > "LeaseDuration").any?

        properties
      end

      def self.container_properties_from_headers(headers)
        properties = Azure::Entity::Blob::ContainerProperties.new
        properties.last_modified = headers["Last-Modified"] 
        properties.etag = headers["Etag"]
        properties.lease_status = headers["x-ms-lease-status"]
        properties.lease_state = headers["x-ms-lease-state"]
        properties.lease_duration = headers["x-ms-lease-duration"]

        properties
      end

      def self.visibility_from_headers(headers)
        headers["x-ms-blob-public-access"]
      end

      def self.signed_identifiers_from_xml(xml)
        xml = slopify(xml)
        expect_node("SignedIdentifiers", xml)

        identifiers = []
        return identifiers unless (xml > "SignedIdentifier").any?

        if xml.SignedIdentifier.count == 0
          identifiers.push(signed_identifier_from_xml(xml.SignedIdentifier))
        else
          xml.SignedIdentifier.each { |identifier_node| 
            identifiers.push(signed_identifier_from_xml(identifier_node))
          }
        end

        identifiers
      end

      def self.signed_identifiers_to_xml(signed_identifiers)
        builder = Nokogiri::XML::Builder.new do |xml|
          xml.SignedIdentifiers {
            signed_identifiers.each do |identifier|
              xml.SignedIdentifier {
                xml.Id identifier.id
                xml.AccessPolicy {
                  xml.Start identifier.access_policy.start
                  xml.Expiry identifier.access_policy.expiry
                  xml.Permissions identifier.access_policy.permissions
                }
              }
            end
          }
        end
        builder.to_xml
      end

      def self.signed_identifier_from_xml(xml)
        xml = slopify(xml)
        expect_node("SignedIdentifier", xml)

        signed_identifier = Azure::Entity::SignedIdentifier.new
        signed_identifier.id = xml.Id.text if (xml > "Id").any?
        signed_identifier.access_policy = access_policy_from_xml(xml) if (xml > "AccessPolicy").any?

        signed_identifier
      end

      def self.access_policy_from_xml(xml)
        xml = slopify(xml)
        expect_node("AccessPolicy", xml)

        access_policy = Azure::Entity::AccessPolicy.new
        access_policy.start = xml.Start.text if (xml > "Start").any?
        access_policy.expiry = xml.Expiry.text if (xml > "Expiry").any?
        access_policy.permissions = xml.Permissions.text if (xml > "Permissions").any?

        access_policy
      end

      def self.blob_enumeration_results_from_xml(xml)
      
        xml = slopify(xml)
        expect_node("EnumerationResults", xml)

        results = enumeration_results_from_xml(xml, Azure::Entity::Blob::BlobEnumerationResults.new)
        results.container_name = xml["ContainerName"]

        return results unless (xml > "Blobs").any?

        if ((xml > "Blobs") > "BlobPrefix").any?
          if xml.Blobs.BlobPrefix.count == 0
            results.blob_prefixes.push(xml.Blobs.BlobPrefix.Name.text) #if (xml.Blobs.BlobPrefix > "Name").any?
          else
            xml.Blobs.BlobPrefix.each { |blob_prefix_node|
              results.blob_prefixes.push(blob_prefix_node.Name.text) if (blob_prefix_node > "Name").any?
            }
          end
        end

        if ((xml > "Blobs") > "Blob").any?
          if xml.Blobs.Blob.count == 0
            results.blobs.push(blob_from_xml(xml.Blobs.Blob))
          else
            xml.Blobs.Blob.each { |blob_node|
              results.blobs.push(blob_from_xml(blob_node))
            }
          end
        end

        results
      end
      
      def self.blob_from_xml(xml)
        xml = slopify(xml)
        expect_node("Blob", xml)

        blob = Azure::Entity::Blob::Blob.new

        blob.name = xml.Name.text if (xml > "Name").any?
        blob.url = xml.Url.text if (xml > "Url").any?
        blob.snapshot = xml.Snapshot.text if (xml > "Snapshot").any?

        blob.properties = blob_properties_from_xml(xml.Properties) if (xml > "Properties").any?
        blob.metadata = metadata_from_xml(xml.Metadata) if (xml > "Metadata").any?

        blob
      end

      def self.blob_from_headers(headers)
        blob = Azure::Entity::Blob::Blob.new
        blob.properties = blob_properties_from_headers(headers)
        blob.metadata = metadata_from_headers(headers)
        blob
      end

      def self.blob_properties_from_xml(xml)
        xml = slopify(xml)
        expect_node("Properties", xml)

        properties = Azure::Entity::Blob::BlobProperties.new 
        properties.last_modified = (xml > "Last-Modified").text if (xml > "Last-Modified").any?
        properties.etag = xml.Etag.text if (xml > "Etag").any?
        properties.lease_status = xml.LeaseStatus.text if (xml > "LeaseStatus").any?
        properties.lease_state = xml.LeaseState.text if (xml > "LeaseState").any?
        properties.lease_duration = xml.LeaseDuration.text if (xml > "LeaseDuration").any?
        properties.content_length = (xml > "Content-Length").text.to_i if (xml > "Content-Length").any?
        properties.content_type = (xml > "Content-Type").text if (xml > "Content-Type").any?
        properties.content_encoding = (xml > "Content-Encoding").text if (xml > "Content-Encoding").any?
        properties.content_language = (xml > "Content-Language").text if (xml > "Content-Language").any?
        properties.content_md5 = (xml > "Content-MD5").text if (xml > "Content-MD5").any?

        properties.cache_control = (xml > "Cache-Control").text if (xml > "Cache-Control").any?
        properties.sequence_number = (xml > "x-ms-blob-sequence-number").text.to_i if (xml > "x-ms-blob-sequence-number").any?
        properties.blob_type = xml.BlobType.text if (xml > "BlobType").any?
        properties.copy_id = xml.CopyId.text if (xml > "CopyId").any?
        properties.copy_status = xml.CopyStatus.text if (xml > "CopyStatus").any?
        properties.copy_source = xml.CopySource.text if (xml > "CopySource").any?
        properties.copy_progress = xml.CopyProgress.text if (xml > "CopyProgress").any?
        properties.copy_completion_time = xml.CopyCompletionTime.text if (xml > "CopyCompletionTime").any?
        properties.copy_status_description = xml.CopyStatusDescription.text if (xml > "CopyStatusDescription").any?

        properties
      end

      def self.blob_properties_from_headers(headers)
        properties = Azure::Entity::Blob::BlobProperties.new
        properties.last_modified = headers["Last-Modified"] 
        properties.etag = headers["Etag"]
        properties.lease_status = headers["x-ms-lease-status"]
        properties.lease_state = headers["x-ms-lease-state"]
        properties.lease_duration = headers["x-ms-lease-duration"]

        properties.content_length = headers["x-ms-blob-content-length"] || headers["Content-Length"]
        properties.content_type =  headers["x-ms-blob-content-type"] || headers["Content-Type"]
        properties.content_encoding = headers["x-ms-blob-content-encoding"] || headers["Content-Encoding"]
        properties.content_language = headers["x-ms-blob-content-language"] || headers["Content-Language"]
        properties.content_md5 = headers["x-ms-blob-content-md5"] || headers["Content-MD5"]

        properties.cache_control = headers["x-ms-blob-cache-control"] || headers["Cache-Control"]
        properties.sequence_number = headers["x-ms-blob-sequence-number"].to_i if headers["x-ms-blob-sequence-number"] 
        properties.blob_type = headers["x-ms-blob-type"]

        properties.copy_id = headers["x-ms-copy-id"]
        properties.copy_status = headers["x-ms-copy-status"]
        properties.copy_source = headers["x-ms-copy-source"]
        properties.copy_progress = headers["x-ms-copy-progress"]
        properties.copy_completion_time = headers["x-ms-copy-completion-time"]
        properties.copy_status_description = headers["x-ms-copy-status-description"]

        properties.accept_ranges = headers["Accept-Ranges"].to_i if headers["Accept-Ranges"]

        properties
      end

      def self.block_list_to_xml(block_list)
        builder = Nokogiri::XML::Builder.new do |xml|
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
        block = Azure::Entity::Blob::Block.new
        block.name = block_node.Name.text if (block_node > "Name").any?
        block.size = block_node.Size.text.to_i if (block_node > "Size").any?
        block.type = type
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

      # shared methods

      def self.enumeration_results_from_xml(xml, results)
        xml = slopify(xml)
        expect_node("EnumerationResults", xml)

        results = results || Azure::Entity::EnumerationResults.new; 

        results.max_results = xml.MaxResults.text.to_i if (xml > "MaxResults").any?
        results.next_marker = xml.NextMarker.text if (xml > "NextMarker").any?
        results.marker = xml.Marker.text.to_i if (xml > "Marker").any?
        results.prefix = xml.Prefix.text if (xml > "Prefix").any?
        
        results
      end

      def self.metadata_from_xml(xml)
        xml = slopify(xml)
        expect_node("Metadata", xml)

        metadata = {}

        xml.children.each { |meta_node|
          if metadata.has_key? meta_node.name 
            metadata[meta_node.name] = [metadata[meta_node.name]] unless metadata[meta_node.name].respond_to? :push
            metadata[meta_node.name].push(meta_node.text)
          else
            metadata[meta_node.name] = meta_node.text
          end
        }
        metadata
      end

      def self.metadata_from_headers(headers)
        metadata = {}

        headers.each { |k, v| 
          if key = k[/^x-ms-meta-(.*)/, 1]
            if metadata.has_key? key 
              metadata[key] = [metadata[key]] unless metadata[key].respond_to? :push
              metadata[key].push(v)
            else
              metadata[key] = v
            end
          end
        }

        metadata
      end

      def self.slopify(xml)
        (xml.is_a? String) ? Nokogiri.Slop(xml).root : xml 
      end

      def self.expect_node(node_name, xml)
        raise "Xml is not a #{node_name} node." unless xml.name == node_name
      end
    end
  end
end