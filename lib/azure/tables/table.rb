require "azure/tables"
require "azure/tables/uri"
require "azure/error"
require "uri"

module Azure
  module Tables
    # Public: Representation of a Table in the storage system.
    class Table
      include Azure::ErrorHandler

      # Get the Table's URI.
      #
      # Returns a URI.
      attr :url

      # Get the Table's name.
      #
      # Returns a String.
      attr :name

      # Public: Instantiate a table from an Atom entry.
      #
      # entry - An Atom::Entry element.
      #
      # Returns a Table.
      def self.from_entry(entry)
        name = entry.content.m_properties.children.first.content
        new(name, ::URI.parse(entry.id))
      end

      # Public: Instantiate a table from an error object.
      #
      # error - An Azure::Error.
      #
      # Returns a Table.
      def self.from_error(error)
        table = new(nil, nil)
        table.error = error
        table
      end

      # Public: Create a Table. The resulting table will be invalid if the
      # create operation fails.
      #
      # name    - The name of the table.
      # service - The Table service to perform external calls.
      #
      # Returns a Table.
      def self.create(name, service=Azure::Tables)
        service.create(name)
      end

      # Public: Find a Table by name. If no table matches the provided name, nil
      # is returned.
      #
      # name    - The name of the table.
      #
      # Returns a Table or nil.
      def self.[](name)
        fetch(name) { nil }
      end

      # Public: Find a Table by name. If no table matches the provided name,
      # execute the given block, or raise ArgumentError.
      #
      # name    - The name of the table.
      # service - The Table service to perform external calls.
      #
      # Yields the error returned by the server in case the table wasn't found.
      #
      # Returns a Table.
      # Raises ArgumentError if the table isn't found and no block is given.
      def self.fetch(name, service=Azure::Tables, &block)
        block ||= -> { raise ArgumentError, "Can't find Table named '#{name}'" }
        table = service.fetch(name)
        table.valid? ? table : block.call(table.error)
      end

      # Public: Initialize the table.
      #
      # name    - A String with the name of the table.
      # url     - The URI of the table in the service.
      # service - The Table service to perform external calls.
      def initialize(name, url=Azure::Tables::URI.table(name), service=Azure::Tables)
        @name = name
        @url = url
        @service = service
      end

      # Public: Compare two tables to see if they are the same.
      #
      # other - A table.
      #
      # Returns true|false.
      def ==(other)
        name == other.name
      end

      # Public: Deletes this table from the storage service.
      #
      # Returns true|false to indicate whether the delete was successful or not.
      def delete
        @service.delete(self)
      end

      # Public: Insert a new entity into this table. If the operation fails, an
      # error will be added to the entity.
      #
      # entity - An Azure::Tables::Entity.
      #
      # Returns the entity.
      def insert(entity)
        @service.insert_entity(self, entity)
      end

      # Public: Query for entities in this table.
      #
      # Returns a list of entities.
      def entities(query={})
        if query.key?(:partition_key) && query.key?(:row_key)
          @service.query_entity(self, query.delete(:partition_key), query.delete(:row_key), query)
        else
          @service.query_entities(self, query)
        end
      end
    end
  end
end
