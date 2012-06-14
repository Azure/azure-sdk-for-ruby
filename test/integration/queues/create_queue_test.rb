require "integration/test_helper"

describe "Create queues" do
  after do
    QueueNameHelper.clean
  end

  it "should be able to create a new queue" do
    queue = Azure::Queues.create(QueueNameHelper.name)
    queue.must_be_kind_of Azure::Queues::Queue
    assert queue.valid?, "must be valid"
  end
end
