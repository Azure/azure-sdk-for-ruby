require "integration/test_helper"
require "azure/service_bus/topics"
require "azure/service_bus/subscriptions"
require "azure/service_bus/brokered_message"

describe "Delete a Message from a Subscription" do

  after do
    ServiceBusTopicNameHelper.clean
  end

  before do
    @topic = Azure::ServiceBus::Topics.create(ServiceBusTopicNameHelper.name)
    @subscription = @topic.subscriptions.create("subscription-name")
    @message = Azure::ServiceBus::BrokeredMessage.new("some text", "prop1" => "val1") {|m| m.to = 'me' }
  end

  it "should be able to read-delete a message from a subscription" do
    Azure::ServiceBus::Topics.send_message_to_topic(@topic, @message)

    retrieved = Azure::ServiceBus::Subscriptions.peek_lock_message_from_subscription(@subscription)

    result = Azure::ServiceBus::Subscriptions.delete_message_from_subscription(@subscription, retrieved)
    result.must_equal true

    # It should be deleted
    retrieved2 = Azure::ServiceBus::Subscriptions.peek_lock_message_from_subscription(@subscription, :timeout => 2)
    refute retrieved2.valid?
    retrieved2.error.message.must_equal "No messages available within the specified timeout period."
  end
end
