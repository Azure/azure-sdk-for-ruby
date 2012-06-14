require "integration/test_helper"

describe "Deleting a Queue" do

  after do
    ServiceBusQueueNameHelper.clean
  end

  it "should be able to get a queue by name" do
    queue_name = ServiceBusQueueNameHelper.name
    queue = Azure::ServiceBus::Queues.create(queue_name)

    result = Azure::ServiceBus::Queues.get(queue_name)

    result.must_equal queue
  end

  it "if the queue doesn't exists I should get a list of links to immediate child nodes" do
    result = Azure::ServiceBus::Queues.get('inexistent')

    result.must_be_nil
  end
end
