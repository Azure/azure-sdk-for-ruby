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

describe "Listing Topics" do

  after do
    ServiceBusTopicNameHelper.clean
  end

  it "should be able to get a list of topics" do
    t1 = Azure::ServiceBus::Topics.create(ServiceBusTopicNameHelper.name)
    t2 = Azure::ServiceBus::Topics.create(ServiceBusTopicNameHelper.name)

    result = Azure::ServiceBus::Topics.list

    result.must_be :kind_of?, Array
    result.count.must_equal 2
    result.must_include t1
    result.must_include t2
  end

  it "should be able to use $skip" do
    t1 = Azure::ServiceBus::Topics.create(ServiceBusTopicNameHelper.name)
    t2 = Azure::ServiceBus::Topics.create(ServiceBusTopicNameHelper.name)
    t3 = Azure::ServiceBus::Topics.create(ServiceBusTopicNameHelper.name)

    result = Azure::ServiceBus::Topics.list(:skip => 1)

    result.count.must_equal 2
  end

  it "should be able to use $top" do
    t1 = Azure::ServiceBus::Topics.create(ServiceBusTopicNameHelper.name)
    t2 = Azure::ServiceBus::Topics.create(ServiceBusTopicNameHelper.name)

    result = Azure::ServiceBus::Topics.list(:top => 1)

    result.count.must_equal 1
  end
end
