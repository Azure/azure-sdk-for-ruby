require "integration/test_helper"

describe "Peek Messages" do
  after do
    QueueNameHelper.clean
  end

  before do
    @queue = Azure::Queues.create(QueueNameHelper.name)
  end

  it "doesn't change the visibility of a message when peeking" do
    @queue << "some sample text"
    message = @queue.peek

    message.time_next_visible.must_equal nil
    message.pop_receipt.must_equal nil
  end

  it "should peek only one message from the front of the queue" do
    @queue << "message 1"
    @queue << "message 2"

    message = @queue.peek

    message.text.must_equal "message 1"
  end

  it "can't see invisible messages" do
    message = Azure::Queues::Message.new("some sample text") do |msg|
      msg.visibility_timeout = 3600
    end
    @queue << message
    @queue.peek.must_be_nil
  end

  it "doesn't change the dequeue_count of a message" do
    @queue << "some sample text"

    peeked_1 = @queue.peek
    peeked_2 = @queue.peek

    peeked_1.must_equal peeked_2
    peeked_2.dequeue_count.must_equal 0
  end

  it "can peek many messages at once" do
    @queue << "some sample text"
    @queue << "more sample text"

    messages = @queue.look_at(5)
    messages.must_respond_to :each
    messages.size.must_equal 2
  end
end
