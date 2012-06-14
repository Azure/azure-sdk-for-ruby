require "integration/test_helper"
require "azure/service_bus/queues"
require "azure/service_bus/brokered_message"

describe "Sending a Message to a Queue" do

  after do
    ServiceBusQueueNameHelper.clean
  end

  before do
    @queue = Azure::ServiceBus::Queues.create(ServiceBusQueueNameHelper.name)
  end

  it "should be able to send a message to a queue" do
    message = Azure::ServiceBus::BrokeredMessage.new("some text") do |m|
      m.to = "yo"
    end
    res = Azure::ServiceBus::Queues.send_message_to_queue(@queue, message)
    res.must_equal true
  end
end
