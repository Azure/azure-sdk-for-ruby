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
require "integration/test_helper"
require "azure/queue/queue_service"

describe Azure::Queue::QueueService do
  subject { Azure::Queue::QueueService.new }
  
  describe '#clear_messages' do
    let(:queue_name){ QueueNameHelper.name }
    before { 
      subject.create_queue queue_name 
      subject.create_message queue_name, "some random text " + QueueNameHelper.name
    }
    after { QueueNameHelper.clean }

    it "clears the queue" do
      result = subject.clear_messages queue_name
      result.must_be_nil
      result = subject.peek_messages queue_name
      result.must_be_empty
    end

    it "errors on an non-existent queue" do
      assert_raises(Azure::Core::Http::HTTPError) do
        subject.clear_messages QueueNameHelper.name
      end
    end
  end
end
