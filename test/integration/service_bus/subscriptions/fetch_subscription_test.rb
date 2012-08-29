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

describe "Fetching a Subscription by name" do
  before do
    @topic = Azure::ServiceBus::Topics.create(ServiceBusTopicNameHelper.name, {})
    @subscription = @topic.subscriptions.create("subscription-name")
  end

  after do
    ServiceBusTopicNameHelper.clean
  end

  it "can fetch a subscription by name" do
    subscription = @topic.subscriptions.fetch("subscription-name")
    assert subscription.valid?
  end

  it "can raises ArgumentError on missing subscriptions" do
    proc {
      @topic.subscriptions.fetch("nonexistent")
    }.must_raise ArgumentError
  end

  it "can handle errors in a different way" do
    error = @topic.subscriptions.fetch("nonexistant") { |err| err }
    error.must_be_kind_of Azure::Core::Error
  end
end
