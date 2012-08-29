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
require "time"
require "delegate"
require "nokogiri"
require "azure/tables/types"

module Azure
  module Core
    # Public: The Atom module includes functionality to generate and parse Atom
    # feeds and entries.
    module Atom
      # Convenience module so abstract the logic of generating XML. The objects
      # that include this module must implement #as_xml, such that it returns a
      # Nokogiri::XML::Node.
      module Serializable
        # Public: Convert this object into XML.
        #
        # Returns a String.
        def to_xml
          as_xml.to_xml
        end
      end

      # Public: An Atom Entry corresponds to a representation of a single object.
      #
      # In order to parse an entry's XML into a more manageable object, call
      # Entry.parse.
      #
      # In order to generate an XML string from an entry, call #to_xml (included
      # from Serializable).
      class Entry
        include Serializable

        # Public: Parses a string of XML, returning a new Entry.
        #
        # xml - A String of XML data.
        #
        # Returns an Atom::Entry.
        def self.parse(xml)
          doc = Nokogiri::XML(xml)
          new do |entry|
            entry.id = (doc % "id").text
            entry.updated = Time.parse((doc % "updated").text)
            entry.content = (doc % "content").inner_html
            yield entry, doc if block_given?
          end
        end

        # Public: Initializes the Entry.
        #
        # Yields the new Entry.
        def initialize
          yield self if block_given?
        end

        # Public: Get/Set the Entry's id.
        attr_accessor :id

        # Public: Get/Set the Entry's content.
        attr_accessor :content

        # Public: Get the Entry's updated-at Time (defaults to now).
        def updated
          @updated || Time.now
        end

        # Public: Set the Entry's updated-at Time.
        attr_writer :updated

        # Convert this object into an XML node that can be serialized.
        #
        # xml - A Nokogiri::XML::Builder to use as the parent node (optional).
        #
        # Returns a Nokogiri::XML::Node.
        def as_xml(xml=Nokogiri::XML::Builder.new)
          as_xml = ->(obj, parent) do
            if obj.respond_to?(:as_xml)
              obj.as_xml(parent)
            else
              obj.to_s
            end
          end

          xml.entry("xmlns"   => "http://www.w3.org/2005/Atom",
                    "xmlns:m" => "http://schemas.microsoft.com/ado/2007/08/dataservices/metadata",
                    "xmlns:d" => "http://schemas.microsoft.com/ado/2007/08/dataservices") do |xml|
            xml.id(self.id)
            xml.updated(self.updated.xmlschema)
            xml.title
            xml.author do |xml|
              xml.name
            end

            if content.respond_to?(:as_xml)
              xml.content("type" => "application/xml") do |xml|
                content.as_xml(xml)
              end
            else
              xml.content(content, "type" => "application/xml")
            end
          end

          xml
        end
      end

      # Public: An Atom Feed is a list of Entries.
      #
      # In order to parse a feed's XML into a more manageable object, call
      # Feed.parse.
      #
      # In order to generate an XML string from a feed, call #to_xml (included
      # from Serializable).
      class Feed
        include Serializable

        # Get the Array of entries in this feed.
        attr :entries

        # Public: Parses a string of XML, returning a new Feed.
        #
        # xml - A String of XML data.
        #
        # Returns an Atom::Feed.
        def self.parse(xml, entry_parser=Entry)
          doc = Nokogiri::XML(xml)
          new do |feed|
            feed.id = (doc % "id").text
            feed.updated = Time.parse((doc % "updated").text)
            (doc / "entry").each do |entry|
              feed.entries << entry_parser.parse(entry.to_xml)
            end
          end
        end

        # Public: Initialize the Feed.
        #
        # Yields the Feed.
        def initialize
          @entries = []
          yield self if block_given?
        end

        # Public: Get/Set the Feed's id.
        attr_accessor :id

        # Public: Get the Feed's updated-at Time (defaults to now).
        def updated
          @updated || Time.now
        end

        # Public: Set the Feed's updated-at Time.
        attr_writer :updated

        # Convert this object into an XML node that can be serialized.
        #
        # xml - A Nokogiri::XML::Builder to use as the parent node (optional).
        #
        # Returns a Nokogiri::XML::Node.
        def as_xml(xml=Nokogiri::XML::Builder.new)
          xml.entry("xmlns"   => "http://www.w3.org/2005/Atom",
                    "xmlns:m" => "http://schemas.microsoft.com/ado/2007/08/dataservices/metadata",
                    "xmlns:d" => "http://schemas.microsoft.com/ado/2007/08/dataservices") do |xml|
            xml.id(self.id)
            xml.updated(self.updated.xmlschema)
            xml.title
            entries.each do |entry|
              entry.as_xml(xml)
            end
          end
          xml
        end
      end
    end
  end
end
