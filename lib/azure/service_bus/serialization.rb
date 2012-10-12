#-------------------------------------------------------------------------
# Copyright (c) Microsoft. All rights reserved.
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
require "azure/service_bus/queue"
module Azure
  module ServiceBus
    module Serialization
      module ClassMethods
        def queue_from_xml(node)
          name = (node % "title").text

          Queue.new(name) do |q|
            q.id          = URI((node % "id").text)
            q.published   = Time.parse((node % "published").text)
            q.updated     = Time.parse((node % "updated").text)
            q.author_name = (node % "author/name").text

            q.description = (node / "content/QueueDescription *").each_with_object({}) do |el, desc|
              desc[el.name] = el.text
            end
          end
        end

        def queues_from_xml(xml)
          feed = Nokogiri::XML(xml).remove_namespaces!
          (feed / 'entry').map {|node| queue_from_xml(node) }
        end

        def to_bool(s)
          (s || "").downcase == 'true'
        end

        def slopify(xml)
          node = (xml.is_a? String) ? Nokogiri.Slop(xml).root : xml
          node.slop! if node.is_a? Nokogiri::XML::Document unless node.respond_to? :method_missing
          node = node.root if node.is_a? Nokogiri::XML::Document
          node
        end

        def expect_node(node_name, xml)
          raise "Xml is not a #{node_name} node." unless xml.name == node_name
        end
      end

      extend ClassMethods
      
      def self.included( other )
        other.extend( ClassMethods )
      end
    end
  end
end
