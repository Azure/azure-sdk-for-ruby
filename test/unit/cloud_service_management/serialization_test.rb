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
require 'test_helper'

describe Azure::CloudServiceManagement::Serialization do
  subject { Azure::CloudServiceManagement::Serialization }

  let(:cloud_services_from_xml) { Fixtures['list_cloud_services'] }

  describe '#cloud_services_from_xml' do
    let (:cloud_services_xml) { Nokogiri::XML(cloud_services_from_xml) }
    it 'accepts an XML string' do
      subject.cloud_services_from_xml Nokogiri::XML(cloud_services_from_xml)
    end

    it 'returns an Array of CloudService instances' do
      results = subject.cloud_services_from_xml(cloud_services_xml)
      results.must_be_kind_of Array
      results[0].must_be_kind_of(Azure::CloudServiceManagement::CloudService)
      results.count.must_equal 2
    end

    it 'populates all properties for a cloud service' do
      results = subject.cloud_services_from_xml(cloud_services_xml)
      cloud = results.first
      cloud_xml = cloud_services_xml.css('HostedServices HostedService').first
      cloud.url.must_equal(cloud_xml.css('Url').text)
      cloud.name.must_equal(cloud_xml.css('ServiceName').text)
      cloud.description.must_equal(cloud_xml.css('Description').text)
      cloud.location.must_equal(cloud_xml.css('Location').text)
      cloud.label.must_equal(Base64.decode64(cloud_xml.css('Label').text))
      cloud.status.must_equal(cloud_xml.css('Status').text)
      cloud.date_created.must_equal(cloud_xml.css('DateCreated').text)
      cloud.date_modified.must_equal(cloud_xml.css('DateLastModified').text)
      cloud.extended_properties.size.must_equal(
        cloud_xml.css('ExtendedProperties ExtendedProperty').size
      )
      cloud_xml.css('ExtendedProperties ExtendedProperty').each do |p|
        cloud.extended_properties[p.css('Name').text].must_equal(
          p.css('Value').text
        )
      end
      cloud.default_winrm_certificate_thumbprint.must_equal(
        cloud_xml.css('DefaultWinRMCertificateThumbprint').text
      )
    end
  end

  describe '#cloud_services_to_xml' do
    let(:cloud_service_name) { 'cloud-service' }

    it 'accepts an name and options hash' do
      subject.cloud_services_to_xml cloud_service_name
    end

    it 'uses name for label if label not provided' do
      results = subject.cloud_services_to_xml(
        cloud_service_name,

        location: 'East Asia'

      )

      doc = Nokogiri::XML(results)
      Base64.decode64(doc.css('Label').text).must_equal(cloud_service_name)
    end

    it 'uses label when label is provided' do
      results = subject.cloud_services_to_xml(
        cloud_service_name,

        location: 'East Asia',
        label: 'My Label'

      )

      doc = Nokogiri::XML(results)
      Base64.decode64(doc.css('Label').text).must_equal('My Label')
    end

    it 'serializes the argument to xml' do
      results = subject.cloud_services_to_xml(
        cloud_service_name,  location: 'West US'
      )
      results.must_be_kind_of String
      doc = Nokogiri::XML results
      doc.css('ServiceName').text.must_equal cloud_service_name
      doc.css('Location').text.must_equal 'West US'
    end

    it 'uses affinity_group if provided and ignores location' do
      results = subject.cloud_services_to_xml(
        cloud_service_name,

        affinity_group_name: 'my-affinity-group',
        location: 'West US'

      )
      results.must_be_kind_of String
      doc = Nokogiri::XML results
      doc.css('ServiceName').text.must_equal(cloud_service_name)
      doc.css('AffinityGroup').wont_be_empty
      doc.css('AffinityGroup').text.must_equal('my-affinity-group')
      doc.css('Location').must_be_empty
    end

    it 'uses location when affinity group not provided' do
      results = subject.cloud_services_to_xml(
        cloud_service_name,

        location: 'East Asia'

      )

      doc = Nokogiri::XML(results)
      doc.css('AffinityGroup').must_be_empty
      doc.css('Location').wont_be_empty
      doc.css('Location').text.must_equal('East Asia')
    end

    it 'serializes extended properties when provided' do
      xtended_props = {
        prop_1_name: 'prop_1_value',
        prop_2_name: 'prop_2_value'
      }
      results = subject.cloud_services_to_xml(
        cloud_service_name,

        extended_properties: xtended_props

      )

      doc = Nokogiri::XML(results)
      props_xml = doc.css('ExtendedProperties ExtendedProperty')
      props_xml.wont_be_empty
      props_xml.size.must_equal(2)
      props_xml.css('Name').first.text.must_equal('prop_1_name')
      props_xml.css('Value').first.text.must_equal(
        xtended_props[:"#{props_xml.css('Name').first.text}"]
      )
      props_xml.css('Name').last.text.must_equal('prop_2_name')
      props_xml.css('Value').last.text.must_equal(
        xtended_props[:"#{props_xml.css('Name').last.text}"]
      )
    end

    it 'serializes the options hash to xml' do
      results = subject.cloud_services_to_xml(
        cloud_service_name,
        location: 'East US'
      )
      doc = Nokogiri::XML results
      doc.css('Location').text.must_equal 'East US'
      results.must_be_kind_of String
    end
  end
end
