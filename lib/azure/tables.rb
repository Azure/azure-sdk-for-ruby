require "azure/tables/service"
require "azure/tables/table"
require "azure/tables/entity"
require "azure/tables/entities_collection"
require "azure/tables/tables_collection"
require "azure/atom"

module Azure
  module Tables
    # Public: Get a list of Tables from the server.
    #
    # query   - Options for this query.
    # service - The backend service to implement this (optional).
    #
    # Returns an Array of Table elements.
    def self.all(query = {}, service=Azure::Tables::Services::QueryTables.new)
      response = service.call(query)
      feed = Atom::Feed.load_feed(response.body)
      collection = Azure::Tables::TablesCollection.from_entries(feed.entries, query)

      collection.continuation_token(
        response.headers["x-ms-continuation-nexttablename"]
      )

      collection
    end

    # Public: Get a single table by name. If the operation is unsuccessful, the
    # resulting table is invalidated.
    #
    # name    - The name of the table.
    # service - The backend service to implement this (optional).
    #
    # Returns a Table.
    def self.fetch(name, service=Azure::Tables::Services::FetchTable.new)
      response = service.call(name)

      if response.success?
        Table.from_entry(Atom::Entry.load_entry(response.body))
      else
        Table.from_error(response.error)
      end
    end

    # Public: Attempt to create a new table. If the operation is unsuccessful,
    # the resulting Table object will have the error accessible through the
    # table.error method.
    #
    # name    - The name of the table.
    # service - The backend service to implement this (optional).
    #
    # Returns a Table.
    def self.create(name, service=Azure::Tables::Services::CreateTable.new)
      response = service.call(name)

      if response.success?
        Table.from_entry(Atom::Entry.load_entry(response.body))
      else
        Table.from_error(response.error)
      end
    end

    # Public: Delete a Table from the server.
    #
    # table   - An Azure::Tables::Table.
    # service - The backend service to implement this (optional).
    #
    # Returns true|false to indicate success.
    def self.delete(table, service=Azure::Tables::Services::DeleteTable.new)
      response = service.call(table.url)
      table.error = response.error unless response.success?
      response.success?
    end

    # Public: Inserts a new entity in the given table. If the operation fails an
    # error will be added to the entity.
    #
    # table   - An Azure::Tables::Table.
    # entity  - An Azure::Tables::Entity.
    # service - The backend service to implement this (optional).
    #
    # Returns the entity.
    def self.insert_entity(table, entity, service=Azure::Tables::Services::InsertEntity.new)
      response = service.call(table.name, entity.attributes)

      if response.success?
        entity.reset(
          Entity.from_entry(Azure::Atom::Entry.load_entry(response.body))
        )
        entity.etag = response.headers["etag"]
      else
        entity.error = response.error
      end

      entity
    end

    # Public: Replaces the attributes of an existing entity. In case of an
    # error, the entity won't be changed and entity.error will be set.
    #
    # entity     - The entity to update.
    # attributes - A Hash of attributes. This hash must contain a "PartitionKey"
    #              and a "RowKey".
    # force      - Force this operation even if the object is stale (optional,
    #              defaults to false).
    # service    - The backend service to implement this (optional).
    #
    # Returns true|false to indicate success.
    def self.update_entity(entity, attributes, force=false, service=Azure::Tables::Services::ReplaceEntity.new)
      etag = force ? Entity::FORCE_UPDATE : entity.etag
      response = service.call(entity.url, attributes, etag)

      if response.success?
        entity.attributes.replace(attributes)
        entity.etag = response.headers["etag"]
      else
        entity.error = response.error
      end

      response.success?
    end

    # Public: Merge new attributes into an entity. If successful, the entity
    # will have the new attributes. In case of an error, the entity won't be
    # changed and entity.error will be set.
    #
    # entity     - The entity to update.
    # attributes - A Hash of attributes.
    # force      - Force this operation even if the object is stale (optional,
    #              defaults to false).
    # service    - The backend service to implement this (optional).
    #
    # Returns true|false to indicate success.
    def self.merge_entity(entity, attributes, force=false, service=Azure::Tables::Services::MergeEntity.new)
      etag = force ? Entity::FORCE_UPDATE : entity.etag
      response = service.call(entity.url, attributes, etag)

      if response.success?
        entity.attributes.update(attributes)
        entity.etag = response.headers["etag"]
      else
        entity.error = response.error
      end

      response.success?
    end

    # Public: Delete an Entity. If the entity can't be deleted, entity.error
    # will be set.
    #
    # entity  - The entity to delete.
    # force   - Force this operation even if the object is stale (optional,
    #           defaults to false).
    # service - The backend service to implement this (optional).
    #
    # Returns true|false to indicate success.
    def self.delete_entity(entity, force=false, service=Azure::Tables::Services::DeleteEntity.new)
      etag = force ? Entity::FORCE_UPDATE : entity.etag
      response = service.call(entity.url, etag)

      if response.success?
        entity.etag = response.headers["etag"]
        entity.freeze
      else
        entity.error = response.error
      end

      response.success?
    end

    # Public: Query a table for a specific entity.
    #
    # table         - An Azure::Tables::Table.
    # partition_key - The PartitionKey of the desired entity.
    # row_key       - The RowKey of the desired entity.
    # service       - The backend service to implement this (optional).
    #
    # Returns an Entity, or nil if none is found.
    def self.query_entity(table, partition_key, row_key, query={}, service=Azure::Tables::Services::QueryEntities.new)
      query.update(partition_key: partition_key, row_key: row_key)
      response = service.call(table.name, query)

      if response.success?
        Entity.from_entry(Azure::Atom::Entry.load_entry(response.body))
      else
        nil
      end
    end

    # Public: Query a table for entities.
    # Options Hash keys *should* be defined using :symbols.
    #
    # table   - An Azure::Tables::Table.
    # query   - A hash of query options.
    # service - The backend service to implement this (optional).
    #
    # Returns an array of entities.
    def self.query_entities(table, query={}, service=Azure::Tables::Services::QueryEntities.new)
      response = service.call(table.name, query)

      if response.success?
        feed = Atom::Feed.load_feed(response.body)
        collection = Azure::Tables::EntitiesCollection.from_entries(table, feed.entries, query)
        collection.continuation_token(
          response.headers["x-ms-continuation-nextpartitionkey"],
          response.headers["x-ms-continuation-nextrowkey"]
        )

        collection
      else
        Azure::Tables::EntitiesCollection.new(table, query)
      end
    end
  end
end
