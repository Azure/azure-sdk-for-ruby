require "integration/test_helper"

describe "Listing Topics" do

  after do
    ServiceBusTopicNameHelper.clean
  end

  it "should be able to get a list of topics" do
    t1 = Azure::ServiceBus::Topics.create(ServiceBusTopicNameHelper.name)
    t2 = Azure::ServiceBus::Topics.create(ServiceBusTopicNameHelper.name)

    result = Azure::ServiceBus::Topics.list

    result.must_be :kind_of?, Array
    result.count.must_equal 2
    result.must_include t1
    result.must_include t2
  end

  it "should be able to use $skip" do
    t1 = Azure::ServiceBus::Topics.create(ServiceBusTopicNameHelper.name)
    t2 = Azure::ServiceBus::Topics.create(ServiceBusTopicNameHelper.name)
    t3 = Azure::ServiceBus::Topics.create(ServiceBusTopicNameHelper.name)

    result = Azure::ServiceBus::Topics.list(:skip => 1)

    result.count.must_equal 2
  end

  it "should be able to use $top" do
    t1 = Azure::ServiceBus::Topics.create(ServiceBusTopicNameHelper.name)
    t2 = Azure::ServiceBus::Topics.create(ServiceBusTopicNameHelper.name)

    result = Azure::ServiceBus::Topics.list(:top => 1)

    result.count.must_equal 1
  end
end
