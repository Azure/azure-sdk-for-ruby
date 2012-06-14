require 'test_helper'
require 'azure/tables/entity'

describe Azure::Tables::Entity do
  before do
    @entry = Azure::Atom::Entry.load_entry(Fixtures[:insert_entity_response_entry])
  end

  it "should be able to instantiate an entity from an xml entry" do
    entity = Azure::Tables::Entity.from_entry(@entry)

    "Mountain View".must_equal entity["Address"]
    entity["Address"].must_be :kind_of?, String
  end

  it "should be able to read/write an attribute directly" do
    entity = Azure::Tables::Entity.new
    entity["myField"] = "Mine"
    entity["myField"].must_equal "Mine"
  end

  it "can reset it's attributes" do
    source = Azure::Tables::Entity.new("Foo" => "Bar") do |e|
      e.url = URI("http://localhost/foo")
    end

    target = Azure::Tables::Entity.new("Baz" => "Qux") do |e|
      e.url = URI("http://localhost/bar")
    end

    target.reset(source)
    target.url.must_equal source.url
    target.attributes.must_equal source.attributes
  end

  it "should be able to update itself" do
    entity, service = entity("Foo" => "Bar")
    service.expect(:update_entity, true, [entity, { "Foo" => "Qux" }])
    entity.update("Foo" => "Qux")
    service.verify
  end

  it "should be able to merge properties" do
    entity, service = entity("Foo" => "Bar")
    service.expect(:merge_entity, true, [entity, { "Baz" => "Qux" }])
    entity.merge("Baz" => "Qux")
    service.verify
  end

  it "should be able to delete itself" do
    entity, service = entity({})
    service.expect(:delete_entity, true, [entity])
    entity.delete.must_equal true
    service.verify
  end

  it "can set/get the etag" do
    entity_1 = Azure::Tables::Entity.new
    entity_1.etag = "FooBar"
    entity_1.etag.must_equal "FooBar"

    entity_2 = Azure::Tables::Entity.new
    entity_2.etag.must_equal "*"
  end

  def entity(attributes)
    service = MiniTest::Mock.new
    uri = URI("http://localhost/foo")
    entity = Azure::Tables::Entity.new(attributes, service) { |e| e.url = uri }
    [entity, service]
  end
end
