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
require "azure/queues/queue"
require "azure/queues/service_properties"
require "azure/queues/uri"

describe Azure::Queues::ServiceProperties do
  describe ".from_node" do
    let :node do
      Nokogiri::XML(Fixtures[:queue_service_properties]) % "StorageServiceProperties"
    end

    subject do
      Azure::Queues::ServiceProperties.from_node(node)
    end

    it "parses the node and gets the correct values for each attribute" do
      subject.logging.must_be :kind_of?, Azure::Queues::ServiceProperties::Logging
      subject.logging.version.must_equal "1.0"
      subject.logging.delete.must_equal true
      subject.logging.read.must_equal false
      subject.logging.write.must_equal true
      subject.logging.retention_policy.must_be :kind_of?, Azure::Queues::ServiceProperties::RetentionPolicy
      subject.logging.retention_policy.enabled.must_equal true
      subject.logging.retention_policy.days.must_equal "7"

      subject.metrics.must_be :kind_of?, Azure::Queues::ServiceProperties::Metrics
      subject.metrics.version.must_equal "1.0"
      subject.metrics.enabled.must_equal true
      subject.metrics.include_apis.must_equal false
      subject.metrics.retention_policy.must_be :kind_of?, Azure::Queues::ServiceProperties::RetentionPolicy
      subject.metrics.retention_policy.enabled.must_equal true
      subject.metrics.retention_policy.days.must_equal "3"
    end
  end
end
