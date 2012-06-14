require "integration/test_helper"
require "azure/service_bus/topics"
require "azure/service_bus/subscriptions"
require "azure/service_bus/brokered_message"

describe "Unlock Message from a Subscription" do

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

  it "should be able to unlock a message from a subscription" do
    Azure::ServiceBus::Topics.send_message_to_topic(@topic, @message)

    retrieved = Azure::ServiceBus::Subscriptions.peek_lock_message_from_subscription(@subscription)
    retrieved.must_be :kind_of?, Azure::ServiceBus::BrokeredMessage
    assert retrieved.valid?

    # Now there shouldn't be an available message in the subscription
    retrieved2 = Azure::ServiceBus::Subscriptions.peek_lock_message_from_subscription(@subscription)
    refute retrieved2.valid?
    retrieved2.error.message.must_equal "No messages available within the specified timeout period."

    # Unlock the message
    res = Azure::ServiceBus::Subscriptions.unlock_message_from_subscription(@subscription, retrieved)
    res.must_equal true

    # The message should be available once again
    retrieved = Azure::ServiceBus::Subscriptions.peek_lock_message_from_subscription(@subscription)
    assert retrieved.valid?
    retrieved.body.must_equal @message.body
    retrieved.to.must_equal @message.to
  end
end
