require "integration/test_helper"

describe "Listing Subscription" do
  before do
    @topic = Azure::ServiceBus::Topics.create(ServiceBusTopicNameHelper.name, {})
  end

  after do
    ServiceBusTopicNameHelper.clean
  end

  it "returns an empty collection when there are no subscriptions" do
    @topic.subscriptions.must_be_empty
  end

  it "returns the subscriptions when there are any" do
    sub_1 = @topic.subscriptions.create("subscription-1")
    sub_2 = @topic.subscriptions.create("subscription-2")

    @topic.subscriptions.must_include(sub_1)
    @topic.subscriptions.must_include(sub_2)
  end
end
