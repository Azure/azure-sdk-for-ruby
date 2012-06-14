require "integration/test_helper"

describe "Deleting a subscription" do
  before do
    @topic = Azure::ServiceBus::Topics.create(ServiceBusTopicNameHelper.name, {})
  end

  after do
    ServiceBusTopicNameHelper.clean
  end

  it "freezes the subscription if successful" do
    subscription = @topic.subscriptions.create("subscription-name")
    result = subscription.delete
    result.must_equal true
    assert subscription.frozen?
    assert subscription.valid?
  end

  it "invalidates the subscription if unsuccessful" do
    subscription = Azure::ServiceBus::Subscriptions::Subscription.new("nonexistent") do |sub|
      sub.topic = @topic
    end

    result = subscription.delete
    result.must_equal false
    refute subscription.frozen?
    refute subscription.valid?
  end
end
