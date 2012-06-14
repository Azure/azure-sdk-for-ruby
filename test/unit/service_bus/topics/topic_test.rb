require "test_helper"
require "azure/service_bus/topics/topic"
require "time"
require "uri"

describe Azure::ServiceBus::Topics::Topic do
  describe ".from_node" do
    let :node do
      Nokogiri::XML(Fixtures[:sb_default_create_topic_response]).remove_namespaces!
    end

    subject do
      Azure::ServiceBus::Topics::Topic.from_node(node)
    end

    it "parses the node and gets the correct values for each attribute" do
      subject.id.must_equal URI("https://gmonfort.servicebus.windows.net/htsjvyukon")
      subject.title.must_equal "htsjvyukon"
      subject.published.must_equal Time.parse("2012-06-07T19:49:00Z")
      subject.updated.must_equal Time.parse("2012-06-07T19:49:01Z")
      subject.author_name.must_equal "gmonfort"
      subject.description.must_be :kind_of?, Hash
      subject.description.size.must_equal 6

      subject.description["DefaultMessageTimeToLive"].must_equal "P10675199DT2H48M5.4775807S"
      subject.description["MaxSizeInMegabytes"].must_equal "1024"
      subject.description["RequiresDuplicateDetection"].must_equal "false"
      subject.description["DuplicateDetectionHistoryTimeWindow"].must_equal "PT10M"
      subject.description["EnableBatchedOperations"].must_equal "true"
      subject.description["SizeInBytes"].must_equal "0"
    end
  end
end
