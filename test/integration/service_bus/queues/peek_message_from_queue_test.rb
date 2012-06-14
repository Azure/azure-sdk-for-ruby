require "integration/test_helper"
require "azure/service_bus/queues"
require "azure/service_bus/brokered_message"

describe "Peek-lock a Message from a Queue" do

  after do
    ServiceBusQueueNameHelper.clean
  end

  before do
    @queue = Azure::ServiceBus::Queues.create(ServiceBusQueueNameHelper.name)
  end

  it "should be able to peek a message from a queue" do
    message = Azure::ServiceBus::BrokeredMessage.new("some text", :prop1 => "val1") do |m|
      m.to = "yo"
      m.label = 'my_label'
    end
    Azure::ServiceBus::Queues.send_message_to_queue(@queue, message)

    retrieved = Azure::ServiceBus::Queues.peek_lock_message_from_queue(@queue)
    retrieved.must_be :kind_of?, Azure::ServiceBus::BrokeredMessage
    assert retrieved.valid?

    retrieved.body.must_equal message.body
    retrieved.to.must_equal message.to
    retrieved.label.must_equal message.label
    retrieved.properties['prop1'].must_equal 'val1'

    refute retrieved.lock_token.nil?
    refute retrieved.sequence_number.nil?
  end
end
