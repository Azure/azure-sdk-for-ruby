require "integration/test_helper"

describe "Get Rules" do
  before do
    @topic = Azure::ServiceBus::Topics.create(ServiceBusTopicNameHelper.name, {})
    @subscription = @topic.subscriptions.create("mySubscription")
  end

  after do
    ServiceBusTopicNameHelper.clean
  end

  it "should be able to create a new rule" do
    Azure::ServiceBus::Rules.create(@subscription, "myName")
    rule = Azure::ServiceBus::Rules.get(@subscription, "myName")
    rule.must_be :kind_of?, Azure::ServiceBus::Rules::Rule
    rule.name.must_equal "myName"
    rule.filter.wont_be_nil
    rule.action.wont_be_nil
  end
end
