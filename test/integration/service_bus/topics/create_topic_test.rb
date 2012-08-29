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
require "integration/test_helper"

describe "Creating a Topic" do

  after do
    ServiceBusTopicNameHelper.clean
  end

  it "should be able to create a new topic" do
    # properties = {
    #   'LockDuration' => 'PT30S',
    #   'DefaultMessageTimeToLive' => 'P10675199DT2H48M5.4775807S',
    #   'DuplicateDetectionHistoryTimeWindow' => 'PT10M',
    #   'MaxSizeInMegabytes' => 1,
    #   'RequiresDuplicateDetection' => true,
    #   'RequiresSession' => false,
    #   'DeadLetteringOnMessageExpiration' => false
    # }
    properties = {}

    topic = Azure::ServiceBus::Topics.create(ServiceBusTopicNameHelper.name, properties)
    topic.must_be_kind_of Azure::ServiceBus::Topics::Topic
    assert topic.valid?, "must be valid"
  end
end
