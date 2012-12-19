#-------------------------------------------------------------------------
# Copyright (c) Microsoft. All rights reserved.
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

describe "ServiceBus Topics" do
  subject { Azure::ServiceBus::ServiceBus.new }
  after { ServiceBusTopicNameHelper.clean }
  let(:topic){ ServiceBusTopicNameHelper.name }

  it "should be able to create a new topic" do
    result = subject.create_topic topic
    result.must_be :kind_of?, Azure::ServiceBus::Topic
    result.name.must_equal topic
  end

  describe "when a topic exists" do
    before { subject.create_topic topic }

    it "should be able to delete the topic" do
      subject.delete_topic topic
    end

    it "should be able to get the topic" do
      result = subject.get_topic topic
      result.must_be :kind_of?, Azure::ServiceBus::Topic
      result.name.must_equal topic
    end

    it "should be able to list topics" do
      result = subject.list_topics
      topic_found = false
      result.each { |t|
        topic_found = true if t.name == topic
      }
      assert topic_found, "list_topics didn't include the expected topic"
    end

    it "should be able to send the topic a message" do
      message = Azure::ServiceBus::BrokeredMessage.new("some text", {:prop1 => "val1"}) do |m|
        m.to = "me"
        m.label = 'my_label'
      end
      result = subject.send_topic_message topic, message
      result.must_be_nil
    end

    describe 'when there are multiple topics' do
      let(:topic1) { ServiceBusTopicNameHelper.name }
      let(:topic2) { ServiceBusTopicNameHelper.name }

      before { 
        subject.create_topic topic1
        subject.create_topic topic2
      }

      it "should be able to list topics" do
        result = subject.list_topics
        topic_found = false
        topic1_found = false
        topic2_found = false
        result.each { |t|
          topic_found = true if t.name == topic
          topic1_found = true if t.name == topic1
          topic2_found = true if t.name == topic2
        }
        assert (topic_found and topic1_found and topic2_found), "list_topics didn't include the expected topic"
      end

      it "should be able to use $skip token with list_topics" do
        result = subject.list_topics
        result2 = subject.list_topics({ :skip => 1 })
        result2.length.must_equal result.length - 1
        result2[0].id.must_equal result[1].id
      end
      
      it "should be able to use $top token with list_topics" do
        result = subject.list_topics
        result.length.wont_equal 1

        result2 = subject.list_topics({ :top => 1 })
        result2.length.must_equal 1
      end

      it "should be able to use $skip and $top token together with list_topics" do
        result = subject.list_topics
        result2 = subject.list_topics({ :skip => 1, :top => 1 })
        result2.length.must_equal 1
        result2[0].id.must_equal result[1].id
      end
    end
  end
end
