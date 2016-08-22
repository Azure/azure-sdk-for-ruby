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
require 'integration/test_helper'

describe Azure::ServiceBus::ServiceBusService do
  subject { Azure::ServiceBus::ServiceBusService.new }
  let(:queue_name) { 'test-queue' }
  let(:name_alternative) { 'test-queue-alternative' }
  let(:description) {{
      :default_message_time_to_live => 'P10675199DT2H48M5.4775807S',
      :duplicate_detection_history_time_window => 'PT10M',
      :dead_lettering_on_message_expiration => "false",
      :lock_duration => 'PT30S',
      :max_delivery_count => "10",
      :max_size_in_megabytes => "1",
      :requires_duplicate_detection => "true",
      :requires_session => "false"
  }}
  let(:description_alternative) {{
      :lock_duration => 'PT30S',
      :max_size_in_megabytes => 2048,
      :requires_duplicate_detection => true,
      :requires_session => true,
      :default_message_time_to_live => 'PT30M',
      :dead_lettering_on_message_expiration => true,
      :duplicate_detection_history_time_window => 'PT20M',
      :max_delivery_count => 20,
      :enable_batched_operations => true
  }}

  describe 'Service bus queue' do
    before do
      VCR.insert_cassette "service_bus/#{name}"
    end

    after do
      response = subject.delete_queue queue_name
      response.must_equal nil
      VCR.eject_cassette
    end

    it "should create a new queue from a string" do
      queue = subject.create_queue queue_name
      queue.must_be_kind_of Azure::ServiceBus::Queue
      queue.name.must_equal queue_name
    end

    it "should create a new queue from a Queue" do
      queue = subject.create_queue Azure::ServiceBus::Queue.new(queue_name)
      queue.must_be_kind_of Azure::ServiceBus::Queue
      queue.name.must_equal queue_name
    end
  end

  describe 'Service bus queue' do
    before do
      VCR.insert_cassette "service_bus/#{name}"
    end

    after do
      response = subject.delete_queue name_alternative
      response.must_equal nil
      VCR.eject_cassette
    end
    it "should create a new queue from a string and description hash" do
      queue = subject.create_queue name_alternative, description_alternative

      queue.must_be_kind_of Azure::ServiceBus::Queue
      queue.name.must_equal name_alternative
      queue.lock_duration.must_equal 30.0
      queue.max_size_in_megabytes.must_equal description_alternative[:max_size_in_megabytes]
      queue.requires_duplicate_detection.must_equal description_alternative[:requires_duplicate_detection]
      queue.requires_session.must_equal description_alternative[:requires_session]
      queue.default_message_time_to_live.must_equal 1800.0
      queue.dead_lettering_on_message_expiration.must_equal description_alternative[:dead_lettering_on_message_expiration]
      queue.duplicate_detection_history_time_window.must_equal 1200.0
      queue.max_delivery_count.must_equal description_alternative[:max_delivery_count]
      queue.enable_batched_operations.must_equal description_alternative[:enable_batched_operations]
    end

    it "should create a new queue from a Queue with a description hash" do
      queue = subject.create_queue Azure::ServiceBus::Queue.new(name_alternative, description_alternative)

      queue.must_be_kind_of Azure::ServiceBus::Queue
      queue.name.must_equal name_alternative
      queue.lock_duration.must_equal 30.0
      queue.max_size_in_megabytes.must_equal description_alternative[:max_size_in_megabytes]
      queue.requires_duplicate_detection.must_equal description_alternative[:requires_duplicate_detection]
      queue.requires_session.must_equal description_alternative[:requires_session]
      queue.default_message_time_to_live.must_equal 1800.0
      queue.dead_lettering_on_message_expiration.must_equal description_alternative[:dead_lettering_on_message_expiration]
      queue.duplicate_detection_history_time_window.must_equal 1200.0
      queue.max_delivery_count.must_equal description_alternative[:max_delivery_count]
      queue.enable_batched_operations.must_equal description_alternative[:enable_batched_operations]
    end
  end

  describe 'when a queue exists' do
    before do
      VCR.insert_cassette "service_bus/#{name}"
      subject.create_queue queue_name
    end

    after do
      response = subject.delete_queue queue_name
      response.must_equal nil
      VCR.eject_cassette
    end

    it "should get a queue by name" do
      result = subject.get_queue queue_name

      result.must_be_kind_of Azure::ServiceBus::Queue
      result.name.must_equal queue_name
    end
  end

  describe 'when a queue does not exists' do
    before do
      VCR.insert_cassette "service_bus/#{name}"
    end

    after do
      VCR.eject_cassette
    end

    it "should raise exception if trying to delete queue" do
      assert_raises(Azure::Core::Http::HTTPError) do
        subject.delete_queue 'unknown-queue'
      end
    end

    it "should throw if trying to get queue" do
      assert_raises(Azure::Core::Http::HTTPError) do
        subject.get_queue 'unknown-queue'
      end
    end
  end

  describe 'when there are multiple queues' do
    let(:name1) { 'test-queue1' }
    let(:name2) { 'test-queue2' }
    before do
      VCR.insert_cassette "service_bus/#{name}"
      subject.create_queue queue_name
      subject.create_queue name1
      subject.create_queue name2
    end

    after do
      response = subject.delete_queue queue_name
      response.must_equal nil
      response1 = subject.delete_queue name1
      response1.must_equal nil
      response2 = subject.delete_queue name2
      response2.must_equal nil
      VCR.eject_cassette
    end

    it "should get a list of queues" do
      result = subject.list_queues

      result.must_be :kind_of?, Array
      q_found = false
      q1_found = false
      q2_found = false
      result.each { |q|
        q_found = true if q.name == queue_name
        q1_found = true if q.name == name1
        q2_found = true if q.name == name2
      }
      assert (q_found and q1_found and q2_found), "list_queues did not return expected queues"
    end

    it "should be able to use $skip token with list_queues" do
      result = subject.list_queues
      result2 = subject.list_queues({ :skip => 1 })
      result2.length.must_equal result.length - 1
      result2[0].id.must_equal result[1].id
    end

    it "should be able to use $top token with list_queues" do
      result = subject.list_queues
      result.length.wont_equal 1

      result2 = subject.list_queues({ :top => 1 })
      result2.length.must_equal 1
    end

    it "should be able to use $skip and $top token together with list_queues" do
      result = subject.list_queues
      result2 = subject.list_queues({ :skip => 1, :top => 1 })
      result2.length.must_equal 1
      result2[0].id.must_equal result[1].id
    end

    it "should be able to send a message to a queue" do
      msg = Azure::ServiceBus::BrokeredMessage.new("some text") do |m|
        m.to = "yo"
      end
      res = subject.send_queue_message queue_name, msg
      res.must_be_nil
    end
  end

  describe "when using SAS" do
    before do
      VCR.insert_cassette "service_bus/#{name}"
      sb_host = "https://#{Azure.sb_namespace}.servicebus.windows.net"
      signer = Azure::ServiceBus::Auth::SharedAccessSigner.new
      @servicebus = Azure::ServiceBus::ServiceBusService.new(sb_host, { signer: signer })
      @servicebus.create_queue queue_name
    end

    after do
      response = @servicebus.delete_queue queue_name
      response.must_equal nil
      VCR.eject_cassette
    end

    it "should be able to send a message with SAS to a queue" do
      msg = Azure::ServiceBus::BrokeredMessage.new("some text") do |m|
        m.to = "yo"
      end
      res = @servicebus.send_queue_message(queue_name, msg)
      res.must_be_nil
      q = @servicebus.get_queue(queue_name)
      q.message_count.must_equal 1
    end
  end

  describe "when the queue has messages" do
    let(:message_content) { 'messagecontent' }
    let(:to) { 'yo' }
    let(:label) { 'my_label' }
    let(:properties) {{
        "CustomDoubleProperty" => 3.141592,
        "CustomInt32Property" => 37,
        "CustomInt64Property" => 2**32,
        "CustomInt64NegProperty" => -(2**32),
        "CustomStringProperty" => "CustomPropertyValue",
        "CustomDateProperty" => "Tue, 05 Apr 2016 23:05:01 GMT",
        "CustomTrueProperty" => true,
        "CustomFalseProperty" => false,
        "CustomNilProperty" => nil,
        "CustomJSONProperty" => "testingpa\n\"{}\\rtition"
    }}
    let(:msg) { m = Azure::ServiceBus::BrokeredMessage.new(message_content, properties); m.to = 'me'; m }
    before do
      VCR.insert_cassette "service_bus/#{name}"
      subject.create_queue queue_name
      subject.send_queue_message queue_name, msg
    end

    after do
      response = subject.delete_queue queue_name
      response.must_equal nil
      VCR.eject_cassette
    end

    it "should be able to peek a message from a queue" do
      retrieved = subject.peek_lock_queue_message queue_name
      retrieved.must_be :kind_of?, Azure::ServiceBus::BrokeredMessage

      retrieved.body.must_equal msg.body
      retrieved.to.must_equal msg.to
      retrieved.label.must_equal msg.label

      properties.each do |k,v|
        unless properties[k].class == Time
          retrieved.properties[k.downcase].must_equal properties[k]
        else
          # Time comes back as string as there is no good way to distinguish
          retrieved.properties[k.downcase].to_s.must_equal properties[k].httpdate
        end
      end

      refute retrieved.lock_token.nil?
      refute retrieved.sequence_number.nil?
    end

    it "should be able to read-delete a message from a queue" do
      retrieved = subject.read_delete_queue_message queue_name

      retrieved.must_be :kind_of?, Azure::ServiceBus::BrokeredMessage
      retrieved.body.must_equal msg.body
      retrieved.to.must_equal msg.to

      # it should be deleted
      retrieved = subject.read_delete_queue_message queue_name, { :timeout => 2 }
      retrieved.must_be_nil
    end

    it "should be able to unlock a message from a queue" do
      retrieved = subject.peek_lock_queue_message queue_name, { :timeout => 2 }

      # There shouldn't be an available message in the queue
      retrieved2 = subject.peek_lock_queue_message queue_name, { :timeout => 2 }
      retrieved2.must_be_nil

      # Unlock the message
      res = subject.unlock_queue_message retrieved
      res.must_be_nil

      # The message should be available once again
      retrieved = subject.peek_lock_queue_message queue_name, { :timeout => 2 }
      retrieved.body.must_equal msg.body
    end

    it "should be able to delete a message from a queue" do
      retrieved = subject.peek_lock_queue_message queue_name
      retrieved.body.must_equal msg.body

      subject.delete_queue_message retrieved

      # it should be deleted
      retrieved = subject.peek_lock_queue_message queue_name, { :timeout => 2 }
      assert_nil retrieved
    end

    it "should be able to read a message from a queue" do
      retrieved = subject.receive_queue_message queue_name

      retrieved.must_be :kind_of?, Azure::ServiceBus::BrokeredMessage
      retrieved.body.must_equal msg.body
      retrieved.to.must_equal msg.to
    end
  end
end
