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
