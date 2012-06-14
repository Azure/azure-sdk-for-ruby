require "integration/test_helper"

describe "Listing Queues" do

  after do
    ServiceBusQueueNameHelper.clean
  end

  it "should be able to get a list of queues" do
    q1 = Azure::ServiceBus::Queues.create(ServiceBusQueueNameHelper.name)
    q2 = Azure::ServiceBus::Queues.create(ServiceBusQueueNameHelper.name)

    result = Azure::ServiceBus::Queues.list

    result.must_be :kind_of?, Array
    result.count.must_equal 2
    result.must_include q1
    result.must_include q2
  end

  it "should be able to use $skip" do
    q1 = Azure::ServiceBus::Queues.create(ServiceBusQueueNameHelper.name)
    q2 = Azure::ServiceBus::Queues.create(ServiceBusQueueNameHelper.name)
    q3 = Azure::ServiceBus::Queues.create(ServiceBusQueueNameHelper.name)

    result = Azure::ServiceBus::Queues.list(:skip => 1)

    result.count.must_equal 2
  end

  it "should be able to use $top" do
    q1 = Azure::ServiceBus::Queues.create(ServiceBusQueueNameHelper.name)
    q2 = Azure::ServiceBus::Queues.create(ServiceBusQueueNameHelper.name)

    result = Azure::ServiceBus::Queues.list(:top => 1)

    result.count.must_equal 1
  end
end
