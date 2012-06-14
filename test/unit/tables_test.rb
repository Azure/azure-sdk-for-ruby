require "test_helper"
require "azure/tables"

describe Azure::Tables do
  class StubResponse
    attr_reader :success, :body, :error
    alias_method :success?, :success

    def initialize(attrs={})
      @success = attrs.fetch(:success, true)
      @body = attrs.fetch(:body, nil)
      @etag = attrs.fetch(:etag, nil)
      @error = attrs.fetch(:error, nil)
    end

    def headers
      { "etag" => @etag }
    end
  end

  let :service do
    MiniTest::Mock.new
  end

  describe ".all" do
    let :successful_response do
      StubResponse.new(success: true, body: Fixtures[:all_tables])
    end

    it "returns a list of Tables on a successful call" do
      service.stub(:call, successful_response)

      tables = Azure::Tables.all({}, service)
      tables.must_include Azure::Tables::Table.new("mytable", nil)
    end
  end

  describe ".create" do
    let :successful_response do
      double(success?: true, body: Fixtures[:create_table_response_entry])
    end

    let :failed_response do
      double(success?: false, body: Fixtures[:error], error: Object.new)
    end

    it "returns a valid table when successful" do
      service.stub(:call, successful_response)

      table = Azure::Tables.create("mytable", service)
      assert table.valid?
    end

    it "returns an invalid table when unsuccessful" do
      service.stub(:call, failed_response)

      table = Azure::Tables.create("mytable", service)
      refute table.valid?
      table.error.must_equal failed_response.error
    end
  end

  describe ".delete" do
    let :successful_response do
      double(success?: true)
    end

    let :failed_response do
      double(success?: false, error: Object.new)
    end

    it "returns true when successful" do
      table = Azure::Tables::Table.new("mytable", URI("http://localhost/foo"))
      service.stub(:call, successful_response)

      result = Azure::Tables.delete(table, service)
      result.must_equal true
    end

    it "returns false when failed" do
      table = Azure::Tables::Table.new("mytable", URI("http://localhost/foo"))
      service.stub(:call, failed_response)

      result = Azure::Tables.delete(table, service)
      result.must_equal false
      refute table.valid?
      table.error.must_equal failed_response.error
    end
  end

  describe ".insert_entity" do
    let :successful_response do
      StubResponse.new(success: true, body: Fixtures[:insert_entity_response_entry], etag: "Foo")
    end

    let :failed_response do
      double(success?: false, error: Object.new)
    end

    it "returns the entity when successful" do
      table = Azure::Tables::Table.new("mytable")
      entity = Azure::Tables::Entity.new

      service.stub(:call, successful_response)

      Azure::Tables.insert_entity(table, entity, service)
      entity.etag.must_equal "Foo"
      entity["Address"].to_s.must_equal "Mountain View"
    end

    it "adds an error to the entity when unsusccessful" do
      table = Azure::Tables::Table.new("mytable")
      entity = Azure::Tables::Entity.new

      service.stub(:call, failed_response)

      Azure::Tables.insert_entity(table, entity, service)
      entity.etag.must_equal Azure::Tables::Entity::FORCE_UPDATE
      entity.error.must_equal failed_response.error
    end
  end

  describe ".update_entity" do
    let :successful_response do
      StubResponse.new(success: true, body: Fixtures[:insert_entity_response_entry], etag: "Foo")
    end

    let :failed_response do
      double(success?: false, error: Object.new)
    end

    it "replaces the entity's attributes if successful" do
      entity = Azure::Tables::Entity.new
      attrs = { "Foo" => "Bar", "Baz" => "Qux" }

      service.stub(:call, successful_response)

      Azure::Tables.update_entity(entity, attrs, false, service)
      entity.attributes.must_equal attrs
      entity.etag.must_equal successful_response.headers["etag"]
      assert entity.valid?
    end

    it "doesn't change the entity if failed" do
      entity = Azure::Tables::Entity.new
      attrs = { "Foo" => "Bar" }

      service.stub(:call, failed_response)

      Azure::Tables.update_entity(entity, attrs, false, service)
      entity.attributes.wont_equal attrs
      entity.etag.wont_equal successful_response.headers["etag"]
      entity.error.must_equal failed_response.error
      refute entity.valid?
    end
  end

  describe ".merge_entity" do
    let :successful_response do
      StubResponse.new(success: true, body: Fixtures[:insert_entity_response_entry], etag: "Foo")
    end

    let :failed_response do
      double(success?: false, error: Object.new)
    end

    it "updates the entity's attributes if successful" do
      entity = Azure::Tables::Entity.new("Qux" => "Bar")
      attrs = { "Foo" => "Bar", "Baz" => "Qux" }

      service.stub(:call, successful_response)

      Azure::Tables.merge_entity(entity, attrs, false, service)
      entity["Qux"].must_equal "Bar"
      entity["Foo"].must_equal "Bar"
      entity["Baz"].must_equal "Qux"
      entity.etag.must_equal successful_response.headers["etag"]
      assert entity.valid?
    end

    it "doesn't change the entity if failed" do
      entity = Azure::Tables::Entity.new("Qux" => "Bar")
      attrs = { "Foo" => "Bar", "Baz" => "Qux" }

      service.stub(:call, failed_response)

      Azure::Tables.merge_entity(entity, attrs, false, service)
      entity.attributes.must_equal({ "Qux" => "Bar" })
      entity.etag.wont_equal successful_response.headers["etag"]
      entity.error.must_equal failed_response.error
      refute entity.valid?
    end
  end

  describe ".delete_entity" do
    let :successful_response do
      StubResponse.new(success: true, etag: "Foo")
    end

    let :failed_response do
      double(success?: false, error: Object.new)
    end

    it "freezes the entity if successful" do
      entity = Azure::Tables::Entity.new("Qux" => "Bar")

      service.stub(:call, successful_response)

      Azure::Tables.delete_entity(entity, false, service)
      entity.etag.must_equal successful_response.headers["etag"]
      assert entity.frozen?
      assert entity.valid?
    end

    it "sets the error on the entity if failed" do
      entity = Azure::Tables::Entity.new("Qux" => "Bar")

      service.stub(:call, failed_response)

      Azure::Tables.delete_entity(entity, false, service)
      entity.etag.wont_equal successful_response.headers["etag"]
      entity.error.must_equal failed_response.error
      refute entity.frozen?
      refute entity.valid?
    end
  end

  describe ".query_entities" do
    let :successful_response do
      StubResponse.new(success: true, body: Fixtures[:query_entities_response])
    end

    let :empty_response do
      StubResponse.new(success: true, body: Fixtures[:query_entities_empty_response])
    end

    let :failed_response do
      double(success?: false, error: Object.new)
    end

    it "returns a list of entities when successful" do
      table = Azure::Tables::Table.new("mytable")

      service.stub(:call, successful_response)

      entities = Azure::Tables.query_entities(table, {}, service)
      entities.must_be :kind_of?, Azure::Tables::EntitiesCollection
      entities.size.must_equal 2
      entities.first["Name"].to_s.must_equal "John"
    end

    it "returns an empty list when successful but the response is empty" do
      table = Azure::Tables::Table.new("mytable")

      service.stub(:call, empty_response)

      entities = Azure::Tables.query_entities(table, {}, service)
      entities.must_be_empty
    end

    it "returns an empty list if the request is unsuccessful" do
      # TODO: We need a way to pass the error to the end user.

      table = Azure::Tables::Table.new("mytable")

      service.stub(:call, failed_response)

      entities = Azure::Tables.query_entities(table, {}, service)
      entities.must_be_empty
    end
  end

  describe ".query_entity" do
    let :successful_response do
      StubResponse.new(success: true, body: Fixtures[:insert_entity_response_entry])
    end

    let :failed_response do
      double(success?: false, error: Object.new)
    end

    it "returns the matching entity when it's successful" do
      table = Azure::Tables::Table.new("mytable")

      service.stub(:call, successful_response)

      entity = Azure::Tables.query_entity(table, "PK", "RK", {}, service)
      entity["PartitionKey"].to_s.must_equal "mypartitionkey"
    end

    it "returns nil if the request is unsuccessful" do
      # TODO: We need a way to pass the error to the end user.

      table = Azure::Tables::Table.new("mytable")

      service.stub(:call, failed_response)

      entities = Azure::Tables.query_entity(table, "PK", "RK", {}, service)
      entities.must_be_nil
    end
  end
end
