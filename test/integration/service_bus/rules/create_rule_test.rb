require "integration/test_helper"

describe "Create Rules" do
  before do
    @topic = Azure::ServiceBus::Topics.create(ServiceBusTopicNameHelper.name, {})
    @subscription = @topic.subscriptions.create("mySubscription")
  end

  after do
    ServiceBusTopicNameHelper.clean
  end

  it "should be able to create a new rule" do
    response = Azure::ServiceBus::Rules.create(@subscription, "myName")
    response.must_be :kind_of?, Azure::ServiceBus::Rules::Rule
    response.filter["TrueFilter"].must_equal("SqlExpression" => "1=1", "CompatibilityLevel" => "20")
    response.error.must_be_nil
  end
end
