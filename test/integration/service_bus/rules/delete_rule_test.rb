require "integration/test_helper"

describe "Delete Rules" do
  before do
    @topic = Azure::ServiceBus::Topics.create(ServiceBusTopicNameHelper.name, {})
    @subscription = @topic.subscriptions.create("mySubscription")
  end

  after do
    ServiceBusTopicNameHelper.clean
  end

  it "should be able to create a new rule" do
    rule = Azure::ServiceBus::Rules.create(@subscription, "myName")
    Azure::ServiceBus::Rules.delete(rule).must_equal true
  end
end
