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

describe Azure::VirtualMachineImageManagementService do

  subject { Azure::VirtualMachineImageManagementService.new }

  let(:request_path) { '/services/images' }
  let(:images_xml) { Fixtures['list_images'] }
  let(:method) { :get }
  let(:mock_request) { mock }
  let(:response) do
    response = mock
    response.stubs(:body).returns(images_xml)
    response
  end
  let(:response_body) { Nokogiri::XML response.body }

  before do
    Loggerx.expects(:puts).returns(nil).at_least(0)
  end

  describe '#list_virtual_machine_images' do

    before do
      ManagementHttpRequest.stubs(:new).with(
        method,
        request_path,
        nil
      ).returns(mock_request)
      mock_request.expects(:call).returns(response_body)
    end

    it 'assembles a URI for the request' do
      subject.list_virtual_machine_images
    end

    it 'sets the properties of the virtual machine images' do
      virtual_machine_image = subject.list_virtual_machine_images.first
      virtual_machine_image.name.must_equal 'RightImage-CentOS-6.2-x64-v5.8.8.1'
    end

    it 'returns a list of virtual machine images from server' do
      results = subject.list_virtual_machine_images
      results.must_be_kind_of Array
      results.length.must_equal 12
      image_klass = Azure::VirtualMachineImageManagement::VirtualMachineImage
      results.first.must_be_kind_of image_klass
    end
  end

end
