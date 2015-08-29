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
  
  describe '#create_message' do
    let(:queue_name){ QueueNameHelper.name }
    let(:message_text) { "message text random value: #{QueueNameHelper.name}" }
    before { subject.create_queue queue_name }
    after { QueueNameHelper.clean }

    it "creates a message in the specified queue and returns nil on success" do
      result = subject.create_message(queue_name, message_text)
      result.must_be_nil
      
      result = subject.peek_messages queue_name
      result.wont_be_nil
      result.wont_be_empty
      result.length.must_equal 1
      result[0].message_text.must_equal message_text
    end

    describe "when the options hash is used" do
      let(:visibility_timeout) { 3 }
      let(:message_ttl) { 600 }

      it "the :visibility_timeout option causes the message to be invisible for a period of time" do
        result = subject.create_message(queue_name, message_text, { :visibility_timeout=> visibility_timeout })
        result.must_be_nil
        
        result = subject.peek_messages queue_name
        result.length.must_equal 0
        sleep(visibility_timeout)

        result = subject.peek_messages queue_name
        result.length.must_equal 1
        result.wont_be_empty
        result[0].message_text.must_equal message_text
      end

      it "the :message_ttl option modifies the expiration_date of the message" do
        result = subject.create_message(queue_name, message_text, { :message_ttl=> message_ttl })
        result.must_be_nil
        
        result = subject.peek_messages queue_name
        result.wont_be_nil
        result.wont_be_empty
        message = result[0]
        message.message_text.must_equal message_text
        Time.parse(message.expiration_time).to_i.must_equal Time.parse(message.insertion_time).to_i + message_ttl
      end
    end
    
    it "errors on an non-existent queue" do
      assert_raises(Azure::Core::Http::HTTPError) do
        subject.create_message QueueNameHelper.name, message_text
      end
    end
  end
end
