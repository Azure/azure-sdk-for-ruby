require "integration/test_helper"

describe "Creating a Subscription" do
  before do
    @topic = Azure::ServiceBus::Topics.create(ServiceBusTopicNameHelper.name, {})
  end

  after do
    ServiceBusTopicNameHelper.clean
  end

  it "should be able to create a new subscription" do
    subscription = @topic.subscriptions.create("subscription-name")
    subscription.must_be_kind_of Azure::ServiceBus::Subscriptions::Subscription
    assert subscription.valid?
  end

  it "can create a subscription with extra parameters" do
    subscription = @topic.subscriptions.create("subscription-name") do |sub|
      sub.default_ttl = 75
    end

    subscription.default_ttl.must_equal 75
  end
end
