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

describe Azure::BaseManagement::BaseManagementService do
  subject { Azure::BaseManagement::BaseManagementService.new }

  describe '#rolesizes' do

    it 'gets properties of the role size' do
      result = subject.list_rolesizes
      result.wont_be_nil
    end

    it 'returns a list of role size' do
      role_sizes = subject.list_rolesizes
      role_sizes.must_be_kind_of Array
      role_size = role_sizes.first
      role_size.must_be_kind_of Azure::BaseManagement::RoleSize
      assert_operator role_sizes.size, :>=, 1
      role_size.name.wont_be_nil
    end

  end
end
