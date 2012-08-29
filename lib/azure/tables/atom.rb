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
require "azure/core/atom"

module Azure
  module Tables
    # Specific group of extensions to simplify working with entries as used in
    # the Table Service. See Azure::Core::Atom for more information.
    module Atom
      # A table's or entity's entry has a list of properties that represent the
      # object in question.
      class Entry < Azure::Core::Atom::Entry
        def self.parse(xml) # :nodoc:
          super(xml) do |entry, doc|
            doc.remove_namespaces!
            props = doc % "properties"
            entry.properties.merge(PropertyList.parse(props.to_xml))
          end
        end

        def initialize(*) # :nodoc:
          @properties = PropertyList.new
          super
        end

        # Public: Get the list of properties from this Entry.
        #
        # Yields the list of properties.
        #
        # Returns the list of properties.
        def properties
          yield @properties if block_given?
          @properties
        end

        # Public: Get the content of this entry. Defaults to its properties.
        def content
          @content ||= properties
        end
      end

      class Feed < Azure::Core::Atom::Feed # :nodoc:
        def self.parse(xml, entry_parser=Tables::Atom::Entry)
          super(xml, entry_parser)
        end
      end

      # A PropertyList is a hash-like object that groups the meta-properties
      # than an Entry can have.
      #
      # It represents an <m:properties/> tag.
      class PropertyList
        include Azure::Core::Atom::Serializable
        include Enumerable

        # Public: Parses a string of XML, returning a new PropertyList.
        #
        # xml - A String of XML data.
        #
        # Returns a Tables::Atom::PropertyList.
        def self.parse(xml)
          doc = Nokogiri::XML(xml)
          doc.remove_namespaces!
          new do |list|
            doc.root.children.reject(&:text?).each do |property|
              p = Property.parse(property.to_xml)
              list[property.name] = p
            end
          end
        end

        # Public: Initialize the PropertyList.
        #
        # Yields the new PropertyList.
        def initialize
          @properties = {}
          yield self if block_given?
        end

        # Public: Iterate over every property.
        #
        # Yields each name/value pair.
        #
        # Returns the list of properties.
        def each
          @properties.each do |name, property|
            yield name, property.value
          end
          self
        end

        # Public: Access the value of a property, cast into the corresponding
        # type. See Azure::Table::Types.
        #
        # name - The name of the property.
        #
        # Returns the property's value.
        def [](name)
          @properties[name].value
        end

        # Public: Set the value of a property.
        #
        # name  - The name of the property.
        # value - The object with this property's value.
        #
        # Returns the property's value.
        def []=(name, value)
          value = Property.new(name, value) unless value.respond_to?(:value)
          @properties[name] = value
        end

        # Public: Merge a hash of name/value pairs into this list of properties.
        #
        # props - A Hash.
        #
        # Returns the passed Hash.
        def merge(props)
          props.each do |name, value|
            self[name] = value
          end
        end

        # Public: Get the size of the PropertyList.
        #
        # Returns a Fixnum.
        def size
          @properties.size
        end

        # Convert this object into an XML node that can be serialized.
        #
        # xml - A Nokogiri::XML::Builder to use as the parent node (optional).
        #
        # Returns a Nokogiri::XML::Node.
        def as_xml(xml=Nokogiri::XML::Builder.new)
          xml.send("m:properties") do |xml|
            @properties.values.each do |property|
              property.as_xml(xml)
            end
          end

          xml
        end
      end

      # A Property represents a single field of information. It has a name, a
      # value, and a type (inferred from the value using Azure::Tables::Types).
      class Property
        include Azure::Core::Atom::Serializable

        # Public: Parses a string of XML, returning a new PropertyList.
        #
        # xml - A String of XML data.
        #
        # Returns a Tables::Atom::PropertyList.
        def self.parse(xml)
          doc = Nokogiri::XML(xml)
          doc.remove_namespaces!
          prop = doc.root
          value = Azure::Tables::Types.cast(prop.text, prop["type"])
          new(prop.name, value)
        end

        # Get the property's name.
        attr :name

        # Get the property's value.
        attr :value

        # Public: Initialize the Property.
        #
        # name  - The property's name.
        # value - The property's value.
        def initialize(name, value)
          @name = name
          @value = value
        end

        # Public: Get the type of this property. See Azure::Tables::Types.
        #
        # Returns a String.
        def type
          Azure::Tables::Types.type_of(value)
        end

        # Convert this object into an XML node that can be serialized.
        #
        # xml - A Nokogiri::XML::Builder to use as the parent node (optional).
        #
        # Returns a Nokogiri::XML::Node.
        def as_xml(xml=Nokogiri::XML::Builder.new)
          xml.send("d:#{name}", value, "m:type" => type)
          xml
        end
      end
    end
  end
end
