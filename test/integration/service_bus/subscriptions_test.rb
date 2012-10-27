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

describe "ServiceBus Subscriptions" do
	subject { Azure::ServiceBus::ServiceBus.new }
	after { ServiceBusTopicNameHelper.clean }
	let(:topic){ ServiceBusTopicNameHelper.name }
	let(:subscription) { "mySubscription" }

	before { subject.create_topic topic }

  it "should be able to create a new subscription" do
    result = subject.create_subscription topic, subscription
    result.must_be :kind_of?, Azure::ServiceBus::Subscription
    result.name.must_equal subscription
  end

  describe "when a subscription exists" do
  	before { subject.create_subscription topic, subscription }
	  it "should be able to delete the subscription" do
	    subject.delete_subscription topic, subscription
	  end

	  it "should be able to get the subscription" do
		  result = subject.get_subscription topic, subscription
	    result.must_be :kind_of?, Azure::ServiceBus::Subscription
	    result.name.must_equal subscription
	  end

	  it "should be able to list subscriptions" do
	  	result = subject.list_subscriptions topic
	  	subscription_found = false
	  	result.each { |s|
	  		subscription_found = true if s.name == subscription
	  	}
	  	assert subscription_found, "list_subscriptions didn't include the expected subscription"
	  end

	  describe "when there are messages" do
	  	let(:msg) { 
	  		m = Azure::ServiceBus::BrokeredMessage.new("some message body", {:prop1 => "val1"})
	  		m.to = "me"
	  		m.label = "my_label"
	  		m
	  	}
	  	before { 
		  	subject.send_topic_message topic, msg
	  	}

		  it "should be able to peek lock a message" do
		  	retrieved = subject.peek_lock_subscription_message topic, subscription

		  	retrieved.to.must_equal msg.to
		    retrieved.body.must_equal msg.body
		  	retrieved.label.must_equal msg.label

		    retrieved = subject.read_delete_subscription_message topic, subscription, 1
		    retrieved.must_be_nil
		  end
		  
		  it "should be able to read delete a message" do
		    retrieved = subject.read_delete_subscription_message topic, subscription

		    retrieved.must_be :kind_of?, Azure::ServiceBus::BrokeredMessage
		    retrieved.body.must_equal msg.body
		    retrieved.to.must_equal msg.to

		    # it should be deleted
		    retrieved = subject.read_delete_subscription_message topic, subscription, 1
		    retrieved.must_be_nil
		  end

		  it "should be able to unlock a message" do
		    retrieved = subject.peek_lock_subscription_message topic, subscription, 1
		    retrieved.body.must_equal msg.body

		    # There shouldn't be an available message in the queue
		    retrieved2 = subject.peek_lock_subscription_message topic, subscription, 1
		    retrieved2.must_be_nil

		    # Unlock the message
		    res = subject.unlock_subscription_message topic, subscription, retrieved.sequence_number, retrieved.lock_token
		    res.must_be_nil

		    # The message should be available once again
		    retrieved = subject.peek_lock_subscription_message topic, subscription, 1
		    retrieved.body.must_equal msg.body
		  end
		end

	  describe 'when there are multiple subscriptions' do
	  	let(:subscription1) { ServiceBusTopicNameHelper.name }
	  	let(:subscription2) { ServiceBusTopicNameHelper.name }

	  	before { 
	  		subject.create_subscription topic, subscription1
	  		subject.create_subscription topic, subscription2
	  	}

		  it "should be able to list subscriptions" do
		  	result = subject.list_subscriptions topic

		  	subscription_found = false
		  	subscription1_found = false
		  	subscription2_found = false
		  	
		  	result.each { |s|
		  		subscription_found = true if s.name == subscription
		  		subscription1_found = true if s.name == subscription1
		  		subscription2_found = true if s.name == subscription2
		  	}
		  	
		  	assert (subscription_found and subscription1_found and subscription2_found), "list_subscriptions didn't include the expected subscriptions"
		  end

      it "should be able to use $skip token" do
        result = subject.list_subscriptions topic
        result2 = subject.list_subscriptions topic, 1
        result2.length.must_equal result.length - 1
        result2[0].id.must_equal result[1].id
      end
      
      it "should be able to use $top token" do
        result = subject.list_subscriptions topic
        result.length.wont_equal 1

        result2 = subject.list_subscriptions topic, nil, 1
        result2.length.must_equal 1
      end

      it "should be able to use $skip and $top token together" do
        result = subject.list_subscriptions topic
        result2 = subject.list_subscriptions topic, 1, 1
        result2.length.must_equal 1
        result2[0].id.must_equal result[1].id
      end
		end
	end
end
