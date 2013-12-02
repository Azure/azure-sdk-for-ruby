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

describe Azure::BaseManagement::Serialization do

  subject { Azure::BaseManagement::Serialization }
  let(:location) { 'West Us' }

  describe '#affinity_group_to_xml' do
    let(:affinity_group_name) { 'AG1' }
    let(:label) { 'Label Name' }

    it 'serializes the argument to xml' do
      result = subject.affinity_group_to_xml(affinity_group_name,
                                             location,
                                             label)
      doc = Nokogiri::XML result
      doc.css('Name').text.must_equal affinity_group_name
      doc.css('Label').text.must_equal Base64.encode64(label).strip
      doc.css('Location').text.must_equal location
      result.must_be_kind_of String
    end

    it 'serializes the argument to xml when optional description is given' do
      options = { description: 'Affinity Group Description' }
      result = subject.affinity_group_to_xml(affinity_group_name,
                                             location,
                                             label,
                                             options)
      doc = Nokogiri::XML result
      doc.css('Name').text.must_equal affinity_group_name
      doc.css('Label').text.must_equal Base64.encode64(label).strip
      doc.css('Description').text.must_equal options[:description]
      doc.css('Location').text.must_equal location
      result.must_be_kind_of String
    end
  end

  describe '#affinity_groups_from_xml' do
    let(:affinity_groups_xml) do
      Nokogiri::XML(Fixtures['list_affinity_groups'])
    end

    it 'accepts an XML string' do
      subject.affinity_groups_from_xml affinity_groups_xml
    end

    it 'returns an Array of Azure::BaseManagementt::AffinityGroup instances' do
      results = subject.affinity_groups_from_xml affinity_groups_xml
      results.must_be_kind_of Array
      results[0].must_be_kind_of Azure::BaseManagement::AffinityGroup
      results.count.must_equal 2
    end
  end

  describe '#affinity_group_from_xml' do

    let(:affinity_group_xml) { Nokogiri::XML(Fixtures['affinity_group']) }

    it 'accepts an XML string' do
      subject.affinity_group_from_xml affinity_group_xml
    end

    it 'returns an Azure::BaseManagement::AffinityGroup instances' do
      affinity_group = subject.affinity_group_from_xml affinity_group_xml
      affinity_group.must_be_kind_of Azure::BaseManagement::AffinityGroup
      affinity_group.hosted_services.size.must_equal 1
      affinity_group.storage_services.size.must_equal 1
      affinity_group.capability.must_equal %w[PersistentVMRole HighMemory]
      affinity_group.name.must_equal affinity_group_xml.css('Name').text
      affinity_group.description.must_equal affinity_group_xml.css(
        'Description').text
    end
  end
end
