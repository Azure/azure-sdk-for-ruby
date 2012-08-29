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

describe "Update Messages" do
  after do
    QueueNameHelper.clean
  end

  before do
    @queue = Azure::Queues.create(QueueNameHelper.name)
    @queue << "some sample text"
  end

  it "saves changes to the message text" do
    message = @queue.pop
    message.text = "other text"

    response = message.update!
    response.must_equal true

    popped = @queue.pop
    popped.text.must_equal message.text
  end

  it "should be able to update the message visibilitytimeout" do
    message = @queue.pop
    message.visibility_timeout = 3600

    response = message.update!
    response.must_equal true

    popped = @queue.pop
    popped.must_be_nil
  end

  it "can't update an invisible message" do
    message = @queue.pop(visibilitytimeout: 1)

    # Pop the message again, and this time make it invisible for a long period
    sleep 1
    @queue.pop(visibilitytimeout: 100)

    message.visibility_timeout = 10
    response = message.update!
    response.must_equal false
  end
end
