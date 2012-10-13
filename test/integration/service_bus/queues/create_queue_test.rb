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

describe "Creating a Queue" do

  subject { Azure::ServiceBus::ServiceBus.new }
  let(:name) { ServiceBusQueueNameHelper.name }
  let(:description) {{
    'LockDuration' => 'PT30S',
    'DefaultMessageTimeToLive' => 'P10675199DT2H48M5.4775807S',
    'DuplicateDetectionHistoryTimeWindow' => 'PT10M',
    'MaxSizeInMegabytes' => "1",
    'RequiresDuplicateDetection' => "true",
    'RequiresSession' => "false",
    'DeadLetteringOnMessageExpiration' => "false"
  }}

  after do
    ServiceBusQueueNameHelper.clean
  end

  it "should be able to create a new queue from a string" do
    queue = subject.create_queue name
    queue.must_be_kind_of Azure::ServiceBus::Queue
    queue.name.must_equal name
  end

  it "should be able to create a new queue from a string and description Hash" do
    queue = subject.create_queue name, description
    queue.must_be_kind_of Azure::ServiceBus::Queue
    queue.name.must_equal name
    queue.max_size_in_mb.must_equal 1
    queue.requires_duplicate_detection.must_equal true
  end

  it "should be able to create a new queue from a Queue" do
    queue = subject.create_queue Azure::ServiceBus::Queue.new(name)
    queue.must_be_kind_of Azure::ServiceBus::Queue
    queue.name.must_equal name
  end

  it "should be able to create a new queue from a Queue with a description Hash" do
    queue = subject.create_queue Azure::ServiceBus::Queue.new(name, description)
    queue.must_be_kind_of Azure::ServiceBus::Queue
    queue.name.must_equal name
    queue.max_size_in_mb.must_equal 1
    queue.requires_duplicate_detection.must_equal true
  end
end
