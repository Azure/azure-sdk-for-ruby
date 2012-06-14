require "integration/test_helper"
require "azure/service_bus/queues"
require "azure/service_bus/brokered_message"

describe "Delete a Message from a Queue" do

  after do
    ServiceBusQueueNameHelper.clean
  end

  before do
    @queue = Azure::ServiceBus::Queues.create(ServiceBusQueueNameHelper.name)
  end

  it "should be able to read-delete a message from a queue" do
    message = Azure::ServiceBus::BrokeredMessage.new("some text") {|m| m.to = 'me' }
    Azure::ServiceBus::Queues.send_message_to_queue(@queue, message)

    retrieved = Azure::ServiceBus::Queues.peek_lock_message_from_queue(@queue)

    result = Azure::ServiceBus::Queues.delete_message_from_queue(@queue, retrieved)
    result.must_equal true

    # it should be deleted
    retrieved = Azure::ServiceBus::Queues.peek_lock_message_from_queue(@queue, :timeout => 2)
    refute retrieved.valid?
    retrieved.error.message.must_equal "No messages available within the specified timeout period."
  end
end
