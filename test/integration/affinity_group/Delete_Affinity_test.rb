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

  before do
    Loggerx.expects(:puts).returns(nil).at_least(0)
  end

  subject { Azure::BaseManagementService.new }
  let(:affinity_group_name) { AffinityGroupNameHelper.name }
  let(:location) { WindowsImageLocation }
  let(:label) { 'Label Name' }

  describe '#delete_affinity_group' do

    it 'delete affinity group' do
      subject.create_affinity_group(affinity_group_name, location, label)
      subject.delete_affinity_group(affinity_group_name)
      affinity_list = subject.list_affinity_groups.select do |x|
        x.name == affinity_group_name
      end.first
      affinity_list.must_be_nil
    end

    it 'errors if the affinity group does not exist' do
      affinity_group_name = 'unknown-server'
      begin
        subject.delete_affinity_group(affinity_group_name)
      rescue Azure::Error::Error => error
        error.status_code.must_equal 404
        error.type.must_equal 'AffinityGroupNotFound'
      end
    end

# Pending Test Case.
#    it 'errors while deleting an affinity group associated with services' do
#      skip('Need API to associate hosted services and'\
# =>        ' storage account with affinity group.')
#    end

  end
end
