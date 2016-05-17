#-------------------------------------------------------------------------
# # Copyright (c) Microsoft and contributors. All rights reserved.
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
  subject { Azure::BaseManagementService.new }
  let(:affinity_group_name) { 'testaffinitygroup' }

  describe '#list_affinity_groups' do
    before do
      Azure::Loggerx.expects(:puts).returns(nil).at_least(0)
      VCR.insert_cassette "affinity_group/#{name}"
      subject.create_affinity_group(affinity_group_name,
                                    WindowsImageLocation,
                                    'Label Name')
    end

    after do
      subject.delete_affinity_group affinity_group_name
      VCR.eject_cassette
    end

    it 'list affinity groups' do
      affinity_groups = subject.list_affinity_groups

      affinity_group = affinity_groups.first
      affinity_groups.wont_be_nil
      affinity_groups.must_be_kind_of Array
      affinity_group.must_be_kind_of Azure::BaseManagement::AffinityGroup
      assert_operator affinity_groups.size, :>=, 1
    end
  end
end
