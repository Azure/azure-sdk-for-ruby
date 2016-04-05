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

describe Azure::VirtualMachineManagementService do
  subject { Azure::VirtualMachineManagementService.new }
  let(:virtual_machine_name) { 'testvm2321' }
  let(:cloud_service) { 'testcloudservice2321' }
  let(:storage_account) { 'sa4375943275' }
  let(:username) { 'admin' }

  describe 'delete_virtual_machine' do
    before do
      Azure::Loggerx.expects(:puts).returns(nil).at_least(0)
      VCR.insert_cassette "vm/#{name}"

      params = {
          vm_name: virtual_machine_name,
          vm_user: 'user',
          image: '03f55de797f546a1b29d1b8d66be687a__CoreCLR-x64-Beta5-Linux-PartsUnlimited-Demo-App-201504.29',
          password: 'User123',
          location: 'Southeast Asia'
      }
      options = {
          storage_account_name: storage_account,
          cloud_service_name: cloud_service,
      }
      subject.create_virtual_machine(params, options)
    end

    after do
      Azure::StorageManagementService.new.delete_storage_account(storage_account)
      VCR.eject_cassette
    end

    it 'should delete existing vm and cs' do
      options = { delete_vhd: true }
      subject.delete_virtual_machine(virtual_machine_name, cloud_service, options)
      vm = subject.get_virtual_machine(virtual_machine_name, cloud_service)
      vm.must_be_nil
      cloud_service = Azure::CloudServiceManagementService.new
      cloud_presence = cloud_service.get_cloud_service(cloud_service)
      cloud_presence.must_equal nil
    end
  end
end
