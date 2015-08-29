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
  
  describe '#peek_messages' do
    let(:queue_name){ QueueNameHelper.name }
    let(:message_text) { "some random text " + QueueNameHelper.name}
    before { 
      subject.create_queue queue_name 
      subject.create_message queue_name, message_text
    }
    after { QueueNameHelper.clean }

    it "returns a message from the queue without marking it as invisible" do
      result = subject.peek_messages queue_name
      result.wont_be_nil
      result.wont_be_empty
      result.length.must_equal 1
      message = result[0]
      message.message_text.must_equal message_text

      # the same message is returned on another call, because it's still at the top of the queue
      result = subject.peek_messages queue_name
      result.wont_be_nil
      result.wont_be_empty
      result.length.must_equal 1
      result[0].id.must_equal message.id
    end

    it "returns multiple messages if passed the optional parameter" do
      msg_text2 = "some random text " + QueueNameHelper.name
      subject.create_message queue_name, msg_text2

      result = subject.peek_messages queue_name, { :number_of_messages => 2 }
      result.wont_be_nil
      result.wont_be_empty
      result.length.must_equal 2
      result[0].message_text.must_equal message_text
      result[1].message_text.must_equal msg_text2
      result[0].id.wont_equal result[1].id
    end
  end
end
