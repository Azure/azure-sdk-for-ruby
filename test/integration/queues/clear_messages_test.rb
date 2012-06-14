require "integration/test_helper"

describe "Clear Messages" do
  after do
    QueueNameHelper.clean
  end

  before do
    @queue = Azure::Queues.create(QueueNameHelper.name)
  end

  it "should be able to delete all messages from the queue" do
    @queue << "message 1"
    @queue << "message 2"

    result = @queue.clear
    result.must_equal true

    messages = @queue.get(5)
    messages.must_be_empty
  end
end
