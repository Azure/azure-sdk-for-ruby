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
  let(:subscription) { 'mySubscription' }
  let(:subscription_alternative) { 'mySubscription' }
  let(:description_alternative) {{
      :lock_duration => 'PT30S',
      :requires_session => true,
      :default_message_time_to_live => 'PT30M',
      :dead_lettering_on_message_expiration => true,
      :dead_lettering_on_filter_evaluation_exceptions => true,
      :max_delivery_count => 20,
      :enable_batched_operations => true
  }}

  describe 'Service bus subscription' do
    before do
      VCR.insert_cassette "service_bus/#{name}"
      subject.create_topic topic
    end

    after do
      subject.delete_topic topic
      VCR.eject_cassette
    end

    it 'should set description value to false' do
      options = { :requires_session => false }
      result = Azure::ServiceBus::Subscription.new(subscription, options)
      result.requires_session.must_equal false
    end

    it 'should create a new subscription' do
      result = subject.create_subscription topic, subscription
      result.must_be :kind_of?, Azure::ServiceBus::Subscription
      result.name.must_equal subscription
    end

    it 'should create a new subscription from a string and description hash' do
      result = subject.create_subscription topic, subscription_alternative, description_alternative
      result.must_be :kind_of?, Azure::ServiceBus::Subscription
      result.name.must_equal subscription_alternative
      result.lock_duration.must_equal 30.0
      result.requires_session.must_equal description_alternative[:requires_session]
      result.default_message_time_to_live.must_equal 1800.0
      result.dead_lettering_on_message_expiration.must_equal description_alternative[:dead_lettering_on_message_expiration]
      result.dead_lettering_on_filter_evaluation_exceptions.must_equal description_alternative[:dead_lettering_on_filter_evaluation_exceptions]
      result.max_delivery_count.must_equal description_alternative[:max_delivery_count]
      result.enable_batched_operations.must_equal description_alternative[:enable_batched_operations]
    end

    it 'should create a new subscription with object' do
      subscriptionObject = Azure::ServiceBus::Subscription.new 'my_other_sub'
      subscriptionObject.topic = topic
      subscriptionObject.max_delivery_count = 3

      result = subject.create_subscription subscriptionObject
      result.must_be :kind_of?, Azure::ServiceBus::Subscription
      result.name.must_equal subscriptionObject.name
      result.max_delivery_count.must_equal subscriptionObject.max_delivery_count

      subject.delete_subscription result
    end
  end

  describe 'when a subscription exists' do
    before do
      VCR.insert_cassette "service_bus/#{name}"
      subject.create_topic topic
      subject.create_subscription topic, subscription
    end

    after do
      subject.delete_topic topic
      VCR.eject_cassette
    end

    it 'should get the subscription' do
      result = subject.get_subscription topic, subscription
      result.must_be :kind_of?, Azure::ServiceBus::Subscription
      result.name.must_equal subscription
    end

    it 'should list subscriptions' do
      result = subject.list_subscriptions topic
      subscription_found = false
      result.each do |s|
        subscription_found = true if s.name == subscription
      end
      assert subscription_found, "list_subscriptions didn't include the expected subscription"
    end

    it 'should delete the subscription' do
      subject.delete_subscription topic, subscription
    end
  end

  describe 'when there are messages' do
    let(:msg) {
      message = Azure::ServiceBus::BrokeredMessage.new('some message body', {:prop1 => 'val1'})
      message.to = 'me'
      message.label = 'my_label'
      message
    }
    before do
      VCR.insert_cassette "service_bus/#{name}"
      subject.create_topic topic
      subject.create_subscription topic, subscription
      subject.send_topic_message topic, msg
    end

    after do
      subject.delete_topic topic
      VCR.eject_cassette
    end

    it 'should peek lock a message' do
      retrieved = subject.peek_lock_subscription_message topic, subscription

      retrieved.to.must_equal msg.to
      retrieved.body.must_equal msg.body
      retrieved.label.must_equal msg.label

      retrieved = subject.read_delete_subscription_message topic, subscription, { :timeout => 1 }
      retrieved.must_be_nil
    end

    it 'should read delete a message' do
      retrieved = subject.read_delete_subscription_message topic, subscription

      retrieved.must_be :kind_of?, Azure::ServiceBus::BrokeredMessage
      retrieved.body.must_equal msg.body
      retrieved.to.must_equal msg.to

      # it should be deleted
      retrieved = subject.read_delete_subscription_message topic, subscription, { :timeout => 1 }
      retrieved.must_be_nil
    end

    it 'should unlock a message' do
      retrieved = subject.peek_lock_subscription_message topic, subscription, { :timeout => 1 }
      retrieved.body.must_equal msg.body

      # There shouldn't be an available message in the queue
      retrieved2 = subject.peek_lock_subscription_message topic, subscription, { :timeout => 1 }
      retrieved2.must_be_nil

      # Unlock the message
      res = subject.unlock_subscription_message retrieved
      res.must_be_nil

      # The message should be available once again
      retrieved = subject.peek_lock_subscription_message topic, subscription, { :timeout => 1 }
      retrieved.body.must_equal msg.body
    end

    it 'should read a message from a subscription' do
      subject.send_topic_message topic, msg
      retrieved = subject.receive_subscription_message topic, subscription

      retrieved.to.must_equal msg.to
      retrieved.body.must_equal msg.body
      retrieved.label.must_equal msg.label
    end
  end

  describe 'when there are multiple subscriptions' do
    let(:subscription1) { 'test-subscription1' }
    let(:subscription2) { 'test-subscription2' }

    before do
      VCR.insert_cassette "service_bus/#{name}"
      subject.create_topic topic
      subject.create_subscription topic, subscription
      subject.create_subscription topic, subscription1
      subject.create_subscription topic, subscription2
    end

    after do
      subject.delete_topic topic
      VCR.eject_cassette
    end

    it 'should list subscriptions' do
      result = subject.list_subscriptions topic

      subscription_found = false
      subscription1_found = false
      subscription2_found = false

      result.each do |s|
        subscription_found = true if s.name == subscription
        subscription1_found = true if s.name == subscription1
        subscription2_found = true if s.name == subscription2
      end

      assert (subscription_found and subscription1_found and subscription2_found), "list_subscriptions didn't include the expected subscriptions"
    end

    it 'should be able to use $skip token' do
      result = subject.list_subscriptions topic
      result2 = subject.list_subscriptions topic, { :skip => 1 }
      result2.length.must_equal result.length - 1
      result2.continuation_token.must_be_nil
      result2[0].id.must_equal result[1].id
    end

    it 'should be able to use $top token' do
      result = subject.list_subscriptions topic
      result.length.wont_equal 1
      result.continuation_token.must_be_nil

      result2 = subject.list_subscriptions topic, { :top => 1 }
      result2.continuation_token.wont_be_nil
      result2.continuation_token[:skip].wont_be_nil
      result2.continuation_token[:top].wont_be_nil
      result2.length.must_equal 1
    end

    it 'should be able to use $skip and $top token together' do
      result = subject.list_subscriptions topic
      result2 = subject.list_subscriptions topic, { :skip => 1, :top => 1 }
      result2.length.must_equal 1
      result2[0].id.must_equal result[1].id
    end
  end
end
