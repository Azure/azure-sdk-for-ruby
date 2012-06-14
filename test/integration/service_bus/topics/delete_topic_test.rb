require "integration/test_helper"

describe "Deleting a Topic" do

  after do
    ServiceBusTopicNameHelper.clean
  end

  it "should return false if the topic cannot be deleted" do
    topic = Azure::ServiceBus::Topics::Topic.new(ServiceBusTopicNameHelper.name)
    response = topic.delete

    response.must_equal false
    refute topic.valid?
    refute topic.frozen?
  end

  it "should return true if the topic can be deleted" do
    topic = Azure::ServiceBus::Topics.create(ServiceBusTopicNameHelper.name)
    response = topic.delete

    response.must_equal true
    assert topic.frozen?
  end
end
