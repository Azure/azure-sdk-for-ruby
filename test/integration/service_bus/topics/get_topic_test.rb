require "integration/test_helper"

describe "Deleting a Topic" do

  after do
    ServiceBusTopicNameHelper.clean
  end

  it "should be able to get a topic by name" do
    topic_name = ServiceBusTopicNameHelper.name
    topic = Azure::ServiceBus::Topics.create(topic_name)

    result = Azure::ServiceBus::Topics.get(topic_name)

    result.must_equal topic
  end

  it "if the topic doesn't exists I should get a list of links to immediate child nodes" do
    result = Azure::ServiceBus::Topics.get('inexistent')

    result.must_be_nil
  end
end
