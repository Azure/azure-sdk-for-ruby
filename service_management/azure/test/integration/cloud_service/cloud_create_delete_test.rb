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

describe Azure::CloudServiceManagementService do
  subject { Azure::CloudServiceManagementService.new }
  let(:cloud_service_name) { 'testcloudservice2375' }
  let(:options) do
    {
      location: 'East US',
      description: 'Cloud service test description'
    }
  end

  before do
    Azure::Loggerx.expects(:puts).returns(nil).at_least(0)
    VCR.insert_cassette "cloud_service/#{name}"
    subject.create_cloud_service(cloud_service_name, options)
  end

  after do
    subject.delete_cloud_service(cloud_service_name)
    VCR.eject_cassette
  end

  describe 'cloud service' do
    it 'should create and delete cloud service' do
      cloud_service = subject.get_cloud_service_properties(cloud_service_name)
      assert cloud_service.name, cloud_service_name
      assert cloud_service.location, options[:location]
      assert cloud_service.virtual_machines, Hash.new
    end
  end
end
