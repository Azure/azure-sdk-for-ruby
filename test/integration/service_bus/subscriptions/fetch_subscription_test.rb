require "integration/test_helper"

describe "Fetching a Subscription by name" do
  before do
    @topic = Azure::ServiceBus::Topics.create(ServiceBusTopicNameHelper.name, {})
    @subscription = @topic.subscriptions.create("subscription-name")
  end

  after do
    ServiceBusTopicNameHelper.clean
  end

  it "can fetch a subscription by name" do
    subscription = @topic.subscriptions.fetch("subscription-name")
    assert subscription.valid?
  end

  it "can raises ArgumentError on missing subscriptions" do
    proc {
      @topic.subscriptions.fetch("nonexistent")
    }.must_raise ArgumentError
  end

  it "can handle errors in a different way" do
    error = @topic.subscriptions.fetch("nonexistant") { |err| err }
    error.must_be_kind_of Azure::Error
  end
end
