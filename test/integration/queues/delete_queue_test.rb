require "integration/test_helper"

describe "Deleting a queue" do
  after do
    QueueNameHelper.clean
  end

  it "should return false if the queue cannot be deleted" do
    queue = Azure::Queues::Queue.new(QueueNameHelper.name)
    response = queue.delete

    response.must_equal false
    refute queue.valid?
    refute queue.frozen?
  end

  it "should return true if the queue can be deleted" do
    queue = Azure::Queues.create(QueueNameHelper.name)
    response = queue.delete

    response.must_equal true
    assert queue.frozen?
  end
end
