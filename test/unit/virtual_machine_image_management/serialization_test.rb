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

describe Azure::VirtualMachineImageManagement::Serialization do
  subject { Azure::VirtualMachineImageManagement::Serialization }

  let(:virtual_machine_images_from_xml) { Fixtures['list_images'] }

  describe '#virtual_machine_images_from_xml' do

    it 'accepts an XML string' do
      subject.virtual_machine_images_from_xml Nokogiri::XML(virtual_machine_images_from_xml)
    end

    it 'returns an Array of VirtualMachineImageService instances' do
      results = subject.virtual_machine_images_from_xml Nokogiri::XML(virtual_machine_images_from_xml)
      results.must_be_kind_of Array
      results[0].must_be_kind_of Azure::VirtualMachineImageManagement::VirtualMachineImage
      results.count.must_equal 12
    end
  end
end
