require "integration/test_helper"
require "azure/service_bus/topics"
require "azure/service_bus/brokered_message"

describe "Sending a Message to a Topic" do

  after do
    ServiceBusTopicNameHelper.clean
  end

  before do
    @topic = Azure::ServiceBus::Topics.create(ServiceBusTopicNameHelper.name)
  end

  it "should be able to send a message to a topic" do
    message = Azure::ServiceBus::BrokeredMessage.new("some text", :prop1 => "val1") do |m|
      m.to = "me"
      m.label = 'my_label'
    end
    res = Azure::ServiceBus::Topics.send_message_to_topic(@topic, message)
    res.must_equal true
  end
end
