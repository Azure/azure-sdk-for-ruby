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
require 'test_helper'

describe Azure do

  describe 'default configuration for the azure module' do
    subject { Azure }

    it 'should provide itself as the base configuration through the config method' do
      subject.config.must_equal Azure
    end

    it 'should provide access to the configuration through the config method' do
      subject.config.management_endpoint.must_equal Azure.management_endpoint
    end

    it 'should start with the default management endpoint' do
      Azure.management_endpoint.must_equal Azure::Default.management_endpoint
    end

    describe 'configuration of management certificates with files and strings' do
      describe 'using a pfx' do
        describe 'loaded as a string' do

        end
        describe 'loaded as a file' do

        end
      end
      describe 'using a pem' do
        describe 'loaded as a string' do

        end

        describe 'loaded as a file' do

        end
      end
    end
  end

end