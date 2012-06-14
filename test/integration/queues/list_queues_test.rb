require "integration/test_helper"

describe "Obtaining a list of queues" do
  after do
    QueueNameHelper.clean
  end

  it "returns a list of queues" do
    queue = Azure::Queues.create(QueueNameHelper.name)

    all_queues = Azure::Queues.all
    all_queues.must_include queue
  end

  it "should be able to use maxresults" do
    Azure::Queues.create(QueueNameHelper.name)
    Azure::Queues.create(QueueNameHelper.name)

    all_queues = Azure::Queues.all(:maxresults => 1).size.must_equal 1
    all_queues = Azure::Queues.all(:maxresults => 2).size.must_equal 2
  end

  it "should be able to use the prefix option when listing" do
    Azure::Queues.create(QueueNameHelper.name)
    Azure::Queues.create(QueueNameHelper.name)
    q3 = Azure::Queues.create(QueueNameHelper.name)

    prefixed_queues = Azure::Queues.all(:prefix => q3.name)
    prefixed_queues.size.must_equal 1
    prefixed_queues.first.must_equal q3
  end

  it "should be able to use the marker option when listing" do
    skip
  end

  it "should be able to use the include metadata option when listing" do
    Azure::Queues.create(QueueNameHelper.name, "Somekey" => "Somevalue")
    queue = Azure::Queues.all(:include => 'metadata').first
    queue.metadata["Somekey"].must_equal "Somevalue"
  end

end
