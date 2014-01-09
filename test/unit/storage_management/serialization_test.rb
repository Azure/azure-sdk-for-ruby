#-------------------------------------------------------------------------
# Copyright 2013 Microsoft Open Technologies, Inc.
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

describe Azure::StorageManagement::Serialization do
  subject { Azure::StorageManagement::Serialization }

  let(:storage_services_from_xml) { Fixtures["list_storage_accounts"] }

  describe "#storage_services_from_xml" do

    it "accepts an XML string" do
      subject.storage_services_from_xml Nokogiri::XML(storage_services_from_xml)
    end

    it "returns an Array of StorageService instances" do
      results = subject.storage_services_from_xml Nokogiri::XML(storage_services_from_xml)
      results.must_be_kind_of Array
      results[0].must_be_kind_of Azure::StorageManagement::StorageAccount
      results.count.must_equal 2
    end
  end

  describe "#storage_services_to_xml" do
    let(:storage_service_name) {'storage-service'}
    let(:storage_options) { {
        :extended_properties=> {
          :prop_1_name=>"prop_1_value"
        },
        :label=>"Test Label",
        :geo_replication_enabled=>true
      }
    }

    it "accepts an name and options hash" do
      subject.storage_services_to_xml storage_service_name
    end

    it "serializes the argument to xml" do
      results = subject.storage_services_to_xml(storage_service_name, :location => "West US")
      doc = Nokogiri::XML results
      doc.css('ServiceName').text.must_equal storage_service_name
      doc.css('Location').text.must_equal "West US"
      results.must_be_kind_of String
    end

    it "serializes the options hash to xml" do
      results = subject.storage_services_to_xml(storage_service_name, {:location => 'East US'})
      doc = Nokogiri::XML results
      doc.css('Location').text.must_equal 'East US'
      results.must_be_kind_of String
    end

    it "uses affinity_group from the hash instead of location" do
      results = subject.storage_services_to_xml(storage_service_name, {:affinity_group_name => 'my-affinity-group', :location => 'East US'})
      doc = Nokogiri::XML results
      doc.css('AffinityGroup').text.must_equal 'my-affinity-group'
      results.must_be_kind_of String
    end

    it 'serializes geo_replication_enabled and extended_properties to xml' do
      results = subject.storage_services_to_xml(
        storage_service_name, storage_options
      )

      doc = Nokogiri::XML(results)
      doc.css('GeoReplicationEnabled').text.must_equal(
        "#{storage_options[:geo_replication_enabled]}"
      )
      doc.css('ExtendedProperties ExtendedProperty').size.must_equal(1)
      doc.css('ExtendedProperties ExtendedProperty').first.css(
        'Name'
      ).text.must_equal('prop_1_name')
      doc.css('ExtendedProperties ExtendedProperty').first.css(
        'Value'
      ).text.must_equal(storage_options[:extended_properties][:prop_1_name])
    end

    it 'uses provided label instead of name for Label' do
      options = {
        label: 'My Label'
      }
      results = subject.storage_services_to_xml(storage_service_name, options)
      doc = Nokogiri::XML(results)
      Base64.decode64(doc.css('Label').text).must_equal(options[:label])
    end

    it 'uses name for Label when label is not provided' do
      results = subject.storage_services_to_xml(storage_service_name)
      doc = Nokogiri::XML(results)
      Base64.decode64(doc.css('Label').text).must_equal(storage_service_name)
    end
  end

  describe "#storage_update_to_xml" do
    nil_options = {
      description: nil,
      label: nil,
      geo_replication_enabled: 'nil',
      extended_properties: nil
    }

    let(:empty_options) { {
        description: '',
        label: '',
        geo_replication_enabled: '',
        extended_properties: ''
      }
    }

    let(:partial_options_gre_bool) { {
        label: 'label',
        geo_replication_enabled: false
      }
    }

    let(:partial_options_gre_string) { {
        description: 'label',
        geo_replication_enabled: 'false'
      }
    }

    let(:options) { {
        extended_properties: {
          prop_1_name: 'prop_1_value'
        },
        description: 'Test Description',
        label: 'Test Label',
        geo_replication_enabled: true
      }
    }

    let(:no_options_message) {'No options specified'}
    let(:label_or_desc_required) { 'Either one of Label or Description has to be provided. Both cannot be empty' }

    it "checks if the parameter is nil" do
      exception = assert_raises RuntimeError do
        subject.storage_update_to_xml nil
      end
      assert_match no_options_message, exception.message
    end

    it "checks if the parameter is empty" do
      exception = assert_raises RuntimeError do
        subject.storage_update_to_xml Hash.new
      end
      assert_match no_options_message, exception.message
    end

    it "checks if all options are nil" do
      exception = assert_raises RuntimeError do
        subject.storage_update_to_xml nil_options
      end
      assert_match label_or_desc_required, exception.message
    end

    it "checks if all options are empty" do
      exception = assert_raises RuntimeError do
        subject.storage_update_to_xml empty_options
      end
      assert_match label_or_desc_required, exception.message
    end

    it "returns xml for the partial options provided" do
      storage_update_xml_string = subject.storage_update_to_xml partial_options_gre_bool
      storage_update_xml_string.must_be_kind_of String

      storage_update_xml = Nokogiri::XML storage_update_xml_string
      storage_update_xml.css('Label').text.must_equal(Base64::encode64(partial_options_gre_bool[:label]))
      storage_update_xml.css('GeoReplicationEnabled').text.must_equal "#{partial_options_gre_bool[:geo_replication_enabled]}"

      storage_update_xml.css('Description').size.must_equal 0
      storage_update_xml.css('ExtendedProperties').size.must_equal 0
    end

    it "returns xml for the partial options provided without gre" do
      storage_update_xml_string = subject.storage_update_to_xml partial_options_gre_string
      storage_update_xml_string.must_be_kind_of String

      storage_update_xml = Nokogiri::XML storage_update_xml_string
      storage_update_xml.css('Description').size.must_equal 1
      storage_update_xml.css('Description').text.must_equal partial_options_gre_string[:description]

      storage_update_xml.css('GeoReplicationEnabled').size.must_equal 0

      storage_update_xml.css('ExtendedProperties').size.must_equal 0
    end

    it "returns xml for the options provided" do
      update_xml_string = subject.storage_update_to_xml options
      update_xml_string.must_be_kind_of String

      update_xml = Nokogiri::XML update_xml_string

      update_xml.css('Label').text.must_equal(Base64::encode64(options[:label]))
      update_xml.css('GeoReplicationEnabled').size.must_equal 1
      update_xml.css('GeoReplicationEnabled').text.must_equal "#{options[:geo_replication_enabled]}"

      update_xml.css('ExtendedProperties ExtendedProperty').size.must_equal 1
      update_xml.css('ExtendedProperties ExtendedProperty Name').text.must_equal "#{:prop_1_name}"
      update_xml.css('ExtendedProperties ExtendedProperty Value').text.must_equal options[:extended_properties][:prop_1_name]
    end

    it "returns xml for options but with description in absence of label" do
      options.delete(:label)
      update_xml_string = subject.storage_update_to_xml(options)
      update_xml_string.must_be_kind_of(String)

      update_xml = Nokogiri::XML(update_xml_string)

      update_xml.css('Description').text.must_equal(options[:description])
      update_xml.css('GeoReplicationEnabled').size.must_equal(1)
      update_xml.css('ExtendedProperties ExtendedProperty').size.must_equal(1)
      update_xml.css('ExtendedProperties ExtendedProperty Name').text
        .must_equal("#{:prop_1_name}")
      update_xml.css('ExtendedProperties ExtendedProperty Value')
        .text.must_equal(options[:extended_properties][:prop_1_name])
    end
  end
end
