require "integration/test_helper"

describe "Update Messages" do
  after do
    QueueNameHelper.clean
  end

  before do
    @queue = Azure::Queues.create(QueueNameHelper.name)
    @queue << "some sample text"
  end

  it "saves changes to the message text" do
    message = @queue.pop
    message.text = "other text"

    response = message.update!
    response.must_equal true

    popped = @queue.pop
    popped.text.must_equal message.text
  end

  it "should be able to update the message visibilitytimeout" do
    message = @queue.pop
    message.visibility_timeout = 3600

    response = message.update!
    response.must_equal true

    popped = @queue.pop
    popped.must_be_nil
  end

  it "can't update an invisible message" do
    message = @queue.pop(visibilitytimeout: 1)

    # Pop the message again, and this time make it invisible for a long period
    sleep 1
    @queue.pop(visibilitytimeout: 100)

    message.visibility_timeout = 10
    response = message.update!
    response.must_equal false
  end
end
