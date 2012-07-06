require "test_helper"
require "azure/tables/atom"

describe "Generating Atom entries with property lists" do
  it "can set the properties one by one" do
    entry = Azure::Tables::Atom::Entry.new do |entry|
      entry.properties["name1"] = "value"
      entry.properties["name2"] = "value"
    end
    entry.properties.size.must_equal 2
  end

  it "can set the properties by merging a hash" do
    entry = Azure::Tables::Atom::Entry.new do |entry|
      entry.properties.merge("name1" => "value", "name2" => "value")
    end
    entry.properties.size.must_equal 2
  end

  it "overrides a previous property with the same name" do
    entry = Azure::Tables::Atom::Entry.new do |entry|
      entry.properties["name"] = "value1"
      entry.properties["name"] = "value2"
    end

    entry.properties.size.must_equal 1
    entry.properties["name"].must_equal "value2"
  end

  it "can pass the properties as a block" do
    entry = Azure::Tables::Atom::Entry.new do |entry|
      entry.properties do |props|
        props["Prop1Name"] = "Prop1Value"
        props["Prop2Name"] = "Prop2Value"
      end
    end
    entry.properties.size.must_equal 2
  end

  it "can be serialized to xml" do
    entry = Azure::Tables::Atom::Entry.new do |entry|
      entry.properties do |props|
        props["name"] = "value"
      end
    end

    doc = Nokogiri::XML(entry.to_xml)
    prop = doc.xpath("//d:name", doc.collect_namespaces).first
    prop.text.must_equal "value"
  end
end

describe "Parsing property lists" do
  let :property_list do
    <<-XML
      <m:properties xmlns:d="http://schemas.microsoft.com/ado/2007/08/dataservices" xmlns:m="http://schemas.microsoft.com/ado/2007/08/dataservices/metadata">
        <d:Foo>bar</d:Foo>
        <d:Bar>baz</d:Bar>
        <d:Number m:type="Edm.Int32">20</d:Number>
      </m:properties>
    XML
  end

  it "can parse a simple property list" do
    list = Azure::Tables::Atom::PropertyList.parse(property_list)
    list["Foo"].must_equal "bar"
    list["Bar"].must_equal "baz"
  end

  it "will cast properties to the corresponding class" do
    list = Azure::Tables::Atom::PropertyList.parse(property_list)
    list["Number"].must_equal 20
  end
end
