require "integration/test_helper"

describe "Deleting a Queue" do

  after do
    ServiceBusQueueNameHelper.clean
  end

  it "should return false if the queue cannot be deleted" do
    queue = Azure::ServiceBus::Queues::Queue.new(ServiceBusQueueNameHelper.name)
    response = queue.delete

    response.must_equal false
    refute queue.valid?
    refute queue.frozen?
  end

  it "should return true if the queue can be deleted" do
    queue = Azure::ServiceBus::Queues.create(ServiceBusQueueNameHelper.name)
    response = queue.delete

    response.must_equal true
    assert queue.frozen?
  end
end
