require "test_helper"
require "azure/queues/queue"

describe Azure::Queues::Queue do
  describe ".from_node" do
    let :node do
      Nokogiri::XML(Fixtures[:queues]) % "Queues"
    end

    subject do
      Azure::Queues::Queue.from_node(node)
    end

    it "gets the name out of the node" do
      subject.name.must_equal "queue-name"
    end

    it "gets the url out of the node" do
      subject.url.must_equal URI("http://myaccount.queue.core.windows.net/queue-name")
    end

    it "gets the metadata out of the node" do
      subject.metadata["Color"].must_equal "red"
      subject.metadata["Shape"].must_equal "square"
    end
  end

  let :service do
    MiniTest::Mock.new
  end

  let :queue do
    Azure::Queues::Queue.new(
      "name",
      Azure::Queues::URI.queue("name", {}, "http://myaccount.queue.core.windows.net"),
      {},
      service
    )
  end

  describe "#delete" do
    it "delegates to the service's #delete implementation" do
      service.expect(:delete, true, [queue])
      queue.delete
      service.verify
    end
  end

  describe "#load_metadata!" do
    it "delegates to the service's #load_metadata implementation" do
      service.expect(:load_metadata, {}, [queue])
      queue.load_metadata!
      service.verify
    end
  end

  describe "#save_metadata!" do
    it "delegates to the service's #save_metadata implementation" do
      service.expect(:save_metadata, {}, [queue])
      queue.save_metadata!
      service.verify
    end
  end
end
