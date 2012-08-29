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
require "test_helper"
require "azure/core/atom"

describe "Parsing Atom" do
  let :entry_xml do
    <<-XML
      <?xml version="1.0" encoding="utf-8" standalone="yes"?>
      <entry xml:base="http://myaccount.table.core.windows.net/" xmlns:d="http://schemas.microsoft.com/ado/2007/08/dataservices" xmlns:m="http://schemas.microsoft.com/ado/2007/08/dataservices/metadata" xmlns="http://www.w3.org/2005/Atom">
        <id>http://myaccount.table.core.windows.net/Tables('mytable')</id>
        <title type="text"></title>
        <updated>2009-01-04T17:18:54.7062347Z</updated>
        <author>
          <name />
        </author>
        <link rel="edit" title="Tables" href="Tables('mytable')" />
        <category term="myaccount.Tables" scheme="http://schemas.microsoft.com/ado/2007/08/dataservices/scheme" />
        <content type="application/xml">
          <m:properties>
            <d:TableName>mytable</d:TableName>
          </m:properties>
        </content>
      </entry>
    XML
  end

  let :feed_xml do
    <<-XML
      <?xml version="1.0" encoding="utf-8" standalone="yes"?>
      <feed xml:base="http://myaccount.table.core.windows.net/" xmlns:d="http://schemas.microsoft.com/ado/2007/08/dataservices" xmlns:m="http://schemas.microsoft.com/ado/2007/08/dataservices/metadata" xmlns="http://www.w3.org/2005/Atom">
        <id>http://myaccount.table.core.windows.net/Tables</id>
        <title type="text">Tables</title>
        <updated>2009-01-04T17:18:54.7062347Z</updated>
        <link rel="self" title="Tables" href="Tables" />
        <entry>
          <id>http://myaccount.table.core.windows.net/Tables('mytable')</id>
          <title type="text"></title>
          <updated>2009-01-04T17:18:54.7062347Z</updated>
          <author>
            <name />
          </author>
          <link rel="edit" title="Tables" href="Tables('mytable')" />
          <category term="myaccount.Tables" scheme="http://schemas.microsoft.com/ado/2007/08/dataservices/scheme" />
          <content type="application/xml">
            <m:properties>
              <d:TableName>mytable</d:TableName>
            </m:properties>
          </content>
        </entry>
      </feed>
    XML
  end

  let :feeds_entry_xml do
    (Nokogiri::XML(feed_xml) % "entry").to_xml
  end

  it "parses an entry correctly" do
    entry = Azure::Core::Atom::Entry.parse(entry_xml)
    entry.id.must_equal "http://myaccount.table.core.windows.net/Tables('mytable')"
    entry.updated.must_equal Time.parse("2009-01-04T17:18:54.7062347Z")
    entry.content.must_match /d:TableName/
  end

  it "parses a feed correctly" do
    feed = Azure::Core::Atom::Feed.parse(feed_xml)
    feed.id.must_equal "http://myaccount.table.core.windows.net/Tables"
    feed.updated.must_equal Time.parse("2009-01-04T17:18:54.7062347Z")
    feed.entries.size.must_equal 1

    entry = feed.entries.first
    entry.id.must_equal "http://myaccount.table.core.windows.net/Tables('mytable')"
  end

  it "chooses the entry parser when parsing feeds" do
    entry = double()
    parser = MiniTest::Mock.new
    parser.expect(:parse, entry, [feeds_entry_xml])

    feed = Azure::Core::Atom::Feed.parse(feed_xml, parser)

    parser.verify
  end
end

describe "Generating Atom" do
  class ComplexContent
    def as_xml(xml)
      xml.foo("bar")
      xml
    end
  end

  it "includes the content of the entry when it's a string" do
    entry = Azure::Core::Atom::Entry.new do |entry|
      entry.content = "FooBar"
    end

    doc = Nokogiri::XML(entry.to_xml)
    content = doc % "content"
    content.text.must_equal "FooBar"
  end

  it "includes the content of the entry when it's an XML structure" do
    entry = Azure::Core::Atom::Entry.new do |entry|
      entry.content = ComplexContent.new
    end

    doc = Nokogiri::XML(entry.to_xml)
    foo_in_content = doc % "content > foo"
    foo_in_content.text.must_equal "bar"
  end
end
