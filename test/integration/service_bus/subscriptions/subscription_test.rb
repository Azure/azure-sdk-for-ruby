require "integration/test_helper"

describe Azure::ServiceBus::Subscriptions::Subscription do
  before do
    @topic = Azure::ServiceBus::Topics.create(ServiceBusTopicNameHelper.name, {})
    @subscription = @topic.subscriptions.create("mySubscription")
  end

  after do
    ServiceBusTopicNameHelper.clean
  end

  it "should be able to create rules" do
    rule = @subscription.create_rule("myRule")
    rule.must_be :kind_of?, Azure::ServiceBus::Rules::Rule
  end

  it "should be able to list rules" do
    @subscription.create_rule("myRule")
    rules = @subscription.get_rules
    rules.size.must_equal 2 # There is always a $Default Rule
    rules.first.must_be :kind_of?, Azure::ServiceBus::Rules::Rule
  end

  it "should be able to get rules" do
    @subscription.create_rule("myRule")
    rule = @subscription.get_rule("myRule")
    rule.must_be :kind_of?, Azure::ServiceBus::Rules::Rule
    rule.name.must_equal "myRule"
  end
end
