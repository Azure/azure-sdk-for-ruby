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

  subject { Azure::BaseManagementService.new }
  let(:affinity_group_name) { AffinityGroupNameHelper.name }

  describe '#affinity_group' do
    let(:label_name)  { 'Label' }
    let(:options) { { description: 'Some Description' } }

    before do
      Loggerx.expects(:puts).returns(nil).at_least(0)
    end

    it 'get affinity group properties for an existing group' do
      subject.create_affinity_group(affinity_group_name,
                                    WindowsImageLocation,
                                    label_name,
                                    options)
      affinity = subject.get_affinity_group(affinity_group_name)
      affinity.must_be_kind_of Azure::BaseManagement::AffinityGroup
      affinity.name.must_equal affinity_group_name
      affinity.label.must_equal label_name
      affinity.description.must_equal options[:description]
      affinity.capability.wont_be_nil
      affinity.capability.wont_equal []
      AffinityGroupNameHelper.clean
    end

    it 'gets properties for an non existing affinity group name' do
      affinity_group_name = 'unknown'
      begin
        subject.get_affinity_group(affinity_group_name)
      rescue Azure::Error::Error => error
        error.status_code.must_equal 404
        error.type.must_equal 'AffinityGroupNotFound'
      end
    end
  end
end
