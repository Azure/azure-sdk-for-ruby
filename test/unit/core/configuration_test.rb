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
require "test_helper"
require "azure/core/configuration"

describe Azure::Core::Configuration do
  subject { Azure::Core::Configuration }
  before(:each) do
    # Many of the Azure tests outside of this file are dependent on a single
    # global configuration.  Save this config and restore it after we are done.
    $azure_global_configuration = subject.instance
    subject.set_instance(nil)
  end

  after(:each) do
    subject.set_instance($azure_global_configuration)
  end

  describe '.set_instance' do
    it 'sets the current Configuration instance' do
      subject.set_instance($azure_global_configuration)
      subject.instance.must_equal $azure_global_configuration
    end
  end

  describe '.instance' do
    it 'creates a fresh Configuration object when the current instance is nil' do
      subject.instance.storage_access_key = 'foobar'
      subject.set_instance(nil)
      subject.instance.must_be_instance_of Azure::Core::Configuration
      subject.instance.storage_access_key.must_equal nil 
    end

    it 'maintains an existing Configuration instance' do
      subject.instance.storage_access_key = 'foobar'
      subject.instance.storage_access_key.must_equal 'foobar'
    end
  end
end
