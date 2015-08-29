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

  let(:os_image_request_path) { '/services/images' }
  let(:vm_image_request_path) { '/services/vmimages' }
  let(:os_images_xml) { Fixtures['list_os_images'] }
  let(:vm_images_xml) { Fixtures['list_vm_images'] }
  let(:verb) { :get }
  let(:os_images_response) do
    response = mock
    response.stubs(:body).returns(os_images_xml)
    Nokogiri::XML response.body
  end
  let(:vm_images_response) do
    response = mock
    response.stubs(:body).returns(vm_images_xml)
    Nokogiri::XML response.body
  end

  before {
    Azure::Loggerx.expects(:puts).returns(nil).at_least(0)
  }

  describe '#list_os_images' do
    let(:verb) { :get }
    before do
      os_images_request = mock
      subject.client.stubs(:management_request).with(
          verb,
          os_image_request_path,
          nil
      ).returns(os_images_request)
      os_images_request.expects(:call).returns(os_images_response)
    end

    it 'returns a list of os images from server' do
      os_images = subject.list_os_images
      os_images.must_be_kind_of Array
      image_klass = VirtualMachineImage
      os_images.length.must_equal 12
      image = os_images.first
      image.must_be_kind_of image_klass
      image.image_type.must_equal 'OS'
    end
  end

  describe '#list_vm_images' do
    let(:verb) { :get }
    before do
      vm_images_request = mock
      subject.client.stubs(:management_request).with(
          verb,
          vm_image_request_path,
          nil
      ).returns(vm_images_request)
      vm_images_request.expects(:call).returns(vm_images_response)
    end

    it 'returns a list of vm images from server' do
      vm_images = subject.list_vm_images
      vm_images.must_be_kind_of Array
      vm_images.length.must_equal 1
      image_klass = VirtualMachineImage
      image = vm_images.first
      image.must_be_kind_of image_klass
      image.image_type.must_equal 'VM'
    end
  end

  describe '#list_images' do
    let(:verb) { :get }
    before do
      vm_images_request = mock
      subject.client.stubs(:management_request).with(
          verb,
          vm_image_request_path,
          nil
      ).returns(vm_images_request)
      vm_images_request.expects(:call).returns(vm_images_response)
      os_images_request = mock
      subject.client.stubs(:management_request).with(
          verb,
          os_image_request_path,
          nil
      ).returns(os_images_request)
      os_images_request.expects(:call).returns(os_images_response)
    end

    it 'returns a list of virtual machine images' do
      images = subject.list_virtual_machine_images
      images.must_be_kind_of Array
      images.length.must_equal 13
      images.last.image_type.must_equal 'VM'
      images.first.image_type.must_equal 'OS'
    end
  end
end
