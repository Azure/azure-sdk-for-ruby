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
require 'azure/storage/service/serialization'

require 'azure/storage/queue/queue'
require 'azure/storage/queue/message'
require 'azure/storage/queue/queue_enumeration_results'

require 'azure/storage/table/guid'

require "time"
require "date"

module Azure
  module Storage
    module Table
      module Serialization
        include Azure::Storage::Service::Serialization

        def self.hash_to_entry_xml(hash, id=nil, xml=Nokogiri::XML::Builder.new)
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

        def self.hash_to_content_xml(hash, xml=Nokogiri::XML::Builder.new)
          xml.send("content", :type => "application/xml") do |content|
            content.send("m:properties") do |properties|
              hash.each do |key, val|
                type = property_type(val)
                attributes = {}
                attributes["m:type"] = type unless type.nil? || type.empty?

                if val.nil?
                  attributes["m:null"] = "true"
                  properties.send("d:#{key}", attributes)
                else
                  properties.send("d:#{key}", property_value(type, val), attributes)
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
              properties[prop.name] = prop.text != "" ? cast_property(prop.text, prop["type"]) : prop["null"] ? nil : ""
            end
          end
          result[:properties] = properties
          result
        end

        # Public: Get the Edm type of an object
        #
        # value - Object. An typed instance
        #
        # Returns the Edm type as a String
        def self.property_type(value)
          case value
          when Float
            "Edm.Double"
          when Date, Time, DateTime
            "Edm.DateTime"
          when Integer
            value.abs < 2**31 ? "Edm.Int32" : "Edm.Int64"
          when TrueClass, FalseClass
            "Edm.Boolean"
          when GUID
            "Edm.Guid"
          when IO, File
            "Edm.Binary"
          when String
            value.encoding.names.include?("BINARY") ? "Edm.Binary" : ""
          else
            value.kind_of?(IO) ? "Edm.Binary" : ""
          end
        end

        # Public: Get the value of a property in a serialized way
        #
        # value - Object. An typed instance
        #
        # Returns the Edm type as a String
        def self.property_value(type, value)
          case type
          when "Edm.Double", "Edm.Int32", "Edm.Int64", "Edm.Guid", "Edm.String", nil
            value.to_s
          when "Edm.Binary"
            Base64.encode64(value).chomp("\n")
          when "Edm.DateTime"
            value.xmlschema(7)
          when "Edm.Boolean"
            if value.nil?
              ''
            else
              value == true ? '1' : '0'
            end
          else
            value.to_s
          end
        end

        # Public: Convert a serialized value into an typed object
        #
        # value - String. A serialization of an object
        # type  - String. The Edm datatype
        #
        # Returns an typed object
        def self.cast_property(value, type)
          case type
          when "Edm.Double"
            Float(value)
          when "Edm.DateTime"
            Time.parse(value)
          when "Edm.Int32", "Edm.Int64"
            Integer(value)
          when "Edm.Boolean"
            /true/i === value
          when "Edm.Guid"
            GUID.new(value.to_s)
          when "Edm.Binary"
            Base64.decode64(value.to_s).force_encoding("BINARY")
          else
            value.to_s
          end
        end
      end
    end
  end
end