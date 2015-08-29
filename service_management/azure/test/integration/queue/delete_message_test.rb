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
  
  describe '#delete_message' do
    let(:queue_name){ QueueNameHelper.name }
    before { 
      subject.create_queue queue_name 
      subject.create_message queue_name, "some random text " + QueueNameHelper.name
    }
    after { QueueNameHelper.clean }

    it "deletes a message" do
      messages = subject.list_messages queue_name, 500
      messages.length.must_equal 1
      message = messages.first

      result = subject.delete_message queue_name, message.id, message.pop_receipt
      result.must_be_nil
      
      result = subject.peek_messages queue_name
      result.must_be_empty
    end

    it "errors on an non-existent queue" do
      assert_raises(Azure::Core::Http::HTTPError) do
        subject.delete_message QueueNameHelper.name, "message.id", "message.pop_receipt"
      end
    end

    it "errors on an non-existent message id" do
      messages = subject.list_messages queue_name, 500
      messages.length.must_equal 1
      message = messages.first

      assert_raises(Azure::Core::Http::HTTPError) do
        subject.delete_message queue_name, "bad.message.id", message.pop_receipt
      end
    end

    it "errors on an non-existent pop_receipt" do
      messages = subject.list_messages queue_name, 500
      messages.length.must_equal 1
      message = messages.first

      assert_raises(Azure::Core::Http::HTTPError) do
        subject.delete_message queue_name, message.id, "bad.message.pop_receipt"
      end
    end
  end
end
