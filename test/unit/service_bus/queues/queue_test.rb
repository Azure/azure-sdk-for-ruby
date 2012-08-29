#-------------------------------------------------------------------------
# Copyright 2012 Microsoft Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#--------------------------------------------------------------------------
require "test_helper"
require "azure/service_bus/queues/queue"
require "time"
require "uri"

describe Azure::ServiceBus::Queues::Queue do
  describe ".from_node" do
    let :node do
      Nokogiri::XML(Fixtures[:sb_default_create_queue_response]).remove_namespaces!
    end

    subject do
      Azure::ServiceBus::Queues::Queue.from_node(node)
    end

    it "parses the node and gets the correct values for each attribute" do
      subject.id.must_equal URI("https://gmonfort.servicebus.windows.net/gfyhfiwdqg")
      subject.title.must_equal "gfyhfiwdqg"
      subject.published.must_equal Time.parse("2012-06-06T05:00:06Z")
      subject.updated.must_equal Time.parse("2012-06-06T05:00:06Z")
      subject.author_name.must_equal "gmonfort"
      subject.description.must_be :kind_of?, Hash
      subject.description.size.must_equal 11

      subject.description["LockDuration"].must_equal "PT1M"
      subject.description["MaxSizeInMegabytes"].must_equal "1024"
      subject.description["RequiresDuplicateDetection"].must_equal "false"
      subject.description["RequiresSession"].must_equal "false"
      subject.description["DefaultMessageTimeToLive"].must_equal "P10675199DT2H48M5.4775807S"
      subject.description["DeadLetteringOnMessageExpiration"].must_equal "false"
      subject.description["DuplicateDetectionHistoryTimeWindow"].must_equal "PT10M"
      subject.description["MaxDeliveryCount"].must_equal "10"
      subject.description["EnableBatchedOperations"].must_equal "true"
      subject.description["SizeInBytes"].must_equal "0"
      subject.description["MessageCount"].must_equal "0"
    end
  end
end
