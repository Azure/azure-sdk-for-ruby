require "integration/test_helper"

describe "Create a Message" do
  after do
    QueueNameHelper.clean
  end

  before do
    @queue = Azure::Queues.create(QueueNameHelper.name)
  end

  it "should be able to create a new message out of a string" do
    @queue << "some sample text"

    message = @queue.pop

    message.text.must_equal "some sample text"
    assert message.valid?, "must be valid"
  end

  it "should be able to create a new message" do
    @queue << "some sample text"

    message = @queue.pop

    message.text.must_equal "some sample text"
    assert message.valid?, "must be valid"
  end

  #TODO: tests for visibilitytimeout and messagesttl
end
