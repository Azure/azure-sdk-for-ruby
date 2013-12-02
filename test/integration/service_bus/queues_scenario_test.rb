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

describe "ServiceBus Queues Scenario" do
  let(:queue_name) { ServiceBusQueueNameHelper.name }

  subject { Azure::ServiceBus::ServiceBusService.new }
  after { ServiceBusQueueNameHelper.clean }

  def setup_queue()
    queues = subject.list_queues({ :skip => 20, :top => 2 })
    queues.each { |q|
      ScenarioHelper.out "Queue name is " + q.name
    }

    ScenarioHelper.out "checking if queue already exists " + queue_name
    begin
      subject.get_queue queue_name
      ScenarioHelper.out "Queue already exists deleting it"
      subject.delete_queue queue_name
    rescue Azure::Core::Http::HTTPError => error
      ScenarioHelper.out "could not get an existing queue (" + error.type + "), proceeding..."
      error.status_code.must_equal 404
      error.type.must_equal "ResourceNotFound"
    end

    q = Azure::ServiceBus::Queue.new(queue_name, {
      :max_size_in_megabytes => 2048,
      :requires_duplicate_detection => true,
      :enable_batched_operations => true,
      :max_delivery_count => 13
    })

    ScenarioHelper.out 'Creating queue ' + queue_name
    q2 = subject.create_queue q
    q2.max_size_in_megabytes.must_equal q.max_size_in_megabytes
    q2.requires_duplicate_detection.must_equal q.requires_duplicate_detection
    q2.enable_batched_operations.must_equal true
    q2.max_delivery_count.must_equal 13

    subject.get_queue queue_name
  end

  def send_messages()
    expected_messages = []
    expected_messages[0] = ScenarioHelper.create_issue_message '1', 'First  message information', 'label1'
    expected_messages[1] = ScenarioHelper.create_issue_message '2', 'Second message information', 'label2'
    expected_messages[2] = ScenarioHelper.create_issue_message '3', 'Third  message information', 'label3'
    expected_messages[3] = ScenarioHelper.create_issue_message '4', 'Fourth message information', 'label4'
    expected_messages.each { |message|
      success = false
      retry_counter = 0
      while !success
        begin
          subject.send_queue_message queue_name, message
          success = true
        rescue Azure::Core::Http::HTTPError => error
          ScenarioHelper.out "got error: " + error
          retry_counter = retry_counter + 1
          if retry_counter > 5
            throw error
          end
        end
      end
      ScenarioHelper.out 'Message sent with id: ' + message.message_id + ' Body of $message ' + message.body
    }
    expected_messages
  end

  def get_message_from_queue(expected_messages, exp_custom_props = nil)
    expected_count = expected_messages.length
    if exp_custom_props == nil
      exp_custom_props = []
      for i in 1..expected_count
        exp_custom_props[i-1] = nil
      end
    end

    ScenarioHelper.out '=============================================='
    ScenarioHelper.out 'Getting messages from ' +
            'queue ' + queue_name +
            ', expecting ' + expected_count.to_s + ' messages'

    message_count = (subject.get_queue queue_name).message_count
    ScenarioHelper.out 'Before getting any messages, Message count: ' + message_count.to_s
    message_count.must_equal expected_count

    # Peek the first message
    message1 = subject.peek_lock_queue_message queue_name, { :timeout => 20 }
    ScenarioHelper.compare_messages expected_messages[0], message1, exp_custom_props[0]

    message_count = (subject.get_queue queue_name).message_count
    ScenarioHelper.out 'Peek locked first message, Message count: ' + message_count.to_s
    message_count.must_equal expected_count # Peek locked first message, count should not change

    # Get the second message
    message2 = subject.read_delete_queue_message queue_name,  { :timeout => 5 }
    expected_count = expected_count - 1
    ScenarioHelper.compare_messages expected_messages[1], message2, exp_custom_props[1]

    message_count = (subject.get_queue queue_name).message_count
    ScenarioHelper.out 'RECEIVE_AND_DELETE second message, Message count: ' + message_count.to_s
    message_count.must_equal expected_count # RECEIVE_AND_DELETE second message, count decrements

    # Unlock and get the first message
    subject.unlock_queue_message message1

    message_count = (subject.get_queue queue_name).message_count
    ScenarioHelper.out 'Unlocked first message, Message count: ' + message_count.to_s
    message_count.must_equal expected_count # Unlocked first message, count stays the same

    # Get the first unlocked message
    message1again = subject.read_delete_queue_message queue_name
    expected_count = expected_count - 1
    # Should be the original, now that it is unlocked
    ScenarioHelper.compare_messages expected_messages[0], message1again, exp_custom_props[0]

    message_count = (subject.get_queue queue_name).message_count
    ScenarioHelper.out 'got first message again, Message count: ' + message_count.to_s
    message_count.must_equal expected_count # Got message one again (destructive), count should decrease

    # Negative test, make sure unlocked messages cannot be deleted.
    begin
      subject.delete_queue_message message1again
      flunk 'Deleting a RECEIVEANDDELETE messasge should fail'
    rescue Azure::Core::Http::HTTPError => error
      ScenarioHelper.out "As expected, could not delete a deleted message"
      error.status_code.must_equal 400
      error.type.must_equal "Unknown"
    end

    if expected_count > 0
      # Get the third
      message3 = subject.peek_lock_queue_message queue_name
      ScenarioHelper.compare_messages expected_messages[2], message3, exp_custom_props[2]

      message_count = (subject.get_queue queue_name).message_count
      ScenarioHelper.out 'Got third message, Message count: ' + message_count.to_s
      message_count.must_equal expected_count # Peeked third message, count should not change

      # Delete it
      subject.delete_queue_message message3.location
      expected_count = expected_count - 1

      message_count = (subject.get_queue queue_name).message_count
      ScenarioHelper.out 'Deleted third message, Message count: ' + message_count.to_s
      message_count.must_equal expected_count # Deleted third message, count decrements
    end

    if expected_count > 0
      # Get the fourth
      message4 = subject.read_delete_queue_message queue_name
      expected_count = expected_count - 1
      ScenarioHelper.compare_messages expected_messages[3], message4, exp_custom_props[3]

      message_count = (subject.get_queue queue_name).message_count
      ScenarioHelper.out 'Got fourth message, Message count: ' + message_count.to_s
      message_count.must_equal expected_count # Got fourth message, count decrements
    end

    # Get the rest of the messages
    message_id = 4
    while expected_count > 0 && message_count > 0
      message = subject.read_delete_queue_message queue_name
      expected_count = expected_count - 1
      ScenarioHelper.compare_messages expected_messages[message_id], message, exp_custom_props[message_id]

      message_count = (subject.get_queue queue_name).message_count
      ScenarioHelper.out 'Got message #' + message_id.to_s + ' message, Message count: ' + message_count.to_s
      message_count.must_equal expected_count
      message_id = message_id + 1
    end

    message_count = (subject.get_queue queue_name).message_count
    ScenarioHelper.out 'Got all messages, Message count: ' + message_count.to_s
    message_count.must_equal 0
  end

  it "should be able to upload many messages and read them back" do

    setup_queue

    messages = send_messages

    get_message_from_queue messages
  end
end
