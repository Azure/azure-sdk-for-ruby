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
require 'integration/test_helper'

describe Azure::BaseManagementService do
  include Azure::Core::Utility

  subject { Azure::BaseManagementService.new }
  let(:affinity_group_name) { random_string('affinity-group-', 10) }
  let(:image_location) { WindowsImageLocation }

  before do
    Azure::Loggerx.expects(:puts).returns(nil).at_least(0)
  end

  let(:label) { 'Label Name' }
  let(:options) { { description: 'sample description' } }

  describe '#create_affinity_group' do

    it 'create new affinity group with valid params' do
      subject.create_affinity_group(affinity_group_name,
                                    image_location,
                                    label,
                                    options)
      affinity_group = subject.get_affinity_group(affinity_group_name)
      affinity_group.must_be_kind_of Azure::BaseManagement::AffinityGroup
      affinity_group.name.wont_be_nil
      affinity_group.location.must_equal image_location
      affinity_group.name.must_equal affinity_group_name
      affinity_group.label.must_equal label
      affinity_group.description.must_equal options[:description]
    end

    it 'errors if the affinity group location is not valid' do
      exception = assert_raises(RuntimeError) do
        subject.create_affinity_group(affinity_group_name, 'North West', label)
      end
      assert_match(/Allowed values are Central US,South Central US,West US,East US,East US 2,North Europe,West Europe,Southeast Asia,East Asia,Japan West,Japan East,Brazil South/i, exception.message)
    end

    it 'create new affinity group without optional params' do
      subject.create_affinity_group(affinity_group_name, image_location, label)
      affinity_group = subject.get_affinity_group(affinity_group_name)
      affinity_group.must_be_kind_of Azure::BaseManagement::AffinityGroup
      affinity_group.name.wont_be_nil
      affinity_group.location.must_equal image_location
      affinity_group.name.must_equal affinity_group_name
      affinity_group.label.must_equal label
    end
  end
end
