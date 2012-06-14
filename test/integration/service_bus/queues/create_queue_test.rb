require "integration/test_helper"

describe "Creating a Queue" do

  after do
    ServiceBusQueueNameHelper.clean
  end

  it "should be able to create a new queue" do
    properties = {
      'LockDuration' => 'PT30S',
      'DefaultMessageTimeToLive' => 'P10675199DT2H48M5.4775807S',
      'DuplicateDetectionHistoryTimeWindow' => 'PT10M',
      'MaxSizeInMegabytes' => 1,
      'RequiresDuplicateDetection' => true,
      'RequiresSession' => false,
      'DeadLetteringOnMessageExpiration' => false
    }
    properties = {}

    queue = Azure::ServiceBus::Queues.create(ServiceBusQueueNameHelper.name, properties)
    queue.must_be_kind_of Azure::ServiceBus::Queues::Queue
    assert queue.valid?, "must be valid"
  end
end
