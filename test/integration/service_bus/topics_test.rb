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
  let(:topic){ 'test-topic' }
  let(:description) {{
    :default_message_time_to_live => 'PT30M',
    :maximum_number_of_subscriptions => 3,
    :max_size_in_megabytes => 2048,
    :requires_duplicate_detection => true,
    :dead_lettering_on_filter_evaluation_exceptions => true,
    :duplicate_detection_history_time_window => 'PT20M',
    :enable_batched_operations => true,
  }}

  describe 'Service bus topic' do
    before do
      VCR.insert_cassette "service_bus/#{name}"
    end

    after do
      subject.delete_topic topic
      VCR.eject_cassette
    end

    it 'should create a new topic' do
      result = subject.create_topic topic, { :max_size_in_megabytes => 2048 }
      result.must_be :kind_of?, Azure::ServiceBus::Topic
      result.name.must_equal topic
      result.max_size_in_megabytes.must_equal 2048
    end

    it 'should create a new topic from a string and description hash' do
      result = subject.create_topic topic, description
      result.must_be :kind_of?, Azure::ServiceBus::Topic
      result.name.must_equal topic

      result.default_message_time_to_live.must_equal 1800.0
      result.maximum_number_of_subscriptions.must_equal description[:maximum_number_of_subscriptions]
      result.max_size_in_megabytes.must_equal description[:max_size_in_megabytes]
      result.requires_duplicate_detection.must_equal description[:requires_duplicate_detection]
      result.dead_lettering_on_filter_evaluation_exceptions.must_equal description[:dead_lettering_on_filter_evaluation_exceptions]
      result.duplicate_detection_history_time_window.must_equal 1200.0
      result.enable_batched_operations.must_equal description[:enable_batched_operations]
    end
  end

  describe 'when a topic exists' do
    before do
      VCR.insert_cassette "service_bus/#{name}"
      subject.create_topic topic
    end

    after do
      subject.delete_topic topic
      VCR.eject_cassette
    end

    it 'should be able to get the topic' do
      result = subject.get_topic topic
      result.must_be :kind_of?, Azure::ServiceBus::Topic
      result.name.must_equal topic
    end

    it 'should be able to list topics' do
      result = subject.list_topics
      topic_found = false
      result.each do |t|
        topic_found = true if t.name == topic
      end
      assert topic_found, "list_topics didn't include the expected topic"
    end

    it 'should be able to send the topic a message' do
      message = Azure::ServiceBus::BrokeredMessage.new('some text', {:prop1 => 'val1'}) do |m|
        m.to = 'me'
        m.label = 'my_label'
      end
      result = subject.send_topic_message topic, message
      result.must_be_nil
    end
  end

  describe 'when topics exists' do
    let(:topic) { 'test-topic0' }
    let(:topic1) { 'test-topic1' }
    let(:topic2) { 'test-topic2' }
    before do
      VCR.insert_cassette "service_bus/#{name}"
      subject.create_topic topic
      subject.create_topic topic1
      subject.create_topic topic2
    end

    after do
      subject.delete_topic topic
      subject.delete_topic topic1
      subject.delete_topic topic2
      VCR.eject_cassette
    end

    it 'should be able to list topics' do
      result = subject.list_topics
      topic_found = false
      topic1_found = false
      topic2_found = false
      result.each do |t|
        topic_found = true if t.name == topic
        topic1_found = true if t.name == topic1
        topic2_found = true if t.name == topic2
      end
      assert (topic_found and topic1_found and topic2_found), "list_topics didn't include the expected topic"
    end

    it 'should be able to use $skip token with list_topics' do
      result = subject.list_topics
      result2 = subject.list_topics({:skip => 1})
      result2.length.must_equal result.length - 1
      result2[0].id.must_equal result[1].id
    end

    it 'should be able to use $top token with list_topics' do
      result = subject.list_topics
      result.length.wont_equal 1

      result2 = subject.list_topics({:top => 1})
      result2.length.must_equal 1
    end

    it 'should be able to use $skip and $top token together with list_topics' do
      result = subject.list_topics
      result2 = subject.list_topics({:skip => 1, :top => 1})
      result2.length.must_equal 1
      result2[0].id.must_equal result[1].id
    end
  end
end
