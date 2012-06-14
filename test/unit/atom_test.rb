require "test_helper"
require "azure/atom"

describe "Generating Atom entries with property lists" do
  it "lists the properties in the node" do
    entry = Atom::Entry.new do |entry|
      entry.properties do |props|
        props["Prop1Name"] = "Prop1Value"
        props["Prop2Name"] = "Prop2Value"
      end
    end

    entry.properties.first.name.must_equal "d:Prop1Name"
    entry.properties.first.content.must_equal "Prop1Value"

    entry.properties.last.name.must_equal "d:Prop2Name"
    entry.properties.last.content.must_equal "Prop2Value"
  end

  it "can bulk-update a property list" do
    entry = Atom::Entry.new do |entry|
      entry.properties.merge(a: 1, b: 2, c: 3)
    end

    doc = XML::Parser.string(entry.to_xml).parse
    doc.find("//d:a[text() = '1']").wont_be_empty
    doc.find("//d:b[text() = '2']").wont_be_empty
    doc.find("//d:c[text() = '3']").wont_be_empty
  end

  it "can set properties in several ways" do
    entry = Atom::Entry.new do |entry|
      entry.properties["a"] = 1
      entry.properties.merge(b: 2, c: 3)
      entry.properties do |props|
        props["d"] = 4
      end
    end

    doc = XML::Parser.string(entry.to_xml).parse
    doc.find("//d:a[text() = '1']").wont_be_empty
    doc.find("//d:b[text() = '2']").wont_be_empty
    doc.find("//d:c[text() = '3']").wont_be_empty
    doc.find("//d:d[text() = '4']").wont_be_empty
  end

  it "generates properties with the given data type" do
    node = Azure::Atom::Property.new("name", "value")
    node["m:type"].must_equal "Edm.String"
  end

  it "generates properties with the given data name" do
    node = Azure::Atom::Property.new("firstName", "value")
    node.name.must_equal "d:firstName"
    node = Azure::Atom::Property.new(:firstName, "value")
    node.name.must_equal "d:firstName"
  end
end
