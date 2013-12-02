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

require 'azure/queue/queue'
require 'azure/queue/message'

module Azure
  module Queue
    module Serialization
      include Service::Serialization

      def self.queue_messages_from_xml(xml, decode)
        xml = slopify(xml)

        expect_node("QueueMessagesList", xml)
        results = []
        return results unless (xml > "QueueMessage").any?
  
        if xml.QueueMessage.count == 0
          results.push(queue_message_from_xml(xml.QueueMessage, decode))
        else
          xml.QueueMessage.each { |message_node|
            results.push(queue_message_from_xml(message_node, decode))
          }
        end

        results
      end

      def self.queue_message_from_xml(xml, decode)
        xml = slopify(xml)
        expect_node("QueueMessage", xml)

        Message.new do |msg|
          msg.id = xml.MessageId.text if (xml > "MessageId").any?
          msg.insertion_time = xml.InsertionTime.text if (xml > "InsertionTime").any?
          msg.expiration_time = xml.ExpirationTime.text if (xml > "ExpirationTime").any?
          msg.dequeue_count = xml.DequeueCount.text.to_i if (xml > "DequeueCount").any?
          msg.message_text = xml.MessageText.text if (xml > "MessageText").any?
          msg.time_next_visible = xml.TimeNextVisible.text if (xml > "TimeNextVisible").any?
          msg.pop_receipt = xml.PopReceipt.text if (xml > "PopReceipt").any?

          msg.message_text = Base64.decode64(msg.message_text) if decode
        end
      end

      def self.message_to_xml(message_text, encode)
        if encode
          builder = Nokogiri::XML::Builder.new do |xml|
            xml.QueueMessage { xml.MessageText Base64.encode64(message_text) }
          end
        else
          builder = Nokogiri::XML::Builder.new(:encoding => 'utf-8') do |xml|
            xml.QueueMessage { xml.MessageText message_text.encode("utf-8") }
          end
        end
        builder.to_xml
      end

      def self.queue_enumeration_results_from_xml(xml)
        xml = slopify(xml)
        expect_node("EnumerationResults", xml)

        results = enumeration_results_from_xml(xml, Azure::Service::EnumerationResults.new)

        return results unless (xml > "Queues").any? && ((xml > "Queues") > "Queue").any?

        if xml.Queues.Queue.count == 0
          results.push(queue_from_xml(xml.Queues.Queue))
        else
          xml.Queues.Queue.each { |queue_node|
            results.push(queue_from_xml(queue_node))
          }
        end

        results
      end

      def self.queue_from_xml(xml)
        xml = slopify(xml)
        expect_node("Queue", xml)

        queue = Queue.new
        queue.name = xml.Name.text if (xml > "Name").any?
        queue.url = xml.Url.text if (xml > "Url").any?
        queue.metadata = metadata_from_xml(xml.Metadata) if (xml > "Metadata").any?

        queue
      end
    end
  end
end
