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

describe Azure::Client do

  describe 'default configuration for a client instance' do
    subject { Azure.client }

    Azure::Configurable.keys.each do |key|
      it "should have the same value as its parent for #{key}" do
        subject.send(key.to_sym).must_equal Azure.send(key.to_sym)
      end

      unless key == :management_certificate ## TODO: generate another pem and pfx for file / string tests then remove this
        it "should have a different value as its parent after changing the client for #{key}" do
          subject.send("#{key}=".to_sym, 'blah')
          subject.send(key.to_sym).wont_equal Azure.send(key.to_sym)
        end
      end
    end

  end

end