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

describe "Deleting a Topic" do

  after do
    ServiceBusTopicNameHelper.clean
  end

  it "should be able to get a topic by name" do
    topic_name = ServiceBusTopicNameHelper.name
    topic = Azure::ServiceBus::Topics.create(topic_name)

    result = Azure::ServiceBus::Topics.get(topic_name)

    result.must_equal topic
  end

  it "if the topic doesn't exists I should get a list of links to immediate child nodes" do
    result = Azure::ServiceBus::Topics.get('inexistent')

    result.must_be_nil
  end
end
