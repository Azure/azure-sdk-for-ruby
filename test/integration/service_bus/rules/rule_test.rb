require "integration/test_helper"

describe Azure::ServiceBus::Rules::Rule do
  before do
    @topic = Azure::ServiceBus::Topics.create(ServiceBusTopicNameHelper.name, {})
    @subscription = @topic.subscriptions.create("mySubscription")
  end

  after do
    ServiceBusTopicNameHelper.clean
  end

  it "should be able to delete itself" do
    @subscription.create_rule("myRule").delete.must_equal true
  end
end
