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

describe "Get Messages" do
  after do
    QueueNameHelper.clean
  end

  before do
    @queue = Azure::Queues.create(QueueNameHelper.name)
  end

  it "gets the last message when calling #pop" do
    @queue << "message 1"
    @queue << "message 2"

    message = @queue.pop
    message.text.must_equal "message 1"
  end

  it "can get more than once message at a time" do
    @queue << "message 1"
    @queue << "message 2"

    messages = @queue.get(5)
    messages.must_respond_to :each
    messages.size.must_equal 2
  end

  it "can reset the visibilitytimeout option for retrieved messages" do
    @queue << "message 1"

    message = @queue.pop(visibilitytimeout: 10)

    next_visible_at = message.time_next_visible.to_i
    inserted_at     = message.insertion_time.to_i

    next_visible_at.must_be_close_to(inserted_at + 10, 2.0)
  end
end
