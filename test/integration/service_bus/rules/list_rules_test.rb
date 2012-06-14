require "integration/test_helper"

describe "List Rules" do
  before do
    @topic = Azure::ServiceBus::Topics.create(ServiceBusTopicNameHelper.name, {})
    @subscription = @topic.subscriptions.create("mySubscription")
  end

  after do
    ServiceBusTopicNameHelper.clean
  end

  it "should be able to create a new rule" do
    Azure::ServiceBus::Rules.create(@subscription, "myRule")
    Azure::ServiceBus::Rules.create(@subscription, "myOtherRule")

    rules = Azure::ServiceBus::Rules.all(@subscription)
    rules.must_be :kind_of?, Array
    rules.size.must_equal 3
    rules.first.name.must_equal "$Default"
    rules.first.filter.wont_be_nil
    rules.first.action.wont_be_nil
  end
end
