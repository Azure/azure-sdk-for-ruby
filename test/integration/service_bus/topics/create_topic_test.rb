require "integration/test_helper"

describe "Creating a Topic" do

  after do
    ServiceBusTopicNameHelper.clean
  end

  it "should be able to create a new topic" do
    # properties = {
    #   'LockDuration' => 'PT30S',
    #   'DefaultMessageTimeToLive' => 'P10675199DT2H48M5.4775807S',
    #   'DuplicateDetectionHistoryTimeWindow' => 'PT10M',
    #   'MaxSizeInMegabytes' => 1,
    #   'RequiresDuplicateDetection' => true,
    #   'RequiresSession' => false,
    #   'DeadLetteringOnMessageExpiration' => false
    # }
    properties = {}

    topic = Azure::ServiceBus::Topics.create(ServiceBusTopicNameHelper.name, properties)
    topic.must_be_kind_of Azure::ServiceBus::Topics::Topic
    assert topic.valid?, "must be valid"
  end
end
