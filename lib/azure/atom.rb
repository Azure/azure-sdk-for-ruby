require "atom"
require "azure/tables/types"

module Azure
  # Collection of XML::Node extensions for generating Atom feeds.
  module Atom
    Entry = ::Atom::Entry
    Feed  = ::Atom::Feed

    # Generates a Data Property, making sure that it's in the correct namespace
    # (dataservices).
    class Property < XML::Node

      # Public: Set up the property.
      #
      # name  - The property name, without the namespace qualification.
      # value - The property's value.
      def initialize(name, value)
        super("d:#{name}")
        self << value
      end

      # Public: Set the property's value, and sets the content type based on the
      # value's type.
      #
      # value - The value of the property.
      #
      # Returns self.
      def <<(value)
        self["m:type"] = Azure::Tables::Types.type_of(value)
        super(value)
      end

      def to_xml(*)
        self
      end
    end

    # Represent a list of properties in the proper namespace
    # (dataservices/metadata).
    class PropertyList < XML::Node
      include ::Atom::Xml::Parseable

      add_extension_namespace "d", "http://schemas.microsoft.com/ado/2007/08/dataservices"

      # Public: Initialize the property list.
      #
      # Yields the PropertyList.
      def initialize(o=nil)
        super("m:properties")

        if o && o.is_a?(LibXML::XML::Reader)
          o.node.children.each do |node|
            self << node.copy(true) unless node.blank?
          end
        end

        yield self if block_given?
      end

      # Public: Add several properties at the same time.
      #
      # properties - A Hash of property name => property value pairs.
      #
      # Returns the passed properties.
      def merge(properties)
        properties.each do |name, value|
          self[name] = value
        end
      end

      # Public: Add a property to this list. This will internally store a
      # Atom::Nodes::Property object.
      #
      # property - The name of the property to be included.
      # value    - The value of the property.
      #
      # Returns nothing.
      def []=(property, value)
        self << Property.new(property, value)
      end

      def to_xml(*)
        self
      end
    end

    # Represent an entry's <content/> tag, ensuring it has the correct content
    # type and that it conforms to the Atom::Content interface so it can be used
    # seamlessly with Atom::Entry objects.
    class Content < XML::Node
      include ::Atom::Xml::Parseable

      add_extension_namespace "m", "http://schemas.microsoft.com/ado/2007/08/dataservices/metadata"

      element "m:properties", class: Azure::Atom::PropertyList

      # Public: Initialize the content node.
      #
      # Yields self.
      def initialize(o=nil)
        super("content")
        self["type"] = "application/xml"

        if o && o.is_a?(LibXML::XML::Reader)
          o.read_inner_xml
          o.read
          parse o
        end

        yield self if block_given?
      end

      # Public: Cast this object into something Atom::Entry can understand as
      # content. By returning itself (as a Node) the Entry won't try to escape
      # this as CDATA.
      #
      # Returns self.
      def to_xml(*)
        self
      end
    end
  end
end

# FIXME: The rAtom gem doesn't play well when you extend your classes, raising
# weird errors, so we're monkeypatching their classes. This *sucks*.
module Atom
  # Public: An Atom feed, that understands the Microsoft ADO namespaces for Data
  # services.
  class Feed
    add_extension_namespace "d", "http://schemas.microsoft.com/ado/2007/08/dataservices"
    add_extension_namespace "m", "http://schemas.microsoft.com/ado/2007/08/dataservices/metadata"
  end

  # Public: An Atom entry, that understands the Microsoft ADO namespaces for Data
  # services.
  class Entry
    add_extension_namespace "d", "http://schemas.microsoft.com/ado/2007/08/dataservices"
    add_extension_namespace "m", "http://schemas.microsoft.com/ado/2007/08/dataservices/metadata"

    element "content", class: Azure::Atom::Content

    # Public: Generate a list of data properties to include in this Entry's
    # content.
    # FIXME: This method isn't very confident as getter, use content.m_properties instead.
    #
    # Yields a Nodes::PropertyList.
    #
    # Example:
    #
    #   entry.properties do |props|
    #     props["one"] = 1
    #     props["two"] = 2
    #   end
    #
    # Returns the XML node for entry's <m_properties/>.
    def properties(&block)
      if !@content
        @content = Azure::Atom::Content.new
        @m_properties = Azure::Atom::PropertyList.new
        @content << @m_properties
      end

      yield @m_properties if block_given?

      @m_properties
    end
  end
end
