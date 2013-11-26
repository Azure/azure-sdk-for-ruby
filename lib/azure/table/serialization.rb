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

require 'azure/table/guid'
require 'azure/table/edmtype'

require "time"
require "date"

module Azure
  module Table
    module Serialization
      include Azure::Service::Serialization

      def self.hash_to_entry_xml(hash, id=nil, xml=Nokogiri::XML::Builder.new(:encoding => "UTF-8"))
        entry_namespaces = {
          "xmlns"   => "http://www.w3.org/2005/Atom",
          "xmlns:m" => "http://schemas.microsoft.com/ado/2007/08/dataservices/metadata",
          "xmlns:d" => "http://schemas.microsoft.com/ado/2007/08/dataservices"
        }

        xml.entry entry_namespaces do |entry|
            id ? entry.id(id): entry.id
            entry.updated Time.now.xmlschema 
            entry.title
            entry.author do |author|
              author.name
            end
          hash_to_content_xml(hash, entry)
        end

        xml
      end

      def self.hash_to_content_xml(hash, xml=Nokogiri::XML::Builder.new(:encoding => "UTF-8"))
        xml.send("content", :type => "application/xml") do |content|
          content.send("m:properties") do |properties|
            hash.each do |key, val|
              key = key.encode("UTF-8") if key.is_a? String and !key.encoding.names.include?("BINARY")
              val = val.encode("UTF-8") if val.is_a? String and !val.encoding.names.include?("BINARY")

              type = Azure::Table::EdmType.property_type(val)
              attributes = {}
              attributes["m:type"] = type unless type.nil? || type.empty?

              if val.nil?
                attributes["m:null"] = "true"
                properties.send("d:#{key}", attributes)
              else
                properties.send("d:#{key}", Azure::Table::EdmType.serialize_value(type, val), attributes)
              end
            end
          end
        end

        xml
      end

      def self.entries_from_feed_xml(xml)
        xml = slopify(xml)
        expect_node("feed", xml)

        return nil unless (xml > "entry").any?
        
        results = []
        
        if (xml > "entry").count == 0
          results.push hash_from_entry_xml((xml > "entry"))
        else
          (xml > "entry").each do |entry|
            results.push hash_from_entry_xml(entry)
          end
        end

        results
      end

      def self.hash_from_entry_xml(xml)
        xml = slopify(xml)
        expect_node("entry", xml)
        result = {}
        result[:etag] = xml["etag"]
        result[:updated] = Time.parse((xml > "updated").text) if (xml > "updated").any?
        properties = {} 
        if (xml > "content").any?
          (xml > "content").first.first_element_child.element_children.each do |prop|
            properties[prop.name] = prop.text != "" ? Azure::Table::EdmType.unserialize_query_value(prop.text, prop["m:type"]) : prop["null"] ? nil : ""
          end
        end
        result[:properties] = properties
        result
      end
    end
  end
end