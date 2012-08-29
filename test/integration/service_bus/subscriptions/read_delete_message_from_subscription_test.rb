#-------------------------------------------------------------------------
# Copyright 2012 Microsoft Corporation
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
require "azure/service_bus/topics"
require "azure/service_bus/subscriptions"
require "azure/service_bus/brokered_message"

describe "Read and Delete a Message from a Subscription" do

  after do
    ServiceBusTopicNameHelper.clean
  end

  before do
    @topic = Azure::ServiceBus::Topics.create(ServiceBusTopicNameHelper.name)
    @subscription = @topic.subscriptions.create("subscription-name")
    @message = Azure::ServiceBus::BrokeredMessage.new("some text", "prop1" => "val1") do |m|
      m.to = "yo"
      m.label = 'my_label'
    end
  end

  it "should be able to read-delete a message from a subscription" do
    Azure::ServiceBus::Topics.send_message_to_topic(@topic, @message)

    retrieved = Azure::ServiceBus::Subscriptions.read_delete_message_from_subscription(@subscription)

    retrieved.must_be :kind_of?, Azure::ServiceBus::BrokeredMessage
    assert retrieved.valid?
    retrieved.body.must_equal @message.body
    retrieved.to.must_equal @message.to

    # It should be deleted
    retrieved2 = Azure::ServiceBus::Subscriptions.peek_lock_message_from_subscription(@subscription, :timeout => 2)
    refute retrieved2.valid?
    retrieved2.error.message.must_equal "No messages available within the specified timeout period."
  end
end
