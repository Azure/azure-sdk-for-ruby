require "azure/tables/types"
require "azure/tables"
require "azure/error"

module Azure
  module Tables
    # Public: Representation of a table Entity.
    class Entity
      # ETag to force updates/deletes.
      FORCE_UPDATE = "*".freeze

      include Azure::ErrorHandler

      # Public: Returns an Entity from an Atom::Entry object.
      #
      # entry - Atom::Entry object representing the Entity.
      #
      # Returns Azure::Entity
      def self.from_entry(entry)
        entity = new

        entity.url = URI(entry.id)

        entry.content.m_properties.each do |property_node|
          value = Types.cast(
            property_node.content,
            property_node.attributes["type"]
          )

          entity[property_node.name] = value
        end

        entity
      end

      # Public: Get/Set this entity's URL.
      attr_accessor :url

      # Public: Get/Set this entity's ETag for conditional updates.
      attr_accessor :etag

      # Public: Get the attributes.
      attr :attributes

      # Public: Initialize an Entity.
      #
      # attributes - A Hash of attributes.
      #
      # Yields self.
      def initialize(attributes={}, service=Azure::Tables)
        @attributes = attributes
        @service = service
        self.etag = FORCE_UPDATE
        yield self if block_given?
      end

      # Public: Two entities are considered equal if they both have the same
      # URI.
      #
      # other - An Entity.
      #
      # Returns true|false.
      def ==(other)
        url == other.url
      end

      # Public: Reset this entity to clone another's properties. This will copy
      # everything from the other entity into this one.
      #
      # other - An entity.
      #
      # Returns self.
      def reset(other)
        self.url = other.url
        self.attributes.replace(other.attributes)
        self
      end

      # Public: Replace an entity with a new set of attributes. In case of an
      # error, self.error will be set.
      #
      # attributes - A Hash of attributes.
      #
      # Returns true|false to indicate success.
      def update(attributes)
        @service.update_entity(self, attributes)
      end

      # Public: Merge new attributes into our set of attributes. In case of an
      # error, self.error will be set.
      #
      # attributes - A Hash of attributes.
      #
      # Returns true|false to indicate success.
      def merge(attributes)
        @service.merge_entity(self, attributes)
      end

      # Public: Delete this entity from the service. In case of an error,
      # self.error will be set.
      #
      # Returns true|false to indicate success.
      def delete
        @service.delete_entity(self)
      end

      # Public: Access a property on this entity.
      #
      # name - The property name.
      #
      # Returns the property value.
      def [](name)
        @attributes[name]
      end

      # Public: Set a property on this entity.
      #
      # name  - The property name.
      # value - The value for this property.
      #
      # Returns the property value.
      def []=(name, value)
        @attributes[name] = value
      end
    end
  end
end
