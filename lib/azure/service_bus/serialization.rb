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
require "azure/service_bus/topic"
require "azure/service_bus/subscription"
require "azure/service_bus/rule"

module Azure
  module ServiceBus
    module Serialization
      module ClassMethods

        def rule_to_xml(xml, rule)
          rule_aspect_to_xml xml, 'Filter', rule if rule.filter
          rule_aspect_to_xml xml, 'Action', rule if rule.action
        end

        def rule_aspect_to_xml(xml, aspect_name, rule)
          aspect = rule.description[aspect_name].dup
          xml.send(aspect_name, "i:type" => aspect.delete(:type)) {
            aspect.each { |k,v| xml.send(k, v) }
          }
        end

        def resource_to_xml(resource, entry)
          doc = Nokogiri::XML::Builder.new do |xml|
            xml.entry(:xmlns => 'http://www.w3.org/2005/Atom') {
              xml.content(:type => 'application/xml') {
                xml.send("#{resource.to_s.capitalize}Description", 'xmlns' => 'http://schemas.microsoft.com/netservices/2010/10/servicebus/connect', 'xmlns:i' => 'http://www.w3.org/2001/XMLSchema-instance') {
                  if resource == :rule
                    rule_to_xml xml, entry
                  else
                    entry.get_props.each do |p|
                      xml.send(p[0], p[1].to_s)
                    end
                  end
                }
              }
            }
          end
          doc.to_xml
        end

        def resource_from_xml(resource, node)
          resource = resource.to_s.capitalize

          name = (node % "title").text

          Azure::ServiceBus.const_get(resource).new(name) do |r|
            r.id          = URI((node % "id").text) if (node % "id")
            r.published   = Time.parse((node % "published").text) if (node % "published")
            r.updated     = Time.parse((node % "updated").text) if (node % "updated")
            r.author_name = (node % "author/name").text if (node % "author/name")

            r.description = (node / "content/#{resource}Description *").each_with_object({}) do |element, description|
              if resource == "Rule"
                handle_rule_description_element element, description
              else
                description[element.name] = element.text
              end
            end
          end
        end
        
        def handle_rule_description_element(element, description)
          if element.name == "Filter" or element.name == "Action"
            value = {}
            value[:type] = element["type"]
            element.children.each do |child|
              value[child.name] = child.content
            end
            description[element.name] = value
          end
        end

        def resources_from_xml(resource, xml)
          feed = Nokogiri::XML(xml).remove_namespaces!
          (feed / 'entry').map {|node| resource_from_xml(resource, node) }
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
